;----------------------------------------------------------------------

LevelEnding_Data:
    .db     LEVEL_TYPE_ENDING
    .dw     DataLevelsTilemap+(4*(2*32*24)) ; Tilemap
    .dw     LevelEnding_LogicMap            ; Logic map
    .db     8, 176                          ; KunKun X/Y start
    .db     240, 176                        ; KokoKun X/Y
    .db     0, 0,                           ; KokoKun X/Y Tile Win Trigger
    .dw     LevelEnding_Cannons
    .dw     LevelEnding_Doors
    .dw     LevelEnding_Switches
    .dw     LevelEnding_HandlerReset
    .dw     LevelEnding_Update
    .dw     Level00_Data

LevelEnding_Cannons:
    .db     0   ; Count

LevelEnding_Doors:
    .db     0   ; Count
    
LevelEnding_Switches:
    .db     0   ; Count
    
LevelEnding_LogicMap:
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 

    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 

    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, 

;----------------------------------------------------------------------

LevelEndingDataPalette:
    .db %111001
    .db %100101
    .db %100000
    .db %010000
    .db %000000

LevelEndingDataTheEndHideMap:
    .dw $0000,$0000,$0000,$0000,$0000,$0000,$0000
LevelEndingDataTheEndHideMapEnd:

LevelEndingDataTheEndMap:
    .dw $005F,$0018,$0043,$0000,$0043,$003E,$001B
LevelEndingDataTheEndMapEnd:

LevelEnding_HandlerReset:
    push af
    push hl
    
    xor a
    ld (VarEndingState), a
    xor a
    ld (VarEndingCounter), a
    ld hl, 01
    ld (VarEndingTimer), hl

    ld a, DATA_SPRITES_TILE_KUNKUN_EMOTE
    ld (VarKunKunSprite), a
    ld a, DATA_SPRITES_TILE_KOKOKUN_EMOTE
    ld (VarKokoKunSprite), a

    ld hl, $7800+2*(104/8+88/8*32)
    rst $08
    ld hl, LevelEndingDataTheEndHideMap
    ld bc, LevelEndingDataTheEndHideMapEnd-LevelEndingDataTheEndHideMap
    call VDP_Copy

    pop hl
    pop af
    ret

;----------------------------------------------------------------------
; LevelEnding_Update()
;----------------------------------------------------------------------
LevelEnding_Update:
    push af
    push hl

LevelEnding_UpdateTimerWait:
    ld hl, (VarEndingTimer)
    ld a, h
    or l
    jr z, +
    dec hl
    ld (VarEndingTimer), hl
    jr LevelEnding_UpdateEnd
LevelEnding_UpdateTimerOK:

    +:
    ld a, (VarEndingState)
    cp 0
    call z, LevelEnding_UpdateState0_Fade
    cp 1
    call z, LevelEnding_UpdateState1_Move
    cp 2
    call z, LevelEnding_UpdateState2
    ;cp 3
    ;call z, LevelEnding_UpdateState3_Scroll
    
LevelEnding_UpdateEnd:

    ; Render player
    call PlayerUpdateRender
    call LevelUpdateKokoKunRender
    
    pop hl
    pop af
    ret

;----------------------------------------------------------------------

LevelEnding_UpdateState0_Fade:
    push af
    
    ld a, (VarEndingCounter)
    ld b, 0
    ld c, a
    ld hl, LevelEndingDataPalette
    add hl, bc
    ld bc, $0100
    call LoadPalette

    ld a, (VarEndingCounter)
    inc a
    cp 5
    jr z, +
    ld (VarEndingCounter), a
    ld hl, 30
    ld (VarEndingTimer), hl
    jr +++
    
    +:
    ld a, 1
    ld (VarEndingState), a
    ld a, 0
    ld (VarEndingCounter), a
    ld hl, 60
    ld (VarEndingTimer), hl
    ;ld a, 255
    ;ld (VarKokoKunX), a
    ld a, DATA_SPRITES_TILE_KUNKUN_IDLE
    ld (VarKunKunSprite), a
    ld a, DATA_SPRITES_TILE_KOKOKUN_IDLE
    ld (VarKokoKunSprite), a

    +++:
    pop af
    ret

LevelEnding_UpdateState1_Move:
    push af
    push hl

    ld a, (VarFrameCounter)
    bit 0, a
    jr z, +
    
    ld a, (VarKunKunX)
    inc a
    ld (VarKunKunX), a
    ld a, (VarKokoKunX)
    dec a
    ld (VarKokoKunX), a
    +:
    
    ld a, 176
    ld (VarKokoKunY), a
    ld a, DATA_SPRITES_TILE_KOKOKUN_IDLE
    ld (VarKokoKunSprite), a
    
    ld a, (VarEndingCounter)
    inc a
    ld (VarEndingCounter), a
    cp 224
    jr nz, +

    ld a, 2
    ld (VarEndingState), a
    ld a, 0
    ld (VarEndingCounter), a
    ld hl, 60
    ld (VarEndingTimer), hl
    
    +:

    pop hl
    pop af
    ret

LevelEnding_UpdateState2:

    call SpritesAllocate
    ld a, (VarKunKunX)
    inc a
    ld (hl), a              ; X
    inc hl
    ld a, (VarKunKunY)
    dec a
    dec a
    ld (hl), a              ; Y
    inc hl
    ld a, DATA_SPRITES_TILE_HEART
    ld (hl), a              ; Tile    

    call SpritesAllocate
    ld a, (VarKokoKunX)
    inc a
    ld (hl), a              ; X
    inc hl
    ld a, (VarKokoKunY)
    dec a
    dec a
    ld (hl), a              ; Y
    inc hl
    ld a, DATA_SPRITES_TILE_HEART
    ld (hl), a              ; Tile    

    ld a, (VarEndingCounter)
    inc a
    ld (VarEndingCounter), a
    ret nz
    
    ;ld a, 3
    ;ld (VarEndingState), a
    ;xor a
    ;ld a, (VarEndingCounter)
    ;ld hl, 60*4
    ;ld (VarEndingTimer), hl
    
    ld hl, $7800+2*(104/8+88/8*32)
    rst $08
    ld hl, LevelEndingDataTheEndMap
    ld bc, LevelEndingDataTheEndMapEnd-LevelEndingDataTheEndMap
    call VDP_Copy
    
    ret

;LevelEnding_UpdateState3_Scroll:
;
;    ld a, (VarEndingCounter)
;    inc a
;    ld (VarEndingCounter), a
;    ld h, $89
;    ld l, a
;    rst $08
;
;    ret
    
;----------------------------------------------------------------------
