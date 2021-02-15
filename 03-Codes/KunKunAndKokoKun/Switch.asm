;----------------------------------------------------------------------
; KunKun & KokoKun
; Switches.asm - Doors Logic & Display
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; STRUCTURES
;----------------------------------------------------------------------

; Switch structure:
;   .db     x                   ; X
;   .db     y                   ; Y

.define SWITCH_STRUCT_OFFSET_X  0
.define SWITCH_STRUCT_OFFSET_Y  1

;----------------------------------------------------------------------
; FUNCTIONS
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; SwitchesLoadLevel()
;----------------------------------------------------------------------
SwitchesLoadLevel:

    ; Reset switches
    ld hl, VarSwitchesTable
    xor a
    ld (hl), a
    inc hl
    ld (hl), a
    inc hl
    ld (hl), a
    inc hl
    ld (hl), a
    inc hl
    
    ; Load switch data
    ld ix, (VarLevel)
    ld h,(ix+LEVEL_DATA_STRUCT_OFFSET_SWITCHES_DATA+1)
    ld l,(ix+LEVEL_DATA_STRUCT_OFFSET_SWITCHES_DATA)
    
    ld a, (hl)
    ld (VarLevelSwitchesCount), a
    inc hl
    ld (VarLevelSwitchesData), hl
    
    ret
    
;----------------------------------------------------------------------
; SwitchesUpdate()
;----------------------------------------------------------------------
SwitchesUpdate:

    ld a, (VarLevelSwitchesCount)
    or a
    ret z
    ld ix, (VarLevelSwitchesData)
    ld bc, VarSwitchesTable
    
    -:

    push af

    ; Create sprite
    call SpritesAllocate
    ld a, (ix+SWITCH_STRUCT_OFFSET_X)
    ld (hl), a
    inc hl
    ld a, (ix+SWITCH_STRUCT_OFFSET_Y)
    ld (hl), a
    inc hl
    
    ld a, (bc)
    or a
    jr z, +
    ld a, DATA_SPRITES_TILE_SWITCH_ON
    jr ++
    +:
    ld a, DATA_SPRITES_TILE_SWITCH_OFF
    ++:
    ld (hl), a
    
    inc ix
    inc ix
    inc hl
    inc bc
    
    pop af
    
    dec a
    jr nz, -

    ret

;----------------------------------------------------------------------
; SwitchActivate(a=switch id)
;----------------------------------------------------------------------
SwitchActivate:

    push af
    push bc
    push hl
    
    ld hl, VarSwitchesTable
    ld b, c
    ld c, a
    add hl, bc
    set 0, (hl)
    
    pop hl
    pop bc
    pop af

    ret

;----------------------------------------------------------------------
