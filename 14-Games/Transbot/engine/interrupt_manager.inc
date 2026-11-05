; VDP (VBlank) interrupt handler ($0FA6-$10B6)
_LABEL_FA6_:	
		push af
		in a, (Port_VDPStatus)
		bit 7, a
		jr nz, ++
		ld a, (_RAM_C152_)
		bit 5, a
		jr nz, +
		ld a, (_RAM_C145_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, $FF
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
+:	
		pop af
		ei
		ret
	
++:	
		ld a, (_RAM_C14F_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		push ix
		push iy
		push af
		push bc
		push de
		push hl
		ex af, af'
		exx
		push af
		push bc
		push de
		push hl
		in a, (Port_IOPort2)
		and $10
		ld hl, _RAM_C022_
		ld c, (hl)
		ld (hl), a
		xor c
		and c
		jp nz, _LABEL_A8_
		ld a, (_RAM_C00C_)
		inc a
		cp $0F
		jr c, +
		ld a, $0F
+:	
		ld (_RAM_C00C_), a
		ld a, (_RAM_C00B_)
		or a
		jp nz, _LABEL_1051_
		ld a, (_RAM_C001_)
		or a
		jp nz, _LABEL_104E_
		ld a, (_RAM_C181_)
		rlca
		jr nc, +
		ld hl, $3F00
		ld de, _RAM_C240_
		ld bc, $0040
		call _LABEL_2864_
		ld hl, $3F80
		ld de, _RAM_C280_
		ld bc, $0080
		call _LABEL_2864_
		ld hl, _RAM_C181_
		res 7, (hl)
+:	
		call +
		call _LABEL_29FA_
		call _LABEL_2433_
		call _LABEL_AEC_
		call _LABEL_1E2_
		call _LABEL_266F_
		call _LABEL_2DFD_
		call _LABEL_2E3E_
		call _LABEL_934_
_LABEL_104E_:	
		call _LABEL_303A_
_LABEL_1051_:	
		ld hl, _RAM_C001_
		ld (hl), $01
		pop hl
		pop de
		pop bc
		pop af
		exx
		ex af, af'
		pop hl
		pop de
		pop bc
		pop af
		pop iy
		pop ix
		pop af
		ei
		ret
	
+:	
		call _LABEL_2C95_
		ld hl, _RAM_C152_
		bit 3, (hl)
		ret z
		ld hl, _RAM_C14B_
		bit 0, (hl)
		jr z, ++
		res 0, (hl)
		ld de, _RAM_C128_
		ld b, $03
		ld a, (_RAM_C152_)
		bit 5, a
		jr z, +
		ld b, $16
		ld de, $C112
+:	
		ld hl, (_RAM_C14C_)
		call +++
++:	
		ld a, (_RAM_C152_)
		bit 5, a
		ret nz
		ld hl, _RAM_C14B_
		bit 1, (hl)
		ret z
		res 1, (hl)
		ld de, _RAM_C12E_
		ld hl, (_RAM_C142_)
		ld b, $08
+++:	
		ld c, $01
		jp _LABEL_2899_
	
; Data from 10AB to 10AE (4 bytes)	
_DATA_10AB_:	
	.db $00 $00 $04 $03
	
; Data from 10AF to 10B2 (4 bytes)	
_DATA_10AF_:	
	.db $00 $01 $06 $05
	
; Data from 10B3 to 10B6 (4 bytes)	
_DATA_10B3_:	
	.db $00 $02 $08 $07
	
