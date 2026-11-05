; SECRET COMMAND screen input and text ($2EAC-$2F95)
_LABEL_2EAC_:	
		call _LABEL_2453_
		and $30
		jp nz, _LABEL_2EFB_
		call _LABEL_24BF_
		ld c, a
		and $30
		cp $30
		ret z
		ld hl, _RAM_C012_
		rrc c
		jr c, +++
		rrc c
		jr c, ++
		rrc c
		jr c, +
		rrc c
		ret nc
		res 3, (hl)
		bit 4, a
		jr nz, ++++
		set 3, (hl)
		jr ++++
	
+:	
		res 2, (hl)
		bit 4, a
		jr nz, ++++
		set 2, (hl)
		jr ++++
	
++:	
		res 1, (hl)
		bit 4, a
		jr nz, ++++
		set 1, (hl)
		jr ++++
	
+++:	
		res 0, (hl)
		bit 4, a
		jr nz, ++++
		set 0, (hl)
++++:	
		di
		call _LABEL_2F01_
		ei
		ret
	
_LABEL_2EFB_:	
		ld a, $80
		ld (_RAM_C003_), a
		ret
	
_LABEL_2F01_:	
		ld a, (_RAM_C012_)
		ld hl, $39E0
		ld b, $04
-:	
		ld de, _DATA_2F8A_
		rrca
		jr nc, +
		ld de, _DATA_2F90_
+:	
		push af
		push bc
		ld bc, $0006
		call _LABEL_2864_
		ld de, $0080
		add hl, de
		pop bc
		pop af
		djnz -
		ret
	
; Data from 2F23 to 2F89 (103 bytes)	
_DATA_2F23_:	
	.db $06 $52 $39 $1C $00 $13 $11 $05 $11 $03 $11 $12 $11 $05 $11 $14
	.db $11 $00 $11 $03 $11 $0F $11 $0D $11 $0D $11 $01 $11 $0E $11 $04
	.db $11 $DA $39 $04 $00 $21 $11 $2B $11 $5A $3A $04 $00 $22 $11 $2B
	.db $11 $DA $3A $04 $00 $23 $11 $2B $11 $5A $3B $04 $00 $24 $11 $2B
	.db $11 $CE $3B $22 $00 $05 $11 $18 $11 $09 $11 $14 $11 $00 $11 $22
	.db $11 $10 $11 $00 $11 $02 $11 $15 $11 $14 $11 $14 $11 $0F $11 $0E
	.db $11 $00 $11 $0F $11 $0E $11
	
; Data from 2F8A to 2F8F (6 bytes)	
_DATA_2F8A_:	
	.db $0F $11 $06 $11 $06 $11
	
; Data from 2F90 to 2F95 (6 bytes)	
_DATA_2F90_:	
	.db $0F $11 $0E $11 $00 $11
	
