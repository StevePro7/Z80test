; Controller input and demo playback ($2433-$2548)
_LABEL_2433_:	
		ld a, (_RAM_C000_)
		bit 2, a
		ret z
		bit 3, a
		jp nz, _LABEL_2519_
		bit 5, a
		jr nz, +
		bit 4, a
		ret z
		call _LABEL_24BF_
		ld (_RAM_C10C_), a
		ret
	
+:	
		call _LABEL_2453_
		ld (_RAM_C10D_), a
		ret
	
_LABEL_2453_:	
		ld a, (_RAM_C002_)
		and a
		jr z, +
		in a, (Port_IOPort1)
		ld c, a
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		cpl
		and $3F
		ret
	
+:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		ld c, a
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		ld c, a
		ld a, $01
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 2, a
		jr nz, +
		res 2, c
+:	
		bit 3, a
		jr nz, +
		res 1, c
+:	
		ld a, $02
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 1, a
		jr nz, +
		res 0, c
+:	
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 2, a
		jr nz, +
		res 3, c
+:	
		ld a, $05
		out (_PORT_DE_), a
		in a, (Port_IOPort2)
		bit 3, a
		jr nz, +
		res 5, c
+:	
		ld a, $06
		out (_PORT_DE_), a
		in a, (Port_IOPort2)
		bit 2, a
		jr nz, +
		res 4, c
+:	
		ld a, c
		cpl
		and $3F
		ret
	
_LABEL_24BF_:	
		ld a, (_RAM_C002_)
		and a
		jr z, +
		in a, (Port_IOPort1)
		cpl
		and $3F
		ret
	
+:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		ld c, a
		ld a, $02
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 4, c
+:	
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 5, c
+:	
		ld a, $04
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 1, c
+:	
		ld a, $05
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 2, c
+:	
		ld a, $06
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		res 3, c
+:	
		bit 6, a
		jr nz, +
		res 0, c
+:	
		ld a, c
		cpl
		and $3F
		ret
	
_LABEL_2519_:	
		ld ix, _RAM_C18D_
		ld l, (ix+3)
		ld h, (ix+4)
-:	
		ld a, (hl)
		or a
		jr z, _LABEL_2543_
		cp (ix+1)
		jr z, +
		inc hl
		ld a, (hl)
		ld (_RAM_C10C_), a
		inc (ix+1)
		ret
	
+:	
		inc hl
		inc hl
		ld (ix+3), l
		ld (ix+4), h
		ld (ix+1), $00
		jr -
	
_LABEL_2543_:	
		ld hl, _RAM_C18D_
		set 7, (hl)
		ret
	
