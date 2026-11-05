; Screen setup and reset ($0429-$0509)
_LABEL_429_:	
		call _LABEL_2800_
		ld hl, $0000
		ld de, _DATA_3_
		ld b, $20
		call _LABEL_28B6_
		call _LABEL_290A_
		ld hl, $2C00
		ld de, _RAM_D000_
		ld bc, $1240
		call _LABEL_2864_
		call _LABEL_27D3_
		ld hl, _DATA_2B4D_
		ld (_RAM_C153_), hl
		ld (_RAM_C221_), hl
		ld a, $FF
		ld (_RAM_C15A_), a
		ld (_RAM_C15C_), a
		ld (_RAM_C228_), a
		ld (_RAM_C22A_), a
		ld c, $03
		ld a, (_RAM_C100_)
		bit 0, a
		jr z, +
		ld c, $0A
+:	
		ld a, c
		ld (_RAM_C15D_), a
		ld (_RAM_C22B_), a
		ld a, $40
		ld (_RAM_C167_), a
		ld (_RAM_C235_), a
		ld a, $01
		ld (_RAM_C13E_), a
		ld (_RAM_C13F_), a
		ld a, $80
		ld (_RAM_C168_), a
		ld hl, _RAM_C10E_
		ld (hl), $00
		inc hl
		ld (hl), $19
		ld hl, _RAM_C240_
		ld de, _RAM_C240_ + 1
		ld bc, $003F
		ld (hl), $E0
		ldir
		ld de, $0020
		ld ix, _RAM_C300_
		ld b, $19
		ld c, $00
-:	
		ld (ix+1), c
		ld (ix+16), $F8
		inc c
		add ix, de
		djnz -
		ld a, $80
		ld (_RAM_C5E0_), a
		ld (_RAM_C600_), a
		ld a, $F0
		ld (_RAM_C5F0_), a
		ld (_RAM_C610_), a
		ld a, $FF
		ld (_RAM_C5ED_), a
		ld a, $07
		ld (_RAM_C60D_), a
		ld a, $07
		ld (_RAM_C5E2_), a
		ld a, $08
		ld (_RAM_C602_), a
		ld a, $4A
		ld (_RAM_C5E4_), a
		ld (_RAM_C604_), a
		ld a, $0A
		ld (_RAM_C176_), a
		call _LABEL_28EA_
		jp _LABEL_27FB_
	
_LABEL_4EA_:	
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1E01
		ld (hl), $00
		ldir
		ld hl, _RAM_C000_
		ld (hl), $00
		in a, (Port_VDPStatus)
		ld b, $14
		ld c, Port_VDPAddress
		ld hl, _DATA_3B_
		otir
		jp _LABEL_27D3_
	
