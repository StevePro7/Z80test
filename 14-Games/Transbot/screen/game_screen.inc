; Game states 2 and 4 - gameplay start / continue ($0347-$03ED)
; 3rd entry of Jump Table from 268 (indexed by _RAM_C003_)
_LABEL_347_:
		ld hl, _RAM_C003_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		di
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1E01
		ld (hl), $00
		ldir
		call _LABEL_429_
		ld a, $80
		ld (_RAM_C300_), a
		ld a, $00
		ld (_RAM_C302_), a
		ld hl, $0001
		ld (_RAM_C171_), hl
		ld a, $02
		ld (_RAM_C16E_), a
		ld hl, _RAM_C000_
		set 3, (hl)
		ld hl, _DATA_85_
		ld de, _RAM_C18D_
		ld bc, $0005
		ldir
		ei
+:
		ld a, (_RAM_C18D_)
		rlca
		jr c, +
		call _LABEL_123_
		call _LABEL_50A_
		call _LABEL_2957_
		call _LABEL_817_
		ld bc, _DATA_786F_
		call _LABEL_84A_
		jp _LABEL_97B_

+:
		di
		call _LABEL_4EA_
		ei
		ld a, $80
		ld (_RAM_C003_), a
		ld a, $00
		ld (_RAM_DE00_), a
		ret

; 5th entry of Jump Table from 268 (indexed by _RAM_C003_)
_LABEL_3B2_:
		ld hl, _RAM_C003_
		bit 6, (hl)
		jp nz, +
		set 6, (hl)
		di
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1E01
		ld (hl), $00
		ldir
		;ld a, (_RAM_C012_)			; stevepro before
		ld a, $0F					; stevepro after
		nop							; stevepro after
		ld (_RAM_C100_), a
		call _LABEL_429_
		call _LABEL_6A9_
		ld a, $01
		ld (_RAM_C16E_), a
		ei
+:
		call _LABEL_123_
		call _LABEL_50A_
		call _LABEL_2957_
		call _LABEL_817_
		call _LABEL_835_
		jp _LABEL_97B_

