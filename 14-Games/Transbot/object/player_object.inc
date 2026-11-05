; Player object and weapons ($0C29-$0F86)
; 1st entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_C29_:	
		ld hl, _RAM_C10C_
		ld a, (ix+1)
		or a
		jr z, +
		ld hl, _RAM_C10D_
+:	
		ld c, (hl)
		ld (ix+22), c
		ld a, (ix+31)
		dec a
		jp z, ++
		dec a
		jp z, _LABEL_C8C_
		dec a
		jr nz, +
		ld a, $FC
		and c
		ld (ix+22), a
+:	
		call _LABEL_10B7_
		bit 6, (ix+0)
		ret nz
		call _LABEL_CA3_
_LABEL_C58_:	
		call _LABEL_CDC_
		call _LABEL_AB9_
		ld a, (ix+22)
		ld (ix+29), a
		ret
	
++:	
		ld a, $D7
		cp (ix+16)
		jr c, +
		ld (ix+22), $08
		jp _LABEL_C58_
	
+:	
		ld a, (ix+5)
		add a, a
		add a, a
		add a, a
		add a, (ix+13)
		cp $CF
		jr nc, +
		ld (ix+22), $02
		jp _LABEL_C58_
	
+:	
		set 7, (ix+31)
		ret
	
_LABEL_C8C_:	
		ld a, (ix+6)
		add a, a
		add a, a
		add a, a
		add a, (ix+16)
		jr c, +
		ld (ix+22), $08
		jp _LABEL_C58_
	
+:	
		set 7, (ix+31)
		ret
	
_LABEL_CA3_:	
		ld c, (ix+22)
		ld e, (ix+13)
		ld d, (ix+16)
		ld a, $10
		cp e
		jr c, +
		res 0, c
+:	
		ld a, (ix+5)
		add a, a
		add a, a
		add a, a
		sub $B0
		neg
		cp e
		jr nc, +
		res 1, c
+:	
		ld a, $08
		cp d
		jr c, +
		res 2, c
+:	
		ld a, (ix+6)
		add a, a
		add a, a
		add a, a
		sub $E0
		neg
		cp d
		jr nc, +
		res 3, c
+:	
		ld (ix+22), c
		ret
	
_LABEL_CDC_:	
		ld b, (ix+22)
		rrc b
		call c, _LABEL_D27_
		rrc b
		call c, _LABEL_D2D_
		rrc b
		call c, _LABEL_D33_
		rrc b
		call c, _LABEL_D39_
		rrc b
		call c, _LABEL_D3F_
		rrc b
		ret nc
		ld a, (ix+29)
		and $20
		ret nz
		exx
		ld a, $07
		and (ix+0)
		ld hl, _DATA_D1B_
		call _LABEL_1AE6_
		ld a, (_RAM_C174_)
		and $3F
		jr z, +
		ld a, $FF
		ld (_RAM_C61F_), a
+:	
		exx
		ret
	
; Jump Table from D1B to D26 (6 entries, indexed by unknown)	
_DATA_D1B_:	
	.dw _LABEL_D51_ _LABEL_D91_ _LABEL_DD1_ _LABEL_E0E_ _LABEL_E4B_ _LABEL_F0F_
	
_LABEL_D27_:	
		ld de, $0100
		jp _LABEL_1403_
	
_LABEL_D2D_:	
		ld de, $0100
		jp _LABEL_13EB_
	
_LABEL_D33_:	
		ld de, $0200
		jp _LABEL_13C5_
	
_LABEL_D39_:	
		ld de, $0200
		jp _LABEL_13AA_
	
_LABEL_D3F_:	
		ld a, (ix+29)
		and $10
		ret nz
		exx
		ld hl, _RAM_C174_
		bit 7, (hl)
		jr z, +
		set 6, (hl)
+:	
		exx
		ret
	
; 1st entry of Jump Table from D1B (indexed by unknown)	
_LABEL_D51_:	
		ld de, _DATA_184_
		ld b, $03
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		ld (iy+4), $0F
		ld (iy+2), $02
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $08
		ld (iy+16), a
		ld hl, $0480
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+0), $80
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $85
		ld (_RAM_DE00_), a
		ret
	
; 2nd entry of Jump Table from D1B (indexed by unknown)	
_LABEL_D91_:	
		ld de, _DATA_184_
		ld b, $03
		call _LABEL_F87_
		ret nz
		push hl
		pop iy
		ld (iy+4), $10
		ld (iy+2), $02
		ld a, (ix+13)
		add a, $04
		ld (iy+13), a
		ld a, (ix+16)
		add a, $10
		ld (iy+16), a
		ld hl, $0600
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+0), $81
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $86
		ld (_RAM_DE00_), a
		ret
	
; 3rd entry of Jump Table from D1B (indexed by unknown)	
_LABEL_DD1_:	
		ld hl, _RAM_C320_
		bit 7, (hl)
		ret nz
		push hl
		pop iy
		ld (iy+4), $11
		ld (iy+2), $02
		ld a, (ix+13)
		sub $10
		ld (iy+13), a
		ld a, (ix+16)
		add a, $0C
		ld (iy+16), a
		ld hl, $0500
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+0), $8A
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $87
		ld (_RAM_DE00_), a
		ret
	
; 4th entry of Jump Table from D1B (indexed by unknown)	
_LABEL_E0E_:	
		ld hl, _RAM_C320_
		bit 7, (hl)
		ret nz
		push hl
		pop iy
		ld (iy+4), $16
		ld (iy+2), $02
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $10
		ld (iy+16), a
		ld hl, $0800
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+0), $8B
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $88
		ld (_RAM_DE00_), a
		ret
	
; 5th entry of Jump Table from D1B (indexed by unknown)	
_LABEL_E4B_:	
		ld hl, _RAM_C320_
		ld b, $03
		call _LABEL_F99_
		jr z, +
		ld hl, _RAM_C380_
		ld b, $03
		call _LABEL_F99_
		ret nz
+:	
		push hl
		pop iy
		ld (iy+4), $13
		ld (iy+2), $03
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $10
		ld (iy+16), a
		ld hl, $0459
		ld (iy+20), l
		ld (iy+21), h
		ld hl, $0280
		ld (iy+18), l
		ld (iy+19), h
		ld (iy+22), $09
		ld (iy+29), $10
		ld (iy+0), $8C
		ld de, $0020
		add iy, de
		ld (iy+4), $15
		ld (iy+2), $03
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $10
		ld (iy+16), a
		ld hl, $0500
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+29), $10
		ld (iy+0), $8C
		ld de, $0020
		add iy, de
		ld (iy+4), $14
		ld (iy+2), $03
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $10
		ld (iy+16), a
		ld hl, $0459
		ld (iy+20), l
		ld (iy+21), h
		ld hl, $0280
		ld (iy+18), l
		ld (iy+19), h
		ld (iy+22), $0A
		ld (iy+29), $10
		ld (iy+0), $8C
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $89
		ld (_RAM_DE00_), a
		ret
	
; 6th entry of Jump Table from D1B (indexed by unknown)	
_LABEL_F0F_:	
		ld hl, _RAM_C320_
		ld b, $02
		call _LABEL_F99_
		jr z, +
		ld hl, _RAM_C380_
		ld b, $02
		call _LABEL_F99_
		ret nz
+:	
		push hl
		pop iy
		ld (iy+4), $12
		ld (iy+2), $02
		ld a, (ix+13)
		add a, $04
		ld (iy+13), a
		ld a, (ix+16)
		add a, $08
		ld (iy+16), a
		ld hl, $0600
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $08
		ld (iy+0), $85
		ld de, $0020
		add iy, de
		ld (iy+4), $12
		ld (iy+2), $02
		ld a, (ix+13)
		add a, $08
		ld (iy+13), a
		ld a, (ix+16)
		add a, $08
		ld (iy+16), a
		ld hl, $0600
		ld (iy+20), l
		ld (iy+21), h
		ld (iy+22), $04
		ld (iy+0), $85
		ld a, (_RAM_C16F_)
		or a
		ret nz
		ld a, $8A
		ld (_RAM_DE00_), a
		ret
	
