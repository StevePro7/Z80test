; Enemy spawners ($14E5-$1A11)
; 12th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_14E5_:	
		push ix
		call _LABEL_152F_
		ld de, _DATA_20_
		add ix, de
		ld a, $1F
		ld c, $3A
		call +
		ld de, $0020
		add ix, de
		ld a, $9E
		ld c, $3B
		call +
		pop ix
		ret
	
+:	
		ld (ix+13), a
		ld (ix+4), c
		ld (ix+22), $04
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+0), $87
		ld (ix+2), $01
		ld e, $F4
		ld a, (_RAM_C181_)
		and $01
		jr nz, +
		ld e, $F5
+:	
		ld (ix+16), e
		ret
	
; 14th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_152F_:	
		ld (ix+0), $86
		ld (ix+13), $2F
		ld (ix+22), $04
		ld (ix+4), $3C
		ld (ix+31), $06
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+2), $0C
		ret
	
; 21st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1551_:	
		ld e, $80
		jr +
	
; 22nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1555_:	
		ld e, $90
+:	
		ld (ix+0), e
		ld (ix+31), $02
		ld (ix+2), $13
		ld hl, $0040
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $0200
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+22), $06
		xor a
		ld (ix+24), a
		ld (ix+25), a
		ld e, $30
		ld a, r
		cp $30
		jr c, +
		ld e, $A4
		cp $A4
		jr nc, +
		ld e, a
+:	
		ld (ix+13), e
		ret
	
; 24th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1592_:	
		ld e, $FF
		ld hl, $0480
		ld bc, $0180
		jr +
	
; 25th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_159C_:	
		ld e, $00
		ld hl, $0480
		ld bc, $0180
		jr +
	
; 26th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_15A6_:	
		ld bc, $0180
		ld hl, $0480
		ld e, $00
		ld a, r
		and $01
		jr z, +
		dec e
		jr z, +
; 66th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_15B7_:	
		ld bc, $0300
		ld hl, $0200
		ld e, $00
+:	
		ld (ix+24), e
		ld (ix+27), l
		ld (ix+28), h
		ld (ix+18), l
		ld (ix+19), h
		ld (ix+20), c
		ld (ix+21), b
		ld a, $5C
		ld (ix+13), a
		ld (ix+26), a
		ld (ix+0), $80
		ld (ix+2), $16
		ld (ix+31), $01
		ld (ix+22), $04
		ret
	
; 28th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_15ED_:	
		ld a, $01
		ld e, $26
		jp _LABEL_1656_
	
; 29th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_15F4_:	
		ld a, $01
		ld e, $96
		jp _LABEL_1656_
	
; 30th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_15FB_:	
		push ix
		ld a, $01
		ld b, $03
-:	
		ld e, $26
		call _LABEL_1656_
		ld de, _DATA_20_
		add ix, de
		ld e, $96
		call _LABEL_1656_
		add a, $37
		ld de, $0020
		add ix, de
		djnz -
		pop ix
		ret
	
; 31st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_161C_:	
		push ix
		ld a, $01
		ld b, $03
-:	
		ld e, $26
		call _LABEL_1656_
		add a, $18
		ld de, _DATA_20_
		add ix, de
		ld e, $96
		call _LABEL_1656_
		add a, $18
		ld de, $0020
		add ix, de
		djnz -
		pop ix
		ret
	
; 32nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_163F_:	
		push ix
		ld a, $01
		ld b, $03
-:	
		ld e, $96
		call _LABEL_1656_
		add a, $37
		ld de, _DATA_20_
		add ix, de
		djnz -
		pop ix
		ret
	
_LABEL_1656_:	
		ld (ix+13), e
		ld (ix+29), a
		ld (ix+0), $C0
		ld (ix+31), $02
		ld (ix+22), $04
		ld (ix+2), $1A
		ld hl, $0140
		ld (ix+20), l
		ld (ix+21), h
		ld hl, $0280
		ld (ix+18), l
		ld (ix+19), h
		ret
	
; 65th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_167F_:	
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+0), $80
		ld (ix+2), $20
		ld (ix+31), $01
		ld (ix+16), $00
		ld (ix+22), $08
		jp _LABEL_19DF_
	
; 34th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_169F_:	
		ld hl, $0400
		ld e, $01
		jr +
	
; 35th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_16A6_:	
		ld hl, $0200
		ld e, $00
+:	
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+31), e
		ld (ix+0), $80
		ld (ix+2), $20
		ld (ix+22), $04
		ld e, $28
		ld a, r
		add a, $19
		cp $28
		jr c, +
		ld e, $B0
		cp $B0
		jr nc, +
		ld e, a
+:	
		ld (ix+13), e
		ret
	
; 37th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_16D5_:	
		ld e, $80
		jr +
	
; 38th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_16D9_:	
		ld e, $90
+:	
		ld (ix+0), e
		ld (ix+2), $23
		ld (ix+31), $02
		ld (ix+4), $24
		ld a, r
		ld (ix+13), a
		jp _LABEL_236D_
	
; 40th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_16F2_:	
		push ix
		ld c, $01
		ld b, $04
-:	
		ld e, $26
		ld a, (_RAM_C30D_)
		cp $68
		jr nc, +
		ld e, $96
+:	
		call ++
		ld de, _DATA_20_
		add ix, de
		ld a, $17
		add a, c
		ld c, a
		djnz -
		pop ix
		ret
	
; 41st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1714_:	
		ld c, $01
		ld e, $26
		ld a, (_RAM_C30D_)
		cp $68
		jr nc, +
		ld e, $96
+:	
		jr ++
	
; 67th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1723_:	
		ld c, $01
		ld e, $26
		jr ++
	
; 68th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1729_:	
		ld c, $01
		ld e, $96
++:	
		ld d, $26
_LABEL_172F_:	
		ld (ix+2), d
		ld (ix+29), c
		ld (ix+13), e
		ld (ix+0), $C0
		ld (ix+31), $04
		ld (ix+22), $04
		ld hl, $0300
		ld (ix+20), l
		ld (ix+21), h
		ret
	
; 43rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_174E_:	
		push ix
		ld b, $07
		ld c, $01
		ld a, $18
-:	
		call _LABEL_181A_
		add a, $16
		ld de, _DATA_20_
		add ix, de
		djnz -
		pop ix
		ret
	
; 69th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1765_:	
		push ix
		ld b, $02
		ld a, $28
		ld c, $01
-:	
		call _LABEL_181A_
		add a, $20
		ld de, _DATA_20_
		add ix, de
		djnz -
		ld b, $02
		ld a, $68
		ld c, $2F
-:	
		call _LABEL_181A_
		add a, $20
		ld de, $0020
		add ix, de
		djnz -
		ld b, $02
		ld a, $28
		ld c, $5F
-:	
		call _LABEL_181A_
		add a, $20
		ld de, $0020
		add ix, de
		djnz -
		pop ix
		ret
	
; 70th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_17A0_:	
		push ix
		ld b, $02
		ld a, $68
		ld c, $01
-:	
		call _LABEL_181A_
		add a, $20
		ld de, _DATA_20_
		add ix, de
		djnz -
		ld b, $02
		ld a, $28
		ld c, $2F
-:	
		call _LABEL_181A_
		add a, $20
		ld de, $0020
		add ix, de
		djnz -
		ld b, $02
		ld a, $68
		ld c, $5F
-:	
		call _LABEL_181A_
		add a, $20
		ld de, $0020
		add ix, de
		djnz -
		pop ix
		ret
	
; 71st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_17DB_:	
		push ix
		ld b, $03
		ld a, $50
		ld c, $01
-:	
		call _LABEL_181A_
		add a, $10
		ld de, _DATA_20_
		add ix, de
		djnz -
		pop ix
		ret
	
; 72nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_17F2_:	
		ld c, $01
		ld a, $28
		jr _LABEL_181A_
	
; 73rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_17F8_:	
		ld c, $01
		ld a, $38
		jr _LABEL_181A_
	
; 74th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_17FE_:	
		ld c, $01
		ld a, $48
		jr _LABEL_181A_
	
; 75th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1804_:	
		ld c, $01
		ld a, $58
		jr _LABEL_181A_
	
; 76th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_180A_:	
		ld c, $01
		ld a, $68
		jr _LABEL_181A_
	
; 77th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1810_:	
		ld c, $01
		ld a, $78
		jr _LABEL_181A_
	
; 78th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1816_:	
		ld c, $01
		ld a, $88
_LABEL_181A_:	
		ld (ix+13), a
		ld (ix+29), c
		ld hl, $0140
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+0), $C1
		ld (ix+2), $29
		ld (ix+31), $05
		ld (ix+22), $04
		ld (ix+23), $00
		ret
	
; 45th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_183E_:	
		ld (ix+0), $80
		ld (ix+31), $03
		ld (ix+4), $2C
		ld (ix+2), $2B
		ld hl, $0200
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+22), $04
		ld (ix+29), $10
		ld e, $20
		ld a, r
		cp $20
		jr c, +
		ld e, $9C
		cp $9C
		jr nc, +
		ld e, a
+:	
		ld (ix+13), e
		ret
	
; 47th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1872_:	
		ld d, $18
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, _LABEL_18BF_
		ld d, $90
		ld e, $01
		jp _LABEL_18BF_
	
; 48th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1885_:	
		ld (ix+3), $01
		ld (ix+16), $00
		ld d, $18
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, _LABEL_18BF_
		ld d, $90
		ld e, $01
		jp _LABEL_18BF_
	
; 49th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_18A0_:	
		ld d, $18
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, +
		ld d, $90
		ld e, $01
+:	
		ld a, (_RAM_C310_)
		cp $80
		jr c, _LABEL_18BF_
		ld (ix+16), $00
		ld (ix+3), $01
_LABEL_18BF_:	
		ld (ix+22), e
		ld (ix+13), d
		ld (ix+0), $80
		ld (ix+31), $02
		ld (ix+4), $29
		ld hl, $00C0
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $0500
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+2), $2D
		ret
	
; 51st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_18E8_:	
		ld d, $44
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, _LABEL_1935_
		ld d, $70
		ld e, $01
		jp _LABEL_1935_
	
; 52nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_18FB_:	
		ld (ix+3), $01
		ld (ix+16), $00
		ld d, $44
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, _LABEL_1935_
		ld d, $70
		ld e, $01
		jp _LABEL_1935_
	
; 53rd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1916_:	
		ld d, $44
		ld e, $02
		ld a, (_RAM_C30D_)
		cp $68
		jp nc, +
		ld d, $70
		ld e, $01
+:	
		ld a, (_RAM_C310_)
		cp $80
		jr c, _LABEL_1935_
		ld (ix+16), $00
		ld (ix+3), $01
_LABEL_1935_:	
		ld (ix+22), e
		ld (ix+13), d
		ld (ix+0), $80
		ld (ix+31), $02
		ld (ix+4), $29
		ld hl, $00C0
		ld (ix+18), l
		ld (ix+19), h
		ld hl, $0300
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+2), $31
		ret
	
; 55th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_195E_:	
		ld hl, $0180
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+0), $83
		ld (ix+2), $35
		ld (ix+31), $07
		ld (ix+4), $2A
		ld (ix+22), $04
		ld a, (_RAM_C30D_)
		ld (ix+13), a
		ret
	
; 57th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_1982_:	
		push ix
		ld c, $01
		ld b, $04
-:	
		ld e, $26
		ld a, (_RAM_C30D_)
		cp $68
		jr nc, +
		ld e, $96
+:	
		call ++
		ld de, _DATA_20_
		add ix, de
		ld a, $17
		add a, c
		ld c, a
		djnz -
		pop ix
		ret
	
; 58th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_19A4_:	
		ld c, $01
		ld e, $26
		ld a, (_RAM_C30D_)
		cp $68
		jr nc, +
		ld e, $96
+:	
		jr ++
	
; 79th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_19B3_:	
		ld c, $01
		ld e, $26
		jr ++
	
; 80th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_19B9_:	
		ld c, $01
		ld e, $96
++:	
		ld d, $37
		jp _LABEL_172F_
	
; 60th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_19C2_:	
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+0), $80
		ld (ix+31), $05
		ld (ix+22), $08
		ld (ix+16), $00
		ld (ix+2), $3A
_LABEL_19DF_:	
		ld a, (_RAM_C18C_)
		inc a
		cp $08
		jr c, +
		xor a
+:	
		ld (_RAM_C18C_), a
		ld e, a
		ld d, $00
		ld hl, _DATA_19F7_
		add hl, de
		ld a, (hl)
		ld (ix+13), a
		ret
	
; Data from 19F7 to 19FE (8 bytes)	
_DATA_19F7_:	
	.db $28 $50 $68 $90 $40 $98 $78 $35
	
; 59th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_19FF_:	
		ld hl, $1A6E
		ld bc, $0008
		call _LABEL_A91_
		ld hl, _DATA_1A0E_
		jp _LABEL_1AE3_
	
; Jump Table from 1A0E to 1A11 (2 entries, indexed by unknown)	
_DATA_1A0E_:	
	.dw _LABEL_1A12_ _LABEL_138F_
	
