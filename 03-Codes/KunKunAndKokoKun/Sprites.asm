;----------------------------------------------------------------------
; KunKun & KokoKun
; Sprites.asm - Sprites System
;----------------------------------------------------------------------

;----------------------------------------------------------------------
; SpritesInit()
;----------------------------------------------------------------------
SpritesInit:
    xor a
    ld (VarSpritesCount), a
    ld hl, VarSpritesTable-3
    ld (VarSpritesCurrent), hl

    ld hl, $7F00
    rst $08
    ld a, $D0
    out (IO_VDP_DATA), a

    ret

;----------------------------------------------------------------------
; SpritesAllocate()
;----------------------------------------------------------------------
; Call to get sprite index in 'a'
; Stick Y in VarSpritesTable+a
; Stick X in VarSpritesTable+(a<<1)
; Stick N in VarSpritesTable+(a<<1)+1
;----------------------------------------------------------------------
SpritesAllocate:

    ld hl, VarSpritesCount
    inc (hl)
    ld hl, (VarSpritesCurrent)
    inc hl
    inc hl
    inc hl
    ld (VarSpritesCurrent), hl
    ret
    
;----------------------------------------------------------------------
; SpritesBlit()
;----------------------------------------------------------------------
; FIXME-OPT
;----------------------------------------------------------------------
SpritesBlit:

    ; Blit sprites to SAT
    ld hl, $3f00|$4000
    rst $08
    ld a, (VarSpritesCount)
    and a
    jr z, SpritesBlitLoopYEnd
    ld b, a
    ld c, $BE               ; VDP data port
    ld hl, VarSpritesTable
SpritesBlitLoopY:
    inc hl
    ld a, (hl)
    dec a                   ; Y shifted by 1
    ; FIXME-VDP-DELAY
    out ($BE), a
    inc hl
    inc hl
    djnz SpritesBlitLoopY

SpritesBlitLoopYEnd:
    ld a, $D0
    out ($BE), a
    
    ld hl,$3f80|$4000
    rst $08
    ld hl, VarSpritesTable
    ld a, (VarSpritesCount)
    ld b, a
SpritesBlitLoopX:
    ; FIXME-VDP-DELAY
    outi
    inc b   ; FIXME
    inc hl
    outi
    jr nz, SpritesBlitLoopX

    ; Reset sprite counter
    xor a
    ld (VarSpritesCount), a
    ld hl, VarSpritesTable-3
    ld (VarSpritesCurrent), hl

    ret

;----------------------------------------------------------------------
