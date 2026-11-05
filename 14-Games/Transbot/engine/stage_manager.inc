; Stage phase sequencer ($050A-$0816)
_LABEL_50A_:	
		ld a, (_RAM_C16F_)
		ld hl, _DATA_513_
		jp _LABEL_1AE6_
	
; Jump Table from 513 to 51E (6 entries, indexed by _RAM_C16F_)	
_DATA_513_:	
	.dw _LABEL_51F_ _LABEL_547_ _LABEL_5BC_ _LABEL_5F3_ _LABEL_6CE_ _LABEL_64F_
	
; 1st entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_51F_:	
		xor a
		ld hl, (_RAM_C15F_)
		ld de, $001A
		sbc hl, de
		ret c
		ld a, (_RAM_C152_)
		bit 3, a
		ret z
		ld iy, _RAM_C4C0_
		bit 7, (iy+0)
		ret nz
		ld (iy+0), $80
		ld (iy+2), $0E
		ld hl, $0000
		ld (_RAM_C15F_), hl
		ret
	
; 2nd entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_547_:	
		ld a, (_RAM_C170_)
		dec a
		jr z, +
		ld a, $01
		ld (_RAM_C170_), a
		ld a, $80
		ld (_RAM_C5E0_), a
		ld (_RAM_C600_), a
		ld a, $30
		ld (_RAM_C5FF_), a
		ld (_RAM_C61F_), a
		ld hl, _RAM_C152_
		set 3, (hl)
		call _LABEL_94A_
		call _LABEL_692_
		ld hl, _RAM_C000_
		set 2, (hl)
+:	
		ld hl, (_RAM_C171_)
		dec hl
		ld (_RAM_C171_), hl
		ld a, l
		or h
		ret nz
		xor a
		ld (_RAM_C16F_), a
		ld (_RAM_C170_), a
		ld (_RAM_C18B_), a
		ld (_RAM_C31F_), a
		ld ix, _RAM_C4C0_
		call _LABEL_A40_
		ld hl, _DATA_5B9_
		ld de, _RAM_C177_
		ld bc, $0003
		ldir
		ld hl, $012C
		ld (_RAM_C186_), hl
		ld a, $48
		ld (_RAM_C188_), a
		ld a, (_RAM_C152_)
		bit 5, a
		jr nz, +
		ld a, $83
		ld (_RAM_DE00_), a
		ret
	
+:	
		ld a, $84
		ld (_RAM_DE00_), a
		ret
	
; Data from 5B9 to 5BB (3 bytes)	
_DATA_5B9_:	
	.db $80 $01 $00
	
; 3rd entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_5BC_:	
		ld hl, _RAM_C170_
		ld a, (hl)
		dec a
		jr z, +
		dec a
		jr z, ++
		ld (hl), $01
		ld hl, _RAM_C177_
		res 7, (hl)
		ld hl, _RAM_C152_
		res 3, (hl)
+:	
		ld hl, _RAM_C3E0_
		ld b, $10
		call _LABEL_F99_
		ret nz
		ld a, $02
		ld (_RAM_C170_), a
		ld a, $01
		ld (_RAM_C31F_), a
++:	
		ld a, (_RAM_C31F_)
		bit 7, a
		ret z
		ld a, $02
		ld (_RAM_C16E_), a
		jp +++
	
; 4th entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_5F3_:	
		ld hl, _RAM_C170_
		ld a, (hl)
		dec a
		jr z, +
		dec a
		jr z, ++
		ld (hl), $01
		ld hl, _RAM_C177_
		res 7, (hl)
		ld hl, _RAM_C152_
		res 3, (hl)
+:	
		ld hl, _RAM_C3E0_
		ld b, $10
		call _LABEL_F99_
		ret nz
		ld a, $02
		ld (_RAM_C170_), a
		ld a, $02
		ld (_RAM_C31F_), a
++:	
		ld a, (_RAM_C31F_)
		bit 7, a
		ret z
		ld a, $01
		ld (_RAM_C16E_), a
+++:	
		ld hl, _RAM_C159_
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld de, _RAM_C159_
		ld a, (hl)
		ld (de), a
		inc hl
		inc de
		ld a, (hl)
		ld (de), a
		inc de
		ex de, hl
		ld (hl), c
		inc hl
		ld (hl), b
		xor a
		ld (_RAM_C170_), a
		ld (_RAM_C16F_), a
		ld hl, $0001
		ld (_RAM_C171_), hl
		ld a, $00
		ld (_RAM_DE00_), a
		ret
	
; 6th entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_64F_:	
		ld hl, _RAM_C3E0_
		ld b, $10
		call _LABEL_F99_
		ret nz
		ld hl, _RAM_C152_
		res 3, (hl)
		ld ix, _RAM_C3E0_
		ld (ix+0), $82
		ld (ix+22), $04
		ld (ix+2), $12
		ld (ix+13), $70
		ld (ix+16), $D0
		ld (ix+4), $4B
		ld (ix+31), $09
		ld hl, $0100
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+29), $10
		xor a
		ld (ix+23), a
		ld (_RAM_C16F_), a
		ret
	
_LABEL_692_:	
		ld iy, _RAM_C300_
		ld a, (iy+0)
		and $07
		or $80
		ld (iy+0), a
		ld (iy+13), $60
		ld (iy+16), $08
		ret
	
_LABEL_6A9_:	
		ld a, $C0
		ld (_RAM_C4C0_), a
		ld a, $50
		ld (_RAM_C4C2_), a
		ld a, $80
		ld (_RAM_C300_), a
		ld a, $00
		ld (_RAM_C302_), a
		ld a, $03
		ld (_RAM_C31F_), a
		ld a, $95
		ld (_RAM_DE00_), a
		ld hl, $0120
		ld (_RAM_C171_), hl
		ret
	
; 5th entry of Jump Table from 513 (indexed by _RAM_C16F_)	
_LABEL_6CE_:	
		ld hl, _RAM_C3E0_
		ld b, $10
		call _LABEL_F99_
		ret nz
		ld hl, _RAM_C000_
		res 2, (hl)
		bit 5, (hl)
		jp nz, _LABEL_75F_
		ld a, (_RAM_C170_)
		dec a
		jp z, _LABEL_747_
		dec a
		jp z, ++
		ld a, $01
		ld (_RAM_C13F_), a
		ld (_RAM_C13E_), a
		ld a, (_RAM_C15D_)
		dec a
		ld (_RAM_C15D_), a
		jr nz, +
		res 6, (hl)
		ld a, $01
		ld (_RAM_C170_), a
		ld hl, $0078
		ld (_RAM_C171_), hl
		ret
	
+:	
		bit 7, (hl)
		jp z, _LABEL_7F1_
++:	
		res 4, (hl)
		set 5, (hl)
		ld a, $01
		ld (_RAM_C301_), a
		ld a, $01
		ld (_RAM_C13F_), a
		ld (_RAM_C13E_), a
		ld a, $82
		ld (_RAM_C168_), a
		ld a, (_RAM_C152_)
		and $20
		ld (_RAM_C200_), a
		ld hl, _RAM_C153_
		ld de, _RAM_C201_
		ld bc, $0015
		ldir
		ld hl, _RAM_C220_
		ld de, _RAM_C152_
		ld bc, $0016
		ldir
		jp _LABEL_7DD_
	
_LABEL_747_:	
		ld hl, (_RAM_C171_)
		dec hl
		ld (_RAM_C171_), hl
		ld a, l
		or h
		ret nz
		ld a, (_RAM_C000_)
		bit 7, a
		jp z, _LABEL_811_
		ld a, $02
		ld (_RAM_C170_), a
		ret
	
_LABEL_75F_:	
		ld a, (_RAM_C170_)
		dec a
		jp z, _LABEL_7C5_
		dec a
		jp z, ++
		ld a, $01
		ld (_RAM_C13F_), a
		ld (_RAM_C13E_), a
		ld a, (_RAM_C15D_)
		dec a
		ld (_RAM_C15D_), a
		jr nz, +
		res 7, (hl)
		ld a, $01
		ld (_RAM_C170_), a
		ld hl, $0078
		ld (_RAM_C171_), hl
		ret
	
+:	
		bit 6, (hl)
		jp z, _LABEL_7F1_
++:	
		res 5, (hl)
		set 4, (hl)
		ld a, $00
		ld (_RAM_C301_), a
		ld a, $01
		ld (_RAM_C13F_), a
		ld (_RAM_C13E_), a
		ld a, $81
		ld (_RAM_C168_), a
		ld a, (_RAM_C152_)
		and $20
		ld (_RAM_C220_), a
		ld hl, _RAM_C153_
		ld de, _RAM_C221_
		ld bc, $0015
		ldir
		ld hl, _RAM_C200_
		ld de, _RAM_C152_
		ld bc, $0016
		ldir
		jp _LABEL_7DD_
	
_LABEL_7C5_:	
		ld hl, (_RAM_C171_)
		dec hl
		ld (_RAM_C171_), hl
		ld a, l
		or h
		ret nz
		ld a, (_RAM_C000_)
		bit 6, a
		jp z, _LABEL_811_
		ld a, $02
		ld (_RAM_C170_), a
		ret
	
_LABEL_7DD_:	
		ld a, $01
		ld hl, _RAM_C152_
		bit 5, (hl)
		jr z, +
		ld a, $02
+:	
		ld (_RAM_C16E_), a
		xor a
		ld (_RAM_C16F_), a
		jr +
	
_LABEL_7F1_:	
		ld a, $01
		ld (_RAM_C16F_), a
		xor a
		ld (_RAM_C16E_), a
+:	
		ld hl, _RAM_C174_
		ld a, (hl)
		ld (hl), $E0
		inc hl
		ld (hl), a
		xor a
		ld (_RAM_C170_), a
		ld a, (_RAM_C000_)
		bit 3, a
		jp nz, _LABEL_2543_
		jp _LABEL_6A9_
	
_LABEL_811_:	
		ld a, $85
		ld (_RAM_C003_), a
		ret
	
