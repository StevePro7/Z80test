.section "SMS Manager" free
UNSAFE_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableY		; SpriteTableY = $C063
		call OUTI64
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableXN	; SpriteTableXN = $C0A3
		jp OUTI128				; $0099
	
UNSAFE_SMS_VRAMmemcpy32:	
	;.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	;.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01
		ld iy, $0002
		add iy, sp
		ld l, (iy + $00)
		ld a, (iy + $01)
		set 6, a
		ld h, a
		rst $08
		ld c, $BE
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp OUTI32				; $0159
	
UNSAFE_SMS_VRAMmemcpy64:	
	;.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	;.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01
		ld iy, $0002
		add iy, sp
		ld l, (iy + $00)
		ld a, (iy + $01)
		set 6, a
		ld h, a
		rst $08
		ld c, $BE
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp OUTI64				; $0119

UNSAFE_SMS_VRAMmemcpy128:	
	;.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	;.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $99 $00
		ld iy, $0002
		add iy, sp
		ld l, (iy + $00)
		ld a, (iy + $01)
		set 6, a
		ld h, a
		rst $08
		ld c, $BE
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp OUTI128				; $0099
	
SMS_init:	
		ld hl, $0000
		push hl
		call SMS_setSpritePaletteColor
		pop af
		ld c, $00
-:	
		ld hl, VDPReg_init	; VDPReg_init = $1BA3
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
		ld hl, VDPType	; VDPType = $C05E
		ld (hl), $80
		ret
	
+:	
		ld hl, VDPType	; VDPType = $C05E
		ld (hl), $40
		ret

VDPReg_init:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF

SMS_VDPType:	
	;.db $FD $21 $5E $C0 $FD $6E $00 $C9
		ld iy, VDPType	; VDPType = $C05E
		ld l, (iy + $00)
		ret
	
SMS_VDPturnOnFeature:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C1AA
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
	
SMS_VDPturnOffFeature:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C1AA
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

SMS_setBGScrollX:	
	;.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9
		di
		ld a, l
		out ($bf), a
		ld a, $88
		out ($bf), a
		ei
		ret
	
SMS_setBGScrollY:	
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ei
		ret

SMS_setBackdropColor:	
	;.db $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
		di
		ld a, l
		out ($bf), a
		ld a, $87
		out ($bf), a
		ei
		ret
	
SMS_useFirstHalfTilesforSprites:	
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
	
SMS_setSpriteMode:	
		ld c, l
		bit 0, c
		jr z, +
		push bc
		ld hl, $0102
		call _SMS_VDPturnOnFeature
		pop bc
		ld hl, spritesHeight	; spritesHeight = $C1AC
		ld (hl), $10
		jr ++
	
+:	
		push bc
		ld hl, $0102
		call _SMS_VDPturnOffFeature
		pop bc
		ld hl, spritesHeight	; spritesHeight = $C1AC
		ld (hl), $08
++:	
		bit 1, c
		jr z, +
		ld hl, $0101
		call _SMS_VDPturnOnFeature
		ld hl, spritesWidth	; spritesWidth = $C1AD
		ld (hl), $10
		ld iy, spritesHeight	; spritesHeight = $C1AC
		sla (iy+0)
		ret
	
+:	
		ld hl, $0101
		call _SMS_VDPturnOffFeature
		ld hl, spritesWidth	; spritesWidth = $C1AD
		ld (hl), $08
		ret
	
SMS_setBGPaletteColor:	
	;.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	;.db $7E $D3 $BE $C9
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, Lmain.main$global_pause$1$55		; Lmain.main$global_pause$1$55 = $c000
		add hl, bc
		rst $08
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out ($be), a
		ret
	
SMS_setSpritePaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, PSGChan1Volume	; PSGChan1Volume = $C010
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, _SMS_crt0_RST08 - 3	; _SMS_crt0_RST08 - 3 = $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
SMS_loadBGPalette:	
		ld de, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
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
	
SMS_loadSpritePalette:	
		ld de, PSGChan1Volume	; PSGChan1Volume = $C010
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

SMS_setColor:	
	;.db $7D $D3 $BE $C9
		ld a, l
		out ($be), a
		ret
	
SMS_initSprites:	
		ld hl, SpriteNextFree	; SpriteNextFree = $C123
		ld (hl), $00
		ret

_SMS_addSprite:	
	;.db $3A $23 $C1 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	;.db $D6 $D1 $28 $3E $3E $63 $21 $23 $C1 $86 $4F $3E $C0 $CE $00 $47
	;.db $FD $5E $00 $1D $7B $02 $3A $23 $C1 $87 $4F $21 $A3 $C0 $06 $00
	;.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	;.db $FD $39 $FD $7E $00 $77 $FD $21 $23 $C1 $FD $4E $00 $FD $34 $00
	;.db $69 $C9 $2E $FF $C9
		ld a, (SpriteNextFree)			; SpriteNextFree = $C123
		sub $40
		jr nc, $4B
		ld iy, $0003
		add iy, sp
		ld a, (iy + $00)

		sub	$D1
		jr z, $3E
		ld a, $63
		ld hl, SpriteNextFree			; SpriteNextFree = $C123
		add a, (hl)
		ld c, a
		ld a, $C0
		adc a, $00
		ld b, a

		ld e, (iy + $00)
		dec e
		ld a, e
		ld (bc), a
		ld a, (SpriteNextFree)			; SpriteNextFree = $C123
		add a, a
		ld c, a
		ld hl, SpriteTableXN			; SpriteTableXN = $C0A3
		ld b, $00

		add hl, bc
		ld iy, $0002
		add iy, sp
		ld a, (iy + $00)
		ld (hl), a
		inc hl
		ld iy, $0004

		add iy, sp
		ld a, (iy + $00)
		ld (hl), a
		ld iy, SpriteNextFree			; SpriteNextFree = $C123
		ld c, (iy + $00)
		inc (iy + $00)

		ld l, c
		ret
		ld l, $FF
		ret
	
_SMS_finalizeSprites:	
		ld a, (SpriteNextFree)	; SpriteNextFree = $C123
		sub $40
		ret nc
		ld bc, SpriteTableY	; SpriteTableY = $C063
		ld hl, (SpriteNextFree)	; SpriteNextFree = $C123
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, SpriteTableY	; SpriteTableY = $C063
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
		ld bc, SpriteTableXN	; SpriteTableXN = $C0A3
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
		ld hl, VDPBlank	; VDPBlank = $C05B
		ld (hl), $00
-:	
		ld hl, VDPBlank	; VDPBlank = $C05B
		bit 0, (hl)
		jr z, -
		ret
	
_SMS_getKeysStatus:	
		ld hl, (KeysStatus)	; KeysStatus = $C05F
		ret

_SMS_getKeysPressed:	
	;.db $FD $21 $61 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	;.db $5F $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9
		ld iy, PreviousKeysStatus		; PreviousKeysStatus = $C061
		ld a, (iy + $00)
		cpl
		ld c, a
		ld a, (iy + $01)
		cpl
		ld b, a
		ld iy, KeysStatus				; KeysStatus = $C05F
		ld a, (iy + $00)
		and c
		ld l, a
		ld a, (iy + $01)
		and b
		ld h, a
		ret

_SMS_getKeysHeld:	
	;.db $3A $5F $C0 $FD $21 $61 $C0 $FD $A6 $00 $6F $3A $60 $C0 $FD $21
	;.db $61 $C0 $FD $A6 $01 $67 $C9
		ld a, (KeysStatus)				; KeysStatus = $C05F
		ld iy, PreviousKeysStatus		; PreviousKeysStatus = $C061
		and (iy + $00)
		ld l, a
		ld a, (KeysStatus + 1)			; KeysStatus = $C05F
		ld iy, PreviousKeysStatus		; PreviousKeysStatus = $C061
		and (iy + $01)
		ld h, a
		ret

_SMS_getKeysReleased:	
	;.db $FD $21 $5F $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $79 $FD
	;.db $21 $61 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67 $C9
		ld iy, KeysStatus				; KeysStatus = $C05F
		ld a, (iy + $00)
		cpl
		ld c, a
		ld a, (iy + $01)
		cpl
		ld b, a
		ld a, c
		ld iy, PreviousKeysStatus		; PreviousKeysStatus = $C061
		and (iy + $00)
		ld l, a
		ld a, b
		and (iy + $01)
		ld h, a
		ret
	
_SMS_queryPauseRequested:	
		ld iy, PauseRequested	; PauseRequested = $C05D
		ld l, (iy+0)
		ret
	
_SMS_resetPauseRequest:	
		ld hl, PauseRequested	; PauseRequested = $C05D
		ld (hl), $00
		ret

_SMS_setLineInterruptHandler:	
	;.db $21 $02 $00 $39 $7E $32 $24 $C1 $21 $03 $00 $39 $7E $32 $25 $C1
	;.db $C9
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (SMS_theLineInterruptHandler), a		; SMS_theLineInterruptHandler = $C124
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		ld (SMS_theLineInterruptHandler + 1), a	; SMS_theLineInterruptHandler = $C124
		ret

_SMS_setLineCounter:	
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

_SMS_getVCount:	
	;.db $DB $7E $6F $C9
		in a, ($7E)
		ld l, a
		ret

_SMS_getHCount:	
	;.db $DB $7F $6F $C9
		in a, ($7F)
		ld l, a
		ret

SMS_isr:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (SMS_VDPFlags), a	; SMS_VDPFlags = $C05C
		rlca
		jr nc, +
		ld hl, VDPBlank	; VDPBlank = $C05B
		ld (hl), $01
		ld hl, (KeysStatus)	; KeysStatus = $C05F
		ld (PreviousKeysStatus), hl	; PreviousKeysStatus = $C061
		in a, (Port_IOPort1)
		cpl
		ld hl, KeysStatus	; KeysStatus = $C05F
		ld (hl), a
		in a, (Port_IOPort2)
		cpl
		inc hl
		ld (hl), a
		jr ++
	
+:	
		push bc
		push de
		push iy
		ld hl, (SMS_theLineInterruptHandler)	; SMS_theLineInterruptHandler = $C124
		call ___sdcc_call_hl
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
SMS_nmi_isr:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, PauseRequested	; PauseRequested = $C05D
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn

__moduchar:	
	;.db $21 $03 $00 $39 $5E $2B $6E $CD $AE $1A $EB $C9
		ld hl, $0003
		add hl, sp
		ld e, (hl)
		dec hl
		ld l, (hl)
		call divu8			; divu8 = $1AAE
		ex de, hl
		ret

__moduint:	
	;.db $F1 $E1 $D1 $D5 $E5 $F5 $CD $B1 $1A $EB $C9
		pop af
		pop hl
		pop de
		push de
		push hl
		push af
		call divu16			; divu16 = $1AB1
		ex de, hl
		ret

_SMS_loadSTMcompressedTileMapAre:	
	; .db $DD $E5 $DD $21 $00 $00 $DD $39 $21 $F0 $FF $39 $F9 $DD $36 $FE
	; .db $00 $DD $36 $FF $00 $DD $36 $F3 $00 $DD $36 $F4 $00 $DD $6E $05
	; .db $26 $00 $29 $29 $29 $29 $29 $29 $DD $75 $FC $7C $F6 $78 $DD $77
	; .db $FD $DD $7E $04 $DD $77 $FA $DD $36 $FB $00 $DD $CB $FA $26 $DD
	; .db $CB $FB $16 $DD $7E $FC $DD $B6 $FA $5F $DD $7E $FD $DD $B6 $FB
	; .db $57 $DD $7E $08 $DD $77 $FA $DD $77 $F1 $DD $36 $F0 $00 $6B $62
	; .db $CF $DD $6E $06 $DD $66 $07 $7E $DD $77 $F2 $23 $DD $75 $06 $DD
	; .db $74 $07 $DD $7E $06 $DD $77 $FC $DD $7E $07 $DD $77 $FD $DD $7E
	; .db $F2 $E6 $02 $DD $77 $F9 $DD $7E $F2 $0F $0F $E6 $3F $DD $77 $F8
	; .db $DD $CB $F2 $46 $CA $78 $1F $DD $36 $F6 $00 $DD $7E $FF $DD $77
	; .db $F7 $DD $4E $FC $DD $46 $FD $03 $DD $6E $FC $DD $66 $FD $6E $DD
	; .db $7E $F8 $C6 $02 $DD $77 $F5 $26 $00 $7D $DD $B6 $F6 $6F $7C $DD
	; .db $B6 $F7 $67 $DD $7E $F9 $B7 $28 $3C $DD $71 $06 $DD $70 $07 $4D
	; .db $44 $DD $6E $F5 $7D $B7 $CA $F1 $1F $E5 $69 $60 $DF $E1 $DD $35
	; .db $F1 $DD $7E $F1 $B7 $20 $15 $7B $C6 $40 $5F $7A $CE $00 $57 $E5
	; .db $C5 $6B $62 $CF $C1 $E1 $DD $7E $FA $DD $77 $F1 $3E $01 $95 $30
	; .db $01 $03 $2D $18 $CF $DD $71 $06 $DD $70 $07 $DD $75 $FE $DD $74
	; .db $FF $DD $46 $F5 $78 $B7 $CA $01 $20 $DD $6E $FE $DD $66 $FF $DF
	; .db $DD $35 $F1 $DD $7E $F1 $B7 $20 $0D $21 $40 $00 $19 $5D $54 $CF
	; .db $DD $7E $FA $DD $77 $F1 $05 $18 $DB $DD $7E $F9 $B7 $28 $29 $DD
	; .db $CB $F2 $56 $28 $10 $DD $7E $FE $DD $77 $F3 $DD $7E $FF $DD $77
	; .db $F4 $DD $36 $F0 $01 $DD $4E $F2 $CB $39 $CB $39 $CB $39 $DD $71
	; .db $FF $DD $36 $FE $00 $C3 $A0 $1E $DD $6E $F8 $7D $B7 $28 $6D $DD
	; .db $7E $FF $DD $77 $F6 $DD $36 $F7 $00 $DD $4E $FC $DD $46 $FD $DD
	; .db $75 $F5 $DD $7E $F5 $B7 $28 $34 $0A $D3 $BE $03 $00 $00 $00 $DD
	; .db $7E $F6 $D3 $BE $DD $35 $F1 $DD $7E $F1 $B7 $20 $10 $21 $40 $00
	; .db $19 $EB $C5 $6B $62 $CF $C1 $DD $7E $FA $DD $77 $F1 $DD $35 $F5
	; .db $18 $D0 $DD $71 $FE $DD $70 $FF $18 $08 $18 $06 $DD $71 $06 $DD
	; .db $70 $07 $DD $CB $F0 $46 $CA $A0 $1E $DD $7E $F3 $DD $77 $FE $DD
	; .db $7E $F4 $DD $77 $FF $DD $36 $F0 $00 $C3 $A0 $1E $DD $F9 $DD $E1
	; .db $C9
		push ix
		ld ix, $0000
		add ix, sp
		ld hl, $FFF0
		add hl, sp
		ld sp, hl
		ld (ix-2), $00
		ld (ix-1), $00
		ld (ix-13), $00
		ld (ix-12), $00
		ld l, (ix+5)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld (ix-4), l
		ld a, h
		or $78
		ld (ix-3), a
		ld a, (ix+4)
		ld (ix-6), a
		ld (ix-5), $00
		sla (ix-6)
		rl (ix-5)
		ld a, (ix-4)
		or (ix-6)
		ld e, a
		ld a, (ix-3)
		or (ix-5)
		ld d, a
		ld a, (ix+8)
		ld (ix-6), a
		ld (ix-15), a
		ld (ix-16), $00
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
_LABEL_1EA0_:	
		ld l, (ix+6)
		ld h, (ix+7)
		ld a, (hl)
		ld (ix-14), a
		inc hl
		ld (ix+6), l
		ld (ix+7), h
		ld a, (ix+6)
		ld (ix-4), a
		ld a, (ix+7)
		ld (ix-3), a
		ld a, (ix-14)
		and $02
		ld (ix-7), a
		ld a, (ix-14)
		rrca
		rrca
		and $3F
		ld (ix-8), a
		bit 0, (ix-14)
		jp z, _LABEL_1F78_
		ld (ix-10), $00
		ld a, (ix-1)
		ld (ix-9), a
		ld c, (ix-4)
		ld b, (ix-3)
		inc bc
		ld l, (ix-4)
		ld h, (ix-3)
		ld l, (hl)
		ld a, (ix-8)
		add a, $02
		ld (ix-11), a
		ld h, $00
		ld a, l
		or (ix-10)
		ld l, a
		ld a, h
		or (ix-9)
		ld h, a
		ld a, (ix-7)
		or a
		jr z, ++
		ld (ix+6), c
		ld (ix+7), b
		ld c, l
		ld b, h
		ld l, (ix-11)
-:	
		ld a, l
		or a
		jp z, _LABEL_1FF1_
		push hl
		ld l, c
		ld h, b
		rst $18	; _LABEL_18_
		pop hl
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld a, e
		add a, $40
		ld e, a
		ld a, d
		adc a, $00
		ld d, a
		push hl
		push bc
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
		pop bc
		pop hl
		ld a, (ix-6)
		ld (ix-15), a
+:	
		ld a, $01
		sub l
		jr nc, +
		inc bc
+:	
		dec l
		jr -
	
++:	
		ld (ix+6), c
		ld (ix+7), b
		ld (ix-2), l
		ld (ix-1), h
		ld b, (ix-11)
-:	
		ld a, b
		or a
		jp z, _LABEL_2001_
		ld l, (ix-2)
		ld h, (ix-1)
		rst $18	; _LABEL_18_
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld hl, $0040
		add hl, de
		ld e, l
		ld d, h
		rst $08	; _LABEL_8_
		ld a, (ix-6)
		ld (ix-15), a
+:	
		dec b
		jr -
	
_LABEL_1F78_:	
		ld a, (ix-7)
		or a
		jr z, ++
		bit 2, (ix-14)
		jr z, +
		ld a, (ix-2)
		ld (ix-13), a
		ld a, (ix-1)
		ld (ix-12), a
		ld (ix-16), $01
+:	
		ld c, (ix-14)
		srl c
		srl c
		srl c
		ld (ix-1), c
		ld (ix-2), $00
		jp _LABEL_1EA0_
	
++:	
		ld l, (ix-8)
		ld a, l
		or a
		jr z, _LABEL_201B_
		ld a, (ix-1)
		ld (ix-10), a
		ld (ix-9), $00
		ld c, (ix-4)
		ld b, (ix-3)
		ld (ix-11), l
-:	
		ld a, (ix-11)
		or a
		jr z, ++
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		nop
		nop
		nop
		ld a, (ix-10)
		out (Port_VDPData), a
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld hl, $0040
		add hl, de
		ex de, hl
		push bc
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
		pop bc
		ld a, (ix-6)
		ld (ix-15), a
+:	
		dec (ix-11)
		jr -
	
_LABEL_1FF1_:	
		ld (ix-2), c
		ld (ix-1), b
		jr _LABEL_2001_
	
	; Data from 1FF9 to 1FFA (2 bytes)
	.db $18 $06
	
++:	
		ld (ix+6), c
		ld (ix+7), b
_LABEL_2001_:	
		bit 0, (ix-16)
		jp z, _LABEL_1EA0_
		ld a, (ix-13)
		ld (ix-2), a
		ld a, (ix-12)
		ld (ix-1), a
		ld (ix-16), $00
		jp _LABEL_1EA0_
	
_LABEL_201B_:	
		ld sp, ix
		pop ix
		ret
	
___sdcc_call_hl:	
		jp (hl)
	
_SMS_loadPSGaidencompressedTiles:	
		ld iy, _SMS_crt0_RST08 - 2	; _SMS_crt0_RST08 - 2 = $0004
		add iy, sp
		ld l, (iy+0)
		ld h, (iy+1)
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		set 6, h
		rst $08	; _LABEL_8_
		pop bc
		pop ix
		push ix
		push bc
		ld c, (ix+0)
		inc ix
		ld b, (ix+0)
		inc ix
_LABEL_2045_:	
		push bc
		ld b, $04
		ld de, decompBuffer	; decompBuffer = $C126
		ld c, (ix+0)
		inc ix
_LABEL_2050_:	
		rlc c
		jr nc, _LABEL_2097_
		rlc c
		jr c, ++
		ld a, (ix+0)
		inc ix
		ex de, hl
		ld d, a
		and $03
		add a, a
		add a, a
		add a, a
		ld e, a
		ld a, d
		ld d, $00
		ld iy, decompBuffer	; decompBuffer = $C126
		add iy, de
		ex de, hl
		cp $03
		jr c, _LABEL_20B1_
		cp $10
		jr c, +
		cp $13
		jr c, ++++
		cp $20
		jr c, +
		cp $23
		jr c, +++++
		cp $40
		jr c, +
		cp $43
		jr c, ++++++
+:	
		ld h, a
		ld l, (ix+0)
		inc ix
		jr +++
	
++:	
		ld h, $00
		jr +++
	
_LABEL_2097_:	
		rlc c
		sbc a, a
		ld l, a
		ld h, $FF
+++:	
		push bc
		ld b, $08
-:	
		ld a, l
		rlc h
		jr c, +
		ld a, (ix+0)
		inc ix
+:	
		ld (de), a
		inc de
		djnz -
		pop bc
		jr ++++++++
	
_LABEL_20B1_:	
		ld hl, $FF00
		jr +++++++
	
++++:	
		ld hl, $FFFF
		jr +++++++
	
+++++:	
		ld h, (ix+0)
		ld l, $00
		inc ix
		jr +++++++
	
++++++:	
		ld h, (ix+0)
		ld l, $FF
		inc ix
+++++++:	
		push bc
		ld b, $08
-:	
		ld a, (iy+0)
		inc iy
		xor l
		rlc h
		jr c, +
		ld a, (ix+0)
		inc ix
+:	
		ld (de), a
		inc de
		djnz -
		pop bc
++++++++:	
		dec b
		jp nz, _LABEL_2050_
		ld de, _SMS_crt0_RST08 + 2	; _SMS_crt0_RST08 + 2 = $0008
		ld c, e
		ld hl, decompBuffer	; decompBuffer = $C126
--:	
		ld b, $04
		push hl
-:	
		ld a, (hl)
		out (Port_VDPData), a
		add hl, de
		djnz -
		pop hl
		inc hl
		dec c
		jr nz, --
		pop bc
		dec bc
		ld a, b
		or c
		jp nz, _LABEL_2045_
		ret
		
.ends