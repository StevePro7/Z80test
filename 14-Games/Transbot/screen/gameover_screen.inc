; Game state 5 ($03EE-$0428)
; 6th entry of Jump Table from 268 (indexed by _RAM_C003_)	
_LABEL_3EE_:	
		ld hl, _RAM_C003_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		inc hl
		ld bc, $00EB
		ld (hl), c
		inc hl
		ld (hl), b
		di
		call _LABEL_2800_
		call _LABEL_4EA_
		ld a, $C3
		ld (_RAM_C168_), a
		ld a, $82
		ld (_RAM_DE00_), a
		call _LABEL_27FB_
		ei
		ret
	
+:	
		ld hl, (_RAM_C004_)
		dec hl
		ld (_RAM_C004_), hl
		ld a, l
		or h
		ret nz
		ld a, $80
		ld (_RAM_C003_), a
		ld a, $00
		ld (_RAM_DE00_), a
		ret
	
