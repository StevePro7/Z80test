; PSG sound engine ($303A-$349A)
_LABEL_303A_:	
		call +++
		call +
		ld ix, _RAM_DE02_
		ld b, $06
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_31B9_
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
+:	
		ld b, $03
		ld hl, $DE42
		ld de, $0020
-:	
		add hl, de
		ld c, (hl)
		push hl
		push de
		or a
		ld de, $0060
		sbc hl, de
		bit 7, c
		jp nz, +
		res 2, (hl)
		jr ++
	
+:	
		set 2, (hl)
++:	
		pop de
		pop hl
		djnz -
		ret
	
+++:	
		ld a, (_RAM_DE00_)
		bit 7, a
		jp z, _LABEL_3456_
		cp $97
		jp nc, _LABEL_3456_
		sub $80
		ret z
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_30A2_ - 2
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld de, $002D
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_DE01_)
		jp (hl)
	
	; Data from 30A0 to 30A1 (2 bytes)
	.db $B3 $31
	
; Pointer Table from 30A2 to 30B5 (10 entries, indexed by _RAM_DE00_)	
_DATA_30A2_:	
	.dw _DATA_3531_ _DATA_35B5_ _DATA_35EC_ _DATA_3762_ _DATA_3879_ _DATA_38AB_ _DATA_38D3_ _DATA_38FD_
	.dw _DATA_390F_ _DATA_3939_
	
	; Data from 30B6 to 30CD (24 bytes)
	.db $B3 $31 $6A $39 $7F $39 $94 $39 $C7 $39 $B3 $31 $B3 $31 $FC $39
	.db $35 $3A $47 $3A $55 $3A $8C $3A
	
; Jump Table from 30CE to 30FB (23 entries, indexed by _RAM_DE00_)	
_DATA_30CE_:	
	.dw _LABEL_31B3_ _LABEL_30FC_ _LABEL_30FC_ _LABEL_30FC_ _LABEL_30FC_ _LABEL_3123_ _LABEL_3123_ _LABEL_3123_
	.dw _LABEL_313F_ _LABEL_3123_ _LABEL_3123_ _LABEL_31B3_ _LABEL_3105_ _LABEL_3133_ _LABEL_314D_ _LABEL_3160_
	.dw _LABEL_31B3_ _LABEL_31B3_ _LABEL_3173_ _LABEL_3186_ _LABEL_311D_ _LABEL_30FC_ _LABEL_3111_
	
; 2nd entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_30FC_:	
		call _LABEL_3456_
		ld de, _RAM_DE02_
		jp _LABEL_318D_
	
; 13th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3105_:	
		bit 0, a
		jp nz, _LABEL_31B3_
		set 1, a
		ld (_RAM_DE01_), a
		jr _LABEL_312D_
	
; 23rd entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3111_:	
		and $03
		jp nz, _LABEL_31B3_
		set 2, a
		ld (_RAM_DE01_), a
		jr _LABEL_312D_
	
; 21st entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_311D_:	
		ld de, _RAM_DE02_
		jp _LABEL_318D_
	
; 6th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3123_:	
		and $0F
		jp nz, _LABEL_31B3_
		set 4, a
		ld (_RAM_DE01_), a
_LABEL_312D_:	
		ld de, _RAM_DE82_
		jp _LABEL_318D_
	
; 14th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3133_:	
		and $03
		jp nz, _LABEL_31B3_
		set 2, a
		ld (_RAM_DE01_), a
		jr _LABEL_312D_
	
; 9th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_313F_:	
		and $1F
		jp nz, _LABEL_31B3_
		call _LABEL_3474_
		ld de, _RAM_DEA2_
		jp _LABEL_318D_
	
; 15th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_314D_:	
		bit 0, a
		jp nz, _LABEL_31B3_
		set 1, a
		ld (_RAM_DE01_), a
		call _LABEL_3474_
		ld de, _RAM_DEA2_
		jp _LABEL_318D_
	
; 16th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3160_:	
		and $0F
		jp nz, _LABEL_31B3_
		set 4, a
		ld (_RAM_DE01_), a
		call _LABEL_3474_
		ld de, _RAM_DE82_
		jp _LABEL_318D_
	
; 19th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3173_:	
		and $03
		jp nz, _LABEL_31B3_
		set 2, a
		ld (_RAM_DE01_), a
		call _LABEL_3474_
-:	
		ld de, _RAM_DE62_
		jp _LABEL_318D_
	
; 20th entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_3186_:	
		set 0, a
		ld (_RAM_DE01_), a
		jr -
	
_LABEL_318D_:	
		ld h, b
		ld l, c
		ld a, (_RAM_DE00_)
		ld b, (hl)
		inc hl
-:	
		push bc
		ld bc, $0009
		ldir
		ld a, $20
		ld (de), a
		inc de
		ld a, $01
		ld (de), a
		inc de
		xor a
		ld (de), a
		inc de
		ld (de), a
		inc de
		ld (de), a
		push hl
		ld hl, $0012
		add hl, de
		ex de, hl
		pop hl
		inc de
		pop bc
		djnz -
; 1st entry of Jump Table from 30CE (indexed by _RAM_DE00_)	
_LABEL_31B3_:	
		ld a, $80
		ld (_RAM_DE00_), a
		ret
	
_LABEL_31B9_:	
		ld e, (ix+12)
		ld d, (ix+13)
		inc de
		ld (ix+12), e
		ld (ix+13), d
		ld l, (ix+10)
		ld h, (ix+11)
		or a
		sbc hl, de
		call z, _LABEL_32CE_
		ld e, (ix+16)
		ld d, (ix+17)
		ld a, e
		or d
		jr nz, +
		ld (ix+22), $0F
		jp _LABEL_3279_
	
+:	
		bit 5, (ix+0)
		jr nz, +
		ld (ix+18), e
		ld (ix+19), d
		jp _LABEL_3232_
	
_LABEL_31F2_:	
		dec a
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ret
	
+:	
		push de
		ld l, (ix+20)
		ld h, (ix+21)
		or a
		sbc hl, de
		push af
		ld a, l
		jp p, +
		neg
+:	
		ld h, a
		ld e, (ix+12)
		call _LABEL_2834_
		ld e, (ix+10)
		call _LABEL_3488_
		ld e, a
		ld d, $00
		pop af
		ld a, e
		jp p, +
		neg
		jr z, +
		dec d
		ld e, a
+:	
		pop hl
		add hl, de
		ex de, hl
		ld (ix+18), e
		ld (ix+19), d
_LABEL_3232_:	
		ld a, (ix+7)
		or a
		jr nz, +
		ld a, (ix+8)
		cpl
		and $0F
		ld (ix+22), a
		jr ++
	
+:	
		res 7, a
		ld hl, _DATA_3AAE_
		call _LABEL_31F2_
		call _LABEL_3297_
++:	
		bit 6, (ix+0)
		jr nz, _LABEL_3279_
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_328C_
		add hl, bc
		ld c, (hl)
		ld a, (ix+18)
		and $0F
		or c
		call _LABEL_344E_
		ld a, (ix+18)
		and $F0
		or (ix+19)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_344E_
_LABEL_3279_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_3290_
		add hl, bc
		ld a, (hl)
		or (ix+22)
		jp _LABEL_344E_
	
; Data from 328C to 328F (4 bytes)	
_DATA_328C_:	
	.db $80 $A0 $C0 $C0
	
; Data from 3290 to 3293 (4 bytes)	
_DATA_3290_:	
	.db $90 $B0 $D0 $F0
	
-:	
		ld (ix+14), a
_LABEL_3297_:	
		push hl
		ld a, (ix+14)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		pop hl
		jr c, ++
		rrca
		rrca
		rrca
		rrca
		or a
		jr z, -
		cp $10
		jr nz, +
		dec (ix+14)
		jr _LABEL_3297_
	
+:	
		cp $20
		jr z, +++
++:	
		inc (ix+14)
		or $F0
		add a, (ix+8)
		inc a
		jr c, ++++
+++:	
		xor a
++++:	
		cpl
		and $0F
		ld (ix+22), a
		ret
	
_LABEL_32CE_:	
		ld e, (ix+3)
		ld d, (ix+4)
_LABEL_32D4_:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, _LABEL_3362_
		bit 3, (ix+0)
		jr nz, _LABEL_3341_
		or a
		jp p, ++
		sub $80
		jr z, +
		add a, (ix+5)
+:	
		ld hl, _DATA_349F_
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		ld (ix+16), a
		inc hl
		ld a, (hl)
		ld (ix+17), a
		bit 5, (ix+0)
		jr z, _LABEL_335B_
		ld a, (de)
		inc de
		sub $80
		add a, (ix+5)
		ld hl, _DATA_349F_
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		ld (ix+20), a
		inc hl
		ld a, (hl)
		ld (ix+21), a
--:	
		ld a, (de)
_LABEL_331C_:	
		inc de
++:	
		push de
		ld h, a
		ld e, (ix+2)
		call _LABEL_2834_
		pop de
		ld (ix+10), l
		ld (ix+11), h
-:	
		xor a
		ld (ix+14), a
		ld (ix+15), a
		ld (ix+3), e
		ld (ix+4), d
		xor a
		ld (ix+12), a
		ld (ix+13), a
		ret
	
_LABEL_3341_:	
		ld (ix+17), a
		ld a, (de)
		inc de
		ld (ix+16), a
		bit 5, (ix+0)
		jr z, --
		ld a, (de)
		inc de
		ld (ix+21), a
		ld a, (de)
		inc de
		ld (ix+20), a
		jr --
	
_LABEL_335B_:	
		ld a, (de)
		or a
		jp p, _LABEL_331C_
		jr -
	
_LABEL_3362_:	
		ld hl, +	; Overriding return address
		push hl
		and $1F
		ld hl, _DATA_3379_
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		inc de
		jp _LABEL_32D4_
	
; Jump Table from 3379 to 3396 (15 entries, indexed by unknown)	
_DATA_3379_:	
	.dw _LABEL_339F_ _LABEL_33A4_ _LABEL_33EB_ _LABEL_33A9_ _LABEL_33C0_ _LABEL_33C5_ _LABEL_33CB_ _LABEL_33D1_
	.dw _LABEL_33D7_ _LABEL_33DD_ _LABEL_33F9_ _LABEL_3414_ _LABEL_3427_ _LABEL_3397_ _LABEL_33E3_
	
; 14th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_3397_:	
		ld a, (de)
		add a, (ix+5)
		ld (ix+5), a
		ret
	
; 1st entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_339F_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
; 2nd entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33A4_:	
		ld a, (de)
		ld (ix+8), a
		ret
	
; 4th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33A9_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_344E_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 5th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33C0_:	
		ld a, (de)
		ld (ix+7), a
		ret
	
; 6th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33C5_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 7th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33CB_:	
		set 5, (ix+0)
		dec de
		ret
	
; 8th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33D1_:	
		res 5, (ix+0)
		dec de
		ret
	
; 9th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33D7_:	
		set 3, (ix+0)
		dec de
		ret
	
; 10th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33DD_:	
		res 3, (ix+0)
		dec de
		ret
	
; 15th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33E3_:	
		ld a, (_RAM_DE01_)
		and $20
		jp +
	
; 3rd entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33EB_:	
		xor a
+:	
		ld (_RAM_DE01_), a
		xor a
		ld (ix+0), a
		call _LABEL_343F_
		pop hl
		pop hl
		ret
	
; 11th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_33F9_:	
		ld a, (de)
		ld c, a
		inc de
		ld a, (de)
		ld b, a
		push bc
		push ix
		pop hl
		dec (ix+9)
		ld c, (ix+9)
		dec (ix+9)
		ld b, $00
		add hl, bc
		ld (hl), d
		dec hl
		ld (hl), e
		pop de
		dec de
		ret
	
; 12th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_3414_:	
		push ix
		pop hl
		ld c, (ix+9)
		ld b, $00
		add hl, bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc (ix+9)
		inc (ix+9)
		ret
	
; 13th entry of Jump Table from 3379 (indexed by unknown)	
_LABEL_3427_:	
		ld a, (de)
		inc de
		add a, $17
		ld c, a
		ld b, $00
		push ix
		pop hl
		add hl, bc
		ld a, (hl)
		or a
		jr nz, +
		ld a, (de)
		ld (hl), a
+:	
		inc de
		dec (hl)
		jp nz, _LABEL_33C5_
		inc de
		ret
	
_LABEL_343F_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_3290_
		add hl, bc
		ld a, (hl)
		or $0F
_LABEL_344E_:	
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
_LABEL_3456_:	
		exx
		ld hl, _RAM_DE02_
		ld de, _RAM_DE02_ + 1
		ld bc, $00BF
		ld (hl), $00
		ldir
		exx
_LABEL_3465_:	
		exx
		ld hl, _DATA_349B_
		ld bc,  $0400 | Port_PSG
		otir
		xor a
		ld (_RAM_DE01_), a
		exx
		ret
	
_LABEL_3474_:	
		ld a, $DF
		out (Port_PSG), a
		ret
	
	; Data from 3479 to 3487 (15 bytes)
	.db $3E $FF $D3 $7F $C9 $3E $9F $D3 $7F $C9 $3E $BF $D3 $7F $C9
	
_LABEL_3488_:	
		ld b, $08
-:	
		adc hl, hl
		ld a, h
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		ld h, a
		or a
++:	
		djnz -
		ld a, l
		rla
		cpl
		ret
	
