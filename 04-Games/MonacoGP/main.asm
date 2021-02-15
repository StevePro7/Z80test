; This disassembly was created using Emulicious (http://www.emulicious.net)	
.MEMORYMAP	
SLOTSIZE $4000	
SLOT 0 $0000	
SLOT 1 $4000	
SLOT 2 $8000	
DEFAULTSLOT 2	
.ENDME	
.ROMBANKMAP	
BANKSTOTAL 2	
BANKSIZE $4000	
BANKS 2	
.ENDRO	
	
.enum $C000 export	
_RAM_C000_ db	
_RAM_C001_ db	
.ende	
	
.enum $C005 export	
_RAM_C005_ db	
_RAM_C006_ dsb $a	
_RAM_C010_ dsb $4	
.ende	
	
.enum $C040 export	
_RAM_C040_ dsb $5	
_RAM_C045_ db	
_RAM_C046_ dsb $a	
.ende	
	
.enum $C1B0 export	
_RAM_C1B0_ db	
.ende	
	
.enum $C1B6 export	
_RAM_C1B6_ dsb $a	
.ende	
	
.enum $C200 export	
_RAM_C200_ db	
_RAM_C201_ db	
_RAM_C202_ db	
_RAM_C203_ db	
_RAM_C204_ db	
_RAM_C205_ db	
.ende	
	
.enum $C207 export	
_RAM_C207_ db	
.ende	
	
.enum $C20A export	
_RAM_C20A_ db	
.ende	
	
.enum $C20F export	
_RAM_C20F_ dw	
_RAM_C211_ db	
_RAM_C212_ dw	
_RAM_C214_ db	
.ende	
	
.enum $C217 export	
_RAM_C217_ db	
.ende	
	
.enum $C219 export	
_RAM_C219_ db	
_RAM_C21A_ db	
_RAM_C21B_ db	
_RAM_C21C_ db	
_RAM_C21D_ db	
_RAM_C21E_ dw	
_RAM_C220_ db	
_RAM_C221_ dw	
_RAM_C223_ db	
_RAM_C224_ dw	
_RAM_C226_ db	
_RAM_C227_ dw	
.ende	
	
.enum $C231 export	
_RAM_C231_ dw	
.ende	
	
.enum $C238 export	
_RAM_C238_ db	
.ende	
	
.enum $C23A export	
_RAM_C23A_ db	
_RAM_C23B_ db	
_RAM_C23C_ db	
_RAM_C23D_ db	
_RAM_C23E_ db	
.ende	
	
.enum $C240 export	
_RAM_C240_ db	
_RAM_C241_ db	
_RAM_C242_ db	
.ende	
	
.enum $C244 export	
_RAM_C244_ db	
.ende	
	
.enum $C246 export	
_RAM_C246_ db	
.ende	
	
.enum $C24D export	
_RAM_C24D_ db	
_RAM_C24E_ db	
_RAM_C24F_ db	
_RAM_C250_ db	
_RAM_C251_ db	
_RAM_C252_ db	
_RAM_C253_ db	
_RAM_C254_ db	
_RAM_C255_ db	
_RAM_C256_ db	
_RAM_C257_ db	
.ende	
	
.enum $C259 export	
_RAM_C259_ db	
_RAM_C25A_ db	
_RAM_C25B_ db	
.ende	
	
.enum $C25D export	
_RAM_C25D_ db	
_RAM_C25E_ db	
_RAM_C25F_ db	
_RAM_C260_ db	
_RAM_C261_ db	
_RAM_C262_ db	
_RAM_C263_ db	
_RAM_C264_ db	
.ende	
	
.enum $C280 export	
_RAM_C280_ dsb $8c	
.ende	
	
.enum $C310 export	
_RAM_C310_ db	
_RAM_C311_ db	
_RAM_C312_ db	
.ende	
	
.enum $C316 export	
_RAM_C316_ dsb $3	
_RAM_C319_ db	
.ende	
	
.enum $C31B export	
_RAM_C31B_ db	
.ende	
	
.enum $C325 export	
_RAM_C325_ db	
.ende	
	
.enum $C327 export	
_RAM_C327_ db	
.ende	
	
; Ports	
.define Port_PSG $7F	
.define Port_VDPData $BE	
.define Port_VDPAddress $BF	
.define _PORT_DE_ $DE	
.define _PORT_DF_ $DF	
	
; Input Ports	
.define Port_VDPStatus $BF	
.define Port_IOPort1 $DC	
.define Port_IOPort2 $DD	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		ld sp, $C400
		di
		im 1
		jp _LABEL_70_
	
	; Data from 9 to 37 (47 bytes)
	.db $4D $4F $4E $41 $43 $4F $20 $47 $50 $31 $2F $31 $32 $20 $20 $31
	.db $39 $38 $33 $20 $56 $45 $52 $53 $49 $4F $4E $20 $31 $2E $30 $20
	.db $33 $32 $4B
	.dsb 12, $00
	
_LABEL_38_:	
		jp _LABEL_1B2D_
	
	; Data from 3B to 65 (43 bytes)
	.db $20 $50 $52 $4F $47 $52 $41 $4D $45 $44 $20 $42 $59 $20 $59 $2E
	.db $4B $41 $57 $41 $4D $55 $52 $41 $20 $26 $20 $4D $2E $4B $49 $44
	.db $4F $4F $4B $41 $00 $00 $00 $00 $00 $00 $00
	
_LABEL_66_:	
		jp _LABEL_26B7_
	
	; Data from 69 to 6F (7 bytes)
	.db $00 $00 $00 $00 $00 $00 $00
	
_LABEL_70_:	
		ld a, $92
		out (_PORT_DF_), a
		ld hl, _RAM_C000_
		ld de, _RAM_C000_ + 1
		ld bc, $0400
		ld (hl), $00
		ldir
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		call _LABEL_5092_
		ld e, $02
		call _LABEL_21A5_
		call _LABEL_232E_
_LABEL_9C_:	
		ld hl, _DATA_3A1_
		ld b, $10
		call _LABEL_357_
		ld bc, $0800
		ld hl, _DATA_62A9_
		ld de, $0000
		call _LABEL_360_
		ld de, $0800
		call _LABEL_360_
		ld de, $1000
		call _LABEL_360_
		ld hl, _DATA_72A9_
		ld de, $2000
		ld bc, $0180
		call _LABEL_360_
		ld de, $2800
		call _LABEL_360_
		ld de, $3000
		call _LABEL_360_
		ld hl, _DATA_7429_
		ld de, $2300
		ld bc, $0500
		call _LABEL_360_
		ld de, $2B00
		call _LABEL_360_
		ld de, $3300
		call _LABEL_360_
		ld de, $2180
		call _LABEL_398_
		ld bc, $0180
		ld h, $F0
		call _LABEL_34A_
		ld de, $2980
		call _LABEL_398_
		call _LABEL_34A_
		ld de, $3180
		call _LABEL_398_
		call _LABEL_34A_
		ld bc, $0400
		ld hl, _DATA_7929_
		ld de, $0400
		call _LABEL_360_
		ld de, $2400
		call _LABEL_398_
		ld h, $B0
		call _LABEL_34A_
		ld bc, $0800
		ld hl, _DATA_5AA9_
		ld de, $1800
		call _LABEL_360_
		ld de, $3B00
		call _LABEL_398_
		ld b, $80
		xor a
-:	
		out (Port_VDPData), a
		push ix
		pop ix
		djnz -
		call _LABEL_385_
		call _LABEL_20C3_
		call _LABEL_2039_
		call _LABEL_2064_
		ld a, $C2
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		ld e, $01
		call _LABEL_21A5_
		call _LABEL_1FE0_
		call _LABEL_232E_
		xor a
		ld (_RAM_C203_), a
		ld e, $01
		call _LABEL_21A5_
---:	
		ld hl, _DATA_3B1_
		ld de, $3A45
		ld b, $0F
		call _LABEL_398_
		call _LABEL_2025_
		ld c, $00
--:	
		push bc
		ld a, c
		add a, a
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3C1_
		add hl, de
		ld de, $3A89
		call _LABEL_398_
		ld b, $08
		call _LABEL_2025_
		ld de, $2710
-:	
		push de
		call _LABEL_22A7_
		pop de
		cpl
		and $30
		jr nz, +
		dec de
		ld a, d
		or e
		jr nz, -
		pop bc
		inc c
		ld a, c
		cp $03
		jr z, ---
		jr --
	
+:	
		pop bc
		ld d, a
		ld a, c
		ld b, $00
		ld hl, _DATA_3D9_
		add hl, bc
		inc a
		ld (_RAM_C25E_), a
		ld a, (hl)
		ld (_RAM_C25F_), a
		xor a
		ld (_RAM_C21C_), a
		ld (_RAM_C21B_), a
		ld a, $17
		ld (_RAM_C21A_), a
		ld hl, _RAM_C212_
		xor a
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		di
		ld a, $FF
		ld (_RAM_C202_), a
		ld a, $81
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		ld bc, $0800
		ld hl, _DATA_62A9_
		ld de, $0000
		call _LABEL_360_
		ld hl, _DATA_7429_
		ld de, $2300
		ld bc, $0500
		call _LABEL_360_
		call _LABEL_219D_
		ld a, $01
		out (Port_VDPAddress), a
		ld a, $87
		out (Port_VDPAddress), a
		call _LABEL_33C_
		call _LABEL_385_
		call _LABEL_1E54_
		call _LABEL_2070_
		call _LABEL_2039_
		ld a, $91
		ld (_RAM_C310_), a
		call _LABEL_2064_
		ld a, $E2
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		xor a
		ld (_RAM_C217_), a
		call _LABEL_232E_
		ld a, $FF
		ld (_RAM_C207_), a
		xor a
		ld (_RAM_C238_), a
		ld (_RAM_C23A_), a
		ld a, $19
		ld (_RAM_C24D_), a
		ld a, $04
		ld (_RAM_C201_), a
		ei
		ld e, $04
		call _LABEL_21A5_
		xor a
		ld (_RAM_C20A_), a
_LABEL_247_:	
		xor a
		ld (_RAM_C260_), a
		ld hl, _RAM_C238_
		res 2, (hl)
		res 3, (hl)
		res 5, (hl)
		di
		call _LABEL_201A_
		call _LABEL_2395_
		ei
		ld hl, _RAM_C23D_
		ld b, $10
		xor a
-:	
		ld (hl), a
		inc hl
		djnz -
		ld iy, _RAM_C000_
		call _LABEL_268E_
		ld (iy+1), a
		ld (iy+17), a
		ld (iy+0), $A0
		ld (iy+16), $A0
		ld de, _DATA_A6B_
		call _LABEL_A75_
		ld hl, $2760
		call _LABEL_AD0_
		ld a, $01
		ld (_RAM_C005_), a
		ld (_RAM_C246_), a
		ld hl, _RAM_C256_
		ld b, $06
-:	
		ld a, r
		and $01
		or $02
		ld (hl), a
		inc hl
		djnz -
		call _LABEL_24E5_
		call _LABEL_2510_
		ld a, (_RAM_C21C_)
		cp $08
		jp nc, +
		ld a, $02
		ld (_RAM_C25B_), a
		ld (_RAM_C259_), a
		ld (_RAM_C25A_), a
+:	
		call _LABEL_2591_
		call _LABEL_253B_
		call _LABEL_2566_
		ld e, $02
		call _LABEL_21A5_
		call _LABEL_5092_
		xor a
		ld (_RAM_C200_), a
		ld (_RAM_C200_), a
		ld a, $82
		ld (_RAM_C310_), a
		ld a, $FF
		ld (_RAM_C23B_), a
		ld a, $06
		ld (_RAM_C207_), a
		ei
_LABEL_2DF_:	
		halt
		call _LABEL_2405_
		call _LABEL_22A7_
		ld (_RAM_C205_), a
		call _LABEL_1DA3_
		call _LABEL_962_
		ld a, (_RAM_C207_)
		ld (_RAM_C217_), a
		ld a, (_RAM_C260_)
		and a
		call nz, _LABEL_1C7E_
		ld a, (_RAM_C23B_)
		and a
		jp nz, +
		call _LABEL_1AD1_
		call _LABEL_124C_
+:	
		call _LABEL_1110_
		call _LABEL_959_
		ld a, (_RAM_C238_)
		bit 7, a
		jp nz, _LABEL_9C_
		bit 5, a
		jp nz, _LABEL_247_
		ld a, (_RAM_C20A_)
		and a
		jp z, _LABEL_2DF_
-:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ld a, (_RAM_C20A_)
		and a
		jr nz, -
		jp _LABEL_2DF_
	
_LABEL_33C_:	
		ld b, $20
		ld hl, _RAM_C000_
		ld de, $0010
-:	
		ld (hl), $D8
		add hl, de
		djnz -
		ret
	
_LABEL_34A_:	
		push hl
		push bc
-:	
		ld a, h
		out (Port_VDPData), a
		dec bc
		ld a, b
		or c
		jr nz, -
		pop bc
		pop hl
		ret
	
_LABEL_357_:	
		in a, (Port_VDPStatus)
-:	
		ld a, (hl)
		out (Port_VDPAddress), a
		inc hl
		djnz -
		ret
	
_LABEL_360_:	
		call _LABEL_398_
		push bc
		push hl
-:	
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		pop hl
		pop bc
		ret
	
	; Data from 371 to 384 (20 bytes)
	.db $C5 $E5 $7B $D3 $BF $7A $D3 $BF $DB $BE $77 $23 $0B $79 $B0 $20
	.db $F7 $E1 $C1 $C9
	
_LABEL_385_:	
		ld de, $3800
		call _LABEL_398_
		ld bc, $0300
-:	
		ld a, $20
		out (Port_VDPData), a
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
_LABEL_398_:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		or $40
		out (Port_VDPAddress), a
		ret
	
; Data from 3A1 to 3B0 (16 bytes)	
_DATA_3A1_:	
	.db $02 $80 $82 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86 $01 $87
	
; Data from 3B1 to 3C0 (16 bytes)	
_DATA_3B1_:	
	.db $47 $41 $4D $45 $20 $44 $49 $46 $46 $49 $43 $55 $4C $54 $59 $20
	
; Data from 3C1 to 3D8 (24 bytes)	
_DATA_3C1_:	
	.db $4C $45 $56 $45 $4C $20 $20 $31 $4C $45 $56 $45 $4C $20 $20 $32
	.db $4C $45 $56 $45 $4C $20 $20 $33
	
; Data from 3D9 to 7FF (1063 bytes)	
_DATA_3D9_:	
	.incbin "data/File00_003D9_007FF.dat"
	
_LABEL_800_:	
		ld a, (_RAM_C23E_)
		bit 1, a
		jp nz, +
		ld a, $FF
		ld (_RAM_C207_), a
		set 1, a
		ld (_RAM_C23E_), a
		ld de, _DATA_88B_
		call _LABEL_A75_
		ld (iy+22), $00
		ld a, (iy+0)
		sub $08
		ld (iy+0), a
		ld (iy+16), a
		add a, $10
		ld (iy+32), a
		ld (iy+48), a
		ld a, (iy+1)
		ld (iy+33), a
		ld (iy+49), a
		ld a, $85
		ld (_RAM_C310_), a
+:	
		call _LABEL_A85_
		ld a, (iy+6)
		cp $02
		jp nz, +
		ld (iy+22), $FF
		ret
	
+:	
		cp $01
		ret nz
		ld a, (iy+22)
		cp $FF
		ret nz
		ld (iy+0), $D8
		ld (iy+16), $D8
		ld (iy+32), $D8
		ld (iy+48), $D8
		ld a, (iy+0)
		ld (iy+16), a
		add a, $07
		ld (iy+0), a
		xor a
		ld (_RAM_C23E_), a
		ld hl, _RAM_C23D_
		ld b, $10
		xor a
-:	
		ld (hl), $00
		inc hl
		djnz -
		ld a, $01
		ld (_RAM_C246_), a
		ld hl, _RAM_C238_
		set 2, (hl)
		ret
	
; Data from 88B to 94D (195 bytes)	
_DATA_88B_:	
	.db $00 $01 $20 $00 $00 $05 $08 $88 $27 $04 $DD $CB $05 $46 $C0 $DD
	.db $7E $02 $CB $4F $C2 $BD $08 $CB $CF $DD $77 $02 $11 $44 $09 $CD
	.db $75 $0A $FD $7E $00 $FD $77 $10 $3E $FF $32 $07 $C2 $3E $93 $32
	.db $10 $C3 $DD $CB $02 $56 $C2 $D1 $08 $FD $7E $06 $FE $03 $C2 $85
	.db $0A $DD $CB $02 $D6 $C9 $DD $CB $02 $5E $C2 $06 $09 $FD $35 $07
	.db $C0 $DD $CB $02 $DE $11 $4E $09 $CD $75 $0A $FD $7E $00 $D6 $08
	.db $FD $77 $00 $FD $77 $10 $C6 $10 $FD $77 $20 $FD $77 $30 $FD $7E
	.db $01 $FD $77 $11 $FD $77 $21 $FD $77 $31 $C9 $FD $7E $06 $FE $03
	.db $C2 $85 $0A $FD $35 $07 $C0 $FD $36 $00 $D8 $FD $36 $10 $D8 $FD
	.db $36 $20 $D8 $FD $36 $30 $D8 $AF $DD $77 $02 $DD $77 $03 $DD $77
	.db $04 $DD $77 $01 $FD $7E $00 $C6 $08 $FD $77 $00 $3E $01 $DD $77
	.db $09 $21 $38 $C2 $CB $D6 $CB $DE $C9 $00 $01 $00 $00 $00 $04 $08
	.db $C4 $27 $02
	
; Data from 94E to 958 (11 bytes)	
_DATA_94E_:	
	.db $00 $01 $20 $04 $00 $05 $08 $D0 $27 $04 $C9
	
_LABEL_959_:	
		ld a, (_RAM_C24D_)
		dec a
		ret z
		ld (_RAM_C24D_), a
		ret
	
_LABEL_962_:	
		ld iy, _RAM_C000_
		ld ix, $C23D
		ld hl, _RAM_C23D_
		ld de, _DATA_A56_
		ld b, $0A
-:	
		push hl
		bit 0, (hl)
		jp z, +
		pop hl
		ld a, (de)
		ld l, a
		inc de
		ld a, (de)
		ld h, a
		jp (hl)
	
+:	
		pop hl
		inc hl
		inc de
		inc de
		djnz -
		ret
	
	; Data from 986 to A55 (208 bytes)
	.db $21 $4E $C2 $CB $C6 $3A $46 $C2 $CB $4F $C2 $B0 $09 $CB $CF $32
	.db $46 $C2 $11 $6B $0A $CD $75 $0A $CD $D0 $0A $FD $7E $00 $FD $77
	.db $10 $3E $82 $32 $10 $C3 $AF $32 $00 $C2 $3A $07 $C2 $3C $FD $77
	.db $0C $CD $85 $0A $3A $05 $C2 $47 $2F $E6 $03 $32 $00 $C2 $CB $40
	.db $CC $EF $09 $CB $48 $CC $08 $0A $CB $50 $CC $18 $0A $CB $58 $CC
	.db $2A $0A $FD $7E $00 $FD $77 $10 $FD $7E $01 $FD $77 $11 $CB $68
	.db $CA $3C $0A $CB $60 $CA $3C $0A $C9 $FD $7E $00 $FD $96 $09 $FE
	.db $60 $38 $03 $FD $77 $00 $CD $E3 $10 $32 $07 $C2 $3E $01 $32 $60
	.db $C2 $C9 $FD $7E $00 $FD $86 $09 $FE $A0 $30 $EA $FD $77 $00 $C3
	.db $FC $09 $FD $7E $01 $FD $96 $0A $FE $20 $D8 $FD $77 $01 $3E $01
	.db $32 $60 $C2 $C9 $FD $7E $01 $FD $86 $0A $FE $D8 $D0 $FD $77 $01
	.db $3E $01 $32 $60 $C2 $C9 $DD $CB $07 $46 $C0 $DD $CB $06 $46 $C0
	.db $3A $07 $C2 $FE $04 $D0 $3A $4D $C2 $3D $C0 $DD $36 $05 $01 $C9
	
; Data from A56 to A69 (20 bytes)	
_DATA_A56_:	
	.db $6A $0A $00 $08 $95 $08 $59 $05 $D8 $05 $78 $06 $DD $03 $CF $04
	.db $61 $07 $86 $09
	
+:	
		ret
	
; Data from A6B to A74 (10 bytes)	
_DATA_A6B_:	
	.db $02 $04 $20 $01 $01 $02 $04 $60 $27 $02
	
_LABEL_A75_:	
		push de
		push iy
		pop hl
		ld de, $0006
		add hl, de
		pop de
		ld bc, $000A
		ex de, hl
		ldir
		ret
	
_LABEL_A85_:	
		ld a, (iy+7)
		dec a
		ld (iy+7), a
		ret nz
		ld a, (iy+12)
		ld (iy+7), a
		ld c, (iy+6)
		ld b, (iy+15)
		xor a
-:	
		add a, c
		add a, c
		djnz -
		ld e, a
		ld d, $00
--:	
		ld l, (iy+13)
		ld h, (iy+14)
		add hl, de
		push iy
		ld de, $0010
		ld b, (iy+15)
-:	
		ld a, (hl)
		ld (iy+2), a
		inc hl
		ld a, (hl)
		ld (iy+3), a
		inc hl
		add iy, de
		djnz -
		pop iy
		ld a, (iy+6)
		inc a
		ld (iy+6), a
		cp (iy+11)
		ret c
		ld (iy+6), $00
		ret
	
_LABEL_AD0_:	
		ld de, $0000
		jp --
	
_LABEL_AD6_:	
		ld iy, _RAM_C040_
		ld b, $04
-:	
		push bc
		call +
		pop bc
		ld de, $0040
		add iy, de
		djnz -
		ret
	
+:	
		ld a, (iy+1)
		add a, $E8
		ret nc
		rrca
		rrca
		rrca
		and $1F
		ld e, a
		ld a, (iy+0)
		cp $B8
		jp c, _LABEL_B03_
		cp $E0
		jp nc, +
		xor a
_LABEL_B03_:	
		add a, $08
		and $F8
		ld l, a
		ld h, $00
		ld d, h
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $3800
		add hl, de
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		jp _LABEL_7F00_
	
_LABEL_B1B_:	
		ld e, l
		in a, (Port_VDPData)
		ld l, a
		ld h, $00
		add hl, hl
		ld de, _DATA_B6F_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		ld a, $B0
		jp _LABEL_B03_
	
_LABEL_B30_:	
		ld iy, _RAM_C000_
		ld ix, _RAM_C23D_
		ld a, (iy+1)
		add a, $E8
		ret nc
		rrca
		rrca
		rrca
		and $1F
		ld e, a
		ld a, (iy+0)
		add a, $08
		and $F8
		ld l, a
		ld h, $00
		ld d, h
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $3800
		add hl, de
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		jp _LABEL_7F20_
	
_LABEL_B5F_:	
		ld e, l
		in a, (Port_VDPData)
		ld l, a
		ld h, $00
		add hl, hl
		ld de, _DATA_DC3_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
; Jump Table from B6F to C6E (128 entries, indexed by unknown)	
_DATA_B6F_:	
	.dw _LABEL_D6F_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	.dw _LABEL_DB2_ _LABEL_DB2_ _LABEL_D93_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_ _LABEL_DB2_
	
	; Data from C6F to D6E (256 bytes)
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $07 $10 $ED $0F $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $6F $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $07 $10 $6F $0D $ED $0F
	.db $B2 $0D $B2 $0D $6F $0D $6F $0D $6F $0D $B2 $0D $6F $0D $6F $0D
	.db $6F $0D $6F $0D $6F $0D $6F $0D $6F $0D $6F $0D $6F $0D $6F $0D
	.db $6F $0D $6F $0D $AD $0D $AD $0D $AD $0D $AD $0D $AD $0D $AD $0D
	.db $AD $0D $AD $0D $AD $0D $9C $0D $9C $0D $B2 $0D $B2 $0D $B2 $0D
	.db $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $B2 $0D $7D $0D $88 $0D
	
; 1st entry of Jump Table from B6F (indexed by unknown)	
_LABEL_D6F_:	
		bit 5, (iy+5)
		ret z
		res 4, (iy+5)
		set 3, (iy+5)
		ret
	
	; Data from D7D to D92 (22 bytes)
	.db $FD $CB $05 $EE $FD $CB $05 $9E $C3 $07 $10 $FD $CB $05 $EE $FD
	.db $CB $05 $9E $C3 $ED $0F
	
; 123rd entry of Jump Table from B6F (indexed by unknown)	
_LABEL_D93_:	
		set 5, (iy+5)
		res 3, (iy+5)
		ret
	
	; Data from D9C to DB1 (22 bytes)
	.db $FD $7E $04 $FE $14 $C2 $A8 $0D $AF $32 $5D $C2 $FD $36 $04 $1F
	.db $C9 $3A $5B $C2 $A7 $C8
	
; 2nd entry of Jump Table from B6F (indexed by unknown)	
_LABEL_DB2_:	
		ld a, (iy+4)
		cp $14
		jp nz, +
		xor a
		ld (_RAM_C25D_), a
+:	
		ld (iy+4), $1E
		ret
	
; Jump Table from DC3 to EC2 (128 entries, indexed by unknown)	
_DATA_DC3_:	
	.dw _LABEL_1049_ _LABEL_1077_ _LABEL_1077_ _LABEL_1077_ _LABEL_1077_ _LABEL_1077_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1010_ _LABEL_1010_ _LABEL_1010_ _LABEL_1028_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_
	.dw _LABEL_109B_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_ _LABEL_109B_
	.dw _LABEL_109B_ _LABEL_10A6_ _LABEL_10A6_ _LABEL_10A6_ _LABEL_10A6_ _LABEL_10A6_ _LABEL_1028_ _LABEL_1010_
	.dw _LABEL_1049_ _LABEL_1010_ _LABEL_1010_ _LABEL_1028_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FC4_ _LABEL_FC4_
	.dw _LABEL_FF6_ _LABEL_FF6_ _LABEL_FC4_ _LABEL_FC4_ _LABEL_FF6_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_FF6_ _LABEL_FF6_ _LABEL_1028_ _LABEL_10C2_ _LABEL_10CD_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_FC4_ _LABEL_FC4_ _LABEL_FC4_ _LABEL_FF6_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	.dw _LABEL_1028_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FF6_ _LABEL_FF6_
	.dw _LABEL_FF6_ _LABEL_FC4_ _LABEL_1096_ _LABEL_FC4_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_ _LABEL_1028_
	
	; Data from EC3 to FC3 (257 bytes)
	.db $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10
	.db $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10
	.db $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $F6 $0F
	.db $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $F6 $0F $F6 $0F $28 $10
	.db $49 $10 $49 $10 $C4 $0F $C4 $0F $28 $10 $28 $10 $28 $10 $28 $10
	.db $28 $10 $28 $10 $C4 $0F $C4 $0F $C4 $0F $28 $10 $28 $10 $28 $10
	.db $28 $10 $F6 $0F $28 $10 $28 $10 $F6 $0F $F6 $0F $F6 $0F $F6 $0F
	.db $C4 $0F $C4 $0F $C4 $0F $C4 $0F $C4 $0F $C4 $0F $C4 $0F $C4 $0F
	.db $F6 $0F $C4 $0F $28 $10 $28 $10 $28 $10 $28 $10 $28 $10 $28 $10
	.db $28 $10 $28 $10 $C4 $0F $28 $10 $28 $10 $C4 $0F $28 $10 $28 $10
	.db $28 $10 $28 $10 $28 $10 $C4 $0F $28 $10 $10 $10 $10 $10 $10 $10
	.db $77 $10 $77 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10
	.db $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10 $B1 $10
	.db $B1 $10 $B1 $10 $D8 $10 $D8 $10 $D8 $10 $D8 $10 $D8 $10 $D8 $10
	.db $D8 $10 $D8 $10 $D8 $10 $77 $10 $77 $10 $28 $10 $28 $10 $F6 $0F
	.db $F6 $0F $C4 $0F $C4 $0F $28 $10 $28 $10 $28 $10 $92 $10 $8B $10
	.db $C9
	
; 39th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_FC4_:	
		bit 0, (ix+5)
		ret nz
		set 0, (ix+8)
		set 7, (ix+7)
		ld (ix+6), $00
		set 2, (ix+3)
		bit 0, (ix+4)
		ret z
		set 2, (ix+4)
		ld a, (iy+0)
		cp $A0
		ret c
		set 7, (ix+4)
		ret
	
	; Data from FED to FF5 (9 bytes)
	.db $FD $CB $08 $FE $FD $CB $08 $B6 $C9
	
; 37th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_FF6_:	
		bit 0, (ix+5)
		ret nz
		set 0, (ix+8)
		set 7, (ix+7)
		ld (ix+6), $00
		set 6, (iy+8)
		res 7, (iy+8)
		ret
	
; 10th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_1010_:	
		bit 0, (ix+3)
		ret nz
		bit 1, (ix+4)
		ret nz
		bit 0, (ix+1)
		ret nz
		ld (ix+9), $00
		set 0, (ix+6)
		ret
	
; 7th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_1028_:	
		bit 0, (ix+5)
		ret nz
		bit 0, (ix+3)
		ret nz
		bit 0, (ix+4)
		ret nz
		ld a, (iy+1)
		cp $60
		jp c, +
		set 0, (ix+4)
		ret
	
+:	
		set 0, (ix+3)
		ret
	
; 1st entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_1049_:	
		ld (ix+10), $00
		set 7, (ix+7)
		ld a, (_RAM_C240_)
		bit 0, a
		ret nz
		ld a, (_RAM_C241_)
		bit 0, a
		ret nz
		xor a
		ld (ix+3), a
		ld (ix+4), a
		ld a, (_RAM_C23E_)
		bit 0, a
		ret nz
		xor a
		ld (ix+6), a
		set 7, (ix+8)
		set 0, (ix+9)
		ret
	
; 2nd entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_1077_:	
		bit 0, (ix+5)
		ret nz
		bit 0, (ix+2)
		ret nz
		xor a
		ld (ix+9), a
		ld a, $01
		ld (ix+2), a
		ret
	
	; Data from 108B to 1095 (11 bytes)
	.db $DD $CB $07 $C6 $C3 $96 $10 $DD $CB $07 $C6
	
; 123rd entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_1096_:	
		ld (ix+7), $01
		ret
	
; 14th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_109B_:	
		ld a, (_RAM_C256_)
		bit 0, a
		jp nz, _LABEL_1028_
		jp _LABEL_1049_
	
; 26th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_10A6_:	
		ld a, (_RAM_C257_)
		bit 0, a
		jp nz, _LABEL_1028_
		jp _LABEL_1049_
	
	; Data from 10B1 to 10C1 (17 bytes)
	.db $DD $CB $0A $46 $C0 $3E $84 $32 $10 $C3 $DD $CB $0A $C6 $C3 $4D
	.db $10
	
; 100th entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_10C2_:	
		ld a, (_RAM_C259_)
		and $01
		jp nz, _LABEL_1028_
		jp _LABEL_1049_
	
; 101st entry of Jump Table from DC3 (indexed by unknown)	
_LABEL_10CD_:	
		ld a, (_RAM_C25A_)
		and $01
		jp nz, _LABEL_1028_
		jp _LABEL_1049_
	
	; Data from 10D8 to 110F (56 bytes)
	.db $3A $5B $C2 $E6 $01 $C2 $28 $10 $C3 $49 $10 $FD $7E $00 $FE $78
	.db $30 $05 $3E $01 $C3 $00 $11 $FE $88 $30 $05 $3E $02 $C3 $00 $11
	.db $FE $98 $3E $04 $30 $02 $3E $03 $F5 $3A $19 $C2 $FE $06 $DA $0E
	.db $11 $3E $01 $32 $19 $C2 $F1 $C9
	
_LABEL_1110_:	
		ld a, (_RAM_C238_)
		bit 2, a
		ret z
		ld hl, _RAM_C23D_
		ld (hl), $01
		inc hl
		ld b, $0F
-:	
		ld (hl), $00
		inc hl
		djnz -
		ld hl, _RAM_C045_
		ld b, $04
		ld de, $0040
-:	
		bit 0, (hl)
		ret nz
		add hl, de
		djnz -
		ld hl, _RAM_C000_
		ld de, _RAM_C000_ + 1
		ld bc, $01FF
		ld (hl), $00
		ldir
		ld a, $D8
		ld b, $20
		ld hl, _RAM_C000_
		ld de, $0010
-:	
		ld (hl), a
		add hl, de
		djnz -
		xor a
		ld (_RAM_C24F_), a
		ld (_RAM_C250_), a
		ld iy, _RAM_C000_
		ld a, (_RAM_C201_)
		cp $FF
		jp z, +
		dec a
		jp z, _LABEL_1210_
		ld (_RAM_C201_), a
+:	
		ld a, (_RAM_C238_)
		bit 3, a
		jp nz, _LABEL_11CF_
		ld hl, _RAM_C261_
		ld b, $04
-:	
		ld a, (hl)
		cp $0F
		jp z, +
		inc hl
		djnz -
		jp ++
	
+:	
		ld (iy+0), $ED
		ld (iy+16), $ED
		ld e, $01
		call _LABEL_21A5_
		ld a, (_RAM_C21B_)
		sub $02
		ld (_RAM_C21B_), a
		jp _LABEL_11E0_
	
++:	
		call _LABEL_268E_
		ld (iy+1), a
		ld (iy+17), a
		ld (iy+0), $A0
		ld (iy+16), $A0
		ld de, _DATA_A6B_
		call _LABEL_A75_
		ld hl, $2760
		call _LABEL_AD0_
		ld hl, _RAM_C23D_
		ld b, $10
		xor a
-:	
		ld (hl), a
		inc hl
		djnz -
		ld a, $01
		ld (_RAM_C246_), a
		ld e, $02
		call _LABEL_21A5_
		ld hl, _RAM_C238_
		set 5, (hl)
		ei
		ret
	
_LABEL_11CF_:	
		ld (iy+0), $ED
		ld (iy+16), $ED
		ld e, $01
		call _LABEL_21A5_
		xor a
		ld (_RAM_C21B_), a
_LABEL_11E0_:	
		ld a, $01
		ld (_RAM_C219_), a
		halt
		call _LABEL_268E_
		ld (iy+1), a
		ld (iy+17), a
		ld (iy+0), $A0
		ld (iy+16), $A0
		ld de, _DATA_A6B_
		call _LABEL_A75_
		ld hl, $2760
		call _LABEL_AD0_
		halt
		ld e, $01
		call _LABEL_21A5_
		ld hl, _RAM_C238_
		set 5, (hl)
		ei
		ret
	
_LABEL_1210_:	
		ld a, (_RAM_C238_)
		bit 3, a
		jp z, +
		xor a
		ld (_RAM_C21B_), a
		ld a, $01
		ld (_RAM_C219_), a
		halt
+:	
		ld a, $00
		ld (_RAM_C310_), a
		halt
		di
		ld de, $3908
		ld hl, _DATA_1243_
		ld b, $09
		call _LABEL_398_
		call _LABEL_2025_
		ei
		ld e, $02
		call _LABEL_21A5_
		ld hl, _RAM_C238_
		set 7, (hl)
		ret
	
; Data from 1243 to 124B (9 bytes)	
_DATA_1243_:	
	.db $47 $41 $4D $45 $20 $4F $56 $45 $52
	
_LABEL_124C_:	
		ld b, $05
		ld iy, _RAM_C040_
-:	
		push bc
		push iy
		ld a, (iy+4)
		or a
		call nz, +
		pop iy
		ld de, $0040
		add iy, de
		pop bc
		djnz -
		ret
	
+:	
		and $1F
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_2357_ - 2
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		jp (hl)
	
	; Data from 1276 to 1278 (3 bytes)
	.db $41 $43 $54
	
; 1st entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_1279_:	
		bit 0, (iy+5)
		jp nz, _LABEL_130F_
		set 0, (iy+5)
		ld (iy+28), $00
		ld a, r
		and $03
		inc a
		ld (iy+29), a
		ld (iy+30), a
		ld de, _DATA_13BC_
		call _LABEL_A75_
		ld a, r
		and $06
		ld l, a
		ld h, $00
		ld de, _DATA_13C6_
		add hl, de
		ld a, (hl)
		ld (iy+13), a
		inc hl
		ld a, (hl)
		ld (iy+14), a
		ld (iy+31), $02
		call _LABEL_AD0_
		ld a, (_RAM_C244_)
		bit 0, a
		jp z, +
		ld (iy+3), $81
		ld (iy+19), $80
+:	
		ld a, (_RAM_C207_)
		and a
		jp z, +
		cp $04
		jp c, ++
+:	
		ld (iy+0), $C0
		call _LABEL_24BD_
		ld (iy+16), $C0
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $00
		jp +++
	
++:	
		ld (iy+0), $E8
		call _LABEL_24BD_
		ld (iy+16), $E8
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $0F
+++:	
		ld (iy+24), $01
		ld (iy+25), $01
		ld a, r
		rrca
		jp c, _LABEL_130F_
		ld (iy+8), $50
_LABEL_130F_:	
		call _LABEL_182D_
		ld de, _DATA_1891_
		call _LABEL_184B_
		bit 5, (iy+5)
		jp nz, _LABEL_1378_
		call _LABEL_A85_
_LABEL_1322_:	
		dec (iy+24)
		ret nz
		ld a, (iy+25)
		ld (iy+24), a
		dec (iy+29)
		jp nz, +
		ld a, (iy+30)
		ld (iy+29), a
		ld (iy+10), $01
+:	
		ld a, (_RAM_C25D_)
		and $01
		jp z, +++
		ld a, (_RAM_C001_)
		cp (iy+1)
		jp nc, +
		set 7, (iy+8)
		res 6, (iy+8)
		jp ++
	
+:	
		set 6, (iy+8)
		res 7, (iy+8)
++:	
		ld (iy+30), $01
		ld (iy+10), $01
+++:	
		call _LABEL_1F27_
		ld a, (_RAM_C207_)
		cp $03
		ret nc
		ld (iy+10), $00
		jp _LABEL_24C3_
	
_LABEL_1378_:	
		ld (iy+16), $ED
		bit 4, (iy+5)
		jp nz, _LABEL_1322_
		set 4, (iy+5)
		bit 3, (iy+5)
		jp nz, +
		ld (iy+16), $ED
		ld (iy+3), $81
		ld (iy+19), $80
		jp _LABEL_1322_
	
+:	
		ld a, (iy+0)
		ld (iy+16), a
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+3), $87
		ld (iy+19), $88
		res 4, (iy+5)
		res 5, (iy+5)
		jp _LABEL_1322_
	
; Data from 13BC to 13C5 (10 bytes)	
_DATA_13BC_:	
	.db $00 $08 $90 $01 $01 $02 $08 $68 $28 $02
	
; Data from 13C6 to 13CD (8 bytes)	
_DATA_13C6_:	
	.db $80 $28 $78 $28 $68 $28 $70 $28
	
; 2nd entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_13CE_:	
		bit 0, (iy+5)
		jp nz, _LABEL_1465_
		set 0, (iy+5)
		ld (iy+28), $00
		ld a, r
		and $03
		add a, $03
		ld (iy+29), a
		ld (iy+30), a
		ld de, _DATA_13BC_
		call _LABEL_A75_
		ld a, r
		and $06
		ld l, a
		ld h, $00
		ld de, _DATA_13C6_
		add hl, de
		ld a, (hl)
		ld (iy+13), a
		inc hl
		ld a, (hl)
		ld (iy+14), a
		ld (iy+31), $02
		call _LABEL_AD0_
		ld a, (_RAM_C244_)
		bit 0, a
		jp z, +
		ld (iy+3), $81
		ld (iy+19), $80
+:	
		ld a, (_RAM_C207_)
		and a
		jp z, +
		cp $04
		jp c, ++
+:	
		ld (iy+0), $C0
		call _LABEL_24BD_
		ld (iy+16), $C0
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $00
		jp +++
	
++:	
		ld (iy+0), $E8
		call _LABEL_24BD_
		ld (iy+16), $E8
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $0F
+++:	
		ld (iy+24), $01
		ld (iy+25), $01
		ld a, r
		rrca
		jp c, _LABEL_1465_
		ld (iy+8), $50
_LABEL_1465_:	
		call _LABEL_182D_
		ld de, _DATA_19B1_
		call _LABEL_184B_
		bit 5, (iy+5)
		jp nz, _LABEL_14CE_
		call _LABEL_A85_
_LABEL_1478_:	
		dec (iy+24)
		ret nz
		ld a, (iy+25)
		ld (iy+24), a
		dec (iy+29)
		jp nz, +
		ld a, (iy+30)
		ld (iy+29), a
		ld (iy+10), $01
+:	
		ld a, (_RAM_C25D_)
		and $01
		jp z, +++
		ld a, (_RAM_C001_)
		cp (iy+1)
		jp nc, +
		set 7, (iy+8)
		res 6, (iy+8)
		jp ++
	
+:	
		set 6, (iy+8)
		res 7, (iy+8)
++:	
		ld (iy+30), $01
		ld (iy+10), $02
+++:	
		call _LABEL_1F27_
		ld a, (_RAM_C207_)
		cp $03
		ret nc
		ld (iy+10), $00
		jp _LABEL_24C3_
	
_LABEL_14CE_:	
		ld (iy+16), $ED
		bit 4, (iy+5)
		jp nz, _LABEL_1478_
		set 4, (iy+5)
		bit 3, (iy+5)
		jp nz, +
		ld (iy+16), $ED
		ld (iy+3), $81
		ld (iy+19), $80
		jp _LABEL_1478_
	
+:	
		ld a, (iy+0)
		ld (iy+16), a
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+3), $87
		ld (iy+19), $88
		res 4, (iy+5)
		res 5, (iy+5)
		jp _LABEL_1478_
	
; 3rd entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_1512_:	
		bit 0, (iy+5)
		jp nz, _LABEL_15AA_
		set 0, (iy+5)
		ld (iy+28), $00
		ld a, r
		and $01
		inc a
		ld (iy+29), a
		ld (iy+30), a
		ld de, _DATA_13BC_
		call _LABEL_A75_
		ld a, r
		and $06
		ld l, a
		ld h, $00
		ld de, _DATA_13C6_
		add hl, de
		ld a, (hl)
		ld (iy+13), a
		inc hl
		ld a, (hl)
		ld (iy+14), a
		ld (iy+31), $02
		call _LABEL_AD0_
		ld a, (_RAM_C244_)
		bit 0, a
		jp z, +
		ld (iy+3), $81
		ld (iy+19), $80
+:	
		ld a, (_RAM_C207_)
		and a
		jp z, +
		cp $04
		jp c, ++
+:	
		ld (iy+0), $C0
		ld (iy+16), $C0
		call _LABEL_24BD_
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $00
		jp +++
	
++:	
		ld (iy+0), $E8
		ld (iy+16), $E8
		call _LABEL_24BD_
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+26), $0F
+++:	
		ld (iy+24), $01
		ld (iy+25), $01
		ld a, (_RAM_C001_)
		cp $90
		jp c, _LABEL_15AA_
		ld (iy+8), $50
_LABEL_15AA_:	
		call _LABEL_182D_
		ld de, _DATA_19B1_
		call _LABEL_184B_
		bit 5, (iy+5)
		jp nz, _LABEL_1647_
		ld a, (iy+0)
		cp $60
		jp c, ++
		cp $A0
		jp nc, ++
		bit 7, (iy+5)
		jp nz, ++
		set 7, (iy+5)
		ld a, (_RAM_C001_)
		cp (iy+1)
		jp nc, +
		set 6, (iy+8)
		res 7, (iy+8)
		jp ++
	
+:	
		set 7, (iy+8)
		res 6, (iy+8)
++:	
		call _LABEL_A85_
_LABEL_15F1_:	
		dec (iy+24)
		ret nz
		ld a, (iy+25)
		ld (iy+24), a
		dec (iy+29)
		jp nz, +
		ld a, (iy+30)
		ld (iy+29), a
		ld (iy+10), $01
+:	
		ld a, (_RAM_C25D_)
		and $01
		jp z, +++
		ld a, (_RAM_C001_)
		cp (iy+1)
		jp nc, +
		set 7, (iy+8)
		res 6, (iy+8)
		jp ++
	
+:	
		set 6, (iy+8)
		res 7, (iy+8)
++:	
		ld (iy+30), $01
		ld (iy+10), $02
+++:	
		call _LABEL_1F27_
		ld a, (_RAM_C207_)
		cp $03
		ret nc
		ld (iy+10), $00
		jp _LABEL_24C3_
	
_LABEL_1647_:	
		ld (iy+16), $ED
		bit 4, (iy+5)
		jp nz, _LABEL_15F1_
		set 4, (iy+5)
		bit 3, (iy+5)
		jp nz, +
		ld (iy+16), $ED
		ld (iy+3), $81
		ld (iy+19), $80
		jp _LABEL_15F1_
	
+:	
		ld a, (iy+0)
		ld (iy+16), a
		ld a, (iy+1)
		ld (iy+17), a
		ld (iy+3), $87
		ld (iy+19), $88
		res 4, (iy+5)
		res 5, (iy+5)
		jp _LABEL_15F1_
	
; 4th entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_168B_:	
		bit 0, (iy+5)
		jp nz, _LABEL_16DB_
		set 0, (iy+5)
		ld de, _DATA_1709_
		call _LABEL_A75_
		call _LABEL_AD0_
		ld a, (_RAM_C21C_)
		cp $08
		jp c, +
		ld (iy+9), $04
+:	
		ld a, r
		and $1F
		sub $10
		ld b, a
		ld a, (_RAM_C001_)
		add a, b
		ld (iy+1), a
		ld (iy+17), a
		ld (iy+33), a
		ld (iy+49), a
		ld (iy+0), $BF
		ld (iy+16), $BF
		ld (iy+32), $CF
		ld (iy+48), $CF
		ld a, $81
		ld (_RAM_C310_), a
		ld (iy+30), $64
_LABEL_16DB_:	
		bit 7, (iy+28)
		jp nz, ++
		ld a, (iy+30)
		cp $32
		jp nz, +
		ld a, $01
		ld (_RAM_C25D_), a
+:	
		dec (iy+30)
		ret nz
		set 7, (iy+28)
++:	
		ld a, (iy+0)
		cp $70
		jp nc, +
		xor a
		ld (_RAM_C25D_), a
+:	
		call _LABEL_A85_
		jp _LABEL_1F27_
	
; Data from 1709 to 1712 (10 bytes)	
_DATA_1709_:	
	.db $00 $08 $20 $02 $00 $03 $08 $88 $28 $04
	
; 21st entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_1713_:	
		bit 1, (iy+5)
		jp nz, +
		set 1, (iy+5)
		ld de, _DATA_88B_
		call _LABEL_A75_
		ld (iy+8), $10
		ld (iy+22), $00
		ld a, (iy+0)
		sub $08
		ld (iy+0), a
		ld (iy+16), a
		add a, $10
		ld (iy+32), a
		ld (iy+48), a
		ld a, (iy+1)
		ld (iy+33), a
		ld (iy+49), a
+:	
		ld a, (_RAM_C207_)
		and a
		jp z, ++
		cp $07
		jp nc, ++
		cp $01
		jp nz, +
		ld (iy+9), $08
		jp +++
	
+:	
		neg
		add a, $06
		ld (iy+9), a
		jp +++
	
++:	
		ld (iy+9), $00
+++:	
		call _LABEL_A85_
		call _LABEL_1F27_
		ld a, (iy+6)
		cp $02
		jp nz, +
		ld (iy+22), $FF
		ret
	
+:	
		cp $01
		ret nz
		ld a, (iy+22)
		cp $FF
		ret nz
		push iy
		pop hl
		ld e, l
		ld d, h
		inc de
		ld bc, $003F
		ld (hl), $00
		ldir
		ld (iy+0), $D8
		ld (iy+16), $D8
		ld (iy+32), $D8
		ld (iy+48), $D8
		ret
	
; 31st entry of Jump Table from 2357 (indexed by _RAM_C044_)	
_LABEL_17A8_:	
		bit 1, (iy+5)
		jp nz, +
		set 1, (iy+5)
		ld de, _DATA_94E_
		call _LABEL_A75_
		ld (iy+8), $10
		ld (iy+22), $00
		ld a, (iy+0)
		sub $08
		ld (iy+0), a
		ld (iy+16), a
		add a, $10
		ld (iy+32), a
		ld (iy+48), a
		ld a, (iy+1)
		ld (iy+33), a
		ld (iy+49), a
+:	
		ld a, (_RAM_C207_)
		and a
		jp z, ++
		cp $07
		jp nc, ++
		cp $01
		jp nz, +
		ld (iy+9), $08
		jp +++
	
+:	
		neg
		add a, $06
		ld (iy+9), a
		jp +++
	
++:	
		ld (iy+9), $00
+++:	
		call _LABEL_A85_
		call _LABEL_1F27_
		ld a, (iy+6)
		cp $04
		ret nz
		push iy
		pop hl
		ld e, l
		ld d, h
		inc de
		ld bc, $003F
		ld (hl), $00
		ldir
		ld (iy+0), $D8
		ld (iy+16), $D8
		ld (iy+32), $D8
		ld (iy+48), $D8
		ret
	
_LABEL_182D_:	
		ld a, (_RAM_C207_)
		cp $04
		jp c, +
		ld a, (iy+26)
		inc a
		cp $10
		ret nc
		ld (iy+26), a
		ret
	
+:	
		ld a, (iy+26)
		dec a
		cp $FF
		ret z
		ld (iy+26), a
		ret
	
_LABEL_184B_:	
		dec (iy+31)
		ret nz
		ld (iy+31), $06
		ld a, (iy+26)
		and $0F
		ld b, a
		ld a, (_RAM_C207_)
		cp $06
		jp c, +
		xor a
+:	
		push de
		rlca
		rlca
		rlca
		rlca
		and $F0
		or b
		ld l, a
		ld h, $00
		ld d, h
		ld e, a
		add hl, hl
		add hl, de
		pop de
		add hl, de
		ld b, (hl)
		ld a, (iy+8)
		ld c, a
		and $C0
		or b
		cp c
		jp z, +
		res 3, (iy+28)
+:	
		ld (iy+8), a
		inc hl
		ld a, (hl)
		ld (iy+9), a
		inc hl
		ld a, (hl)
		ld (iy+25), a
		ret
	
; Data from 1891 to 19B0 (288 bytes)	
_DATA_1891_:	
	.db $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20
	.db $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03
	.db $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01
	.db $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10
	.db $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04
	.db $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01 $10 $04 $01
	.db $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10
	.db $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03
	.db $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01
	.db $10 $02 $01 $10 $01 $01 $10 $01 $01 $10 $01 $02 $10 $01 $02 $10
	.db $01 $03 $10 $01 $03 $10 $01 $04 $10 $01 $04 $20 $00 $01 $20 $01
	.db $04 $20 $01 $04 $20 $01 $03 $20 $01 $03 $20 $01 $02 $20 $01 $02
	.db $10 $01 $01 $10 $01 $01 $10 $01 $02 $10 $01 $02 $10 $01 $02 $10
	.db $01 $03 $10 $01 $03 $10 $01 $03 $10 $01 $04 $20 $00 $01 $20 $01
	.db $04 $20 $01 $04 $20 $01 $03 $20 $01 $03 $20 $01 $02 $20 $01 $01
	.db $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20
	.db $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02
	.db $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01
	
; Data from 19B1 to 1AD0 (288 bytes)	
_DATA_19B1_:	
	.db $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20
	.db $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03
	.db $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01 $20 $03 $01
	.db $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10
	.db $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03
	.db $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01 $10 $03 $01
	.db $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10
	.db $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02
	.db $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01 $10 $02 $01
	.db $10 $02 $01 $10 $01 $01 $10 $01 $01 $10 $01 $02 $10 $01 $02 $10
	.db $01 $03 $10 $01 $03 $10 $01 $04 $10 $01 $04 $20 $00 $01 $20 $01
	.db $04 $20 $01 $04 $20 $01 $03 $20 $01 $03 $20 $01 $02 $20 $01 $02
	.db $10 $01 $01 $10 $01 $01 $10 $01 $02 $10 $01 $02 $10 $01 $02 $10
	.db $01 $03 $10 $01 $03 $10 $01 $03 $10 $01 $04 $20 $00 $01 $20 $01
	.db $04 $20 $01 $04 $20 $01 $03 $20 $01 $03 $20 $01 $02 $20 $01 $01
	.db $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20
	.db $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02
	.db $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01 $20 $02 $01
	
_LABEL_1AD1_:	
		ld a, (_RAM_C238_)
		bit 2, a
		ret nz
		ld a, (_RAM_C251_)
		ld b, a
		ld a, (_RAM_C21A_)
		cp b
		ret z
		ld (_RAM_C251_), a
		ld b, a
		ld a, (_RAM_C25F_)
		and b
		ret nz
		ld a, (_RAM_C21C_)
		and $0F
		ld l, a
		ld h, $00
		ld de, _DATA_1B1D_
		add hl, de
		ld c, (hl)
		ld a, (_RAM_C21B_)
		and $7F
		cp $27
		jp nz, +
		ld c, $14
+:	
		ld iy, _RAM_C040_
		ld a, (_RAM_C25E_)
		ld b, a
		ld de, $0040
-:	
		bit 0, (iy+5)
		jp nz, +
		ld (iy+4), c
		ret
	
+:	
		add iy, de
		djnz -
		ret
	
; Data from 1B1D to 1B2C (16 bytes)	
_DATA_1B1D_:	
	.db $02 $02 $02 $03 $02 $02 $03 $02 $01 $03 $03 $01 $01 $01 $02 $01
	
_LABEL_1B2D_:	
		push af
		push bc
		push de
		push hl
		exx
		ex af, af'
		push af
		push bc
		push de
		push hl
		push ix
		push iy
		in a, (Port_VDPStatus)
		ld a, (_RAM_C203_)
		inc a
		cp $F0
		jp nz, +
		ld a, $F0
+:	
		ld (_RAM_C203_), a
		ld hl, _RAM_C000_
		ld de, $3B00
		call _LABEL_398_
		ld de, $000C
		ld a, $1D
		ld c, Port_VDPData
-:	
		ld b, $04
		otir
		add hl, de
		dec a
		jp nz, -
		ld a, (_RAM_C21A_)
		rlca
		jr nc, +++
		ld a, (_RAM_C219_)
		dec a
		ld (_RAM_C219_), a
		jr nz, +++
		call _LABEL_1E54_
		ld hl, _DATA_2241_
		ld a, (_RAM_C24E_)
		and $01
		jp z, ++
		ld a, (_RAM_C207_)
		cp $06
		jp c, +
		ld a, $00
+:	
		ld b, a
		add a, a
		add a, b
		ld e, a
		ld d, $00
		add hl, de
		call _LABEL_21B1_
		call _LABEL_2039_
++:	
		xor a
		ld (_RAM_C24E_), a
		ld a, (_RAM_C21A_)
		and $7F
		ld (_RAM_C21A_), a
+++:	
		ld a, (_RAM_C260_)
		and a
		jr z, +
		call _LABEL_B30_
		call _LABEL_AD6_
+:	
		ld a, (_RAM_C23B_)
		and a
		jp z, +
		dec a
		ld (_RAM_C23B_), a
		jp ++
	
+:	
		ld a, $01
		ld (_RAM_C260_), a
++:	
		call _LABEL_5078_
		call _LABEL_5223_
		pop iy
		pop ix
		pop hl
		pop de
		pop bc
		pop af
		ex af, af'
		exx
		pop hl
		pop de
		pop bc
		pop af
		ei
		ret
	
	; Data from 1BD9 to 1BF7 (31 bytes)
	.db $E5 $7E $D3 $BE $23 $10 $FA $E1 $C9 $21 $36 $C2 $35 $C0 $36 $40
	.db $23 $7E $3D $77 $FE $FF $C0 $36 $00 $21 $38 $C2 $CB $CE $C9
	
_LABEL_1BF8_:	
		push de
		push bc
		ld hl, _DATA_1D23_
		ld a, b
		rrca
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		inc hl
		ld b, (hl)
		add a, d
		ld h, a
		ld a, b
		add a, d
		ld l, a
		push hl
		ld d, (iy+0)
		ld a, (iy+2)
		ld hl, _DATA_1D23_
		rrca
		ld c, a
		ld b, $00
		add hl, bc
		ld b, (hl)
		inc hl
		ld a, (hl)
		add a, d
		ld e, a
		ld a, b
		add a, d
		ld d, a
		pop hl
		ld a, h
		cp d
		jr c, +
		ex de, hl
+:	
		ld a, d
		cp l
		pop bc
		pop de
		ret
	
_LABEL_1C2D_:	
		ld hl, _DATA_1CA3_
		ld a, b
		rrca
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		inc hl
		ld b, (hl)
		add a, e
		ld h, a
		ld a, b
		add a, e
		ld l, a
		push hl
		ld e, (iy+1)
		ld a, (iy+2)
		rrca
		ld c, a
		ld b, $00
		ld hl, _DATA_1CA3_
		add hl, bc
		ld a, (hl)
		add a, e
		ld d, a
		inc hl
		ld a, (hl)
		add a, e
		ld e, a
		pop hl
		ld a, h
		cp d
		jr c, +
		ex de, hl
+:	
		ld a, d
		cp l
		ret
	
--:	
		ld hl, _RAM_C005_
		and a
		bit 0, (hl)
		ret z
		bit 1, (hl)
		ret nz
		dec hl
		dec hl
		dec hl
		ld b, (hl)
		dec hl
		ld e, (hl)
		dec hl
		ld d, (hl)
		call _LABEL_1BF8_
		ret nc
		call _LABEL_1C2D_
		ret nc
		ld hl, _RAM_C240_
		set 0, (hl)
		scf
		ret
	
_LABEL_1C7E_:	
		ld a, (_RAM_C242_)
		and $03
		cp $03
		ret z
		ld iy, _RAM_C040_
		ld b, $04
-:	
		push bc
		bit 0, (iy+5)
		jr z, +
		call --
		jr c, ++
+:	
		pop bc
		ld de, $0040
		add iy, de
		djnz -
		ret
	
++:	
		pop bc
		ret
	
; Data from 1CA3 to 1D22 (128 bytes)	
_DATA_1CA3_:	
	.db $02 $0E $02 $0E $08 $0F $05 $0B $06 $09 $08 $08 $0F $0A $03 $0C
	.db $0F $0F $00 $0F $00 $0D $00 $08 $03 $0D $04 $0B $05 $09 $04 $0B
	.db $05 $0B $04 $0B $04 $0C $05 $0B $05 $0B $06 $0A $04 $0B $05 $0B
	.db $05 $0B $04 $0C $06 $08 $00 $00 $00 $00 $05 $0A $00 $00 $00 $00
	.db $05 $09 $05 $0A $04 $0B $05 $0A $05 $0A $05 $0A $05 $0A $05 $0A
	.db $05 $0A $05 $0A $05 $0A $05 $0A $05 $0A $03 $0C $03 $0C $03 $0C
	.db $03 $0C $05 $0A $03 $0C $03 $0C $03 $0C $04 $0C $04 $0B $04 $0A
	.db $05 $0A $05 $09 $06 $09 $00 $08 $00 $08 $00 $05 $08 $0F $0F $0F
	
; Data from 1D23 to 1DA2 (128 bytes)	
_DATA_1D23_:	
	.db $02 $0E $02 $0E $08 $08 $00 $08 $05 $0A $00 $08 $05 $0B $04 $0A
	.db $08 $08 $08 $08 $08 $08 $08 $08 $03 $0E $05 $0B $05 $09 $04 $0D
	.db $03 $0D $00 $0F $04 $0C $04 $0B $05 $09 $05 $0A $06 $0B $06 $08
	.db $00 $0D $04 $0B $05 $09 $00 $00 $00 $00 $00 $0A $00 $00 $00 $00
	.db $06 $09 $04 $0A $04 $0B $05 $0B $05 $0B $05 $0B $05 $0B $05 $0B
	.db $05 $0B $05 $0B $05 $0B $05 $0B $05 $0B $04 $0A $04 $0A $04 $0A
	.db $04 $0A $05 $0A $04 $0A $04 $0A $04 $0A $04 $0C $04 $0C $04 $0C
	.db $04 $0C $04 $0C $04 $0C
	.dsb 10, $08
	
_LABEL_1DA3_:	
		ld a, (_RAM_C21A_)
		bit 7, a
		ret nz
		inc a
		cp $18
		jr c, ++
		ld a, (_RAM_C21B_)
		inc a
		and $7F
		ld (_RAM_C21B_), a
		and a
		jr nz, +
		ld a, (_RAM_C21C_)
		inc a
		ld (_RAM_C21C_), a
+:	
		xor a
++:	
		or $80
		ld (_RAM_C21A_), a
		ld a, (_RAM_C217_)
		ld (_RAM_C219_), a
		ret
	
_LABEL_1DCE_:	
		push hl
		push bc
		push de
		ld a, (_RAM_C21B_)
		ld l, a
		ld h, $00
		ld d, h
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld a, (_RAM_C21C_)
		and $07
		add a, a
		ld e, a
		add hl, de
		ld de, _DATA_6AA9_
		add hl, de
		push hl
		ld l, (hl)
		ld a, l
		and $3F
		ld (_RAM_C252_), a
		ld h, a
		ld a, l
		rrca
		rrca
		rrca
		rrca
		and $0C
		ld (_RAM_C24F_), a
		ld a, h
		ld l, $00
		ex de, hl
		ld l, a
		ld h, e
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		push hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld d, h
		ld e, l
		add hl, hl
		add hl, de
		pop de
		add hl, de
		ld de, $28A0
		add hl, de
		ld (_RAM_C224_), hl
		pop hl
		inc hl
		ld l, (hl)
		ld a, l
		and $3F
		ld (_RAM_C253_), a
		ld h, a
		ld a, l
		rlca
		rlca
		and $03
		ld l, a
		ld a, (_RAM_C24F_)
		or l
		ld (_RAM_C24F_), a
		ld a, h
		ld l, $00
		ex de, hl
		ld l, a
		ld h, e
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		push hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld d, h
		ld e, l
		add hl, hl
		add hl, de
		pop de
		add hl, de
		ld de, $28A0
		add hl, de
		ld (_RAM_C227_), hl
		pop de
		pop bc
		pop hl
		ret
	
_LABEL_1E54_:	
		ld a, (_RAM_C21B_)
		or a
		push af
		jr nz, +
		ld a, (_RAM_C21C_)
		or a
		jr z, ++
		scf
		push af
		dec a
		ld (_RAM_C21C_), a
		xor a
+:	
		dec a
		and $7F
++:	
		ld (_RAM_C21B_), a
		call _LABEL_1DCE_
		ld a, (_RAM_C252_)
		ld (_RAM_C255_), a
		ld (_RAM_C261_), a
		ld a, (_RAM_C253_)
		ld (_RAM_C262_), a
		ld hl, (_RAM_C224_)
		ld (_RAM_C21E_), hl
		ld hl, (_RAM_C227_)
		ld (_RAM_C221_), hl
		pop af
		jr nc, +
		ld (_RAM_C21C_), a
		pop af
+:	
		ld (_RAM_C21B_), a
		call _LABEL_1DCE_
		ld a, (_RAM_C253_)
		ld (_RAM_C254_), a
		ld (_RAM_C264_), a
		ld a, (_RAM_C252_)
		ld (_RAM_C263_), a
		ld a, (_RAM_C21A_)
		inc a
		and $7F
		push af
		cp $0D
		jr c, +
		ld a, $0C
+:	
		ld (_RAM_C223_), a
		ld b, a
		neg
		add a, $0C
		ld (_RAM_C21D_), a
		pop af
		sub b
		ld (_RAM_C226_), a
		neg
		add a, $0C
		ld (_RAM_C220_), a
		ld b, $04
		ld hl, _RAM_C21D_
		ld de, $7AE0
_LABEL_1ED4_:	
		push bc
		push hl
		push de
		ld a, (hl)
		or a
		jr z, ++
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld c, a
		ld a, b
		cp $03
		jr c, +
		ld a, c
		neg
		add a, $0C
		push bc
		ld c, a
		add a, a
		add a, c
		add a, a
		ld l, a
		ld h, $00
		ld b, h
		add hl, hl
		add hl, hl
		add hl, bc
		add hl, de
		ex de, hl
		pop bc
+:	
		ex de, hl
		ld a, c
		pop de
--:	
		ex af, af'
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		push af
		pop af
		ld b, $19
-:	
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		djnz -
		ex de, hl
		ld bc, $FFE0
		add hl, bc
		ex de, hl
		ex af, af'
		dec a
		jr nz, --
		push de
++:	
		pop de
		pop hl
		inc hl
		inc hl
		inc hl
		pop bc
		dec b
		ld a, b
		ld (_RAM_C23C_), a
		jp nz, _LABEL_1ED4_
		ret
	
_LABEL_1F27_:	
		ld a, (iy+8)
		or a
		ret z
		ld (_RAM_C231_), hl
		rlca
		push af
		call c, _LABEL_1F86_
		pop af
		rlca
		push af
		call c, _LABEL_1FA1_
		pop af
		rlca
		push af
		call c, _LABEL_1F7E_
		pop af
		rlca
		push af
		call c, +
		pop af
		ret
	
+:	
		ld a, (iy+9)
--:	
		push iy
		pop hl
		ld de, $0010
		ld b, (iy+15)
		ld c, a
-:	
		ld a, c
		add a, (hl)
		cp $D0
		jr c, +
		cp $DC
		jr c, _LABEL_1F64_
+:	
		ld (hl), a
		add hl, de
		djnz -
		ret
	
_LABEL_1F64_:	
		push iy
		pop hl
		ld b, $0F
		ld (hl), $D8
		ld (iy+16), $D8
		ld (iy+32), $D8
		ld (iy+48), $D8
		inc hl
		xor a
-:	
		ld (hl), a
		inc hl
		djnz -
		ret
	
_LABEL_1F7E_:	
		ld a, (iy+9)
		neg
		jp --
	
_LABEL_1F86_:	
		ld a, (iy+10)
		neg
--:	
		ld c, a
		push iy
		pop hl
		ld de, $0010
		ld b, (iy+15)
		inc hl
-:	
		ld a, c
		add a, (hl)
		cp $D9
		jr nc, _LABEL_1F64_
		ld (hl), a
		add hl, de
		djnz -
		ret
	
_LABEL_1FA1_:	
		ld a, (iy+10)
		jp --
	
	; Data from 1FA7 to 1FB0 (10 bytes)
	.db $47 $41 $4D $45 $20 $20 $4F $56 $45 $52
	
; Data from 1FB1 to 1FBA (10 bytes)	
_DATA_1FB1_:	
	.db $47 $41 $4D $45 $20 $53 $54 $41 $52 $54
	
; Data from 1FBB to 1FCD (19 bytes)	
_DATA_1FBB_:	
	.db $50 $55 $53 $48 $20 $4A $7C $53 $54 $49 $43 $4B $20 $42 $55 $54
	.db $54 $4F $4E
	
; Data from 1FCE to 1FDF (18 bytes)	
_DATA_1FCE_:	
	.db $4F $52 $50 $55 $53 $48 $20 $49 $4E $53 $66 $44 $45 $4C $20 $4B
	.db $45 $59
	
_LABEL_1FE0_:	
		call _LABEL_26E7_
		ld de, $3963
		call _LABEL_398_
		ld b, $13
		ld hl, _DATA_1FBB_
		call _LABEL_2025_
		ld de, $39AA
		call _LABEL_398_
		ld b, $02
		ld hl, _DATA_1FCE_
		call _LABEL_2025_
		ld de, $39E3
		call _LABEL_398_
		ld b, $10
		ld hl, _DATA_1FCE_ + 2
		jp _LABEL_2025_
	
	; Data from 200D to 2019 (13 bytes)
	.db $11 $4A $39 $CD $98 $03 $21 $A7 $1F $06 $0A $18 $0B
	
_LABEL_201A_:	
		ld de, $3949
		call _LABEL_398_
		ld hl, _DATA_1FB1_
		ld b, $0A
_LABEL_2025_:	
		ld de, $0001
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
-:	
		dec de
		ld a, d
		or e
		jr nz, -
		djnz _LABEL_2025_
		ret
	
	; Data from 2034 to 2038 (5 bytes)
	.db $11 $FF $0F $18 $EF
	
_LABEL_2039_:	
		ld hl, _RAM_C214_
		push hl
		ex de, hl
		call +
		pop hl
		ld de, $1902
		ld b, $06
		xor a
		jp _LABEL_213A_
	
+:	
		dec de
		dec de
		push de
		ld hl, _RAM_C20F_
		ld b, $03
		and a
-:	
		ld a, (de)
		sbc a, (hl)
		inc hl
		inc de
		djnz -
		pop hl
		ret c
		ld de, _RAM_C20F_
		ld bc, $0003
		ldir
_LABEL_2064_:	
		ld hl, _RAM_C211_
		ld de, $1905
		ld b, $06
		xor a
		jp _LABEL_213A_
	
_LABEL_2070_:	
		ld de, $3A59
		call _LABEL_398_
		ld b, $06
		ld hl, _DATA_210D_
		call _LABEL_2025_
		ld de, $3A7B
		call _LABEL_398_
		ld b, $03
		ld hl, _DATA_2113_
		call _LABEL_2025_
		ld de, $399A
		call _LABEL_398_
		ld b, $05
		ld hl, _DATA_2121_
		call _LABEL_2025_
		ld de, $39BC
		call _LABEL_398_
		ld a, (_RAM_C25E_)
		add a, $30
		out (Port_VDPData), a
		ld de, $38F9
		call _LABEL_398_
		ld b, $06
		ld hl, _DATA_2104_
		call _LABEL_2025_
		ld de, $391B
		call _LABEL_398_
		ld b, $03
		ld hl, _DATA_210A_
		call _LABEL_2025_
_LABEL_20C3_:	
		ld de, $3839
		call _LABEL_398_
		ld b, $05
		ld hl, _DATA_20FC_
		call _LABEL_2025_
		ld de, $3899
		call _LABEL_398_
		ld b, $03
		ld hl, _DATA_2101_
		call _LABEL_2025_
		ld de, $3AD9
		call _LABEL_398_
		ld b, $07
		ld hl, _DATA_2116_
		call _LABEL_2025_
		ld de, $3AFA
		call _LABEL_398_
		ld b, $04
		ld hl, _DATA_211D_
		call _LABEL_2025_
		ret
	
; Data from 20FC to 2100 (5 bytes)	
_DATA_20FC_:	
	.db $53 $43 $4F $52 $45
	
; Data from 2101 to 2103 (3 bytes)	
_DATA_2101_:	
	.db $54 $4F $50
	
; Data from 2104 to 2109 (6 bytes)	
_DATA_2104_:	
	.db $50 $4C $41 $59 $45 $52
	
; Data from 210A to 210C (3 bytes)	
_DATA_210A_:	
	.db $43 $41 $52
	
; Data from 210D to 2112 (6 bytes)	
_DATA_210D_:	
	.db $4D $4F $4E $41 $43 $4F
	
; Data from 2113 to 2115 (3 bytes)	
_DATA_2113_:	
	.db $47 $20 $50
	
; Data from 2116 to 211C (7 bytes)	
_DATA_2116_:	
	.db $5B $20 $7D $70 $6F $6E $6D
	
; Data from 211D to 2120 (4 bytes)	
_DATA_211D_:	
	.db $31 $39 $38 $33
	
; Data from 2121 to 2125 (5 bytes)	
_DATA_2121_:	
	.db $4C $45 $56 $45 $4C
	
-:	
		push af
		push de
		ld l, e
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld a, d
		or l
		ld l, a
		ld de, $3800
		add hl, de
		pop de
		pop af
		ret
	
_LABEL_213A_:	
		ex af, af'
		push hl
		call -
		ld a, l
		out (Port_VDPAddress), a
		push ix
		pop ix
		push iy
		pop iy
		ld a, h
		or $40
		out (Port_VDPAddress), a
		pop de
		srl b
		jr nc, _LABEL_2157_
		inc b
		jr +
	
_LABEL_2157_:	
		ld a, (de)
		rrca
		rrca
		rrca
		rrca
		call ++
+:	
		ld a, (de)
		call ++
		dec de
		djnz _LABEL_2157_
		ex af, af'
		ret nz
		dec hl
		ld a, l
		out (Port_VDPAddress), a
		push ix
		pop ix
		push iy
		pop iy
		ld a, h
		or $40
		out (Port_VDPAddress), a
		xor a
		jr +++
	
++:	
		and $0F
		push bc
		ld c, a
		ex af, af'
		or c
		pop bc
		jr z, ++++
		ex af, af'
+++:	
		add a, $30
		out (Port_VDPData), a
		push ix
		pop ix
		push ix
		pop ix
		inc hl
		ret
	
++++:	
		ex af, af'
		push af
		ld a, $20
		out (Port_VDPData), a
		inc hl
		pop af
		ret
	
_LABEL_219D_:	
		push bc
		ld b, $05
-:	
		dec b
		jr nz, -
		pop bc
		ret
	
_LABEL_21A5_:	
		ld bc, $0000
-:	
		dec bc
		ld a, c
		or b
		jr nz, -
		dec e
		jr nz, _LABEL_21A5_
		ret
	
_LABEL_21B1_:	
		ld de, _RAM_C212_
		ld a, (de)
		add a, (hl)
		daa
		ld (de), a
		inc hl
		inc de
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		push af
		push de
		push hl
		call c, _LABEL_2295_
		pop hl
		pop de
		pop af
		inc hl
		inc de
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		ret nc
		ld hl, _RAM_C20F_
		ld a, $99
		ld b, $03
-:	
		ld (hl), a
		inc hl
		djnz -
		ld hl, _RAM_C212_
		xor a
		ld b, $03
-:	
		ld (hl), a
		inc hl
		djnz -
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		di
		call _LABEL_385_
		ld de, $3908
		ld hl, _DATA_2253_
		ld b, $11
		call _LABEL_398_
		call _LABEL_2025_
		ld de, $3944
		ld hl, _DATA_2264_
		ld b, $15
		call _LABEL_398_
		call _LABEL_2025_
		ld de, $3982
		ld hl, _DATA_2279_
		ld b, $1C
		call _LABEL_398_
		call _LABEL_2025_
		ld e, $0A
		call _LABEL_21A5_
		call _LABEL_385_
		call _LABEL_2070_
		ld a, (_RAM_C201_)
		cp $FF
		ld a, $04
		jp z, +
		ld a, $FF
+:	
		ld (_RAM_C201_), a
		call _LABEL_2395_
		jp _LABEL_2064_
	
; Data from 2241 to 2252 (18 bytes)	
_DATA_2241_:	
	.db $01 $00 $00 $04 $00 $00 $03 $00 $00 $02 $00 $00 $01 $00 $00 $01
	.db $00 $00
	
; Data from 2253 to 2263 (17 bytes)	
_DATA_2253_:	
	.db $43 $4F $4E $47 $52 $41 $54 $55 $4C $41 $54 $49 $4F $4E $53 $20
	.db $F6
	
; Data from 2264 to 2278 (21 bytes)	
_DATA_2264_:	
	.db $49 $20 $48 $41 $56 $45 $20 $4E $4F $20 $4D $4F $52 $45 $20 $50
	.db $55 $52 $53 $45 $65
	
; Data from 2279 to 2294 (28 bytes)	
_DATA_2279_:	
	.db $59 $4F $55 $52 $20 $53 $43 $4F $52 $45 $20 $49 $53 $20 $39 $39
	.db $39 $39 $39 $39 $20 $50 $4F $49 $4E $54 $53 $65
	
_LABEL_2295_:	
		ld a, (_RAM_C201_)
		cp $04
		ret nc
		inc a
		ld (_RAM_C201_), a
		ld a, $83
		ld (_RAM_C310_), a
		jp _LABEL_2395_
	
_LABEL_22A7_:	
		ld a, (_RAM_C204_)
		and a
		jr z, ++
		jp _LABEL_7F80_
	
_LABEL_22B0_:	
		nop
		bit 4, a
		jr nz, +
		res 6, a
+:	
		bit 5, a
		ret nz
		res 6, a
		ret
	
++:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		or $C0
		bit 4, a
		jr nz, +
		res 6, a
+:	
		bit 5, a
		jr nz, +
		res 6, a
+:	
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
		ld a, $02
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, +
		res 6, c
+:	
		ld a, c
		ret
	
_LABEL_232E_:	
		ld a, $92
		out (_PORT_DF_), a
		ld a, $55
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $55
		ld c, $00
		jr z, +
		ld c, $FF
+:	
		ld a, $AA
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		cp $AA
		ld a, $00
		jr z, +
		ld a, $FF
+:	
		or c
		ld (_RAM_C204_), a
		ld a, $07
		out (_PORT_DE_), a
		ret
	
; Jump Table from 2357 to 2394 (31 entries, indexed by _RAM_C044_)	
_DATA_2357_:	
	.dw _LABEL_1279_ _LABEL_13CE_ _LABEL_1512_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_
	.dw _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_
	.dw _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_168B_ _LABEL_1713_ _LABEL_1713_ _LABEL_1713_ _LABEL_1713_
	.dw _LABEL_1713_ _LABEL_1713_ _LABEL_1713_ _LABEL_1713_ _LABEL_1713_ _LABEL_1713_ _LABEL_17A8_
	
_LABEL_2395_:	
		ld a, (_RAM_C201_)
		and a
		jp z, ++
		cp $FF
		jp nz, +
		ld a, $05
+:	
		dec a
++:	
		and $07
		add a, a
		ld b, a
		add a, a
		add a, b
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_23C9_
		add hl, de
		ld de, $3939
		ld b, $06
		call _LABEL_398_
		call _LABEL_2025_
		ld de, $3959
		ld b, $06
		call _LABEL_398_
		call _LABEL_2025_
		ret
	
; Data from 23C9 to 2404 (60 bytes)	
_DATA_23C9_:	
	.dsb 12, $20
	.db $7E $AD $20 $20 $20 $20 $8E $8F $20 $20 $20 $20 $7E $AD $7E $AD
	.db $20 $20 $8E $8F $8E $8F $20 $20 $7E $AD $7E $AD $7E $AD $8E $8F
	.db $8E $8F $8E $8F $46 $52 $45 $45 $20 $20 $20 $50 $4C $41 $59 $20
	
_LABEL_2405_:	
		ld a, (_RAM_C250_)
		bit 0, a
		jp z, ++
		ld iy, _RAM_C1B0_
		ld a, (iy+7)
		cp $0A
		jp nz, +
		ld a, (iy+6)
		or a
		jp nz, +
		ld a, $92
		ld (_RAM_C310_), a
+:	
		call _LABEL_A85_
		dec (iy+9)
		ret nz
		xor a
		ld (_RAM_C24F_), a
		ld (_RAM_C250_), a
		ld a, $E0
		ld (_RAM_C1B0_), a
		ret
	
++:	
		ld a, (_RAM_C24F_)
		bit 3, a
		ret z
		ld iy, _RAM_C1B0_
		ld de, _DATA_246E_
		call _LABEL_A75_
		ld a, (_RAM_C24F_)
		and $07
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, $2848
		add hl, de
		ld (iy+13), l
		ld (iy+14), h
		call _LABEL_AD0_
		ld (iy+0), $08
		ld (iy+1), $80
		ld a, $01
		ld (_RAM_C250_), a
		ret
	
; Data from 246E to 2489 (28 bytes)	
_DATA_246E_:	
	.db $00 $0A $00 $64 $00 $02 $0A $48 $28 $01 $21 $40 $C1 $11 $10 $00
	.db $06 $06 $3E $D8 $77 $19 $10 $FC $C9 $3A $55 $C2
	
-:	
		and $3F
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_249D_
		add hl, de
		ld a, r
		and (hl)
		inc hl
		add a, (hl)
		ld (iy+1), a
		ret
	
; Data from 249D to 24BC (32 bytes)	
_DATA_249D_:	
	.db $3F $60 $3F $55 $1F $80 $1F $80 $1F $80 $3F $60 $3F $60 $3F $60
	.db $3F $60 $3F $50 $3F $70 $3F $50 $3F $65 $7F $55 $3F $55 $3F $60
	
_LABEL_24BD_:	
		ld a, (_RAM_C254_)
		jp -
	
_LABEL_24C3_:	
		bit 3, (iy+28)
		ret nz
		bit 4, (iy+8)
		ret z
		ld a, (iy+0)
		cp $C0
		ret nc
		ld b, a
		ld a, (_RAM_C000_)
		sub $20
		cp b
		ret nc
		set 3, (iy+28)
		ld a, $88
		ld (_RAM_C310_), a
		ret
	
_LABEL_24E5_:	
		ld hl, _RAM_C256_
		bit 1, (hl)
		ret z
		res 1, (hl)
		bit 0, (hl)
		ld hl, _DATA_7311_
		jp nz, +
		ld hl, _DATA_25BC_
+:	
		di
		ld de, $2068
		ld bc, $0060
		call _LABEL_360_
		ld de, $2868
		call _LABEL_360_
		ld de, $3068
		call _LABEL_360_
		ei
		ret
	
_LABEL_2510_:	
		ld hl, _RAM_C257_
		bit 1, (hl)
		ret z
		res 1, (hl)
		bit 0, (hl)
		ld hl, _DATA_7371_
		jp nz, +
		ld hl, _DATA_25BC_
+:	
		di
		ld de, $20C8
		ld bc, $0028
		call _LABEL_360_
		ld de, $28C8
		call _LABEL_360_
		ld de, $30C8
		call _LABEL_360_
		ei
		ret
	
_LABEL_253B_:	
		ld hl, _RAM_C259_
		bit 1, (hl)
		ret z
		res 1, (hl)
		bit 0, (hl)
		ld hl, _DATA_7441_
		jp nz, +
		ld hl, _DATA_25BC_
+:	
		di
		ld de, $2318
		ld bc, $0008
		call _LABEL_360_
		ld de, $2B18
		call _LABEL_360_
		ld de, $3318
		call _LABEL_360_
		ei
		ret
	
_LABEL_2566_:	
		ld hl, _RAM_C25A_
		bit 1, (hl)
		ret z
		res 1, (hl)
		bit 0, (hl)
		ld hl, _DATA_7449_
		jp nz, +
		ld hl, _DATA_25BC_
+:	
		di
		ld de, $2320
		ld bc, $0008
		call _LABEL_360_
		ld de, $2B20
		call _LABEL_360_
		ld de, $3320
		call _LABEL_360_
		ei
		ret
	
_LABEL_2591_:	
		ld hl, _RAM_C25B_
		bit 1, (hl)
		ret z
		res 1, (hl)
		bit 0, (hl)
		ld hl, _DATA_7879_
		jp nz, +
		ld hl, _DATA_25BC_
+:	
		di
		ld de, $2750
		ld bc, $0048
		call _LABEL_360_
		ld de, $2F50
		call _LABEL_360_
		ld de, $3750
		call _LABEL_360_
		ei
		ret
	
; Data from 25BC to 268D (210 bytes)	
_DATA_25BC_:	
	.dsb 96, $00
	.db $FD $7E $08 $B7 $C8 $07 $F5 $DC $69 $26 $F1 $07 $F5 $DC $88 $26
	.db $F1 $07 $F5 $DC $61 $26 $F1 $07 $F5 $DC $3A $26 $F1 $C9 $FD $7E
	.db $09 $FD $E5 $E1 $11 $10 $00 $FD $46 $0F $4F $79 $86 $FE $A8 $38
	.db $04 $FE $E0 $38 $05 $77 $19 $10 $F2 $C9 $3E $01 $32 $3E $C2 $3E
	.db $FF $32 $07 $C2 $C9 $FD $7E $09 $ED $44 $C3 $3D $26 $FD $7E $0A
	.db $ED $44 $4F $FD $E5 $E1 $11 $10 $00 $FD $46 $0F $23 $79 $86 $FE
	.db $D9 $30 $D7 $FE $20 $38 $D3 $77 $19 $10 $F2 $C9 $FD $7E $0A $C3
	.db $6E $26
	
_LABEL_268E_:	
		di
		ld de, $3A99
		ld b, $19
-:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		push af
		pop af
		in a, (Port_VDPData)
		cp $A1
		jp z, +
		cp $D7
		jp z, +
		dec de
		djnz -
		ld b, $0D
+:	
		ld a, b
		add a, a
		add a, a
		add a, a
		and $F8
		add a, $10
		ei
		ret
	
_LABEL_26B7_:	
		push af
		ld a, (_RAM_C203_)
		cp $10
		jr c, +
		xor a
		ld (_RAM_C203_), a
		ld a, (_RAM_C20A_)
		and a
		jr z, ++
		xor a
		ld (_RAM_C20A_), a
+:	
		pop af
		retn
	
++:	
		cpl
		ld (_RAM_C20A_), a
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		pop af
		retn
	
_LABEL_26E7_:	
		ld de, $3891
		call _LABEL_398_
		ld hl, _DATA_2716_
		ld b, $07
		call _LABEL_2025_
		ld de, $38A1
		call _LABEL_398_
		ld b, $17
		call _LABEL_2025_
		ld de, $38C1
		call _LABEL_398_
		ld b, $17
		call _LABEL_2025_
		ld de, $38E1
		call _LABEL_398_
		ld b, $15
		jp _LABEL_2025_
	
; Data from 2716 to 3FFF (6378 bytes)	
_DATA_2716_:	
	.incbin "data/File01_02716_03FFF.dat"
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 4000 to 5077 (4216 bytes)
	.incbin "data/File02_04000_05077.dat"
	
_LABEL_5078_:	
		call _LABEL_50B9_
		ld ix, _RAM_C280_
		ld b, $05
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_5256_
		ld de, $001C
		add ix, de
		pop bc
		djnz -
		ret
	
_LABEL_5092_:	
		ld b, $00
		ld c, $1A
		ld hl, _DATA_509F_
		ld de, _RAM_C316_
		ldir
		ret
	
; Data from 509F to 50B8 (26 bytes)	
_DATA_509F_:	
	.db $8B $89 $00 $DE $00 $F0 $02 $8C $8A $86 $16 $C3 $8B $89 $00 $DE
	.db $00 $F0 $02 $8C $8A $00 $01 $86 $22 $C3
	
_LABEL_50B9_:	
		ld a, (_RAM_C310_)
		bit 7, a
		jp z, _LABEL_55BC_
		cp $00
		jp z, _LABEL_55BC_
		cp $FF
		jp z, _LABEL_55BC_
		ld hl, $50EB
		ld bc, $000E
		cpdr
		ret nz
		ld hl, $50EB
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
	; Data from 50DE to 5222 (325 bytes)
	.db $81 $82 $83 $84 $85 $88 $89 $90 $91 $92 $93 $94 $95 $05 $51 $1A
	.db $51 $25 $51 $35 $51 $4B $51 $5E $51 $74 $51 $7F $51 $A0 $51 $AE
	.db $51 $C4 $51 $D7 $51 $E5 $51 $21 $11 $C3 $CB $46 $C2 $15 $52 $CB
	.db $CE $21 $B3 $56 $11 $80 $C2 $AF $08 $C3 $F0 $51 $21 $F6 $56 $11
	.db $D4 $C2 $AF $08 $C3 $F0 $51 $21 $11 $C3 $CB $C6 $21 $15 $57 $11
	.db $80 $C2 $AF $08 $C3 $F0 $51 $21 $11 $C3 $7E $E6 $03 $C2 $15 $52
	.db $CB $DE $21 $4A $57 $11 $80 $C2 $AF $08 $C3 $F0 $51 $CD $BC $55
	.db $21 $11 $C3 $CB $FE $21 $73 $57 $11 $D4 $C2 $AF $08 $C3 $F0 $51
	.db $21 $11 $C3 $7E $E6 $0F $C2 $15 $52 $CB $E6 $21 $AD $57 $11 $80
	.db $C2 $AF $08 $C3 $F0 $51 $21 $24 $58 $11 $D4 $C2 $AF $08 $C3 $F0
	.db $51 $21 $11 $C3 $7E $E6 $03 $C2 $15 $52 $CB $D6 $21 $12 $C3 $36
	.db $08 $CD $70 $56 $CD $C9 $55 $21 $43 $58 $11 $9C $C2 $AF $08 $C3
	.db $F0 $51 $CD $BC $55 $21 $75 $58 $11 $80 $C2 $AF $08 $C3 $F0 $51
	.db $21 $11 $C3 $7E $E6 $1F $C2 $15 $52 $CB $EE $21 $22 $59 $11 $80
	.db $C2 $AF $08 $C3 $F0 $51 $CD $BC $55 $21 $11 $C3 $CB $FE $21 $57
	.db $59 $11 $D4 $C2 $AF $08 $C3 $F0 $51 $CD $BC $55 $21 $98 $59 $11
	.db $D4 $C2 $AF $08 $C3 $F0 $51 $21 $CE $59 $11 $D4 $C2 $AF $08 $C3
	.db $F0 $51 $7E $23 $66 $6F $46 $23 $C5 $7E $23 $E5 $FE $FF $28 $1D
	.db $66 $6F $01 $0E $00 $ED $B0 $08 $12 $08 $13 $AF $06 $0D $12 $13
	.db $10 $FC $E1 $23 $C1 $10 $E1 $3E $80 $32 $10 $C3 $C9 $EB $01 $1C
	.db $00 $09 $EB $18 $ED
	
_LABEL_5223_:	
		ld a, (_RAM_C200_)
		and $03
		or a
		ret z
		cp $01
		jr nz, +
		ld hl, _RAM_C31B_
		ld a, (hl)
		cp $30
		jr c, ++
		sub $02
		jr ++
	
+:	
		cp $02
		ret nz
		ld hl, _RAM_C31B_
		ld a, (hl)
		cp $F0
		jr nc, ++
		add a, $02
++:	
		ld (hl), a
		ld hl, _RAM_C327_
		ld (hl), a
		sub $10
		dec hl
		dec hl
		ld (hl), a
		ld hl, _RAM_C319_
		ld (hl), a
		ret
	
_LABEL_5256_:	
		bit 4, (ix+0)
		jp nz, _LABEL_5535_
		ld e, (ix+3)
		ld d, (ix+4)
		inc de
		ld (ix+3), e
		ld (ix+4), d
		ld l, (ix+5)
		ld h, (ix+6)
		or a
		sbc hl, de
		call z, _LABEL_53DE_
		ld e, (ix+17)
		ld d, (ix+18)
		ld a, e
		or d
		jr nz, +
		ld (ix+23), $0F
		jp _LABEL_5353_
	
+:	
		bit 5, (ix+0)
		jr nz, ++
		ld a, (ix+11)
		or a
		jr nz, +
		ld (ix+19), e
		ld (ix+20), d
		jr _LABEL_52F4_
	
+:	
		dec a
		ld hl, $5698
		inc hl
		ld c, (ix+14)
		ld b, $00
		add hl, bc
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, $04
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_53AB_
		jr _LABEL_52F4_
	
++:	
		push de
		ld l, (ix+21)
		ld h, (ix+22)
		or a
		sbc hl, de
		push af
		ld a, l
		jp p, +
		neg
+:	
		ld h, a
		ld e, (ix+3)
		call _LABEL_5651_
		ld e, (ix+5)
		call _LABEL_565D_
		ld e, a
		ld d, $00
		pop af
		ld a, e
		jp p, +
		neg
		jr z, +
		dec d
		ld e, a
+:	
		pop hl
		add hl, de
		ld (ix+19), l
		ld (ix+20), h
_LABEL_52F4_:	
		ld a, (ix+12)
		or a
		jr nz, +
		ld a, (ix+13)
		cpl
		and $0F
		ld (ix+23), a
		jr ++
	
+:	
		dec a
		ld hl, $5698
		inc hl
		ld c, (ix+14)
		ld b, $00
		add hl, bc
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, $02
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_5371_
++:	
		bit 6, (ix+0)
		jr nz, _LABEL_5353_
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_5366_
		add hl, bc
		ld c, (hl)
		ld a, (ix+19)
		and $0F
		or c
		call _LABEL_5568_
		ld a, (ix+19)
		and $F0
		or (ix+20)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_5568_
_LABEL_5353_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_536A_
		add hl, bc
		ld a, (hl)
		or (ix+23)
		jp _LABEL_5568_
	
; Data from 5366 to 5369 (4 bytes)	
_DATA_5366_:	
	.db $80 $A0 $C0 $C0
	
; Data from 536A to 536D (4 bytes)	
_DATA_536A_:	
	.db $90 $B0 $D0 $F0
	
-:	
		ld (ix+15), a
_LABEL_5371_:	
		push hl
		ld a, (ix+15)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		pop hl
		jr c, ++
		rrca
		rrca
		rrca
		rrca
		or a
		jr z, -
		cp $10
		jr nz, +
		dec (ix+15)
		jr _LABEL_5371_
	
+:	
		cp $20
		jr z, +++
++:	
		inc (ix+15)
		or $F0
		add a, (ix+13)
		inc a
		jr c, ++++
+++:	
		xor a
++++:	
		cpl
		and $0F
		ld (ix+23), a
		ret
	
-:	
		ld (ix+16), a
_LABEL_53AB_:	
		push hl
		ld a, (ix+16)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		pop hl
		jr c, +
		rrca
		rrca
		rrca
		rrca
		or a
		jp z, -
		cp $10
		jr nz, +
		dec (ix+16)
		jr _LABEL_53AB_
	
+:	
		inc (ix+16)
		cpl
		and $0F
		ld l, a
		ld h, $00
		ex de, hl
		add hl, de
		ld (ix+19), l
		ld (ix+20), h
		ret
	
_LABEL_53DE_:	
		ld e, (ix+7)
		ld d, (ix+8)
_LABEL_53E4_:	
		ld a, (de)
		inc de
		or a
		jp m, _LABEL_5463_
		bit 3, (ix+0)
		jr nz, _LABEL_5449_
		or a
		jr z, +
		add a, (ix+9)
+:	
		ld hl, _DATA_55D7_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+17), a
		inc hl
		ld a, (hl)
		ld (ix+18), a
		bit 5, (ix+0)
		jr z, _LABEL_5423_
		ld a, (de)
		inc de
		add a, (ix+9)
		ld hl, _DATA_55D7_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+21), a
		inc hl
		ld a, (hl)
		ld (ix+22), a
_LABEL_5423_:	
		push de
		ld a, (de)
		ld h, a
		ld e, (ix+2)
		call _LABEL_5651_
		pop de
		ld (ix+5), l
		ld (ix+6), h
		xor a
		ld (ix+15), a
		ld (ix+16), a
		inc de
		ld (ix+7), e
		ld (ix+8), d
		xor a
		ld (ix+3), a
		ld (ix+4), a
		ret
	
_LABEL_5449_:	
		ld (ix+18), a
		ld a, (de)
		inc de
		ld (ix+17), a
		bit 5, (ix+0)
		jr z, _LABEL_5423_
		ld a, (de)
		inc de
		ld (ix+22), a
		ld a, (de)
		inc de
		ld (ix+21), a
		jr _LABEL_5423_
	
_LABEL_5463_:	
		ld hl, +	; Overriding return address
		push hl
		and $3F
		ld hl, _DATA_547A_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		inc de
		jp _LABEL_53E4_
	
; Jump Table from 547A to 5495 (14 entries, indexed by unknown)	
_DATA_547A_:	
	.dw _LABEL_54F6_ _LABEL_5496_ _LABEL_549B_ _LABEL_550A_ _LABEL_54B0_ _LABEL_54C7_ _LABEL_54CC_ _LABEL_54D2_
	.dw _LABEL_54DA_ _LABEL_54F2_ _LABEL_54F8_ _LABEL_54FE_ _LABEL_5504_ _LABEL_5546_
	
; 2nd entry of Jump Table from 547A (indexed by unknown)	
_LABEL_5496_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
; 3rd entry of Jump Table from 547A (indexed by unknown)	
_LABEL_549B_:	
		ld a, (de)
		ld (ix+13), a
		ret
	
	; Data from 54A0 to 54AF (16 bytes)
	.db $0F $0E $0D $0C $0B $0A $09 $07 $08 $06 $05 $04 $03 $02 $01 $00
	
; 5th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54B0_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_5568_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 6th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54C7_:	
		ld a, (de)
		ld (ix+12), a
		ret
	
; 7th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54CC_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 8th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54D2_:	
		ld a, (de)
		add a, (ix+9)
		ld (ix+9), a
		ret
	
; 9th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54DA_:	
		ld a, (de)
		inc de
		add a, $18
		ld c, a
		ld b, $00
		push ix
		pop hl
		add hl, bc
		ld a, (hl)
		or a
		jr nz, +
		ld a, (de)
		ld (hl), a
+:	
		inc de
		dec (hl)
		jp nz, _LABEL_54CC_
		inc de
		ret
	
; 10th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54F2_:	
		set 5, (ix+0)
; 1st entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54F6_:	
		dec de
		ret
	
; 11th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54F8_:	
		res 5, (ix+0)
		dec de
		ret
	
; 12th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_54FE_:	
		set 3, (ix+0)
		dec de
		ret
	
; 13th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_5504_:	
		res 3, (ix+0)
		dec de
		ret
	
; 4th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_550A_:	
		call _LABEL_5559_
		ld (ix+0), $00
		ld a, (_RAM_C311_)
		bit 7, a
		jr z, +
		ld a, $DE
		ld (_RAM_C319_), a
		ld (_RAM_C325_), a
		ld a, $F0
		ld (_RAM_C31B_), a
		ld (_RAM_C327_), a
+:	
		xor a
		ld (_RAM_C311_), a
		call _LABEL_5684_
		pop hl
		pop hl
		ret
	
	; Data from 5532 to 5534 (3 bytes)
	.db $C3 $00 $80
	
_LABEL_5535_:	
		dec (ix+4)
		ret nz
		ld a, (ix+3)
		ld (ix+4), a
		ld l, (ix+5)
		ld h, (ix+6)
		jp (hl)
	
; 14th entry of Jump Table from 547A (indexed by unknown)	
_LABEL_5546_:	
		call _LABEL_5559_
		ld (ix+0), $00
		pop hl
		pop hl
		xor a
		ld (_RAM_C311_), a
		ld hl, _RAM_C310_
		ld (hl), $82
		ret
	
_LABEL_5559_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_536A_
		add hl, bc
		ld a, (hl)
		or $0F
_LABEL_5568_:	
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
	; Data from 5570 to 55BB (76 bytes)
	.db $21 $80 $C2 $11 $81 $C2 $01 $1B $00 $36 $00 $ED $B0 $3A $D3 $55
	.db $D3 $7F $C9 $21 $9C $C2 $11 $9D $C2 $01 $1B $00 $36 $00 $ED $B0
	.db $3A $D4 $55 $D3 $7F $C9 $21 $B8 $C2 $11 $B9 $C2 $01 $1B $00 $36
	.db $00 $ED $B0 $3A $D4 $55 $D3 $7F $C9 $21 $D4 $C2 $11 $D5 $C2 $01
	.db $1B $00 $36 $00 $ED $B0 $3A $D6 $55 $D3 $7F $C9
	
_LABEL_55BC_:	
		ld hl, _RAM_C280_
		ld de, _RAM_C280_ + 1
		ld bc, $008B
		ld (hl), $00
		ldir
		ld hl, _DATA_55D3_
		ld c, Port_PSG
		ld b, $04
		otir
		ret
	
; Data from 55D3 to 55D6 (4 bytes)	
_DATA_55D3_:	
	.db $9F $BF $DF $FF
	
; Data from 55D7 to 5650 (122 bytes)	
_DATA_55D7_:	
	.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
	.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
	.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
	.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
	.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
	.db $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00
	.db $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00
	.db $2B $00 $28 $00 $26 $00 $24 $00 $22 $00
	
_LABEL_5651_:	
		ld d, $00
		ld l, d
		ld b, $08
-:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		djnz -
		ret
	
_LABEL_565D_:	
		ld b, $08
-:	
		adc hl, hl
		ld a, h
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		ld h, a
		or a
++:	
		djnz -
		ld a, l
		rla
		cpl
		ret
	
	; Data from 5670 to 5683 (20 bytes)
	.db $06 $05 $11 $1C $00 $21 $80 $C2 $3A $12 $C3 $0F $30 $02 $CB $D6
	.db $19 $10 $F8 $C9
	
_LABEL_5684_:	
		ld a, (_RAM_C312_)
		ld b, $08
		ld hl, _RAM_C280_
		ld de, $001C
-:	
		rrca
		jr nc, +
		res 2, (hl)
+:	
		add hl, de
		djnz -
		ret
	
	; Data from 5698 to 5AA8 (1041 bytes)
	.incbin "data/File03_05698_05AA8.dat"
	
; Data from 5AA9 to 62A8 (2048 bytes)	
_DATA_5AA9_:	
	.incbin "data/File04_05AA9_062A8.dat"
	
; Data from 62A9 to 6AA8 (2048 bytes)	
_DATA_62A9_:	
	.incbin "data/File05_062A9_06AA8.dat"
	
; Data from 6AA9 to 72A8 (2048 bytes)	
_DATA_6AA9_:	
	.incbin "data/File06_06AA9_072A8.dat"
	
; Data from 72A9 to 7310 (104 bytes)	
_DATA_72A9_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $24 $24 $24 $24 $24 $24 $24 $24
	.db $20 $20 $20 $20 $20 $20 $20 $20
	.dsb 24, $64
	.db $34 $34 $34 $34 $34 $34 $34 $34 $24 $24 $24 $24 $24 $24 $24 $24
	.db $C4 $C4 $C4 $C4 $C4 $C4 $C4 $C4 $34 $34 $34 $34 $34 $34 $34 $34
	.db $24 $24 $24 $24 $24 $24 $24 $24 $C4 $C4 $C4 $C4 $C4 $C4 $C4 $C4
	.db $64 $64 $64 $64 $64 $64 $64 $64
	
; Data from 7311 to 7370 (96 bytes)	
_DATA_7311_:	
	.dsb 96, $E0
	
; Data from 7371 to 7428 (184 bytes)	
_DATA_7371_:	
	.db $00 $50 $B0 $B0 $B0 $B0 $B0 $5A $00 $FF $C7 $8E $1C $38 $71 $FF
	.db $00 $50 $B0 $B0 $B0 $B0 $B0 $5A
	.dsb 16, $A0
	.db $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $00 $00 $00 $00 $00 $00 $00 $00
	.dsb 16, $E0
	.db $00 $00 $00 $00 $00 $00 $00 $00 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4
	.dsb 16, $E0
	.dsb 16, $E4
	.dsb 16, $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $EB $EB $EB $EB $EB $EB $EB $EB
	.db $0B $0B $0B $0B $0B $0B $0B $0B $EB $EB $EB $EB $EB $EB $EB $EB
	.db $0B $0B $0B $0B $0B $0B $0B $0B
	
; Data from 7429 to 7440 (24 bytes)	
_DATA_7429_:	
	.dsb 16, $6F
	.db $97 $97 $97 $47 $47 $47 $E4 $E4
	
; Data from 7441 to 7448 (8 bytes)	
_DATA_7441_:	
	.db $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0
	
; Data from 7449 to 7878 (1072 bytes)	
_DATA_7449_:	
	.db $B0 $B0 $B0 $B0 $B0 $B0 $B0 $B0
	.dsb 16, $F0
	.db $70 $70 $70 $70 $70 $70 $4E $4E
	.dsb 32, $6F
	.db $70 $70 $70 $70 $70 $70 $05 $E0
	.dsb 32, $F0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4
	.dsb 16, $E0
	.db $00 $00 $00 $00 $00 $00 $00 $00 $67 $67 $67 $47 $47 $47 $E4 $E4
	.dsb 16, $F0
	.db $80 $80 $80 $80 $80 $80 $80 $80 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $04 $04 $04 $04 $04 $04 $04 $04 $34 $34 $34 $34 $34 $34 $34 $34
	.dsb 16, $24
	.db $C4 $C4 $C4 $C4 $C4 $C4 $C4 $C4 $94 $94 $94 $94 $94 $94 $94 $9F
	.db $64 $64 $64 $64 $64 $64 $64 $6F $94 $9E $97 $97 $97 $97 $97 $47
	.db $64 $6E $67 $67 $67 $67 $67 $47
	.dsb 24, $3F
	.db $90 $00 $E0 $E0 $E0 $E0 $00 $90 $90 $00 $E0 $E0 $E0 $E0 $00 $90
	.dsb 16, $80
	.db $6F $6F $6F $6F $6F $6F $6F $6F $34 $34 $34 $34 $34 $34 $34 $34
	.dsb 40, $6F
	.db $EE $EE $EE $EE $EE $EE $EE $EE
	.dsb 40, $6F
	.db $EF $EF $EF $EF $EF $EF $EF $EF $EB $EB $EB $EB $EB $EB $EB $EB
	.db $94 $94 $94 $94 $94 $94 $94 $94
	.dsb 16, $00
	.db $EB $EB $EB $EB $EB $EB $EB $EB $EF $EF $EF $EF $EF $EF $EF $EF
	.db $30 $30 $30 $30 $30 $30 $30 $30 $20 $20 $20 $20 $20 $20 $20 $20
	.db $30 $30 $30 $30 $30 $30 $30 $30 $20 $20 $20 $20 $20 $20 $20 $20
	.db $30 $30 $30 $30 $30 $30 $30 $30 $20 $20 $20 $20 $20 $20 $20 $20
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $80 $80 $80 $80 $80 $80 $80 $80
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.dsb 16, $E4
	.dsb 16, $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4
	.dsb 16, $EB
	.db $E0 $E0 $E0 $E0 $E0 $E0 $E0 $E0
	.dsb 16, $EF
	.db $64 $64 $64 $64 $64 $64 $64 $64 $DB $DB $DB $DB $DB $DB $DB $DB
	.dsb 16, $EF
	.dsb 16, $EB
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $EB $EB $EB $EB $EB $EB $EB $EB
	.db $EF $EF $EF $EF $EF $EF $EF $EF $EE $EE $EE $EE $EE $EE $EE $EE
	.db $94 $94 $94 $94 $94 $94 $94 $94 $DB $DB $DB $DB $DB $DB $DB $DB
	.db $90 $90 $90 $90 $90 $90 $90 $94 $60 $60 $60 $60 $60 $60 $60 $64
	.db $EF $EF $EF $EF $EF $EF $EF $EF $EB $EB $EB $EB $EB $EB $EB $EB
	.db $64 $64 $64 $64 $64 $64 $64 $64
	.dsb 24, $07
	.db $B4 $B4 $B4 $B4 $B4 $B4 $B4 $B4 $34 $34 $34 $34 $34 $34 $34 $34
	.dsb 24, $50
	.db $97 $97 $97 $97 $97 $97 $97 $97
	.dsb 24, $57
	.dsb 72, $50
	
; Data from 7879 to 7928 (176 bytes)	
_DATA_7879_:	
	.dsb 32, $60
	.db $69 $69 $69 $69 $69 $69 $69 $69
	.dsb 32, $60
	.dsb 16, $24
	.db $39 $39 $39 $39 $39 $39 $39 $39 $F0 $F0 $F0 $F0 $F0 $F0 $F0 $F0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4
	.dsb 16, $E0
	.db $E4 $E4 $E4 $E4 $E4 $E4 $E4 $E4 $95 $95 $97 $97 $97 $70 $70 $70
	.db $65 $65 $67 $67 $67 $70 $70 $70 $67 $67 $67 $67 $67 $67 $67 $67
	.dsb 16, $B0
	
; Data from 7929 to 7EFF (1495 bytes)	
_DATA_7929_:	
	.db $7E $7E $7F $7F $7F $3F $3F $3F $00 $00 $00 $00 $80 $80 $C0 $C0
	.db $1F $1F $3F $3F $7F $7F $FF $FF $00 $03 $0F $1F $3F $3F $7E $7C
	.db $FC $FF $FF $FF $FF $87 $01 $00 $07 $07 $C7 $E7 $F7 $F3 $FD $FD
	.db $FC $FC $FE $FE $FF $FF $FF $FF $07 $07 $07 $07 $07 $07 $87 $87
	.db $C3 $C3 $C3 $C3 $C3 $C3 $C1 $C1 $FF $FF $FF $FF $FF $FF $FF $FF
	.db $00 $00 $01 $83 $83 $87 $C7 $C7 $1F $7F $FF $FF $FF $F8 $E0 $C0
	.db $E0 $E1 $E7 $EF $EF $3F $3F $3E $7E $FF $FF $FF $FF $C3 $00 $00
	.db $00 $80 $E0 $F0 $F8 $F8 $FC $7C $3F $3F $3F $3F $3F $3E $3E $3E
	.db $E1 $E1 $FF $FF $FF $FF $FF $7F $FF $FF $FF $FF $FF $DF $DF $9F
	.db $7C $F8 $F8 $F8 $F8 $F8 $F8 $7C $00 $00 $00 $00 $00 $00 $00 $00
	.db $FD $7F $7F $7F $7F $7F $7F $FB $FF $FF $EF $EF $E7 $E7 $E3 $E3
	.db $C7 $C7 $E7 $E7 $F7 $F7 $FF $FF $C1 $C3 $C3 $C3 $C7 $C7 $C7 $CF
	.db $FF $F7 $F7 $F7 $E3 $E3 $E3 $FF $CF $EF $EF $EF $FF $FF $FF $FF
	.db $C0 $80 $80 $80 $80 $80 $80 $C0 $3E $7C $7C $7C $7C $7C $7C $3E
	.db $00 $00 $00 $00 $00 $00 $00 $00 $7C $3E $3E $3E $3E $3E $3E $7C
	.db $3E $3E $3E $3E $3E $3E $3E $3E $FF $7F $7F $00 $00 $00 $00 $00
	.db $9F $1F $1F $1F $1F $1F $1F $1F $7C $7E $3F $3F $1F $0F $03 $00
	.db $00 $01 $87 $FF $FF $FF $FF $FC $FB $FB $F3 $F3 $E3 $C3 $03 $03
	.db $E1 $E1 $E0 $E0 $E0 $E0 $E0 $E0 $FF $FF $FF $FF $7F $7F $3F $3F
	.db $CF $CF $DF $DF $DF $FF $FF $FF $FF $FF $FF $FF $FF $00 $00 $00
	.db $FF $FF $FF $FF $FF $7F $7E $7E $C0 $E0 $F8 $FF $FF $FF $FF $3F
	.db $3E $3F $3F $EF $EF $E7 $E1 $E0 $00 $00 $C3 $FF $FF $FF $FF $7E
	.db $7C $FC $F8 $F8 $F0 $E0 $80 $00 $00 $00 $03 $04 $09 $13 $17 $27
	.db $1F $E0 $0F $7F $FF $FF $FF $FF $FF $00 $FF $FF $FF $FF $FF $FF
	.db $FF $10 $D7 $D7 $D7 $D7 $D7 $D7 $FF $00 $FF $FF $FF $FF $FF $FF
	.db $FE $01 $FC $FF $FF $FF $FF $FF $00 $C0 $30 $88 $E4 $F4 $F2 $FA
	.db $2F $4F $5F $5F $9F $9F $9F $9F $FF $F8 $F3 $E4 $ED $CD $DD $DD
	.db $FF $00 $FF $00 $FF $FF $FF $FF $D7 $11 $FD $15 $D5 $D5 $D5 $D5
	.db $FF $FC $FD $FC $FF $FF $FF $FF $FF $07 $F3 $07 $FF $FF $FF $FF
	.db $FA $FA $FA $FA $FA $FA $F2 $F4 $BF $BF $BF $9F $5F $5F $4F $2F
	.db $DD $DD $CD $EC $E7 $F3 $F8 $FF $FF $FF $FF $1F $9F $3F $7F $FF
	.db $D5 $D5 $D5 $D5 $D5 $D5 $D5 $95 $FF $FF $FF $FC $FD $FD $FD $FD
	.db $FF $FF $FC $01 $FE $00 $00 $00 $E4 $88 $30 $C0 $00 $00 $00 $00
	.db $27 $17 $13 $09 $04 $03 $00 $00 $FF $FF $FF $FF $7F $0F $E0 $1F
	.db $FF $FF $FF $FE $F8 $C3 $1C $E0 $A5 $25 $45 $45 $85 $05 $05 $05
	.db $FD $FD $FD $FD $FD $FD $01
	.dsb 928, $FF
	
_LABEL_7F00_:	
		or $40
		ld d, a
		push ix
		pop ix
		push ix
		pop ix
		push ix
		pop ix
		jp _LABEL_B1B_
	
	; Data from 7F12 to 7F1F (14 bytes)
	.dsb 14, $FF
	
_LABEL_7F20_:	
		or $40
		ld d, a
		push ix
		pop ix
		push ix
		pop ix
		push ix
		pop ix
		jp _LABEL_B5F_
	
	; Data from 7F32 to 7F7F (78 bytes)
	.dsb 78, $FF
	
_LABEL_7F80_:	
		in a, (Port_IOPort1)
		nop
		nop
		ld c, a
		ld d, a
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		or $C0
		and d
		jp _LABEL_22B0_
	
	; Data from 7F94 to 7FFF (108 bytes)
	.dsb 108, $FF
	
