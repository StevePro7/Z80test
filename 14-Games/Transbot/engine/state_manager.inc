; Main loop and game state dispatcher ($024F-$0273)
_LABEL_24F_:	
		call _LABEL_27A8_
		ld hl, _LABEL_24F_	; Overriding return address
		push hl
		ld a, (_RAM_C003_)
		and $0F
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_268_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
; Jump Table from 268 to 273 (6 entries, indexed by _RAM_C003_)	
_DATA_268_:	
	.dw _LABEL_274_ _LABEL_2B9_ _LABEL_347_ _LABEL_31D_ _LABEL_3B2_ _LABEL_3EE_
	
