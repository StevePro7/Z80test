; Enemy behaviours ($1A12-$2432)
; 1st entry of Jump Table from 1A0E (indexed by unknown)	
_LABEL_1A12_:	
		ld a, (ix+16)
		cp $34
		jp c, _LABEL_138F_
		ld hl, _RAM_C310_
		sub (hl)
		jr nc, +
		neg
+:	
		cp $04
		jp nc, _LABEL_138F_
		ld de, _DATA_1A0_
		ld b, $03
		call _LABEL_F87_
		jp nz, _LABEL_138F_
		push hl
		pop iy
		ld (iy+0), $80
		ld (iy+2), $01
		ld (iy+4), $39
		ld hl, $0100
		ld (iy+18), l
		ld (iy+19), h
		ld a, $04
		add a, (ix+16)
		ld (iy+16), a
		ld a, (ix+13)
		ld (iy+13), a
		ld e, $02
		ld a, (_RAM_C30D_)
		cp (ix+13)
		jr nc, +
		ld e, $01
+:	
		ld (iy+22), e
		ld (ix+3), $01
		jp _LABEL_138F_
	
	; Data from 1A6E to 1A70 (3 bytes)
	.db $02 $36 $37
	
; 61st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1A71_:	
		ld hl, $1FD6
		ld bc, $0002
		call _LABEL_A91_
		ld a, (ix+13)
		cp (ix+26)
		jp nz, _LABEL_146B_
		ld a, $08
		cp (ix+16)
		jp c, _LABEL_1455_
		ld (ix+22), $08
		ld hl, $0180
		ld (ix+20), l
		ld (ix+21), h
		jp _LABEL_1455_
	
; 62nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1A9B_:	
		ld e, $00
		jp +
	
; 63rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1AA0_:	
		ld e, $FF
		jp +
	
; 64th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1AA5_:	
		ld e, $00
		ld a, r
		and $01
		jp z, +
		dec e
+:	
		ld (ix+24), e
		ld hl, $0400
		ld (ix+27), l
		ld (ix+28), h
		ld (ix+18), l
		ld (ix+19), h
		ld a, $68
		ld (ix+13), a
		ld (ix+26), a
		ld (ix+0), $80
		ld (ix+31), $01
		ld hl, $03D0
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+22), $04
		ld (ix+2), $3C
		ret
	
_LABEL_1AE3_:	
		ld a, (ix+3)
_LABEL_1AE6_:	
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
; 3rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1AF0_:	
		call _LABEL_1271_
		jp _LABEL_138F_
	
; 4th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1AF6_:	
		dec (ix+29)
		jp z, _LABEL_A40_
		call _LABEL_1271_
		jp _LABEL_138F_
	
; 5th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1B02_:	
		ld hl, _DATA_1B08_
		jp _LABEL_1AE3_
	
; Jump Table from 1B08 to 1B0B (2 entries, indexed by unknown)	
_DATA_1B08_:	
	.dw _LABEL_1B0C_ _LABEL_1B27_
	
; 1st entry of Jump Table from 1B08 (indexed by unknown)	
_LABEL_1B0C_:	
		ld a, $8E
		ld (_RAM_DE00_), a
		ld hl, $0000
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+22), $04
		ld (ix+3), $01
		ld hl, _RAM_C177_
		res 7, (hl)
; 2nd entry of Jump Table from 1B08 (indexed by unknown)	
_LABEL_1B27_:	
		call _LABEL_CA3_
		ld hl, $1B42
		ld bc, $FF08
		call _LABEL_A91_
		jp nc, _LABEL_142A_
		ld a, $04
		ld (_RAM_C16F_), a
		xor a
		ld (_RAM_C170_), a
		jp _LABEL_A40_
	
	; Data from 1B42 to 1B45 (4 bytes)
	.db $03 $0D $0E $00
	
; 6th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1B46_:	
		ld hl, _DATA_1B4C_
		jp _LABEL_1AE3_
	
; Jump Table from 1B4C to 1B4F (2 entries, indexed by unknown)	
_DATA_1B4C_:	
	.dw _LABEL_1B50_ _LABEL_1B82_
	
; 1st entry of Jump Table from 1B4C (indexed by unknown)	
_LABEL_1B50_:	
		ld (ix+0), $84
		ld (ix+4), $19
		ld a, (ix+16)
		ld (ix+26), a
		ld (ix+22), $01
		ld hl, $0040
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $0240
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+27), l
		ld (ix+28), h
		ld (ix+24), $00
		ld (ix+3), $01
; 2nd entry of Jump Table from 1B4C (indexed by unknown)	
_LABEL_1B82_:	
		ld a, (_RAM_C300_)
		rlca
		jp nc, _LABEL_A40_
		bit 4, (ix+0)
		jp z, _LABEL_1499_
		ld (ix+2), $06
		ld (ix+3), $00
		ret
	
; 7th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1B99_:	
		ld hl, _DATA_1B9F_
		jp _LABEL_1AE3_
	
; Jump Table from 1B9F to 1BA2 (2 entries, indexed by unknown)	
_DATA_1B9F_:	
	.dw _LABEL_1BA3_ _LABEL_1BD1_
	
; 1st entry of Jump Table from 1B9F (indexed by unknown)	
_LABEL_1BA3_:	
		ld (ix+0), $84
		ld a, (ix+13)
		ld (ix+26), a
		ld (ix+22), $04
		ld hl, $00E0
		ld (ix+20), l
		ld (ix+21), h
		ld hl, $0240
		ld (ix+18), l
		ld (ix+19), h
		ld (ix+27), l
		ld (ix+28), h
		ld (ix+24), $00
		ld (ix+3), $01
; 2nd entry of Jump Table from 1B9F (indexed by unknown)	
_LABEL_1BD1_:	
		bit 4, (ix+0)
		jp nz, _LABEL_144D_
		jp _LABEL_138F_
	
; 81st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1BDB_:	
		ld a, (ix+3)
		or a
		ret nz
		ld (ix+16), $60
		ld (ix+13), $40
		ld e, $4E
		ld a, (_RAM_C301_)
		or a
		jr z, +
		ld e, $4F
+:	
		ld (ix+4), e
		ld (ix+3), $01
		ret
	
; 13th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1BFA_:	
		ld hl, $1C06
		ld bc, $0002
		call _LABEL_A91_
		jp _LABEL_138F_
	
	; Data from 1C06 to 1C22 (29 bytes)
	.db $1C $3C $3D $3E $3F $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $49
	.db $48 $47 $46 $45 $44 $43 $42 $41 $40 $3F $3E $3D $3C
	
; 15th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1C23_:	
		ld hl, $1CBA
		ld bc, $0002
		call _LABEL_A91_
		ld hl, _DATA_1C32_
		jp _LABEL_1AE3_
	
; Jump Table from 1C32 to 1C35 (2 entries, indexed by unknown)	
_DATA_1C32_:	
	.dw _LABEL_1C36_ _LABEL_1C5B_
	
; 1st entry of Jump Table from 1C32 (indexed by unknown)	
_LABEL_1C36_:	
		ld (ix+0), $85
		ld (ix+22), $08
		ld (ix+31), $08
		ld (ix+16), $00
		ld (ix+13), $96
		ld hl, $0080
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+29), $60
		ld (ix+3), $01
; 2nd entry of Jump Table from 1C32 (indexed by unknown)	
_LABEL_1C5B_:	
		dec (ix+29)
		jp nz, _LABEL_138F_
		ld a, (_RAM_C18A_)
		inc a
		cp $10
		jr c, +
		xor a
+:	
		ld (_RAM_C18A_), a
		ld e, a
		ld d, $00
		ld hl, _DATA_1C8C_
		add hl, de
		ld e, (hl)
		ld a, e
		add a, a
		add a, e
		ld e, a
		ld hl, _DATA_1C9C_
		add hl, de
		ld a, (hl)
		ld (ix+29), a
		inc hl
		ld a, (hl)
		ld (ix+20), a
		inc hl
		ld a, (hl)
		ld (ix+21), a
		ret
	
; Data from 1C8C to 1C9B (16 bytes)	
_DATA_1C8C_:	
	.db $01 $09 $05 $09 $00 $09 $01 $08 $01 $09 $08 $05 $00 $09 $02 $05
	
; Data from 1C9C to 1CBC (33 bytes)	
_DATA_1C9C_:	
	.db $10 $40 $00 $20 $80 $00 $30 $00 $01 $30 $80 $00 $60 $80 $00 $90
	.db $80 $00 $30 $00 $01 $60 $00 $01 $90 $00 $01 $30 $80 $01 $02 $17
	.db $18
	
; 19th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1CBD_:	
		ld a, (_RAM_C300_)
		rlca
		jp nc, _LABEL_A40_
		bit 6, (ix+0)
		jr z, ++
		ld a, (ix+23)
		inc a
		cp $0A
		jr c, +
		xor a
+:	
		ld (ix+23), a
		jr c, +
		ld (ix+29), $04
		ld (ix+2), $51
		ret
	
+:	
		res 6, (ix+0)
		ld a, $03
		jp +++
	
++:	
		ld hl, $1D56
		ld bc, $0010
		call _LABEL_A91_
		call _LABEL_138F_
		ld a, $30
		cp (ix+16)
		jr c, +
		ld (ix+22), $08
		ret
	
+:	
		ld a, $D0
		cp (ix+16)
		jr nc, +
		ld (ix+22), $04
		ret
	
+:	
		dec (ix+29)
		ret nz
		ld (ix+29), $50
		ld a, r
		and $03
+++:	
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_1D4E_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (ix+20), e
		ld (ix+21), d
		ld de, _DATA_1A0_
		ld b, $08
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		ld (iy+0), $80
		ld (iy+2), $09
		ld a, (ix+13)
		add a, $0C
		ld (iy+13), a
		ld a, (ix+16)
		ld (iy+16), a
		ret
	
; Data from 1D4E to 1D5A (13 bytes)	
_DATA_1D4E_:	
	.db $40 $00 $60 $00 $80 $00 $10 $00 $04 $4B $4C $4D $4C
	
; 10th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1D5B_:	
		ld hl, _DATA_1D61_
		jp _LABEL_1AE3_
	
; Jump Table from 1D61 to 1D64 (2 entries, indexed by unknown)	
_DATA_1D61_:	
	.dw _LABEL_1D65_ _LABEL_138F_
	
; 1st entry of Jump Table from 1D61 (indexed by unknown)	
_LABEL_1D65_:	
		ld (ix+4), $39
		ld (ix+3), $01
		jp _LABEL_236D_
	
; 11th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1D70_:	
		ld hl, _DATA_1D76_
		jp _LABEL_1AE3_
	
; Jump Table from 1D76 to 1D79 (2 entries, indexed by unknown)	
_DATA_1D76_:	
	.dw _LABEL_1D7A_ _LABEL_138F_
	
; 1st entry of Jump Table from 1D76 (indexed by unknown)	
_LABEL_1D7A_:	
		ld (ix+4), $39
		ld (ix+3), $01
		jp _LABEL_23BB_
	
; 16th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1D85_:	
		ld (ix+22), $04
		xor a
		ld (ix+20), a
		ld (ix+21), a
		ld hl, $1D9F
		ld bc, $FF10
		call _LABEL_A91_
		jp nc, _LABEL_142A_
		jp _LABEL_A40_
	
	; Data from 1D9F to 1DA1 (3 bytes)
	.db $02 $38 $00
	
; 17th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1DA2_:	
		ld (ix+22), $04
		xor a
		ld (ix+20), a
		ld (ix+21), a
		ld hl, $1DBE
		ld bc, $FF10
		call _LABEL_A91_
		jp nc, _LABEL_142A_
		ld (ix+2), $05
		ret
	
	; Data from 1DBE to 1DBF (2 bytes)
	.db $01 $38
	
; 18th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1DC0_:	
		ld hl, _DATA_1DC6_
		jp _LABEL_1AE3_
	
; Jump Table from 1DC6 to 1DCB (3 entries, indexed by unknown)	
_DATA_1DC6_:	
	.dw _LABEL_1DCC_ _LABEL_1DDF_ _LABEL_1E04_
	
; 1st entry of Jump Table from 1DC6 (indexed by unknown)	
_LABEL_1DCC_:	
		ld a, (ix+4)
		sub $3C
		add a, a
		add a, a
		add a, a
		add a, (ix+13)
		ld (ix+13), a
		ld (ix+3), $01
		ret
	
; 2nd entry of Jump Table from 1DC6 (indexed by unknown)	
_LABEL_1DDF_:	
		xor a
		ld (ix+20), a
		ld (ix+21), a
		ld hl, $1D9F
		ld bc, $FF10
		call _LABEL_A91_
		jp nc, _LABEL_142A_
		ld (ix+3), $02
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+29), $08
		ret
	
; 3rd entry of Jump Table from 1DC6 (indexed by unknown)	
_LABEL_1E04_:	
		dec (ix+29)
		ret nz
		ld a, (_RAM_C400_)
		rlca
		jp nc, _LABEL_A40_
		ld a, (_RAM_C404_)
		cp $3A
		jp nz, _LABEL_A40_
		ld a, (_RAM_C410_)
		add a, $02
		ld e, a
		ld a, (_RAM_C181_)
		and $01
		jr z, +
		inc e
+:	
		ld (ix+16), e
		ld (ix+15), $00
		ld (ix+13), $2F
		ld (ix+4), $3D
		ld (ix+2), $0D
		ret
	
; 82nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1E39_:	
		dec (ix+29)
		ret nz
		ld (ix+29), $08
		ld de, _DATA_1A0_
		ld b, $08
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		ld a, (ix+23)
		cp $18
		jp c, ++
		ld hl, _RAM_C16F_
		ld a, $04
		cp (hl)
		jr z, +
		ld (hl), $03
+:	
		push ix
		pop iy
		call _LABEL_2DDE_
		push iy
		pop ix
		jp _LABEL_A40_
	
++:	
		ld e, a
		ld d, $00
		ld hl, _DATA_1E9B_
		add hl, de
		ld a, (hl)
		add a, a
		ld e, a
		ld hl, _DATA_1EB3_
		add hl, de
		ld a, (hl)
		inc hl
		add a, (ix+13)
		ld (iy+13), a
		ld a, (hl)
		add a, (ix+16)
		ld (iy+16), a
		ld (iy+0), $C0
		ld (iy+2), $0F
		inc (ix+23)
		ld a, $8F
		ld (_RAM_DE00_), a
		ret
	
; Data from 1E9B to 1EB2 (24 bytes)	
_DATA_1E9B_:	
	.db $00 $01 $02 $03 $04 $05 $06 $07 $02 $01 $05 $00 $07 $06 $03 $04
	.db $00 $01 $02 $03 $04 $05 $06 $07
	
; Data from 1EB3 to 1EC2 (16 bytes)	
_DATA_1EB3_:	
	.db $F8 $00 $30 $10 $18 $08 $28 $00 $08 $18 $18 $10 $F8 $10 $08 $F8
	
; 20th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1EC3_:	
		ld hl, $1FC5
		ld bc, $0003
		call _LABEL_A91_
		ld hl, _DATA_1ED2_
		jp _LABEL_1AE3_
	
; Jump Table from 1ED2 to 1ED9 (4 entries, indexed by unknown)	
_DATA_1ED2_:	
	.dw _LABEL_1EDA_ _LABEL_1EF0_ _LABEL_1F3D_ _LABEL_138F_
	
; 1st entry of Jump Table from 1ED2 (indexed by unknown)	
_LABEL_1EDA_:	
		call _LABEL_138F_
		ld a, $98
		cp (ix+16)
		ret c
		ld (ix+3), $01
		bit 4, (ix+0)
		jr z, _LABEL_1EF0_
		jp _LABEL_2407_
	
; 2nd entry of Jump Table from 1ED2 (indexed by unknown)	
_LABEL_1EF0_:	
		ld hl, _DATA_1F4C_
		ld e, (ix+24)
		ld d, $00
		add hl, de
		ld a, (hl)
		or a
		jp z, +
		dec a
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld hl, _DATA_1F65_
		add hl, de
		ld a, (hl)
		ld (ix+25), a
		inc hl
		ld a, $C0
		and (ix+22)
		or (hl)
		ld (ix+22), a
		inc hl
		ld a, (hl)
		add a, a
		add a, a
		ld e, a
		ld hl, _DATA_1FAD_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (ix+18), c
		ld (ix+19), b
		ld (ix+20), e
		ld (ix+21), d
		ld (ix+3), $02
		ret
	
+:	
		ld (ix+3), $03
		jp _LABEL_236D_
	
; 3rd entry of Jump Table from 1ED2 (indexed by unknown)	
_LABEL_1F3D_:	
		call _LABEL_138F_
		dec (ix+25)
		ret nz
		inc (ix+24)
		ld (ix+3), $01
		ret
	
; Data from 1F4C to 1F64 (25 bytes)	
_DATA_1F4C_:	
	.db $0D $0E $0F $10 $11 $12 $13 $14 $15 $16 $17 $18 $01 $02 $03 $04
	.db $05 $06 $07 $08 $09 $0A $0B $0C $00
	
; Data from 1F65 to 1FAC (72 bytes)	
_DATA_1F65_:	
	.db $04 $0A $05 $03 $0A $04 $02 $0A $03 $02 $0A $02 $03 $0A $01 $04
	.db $0A $00 $04 $06 $00 $03 $06 $01 $02 $06 $02 $02 $06 $03 $03 $06
	.db $04 $04 $06 $05 $04 $05 $05 $03 $05 $04 $02 $05 $03 $02 $05 $02
	.db $03 $05 $01 $04 $05 $00 $04 $09 $00 $03 $09 $01 $02 $09 $02 $02
	.db $09 $03 $03 $09 $04 $04 $09 $05
	
; Data from 1FAD to 1FC9 (29 bytes)	
_DATA_1FAD_:	
	.db $40 $00 $00 $02 $C0 $00 $00 $02 $80 $01 $00 $02 $00 $02 $80 $01
	.db $00 $02 $C0 $00 $00 $02 $40 $00 $04 $1A $1B $1C $1B
	
; 23rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1FCA_:	
		ld hl, $1FD6
		ld bc, $0002
		call _LABEL_A91_
		jp _LABEL_144D_
	
	; Data from 1FD6 to 1FD9 (4 bytes)
	.db $03 $1D $1E $1F
	
; 27th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1FDA_:	
		ld hl, _DATA_1FE0_
		jp _LABEL_1AE3_
	
; Jump Table from 1FE0 to 1FE5 (3 entries, indexed by unknown)	
_DATA_1FE0_:	
	.dw _LABEL_1FE6_ _LABEL_1FF6_ _LABEL_138F_
	
; 1st entry of Jump Table from 1FE0 (indexed by unknown)	
_LABEL_1FE6_:	
		dec (ix+29)
		ret nz
		ld (ix+3), $01
		ld (ix+4), $32
		res 6, (ix+0)
; 2nd entry of Jump Table from 1FE0 (indexed by unknown)	
_LABEL_1FF6_:	
		ld a, (_RAM_C310_)
		add a, $08
		sub (ix+16)
		jr nc, 1
		neg
		cp $04
		jp nc, _LABEL_138F_
		ld e, $02
		ld a, (_RAM_C30D_)
		cp (ix+13)
		jr nc, +
		ld e, $01
+:	
		ld (ix+22), e
		ld (ix+4), $33
		ld (ix+3), $02
		ret
	
; 33rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_201F_:	
		ld hl, $202B
		ld bc, $0003
		call _LABEL_A91_
		jp _LABEL_138F_
	
	; Data from 202B to 202D (3 bytes)
	.db $02 $22 $23
	
; 36th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_202E_:	
		ld hl, _DATA_2034_
		jp _LABEL_1AE3_
	
; Jump Table from 2034 to 2037 (2 entries, indexed by unknown)	
_DATA_2034_:	
	.dw _LABEL_2038_ _LABEL_2069_
	
; 1st entry of Jump Table from 2034 (indexed by unknown)	
_LABEL_2038_:	
		ld a, (_RAM_C30D_)
		add a, $10
		sub (ix+13)
		jr nc, 1
		neg
		cp $08
		jr nc, +
		ld (ix+22), $05
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld hl, $0000
		ld (ix+18), l
		ld (ix+19), h
		inc (ix+3)
		bit 4, (ix+0)
		ret z
		jp _LABEL_2407_
	
; 2nd entry of Jump Table from 2034 (indexed by unknown)	
_LABEL_2069_:	
		ld l, (ix+18)
		ld h, (ix+19)
		ld de, $0010
		add hl, de
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $2085
		ld bc, $0008
		call _LABEL_A91_
+:	
		jp _LABEL_138F_
	
	; Data from 2085 to 2087 (3 bytes)
	.db $02 $24 $25
	
; 39th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_2088_:	
		ld hl, _DATA_208E_
		jp _LABEL_1AE3_
	
; Jump Table from 208E to 2095 (4 entries, indexed by unknown)	
_DATA_208E_:	
	.dw _LABEL_2096_ _LABEL_20A6_ _LABEL_20D5_ _LABEL_138F_
	
; 1st entry of Jump Table from 208E (indexed by unknown)	
_LABEL_2096_:	
		dec (ix+29)
		ret nz
		res 6, (ix+0)
		ld (ix+4), $26
		ld (ix+3), $01
; 2nd entry of Jump Table from 208E (indexed by unknown)	
_LABEL_20A6_:	
		ld a, $50
		cp (ix+16)
		jp c, _LABEL_138F_
		ld hl, $0100
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld c, $09
		ld a, (ix+13)
		cp $68
		jr nc, +
		ld c, $0A
+:	
		ld (ix+22), c
		ld (ix+3), $02
		jp _LABEL_2407_
	
; 3rd entry of Jump Table from 208E (indexed by unknown)	
_LABEL_20D5_:	
		ld hl, $20F1
		ld bc, $FF05
		call _LABEL_A91_
		ret nc
		ld (ix+3), $03
		ld e, $28
		bit 0, (ix+22)
		jr nz, +
		ld e, $29
+:	
		ld (ix+4), e
		ret
	
	; Data from 20F1 to 20F2 (2 bytes)
	.db $01 $27
	
; 42nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_20F3_:	
		ld hl, _DATA_20F9_
		jp _LABEL_1AE3_
	
; Jump Table from 20F9 to 20FC (2 entries, indexed by unknown)	
_DATA_20F9_:	
	.dw _LABEL_20FD_ _LABEL_210D_
	
; 1st entry of Jump Table from 20F9 (indexed by unknown)	
_LABEL_20FD_:	
		dec (ix+29)
		ret nz
		res 6, (ix+0)
		ld (ix+4), $34
		ld (ix+3), $01
; 2nd entry of Jump Table from 20F9 (indexed by unknown)	
_LABEL_210D_:	
		bit 6, (ix+0)
		jp z, _LABEL_138F_
		ld a, (ix+23)
		inc a
		cp $07
		jr nz, +
		ld (ix+4), $35
+:	
		cp $08
		ld (ix+23), a
		jr nc, +
		res 6, (ix+0)
		ld l, (ix+15)
		ld h, (ix+16)
		ld a, $E8
		cp h
		ret c
		ld de, $0C00
		add hl, de
		ld (ix+15), l
		ld (ix+16), h
		jp _LABEL_138F_
	
+:	
		ld (ix+2), $0F
		xor a
		ld (ix+11), a
		ld (ix+10), a
		ld (ix+3), a
		ld a, $8F
		ld (_RAM_DE00_), a
		push ix
		pop iy
		call _LABEL_2DDE_
		pop iy
		pop ix
		ret
	
; 44th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_2161_:	
		ld hl, _DATA_2167_
		jp _LABEL_1AE3_
	
; Jump Table from 2167 to 216A (2 entries, indexed by unknown)	
_DATA_2167_:	
	.dw _LABEL_216B_ _LABEL_2178_
	
; 1st entry of Jump Table from 2167 (indexed by unknown)	
_LABEL_216B_:	
		ld a, $38
		cp (ix+16)
		jp c, _LABEL_138F_
		ld (ix+3), $01
		ret
	
; 2nd entry of Jump Table from 2167 (indexed by unknown)	
_LABEL_2178_:	
		ld hl, $218E
		ld bc, $0008
		call _LABEL_A91_
		dec (ix+29)
		jp nz, _LABEL_138F_
		ld (ix+29), $20
		jp _LABEL_23BB_
	
	; Data from 218E to 2191 (4 bytes)
	.db $03 $2C $2D $2E
	
; 46th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_2192_:	
		ld hl, $21FA
		ld bc, $0003
		call _LABEL_A91_
		ld hl, _DATA_21A1_
		jp _LABEL_1AE3_
	
; Jump Table from 21A1 to 21A4 (2 entries, indexed by unknown)	
_DATA_21A1_:	
	.dw _LABEL_21A5_ _LABEL_21D0_
	
; 1st entry of Jump Table from 21A1 (indexed by unknown)	
_LABEL_21A5_:	
		xor a
		ld l, (ix+20)
		ld h, (ix+21)
		ld de, $0010
		sbc hl, de
		ld (ix+20), l
		ld (ix+21), h
		ld e, (ix+15)
		ld d, (ix+16)
		ex de, hl
		xor a
		sbc hl, de
		ld (ix+15), l
		ld (ix+16), h
		ld a, $F8
		cp h
		jp z, _LABEL_A40_
		jp _LABEL_138F_
	
; 2nd entry of Jump Table from 21A1 (indexed by unknown)	
_LABEL_21D0_:	
		xor a
		ld l, (ix+20)
		ld h, (ix+21)
		ld de, $0010
		sbc hl, de
		ld (ix+20), l
		ld (ix+21), h
		ld e, (ix+15)
		ld d, (ix+16)
		ex de, hl
		xor a
		add hl, de
		ld (ix+15), l
		ld (ix+16), h
		ld a, $00
		cp h
		jp z, _LABEL_A40_
		jp _LABEL_138F_
	
	; Data from 21FA to 21FD (4 bytes)
	.db $03 $2F $30 $31
	
; 50th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_21FE_:	
		ld hl, $21FA
		ld bc, $0003
		call _LABEL_A91_
		ld hl, _DATA_220D_
		jp _LABEL_1AE3_
	
; Jump Table from 220D to 2210 (2 entries, indexed by unknown)	
_DATA_220D_:	
	.dw _LABEL_2211_ _LABEL_222E_
	
; 1st entry of Jump Table from 220D (indexed by unknown)	
_LABEL_2211_:	
		call +
		jp nz, _LABEL_138F_
		ld a, (ix+22)
		cpl
		and $03
		ld (ix+22), a
		ld hl, $0500
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+2), $2D
		ret
	
; 2nd entry of Jump Table from 220D (indexed by unknown)	
_LABEL_222E_:	
		call _LABEL_2271_
		jp nz, _LABEL_138F_
		ld a, (ix+22)
		cpl
		and $03
		ld (ix+22), a
		ld hl, $0500
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+2), $2D
		ret
	
+:	
		xor a
		ld l, (ix+20)
		ld h, (ix+21)
		ld de, $0010
		sbc hl, de
		ld (ix+20), l
		ld (ix+21), h
		ld e, (ix+15)
		ld d, (ix+16)
		ex de, hl
		xor a
		sbc hl, de
		ld (ix+15), l
		ld (ix+16), h
		ld a, $F8
		cp h
		ret
	
_LABEL_2271_:	
		xor a
		ld l, (ix+20)
		ld h, (ix+21)
		ld de, $0010
		sbc hl, de
		ld (ix+20), l
		ld (ix+21), h
		ld e, (ix+15)
		ld d, (ix+16)
		ex de, hl
		xor a
		add hl, de
		ld (ix+15), l
		ld (ix+16), h
		ld a, $00
		cp h
		ret
	
; 54th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_2296_:	
		bit 6, (ix+0)
		jp z, _LABEL_138F_
		res 6, (ix+0)
		ld c, (ix+13)
		ld b, (ix+16)
		ld a, (_RAM_C189_)
		inc a
		cp $03
		jr c, +
		xor a
+:	
		ld (_RAM_C189_), a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_230A_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		exx
		ld de, _DATA_1A0_
		ld b, $06
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		exx
		ld (iy+22), $05
		call +
		exx
		ld de, _DATA_1A0_
		ld b, $06
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		exx
		ld (iy+22), $06
+:	
		ld (iy+0), $80
		ld (iy+13), c
		ld (iy+16), b
		ld (iy+18), l
		ld (iy+19), h
		ld (iy+20), e
		ld (iy+21), d
		ld (iy+4), $2B
		ld (iy+2), $35
		ret
	
; Data from 230A to 2315 (12 bytes)	
_DATA_230A_:	
	.db $6C $02 $AC $00 $2C $02 $40 $01 $C0 $01 $C0 $01
	
; 56th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_2316_:	
		ld hl, _DATA_231C_
		jp _LABEL_1AE3_
	
; Jump Table from 231C to 2325 (5 entries, indexed by unknown)	
_DATA_231C_:	
	.dw _LABEL_2096_ _LABEL_20A6_ _LABEL_20D5_ _LABEL_2326_ _LABEL_235B_
	
; 4th entry of Jump Table from 231C (indexed by unknown)	
_LABEL_2326_:	
		ld a, (_RAM_C30D_)
		add a, $08
		sub (ix+13)
		jr nc, +
		neg
+:	
		cp $04
		jp nc, _LABEL_138F_
		ld (ix+3), $04
		ld e, $04
		ld a, (_RAM_C310_)
		cp (ix+16)
		jr c, +
		ld e, $08
+:	
		ld (ix+22), e
		ld hl, $0300
		ld (ix+20), l
		ld (ix+21), h
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
; 5th entry of Jump Table from 231C (indexed by unknown)	
_LABEL_235B_:	
		ld hl, $236A
		ld bc, $FF05
		call _LABEL_A91_
		ret nc
		ld (ix+2), $01
		ret
	
	; Data from 236A to 236C (3 bytes)
	.db $02 $27 $26
	
_LABEL_236D_:	
		ld a, (_RAM_C30D_)
		ld l, $00
		sub (ix+13)
		jr nc, +
		neg
		set 0, l
		jr ++
	
+:	
		set 1, l
++:	
		ld b, a
		ld a, (_RAM_C310_)
		sub (ix+16)
		jr nc, +
		neg
		set 2, l
		jr ++
	
+:	
		set 3, l
++:	
		ld c, a
		ld (ix+22), l
		sub b
		push af
		jr c, +
		ld d, b
		jr ++
	
+:	
		ld d, c
		ld c, b
++:	
		srl c
		ld b, $00
		ld e, b
		ld l, e
		ld h, l
		call _LABEL_2840_
		ld hl, $0200
		pop af
		jr nc, +
		ex de, hl
+:	
		ld (ix+18), e
		ld (ix+19), d
		ld (ix+20), l
		ld (ix+21), h
		ret
	
_LABEL_23BB_:	
		ld a, (_RAM_C30D_)
		ld l, $00
		sub (ix+13)
		jr nc, +
		neg
		set 0, l
		jr ++
	
+:	
		set 1, l
++:	
		ld b, a
		ld a, (_RAM_C310_)
		sub (ix+16)
		jr nc, +
		neg
		set 2, l
		jr ++
	
+:	
		set 3, l
++:	
		ld c, a
		ld (ix+22), l
		sub b
		push af
		jr c, +
		ld d, b
		jr ++
	
+:	
		ld d, c
		ld c, b
++:	
		ld b, $00
		ld e, b
		ld l, e
		ld h, l
		call _LABEL_2840_
		ld hl, $0100
		pop af
		jr nc, +
		ex de, hl
+:	
		ld (ix+18), e
		ld (ix+19), d
		ld (ix+20), l
		ld (ix+21), h
		ret
	
_LABEL_2407_:	
		ld a, (ix+16)
		cp $F8
		ret nc
		cp $08
		ret c
		ld de, _DATA_1A0_
		ld b, $08
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		ld (iy+0), $80
		ld (iy+2), $09
		ld e, (ix+13)
		ld a, $04
		add a, (ix+16)
		ld (iy+16), a
		ld (iy+13), e
		ret
	
