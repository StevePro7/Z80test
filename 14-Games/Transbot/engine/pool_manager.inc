; Free object slot search ($0F87-$0FA5)
_LABEL_F87_:	
		ld c, b
-:	
		ld a, c
		sub b
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		bit 7, (hl)
		ret z
		djnz -
		ret
	
_LABEL_F99_:	
		push hl
-:	
		bit 7, (hl)
		jr nz, +
		ld de, $0020
		add hl, de
		djnz -
+:	
		pop hl
		ret
	
