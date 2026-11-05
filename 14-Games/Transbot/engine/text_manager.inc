; Text blit helper, HI-SCORE and message screens ($2549-$27A7)
_LABEL_2549_:	
		ld b, (hl)
		inc hl
-:	
		push bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ex de, hl
		call _LABEL_2864_
		ex de, hl
		add hl, bc
		pop bc
		djnz -
		ret
	
_LABEL_255E_:	
		ld a, (_RAM_C008_)
		bit 7, a
		ret z
		bit 6, a
		ret nz
		set 6, a
		ld (_RAM_C008_), a
		call _LABEL_291A_
		ld de, _RAM_D000_
		ld hl, $398E
		ld bc, $0411
		call _LABEL_2899_
		ld hl, _DATA_2584_
		call _LABEL_2549_
		jp _LABEL_2E82_
	
; Data from 2584 to 264A (199 bytes)	
_DATA_2584_:	
	.db $05 $8E $3B $20 $00 $08 $11 $09 $11 $2A $11 $13 $11 $03 $11 $0F
	.db $11 $12 $11 $05 $11 $00 $11 $00 $11 $00 $11 $00 $11 $00 $11 $00
	.db $11 $00 $11 $20 $11 $08 $3C $2E $00 $10 $11 $15 $11 $13 $11 $08
	.db $11 $00 $11 $21 $11 $10 $11 $0C $11 $01 $11 $19 $11 $00 $11 $13
	.db $11 $14 $11 $01 $11 $12 $11 $14 $11 $00 $11 $02 $11 $15 $11 $14
	.db $11 $14 $11 $0F $11 $0E $11 $9E $3C $04 $00 $0F $11 $12 $11 $08
	.db $3D $2E $00 $10 $11 $15 $11 $13 $11 $08 $11 $00 $11 $22 $11 $10
	.db $11 $0C $11 $01 $11 $19 $11 $00 $11 $13 $11 $14 $11 $01 $11 $12
	.db $11 $14 $11 $00 $11 $02 $11 $15 $11 $14 $11 $14 $11 $0F $11 $0E
	.db $11 $86 $3D $32 $00 $00 $11 $00 $11 $00 $11 $00 $11 $00 $11 $00
	.db $11 $00 $11 $1B $11 $00 $11 $1C $11 $1D $11 $1E $11 $1F $11 $00
	.db $11 $21 $11 $29 $11 $28 $11 $26 $11 $00 $11 $00 $11 $00 $11 $00
	.db $11 $00 $11 $00 $11 $00 $11
	
_LABEL_264B_:	
		ld hl, _RAM_C009_
		bit 7, (hl)
		ret z
		bit 6, (hl)
		ret nz
		set 6, (hl)
		ld hl, $0000
		ld de, _DATA_266D_
		ld b, $02
		call _LABEL_28B6_
		ld hl, $3A88
		ld de, _DATA_4352_
		ld bc, $0219
		jp _LABEL_2899_
	
; Data from 266D to 266E (2 bytes)	
_DATA_266D_:	
	.db $00 $0F
	
_LABEL_266F_:	
		ld a, (_RAM_C168_)
		bit 7, a
		ret z
		and $0F
		ld hl, _DATA_267D_
		jp _LABEL_1AE6_
	
; Jump Table from 267D to 2684 (4 entries, indexed by _RAM_C168_)	
_DATA_267D_:	
	.dw _LABEL_2685_ _LABEL_26E1_ _LABEL_26FB_ _LABEL_2715_
	
; 1st entry of Jump Table from 267D (indexed by _RAM_C168_)	
_LABEL_2685_:	
		ld hl, _RAM_C168_
		ld (hl), $00
		ld hl, _DATA_2690_
		jp _LABEL_2549_
	
; Data from 2690 to 26E0 (81 bytes)	
_DATA_2690_:	
	.db $04 $06 $38 $0E $00 $21 $11 $15 $11 $10 $11 $00 $11 $00 $11 $B2
	.db $01 $B2 $01 $26 $38 $18 $00 $10 $11 $0F $11 $17 $11 $05 $11 $12
	.db $11 $00 $11 $B6 $01 $B6 $01 $B6 $01 $B6 $01 $B6 $01 $B6 $01 $56
	.db $38 $02 $00 $01 $11 $66 $38 $18 $00 $01 $11 $12 $11 $0D $11 $00
	.db $11 $00 $11 $00 $11 $B6 $01 $B6 $01 $B6 $01 $B6 $01 $B6 $01 $B6
	.db $01
	
; 2nd entry of Jump Table from 267D (indexed by _RAM_C168_)	
_LABEL_26E1_:	
		ld hl, _RAM_C168_
		ld (hl), $00
		ld hl, _DATA_26EC_
		jp _LABEL_2549_
	
; Data from 26EC to 26FA (15 bytes)	
_DATA_26EC_:	
	.db $01 $06 $38 $0E $00 $21 $11 $15 $11 $10 $11 $00 $11 $00 $11
	
; 3rd entry of Jump Table from 267D (indexed by _RAM_C168_)	
_LABEL_26FB_:	
		ld hl, _RAM_C168_
		ld (hl), $00
		ld hl, _DATA_2706_
		jp _LABEL_2549_
	
; Data from 2706 to 2714 (15 bytes)	
_DATA_2706_:	
	.db $01 $06 $38 $0E $00 $22 $11 $15 $11 $10 $11 $00 $11 $00 $11
	
; 4th entry of Jump Table from 267D (indexed by _RAM_C168_)	
_LABEL_2715_:	
		ld de, _DATA_271B_
		jp +
	
; Data from 271B to 272B (17 bytes)	
_DATA_271B_:	
	.db $98 $39 $07 $14 $11 $08 $11 $05 $11 $00 $11 $05 $11 $0E $11 $04
	.db $11
	
+:	
		ld hl, _RAM_C168_
		bit 6, (hl)
		jr nz, ++
		push hl
		inc hl
		push hl
		dec (hl)
		jr z, +
		pop hl
		pop hl
		ret
	
+:	
		inc hl
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld b, (hl)
		ld hl, $0100
		ex de, hl
		call _LABEL_285B_
-:	
		ex (sp), hl
		ex (sp), hl
		ld a, e
		out (Port_VDPData), a
		ex (sp), hl
		ex (sp), hl
		ld a, d
		out (Port_VDPData), a
		djnz -
		pop de
		pop hl
		res 7, (hl)
		set 5, (hl)
		inc hl
		inc de
		ld (hl), $00
		ld bc, $0004
		ldir
		ret
	
++:	
		inc hl
		xor a
		or (hl)
		jr z, +
		dec (hl)
		ret
	
+:	
		ld (hl), $10
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld a, (_RAM_C16A_)
		cp (hl)
		jr nc, +
		inc hl
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ex de, hl
		add hl, bc
		ld b, $02
		call _LABEL_285B_
-:	
		ex (sp), hl
		ex (sp), hl
		ld a, (de)
		out (Port_VDPData), a
		inc de
		djnz -
		ld a, (_RAM_C16A_)
		inc a
		ld (_RAM_C16A_), a
		ret
	
+:	
		ld a, (hl)
		ld hl, _RAM_C168_
		res 6, (hl)
		inc hl
		ld (hl), $20
		inc hl
		inc hl
		ld (hl), e
		inc hl
		ld (hl), d
		inc hl
		ld (hl), a
		ret
	
