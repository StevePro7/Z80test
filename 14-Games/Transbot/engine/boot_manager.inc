; Cold boot and warm restart ($008A-$0122)
_LABEL_8A_:	
		di
		ld sp, $E000
		im 1
		ld hl, _RAM_C000_
		ld de, _RAM_C000_ + 1
		ld bc, $00FF
		ld (hl), $00
		ldir
		call _LABEL_280B_
		call _LABEL_3465_
		ld b, $0A
		call _LABEL_27EB_
_LABEL_A8_:	
		di
		ld sp, $E000
		call _LABEL_3465_
		ld hl, $0000
		ld (_RAM_C00B_), hl
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1EFF
		ld (hl), $00
		ldir
		in a, (Port_VDPStatus)
		ld b, $14
		ld c, Port_VDPAddress
		ld hl, _DATA_3B_
		otir
		ld hl, $0000
		ld de, _DATA_3_
		ld b, $20
		call _LABEL_28B6_
		call _LABEL_2902_
		ld hl, $2000
		ld de, _RAM_D000_
		ld bc, $0C00
		call _LABEL_2864_
		call _LABEL_28F0_
		ld hl, $0000
		ld de, _RAM_D000_
		ld bc, $0C00
		call _LABEL_2864_
		call _LABEL_28F6_
		ld hl, $0C00
		ld de, _RAM_D000_
		ld bc, $0A00
		call _LABEL_2864_
		call _LABEL_28FC_
		ld hl, $1600
		ld de, _RAM_D000_
		ld bc, $0A00
		call _LABEL_2864_
		call _LABEL_27D3_
		call _LABEL_27FB_
		ld a, $80
		ld (_RAM_C003_), a
		ei
		jp _LABEL_24F_
	
