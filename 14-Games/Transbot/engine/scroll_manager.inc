; Background scroll and tilemap streaming ($2957-$2D00)
_LABEL_2957_:	
		ld a, (_RAM_C16E_)
		dec a
		jr z, +
		dec a
		jr z, _LABEL_29D5_
		ret
	
+:	
		ld (_RAM_C16E_), a
		inc a
		ld (_RAM_C16F_), a
		ld de, _RAM_C142_
		ld hl, _DATA_2B16_
		ld bc, $0011
		ldir
		ld hl, (_RAM_C155_)
		ld a, h
		or l
		jr z, +
		ld (_RAM_C153_), hl
		ld hl, $0000
		ld (_RAM_C155_), hl
+:	
		ld hl, (_RAM_C153_)
		dec hl
		dec hl
		dec hl
		dec hl
		ld de, $2B49
		or a
		sbc hl, de
		jr c, +
		add hl, de
		ld (_RAM_C153_), hl
		jr ++
	
+:	
		ld de, $2C0B
		add hl, de
		ld (_RAM_C153_), hl
++:	
		ld a, (_RAM_C158_)
		or a
		jr z, ++
		ld a, (_RAM_C157_)
		dec a
		jr nc, +
		ld a, $02
+:	
		add a, a
		ld de, _DATA_2C59_
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, _DATA_8_
		add hl, de
		ld (_RAM_C149_), hl
		jr +++
	
++:	
		ld a, (_RAM_C157_)
		add a, a
		ld de, _DATA_2C59_
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (_RAM_C149_), de
		jr +++
	
_LABEL_29D5_:	
		ld (_RAM_C16E_), a
		inc a
		ld (_RAM_C16F_), a
		ld hl, (_RAM_C155_)
		ld a, h
		or l
		jr nz, +
		ld hl, (_RAM_C153_)
		ld (_RAM_C155_), hl
+:	
		ld de, _RAM_C142_
		ld hl, _DATA_2B27_
		ld bc, $0013
		ldir
+++:	
		ld hl, _RAM_C152_
		set 7, (hl)
		ret
	
_LABEL_29FA_:	
		ld hl, _RAM_C152_
		bit 3, (hl)
		ret z
		bit 5, (hl)
		jr z, +
		ld ix, _DATA_2B44_
		ld iy, _RAM_C14C_
		ld c, $01
		jr ++
	
+:	
		ld ix, _DATA_2B3A_
		ld iy, _RAM_C14C_
		ld c, $01
		call ++
		ld ix, _DATA_2B3F_
		ld iy, _RAM_C142_
		ld c, $02
++:	
		ld e, (iy+4)
		ld d, (iy+5)
		ld hl, $0100
		ld a, d
		add hl, de
		cp h
		ld (iy+4), l
		ld (iy+5), h
		ret z
		ld a, (iy+3)
		sub c
		ld (iy+3), a
		and $07
		ret nz
		push iy
		pop hl
		inc (hl)
		inc (hl)
		bit 0, (ix+0)
		jr nz, +
		bit 6, (hl)
		jr z, ++
		res 6, (hl)
		jr ++
	
+:	
		bit 6, (hl)
		jr nz, ++
		ld (hl), $40
++:	
		ld e, (iy+7)
		ld d, (iy+8)
		inc (iy+2)
		ld a, (iy+2)
		cp $08
		jp nz, _LABEL_2AEF_
		inc de
		ld (iy+2), $00
		bit 0, c
		jr nz, +
		ld hl, _RAM_C141_
		bit 0, (hl)
		jr nz, _LABEL_2ABF_
+:	
		ld a, (de)
		bit 7, a
		jr z, _LABEL_2AE9_
		ld a, (_RAM_C152_)
		bit 5, a
		jr nz, _LABEL_2AE6_
		bit 0, c
		jr z, +
		ld de, _DATA_2C53_
		ld hl, _RAM_C158_
		set 0, (hl)
		dec hl
		inc (hl)
		ld a, (hl)
		cp $03
		jr c, _LABEL_2A9F_
		ld (hl), $00
_LABEL_2A9F_:	
		ld a, (_RAM_C157_)
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		jr _LABEL_2AE9_
	
+:	
		ld a, (de)
		cp $FF
		jr z, ++
		ld a, (_RAM_C16E_)
		cp $03
		jr nz, +
		ld hl, _RAM_C141_
		set 0, (hl)
		jr _LABEL_2AE9_
	
_LABEL_2ABF_:	
		res 0, (hl)
		xor a
		ld (_RAM_C16E_), a
		ld a, (_RAM_C16F_)
		or a
		jr nz, _LABEL_2AE9_
		ld a, $02
		ld (_RAM_C16F_), a
		jr _LABEL_2AE9_
	
+:	
		inc de
		jr _LABEL_2AE9_
	
++:	
		ld de, _DATA_2C59_
		ld hl, _RAM_C158_
		ld a, (hl)
		or a
		jr z, _LABEL_2A9F_
		ld (hl), $00
		ld de, _DATA_2C4D_
		jr _LABEL_2A9F_
	
_LABEL_2AE6_:	
		ld de, _DATA_2C44_
_LABEL_2AE9_:	
		ld (iy+7), e
		ld (iy+8), d
_LABEL_2AEF_:	
		ld a, (de)
		ld e, (ix+1)
		ld d, (ix+2)
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (iy+2)
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		call _LABEL_2D57_
		ld hl, _RAM_C14B_
		bit 0, c
		jr z, +
		set 0, (hl)
		ret
	
+:	
		set 1, (hl)
		ret
	
; Data from 2B16 to 2B26 (17 bytes)	
_DATA_2B16_:	
	.db $00 $3C $00 $00 $00 $00 $00 $00 $00 $00 $40 $3B $00 $00 $00 $00
	.db $00
	
; Data from 2B27 to 2B39 (19 bytes)	
_DATA_2B27_:	
	.dsb 10, $00
	.db $80 $38 $00 $00 $00 $00 $20 $44 $2C
	
; Data from 2B3A to 2B3A (1 bytes)	
_DATA_2B3A_:	
	.db $03
	
	; Pointer Table from 2B3B to 2B3C (1 entries, indexed by unknown)
	.dw _DATA_2C5F_
	
	; Data from 2B3D to 2B3E (2 bytes)
	.db $28 $C1
	
; Data from 2B3F to 2B3F (1 bytes)	
_DATA_2B3F_:	
	.db $08
	
	; Pointer Table from 2B40 to 2B41 (1 entries, indexed by unknown)
	.dw _DATA_2C7F_
	
	; Data from 2B42 to 2B43 (2 bytes)
	.db $2E $C1
	
; Data from 2B44 to 2B44 (1 bytes)	
_DATA_2B44_:	
	.db $16
	
	; Pointer Table from 2B45 to 2B46 (1 entries, indexed by unknown)
	.dw _DATA_2C93_
	
	; Data from 2B47 to 2B48 (2 bytes)
	.db $12 $C1
	
; 1st entry of Pointer Table from 2C53 (indexed by _RAM_C157_)	
; Data from 2B49 to 2B4C (4 bytes)	
_DATA_2B49_:	
	.db $04 $00 $01 $02
	
; Data from 2B4D to 2B89 (61 bytes)	
_DATA_2B4D_:	
	.db $03 $04 $00 $00 $02 $03 $04 $05 $01 $05 $01 $00 $05 $05 $02 $03
	.db $04 $00 $01 $02 $03 $04 $05 $05 $05 $00 $01 $02 $03 $04 $05 $01
	.db $01 $00 $05 $05 $01 $00 $00 $02 $03 $04 $05 $00 $02 $03 $04 $05
	.db $02 $03 $04 $05 $05 $05 $00 $00 $01 $00 $02 $03 $88
	
; 2nd entry of Pointer Table from 2C53 (indexed by _RAM_C157_)	
; Data from 2B8A to 2BCA (65 bytes)	
_DATA_2B8A_:	
	.db $06 $07 $08 $09 $0A $07 $07 $07 $08 $0A $0A $07 $07 $09 $09 $09
	.db $08 $08 $07 $09 $0A $09 $07 $0A $07 $0A $08 $07 $09 $0A $09 $0A
	.db $0A $09 $0A $09 $07 $07 $0A $0A $0A $08 $07 $09 $09 $09 $07 $0A
	.db $08 $09 $08 $0A $07 $09 $07 $0A $0A $0A $09 $0A $0A $09 $0A $0B
	.db $88
	
; 3rd entry of Pointer Table from 2C53 (indexed by _RAM_C157_)	
; Data from 2BCB to 2C0B (65 bytes)	
_DATA_2BCB_:	
	.db $0C $0D $0E $0F $0C $0D $0E $0E $0D $0F $0F $0E $0D $0F $0C $0C
	.db $0D $0F $0E $0E $0D $0F $0C $0D $0E $0F $0E $0D $0F $0E $0C $0C
	.db $0E $0F $0D $0F $0E $0D $0E $0F $0C $0E $0D $0C $0F $0D $0C $0E
	.db $0F $0D $0E $0F $0D $0E $0F $0D $0E $0F $0D $0E $0F $0E $0D $0C
	.db $88
	
; 1st entry of Pointer Table from 2C4D (indexed by _RAM_C157_)	
; Data from 2C0C to 2C0C (1 bytes)	
_DATA_2C0C_:	
	.db $09
	
; 1st entry of Pointer Table from 2C59 (indexed by _RAM_C157_)	
; Data from 2C0D to 2C1E (18 bytes)	
_DATA_2C0D_:	
	.db $02 $02 $02 $02 $02 $02 $02 $02 $81 $02 $02 $02 $02 $02 $02 $02
	.db $02 $FF
	
; 2nd entry of Pointer Table from 2C4D (indexed by _RAM_C157_)	
; Data from 2C1F to 2C1F (1 bytes)	
_DATA_2C1F_:	
	.db $03
	
; 2nd entry of Pointer Table from 2C59 (indexed by _RAM_C157_)	
; Data from 2C20 to 2C30 (17 bytes)	
_DATA_2C20_:	
	.db $05 $04 $05 $06 $05 $04 $05 $04 $05 $04 $05 $06 $05 $06 $05 $05
	.db $FF
	
; 3rd entry of Pointer Table from 2C4D (indexed by _RAM_C157_)	
; Data from 2C31 to 2C31 (1 bytes)	
_DATA_2C31_:	
	.db $07
	
; 3rd entry of Pointer Table from 2C59 (indexed by _RAM_C157_)	
; Data from 2C32 to 2C43 (18 bytes)	
_DATA_2C32_:	
	.db $08 $08 $08 $08 $08 $08 $08 $08 $80 $08 $08 $08 $08 $08 $08 $08
	.db $08 $FF
	
; Data from 2C44 to 2C4C (9 bytes)	
_DATA_2C44_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $81
	
; Pointer Table from 2C4D to 2C52 (3 entries, indexed by _RAM_C157_)	
_DATA_2C4D_:	
	.dw _DATA_2C0C_ _DATA_2C1F_ _DATA_2C31_
	
; Pointer Table from 2C53 to 2C58 (3 entries, indexed by _RAM_C157_)	
_DATA_2C53_:	
	.dw _DATA_2B49_ _DATA_2B8A_ _DATA_2BCB_
	
; Pointer Table from 2C59 to 2C5E (3 entries, indexed by _RAM_C157_)	
_DATA_2C59_:	
	.dw _DATA_2C0D_ _DATA_2C20_ _DATA_2C32_
	
; 1st entry of Pointer Table from 2B3B (indexed by unknown)	
; Data from 2C5F to 2C7E (32 bytes)	
_DATA_2C5F_:	
	.db $00 $D0 $30 $D0 $60 $D0 $90 $D0 $C0 $D0 $F0 $D0 $20 $D1 $50 $D1
	.db $80 $D1 $B0 $D1 $E0 $D1 $10 $D2 $40 $D2 $70 $D2 $A0 $D2 $D0 $D2
	
; 1st entry of Pointer Table from 2B40 (indexed by unknown)	
; Data from 2C7F to 2C92 (20 bytes)	
_DATA_2C7F_:	
	.db $00 $D6 $80 $D7 $00 $D3 $80 $D3 $00 $D4 $80 $D4 $00 $D5 $80 $D5
	.db $80 $D6 $00 $D7
	
; 1st entry of Pointer Table from 2B45 (indexed by unknown)	
; Data from 2C93 to 2C94 (2 bytes)	
_DATA_2C93_:	
	.db $00 $D8
	
_LABEL_2C95_:	
		ld hl, _RAM_C152_
		bit 7, (hl)
		ret z
		res 7, (hl)
		bit 5, (hl)
		jr nz, +
		call _LABEL_2800_
		ld hl, $3880
		ld de, _DATA_2B27_
		ld bc, $02C0
		call _LABEL_2885_
		ld ix, _DATA_2B3A_
		ld hl, (_RAM_C14C_)
		ld iy, (_RAM_C153_)
		call ++
		ld (_RAM_C153_), iy
		ld ix, _DATA_2B3F_
		ld hl, (_RAM_C142_)
		ld iy, (_RAM_C149_)
		call ++
		ld (_RAM_C149_), iy
		ld a, $03
		ld (_RAM_C14B_), a
		jp _LABEL_27FB_
	
+:	
		call _LABEL_2800_
		ld ix, _DATA_2B44_
		ld hl, (_RAM_C14C_)
		ld iy, (_RAM_C153_)
		call ++
		ld (_RAM_C153_), iy
		ld a, $01
		ld (_RAM_C14B_), a
		jp _LABEL_27FB_
	
++:	
		ld e, (ix+1)
		ld d, (ix+2)
		ld b, $04
