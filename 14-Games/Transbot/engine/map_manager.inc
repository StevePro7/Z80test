; Map / level data lookup ($0817-$09BD)
_LABEL_817_:	
		ld hl, _RAM_C18B_
		bit 7, (hl)
		ret z
		res 7, (hl)
		bit 6, (hl)
		ret nz
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, (_RAM_C152_)
		bit 5, a
		ret nz
		set 6, (hl)
		ld a, $03
		ld (_RAM_C16E_), a
		ret
	
_LABEL_835_:	
		ld hl, _RAM_C185_
		bit 7, (hl)
		ret z
		res 7, (hl)
		ld bc, _DATA_76EF_
		ld a, (_RAM_C152_)
		bit 5, a
		jr z, _LABEL_84A_
		ld bc, _DATA_780F_
_LABEL_84A_:	
		ld d, $00
		ld h, d
		ld a, (_RAM_C159_)
		add a, a
		add a, a
		ld l, a
		add hl, hl
		add hl, hl
		add hl, hl
		ld a, (_RAM_C15A_)
		add a, a
		ld e, a
		add hl, de
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		inc hl
		ld (_RAM_C182_), a
		ld (_RAM_C183_), hl
		and $C0
		jp z, _LABEL_8D6_
		xor $C0
		jp z, _LABEL_8D6_
		ld a, (_RAM_C182_)
		rrca
		rrca
		rrca
		and $07
		ret z
		ld b, a
		ld hl, _RAM_C3E0_
		ld c, $00
-:	
		bit 7, (hl)
		jr nz, +
		inc c
		ld de, $0020
		add hl, de
		djnz -
+:	
		cp c
		jr z, +
		jp nc, ++
+:	
		ld b, a
		ld hl, (_RAM_C183_)
		ld a, (hl)
		ld hl, _RAM_C17A_
-:	
		ld (hl), a
		cp $1D
		jr z, ++
		cp $1E
		jr z, ++
		cp $1F
		jr z, ++
		cp $27
		jr z, ++
		cp $0B
		jr z, ++
		cp $38
		jr z, ++
		cp $2A
		jr z, ++
		cp $44
		jr z, ++
		cp $45
		jr z, ++
		cp $46
		jr z, ++
		inc hl
		djnz -
++:	
		ld a, (_RAM_C182_)
		and $C0
		cp $80
		ret nz
		ld hl, (_RAM_C183_)
		inc hl
		ld (_RAM_C183_), hl
_LABEL_8D6_:	
		ld a, (_RAM_C182_)
		rrca
		rrca
		rrca
		and $07
		ld e, a
		sub $07
		neg
		ret z
		ld d, $00
		push de
		ld a, e
		add a, a
		add a, a
		add a, a
		add a, a
		add a, a
		ld e, a
		ld iy, $C3C0
		add iy, de
		pop de
		ld hl, $C179
		add hl, de
		ld de, (_RAM_C183_)
		ld a, (_RAM_C182_)
		and $07
		ret z
		ld b, a
-:	
		inc hl
		exx
		ld de, $0020
		add iy, de
		exx
		bit 7, (iy+0)
		jr nz, +
		ld a, (de)
		cp $00
		jr z, +
		cp $12
		jr z, ++
		ld (hl), a
+:	
		ld a, (_RAM_C182_)
		and $C0
		xor $C0
		jr z, +
		inc de
+:	
		djnz -
		ret
	
++:	
		ld hl, _RAM_C177_
		res 7, (hl)
		ld a, $05
		ld (_RAM_C16F_), a
		ret
	
_LABEL_934_:	
		ld a, (_RAM_C177_)
		rlca
		ret nc
		ld hl, (_RAM_C186_)
		dec hl
		ld (_RAM_C186_), hl
		ld a, l
		or h
		jr nz, ++++
		ld hl, $01C2
		ld (_RAM_C186_), hl
_LABEL_94A_:	
		ld hl, _RAM_C15A_
		inc (hl)
		ld a, (hl)
		cp $10
		jr c, ++++
		ld (hl), $00
		ld a, (_RAM_C159_)
		inc a
		ld hl, _RAM_C152_
		bit 5, (hl)
		jr nz, +
		cp $09
		jr c, +++
		jr ++
	
+:	
		cp $03
		jr c, +++
++:	
		xor a
+++:	
		ld (_RAM_C159_), a
++++:	
		ld hl, _RAM_C188_
		dec (hl)
		ret nz
		ld (hl), $48
		ld hl, _RAM_C185_
		set 7, (hl)
		ret
	
_LABEL_97B_:	
		ld hl, _RAM_C177_
		bit 7, (hl)
		ret z
		inc hl
		dec (hl)
		ret nz
		ld (hl), $08
		inc hl
		push hl
		ld e, (hl)
		ld d, $00
		inc hl
		add hl, de
-:	
		ld a, (hl)
		or a
		jr nz, +
		inc hl
		inc e
		ld a, $07
		sub e
		jr nz, -
		pop hl
		ld (hl), a
		ret
	
+:	
		ld (hl), $00
		ld c, a
		ld b, e
		inc e
		ld a, $07
		sub e
		jr nz, +
		ld e, a
+:	
		pop hl
		ld (hl), e
		ld a, b
		add a, a
		add a, a
		add a, a
		add a, a
		add a, a
		ld e, a
		ld hl, $C3E0
		add hl, de
		push hl
		pop iy
		ld (iy+0), $80
		ld (iy+2), c
		ret
	
