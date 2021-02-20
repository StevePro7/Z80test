; This disassembly was created using Emulicious (http://www.emulicious.net)	
.MEMORYMAP	
SLOTSIZE $7FF0	
SLOT 0 $0000	
SLOTSIZE $10	
SLOT 1 $7FF0	
SLOTSIZE $4000	
SLOT 2 $8000	
DEFAULTSLOT 2	
.ENDME	
.ROMBANKMAP	
BANKSTOTAL 2	
BANKSIZE $7FF0	
BANKS 1	
BANKSIZE $10	
BANKS 1	
.ENDRO	
	
.enum $C000 export	
_RAM_C000_ db	
_RAM_C001_ db	
_RAM_C002_ db	
_RAM_C003_ db	
_RAM_C004_ dw	
_RAM_C006_ dw	
_RAM_C008_ db	
.ende	
	
.enum $C048 export	
_RAM_C048_ db	
.ende	
	
.enum $C0C8 export	
_RAM_C0C8_ db	
_RAM_C0C9_ dw	
_RAM_C0CB_ dsb $4	
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende	
	
; Ports	
.define Port_VDPData $BE	
.define Port_VDPAddress $BF	
	
; Input Ports	
.define Port_VCounter $7E	
.define Port_VDPStatus $BF	
.define Port_IOPort1 $DC	
.define Port_IOPort2 $DD	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		di
		im 1
		jp _LABEL_70_
	
	; Data from 6 to 7 (2 bytes)
	.db $00 $00
	
_LABEL_8_:	
		ld c, Port_VDPAddress
		di
		out (c), l
		out (c), h
		ei
		ret
	
	; Data from 11 to 37 (39 bytes)
	.db $00 $00 $00 $00 $00 $00 $00 $7D $D3 $BE $7C $D6 $00 $00 $D3 $BE
	.db $C9
	.dsb 22, $00
	
_LABEL_38_:	
		jp _LABEL_50B_
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _LABEL_541_
	
	; Data from 69 to 6F (7 bytes)
	.db $00 $00 $00 $00 $00 $00 $00
	
_LABEL_70_:	
		ld sp, $DFF0
		ld de, _RAM_FFFC_
		xor a
		ld (de), a
		ld b, $03
-:	
		inc de
		ld (de), a
		inc a
		djnz -
		xor a
		ld hl, _RAM_C000_
		ld (hl), a
		ld de, _RAM_C000_ + 1
		ld bc, $1FF0
		ldir
		call _LABEL_559_
		call _LABEL_27B_
		ei
		call _LABEL_20A_
		jp _LABEL_204_
	
	; Data from 99 to 203 (363 bytes)
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $C9
	.dsb 102, $00
	.db $3E $02 $CF $C9
	
_LABEL_204_:	
		ld a, $00
		rst $08	; _LABEL_8_
-:	
		halt
		jr -
	
_LABEL_20A_:	
		call _LABEL_27B_
		ld hl, $0140
		call _LABEL_2F9_
		ld a, $03
		push af
		inc sp
		xor a
		push af
		inc sp
		call _LABEL_39D_
		pop af
		ld hl, $0140
		call _LABEL_2E2_
-:	
		call _LABEL_473_
		jr -
	
	; Data from 229 to 27A (82 bytes)
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00 $48 $65
	.db $6C $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D $70 $6C $65
	.db $20 $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20 $53 $79 $73
	.db $74 $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72 $75 $6E $20
	.db $6F $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77 $61 $72 $65
	.db $21 $00
	
_LABEL_27B_:	
		ld hl, $0000
		push hl
		call _LABEL_39D_
		pop af
		ld c, $00
-:	
		ld hl, _DATA_2CF_
		ld b, $00
		add hl, bc
		ld b, (hl)
		di
		ld a, b
		out (Port_VDPAddress), a
		ld a, c
		set 7, a
		out (Port_VDPAddress), a
		ei
		inc c
		ld a, c
		sub $0B
		jr c, -
		call _LABEL_3DD_
		call _LABEL_438_
		call _LABEL_44A_
		call _LABEL_4DD_
-:	
		in a, (Port_VCounter)
		ld b, a
		ld a, $80
		sub b
		jr c, -
-:	
		in a, (Port_VCounter)
		sub $80
		jr c, -
-:	
		in a, (Port_VCounter)
		ld c, a
		in a, (Port_VCounter)
		sub c
		jr nc, -
		ld a, c
		sub $E7
		jr c, +
		ld hl, _RAM_C003_
		ld (hl), $80
		ret
	
+:	
		ld hl, _RAM_C003_
		ld (hl), $40
		ret
	
; Data from 2CF to 2E1 (19 bytes)	
_DATA_2CF_:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $03 $C0 $FD
	.db $6E $00 $C9
	
_LABEL_2E2_:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, $C0CB
		add hl, de
		ld a, (hl)
		or c
		ld c, a
		ld (hl), c
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, e
		set 7, a
		out (Port_VDPAddress), a
		ei
		ret
	
_LABEL_2F9_:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, $C0CB
		add hl, de
		ld a, (hl)
		and b
		ld c, a
		ld (hl), c
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, e
		set 7, a
		out (Port_VDPAddress), a
		ei
		ret
	
	; Data from 312 to 39C (139 bytes)
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $89
	.db $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9 $CB $45
	.db $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79 $D3 $BF $3E $86 $D3 $BF
	.db $FB $C9 $4D $CB $41 $28 $0F $C5 $21 $02 $01 $CD $E2 $02 $C1 $21
	.db $CD $C0 $36 $10 $18 $0D $C5 $21 $02 $01 $CD $F9 $02 $C1 $21 $CD
	.db $C0 $36 $08 $CB $49 $28 $14 $21 $01 $01 $CD $E2 $02 $21 $CE $C0
	.db $36 $10 $FD $21 $CD $C0 $FD $CB $00 $26 $C9 $21 $01 $01 $CD $F9
	.db $02 $21 $CE $C0 $36 $08 $C9 $21 $02 $00 $39 $4E $06 $00 $21 $00
	.db $C0 $09 $CF $21 $03 $00 $39 $7E $D3 $BE $C9
	
_LABEL_39D_:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, $C010
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
	; Data from 3B1 to 3DC (44 bytes)
	.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9 $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06
	.db $10 $0E $BE $ED $A3 $20 $FC $C9 $7D $D3 $BE $C9
	
_LABEL_3DD_:	
		ld hl, _RAM_C0C8_
		ld (hl), $00
		ret
	
	; Data from 3E3 to 437 (85 bytes)
	.db $3A $C8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $08 $21 $C8 $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $C8 $C0 $87 $4F $21 $48 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $C8 $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_LABEL_438_:	
		ld a, (_RAM_C0C8_)
		sub $40
		ret nc
		ld bc, $C008
		ld hl, (_RAM_C0C8_)
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_LABEL_44A_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, _RAM_C008_
		ld e, $40
-:	
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		ld d, e
		dec d
		ld a, d
		ld e, a
		or a
		jr nz, -
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld bc, _RAM_C048_
		ld e, $80
-:	
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		ld d, e
		dec d
		ld a, d
		ld e, a
		or a
		jr nz, -
		ret
	
_LABEL_473_:	
		ld hl, _RAM_C000_
		ld (hl), $00
-:	
		ld hl, _RAM_C000_
		bit 0, (hl)
		jr z, -
		ret
	
	; Data from 480 to 4DC (93 bytes)
	.db $2A $04 $C0 $C9 $FD $21 $06 $C0 $FD $7E $00 $2F $4F $FD $7E $01
	.db $2F $47 $FD $21 $04 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67
	.db $C9 $3A $04 $C0 $FD $21 $06 $C0 $FD $A6 $00 $6F $3A $05 $C0 $FD
	.db $21 $06 $C0 $FD $A6 $01 $67 $C9 $FD $21 $04 $C0 $FD $7E $00 $2F
	.db $4F $FD $7E $01 $2F $47 $79 $FD $21 $06 $C0 $FD $A6 $00 $6F $78
	.db $FD $A6 $01 $67 $C9 $FD $21 $02 $C0 $FD $6E $00 $C9
	
_LABEL_4DD_:	
		ld hl, _RAM_C002_
		ld (hl), $00
		ret
	
	; Data from 4E3 to 50A (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $C9 $C0 $21 $03 $00 $39 $7E $32 $CA $C0
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_LABEL_50B_:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (_RAM_C001_), a
		rlca
		jr nc, +
		ld hl, _RAM_C000_
		ld (hl), $01
		ld hl, (_RAM_C004_)
		ld (_RAM_C006_), hl
		in a, (Port_IOPort1)
		cpl
		ld hl, _RAM_C004_
		ld (hl), a
		in a, (Port_IOPort2)
		cpl
		inc hl
		ld (hl), a
		jr ++
	
+:	
		push bc
		push de
		push iy
		ld hl, (_RAM_C0C9_)
		call +++
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
_LABEL_541_:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, _RAM_C002_
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
+++:	
		jp (hl)
	
; Data from 555 to 558 (4 bytes)	
_DATA_555_:	
	.db $04 $20 $08 $08
	
_LABEL_559_:	
		ld bc, $0004
		ld a, b
		or c
		jr z, +
		ld de, _RAM_C0CB_
		ld hl, _DATA_555_
		ldir
+:	
		ret
	
	; Data from 569 to 7FEF (31367 bytes)
	.dsb 31269, $00
	.db $53 $69 $6D $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74
	.db $65 $72 $20 $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74
	.db $6F $20 $72 $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61
	.db $72 $64 $77 $61 $72 $65 $21 $00 $48 $65 $6C $6C $6F $20 $57 $6F
	.db $72 $6C $64 $00 $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E
	.db $64 $00 $53 $44 $53 $43 $01 $00 $06 $12 $19 $20 $D2 $7F $C6 $7F
	.db $8E $7F
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 7FF0 to 7FFF (16 bytes)
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $36 $9B $99 $99 $00 $4C
	