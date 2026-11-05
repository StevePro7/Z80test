; Game state 0 ($0274-$02B8)
; 1st entry of Jump Table from 268 (indexed by _RAM_C003_)	
_LABEL_274_:	
		jr +
	
	; Data from 276 to 2AE (57 bytes)
	.db $21 $03 $C0 $CB $76 $20 $28 $CB $F6 $23 $01 $F0 $00 $71 $23 $70
	.db $F3 $CD $00 $28 $CD $D3 $27 $21 $00 $2C $11 $B6 $43 $01 $90 $00
	.db $3E $01 $CD $C7 $28 $CD $FB $27 $FB $21 $09 $C0 $CB $FE $C9 $2A
	.db $04 $C0 $2B $22 $04 $C0 $7D $B4 $C0
	
+:	
		xor a
		ld (_RAM_C009_), a
		ld a, $81
		ld (_RAM_C003_), a
		ret
	
