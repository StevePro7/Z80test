; Game state 1 ($02B9-$031C)
; 2nd entry of Jump Table from 268 (indexed by _RAM_C003_)	
_LABEL_2B9_:	
		ld hl, _RAM_C003_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		inc hl
		ld bc, $0250
		ld (hl), c
		inc hl
		ld (hl), b
		ld a, $80
		ld (_RAM_C008_), a
		di
		call _LABEL_2800_
		ld hl, $0000
		ld de, _DATA_30C_
		ld b, $11
		call _LABEL_28B6_
		call _LABEL_2912_
		ld de, _RAM_D000_
		ld hl, $2C00
		ld bc, $0680
		call _LABEL_2864_
		call _LABEL_4EA_
		call _LABEL_27FB_
		ei
		ld a, $81
		ld (_RAM_DE00_), a
		ret
	
+:	
		ld hl, (_RAM_C004_)
		dec hl
		ld (_RAM_C004_), hl
		ld a, l
		or h
		ret nz
		ld (_RAM_C008_), a
		ld a, $82
		ld (_RAM_C003_), a
		ret
	
; Data from 30C to 31C (17 bytes)	
_DATA_30C_:	
	.db $30 $3F $2F $1B $17 $13 $3E $10 $3F $3F $3F $3F $3F $3F $3F $3F
	.db $30
	
