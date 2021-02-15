;----------------------------------------------------------------------
; KunKun & KokoKun
; Doors.asm - Doors Logic & Display
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; STRUCTURES
;----------------------------------------------------------------------

; Doors structure:
;   .db     flags               ; bits 0-3: switch ID, bits 4-7: flags
;   .db     counter             ; counter for animation
;   .db     x                   ; X
;   .db     y                   ; Y

.define DOOR_STRUCT_OFFSET_FLAGS    0
.define DOOR_STRUCT_OFFSET_COUNTER  1
.define DOOR_STRUCT_OFFSET_X        2
.define DOOR_STRUCT_OFFSET_Y        3

;----------------------------------------------------------------------
; FUNCTIONS
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; DoorsLoadLevel()
;----------------------------------------------------------------------
DoorsLoadLevel:
    
    ld ix, (VarLevel)
    ld h,(ix+LEVEL_DATA_STRUCT_OFFSET_DOORS_DATA+1)
    ld l,(ix+LEVEL_DATA_STRUCT_OFFSET_DOORS_DATA)
    
    ld a, (hl)
    ld (VarLevelDoorsCount), a
    inc hl
    ld (VarLevelDoorsData), hl
    
    ld a, (VarLevelDoorsCount)
    or a
    ret z
    
    ; Copy structures
    ; BC = A * 4 (A * DOOR_STRUCTURE_SIZE)
    ld c, a
    sla c
    sla c
    ld de, VarDoorsTable
    xor a
    ld b, a
    ldir
        
    ret
    
;----------------------------------------------------------------------
; DoorsUpdate()
;----------------------------------------------------------------------
DoorsUpdate:
    ld a, (VarLevelDoorsCount)
    or a
    ret z
    ld ix, VarDoorsTable
    ld bc, DOOR_STRUCTURE_SIZE
    -:
    call DoorUpdate
    add ix, bc
    dec a
    jr nz, -
    ret

;----------------------------------------------------------------------
; DoorUpdate(ix=door)
;----------------------------------------------------------------------
DoorUpdate:

    push af
    push bc
    push hl

    ; Open ?
    bit DOOR_FLAGS_OPEN_BIT, (ix+DOOR_STRUCT_OFFSET_FLAGS)
    jr nz, DoorUpdateRender

    ; Check switch
    ld a, (ix+DOOR_STRUCT_OFFSET_FLAGS)
    and DOOR_FLAGS_SWITCH_MASK
    ld b, 0
    ld c, a
    ld hl, VarSwitchesTable
    add hl, bc
    ld a, (hl)
    and a
    jr z, DoorUpdateRender

    ; Animate
DoorUpdateAnimate:
    ld a, (VarFrameCounter)
    and 15
    cp 0
    jr nz, DoorUpdateAnimateEnd
    ld a, (ix+DOOR_STRUCT_OFFSET_COUNTER)
    cp DATA_SPRITES_TILE_DOOR_FRAME_COUNT
    jr z, DoorUpdateAnimateEnd
    inc a
    ld (ix+DOOR_STRUCT_OFFSET_COUNTER), a
    
    ; Fully opened: update logicmap accordingly
DoorUpdateAnimateOpened:
    cp DATA_SPRITES_TILE_DOOR_FRAME_COUNT
    jr nz, DoorUpdateAnimateEnd
    ld a, (ix+DOOR_STRUCT_OFFSET_X)
    srl a
    srl a
    srl a
    ld (ArgLevelLogicMapGetAddress+0), a
    ld a, (ix+DOOR_STRUCT_OFFSET_Y)
    srl a
    srl a
    srl a
    ld (ArgLevelLogicMapGetAddress+1), a
    call LevelLogicMapGetAddress
    res LOGICMAP_COLLIDE_BIT, (hl)
    
DoorUpdateAnimateEnd:
    
DoorUpdateRender:

    ; Create sprite
    call SpritesAllocate
    ld a, (ix+DOOR_STRUCT_OFFSET_X)
    ld (hl), a
    inc hl
    ld a, (ix+DOOR_STRUCT_OFFSET_Y)
    ld (hl), a
    inc hl
    ld b, DATA_SPRITES_TILE_DOOR_0
    ld a, (ix+DOOR_STRUCT_OFFSET_COUNTER)
    add a, b
    ld (hl), a

    pop hl
    pop bc
    pop af

    ret

;----------------------------------------------------------------------
