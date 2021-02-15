;----------------------------------------------------------------------
; KunKun & KokoKun
; (c) Omar Cornut (Bock)
; for SMS Power!Th Coding Competition 2006
;----------------------------------------------------------------------
; History
; 2006/03/13 - Early mockup + graphics
; 2006/03/18 - Started coding, basic initialization, moving a sprite
; 2006/03/19 - Main character actions, logic map system, ?
; 2006/03/20 - ?
; 2006/03/22 - Drawn levels map
; 2006/03/23 - Added door, added switches, added win animation, fixed various bugs, added title/select screen, fixed VDP bug on early SMS models
; 2006/03/24 - Mapped normal/hard level, fixed various bugs, drawn mockup for ending sequence
; 2006/03/26 - Mapped easy level, added pause support, fixed character animations on ladders/slopes, fixed various bugs, added ending sequence, wrote README
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; SDSC tag and SMS rom header
;----------------------------------------------------------------------

.sdsctag 1.0,"KunKun & KokoKun","Released for SMS Power! Coding Competition 2006","Omar Cornut"

;----------------------------------------------------------------------
; WLA-DX banking setup
;----------------------------------------------------------------------

.memorymap
defaultslot 0
slotsize $8000  ; ROM page 0 + 1
slot 0 $0000    
slotsize $4000  ; ROM page 2
slot 1 $8000 
slotsize $2000  ; RAM
slot 2 $c000 
.endme

.rombankmap
bankstotal 1
banksize $8000
banks 1
.endro

;----------------------------------------------------------------------
; SYSTEM INCLUDES
;----------------------------------------------------------------------

.include "Sega8.asm"

;----------------------------------------------------------------------
; VARIABLES
;----------------------------------------------------------------------

.ramsection "RAM" slot 2

; System
VarFrameTrigger             db
VarFrameCounter             db
VarInputs                   dw
VarInputsPressed            dw
VarScanlineMetrics          db      ; [DEBUG]
VarPaused                   db

; Logic
VarScore                    dw
VarKunKunX                  db
VarKunKunY                  db
VarKunKunTileX              db
VarKunKunTileY              db
VarKunKunState              dw
VarKunKunStateAnim          dw
VarKunKunStateAnimFlip      db
VarKunKunLogicTile          dw
VarKunKunLogicTileNext      dw      ; Used by some functions
VarKunKunLogicTileSlope     dw      ; Used by some functions
VarKunKunDirection          db
VarKunKunJumpDisable        db      ; Set after jump, releasing button reset it
VarKunKunSprite             db
VarKunKunIdleCounter        dw      ; Increment when idle
VarKunKunActionCounter      dw
VarKokoKunX                 db
VarKokoKunY                 db
VarKokoKunWinTileX          db
VarKokoKunWinTileY          db
VarKokoKunSprite            db
VarHearthPhase              db
VarLevel                    dw
VarLevelType                db
VarLevelCannonsCount        db
VarLevelCannonsData         dw
VarLevelDoorsCount          db
VarLevelDoorsData           dw
VarLevelSwitchesCount       db
VarLevelSwitchesData        dw
VarEndingState              db
VarEndingCounter            db
VarEndingTimer              dw

ArgLevelLogicMapGetAddress  dw      ; Arguments to LevelLogicMapGetAddress()

; Cannons Table
VarCannonsTable             dsb 8*8 ; CANNON_COUNT_MAX * CANNON_STRUCTURE_SIZE

; Door Table
VarDoorsTable               dsb 4*4 ; DOOR_COUNT_MAX * DOOR_STRUCTURE_SIZE

; Switches Table
VarSwitchesTable            dsb 4

VarLevelLogicMap            dsb 32*24

; Sprite Attribute Table
; Interleaved as X,Y,N
VarSpritesCount             db
VarSpritesCurrent           dw
VarSpritesTable             dsb 64*3

; Music Engine
VarPSGMOD_START_ADDRESS      dsb 256

.ends

.define PSGMOD_START_ADDRESS    $C800

;----------------------------------------------------------------------
; DEFINITIONS
;----------------------------------------------------------------------

.define LEVEL_TYPE_GAME                     0
.define LEVEL_TYPE_ENDING                   1

.define CANNON_COUNT_MAX                    8
.define CANNON_STRUCTURE_SIZE               8

.define CANNON_FLAGS_DIRECTION_LEFT         $01
.define CANNON_FLAGS_DIRECTION_RIGHT        $02
.define CANNON_FLAGS_ENABLED                $04
.define CANNON_FLAGS_TRIGGER                $08     ; set to have cannon shoot immediately
.define CANNON_FLAGS_SHOOTING               $10     ; shooting in progress

.define CANNON_FLAGS_DIRECTION_LEFT_BIT     0
.define CANNON_FLAGS_DIRECTION_RIGHT_BIT    1
.define CANNON_FLAGS_ENABLED_BIT            2
.define CANNON_FLAGS_TRIGGER_BIT            3
.define CANNON_FLAGS_SHOOTING_BIT           4

.define DOOR_COUNT_MAX                      4
.define DOOR_STRUCTURE_SIZE                 4

.define DOOR_FLAGS_SWITCH_MASK              $0F

.define DOOR_FLAGS_OPEN                     $10
.define DOOR_FLAGS_CLOSE                    $00
.define DOOR_FLAGS_OPEN_BIT                 4

;----------------------------------------------------------------------
; BOOT SECTION
;----------------------------------------------------------------------
.bank 0 slot 0

.org $0000
.section "Boot section" force
    di              ; disable interrupts
    im 1            ; Interrupt mode 1
    jp Main         ; jump to main program
.ends

;----------------------------------------------------------------------
; VRAMToHL / RST $08
; Set VRAM pointer to HL register
;----------------------------------------------------------------------
; Trash: AF
;----------------------------------------------------------------------
.org $0008
VRAMToHL:
    ld a,l
    out ($bf),a
    ld a,h
    out ($bf),a
    ret

;----------------------------------------------------------------------
; VRAMToDE / RST $10
; Set VRAM pointer to DE register
;----------------------------------------------------------------------
; Trash: AF
;----------------------------------------------------------------------
.org $0010
VRAMToDE:
    ld a,l
    out ($bf),a
    ld a,h
    out ($bf),a
    ret

;----------------------------------------------------------------------
; CallHL
;----------------------------------------------------------------------
; Trash: DE
;----------------------------------------------------------------------
.org $0018
CallHL:
    ld de, +
    push de
    jp (hl)
    +:
    ret

;----------------------------------------------------------------------
; Interrupt Handler
;----------------------------------------------------------------------
.org $0038
InterruptHandler:
    push af
	in a, ($BF)					; Read VDP status to acknowledge interrupt
	ld a, 1
	ld (VarFrameTrigger), a
    pop af
    ei
    ret

;----------------------------------------------------------------------
; NMI / Pause Button Handler
;----------------------------------------------------------------------
.org $0066
    ; FIXME: This is set but actually not yet used by the game engine
    push af
    ld a, (VarPaused)
    xor $ff
    ld (VarPaused), a
    pop af
    retn

;----------------------------------------------------------------------
; Main entry point
;----------------------------------------------------------------------
.section "Main" force
Main:
    ld sp, $dff0
    xor a
    ld (VarPaused), a
    call VDP_Initialize
    call VDP_ClearVRAM
    call SpritesInit

    ; Load Background Palette    
    ld hl,DataLevelsPalette                         ; data
    ld b,DataLevelsPaletteEnd-DataLevelsPalette     ; size
    ld c,$00                                        ; index to load at
    call LoadPalette

    ; Load Sprites Palette
    ld hl,DataSpritesPalette                        ; data
    ld b,DataSpritesPaletteEnd-DataSpritesPalette   ; size
    ld c,$10                                        ; index to load at
    call LoadPalette

    ; Load Background Tiles
    ld hl,0                                         ; tile index to load at
    ld ix,DataLevelsTiles                           ; data
    ld bc,(DataLevelsTilesEnd-DataLevelsTiles)/32   ; number of tiles
    ld d,4                                          ; bits per pixel
    call LoadTiles

    ; Load Sprites Tiles
    ld hl,128                                       ; tile index to load at
    ld ix,DataSpritesTiles                          ; data
    ld bc,(DataSpritesTilesEnd-DataSpritesTiles)/32 ; number of tiles
    ld d,4                                          ; bits per pixel
    call LoadTiles

    ; Start music
    ld a, 0
    ld hl, DataMusic1
    ;call PSGMOD_LoadModule
    ;call PSGMOD_Start

    ; Load level
    ld hl, Level00_Data
    ;ld hl, Level03_Data
    ;ld hl, LevelEnding_Data
MainLoadLevel:
    ld sp, $dff0
    call LevelLoad
    call LevelReset
   
.ends
    
;----------------------------------------------------------------------
; Main loop
;----------------------------------------------------------------------

.section "Mainloop" force

    ; Enable display & interrupts
    ld hl, %11100000|($81<<8)   ; 11100100 ?
    rst $08
    ei

MainLoop:

    ; Wait for VBL
MainLoopWaitVBL:
    halt
    ld a,(VarFrameTrigger)
    cp 1
    jr nz, MainLoopWaitVBL
    xor a
    ld (VarFrameTrigger), a

    ; Update music engine   
    ;call PSGMOD_Play
    
    ; Read inputs
    ld a, (VarInputs+0)
    ld b, a
    in a, (IO_PORT_A)
    xor $ff
    ld (VarInputs+0), a
    ld c, a
    xor b
    and c
    ld (VarInputsPressed+0), a
    
    ld a, (VarInputs+1)
    ld b, a
    in a, (IO_PORT_B)
    xor $ff
    ld (VarInputs+1), a
    ld c, a
    xor b
    and c
    ld (VarInputsPressed+1), a
    
    ; Reset
    bit IO_PORT_B_RESET_BIT, a
    jp nz, Main

    ; Increment frame counter
    ld hl, VarFrameCounter
    inc (hl)

    ld a, (VarPaused)
    and a
    jr nz, +

    ; Update game components
    ld a, (VarLevelType)
    cp LEVEL_TYPE_GAME
    call z, UpdateGame
    cp LEVEL_TYPE_ENDING
    call z, UpdateEnding
    +:
    
MainLoopEnd:
    in a, (IO_VCOUNT)
    ld (VarScanlineMetrics), a
    jp MainLoop
.ends

;----------------------------------------------------------------------
; UpdateGame()
;----------------------------------------------------------------------
UpdateGame:
    push af

    call PlayerUpdate
    ld a, (VarKunKunState)
    cp PLAYER_STATE_DEAD
    jr z, +
    cp PLAYER_STATE_WIN
    jr z, +
    call CannonsUpdate
    +:
    call DoorsUpdate
    call SwitchesUpdate
    call LevelUpdate
    call SpritesBlit

    pop af
    ret

;----------------------------------------------------------------------
; UpdateEnding()
;----------------------------------------------------------------------
UpdateEnding:
    push af

    call LevelUpdate
    call SpritesBlit
    
    pop af
    ret

;----------------------------------------------------------------------
; Includes
;----------------------------------------------------------------------

.section "all" force

.include "Sprites.asm"
.include "VDP.asm"
.include "psgmod.inc"
.include "psgmod.asm"

.include "Level.asm"
.include "Cannon.asm"
.include "Doors.asm"
.include "Player.asm"
.include "Switch.asm"

.ends

;----------------------------------------------------------------------
; Data
;----------------------------------------------------------------------

.section "Data" free

DataLevels:
.include "Levels/Level00.asm"
.include "Levels/Level01.asm"
.include "Levels/Level02.asm"
.include "Levels/Level03.asm"
.include "Levels/Level04.asm"
;.include "Levels/LevelTest.asm"
.include "Levels/LevelEnding.asm"
DataLevelsEnd:

DataSpritesPalette:
.include "Data/SpritesPalette.inc"
DataSpritesPaletteEnd:

.define DATA_SPRITES_TILE_KUNKUN_IDLE           128|0
.define DATA_SPRITES_TILE_KUNKUN_EMOTE          128|2
.define DATA_SPRITES_TILE_KUNKUN_JUMP_0         128|4
.define DATA_SPRITES_TILE_KUNKUN_JUMP_0_L       128|4+1
.define DATA_SPRITES_TILE_KUNKUN_JUMP_1         128|6
.define DATA_SPRITES_TILE_KUNKUN_JUMP_1_L       128|6+1
.define DATA_SPRITES_TILE_KUNKUN_JUMP_2         128|8
.define DATA_SPRITES_TILE_KUNKUN_JUMP_2_L       128|8+1
.define DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE     128|10
.define DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE_L   128|10+1
.define DATA_SPRITES_TILE_KUNKUN_STICK_0        128|28
.define DATA_SPRITES_TILE_KUNKUN_STICK_1        128|12
.define DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE   128|14
.define DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L 128|14+1
.define DATA_SPRITES_TILE_KUNKUN_DEAD           128|16
.define DATA_SPRITES_TILE_KUNKUN_JUMP_3         128|18
.define DATA_SPRITES_TILE_KUNKUN_JUMP_3_L       128|18+1
.define DATA_SPRITES_TILE_KUNKUN_FALL           DATA_SPRITES_TILE_KUNKUN_JUMP_1

.define DATA_SPRITES_TILE_WARUKO_IDLE           128|20
.define DATA_SPRITES_TILE_WARUKO_STICK          128|21
.define DATA_SPRITES_TILE_KOKOKUN_IDLE          128|22
.define DATA_SPRITES_TILE_HEART                 128|23
.define DATA_SPRITES_TILE_CANNON_BALL           128|24
.define DATA_SPRITES_TILE_PLATFORM              128|25
.define DATA_SPRITES_TILE_BONUS                 128|26
.define DATA_SPRITES_TILE_KOKOKUN_EMOTE         128|27

.define DATA_SPRITES_TILE_BUBBLE_KUN_1          128|30
.define DATA_SPRITES_TILE_BUBBLE_KUN_2          128|31

.define DATA_SPRITES_TILE_DOOR_0                128|32
.define DATA_SPRITES_TILE_DOOR_FRAME_COUNT      7

.define DATA_SPRITES_TILE_SWITCH_OFF            128|40
.define DATA_SPRITES_TILE_SWITCH_ON             128|41

DataHearthCircle:
DataHearthCircleCos:
	.dbcos 0, 63, 5.625, 16, 0 
DataHearthCircleCosEnd:
DataHearthCircleSin:
	.dbsin 0, 63, 5.625, 16, 0 
DataHearthCircleSinEnd:

DataSpritesTiles:
.include "Data/SpritesTiles.inc"
DataSpritesTilesEnd:

DataLevelsPalette:
.include "Data/LevelsPalette.inc"
DataLevelsPaletteEnd:

DataLevelsTiles:
.include "Data/LevelsTiles.inc"
DataLevelsTilesEnd:

DataLevelsTilemap:
.include "Data/LevelsTilemap.inc"
DataLevelsTilemapEnd:

DataMusic1:
.incbin "Data/Music1.epsgmod"
DataMusic1End:

.ends

;----------------------------------------------------------------------
