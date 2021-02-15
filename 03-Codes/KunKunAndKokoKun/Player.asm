;----------------------------------------------------------------------
; KunKun & KokoKun
; Player.asm - Player Handing Code (messy FSM)
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; DEFINITIONS
;----------------------------------------------------------------------

.define PLAYER_STATE_IDLE               0       ; shall be 0
.define PLAYER_STATE_MOVE               1
.define PLAYER_STATE_MOVE_FALL          2
.define PLAYER_STATE_JUMP_LEFT          3
.define PLAYER_STATE_JUMP_RIGHT         4
.define PLAYER_STATE_JUMP_UP            5
.define PLAYER_STATE_STICK              6
.define PLAYER_STATE_STICK_CLIMB_UP     7
.define PLAYER_STATE_STICK_CLIMB_DOWN   8
.define PLAYER_STATE_DEAD               9
.define PLAYER_STATE_WIN                10

.define PLAYER_DIRECTION_MOVE_LEFT          $01
.define PLAYER_DIRECTION_MOVE_RIGHT         $02
.define PLAYER_DIRECTION_SPRITE_LEFT        $04
.define PLAYER_DIRECTION_SPRITE_RIGHT       $08
.define PLAYER_DIRECTION_MOVE_LEFT_BIT      0
.define PLAYER_DIRECTION_MOVE_RIGHT_BIT     1
.define PLAYER_DIRECTION_SPRITE_LEFT_BIT    2
.define PLAYER_DIRECTION_SPRITE_RIGHT_BIT   3

.define PLAYER_IDLE_TIMER_BUBBLE_KUN        60*14    ; Show "Kun" bubble after 14 seconds

;----------------------------------------------------------------------
; FUNCTIONS
;----------------------------------------------------------------------
    
;----------------------------------------------------------------------
; PlayerLoadLevel()
;----------------------------------------------------------------------
PlayerLoadLevel:

    ; Set state
    ld hl, PLAYER_STATE_IDLE|(0<<8)
    ld (VarKunKunState), hl

    ; Set position, direction
    ld ix, (VarLevel)
    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KUNKUN_X)
    ld (VarKunKunX), a
    ld a, (ix+LEVEL_DATA_STRUCT_OFFSET_KUNKUN_Y)
    ld (VarKunKunY), a
    ld a, PLAYER_DIRECTION_MOVE_RIGHT|PLAYER_DIRECTION_SPRITE_RIGHT
    ld (VarKunKunDirection), a
    ld a, 1
    ld (VarKunKunJumpDisable), a
    
    ld bc, PLAYER_IDLE_TIMER_BUBBLE_KUN
    ld (VarKunKunIdleCounter), bc
    
    ; Reset action counter
    ld bc, 0
    ld (VarKunKunActionCounter), bc

    ret

PlayerStateHandlerTable:
    jp PlayerUpdateStateIdle
    nop
    jp PlayerUpdateStateMove
    nop
    jp PlayerUpdateStateMoveFall
    nop
    jp PlayerUpdateStateJumpLeft
    nop
    jp PlayerUpdateStateJumpRight
    nop
    jp PlayerUpdateStateJumpUp
    nop
    jp PlayerUpdateStateStick
    nop
    jp PlayerUpdateStateStickClimbUp
    nop
    jp PlayerUpdateStateStickClimbDown
    nop
    jp PlayerUpdateStateDead
    nop
    jp PlayerUpdateStateWin

;----------------------------------------------------------------------
; PlayerUpdate()
;----------------------------------------------------------------------
PlayerUpdate:

    ; Convert position pixel->tile
    ld a, (VarKunKunX)
    srl a
    srl a
    srl a
    ld l, a
    ld a, (VarKunKunY)
    srl a
    srl a
    srl a
    ld h, a
    ld (VarKunKunTileX), hl         ; hl = TileX, TileY
    
    ; Logic map address query
    ld (ArgLevelLogicMapGetAddress),hl
    call LevelLogicMapGetAddress
    ld (VarKunKunLogicTile), hl

    ; Reset 'jump disable' flags when jump buttons are released
    ld a, (VarInputs)
    and IO_PORT_A_P1_BUTTON1|IO_PORT_A_P1_BUTTON2|IO_PORT_A_P1_UP
    jr nz, +
    xor a
    ld (VarKunKunJumpDisable), a
    +:

    ; Jump to current state handler
PlayerUpdateStateHandler:
    ld b, 0
    ld a, (VarKunKunState)
    sla a
    sla a
    ld c, a
    ld hl, PlayerStateHandlerTable
    add hl, bc
    
    ; call hl
    ld de, PlayerUpdateStateEnd
    push de
    jp (hl)
PlayerUpdateStateEnd:

PlayerUpdateRender:

    ; Create KunKun sprite
    call SpritesAllocate
    ld a, (VarKunKunX)
    ld (hl), a
    inc hl
    ld a, (VarKunKunY)
    ld (hl), a
    inc hl

    ld a, (VarKunKunDirection)
    bit PLAYER_DIRECTION_SPRITE_LEFT_BIT, a
    ld a, (VarKunKunSprite)
    jr nz, +
    xor 1
    +:    
    ld (hl), a
    
    ret

;----------------------------------------------------------------------
; PlayerUpdateStateIdle()
;----------------------------------------------------------------------
PlayerUpdateStateIdle:

    ; Set sprite
PlayerUpdateStateIdleSetSprite:
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jp z, PlayerUpdateStateIdleSetSpriteGround
    
    bit LOGICMAP_PARAMS_SLOPE_BACKSLASH_BIT, (hl)
    jp z, PlayerUpdateStateIdleSetSpriteSlopeSlash

PlayerUpdateStateIdleSetSpriteSlopeBackslash:
    ld a, PLAYER_DIRECTION_MOVE_RIGHT|PLAYER_DIRECTION_SPRITE_RIGHT
    ld (VarKunKunDirection), a
    ld a, DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    ld (VarKunKunSprite), a
    jp PlayerUpdateStateIdleSetSpriteEnd
    
PlayerUpdateStateIdleSetSpriteSlopeSlash:
    ld a, PLAYER_DIRECTION_MOVE_LEFT|PLAYER_DIRECTION_SPRITE_LEFT
    ld (VarKunKunDirection), a
    ld a, DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    ld (VarKunKunSprite), a
    jp PlayerUpdateStateIdleSetSpriteEnd
    
PlayerUpdateStateIdleSetSpriteGround:
    ld a, DATA_SPRITES_TILE_KUNKUN_IDLE
    ld (VarKunKunSprite), a
    
PlayerUpdateStateIdleSetSpriteEnd:    
    
    ; In lava?
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_LAVA_BIT, (hl)
    jp nz, PlayerStateSetDead

    ; Fall?
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr nz, +
    ld hl, (VarKunKunLogicTile)
    ld bc, 32       ; Y += 1
    add hl, bc
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jp z, PlayerStateSetFall
    +:
   
    ; Activate switch?
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_SWITCH_BIT, (hl)
    jr z, +
    ld a, (hl)
    and LOGICMAP_PARAMS_MASK
    rlc a
    rlc a
    rlc a
    call SwitchActivate
    +:
   
    ; Bonus?
   
    ld a, (hl)
    cp LOGICMAP_BONUS
    jr nz, +

Bonus:

    ; Remove bonus from logic map
    xor a
    ld (hl), a
    
    ; Remove bonus from tilemap
    ; FIXME-VRAM
    call LevelLogicMapGetVRAMAddress
    rst $08
    xor 0
    out (IO_VDP_DATA), a
    out (IO_VDP_DATA), a

    ; Increase score
    ld hl, (VarScore)
    ld bc, 10
    add hl, bc
    ld (VarScore), hl
    
    +:
    
    ; Win?
    ld a, (VarKunKunTileX)
    ld b, a
    ld a, (VarKokoKunWinTileX)
    cp b
    jr nz, +
    ld a, (VarKunKunTileY)
    ld b, a
    ld a, (VarKokoKunWinTileY)
    cp b
    jr nz, +
    jp PlayerStateSetWin
    +:

    ; Inputs    
PlayerUpdateStateIdleInputs:

    ld a, (VarInputs)
    ld b, a
    
    ; Inputs - Stick Up
    bit IO_PORT_A_P1_UP_BIT, b
    jp z, +
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_LADDER_BIT, (hl)
    jp nz,PlayerUpdateStateIdleStickUp
    +:
    
    ; Inputs - Jump
    
    ; Can't jump if:
    ; - jump disabled (to avoid jump repeatition)
    ld a, (VarKunKunJumpDisable)
    or a
    jr nz, +++
    ; - on a slope
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr nz, +++
    
    ; Inputs - Jump Left (unless going right)
    bit IO_PORT_A_P1_RIGHT_BIT, b
    jr nz, +
    bit IO_PORT_A_P1_BUTTON1_BIT, b
    jp nz,PlayerUpdateStateIdleJumpLeft
    +:
    
    ; Inputs - Jump Right (unless going left)
    bit IO_PORT_A_P1_LEFT_BIT, b
    jr nz, ++
    bit IO_PORT_A_P1_BUTTON2_BIT, b
    jp nz,PlayerUpdateStateIdleJumpRight
    ++:
    
    ; Inputs - Jump up
    bit IO_PORT_A_P1_UP_BIT, b
    jp nz, PlayerUpdateStateIdleJumpUp
    +++:
    
    ; Inputs - Move
    bit IO_PORT_A_P1_LEFT_BIT, b
    jp nz,PlayerUpdateStateIdleMoveLeft
    bit IO_PORT_A_P1_RIGHT_BIT, b
    jp nz,PlayerUpdateStateIdleMoveRight
   
    ; Idle counter
    ld hl, (VarKunKunIdleCounter)
    dec hl
    ld (VarKunKunIdleCounter), hl
    ld a,h
    or a
    jr nz, +
    
    ; Create "Kun" bubble
    call SpritesAllocate
    ld a, (VarKunKunX)
    ld (hl), a
    inc hl
    ld a, (VarKunKunY)
    sub 5
    ld (hl), a
    inc hl
    ld a, DATA_SPRITES_TILE_BUBBLE_KUN_1
    ld (hl), a
    
    call SpritesAllocate
    ld a, (VarKunKunX)
    add a, 8
    ld (hl), a
    inc hl
    ld a, (VarKunKunY)
    sub 5
    ld (hl), a
    inc hl
    ld a, DATA_SPRITES_TILE_BUBBLE_KUN_2
    ld (hl), a
    
    ; Reset counter
    ld hl, (VarKunKunIdleCounter)
    ld a, l
    or a
    jr nz, +
    ld hl, PLAYER_IDLE_TIMER_BUBBLE_KUN
    ld (VarKunKunIdleCounter), hl
    
    +:
   
    ret

;----------------------------------------------------------------------
; PlayerUpdateStateIdleMoveLeft()
;----------------------------------------------------------------------
PlayerUpdateStateIdleMoveLeft:
   
    ; Save next logic tile
    ld hl, (VarKunKunLogicTile)
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressDecX
    ld (VarKunKunLogicTileNext), hl

    ; On a slope?
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr nz, PlayerUpdateStateIdleMoveLeftFromSlope
    
PlayerUpdateStateIdleMoveLeftFromGround:

    ; Test wall on next logic tile
    ld hl, (VarKunKunLogicTileNext)
    bit LOGICMAP_COLLIDE_BIT,(hl)
    ret nz

    ; Set Animation
    ld bc, 32
    add hl, bc
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_SLASH_BIT, (hl)
    jr z, +

    ; Use target slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Animation -> Ground to slope down
    ld bc, PlayerDataAnimMoveGroundToSlopeDown
    jr PlayerUpdateStateIdleMoveLeftOK
    
    +:
    ld bc, -32
    add hl, bc
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_BACKSLASH_BIT, (hl)
    jr z, +

    ; Use target slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Animation -> Ground to slope up
    ld bc, PlayerDataAnimMoveGroundToSlopeUp
    jr PlayerUpdateStateIdleMoveLeftOK

    ; Animation -> Ground to ground (or empty space)
    +:
    ; No slope to set direction
    ld hl, 0
    ld (VarKunKunLogicTileSlope), hl
    ld bc, PlayerDataAnimMoveGroundToGround
    jr PlayerUpdateStateIdleMoveLeftOK

PlayerUpdateStateIdleMoveLeftFromSlope:

    ; Use starting slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Get address to next logic tile
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_PARAMS_SLOPE_SLASH_BIT,(hl)
    jr nz, PlayerUpdateStateIdleMoveLeftFromSlopeDown

PlayerUpdateStateIdleMoveLeftFromSlopeUp:

    ; Test wall on next logic tile
    ld hl, (VarKunKunLogicTileNext)
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jr nz, +
    
    ; Animation -> Slope to slope up
    ld bc, PlayerDataAnimMoveSlopeToSlopeUp
    jr PlayerUpdateStateIdleMoveLeftOK
    
    ; Animation -> Slope to ground up
    +:
    ld bc, PlayerDataAnimMoveSlopeToGroundUp
    jr PlayerUpdateStateIdleMoveLeftOK
 
PlayerUpdateStateIdleMoveLeftFromSlopeDown:

    ld hl, (VarKunKunLogicTileNext)
    ld bc, 32
    add hl, bc
    
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +

    ; Animation -> Slope to slope down
    ld bc, PlayerDataAnimMoveSlopeToSlopeDown
    jr PlayerUpdateStateIdleMoveLeftOK

    ; Animation -> Slope to ground (or empty space) down
    +:
    ld hl, (VarKunKunLogicTileNext)
    ld bc, PlayerDataAnimMoveSlopeToGroundDown
    jr PlayerUpdateStateIdleMoveLeftOK

PlayerUpdateStateIdleMoveLeftOK:

    ; Save animation pointer (must be provided in BC)
    ld (VarKunKunStateAnim), bc

    ; Set direction
    ld hl, (VarKunKunLogicTileSlope)
    ld a, h
    or l
    jr z, +
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_SLASH_BIT, (hl)
    jr z, +
    ld a, PLAYER_DIRECTION_SPRITE_LEFT
    jr ++
    +:
    ld a, PLAYER_DIRECTION_SPRITE_RIGHT
    ++:
    or PLAYER_DIRECTION_MOVE_LEFT
    ld (VarKunKunDirection), a
    
    ; Set State
    ld bc, PLAYER_STATE_MOVE
    ld (VarKunKunState), bc

    ret

;----------------------------------------------------------------------
; PlayerUpdateStateIdleMoveRight()
;----------------------------------------------------------------------
PlayerUpdateStateIdleMoveRight:

    ; Save next logic tile
    ld hl, (VarKunKunLogicTile)
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressIncX
    ld (VarKunKunLogicTileNext), hl
    
    ; On a slope?
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr nz, PlayerUpdateStateIdleMoveRightFromSlope
    
PlayerUpdateStateIdleMoveRightFromGround:

    ; Test wall on next logic tile
    ld hl, (VarKunKunLogicTileNext)
    bit LOGICMAP_COLLIDE_BIT,(hl)
    ret nz

    ; Set Animation
    ld bc, 32
    add hl, bc
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_BACKSLASH_BIT, (hl)
    jr z, +

    ; Use target slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Animation -> Ground to slope down
    ld bc, PlayerDataAnimMoveGroundToSlopeDown
    jr PlayerUpdateStateIdleMoveRightOK
    
    +:
    ld bc, -32
    add hl, bc
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_SLASH_BIT, (hl)
    jr z, +

    ; Use target slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Animation -> Ground to slope up
    ld bc, PlayerDataAnimMoveGroundToSlopeUp
    jr PlayerUpdateStateIdleMoveRightOK

    ; Animation -> Ground to ground (or empty space)
    +:
    ; No slope to set direction
    ld hl, 0
    ld (VarKunKunLogicTileSlope), hl
    ld bc, PlayerDataAnimMoveGroundToGround
    jr PlayerUpdateStateIdleMoveRightOK

PlayerUpdateStateIdleMoveRightFromSlope:

    ; Use starting slope to set direction
    ld (VarKunKunLogicTileSlope), hl

    ; Get address to next logic tile
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_PARAMS_SLOPE_BACKSLASH_BIT,(hl)
    jr nz, PlayerUpdateStateIdleMoveRightFromSlopeDown

PlayerUpdateStateIdleMoveRightFromSlopeUp:

    ; Test wall on next logic tile
    ld hl, (VarKunKunLogicTileNext)
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jr nz, +
    
    ; Animation -> Slope to slope up
    ld bc, PlayerDataAnimMoveSlopeToSlopeUp
    jr PlayerUpdateStateIdleMoveRightOK
    
    ; Animation -> Slope to ground up
    +:
    ld bc, PlayerDataAnimMoveSlopeToGroundUp
    jr PlayerUpdateStateIdleMoveRightOK
 
PlayerUpdateStateIdleMoveRightFromSlopeDown:

    ld hl, (VarKunKunLogicTileNext)
    ld bc, 32
    add hl, bc
    
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +

    ; Animation -> Slope to slope down
    ld bc, PlayerDataAnimMoveSlopeToSlopeDown
    jr PlayerUpdateStateIdleMoveRightOK

    ; Animation -> Slope to ground (or empty space) down
    +:
    ld hl, (VarKunKunLogicTileNext)
    ld bc, PlayerDataAnimMoveSlopeToGroundDown
    jr PlayerUpdateStateIdleMoveRightOK

PlayerUpdateStateIdleMoveRightOK:

    ; Save animation pointer (must be provided in BC)
    ld (VarKunKunStateAnim), bc

    ; Set direction
    ld hl, (VarKunKunLogicTileSlope)
    ld a, h
    or l
    jr z, +
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jr z, +
    bit LOGICMAP_PARAMS_SLOPE_SLASH_BIT, (hl)
    jr z, +
    ld a, PLAYER_DIRECTION_SPRITE_LEFT
    jr ++
    +:
    ld a, PLAYER_DIRECTION_SPRITE_RIGHT
    ++:
    or PLAYER_DIRECTION_MOVE_RIGHT
    ld (VarKunKunDirection), a

    ; Set State
    ld bc, PLAYER_STATE_MOVE
    ld (VarKunKunState), bc

    ret

;----------------------------------------------------------------------
; PlayerUpdateStateIdleJumpUp()
;----------------------------------------------------------------------
PlayerUpdateStateIdleJumpUp:

    ; Test upper wall
    ld hl, (VarKunKunLogicTile)
    ld bc, -32
    add hl, bc
    bit LOGICMAP_COLLIDE_BIT,(hl)
    ret nz

    ; Set animation
    ld bc, PlayerDataAnimJumpUp
    ld (VarKunKunStateAnim), bc
    
    ; Set state
    ld a, 1
    ld (VarKunKunJumpDisable), a
    ld bc, PLAYER_STATE_JUMP_UP
    ld (VarKunKunState), bc

    ret

;----------------------------------------------------------------------
; PlayerUpdateStateIdleJumpLeft()
;----------------------------------------------------------------------
PlayerUpdateStateIdleJumpLeft:

    ; Test left wall
    ld hl, (VarKunKunLogicTile)
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressDecX
    bit LOGICMAP_COLLIDE_BIT,(hl)
    ret nz

    ; Set animation
    ; Jumping to a slope? Different animation
    call LevelLogicMapGetAddressDecX
    bit LOGICMAP_COLLIDE_SLOPE_BIT,(hl)
    jr z, +
    ld bc, PlayerDataAnimJumpToSlope
    jr ++
    +:
    ld bc, PlayerDataAnimJump
    ++:
    ld (VarKunKunStateAnim), bc
    
    ; Set state
    ld a, 1
    ld (VarKunKunJumpDisable), a
    ld a, PLAYER_DIRECTION_MOVE_LEFT|PLAYER_DIRECTION_SPRITE_LEFT
    ld (VarKunKunDirection), a
    ld bc, PLAYER_STATE_JUMP_LEFT
    ld (VarKunKunState), bc
   
    ret

PlayerUpdateStateIdleJumpRight:

    ; Test right wall
    ld hl, (VarKunKunLogicTile)
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressIncX
    bit LOGICMAP_COLLIDE_BIT,(hl)
    ret nz

    ; Set animation
    ; Jumping to a slope? Different animation
    call LevelLogicMapGetAddressIncX
    bit LOGICMAP_COLLIDE_SLOPE_BIT,(hl)
    jr z, +
    ld bc, PlayerDataAnimJumpToSlope
    jr ++
    +:
    ld bc, PlayerDataAnimJump
    ++:
    ld (VarKunKunStateAnim), bc

    ; Set State
    ld a, 1
    ld (VarKunKunJumpDisable), a
    ld a, PLAYER_DIRECTION_MOVE_RIGHT|PLAYER_DIRECTION_SPRITE_RIGHT
    ld (VarKunKunDirection), a
    ld bc, PLAYER_STATE_JUMP_RIGHT
    ld (VarKunKunState), bc

    ret
    
PlayerUpdateStateIdleStickUp:

    ; Set Animation
    ld bc, PlayerDataAnimIdleToStick
    ld (VarKunKunStateAnim), bc

    ; Set state
    ld hl, (VarKunKunLogicTile)
    bit LOGICMAP_PARAMS_LADDER_RIGHT_BIT, (hl)
    jr nz, +4
    ld a, PLAYER_DIRECTION_MOVE_RIGHT|PLAYER_DIRECTION_SPRITE_RIGHT
    jr +2
    ld a, PLAYER_DIRECTION_MOVE_LEFT|PLAYER_DIRECTION_SPRITE_LEFT
    ld (VarKunKunDirection), a
    ld bc, PLAYER_STATE_STICK|(8<<8)
    ld (VarKunKunState), bc

    ret

;----------------------------------------------------------------------
; PlayerUpdateStateMove()
;----------------------------------------------------------------------
PlayerUpdateStateMove:

    ; Update Animation
    ld hl, (VarKunKunStateAnim)
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl
    
    ; End of move?
    ld a, (hl)
    cp $80
    ret nz
    jp PlayerStateSetIdle
      
;----------------------------------------------------------------------
; PlayerUpdateStateMoveFall()
;----------------------------------------------------------------------
PlayerUpdateStateMoveFall:

    ; Update Animation
    ld hl, (VarKunKunStateAnim)
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl

    ; End of move?
    ld a, (hl)
    cp $80
    ret nz    

    ld hl, (VarKunKunLogicTile)
    ld bc, 32
    add hl, bc
    bit LOGICMAP_COLLIDE_SLOPE_BIT, (hl)
    jp nz, PlayerStateSetIdle
    bit LOGICMAP_LAVA_BIT, (hl)
    jp nz, PlayerStateSetIdle
    add hl, bc
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jp nz, PlayerStateSetIdle
    
    jp PlayerStateSetFall

;----------------------------------------------------------------------
; PlayerUpdateStateJumpLeft()
;----------------------------------------------------------------------
PlayerUpdateStateJumpLeft:

    ; Test for wall
    ld a, (VarKunKunX)
    and 7
    jr nz, +
    ld hl, (VarKunKunLogicTile)          ; hl = TileX, TileY
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressDecX
    bit LOGICMAP_COLLIDE_BIT, (hl)
    jr nz, PlayerStateSetIdle
    +:

    ; Update Animation
    ld hl, (VarKunKunStateAnim)
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl
    
    ; End of jump?
    ld a, (hl)
    cp $80
    ret nz
    jp PlayerStateSetIdle

;----------------------------------------------------------------------
; PlayerUpdateStateJumpRight()
;----------------------------------------------------------------------
PlayerUpdateStateJumpRight:

    ; Test for wall
    ld a, (VarKunKunX)
    and 7
    cp 7
    jr z, +
    ld hl,(VarKunKunLogicTile)          ; hl = TileX, TileY
    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressIncX
    bit LOGICMAP_COLLIDE_BIT,(hl)
    jr nz, PlayerStateSetIdle
    +:

    ; Update Animation
    ld hl, (VarKunKunStateAnim)
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl
    
    ; End of jump?
    ld a, (hl)
    cp $80
    ret nz
    jp PlayerStateSetIdle

;----------------------------------------------------------------------
; PlayerUpdateStateJumpUp()
;----------------------------------------------------------------------
PlayerUpdateStateJumpUp:

    ; Update Animation
    ld hl, (VarKunKunStateAnim)
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl
    
    ; End of jump?
    ld a, (hl)
    cp $80
    ret nz
    jp PlayerStateSetIdle
        
;----------------------------------------------------------------------
; PlayerStateSetIdle()
;----------------------------------------------------------------------
PlayerStateSetIdle:
    ld bc, PLAYER_STATE_IDLE
    ld (VarKunKunState), bc
    ld bc, PLAYER_IDLE_TIMER_BUBBLE_KUN
    ld (VarKunKunIdleCounter), bc
    ret

PlayerStateSetFall:
    ld bc, PlayerDataAnimMoveFall
    ld (VarKunKunStateAnim), bc
    ld bc, PLAYER_STATE_MOVE_FALL|(4<<8)
    ld (VarKunKunState), bc
    ret

PlayerStateSetDead:
    ld bc, PLAYER_STATE_DEAD|(120<<8)
    ld (VarKunKunState), bc
    ret

PlayerStateSetWin:
    ld bc, PLAYER_STATE_WIN|(255<<8)
    ld (VarKunKunState), bc
    ret

;----------------------------------------------------------------------
; PlayerUpdateStateStick()
;----------------------------------------------------------------------
PlayerUpdateStateStick:

    ld hl, (VarKunKunStateAnim)
    ld a, (hl)
    cp $80
    jr nz, PlayerUpdateStateStickAnimation

    ; Set next state
    inc hl
    ld c, (hl)
    inc hl
    ld b, (hl)
    ld (VarKunKunState),bc
    dec hl
    dec hl
    
    ld a, (VarKunKunState)
    cp PLAYER_STATE_STICK
    ret nz
    
    jp PlayerUpdateStateStickInputs
    
PlayerUpdateStateStickAnimation:
    
    ; Update Animation
    call PlayerAnimUpdateFrame
    ld (VarKunKunStateAnim), hl
    ret

    ; Inputs
PlayerUpdateStateStickInputs:

    ld a, (VarInputs)
    ld b, a
    
    ; Inputs - Move Up
    bit IO_PORT_A_P1_UP_BIT, b
    jp nz,PlayerUpdateStateStickMoveUp

    ; Inputs - Move Down
    bit IO_PORT_A_P1_DOWN_BIT, b
    jp nz,PlayerUpdateStateStickMoveDown
    
    ; Inputs - Unstick Left
    bit IO_PORT_A_P1_LEFT_BIT, b
    jp nz,PlayerUpdateStateStickUnstickLeft

    ; Inputs - Unstick Right
    bit IO_PORT_A_P1_RIGHT_BIT, b
    jp nz,PlayerUpdateStateStickUnstickRight

    ret

PlayerUpdateStateStickMoveUp:

    ; Check if there's more ladder to climb up
    ld hl,(VarKunKunLogicTile)          ; hl = TileX, TileY
    ld bc,-32
    add hl, bc
    bit LOGICMAP_LADDER_BIT, (hl)
    ret z
    ld bc, PLAYER_STATE_STICK_CLIMB_UP|(8<<8)
    ld (VarKunKunState), bc
    ret

PlayerUpdateStateStickUnstickLeft:

    ld hl,(VarKunKunLogicTile)
    bit LOGICMAP_PARAMS_LADDER_RIGHT_BIT, (hl)
    ret nz

    ld bc,-32
    add hl, bc
    bit LOGICMAP_LADDER_BIT, (hl)
    ret nz

    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressDecX
    bit LOGICMAP_COLLIDE_BIT, (hl)
    ret nz

    ; Set Animation
    ld a, PLAYER_DIRECTION_MOVE_LEFT|PLAYER_DIRECTION_SPRITE_LEFT
    ld (VarKunKunDirection), a
    ld a, DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L
    ld (VarKunKunSprite), a
    ld bc, PlayerDataAnimStickUpToIdle
    ld (VarKunKunStateAnim), bc
   
    ret
    
PlayerUpdateStateStickUnstickRight:

    ld hl,(VarKunKunLogicTile)
    bit LOGICMAP_PARAMS_LADDER_LEFT_BIT, (hl)
    ret nz

    ld bc,-32
    add hl, bc
    bit LOGICMAP_LADDER_BIT, (hl)
    ret nz

    ld a, (VarKunKunTileX)
    call LevelLogicMapGetAddressIncX
    bit LOGICMAP_COLLIDE_BIT, (hl)
    ret nz
        
    ; Set Animation
    ld a, PLAYER_DIRECTION_MOVE_RIGHT|PLAYER_DIRECTION_SPRITE_RIGHT
    ld (VarKunKunDirection), a
    ld a, DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L
    ld (VarKunKunSprite), a
    ld bc, PlayerDataAnimStickUpToIdle
    ld (VarKunKunStateAnim), bc

    ret

PlayerUpdateStateStickMoveDown:

    ; Check if there's more ladder to climb down
    ld hl,(VarKunKunLogicTile)
    ld bc,32
    add hl, bc
    bit LOGICMAP_LADDER_BIT, (hl)
    jr z, PlayerUpdateStateStickMoveDownUnstick
    ld bc, PLAYER_STATE_STICK_CLIMB_DOWN|(8<<8)
    ld (VarKunKunState), bc
    ret

PlayerUpdateStateStickMoveDownUnstick:
    
    ld bc, PlayerDataAnimStickDownToIdle
    ld (VarKunKunStateAnim), bc

    ret

;----------------------------------------------------------------------
; PlayerUpdateStateStickClimbUp()
;----------------------------------------------------------------------
PlayerUpdateStateStickClimbUp:

    ; Tile animation
    ld a, DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    ld (VarKunKunSprite), a

    ; Logic
    ld hl, VarKunKunY
    dec (hl)
    
    jr PlayerUpdateStateStickClimbShared

;----------------------------------------------------------------------
; PlayerUpdateStateStickClimbDown()
;----------------------------------------------------------------------
PlayerUpdateStateStickClimbDown:

    ; Tile animation
    ld a, DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    ld (VarKunKunSprite), a

    ; Logic
    ld hl, VarKunKunY
    inc (hl)
    ;jr PlayerUpdateStateStickClimbShared

PlayerUpdateStateStickClimbShared:
    ld hl, VarKunKunState+1
    dec (hl)
    ret nz
    ld bc, PLAYER_STATE_STICK|(0<<0)
    ld (VarKunKunState), bc
    ret

;----------------------------------------------------------------------
; PlayerUpdateStateDead()
;----------------------------------------------------------------------
PlayerUpdateStateDead:

    ; Tile animation
    ld a, DATA_SPRITES_TILE_KUNKUN_DEAD
    ld (VarKunKunSprite), a

    ; Wait until timer elapse to allow button pressing
    ld a, (VarKunKunState+1)
    and a
    jr z, +
    dec a
    ld (VarKunKunState+1), a
    ret nz
    +:
    
    ; Test buttons
    ld a, (VarInputs)
    and (IO_PORT_A_P1_BUTTON1 | IO_PORT_A_P1_BUTTON2)
    ret z

    ; Reset level
    call LevelReset

    ret
    
;----------------------------------------------------------------------
; PlayerUpdateStateWin()
;----------------------------------------------------------------------
PlayerUpdateStateWin:

    ; Tile animation
    ld a, DATA_SPRITES_TILE_KUNKUN_IDLE
    ld (VarKunKunSprite), a

    ; Wait until timer elapse to allow button pressing
    ld a, (VarKunKunState+1)
    and a
    jr z, +
    dec a
    ld (VarKunKunState+1), a
    ret nz
    +:
    
    ; Test buttons
    ld a, (VarInputs)
    and (IO_PORT_A_P1_BUTTON1 | IO_PORT_A_P1_BUTTON2)
    ret z

    ; Restart / Ending
    ld ix, (VarLevel)
    ld h, (ix+LEVEL_DATA_STRUCT_OFFSET_NEXT_LEVEL+1)
    ld l, (ix+LEVEL_DATA_STRUCT_OFFSET_NEXT_LEVEL)
    jp MainLoadLevel

    ; Reset level
    ; call LevelReset
    ; ret

;----------------------------------------------------------------------
; PlayerAnimUpdateFrame()
;----------------------------------------------------------------------
; Parameters:
;  HL = current animation pointer
;  C  = flip flags (bit 0: flip x, bit 1: flip y)
;----------------------------------------------------------------------
; Trash: AF, BC
; Return: HL
;----------------------------------------------------------------------
PlayerAnimUpdateFrame:

    ld a, (VarKunKunDirection)
    ld c, a

    ; X offset
PlayerAnimUpdateFrameX:
    ld b, (hl)
    ld a, (VarKunKunX)    
    ;bit PLAYER_ANIM_FLIP_X_BIT, c
    bit PLAYER_DIRECTION_MOVE_LEFT_BIT, c
    jr nz, PlayerAnimUpdateFrameXFlip
PlayerAnimUpdateFrameXNoFlip:
    add a, b
    jr PlayerAnimUpdateFrameXApply
PlayerAnimUpdateFrameXFlip:
    sub b
PlayerAnimUpdateFrameXApply:
    ld (VarKunKunX), a
    inc hl
    
    ; Y offset
PlayerAnimUpdateFrameY:
    ld b, (hl)
    ld a, (VarKunKunY)
;    bit PLAYER_ANIM_FLIP_Y_BIT, c
;    jr nz, PlayerAnimUpdateFrameYFlip
PlayerAnimUpdateFrameYNoFlip:
    add a, b
;    jr PlayerAnimUpdateFrameYApply
;PlayerAnimUpdateFrameYFlip:
;    sub b
PlayerAnimUpdateFrameYApply:
    ld (VarKunKunY), a
    inc hl
    
    ; Tile
    ld a, (hl)
    ld (VarKunKunSprite), a
    inc hl

    ret

;----------------------------------------------------------------------
; DATA
;----------------------------------------------------------------------

PlayerDataAnimIdle:
    .db DATA_SPRITES_TILE_KUNKUN_IDLE
    .db $80

PlayerDataAnimMoveFall:
    .db 0,+2,DATA_SPRITES_TILE_KUNKUN_FALL
    .db 0,+2,DATA_SPRITES_TILE_KUNKUN_FALL
    .db 0,+2,DATA_SPRITES_TILE_KUNKUN_FALL
    .db 0,+2,DATA_SPRITES_TILE_KUNKUN_FALL
    .db $80

PlayerDataAnimMoveGroundToGround:
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db $80

PlayerDataAnimMoveGroundToSlopeUp:
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,+2,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db $80

PlayerDataAnimMoveSlopeToSlopeUp:
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db $80

PlayerDataAnimMoveSlopeToGroundUp:
    ; FIXME-ANIM
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_1_L
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_1_L
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_0_L
    .db +1,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db $80

PlayerDataAnimMoveGroundToSlopeDown:
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    ;.db +1,+1,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    ;.db +1,+2,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    ;.db +1,+2,DATA_SPRITES_TILE_KUNKUN_JUMP_3_L
    ;.db $80

    ; FIXME-ANIM
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +0,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +0,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +0,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    ;.db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_JUMP_3_L
    .db +1,+2,DATA_SPRITES_TILE_KUNKUN_JUMP_3_L
    .db +0,+4,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db $80

PlayerDataAnimMoveSlopeToSlopeDown:
    ; FIXME-ANIM
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,+1,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db $80

PlayerDataAnimMoveSlopeToGroundDown:
    ; FIXME-ANIM
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_IDLE_SLOPE
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db $80

PlayerDataAnimJump:
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_3
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_3
    .db $80

PlayerDataAnimJumpUp:
    .db 0,-2,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 0,+2,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db $80


PlayerDataAnimJumpToSlope:
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_3
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_1
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db +1,0,DATA_SPRITES_TILE_KUNKUN_JUMP_2
    .db $80

PlayerDataAnimIdleToStick:
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_0
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_0
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db $80
    .dw PLAYER_STATE_STICK

PlayerDataAnimStickMoveUp:
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db $80
    .dw PLAYER_STATE_STICK

PlayerDataAnimStickMoveDown:
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,+1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db $80
    .dw PLAYER_STATE_STICK

PlayerDataAnimStickDownToIdle:
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_1
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_0
    .db 0,0,DATA_SPRITES_TILE_KUNKUN_STICK_0
    .db $80
    .dw PLAYER_STATE_IDLE

PlayerDataAnimStickUpToIdle:
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L
    .db 0,-1,DATA_SPRITES_TILE_KUNKUN_STICK_2_IDLE_L
    .db 3,-3,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db 1, 0,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db 1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db 1,-1,DATA_SPRITES_TILE_KUNKUN_JUMP_0
    .db 1, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db 1, 0,DATA_SPRITES_TILE_KUNKUN_IDLE
    .db $80
    .dw PLAYER_STATE_IDLE

;----------------------------------------------------------------------
