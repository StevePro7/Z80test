; Sprite placement, animation and object free ($09BE-$0C28)
_LABEL_9BE_:	
		ld a, (_RAM_C106_)
		ld e, a
		ld d, $00
		add a, (ix+7)
		cp $40
		ret nc
		ld hl, $C240
		add hl, de
		push hl
		ld hl, $C280
		add hl, de
		add hl, de
		ld e, (ix+8)
		ld d, (ix+9)
		ld c, (ix+5)
--:	
		ld b, (ix+6)
		ld a, (ix+16)
-:	
		ld (hl), a
		inc hl
		ex af, af'
		ld a, (de)
		ld (hl), a
		inc hl
		inc de
		ex af, af'
		add a, $08
		djnz -
		dec c
		jr nz, --
		pop hl
		ld c, (ix+5)
		ld a, (ix+13)
--:	
		ld b, (ix+6)
-:	
		ld (hl), a
		inc hl
		djnz -
		add a, $08
		dec c
		jr nz, --
		ld a, (ix+7)
		ld hl, _RAM_C106_
		add a, (hl)
		ld (hl), a
		ret
	
_LABEL_A0E_:	
		ld a, (_RAM_C106_)
		ld hl, _RAM_C107_
		sub (hl)
		jr nc, +
		neg
		ld b, a
		ld a, (_RAM_C106_)
		ld e, a
		ld d, $00
		ld hl, $C240
		add hl, de
-:	
		ld (hl), $E0
		inc hl
		djnz -
+:	
		ld a, (_RAM_C106_)
		ld (_RAM_C107_), a
		xor a
		ld (_RAM_C106_), a
		ret
	
_LABEL_A34_:	
		push ix
		push iy
		pop ix
		call _LABEL_A40_
		pop ix
		ret
	
_LABEL_A40_:	
		res 7, (ix+0)
		xor a
		ld (ix+3), a
		ld (ix+4), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+12), a
		ld (ix+13), $E0
		ld (ix+15), a
		ld (ix+16), $F8
		ld (ix+18), a
		ld (ix+19), a
		ld (ix+20), a
		ld (ix+21), a
		ret
	
_LABEL_A6C_:	
		ld a, (ix+4)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3B50_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld (ix+5), b
		ld (ix+6), c
		ld (ix+7), a
		ld (ix+8), l
		ld (ix+9), h
		ret
	
_LABEL_A91_:	
		ld a, (ix+10)
		or a
		jr z, +
		dec a
		ld (ix+10), a
		and a
		ret
	
+:	
		ld (ix+10), c
		ld a, (ix+11)
		cp (hl)
		jr nz, +
		xor a
		or b
		scf
		ret nz
+:	
		ld e, a
		ld d, $00
		inc hl
		add hl, de
		ld a, (hl)
		ld (ix+4), a
		inc e
		ld (ix+11), e
		and a
		ret
	
_LABEL_AB9_:	
		ld hl, _DATA_ADA_
		ld a, (ix+0)
		and $07
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld d, $00
		add hl, de
		ld a, $0C
		and (ix+22)
		jr z, +
		inc hl
		bit 2, a
		jr z, +
		inc hl
+:	
		ld a, (hl)
		ld (ix+4), a
		ret
	
; Data from ADA to AEB (18 bytes)	
_DATA_ADA_:	
	.db $01 $01 $01 $02 $02 $02 $03 $04 $05 $06 $06 $06 $07 $08 $09 $0A
	.db $0B $0C
	
_LABEL_AEC_:	
		ld hl, _RAM_C174_
		bit 7, (hl)
		ret z
		bit 6, (hl)
		jr nz, ++
		inc hl
		inc hl
		dec (hl)
		ret nz
		ld c, $06
		ld a, (_RAM_C100_)
		bit 3, a
		jr z, +
		ld c, $0A
+:	
		ld (hl), c
		dec hl
		dec hl
		ld c, (hl)
		inc (hl)
		ld a, $87
		cp (hl)
		jr nz, +
		ld (hl), $80
+:	
		inc hl
		ld (hl), c
		ld a, (_RAM_DE00_)
		cp $83
		jr z, _LABEL_B7B_
		cp $84
		jr z, _LABEL_B7B_
		ld a, $8D
		ld (_RAM_DE00_), a
		jr _LABEL_B7B_
	
++:	
		ld b, (hl)
		ld a, $1F
		and b
		ld (hl), a
		ld c, a
		inc hl
		inc hl
		ld (hl), $0A
		ld a, $06
		cp c
		jr z, +
		ld a, (_RAM_C300_)
		and $F8
		or c
		ld (_RAM_C300_), a
		bit 5, b
		jr nz, ++
		ld a, (_RAM_DE00_)
		cp $83
		jr z, ++
		cp $84
		jr z, ++
		ld a, $92
		ld (_RAM_DE00_), a
		jr ++
	
+:	
		ld a, $30
		ld (_RAM_C5FF_), a
		ld a, (_RAM_C300_)
		and $07
		or $C0
		ld hl, _RAM_C174_
		ld e, (hl)
		ld (hl), a
		inc hl
		ld (hl), e
		ld a, (_RAM_DE00_)
		cp $83
		jr z, ++
		cp $84
		jr z, ++
		ld a, $8C
		ld (_RAM_DE00_), a
++:	
		ld a, $30
		ld (_RAM_C61F_), a
_LABEL_B7B_:	
		ld a, (_RAM_C175_)
		and $07
		add a, a
		ld e, a
		ld d, $00
		ld hl, $3856
		add hl, de
		ld de, _DATA_BA9_
		ld bc, $0002
		call _LABEL_2864_
		ld a, (_RAM_C174_)
		and $07
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_BA9_ + 2
		add hl, de
		ex de, hl
		ld bc, $3856
		add hl, bc
		ld bc, $0002
		jp _LABEL_2864_
	
; Data from BA9 to BB8 (16 bytes)	
_DATA_BA9_:	
	.db $00 $11 $01 $11 $02 $11 $03 $11 $04 $11 $05 $11 $06 $11 $07 $11
	
_LABEL_BB9_:	
		xor a
		ld c, a
		or (ix+31)
		ret z
		ld e, a
		ld d, $00
		ld (ix+31), d
		bit 7, e
		jr z, +
		dec d
+:	
		ld l, (ix+16)
		ld h, $00
		add hl, de
		ex de, hl
		xor a
		ld hl, $00F0
		sbc hl, de
		jr nc, +
		ld de, $00F0
+:	
		xor a
		ld hl, $00C3
		sbc hl, de
		jr c, +
		ld de, $00C4
		ld c, $01
+:	
		ld (ix+16), e
		ret
	
; 8th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_BED_:	
		ld a, (_RAM_C100_)
		bit 2, a
		ret nz
		call _LABEL_BB9_
		dec c
		ret nz
		ld iy, _RAM_C300_
		set 6, (iy+0)
		ld (iy+2), $04
		xor a
		ld (iy+11), a
		ld (iy+10), a
		jr +
	
; 9th entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_C0D_:	
		ld a, (_RAM_C100_)
		bit 1, a
		ret nz
		call _LABEL_BB9_
		dec c
		ret nz
		ld a, (_RAM_C300_)
		and $F8
		ld (_RAM_C300_), a
+:	
		ld hl, _RAM_C174_
		ld a, (hl)
		ld (hl), $E0
		inc hl
		ld (hl), a
		ret
	
