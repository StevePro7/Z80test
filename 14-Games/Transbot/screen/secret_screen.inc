; Game state 3 - SECRET COMMAND screen ($031D-$0346)
; 4th entry of Jump Table from 268 (indexed by _RAM_C003_)	
_LABEL_31D_:	
		ld hl, _RAM_C003_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		inc hl
		ld (hl), $0A
		di
		call _LABEL_2800_
		call _LABEL_4EA_
		ld hl, _DATA_2F23_
		call _LABEL_2549_
		call _LABEL_2F01_
		call _LABEL_27FB_
		ei
+:	
		ld hl, _RAM_C004_
		dec (hl)
		ret nz
		ld (hl), $10
		jp _LABEL_2EAC_
	
