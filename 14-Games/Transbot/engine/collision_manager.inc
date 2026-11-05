; Collision detection ($10B7-$138E)
_LABEL_10B7_:	
		ld a, (ix+0)
		bit 6, a
		ret nz
		and $0F
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_10EC_
		add hl, de
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		call _LABEL_11A6_
		ld a, (ix+30)
		inc a
		cp $04
		jr c, +
		xor a
+:	
		ld (ix+30), a
		ld hl, _DATA_10E4_
		jp _LABEL_1AE6_
	
; Jump Table from 10E4 to 10EB (4 entries, indexed by unknown)	
_DATA_10E4_:	
	.dw _LABEL_1104_ _LABEL_110C_ _LABEL_1172_ _LABEL_117A_
	
; Data from 10EC to 1103 (24 bytes)	
_DATA_10EC_:	
	.db $08 $07 $00 $17 $08 $07 $00 $17 $04 $14 $04 $08 $08 $07 $00 $17
	.db $04 $14 $04 $08 $04 $14 $04 $08
	
; 1st entry of Jump Table from 10E4 (indexed by unknown)	
_LABEL_1104_:	
		ld hl, _RAM_C3E0_
		ld b, $04
		jp +
	
; 2nd entry of Jump Table from 10E4 (indexed by unknown)	
_LABEL_110C_:	
		ld hl, _RAM_C460_
		ld b, $04
+:	
		call _LABEL_11D5_
		ret z
		ld a, (iy+0)
		and $07
		cp $04
		jp z, +
		cp $06
		jp z, ++
		cp $07
		jp z, _LABEL_1186_
		cp $05
		jp z, +++
		cp $02
		jp z, _LABEL_1186_
		ld (iy+2), $0F
-:	
		set 6, (iy+0)
		xor a
		ld (iy+11), a
		ld (iy+10), a
		ld (iy+3), a
		call _LABEL_2DDE_
		jp _LABEL_1186_
	
+:	
		ld hl, _RAM_C174_
		set 7, (hl)
		jp _LABEL_A34_
	
++:	
		ld (iy+2), $11
		jp -
	
+++:	
		ld (iy+2), $0F
		set 6, (iy+0)
		xor a
		ld (iy+11), a
		ld (iy+10), a
		ld (iy+3), a
		call _LABEL_2DDE_
		jp ++
	
; 3rd entry of Jump Table from 10E4 (indexed by unknown)	
_LABEL_1172_:	
		ld hl, _RAM_C4E0_
		ld b, $04
		jp +
	
; 4th entry of Jump Table from 10E4 (indexed by unknown)	
_LABEL_117A_:	
		ld hl, _RAM_C560_
		ld b, $04
+:	
		call _LABEL_11D5_
		ret z
		call _LABEL_A34_
_LABEL_1186_:	
		ld a, $F4
		ld (_RAM_C5FF_), a
++:	
		ld a, $96
		ld (_RAM_DE00_), a
		ret
	
_LABEL_1191_:	
		ld a, (_RAM_C300_)
		and $07
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_11BD_
		add hl, de
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
_LABEL_11A6_:	
		ld a, (ix+13)
		add a, c
		ld (_RAM_C108_), a
		add a, b
		ld (_RAM_C109_), a
		ld a, (ix+16)
		add a, e
		ld (_RAM_C10A_), a
		add a, d
		ld (_RAM_C10B_), a
		ret
	
; Data from 11BD to 11D4 (24 bytes)	
_DATA_11BD_:	
	.db $02 $04 $02 $04 $00 $10 $00 $08 $00 $40 $F8 $20 $00 $08 $FC $14
	.db $00 $08 $00 $08 $00 $08 $00 $08
	
_LABEL_11D5_:	
		push bc
		push hl
		call +
		pop hl
		pop bc
		or a
		ret nz
		ld de, $0020
		add hl, de
		djnz _LABEL_11D5_
		ret
	
+:	
		xor a
		push hl
		pop iy
		bit 7, (iy+0)
		ret z
		bit 6, (iy+0)
		ret nz
		ld l, (iy+13)
		ld a, (iy+5)
		add a, a
		add a, a
		add a, a
		add a, l
		ld h, a
_LABEL_11FE_:	
		ld e, (iy+16)
		ld a, (iy+6)
		add a, a
		add a, a
		add a, a
		add a, e
		jr nc, +
		ld a, e
+:	
		ld d, a
		ld a, (_RAM_C108_)
		cp l
		jr z, +
		jr nc, ++
		jr +++
	
+:	
		call ++++
		ld hl, _DATA_10AB_
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ret
	
++:	
		cp h
		jr z, +
		jr c, +
		xor a
		jr ++
	
+:	
		call ++++
++:	
		ld e, a
		ld d, $00
		ld hl, _DATA_10AF_
		add hl, de
		ld a, (hl)
		ret
	
+++:	
		ld a, (_RAM_C109_)
		cp l
		jr z, +
		jr nc, +
		xor a
		jr ++
	
+:	
		call ++++
++:	
		ld e, a
		ld d, $00
		ld hl, _DATA_10B3_
		add hl, de
		ld a, (hl)
		ret
	
++++:	
		ld a, (_RAM_C10A_)
		cp e
		jr z, +++
		jr c, +
		cp d
		jr z, +++++
		jr c, +++++
		jr ++
	
+:	
		ld a, (_RAM_C10B_)
		cp e
		jr z, ++++
		jr nc, ++++
		jr ++
	
++:	
		xor a
		ret
	
+++:	
		ld a, $01
		ret
	
++++:	
		ld a, $02
		ret
	
+++++:	
		ld a, $03
		ret
	
_LABEL_1271_:	
		bit 6, (ix+0)
		ret nz
		call _LABEL_1191_
		ld a, (ix+30)
		inc a
		cp $02
		jr c, +
		xor a
+:	
		ld (ix+30), a
		ld hl, _DATA_128B_
		jp _LABEL_1AE6_
	
; Jump Table from 128B to 128E (2 entries, indexed by unknown)	
_DATA_128B_:	
	.dw _LABEL_128F_ _LABEL_1296_
	
; 1st entry of Jump Table from 128B (indexed by unknown)	
_LABEL_128F_:	
		ld hl, _RAM_C3E0_
		ld b, $04
		jr +
	
; 2nd entry of Jump Table from 128B (indexed by unknown)	
_LABEL_1296_:	
		ld hl, _RAM_C460_
		ld b, $04
+:	
		call _LABEL_11D5_
		ret z
		ld a, (iy+0)
		and $07
		cp $07
		jp z, _LABEL_A40_
		cp $02
		jp z, +
		cp $04
		jp z, _LABEL_131C_
		cp $05
		jp z, _LABEL_1328_
		cp $03
		jp z, _LABEL_1342_
		cp $06
		jp z, _LABEL_135A_
		cp $01
		jp z, _LABEL_1376_
_LABEL_12C7_:	
		ld (iy+2), $0F
_LABEL_12CB_:	
		set 6, (iy+0)
		xor a
		ld (iy+11), a
		ld (iy+10), a
		ld (iy+3), a
		ld a, $8F
		ld (_RAM_DE00_), a
		call _LABEL_2DDE_
		jp _LABEL_1384_
	
+:	
		set 6, (ix+0)
		ld (ix+2), $0F
		xor a
		ld (ix+11), a
		ld (ix+10), a
		ld (ix+3), a
		ld a, (ix+0)
		and $07
		cp $02
		jr nz, +
		ld a, (iy+13)
		ld (ix+13), a
+:	
		ld a, (iy+13)
		add a, $0E
		ld l, a
		add a, $08
		ld h, a
		call _LABEL_11FE_
		ret z
		set 6, (iy+0)
		ld a, $8F
		ld (_RAM_DE00_), a
		ret
	
_LABEL_131C_:	
		bit 4, (iy+0)
		ret nz
		set 4, (iy+0)
		jp _LABEL_1384_
	
_LABEL_1328_:	
		ld (iy+2), $10
		set 6, (iy+0)
		xor a
		ld (iy+11), a
		ld (iy+10), a
		ld (iy+3), a
		ld a, $8F
		ld (_RAM_DE00_), a
		jp _LABEL_1384_
	
_LABEL_1342_:	
		ld a, (ix+0)
		and $07
		cp $03
		jr nz, +
		ld hl, _RAM_C18B_
		set 7, (hl)
		jp _LABEL_12C7_
	
+:	
		set 6, (iy+0)
		jp _LABEL_1384_
	
_LABEL_135A_:	
		ld a, (iy+4)
		sub $3C
		add a, a
		add a, a
		add a, a
		add a, (iy+13)
		ld l, a
		add a, $08
		ld h, a
		call _LABEL_11FE_
		jp z, _LABEL_A40_
		ld (iy+2), $11
		jp _LABEL_12CB_
	
_LABEL_1376_:	
		ld a, (ix+0)
		and $08
		cp $08
		jp z, _LABEL_12C7_
		set 6, (iy+0)
_LABEL_1384_:	
		ld a, (ix+0)
		and $08
		cp $08
		ret z
		jp _LABEL_A40_
	
