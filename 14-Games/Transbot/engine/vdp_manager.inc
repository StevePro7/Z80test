; VBlank wait and VDP / VRAM helpers ($27A8-$2956)
_LABEL_27A8_:	
		ld a, (_RAM_C00B_)
		or a
		call nz, +
		ld hl, _RAM_C001_
		ld a, (hl)
		or a
		jr z, _LABEL_27A8_
		ld (hl), $00
		ret
	
+:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
-:	
		ld a, (_RAM_C00B_)
		or a
		jr nz, -
		ret
	
; Data from 27D0 to 27D2 (3 bytes)	
_DATA_27D0_:	
	.db $00 $11 $E0
	
_LABEL_27D3_:	
		ld hl, $3800
		ld de, _DATA_27D0_
		ld bc, $0380
		call _LABEL_2885_
		ld hl, $3F00
		ld de, _DATA_27D0_ + 2
		ld bc, $0040
		jp _LABEL_2875_
	
_LABEL_27EB_:	
		ld de, $FFFF
--:	
		ld hl, $39DE
-:	
		add hl, de
		jr c, -
		djnz --
		ret
	
; Data from 27F7 to 27FA (4 bytes)	
_DATA_27F7_:	
	.db $E0 $81 $A0 $81
	
_LABEL_27FB_:	
		ld hl, _DATA_27F7_
		jr +
	
_LABEL_2800_:	
		ld hl, _DATA_27F7_ + 2
+:	
		ld a, (hl)
		out (Port_VDPAddress), a
		inc hl
		ld a, (hl)
		out (Port_VDPAddress), a
		ret
	
_LABEL_280B_:	
		ld a, $92
		out (_PORT_DF_), a
		ld a, $55
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $55
		ld c, $00
		jr z, +
		ld c, $FF
+:	
		ld a, $AA
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $AA
		ld a, $00
		jr z, +
		ld a, $FF
+:	
		or c
		ld (_RAM_C002_), a
		ld a, $07
		out (_PORT_DE_), a
		ret
	
_LABEL_2834_:	
		ld d, $00
		ld l, d
		ld b, $08
-:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		djnz -
		ret
	
_LABEL_2840_:	
		ld a, $10
-:	
		sla e
		rl d
		adc hl, hl
		jr c, +
		sbc hl, bc
		jr nc, ++
		add hl, bc
		dec a
		jr nz, -
		ret
	
+:	
		or a
		sbc hl, bc
++:	
		inc e
		dec a
		jr nz, -
		ret
	
_LABEL_285B_:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, $40
		or h
		out (Port_VDPAddress), a
		ret
	
_LABEL_2864_:	
		call _LABEL_285B_
		push de
		push bc
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		ret
	
_LABEL_2875_:	
		call _LABEL_285B_
		push bc
		push de
-:	
		ld a, (de)
		out (Port_VDPData), a
		dec bc
		ld a, c
		or b
		jr nz, -
		pop de
		pop bc
		ret
	
_LABEL_2885_:	
		call _LABEL_285B_
		ex (sp), hl
		ex (sp), hl
-:	
		ld a, (de)
		out (Port_VDPData), a
		push de
		inc de
		ld a, (de)
		out (Port_VDPData), a
		pop de
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
_LABEL_2899_:	
		push bc
		ld b, $00
		call _LABEL_285B_
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ex (sp), hl
		ex (sp), hl
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		ld bc, $0040
		add hl, bc
		pop bc
		djnz _LABEL_2899_
		ret
	
_LABEL_28B6_:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, $C0
		or h
		out (Port_VDPAddress), a
-:	
		ex (sp), hl
		ex (sp), hl
		ld a, (de)
		out (Port_VDPData), a
		inc de
		djnz -
		ret
	
	; Data from 28C7 to 28E9 (35 bytes)
	.db $32 $73 $C1 $CD $5B $28 $EB $7E $D9 $0E $BE $06 $04 $67 $3A $73
	.db $C1 $1F $54 $38 $02 $16 $00 $ED $51 $10 $F6 $D9 $23 $0B $78 $B1
	.db $20 $E5 $C9
	
_LABEL_28EA_:	
		ld ix, _DATA_4446_
		jr +
	
_LABEL_28F0_:	
		ld ix, _DATA_58F6_
		jr +
	
_LABEL_28F6_:	
		ld ix, _DATA_6455_
		jr +
	
_LABEL_28FC_:	
		ld ix, _DATA_6E4E_
		jr +
	
_LABEL_2902_:	
		ld ix, _DATA_4957_
		ld e, $04
		jr ++
	
_LABEL_290A_:	
		ld ix, _DATA_5116_
		ld e, $04
		jr ++
	
_LABEL_2912_:	
		ld ix, _DATA_3F4F_
		ld e, $04
		jr ++
	
_LABEL_291A_:	
		ld ix, _DATA_430A_
+:	
		ld e, $02
++:	
		ld hl, _RAM_D000_
		ld d, $00
		ld c, e
---:	
		push hl
--:	
		ld a, (ix+0)
		or a
		jr z, ++
		bit 7, a
		jr nz, +
		ld b, a
		inc ix
		ld a, (ix+0)
-:	
		ld (hl), a
		add hl, de
		djnz -
		inc ix
		jr --
	
+:	
		res 7, a
		ld b, a
-:	
		inc ix
		ld a, (ix+0)
		ld (hl), a
		add hl, de
		djnz -
		inc ix
		jr --
	
++:	
		inc ix
		pop hl
		inc hl
		dec c
		jr nz, ---
		ret
	
