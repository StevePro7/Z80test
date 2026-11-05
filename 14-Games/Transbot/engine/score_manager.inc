; Score and HUD digits ($2D01-$2EAB)
_LABEL_2D01_:	
		push de
		push hl
		push iy
		pop hl
		bit 7, (hl)
		jr z, ++
		ld a, (hl)
		cp $88
		jr z, +
		inc hl
		ld a, (hl)
		jr ++
	
+:	
		push de
		ld de, $2C0B
		or a
		push hl
		sbc hl, de
		pop hl
		inc hl
		jr c, +
		ld hl, _DATA_2B49_
+:	
		pop de
++:	
		ld a, (hl)
		push hl
		pop iy
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		pop hl
		push bc
		push hl
		ld b, (ix+0)
		ld c, $08
		call _LABEL_2899_
		pop hl
		ld de, $0010
		add hl, de
		pop bc
		pop de
		inc iy
		djnz _LABEL_2D01_
		ld a, (iy+0)
		ld e, (ix+1)
		ld d, (ix+2)
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
_LABEL_2D57_:	
		ld b, (ix+0)
		ld e, (ix+3)
		ld d, (ix+4)
-:	
		ld a, (hl)
		ld (de), a
		inc hl
		inc de
		ld a, (hl)
		ld (de), a
		inc de
		push de
		ld de, _DATA_F_
		add hl, de
		pop de
		djnz -
		ret
	
_LABEL_2D70_:	
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_2E98_
		add hl, de
		ld de, _RAM_C164_
		xor a
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		inc hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		ld a, (de)
		adc a, $00
		daa
		ld (de), a
		dec de
		ld a, (de)
		adc a, $00
		daa
		and $0F
		ld (de), a
		ld a, (_RAM_C000_)
		bit 3, a
		ret nz
		ex de, hl
		ld de, _RAM_C00D_
		push hl
		push de
		ld b, $04
		call _LABEL_2DF1_
		pop de
		pop hl
		jr nc, +
		ld bc, $0004
		ldir
+:	
		ld de, _RAM_C165_
		ld hl, $C161
		ld b, $03
		call _LABEL_2DF1_
		ret nc
		xor a
		ld hl, _RAM_C167_
		ld a, $80
		adc a, (hl)
		daa
		ld (hl), a
		dec hl
		ld a, $00
		adc a, (hl)
		daa
		ld (hl), a
		dec hl
		ld a, $00
		adc a, (hl)
		daa
		ld (hl), a
		ld hl, _RAM_C15D_
		inc (hl)
		ld hl, _RAM_C13F_
		ld (hl), $01
		ld a, $93
		ld (_RAM_DE00_), a
		ret
	
_LABEL_2DDE_:	
		ld a, (iy+31)
		call _LABEL_2D70_
		ld hl, _RAM_C13E_
		set 0, (hl)
		ld hl, (_RAM_C15F_)
		inc hl
		ld (_RAM_C15F_), hl
		ret
	
_LABEL_2DF1_:	
		ld a, (de)
		cp (hl)
		ret c
		jr z, +
		ret nc
+:	
		inc hl
		inc de
		djnz _LABEL_2DF1_
		scf
		ret
	
_LABEL_2DFD_:	
		ld a, (_RAM_C13E_)
		or a
		ret z
		xor a
		ld (_RAM_C13E_), a
		ld de, _RAM_C161_
		ld hl, $3842
		ld b, $04
_LABEL_2E0E_:	
		call _LABEL_285B_
		ld hl, $0020
-:	
		ld a, (de)
		and $0F
		jr z, +
		ld h, l
+:	
		add a, h
		call +++
		dec b
		jr z, ++
		inc de
		ld a, (de)
		and $F0
		jr z, +
		ld h, l
+:	
		rrca
		rrca
		rrca
		rrca
		add a, h
		call +++
		jp -
	
++:	
		ld a, $20
+++:	
		out (Port_VDPData), a
		push af
		pop af
		ld a, $11
		out (Port_VDPData), a
		ret
	
_LABEL_2E3E_:	
		ld hl, _RAM_C13F_
		ld a, (hl)
		or a
		ret z
		ld (hl), $00
		ld de, _RAM_C15D_
		ld a, (de)
		or a
		jr nz, +
		ld hl, _DATA_2E8D_
		jp _LABEL_2549_
	
+:	
		ld hl, $3810
		ld b, $AE
		call _LABEL_285B_
		ld a, (de)
		dec a
		or a
		jr nz, +
		ld b, a
		ld a, $09
+:	
		cp $0A
		jr c, +
		ld a, $09
+:	
		ld d, $09
		ld e, a
-:	
		ld a, b
		out (Port_VDPData), a
		push af
		pop af
		ld a, $01
		out (Port_VDPData), a
		dec e
		dec d
		ld a, e
		or a
		jr nz, -
		ld a, d
		or a
		ret z
		ld b, e
		ld e, d
		jr -
	
_LABEL_2E82_:	
		ld hl, $3BA2
		ld de, _RAM_C00D_
		ld b, $04
		jp _LABEL_2E0E_
	
; Data from 2E8D to 2E97 (11 bytes)	
_DATA_2E8D_:	
	.db $01 $10 $38 $06 $00 $0F $11 $15 $11 $14 $11
	
; Data from 2E98 to 2EAB (20 bytes)	
_DATA_2E98_:	
	.db $08 $00 $10 $00 $12 $00 $18 $00 $20 $00 $24 $00 $40 $00 $50 $00
	.db $00 $01 $00 $20
	
