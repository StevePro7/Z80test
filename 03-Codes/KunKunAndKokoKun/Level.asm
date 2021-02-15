;----------------------------------------------------------------------
; KunKun & KokoKun
; Level.asm - Level code and data
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; STRUCTURE / DEFINITIONS
;----------------------------------------------------------------------

.define LEVEL_DATA_STRUCT_OFFSET_LEVEL_TYPE             0
.define LEVEL_DATA_STRUCT_OFFSET_TILEMAP                1
.define LEVEL_DATA_STRUCT_OFFSET_LOGICMAP               3
.define LEVEL_DATA_STRUCT_OFFSET_KUNKUN_X               5
.define LEVEL_DATA_STRUCT_OFFSET_KUNKUN_Y               6
.define LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_X              7
.define LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_Y              8
.define LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_WIN_TILE_X     9
.define LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_WIN_TILE_Y     10
.define LEVEL_DATA_STRUCT_OFFSET_CANNONS_DATA           11
.define LEVEL_DATA_STRUCT_OFFSET_DOORS_DATA             13
.define LEVEL_DATA_STRUCT_OFFSET_SWITCHES_DATA          15
.define LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_RESET   17
.define LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_UPDATE  19
.define LEVEL_DATA_STRUCT_OFFSET_NEXT_LEVEL             21

.define LOGICMAP_COLLIDE                        $01     ; player collide
.define LOGICMAP_LADDER                         $02     ; ladder on this tile   ; params: left/right
.define LOGICMAP_COLLIDE_SLOPE                  $04     ; player collide slope  ; params: left/right
.define LOGICMAP_LAVA                           $08     ; lava on this tile     ; params: <none>
.define LOGICMAP_SWITCH                         $10     ; switch on this tile   ; params: switch ID
.define LOGICMAP_CANNON                         $20     ; cannon on this tile   ; params: cannon ID
.define LOGICMAP_BONUS                          $40

.define LOGICMAP_COLLIDE_BIT                    0
.define LOGICMAP_LADDER_BIT                     1
.define LOGICMAP_COLLIDE_SLOPE_BIT              2
.define LOGICMAP_LAVA_BIT                       3
.define LOGICMAP_SWITCH_BIT                     4
.define LOGICMAP_CANNON_BIT                     5

.define LOGICMAP_PARAMS_LADDER_LEFT             $40
.define LOGICMAP_PARAMS_LADDER_RIGHT            $80
.define LOGICMAP_PARAMS_LADDER_LEFT_BIT         6
.define LOGICMAP_PARAMS_LADDER_RIGHT_BIT        7

.define LOGICMAP_PARAMS_SLOPE_SLASH             $40     ; left/right was nonsense confusing, so I'm now using
.define LOGICMAP_PARAMS_SLOPE_BACKSLASH         $80     ; "slash" and "backslash" terminology, being less confusing.
.define LOGICMAP_PARAMS_SLOPE_SLASH_BIT         6
.define LOGICMAP_PARAMS_SLOPE_BACKSLASH_BIT     7

.define LOGICMAP_FLAGS_MASK                     $1F     ; bit 01234
.define LOGICMAP_PARAMS_MASK                    $E0     ; bit 567

;----------------------------------------------------------------------
; FUNCTIONS
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; LevelLoad(level=hl)
;----------------------------------------------------------------------
LevelLoad:

    ld (VarLevel), hl
    ld ix,(VarLevel)

    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_LEVEL_TYPE)
    ld (VarLevelType), a
   
    ret

;----------------------------------------------------------------------
; LevelReset()
;----------------------------------------------------------------------
LevelReset:

    ; Load Level Tilemap
    ld hl, $3800|$4000
    rst $08
    ld h, (ix+LEVEL_DATA_STRUCT_OFFSET_TILEMAP+1)
    ld l, (ix+LEVEL_DATA_STRUCT_OFFSET_TILEMAP)
    ld bc, 2*32*24
    call VDP_Copy

    ; Load Level logic map
    ld h, (ix+LEVEL_DATA_STRUCT_OFFSET_LOGICMAP+1)
    ld l, (ix+LEVEL_DATA_STRUCT_OFFSET_LOGICMAP)
    ld de, VarLevelLogicMap
    ld bc, 32*24
    ldir

    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_X)
    ld (VarKokoKunX), a
    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_Y)
    ld (VarKokoKunY), a

    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_WIN_TILE_X)
    ld (VarKokoKunWinTileX), a
    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_WIN_TILE_Y)
    ld (VarKokoKunWinTileY), a

    xor a
    ld (VarHearthPhase), a

    ; Reset player
    call PlayerLoadLevel
    
    ; Reset cannons
    call CannonsLoadLevel

    ; Reset doors
    call DoorsLoadLevel
    
    ; Reset switches
    call SwitchesLoadLevel

    ; Call custom reset handler
    ld ix, (VarLevel)
    ld h,(ix+LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_RESET+1)
    ld l,(ix+LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_RESET)
    rst $18 ; CallHL

    ret

;----------------------------------------------------------------------
; LevelLogicMapGetAddress()
;----------------------------------------------------------------------
; Parameters:
;   (ArgLevelLogicMapGetAddress+0): X tile position
;   (ArgLevelLogicMapGetAddress+1): Y tile position
;----------------------------------------------------------------------
LevelLogicMapGetAddress:

    ld h, 0                     ; hl = y
    ld a, (ArgLevelLogicMapGetAddress+1)
    ld l, a                     
    add hl, hl                  ; hl = y * 2
    add hl, hl                  ; hl = y * 4
    add hl, hl                  ; hl = y * 8
    add hl, hl                  ; hl = y * 16
    add hl, hl                  ; hl = y * 32

    ld bc, VarLevelLogicMap     ; bc = map
    add hl, bc                  ; hl = map + y * 32
    ld b, 0
    ld a, (ArgLevelLogicMapGetAddress+0)
    ld c, a                     ; bc = x
    add hl, bc                  ; hl = map + x + y * 32

    ret
    
;----------------------------------------------------------------------
; LevelLogicMapGetVRAMAddress()
;----------------------------------------------------------------------
; Parameters:
;   (ArgLevelLogicMapGetAddress+0): X tile position
;   (ArgLevelLogicMapGetAddress+1): Y tile position
;----------------------------------------------------------------------
LevelLogicMapGetVRAMAddress:

    ld h, 0                     ; hl = y
    ld a, (ArgLevelLogicMapGetAddress+1)
    ld l, a                     
    add hl, hl                  ; hl = y * 2
    add hl, hl                  ; hl = y * 4
    add hl, hl                  ; hl = y * 8
    add hl, hl                  ; hl = y * 16
    add hl, hl                  ; hl = y * 32
    add hl, hl                  ; hl = y * 64

    ld bc, $3800|$4000          ; bc = map in VRAM
    add hl, bc                  ; hl = map + y * 32
    ld b, 0
    ld a, (ArgLevelLogicMapGetAddress+0)
    rl a
    ld c, a                     ; bc = x
    add hl, bc                  ; hl = map + x + y * 32

    ret    

;----------------------------------------------------------------------
; Parameters:
;   HL : Map address
;   A  : X position
;----------------------------------------------------------------------
; Trash: AF, BC
;----------------------------------------------------------------------
LevelLogicMapGetAddressIncX:
    inc hl
    cp 31
    ret nz
    ld bc,-32
    add hl,bc
    ret

;----------------------------------------------------------------------
; Parameters:
;   HL : Map address
;   A  : X position
;----------------------------------------------------------------------
; Trash: AF, BC
;----------------------------------------------------------------------
LevelLogicMapGetAddressDecX:
    dec hl
    or a
    ret nz
    ld bc,32
    add hl,bc
    ret
    
;----------------------------------------------------------------------
; LevelUpdate()
;----------------------------------------------------------------------
LevelUpdate:

    ; Update Koko Kun
    ld a, (VarLevelType)
    cp LEVEL_TYPE_ENDING
    jr z, + 
    call LevelUpdateKokoKun
    +:
    
    ; Call custom update handler
    ld ix, (VarLevel)
    ld h,(ix+LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_UPDATE+1)
    ld l,(ix+LEVEL_DATA_STRUCT_OFFSET_CUSTOM_HANDLER_UPDATE)
    rst $18 ; CallHL
    
    ret

;----------------------------------------------------------------------
; LevelUpdateKokoKun()
;----------------------------------------------------------------------
LevelUpdateKokoKun:

    ld ix, (VarLevel)
    
    ld a, (VarKunKunState)
    cp PLAYER_STATE_DEAD
    jr z, LevelUpdateKokoKunSad
    
    ; Set animation
    ld a, DATA_SPRITES_TILE_KOKOKUN_IDLE
    ld (VarKokoKunSprite), a
    call LevelUpdateKokoKunRender

    ld a, (VarKunKunState)
    cp PLAYER_STATE_WIN
    jr z, LevelUpdateKokoKunWin

    ; Create KokoKun heart sprite
    ld a, (VarFrameCounter)
    bit 4, a
    jr z,+
    call SpritesAllocate
    ld ix,(VarLevel)
    ld a, (VarKokoKunX)
    ld (hl), a              ; X
    inc hl
    ld a, (VarKokoKunY)
    dec a
    ld (hl), a              ; Y
    inc hl
    ld a, DATA_SPRITES_TILE_HEART
    ld (hl), a              ; Tile
    +:
    ret

LevelUpdateKokoKunRender:
    ; Create KokoKun sprite
    call SpritesAllocate
    ld a, (VarKokoKunX)
    ld (hl), a
    inc hl
    ld a, (VarKokoKunY)
    ld (hl), a
    inc hl
    ld a, (VarKokoKunSprite)
    ld (hl), a
    ret

LevelUpdateKokoKunSad:

    ; Select KokoKun sprite
    ld a, DATA_SPRITES_TILE_KOKOKUN_EMOTE
    ld (VarKokoKunSprite), a
    call LevelUpdateKokoKunRender
    
    ret
    
LevelUpdateKokoKunWin:

    ld a, (VarFrameCounter)
    and 1
    cp 0
    jr nz, +
    ld a, (VarHearthPhase)
    inc a
    ld (VarHearthPhase), a
    +:
    ld a, (VarHearthPhase)

    ld b, 16
    -:    
    add a, 8
    and 63
    call LevelUpdateKokoKunRenderHeart
    djnz -

    ret    

LevelUpdateKokoKunRenderHeart:
    push af
    push bc
    
    ld hl, DataHearthCircle
    ld b, 0
    ld c, a
    add hl, bc
    ld a, (hl)
    add a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_X)
    add a, 4
    ld d, a
    ld bc, 64
    add hl, bc
    ld a, (hl)
    add a, (ix+LEVEL_DATA_STRUCT_OFFSET_KOKOKUN_Y)
    add a, 4
    ld e, a

    call SpritesAllocate
    ld (hl), d
    inc hl
    ld (hl), e
    inc hl
    ld a, DATA_SPRITES_TILE_HEART
    ld (hl), a
    
    pop bc
    pop af
    ret    
   
;----------------------------------------------------------------------
