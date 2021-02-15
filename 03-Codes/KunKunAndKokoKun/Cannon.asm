;----------------------------------------------------------------------
; KunKun & KokoKun
; Cannon.asm - Cannon Logic & Display
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; STRUCTURES
;----------------------------------------------------------------------

; Cannon structure:
;   .db     flags
;   .db     x
;   .db     y
;   .db     cannon_ball_x
;   .dw     shooting_interval
;   .dw     timer               ; goes down from 'shooting_interval' to 0

.define CANNON_STRUCT_OFFSET_FLAGS              0
.define CANNON_STRUCT_OFFSET_X                  1
.define CANNON_STRUCT_OFFSET_Y                  2
.define CANNON_STRUCT_OFFSET_CANNON_BALL_X      3
.define CANNON_STRUCT_OFFSET_SHOOTING_INTERVAL  4
.define CANNON_STRUCT_OFFSET_SHOOTING_TIMER     6

;----------------------------------------------------------------------
; FUNCTIONS
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; CannonsLoadLevel()
;----------------------------------------------------------------------
CannonsLoadLevel:

    ld ix, (VarLevel)
    ld h,(ix+LEVEL_DATA_STRUCT_OFFSET_CANNONS_DATA+1)
    ld l,(ix+LEVEL_DATA_STRUCT_OFFSET_CANNONS_DATA)
    
    ld a, (hl)
    ld (VarLevelCannonsCount), a
    inc hl
    ld (VarLevelCannonsData), hl
    
    ld a, (VarLevelCannonsCount)
    or a
    ret z
    
    ; Copy structures
    ; BC = A * 8 (A * CANNON_STRUCTURE_SIZE)
    ld c, a
    sla c
    sla c
    sla c
    ld de, VarCannonsTable
    xor a
    ld b, a
    ldir
    
    ret

;----------------------------------------------------------------------
; CannonsUpdate()
;----------------------------------------------------------------------
CannonsUpdate:
    ld a, (VarLevelCannonsCount)
    or a
    ret z
    ld ix, VarCannonsTable
    ld bc, CANNON_STRUCTURE_SIZE
    -:
    call CannonUpdate
    add ix, bc
    dec a
    jr nz, -
    ret

;----------------------------------------------------------------------
; CannonUpdate(ix=cannon)
;----------------------------------------------------------------------
CannonUpdate:

    ; Enabled?
    bit CANNON_FLAGS_ENABLED_BIT, (ix+CANNON_STRUCT_OFFSET_FLAGS)
    ret z

    push af
    push bc
    push hl

    ; Load flags into b
    ld b, (ix+CANNON_STRUCT_OFFSET_FLAGS)

    ; Trigger
    bit CANNON_FLAGS_TRIGGER_BIT, b
    jr z, +
    call CannonUpdateShoot
    +:
    
    ; Update shooting delay
    ld b, (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER+1)
    ld c, (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER)
    dec bc
    ld (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER+1), b
    ld (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER), c
    ld a, b
    or c
    jr nz, +
    call CannonUpdateShoot
    +:

CannonUpdateCannonBall:

    ; Shooting?
    bit CANNON_FLAGS_SHOOTING_BIT, (ix+CANNON_STRUCT_OFFSET_FLAGS)
    jr z, CannonUpdateCannonBallEnd

    ; Move cannon ball
    ld a, (ix+CANNON_STRUCT_OFFSET_CANNON_BALL_X)
    bit CANNON_FLAGS_DIRECTION_LEFT_BIT, (ix+CANNON_STRUCT_OFFSET_FLAGS)
    jr z, +
    dec a
    jr ++
    +:
    inc a
    ++:
    ld (ix+CANNON_STRUCT_OFFSET_CANNON_BALL_X), a
    
    ; Collision
    ld a, (ix+CANNON_STRUCT_OFFSET_CANNON_BALL_X)
    srl a
    srl a
    srl a
    ld l, a
    ld a, (ix+CANNON_STRUCT_OFFSET_Y)
    srl a
    srl a
    srl a
    ld h, a
    
    ; Test player collision
    push hl
    ld a, (VarKunKunTileX)
    cp l
    jr nz, +
    ld a, (VarKunKunTileY)
    cp h
    jr nz, +
    call PlayerStateSetDead
    +:
    pop hl
    
    ; Test wall collision
    ld (ArgLevelLogicMapGetAddress),hl
    call LevelLogicMapGetAddress
    bit LOGICMAP_CANNON_BIT, (hl)
    jr nz, CannonUpdateCannonBallRender
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jr z, CannonUpdateCannonBallRender
    jr CannonUpdateCannonDestroy
    
    ; Destroy cannon ball
CannonUpdateCannonDestroy:
    ld a, (ix+CANNON_STRUCT_OFFSET_FLAGS)
    res CANNON_FLAGS_SHOOTING_BIT, a
    ld (ix+CANNON_STRUCT_OFFSET_FLAGS), a
    jr CannonUpdateCannonBallEnd

    ; Create cannon ball sprite
CannonUpdateCannonBallRender:
    call SpritesAllocate
    ld a, (ix+CANNON_STRUCT_OFFSET_CANNON_BALL_X)
    ld (hl), a
    inc hl
    ld a, (ix+CANNON_STRUCT_OFFSET_Y)
    ld (hl), a
    inc hl
    ld a, DATA_SPRITES_TILE_CANNON_BALL
    ld (hl), a
     
CannonUpdateCannonBallEnd:

CannonUpdateEnd:
    pop hl
    pop bc
    pop af
    ret

CannonUpdateShoot:

    ; Set cannon ball position
    ld a, (ix+CANNON_STRUCT_OFFSET_X)
    ld (ix+CANNON_STRUCT_OFFSET_CANNON_BALL_X), a

    ; Reset timer
    ld h, (ix+CANNON_STRUCT_OFFSET_SHOOTING_INTERVAL+1)
    ld l, (ix+CANNON_STRUCT_OFFSET_SHOOTING_INTERVAL)
    ld (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER+1), h
    ld (ix+CANNON_STRUCT_OFFSET_SHOOTING_TIMER), l
    
    ; Reset trigger, set shooting flag
    ld a, (ix+CANNON_STRUCT_OFFSET_FLAGS)
    res CANNON_FLAGS_TRIGGER_BIT, a
    set CANNON_FLAGS_SHOOTING_BIT, a
    ld (ix+CANNON_STRUCT_OFFSET_FLAGS), a

    ret

;----------------------------------------------------------------------
