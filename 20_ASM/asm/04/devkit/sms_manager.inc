_SMS_init:	
		ld hl, $0000
		push hl
		call _SMS_setSpritePaletteColor
		pop af
		ld c, $00
-:	
		ld hl, _VDPReg_init		; _VDPReg_init = $02CF
		ld b, $00
		add hl, bc
		ld b, (hl)
		di
		ld a, b
		out (Port_VDPAddress), a
		ld a, c
		set 7, a
		out (Port_VDPAddress), a
		ei
		inc c
		ld a, c
		sub $0B
		jr c, -
		call _SMS_initSprites
		call _SMS_finalizeSprites
		call _SMS_copySpritestoSAT
		call _SMS_resetPauseRequest
-:	
		in a, (Port_VCounter)
		ld b, a
		ld a, $80
		sub b
		jr c, -
-:	
		in a, (Port_VCounter)
		sub $80
		jr c, -
-:	
		in a, (Port_VCounter)
		ld c, a
		in a, (Port_VCounter)
		sub c
		jr nc, -
		ld a, c
		sub $E7
		jr c, +
		ld hl, VDPType		; VDPType = $C003
		ld (hl), $80
		ret
	
+:	
		ld hl, VDPType		; VDPType = $C003
		ld (hl), $40
		ret
	
; Data from 2CF to 2D9 (11 bytes)	
_VDPReg_init:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF
	
; Data from 2DA to 2E1 (8 bytes)	
_SMS_VDPType:	
		;.db $FD $21 $03 $C0 $FD $6E $00 $C9
		ld iy, VDPType		; VDPType = $C003
		ld l, (iy + $00)
		ret

_SMS_VDPturnOnFeature:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C0CB
		add hl, de
		ld a, (hl)
		or c
		ld c, a
		ld (hl), c
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, e
		set 7, a
		out (Port_VDPAddress), a
		ei
		ret
	
_SMS_VDPturnOffFeature:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C0CB
		add hl, de
		ld a, (hl)
		and b
		ld c, a
		ld (hl), c
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, e
		set 7, a
		out (Port_VDPAddress), a
		ei
		ret

; Data from 312 to 31B (10 bytes)	
_SMS_setBGScrollX:	
	;.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9
		di
		ld a, l
		out ($bf), a
		ld a, $88
		out ($bf), a
		ei
		ret

; Data from 31C to 325 (10 bytes)	
_SMS_setBGScrollY:	
	;.db $F3 $7D $D3 $BF $3E $89 $D3 $BF $FB $C9
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ei
		ret
	
; Data from 326 to 32F (10 bytes)	
_SMS_setBackdropColor:	
	;.db $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
		di
		ld a, l
		out ($bf), a
		ld a, $87
		out ($bf), a
		ei
		ret
	
; Data from 330 to 343 (20 bytes)	
_SMS_useFirstHalfTilesforSprites:	
	;.db $CB $45 $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79 $D3 $BF $3E $86
	;.db $D3 $BF $FB $C9
		bit 0, l
		jr z, +
		ld c, $FB
		jr ++
	
+:
		ld c, $FF
++:
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, $86
		out (Port_VDPAddress), a
		ei
		ret

; Data from 344 to 388 (69 bytes)	
_SMS_setSpriteMode:
	; .db $4D $CB $41 $28 $0F $C5 $21 $02 $01 $CD $E2 $02 $C1 $21 $CD $C0
	; .db $36 $10 $18 $0D $C5 $21 $02 $01 $CD $F9 $02 $C1 $21 $CD $C0 $36
	; .db $08 $CB $49 $28 $14 $21 $01 $01 $CD $E2 $02 $21 $CE $C0 $36 $10
	; .db $FD $21 $CD $C0 $FD $CB $00 $26 $C9 $21 $01 $01 $CD $F9 $02 $21
	; .db $CE $C0 $36 $08 $C9

		ld c, l
		bit 0, c
		jr z, +
		push bc
		ld hl, $0102
		call _SMS_VDPturnOnFeature
		pop bc
		ld hl, spritesHeight			; spritesHeight = $C0CD
		ld (hl), $10
		jr ++
	
+:
		push bc
		ld hl, $0102
		call _SMS_VDPturnOffFeature
		pop bc
		ld hl, spritesHeight			; spritesHeight = $C0CD
		ld (hl), $08
++:
		bit 1, c
		jr z, +
		ld hl, $0101
		call _SMS_VDPturnOnFeature
		ld hl, spritesWidth				; spritesWidth = $C0CE
		ld (hl), $10
		ld iy, spritesHeight			; spritesHeight = $C0CD
		sla (iy+0)
		ret
	
+:
		ld hl, $0101
		call _SMS_VDPturnOffFeature
		ld hl, spritesWidth	; spritesWidth = $C0CE
		ld (hl), $08
		ret

; Data from 389 to 39C (20 bytes)	
_SMS_setBGPaletteColor:
	;.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	;.db $7E $D3 $BE $C9
	ld hl, $0002
	add hl, sp
	ld c, (hl)
	ld b, $00
	ld hl, VDPBlank					; VDPBlank = $C000
	add hl, bc
	rst $08
	ld hl, $0003
	add hl, sp
	ld a, (hl)
	out ($be), a
	ret
	
// stevepro TODO
_SMS_setSpritePaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, $C010				; stevepro TODO
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, _SMS_crt0_RST08 - 3	; _SMS_crt0_RST08 - 3 = $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
; Data from 3B1 to 3C4 (20 bytes)	
_SMS_loadBGPalette:	
	;.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	;.db $A3 $20 $FC $C9
		ld de, VDPBlank				; VDPBlank = $C000
		ld c, Port_VDPAddress
		di
		out (c), e
		out (c), d
		ei
		ld b, $10
		ld c, Port_VDPData
-:
		outi
		jr nz, -
		ret
	
; Data from 3C5 to 3D8 (20 bytes)	
_SMS_loadSpritePalette:	
	;.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	;.db $A3 $20 $FC $C9
		ld de, $C010		; PSGChan1Volume = $C010	; stevepro TODO
		ld c, Port_VDPAddress
		di
		out (c), e
		out (c), d
		ei
		ld b, $10
		ld c, Port_VDPData
-:
		outi
		jr nz, -
		ret
	
; Data from 3D9 to 3DC (4 bytes)	
_SMS_setColor:	
	;.db $7D $D3 $BE $C9
	ld a, l
	out ($be), a
	ret
_SMS_initSprites:	
		ld hl, SpriteNextFree		; SpriteNextFree = $C0C8
		ld (hl), $00
		ret
	
// stevepro TODO	add a label for the equivalent to ld a, ($C12F)
; Data from 3E3 to 437 (85 bytes)	
_SMS_addSprite:
	.db $3A $C8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $08 $21 $C8 $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $C8 $C0 $87 $4F $21 $48 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $C8 $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	;OLD
	;; SpriteNextFree = $C12F
	;; SpriteTableXN = $C0AF
	;NEW
	; SpriteNextFree = $C0C8
	;; SpriteTableXN = $C048
_SMS_finalizeSprites:	
		ld a, (SpriteNextFree)		; SpriteNextFree = $C0C8
		sub $40
		ret nc
		ld bc, SpriteTableY			; SpriteTableY = $C008
		ld hl, (SpriteNextFree)		; SpriteNextFree = $C0C8
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, SpriteTableY			; SpriteTableY = $C008
		ld e, $40
-:	
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		ld d, e
		dec d
		ld a, d
		ld e, a
		or a
		jr nz, -
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld bc, SpriteTableXN		; SpriteTableXN = $C048
		ld e, $80
-:	
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		ld d, e
		dec d
		ld a, d
		ld e, a
		or a
		jr nz, -
		ret
	
_SMS_waitForVBlank:	
		ld hl, VDPBlank				; VDPBlank = $C000
		ld (hl), $00
-:	
		ld hl, VDPBlank				; VDPBlank = $C000
		bit 0, (hl)
		jr z, -
		ret
	
; Data from 480 to 483 (4 bytes)	
_SMS_getKeysStatus:	
	;.db $2A $04 $C0 $C9
		ld hl, (KeysStatus)	; KeysStatus = $C004
		ret
	
; Data from 484 to 4A0 (29 bytes)	
_SMS_getKeysPressed:	
	.db $FD $21 $06 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $04 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9
	
; Data from 4A1 to 4B7 (23 bytes)	
_SMS_getKeysHeld:	
	.db $3A $04 $C0 $FD $21 $06 $C0 $FD $A6 $00 $6F $3A $05 $C0 $FD $21
	.db $06 $C0 $FD $A6 $01 $67 $C9
	
; Data from 4B8 to 4D4 (29 bytes)	
_SMS_getKeysReleased:	
	.db $FD $21 $04 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $79 $FD
	.db $21 $06 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67 $C9
	
; Data from 4D5 to 4DC (8 bytes)	
_SMS_queryPauseRequested:	
	.db $FD $21 $02 $C0 $FD $6E $00 $C9
	
_SMS_resetPauseRequest:	
		ld hl, PauseRequested		; PauseRequested = $C002
		ld (hl), $00
		ret
	
; Data from 4E3 to 4F3 (17 bytes)	
_SMS_setLineInterruptHandler:	
	.db $21 $02 $00 $39 $7E $32 $C9 $C0 $21 $03 $00 $39 $7E $32 $CA $C0
	.db $C9
	
; Data from 4F4 to 502 (15 bytes)	
_SMS_setLineCounter:	
	;.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	;.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	ld hl, $0002
	add hl, sp
	ld c, (hl)
	di
	ld a, c
	out ($bf), a
	ld a, $8A
	out ($bf), a
	ei
	ret
	
; Data from 503 to 506 (4 bytes)	
_SMS_getVCount:	
	;.db $DB $7E $6F $C9
		in a, (Port_VCounter)		; Port_VCounter = $7E
		ld l, a
		ret
	
; Data from 507 to 50A (4 bytes)	
_SMS_getHCount:	
	;.db $DB $7F $6F $C9
		in a, ($7F)					; stevepro TODO
		ld l, a
		ret