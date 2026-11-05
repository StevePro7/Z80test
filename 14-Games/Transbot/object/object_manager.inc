; Object list update ($0123-$024E)
_LABEL_123_:	
		ld hl, _DATA_17E_
		ld a, (_RAM_C181_)
		and a
		jr z, +
		ld hl, _DATA_1B0_
+:	
		ld a, (_RAM_C10E_)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		bit 7, (hl)
		jr z, ++
		push hl
		pop ix
		ld hl, +	; Overriding return address
		push hl
		ld hl, _DATA_2F96_
		ld e, (ix+2)
		ld d, $00
		add hl, de
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		bit 7, (ix+0)
		jr z, ++
		call _LABEL_A6C_
		call _LABEL_9BE_
++:	
		ld hl, _RAM_C10E_
		inc (hl)
		ld a, (hl)
		inc hl
		sub (hl)
		jr nz, _LABEL_123_
		dec hl
		ld (hl), a
		ld a, (_RAM_C181_)
		cpl
		and $01
		ld (_RAM_C181_), a
		call _LABEL_A0E_
		ld hl, _RAM_C181_
		set 7, (hl)
		ret
	
; Pointer Table from 17E to 183 (3 entries, indexed by _RAM_C10E_)	
_DATA_17E_:	
	.dw _RAM_C300_ _RAM_C5E0_ _RAM_C600_
	
; Data from 184 to 19F (28 bytes)	
_DATA_184_:	
	.db $20 $C3 $40 $C3 $60 $C3 $80 $C3 $A0 $C3 $C0 $C3 $E0 $C3 $00 $C4
	.db $20 $C4 $40 $C4 $60 $C4 $80 $C4 $A0 $C4 $C0 $C4
	
; Data from 1A0 to 1AF (16 bytes)	
_DATA_1A0_:	
	.db $E0 $C4 $00 $C5 $20 $C5 $40 $C5 $60 $C5 $80 $C5 $A0 $C5 $C0 $C5
	
; Pointer Table from 1B0 to 1E1 (25 entries, indexed by _RAM_C10E_)	
_DATA_1B0_:	
	.dw _RAM_C300_ _RAM_C5E0_ _RAM_C600_ _RAM_C5C0_ _RAM_C5A0_ _RAM_C580_ _RAM_C560_ _RAM_C540_
	.dw _RAM_C520_ _RAM_C500_ _RAM_C4E0_ _RAM_C4C0_ _RAM_C4A0_ _RAM_C480_ _RAM_C460_ _RAM_C440_
	.dw _RAM_C420_ _RAM_C400_ _RAM_C3E0_ _RAM_C3C0_ _RAM_C3A0_ _RAM_C380_ _RAM_C360_ _RAM_C340_
	.dw _RAM_C320_
	
_LABEL_1E2_:	
		ld a, (_RAM_C003_)
		bit 7, a
		ret z
		and $0F
		cp $05
		ret z
		call _LABEL_264B_
		call _LABEL_255E_
		call _LABEL_2453_
		and $30
		jr nz, +
		call _LABEL_24BF_
		and $30
		jr z, +++
		ld c, $50
		jr ++
	
+:	
		ld c, $D0
++:	
		ex af, af'
		ld hl, _RAM_C003_
		ld a, $0F
		and (hl)
		cp $01
		jr nz, +
		ld hl, $C006
		ex af, af'
		cp (hl)
		jr z, ++++
		ld a, c
		ld (_RAM_C000_), a
		ld a, $04
		ld (_RAM_C003_), a
		ret
	
+:	
		ld a, $81
		ld (_RAM_C003_), a
		ex af, af'
		ld (_RAM_C006_), a
		xor a
		ld (_RAM_C009_), a
		ld (_RAM_C008_), a
		ret
	
+++:	
		ex af, af'
		ld a, (_RAM_C003_)
		and $0F
		cp $01
		ret nz
		ex af, af'
		ld (_RAM_C006_), a
		ret
	
++++:	
		ld hl, (_RAM_C004_)
		dec hl
		ld a, l
		or h
		ret nz
		ld a, $03
		ld (_RAM_C003_), a
		ret
	
