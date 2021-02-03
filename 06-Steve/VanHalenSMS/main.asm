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
BANKSTOTAL 16	
BANKSIZE $7FF0	
BANKS 1	
BANKSIZE $10	
BANKS 1	
BANKSIZE $4000	
BANKS 14	
.ENDRO	
	
.enum $C000 export	
_RAM_C000_ db	
_RAM_C001_ db	
_RAM_C002_ dw	
_RAM_C004_ dw	
_RAM_C006_ dw	
_RAM_C008_ db	
_RAM_C009_ db	
_RAM_C00A_ db	
_RAM_C00B_ db	
_RAM_C00C_ db	
_RAM_C00D_ dw	
_RAM_C00F_ db	
_RAM_C010_ db	
_RAM_C011_ db	
_RAM_C012_ db	
_RAM_C013_ db	
_RAM_C014_ db	
_RAM_C015_ db	
_RAM_C016_ db	
_RAM_C017_ db	
_RAM_C018_ db	
_RAM_C019_ db	
_RAM_C01A_ db	
_RAM_C01B_ dw	
_RAM_C01D_ dw	
_RAM_C01F_ dw	
_RAM_C021_ db	
_RAM_C022_ db	
_RAM_C023_ db	
_RAM_C024_ dw	
.ende	
	
.enum $C02B export	
_RAM_C02B_ db	
_RAM_C02C_ db	
_RAM_C02D_ dw	
_RAM_C02F_ dw	
_RAM_C031_ dw	
_RAM_C033_ dw	
_RAM_C035_ dw	
_RAM_C037_ dw	
_RAM_C039_ dw	
_RAM_C03B_ dw	
_RAM_C03D_ dw	
_RAM_C03F_ dw	
_RAM_C041_ dw	
_RAM_C043_ dw	
_RAM_C045_ dw	
_RAM_C047_ dw	
_RAM_C049_ dw	
_RAM_C04B_ dw	
_RAM_C04D_ dw	
_RAM_C04F_ dw	
_RAM_C051_ db	
.ende	
	
.enum $C061 export	
_RAM_C061_ db	
_RAM_C062_ db	
_RAM_C063_ db	
_RAM_C064_ db	
_RAM_C065_ dw	
_RAM_C067_ dw	
_RAM_C069_ db	
.ende	
	
.enum $C0A9 export	
_RAM_C0A9_ db	
.ende	
	
.enum $C129 export	
_RAM_C129_ db	
_RAM_C12A_ dw	
_RAM_C12C_ db	
.ende	
	
.enum $C14C export	
_RAM_C14C_ dw	
_RAM_C14E_ dw	
.ende	
	
.enum $C1B0 export	
_RAM_C1B0_ db	
.ende	
	
.enum $C1B2 export	
_RAM_C1B2_ db	
_RAM_C1B3_ db	
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende	
	
; Ports	
.define Port_PSG $7F	
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
		jp _LABEL_1E0E_
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _LABEL_1E44_
	
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
		call _LABEL_219A_
		call _LABEL_1B7E_
		ei
		call _LABEL_20A_
		jp _LABEL_204_
	
_LABEL_99_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
_LABEL_119_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		ret
	
	; Data from 19A to 203 (106 bytes)
	.dsb 102, $00
	.db $3E $02 $CF $C9
	
_LABEL_204_:	
		ld a, $00
		rst $08	; _LABEL_8_
-:	
		halt
		jr -
	
_LABEL_20A_:	
		call _LABEL_A5A_
		call _LABEL_822_
		call _LABEL_82B_
		call _LABEL_99E_
		ld b, l
		push bc
		inc sp
		call _LABEL_871_
		inc sp
		call _LABEL_87D_
		call _LABEL_9A1_
		push hl
		call _LABEL_887_
		pop af
		call _LABEL_AA2_
		call _LABEL_B51_
		call _LABEL_10BB_
		ld a, $01
		push af
		inc sp
		call _LABEL_FFE_
		inc sp
		call _LABEL_825_
_LABEL_23C_:	
		call _LABEL_98E_
		ld a, l
		or a
		jr z, ++
		call _LABEL_991_
		ld iy, _RAM_C000_
		ld a, (iy+0)
		xor $01
		ld (iy+0), a
		bit 0, (iy+0)
		jr z, +
		call _LABEL_A45_
		jr ++
	
+:	
		call _LABEL_A48_
++:	
		ld hl, _RAM_C000_
		bit 0, (hl)
		jr nz, _LABEL_23C_
		call _LABEL_97F_
		call _LABEL_EC6_
		call _LABEL_1078_
		call _LABEL_982_
		call _LABEL_985_
		call _LABEL_988_
		call _LABEL_A4B_
		call _LABEL_A4E_
		jr _LABEL_23C_
	
_LABEL_281_:	
		ld a, (_RAM_C001_)
		or a
		ret z
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, (_RAM_C016_)
		or a
		jr nz, +
		ld a, $DF
		out (Port_PSG), a
+:	
		ld a, (_RAM_C017_)
		or a
		jr nz, +
		ld a, $FF
		out (Port_PSG), a
+:	
		ld hl, _RAM_C001_
		ld (hl), $00
		ret
	
	; Data from 2A8 to 33D (150 bytes)
	.db $3A $01 $C0 $B7 $C0 $3A $0F $C0 $F6 $90 $D3 $7F $3A $10 $C0 $F6
	.db $B0 $D3 $7F $3A $16 $C0 $B7 $20 $17 $3A $13 $C0 $E6 $0F $F6 $C0
	.db $D3 $7F $3A $14 $C0 $E6 $3F $D3 $7F $3A $11 $C0 $F6 $D0 $D3 $7F
	.db $3A $17 $C0 $B7 $20 $10 $3A $15 $C0 $E6 $0F $F6 $E0 $D3 $7F $3A
	.db $12 $C0 $F6 $F0 $D3 $7F $21 $01 $C0 $36 $01 $C9 $CD $81 $02 $21
	.db $09 $C0 $36 $01 $D1 $C1 $C5 $D5 $ED $43 $02 $C0 $ED $43 $04 $C0
	.db $ED $43 $06 $C0 $21 $08 $C0 $36 $00 $21 $0C $C0 $36 $00 $21 $0A
	.db $C0 $36 $9F $21 $01 $C0 $36 $01 $C9 $21 $09 $C0 $36 $00 $C9 $C1
	.db $E1 $E5 $C5 $E5 $CD $F4 $02 $F1 $21 $09 $C0 $36 $00 $C9 $FD $21
	.db $01 $C0 $FD $6E $00 $C9
	
_LABEL_33E_:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ret
	
_LABEL_34F_:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld iy, _RAM_C00B_
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (_RAM_C001_)
		or a
		jr z, _LABEL_3C7_
		ld a, (_RAM_C00F_)
		and $0F
		ld e, a
		ld d, $00
		pop hl
		push hl
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
		jr ++
	
+:	
		ld a, (_RAM_C00F_)
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $90
		out (Port_PSG), a
		ld a, (_RAM_C010_)
		and $0F
		ld e, a
		ld d, $00
		pop hl
		push hl
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
		jr ++
	
+:	
		ld a, (_RAM_C010_)
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $B0
		out (Port_PSG), a
_LABEL_3C7_:	
		ld a, (_RAM_C016_)
		or a
		jr z, +
		ld a, (_RAM_C018_)
		or $D0
		out (Port_PSG), a
		jr +++
	
+:	
		ld a, (_RAM_C001_)
		or a
		jr z, +++
		ld a, (_RAM_C011_)
		and $0F
		ld e, a
		ld d, $00
		pop hl
		push hl
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
		jr ++
	
+:	
		ld a, (_RAM_C011_)
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $D0
		out (Port_PSG), a
+++:	
		ld a, (_RAM_C017_)
		or a
		jr z, +
		ld a, (_RAM_C019_)
		or $F0
		out (Port_PSG), a
		jr +++
	
+:	
		ld a, (_RAM_C001_)
		or a
		jr z, +++
		ld a, (_RAM_C012_)
		and $0F
		ld l, a
		ld h, $00
		pop de
		push de
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld bc, $000F
		jr ++
	
+:	
		ld a, (_RAM_C012_)
		and $0F
		add a, c
		ld c, a
		rla
		sbc a, a
++:	
		ld a, c
		or $F0
		out (Port_PSG), a
+++:	
		ld sp, ix
		pop ix
		ret
	
	; Data from 44E to 53C (239 bytes)
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD $7E $04 $32 $0B $C0 $3A
	.db $01 $C0 $B7 $CA $38 $05 $3A $0F $C0 $E6 $0F $4F $1E $00 $FD $21
	.db $0B $C0 $FD $7E $00 $DD $77 $FE $AF $DD $77 $FF $79 $DD $86 $FE
	.db $47 $7B $DD $8E $FF $5F $FD $4E $00 $3E $0F $B8 $3E $00 $9B $E2
	.db $92 $04 $EE $80 $F2 $9A $04 $11 $0F $00 $18 $09 $3A $0F $C0 $E6
	.db $0F $81 $5F $17 $9F $7B $F6 $90 $D3 $7F $3A $10 $C0 $E6 $0F $5F
	.db $16 $00 $E1 $E5 $19 $3E $0F $BD $3E $00 $9C $E2 $BE $04 $EE $80
	.db $F2 $C6 $04 $11 $0F $00 $18 $09 $3A $10 $C0 $E6 $0F $81 $5F $17
	.db $9F $7B $F6 $B0 $D3 $7F $3A $16 $C0 $B7 $20 $2C $3A $11 $C0 $E6
	.db $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2 $F0 $04
	.db $EE $80 $F2 $F8 $04 $11 $0F $00 $18 $09 $3A $11 $C0 $E6 $0F $81
	.db $5F $17 $9F $7B $F6 $D0 $D3 $7F $3A $17 $C0 $B7 $20 $2C $3A $12
	.db $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2
	.db $22 $05 $EE $80 $F2 $2A $05 $01 $0F $00 $18 $09 $3A $12 $C0 $E6
	.db $0F $81 $4F $17 $9F $79 $F6 $F0 $D3 $7F $DD $F9 $DD $E1 $C9
	
_LABEL_53D_:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (_RAM_C01A_)
		or a
		jp z, _LABEL_602_
		ld iy, _RAM_C00B_
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_5B1_
		ld a, (_RAM_C001_)
		or a
		jr z, _LABEL_5A8_
		ld a, (_RAM_C013_)
		and $0F
		or $C0
		out (Port_PSG), a
		ld a, (_RAM_C014_)
		and $3F
		out (Port_PSG), a
		ld a, (_RAM_C011_)
		and $0F
		ld e, a
		ld d, $00
		pop hl
		push hl
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
		jr ++
	
+:	
		ld a, (_RAM_C011_)
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $D0
		out (Port_PSG), a
		jr +
	
_LABEL_5A8_:	
		ld a, $DF
		out (Port_PSG), a
+:	
		ld hl, _RAM_C016_
		ld (hl), $00
_LABEL_5B1_:	
		ld a, (_RAM_C017_)
		or a
		jr z, _LABEL_5FD_
		ld a, (_RAM_C001_)
		or a
		jr z, +++
		ld a, (_RAM_C015_)
		and $0F
		or $E0
		out (Port_PSG), a
		ld a, (_RAM_C012_)
		and $0F
		ld l, a
		ld h, $00
		pop de
		push de
		add hl, de
		ld a, $0F
		cp l
		ld a, $00
		sbc a, h
		jp po, +
		xor $80
+:	
		jp p, +
		ld bc, $000F
		jr ++
	
+:	
		ld a, (_RAM_C012_)
		and $0F
		add a, c
		ld c, a
		rla
		sbc a, a
++:	
		ld a, c
		or $F0
		out (Port_PSG), a
		jr ++++
	
+++:	
		ld a, $FF
		out (Port_PSG), a
++++:	
		ld hl, _RAM_C017_
		ld (hl), $00
_LABEL_5FD_:	
		ld hl, _RAM_C01A_
		ld (hl), $00
_LABEL_602_:	
		ld sp, ix
		pop ix
		ret
	
	; Data from 607 to 682 (124 bytes)
	.db $CD $3D $05 $21 $22 $C0 $36 $00 $D1 $C1 $C5 $D5 $ED $43 $1B $C0
	.db $ED $43 $1D $C0 $ED $43 $1F $C0 $21 $21 $C0 $36 $00 $21 $23 $C0
	.db $36 $00 $21 $04 $00 $39 $4E $CB $41 $28 $05 $11 $01 $00 $18 $03
	.db $11 $00 $00 $21 $16 $C0 $73 $CB $49 $28 $05 $01 $01 $00 $18 $03
	.db $01 $00 $00 $21 $17 $C0 $71 $21 $1A $C0 $36 $01 $C9 $21 $22 $C0
	.db $36 $00 $C9 $FD $21 $1A $C0 $FD $6E $00 $C9 $FD $21 $04 $00 $FD
	.db $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD $6E $00 $FD $66 $01
	.db $E5 $CD $07 $06 $F1 $33 $21 $22 $C0 $36 $01 $C9
	
_LABEL_683_:	
		ld a, (_RAM_C001_)
		or a
		ret z
		ld a, (_RAM_C008_)
		or a
		jp nz, _LABEL_717_
		ld hl, (_RAM_C004_)
_LABEL_692_:	
		ld b, (hl)
		inc hl
		ld a, (_RAM_C00C_)
		or a
		jr z, +
		dec a
		ld (_RAM_C00C_), a
		jr nz, +
		ld hl, (_RAM_C00D_)
+:	
		ld a, b
		cp $80
		jr c, _LABEL_71C_
		ld (_RAM_C00A_), a
		bit 4, a
		jr nz, ++
		bit 6, a
		jp z, _LABEL_743_
		bit 5, a
		jr z, +
		ld (_RAM_C015_), a
		ld a, (_RAM_C017_)
		or a
		jp nz, _LABEL_692_
		ld a, (_RAM_C015_)
		and $03
		cp $03
		jr nz, _LABEL_742_
		ld a, (_RAM_C01A_)
		or a
		jr z, _LABEL_742_
		ld (_RAM_C017_), a
		ld a, $FF
		out (Port_PSG), a
		jp _LABEL_692_
	
+:	
		ld (_RAM_C013_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_742_
		jp _LABEL_692_
	
++:	
		bit 6, a
		jr nz, ++
		bit 5, a
		jr z, +
		ld (_RAM_C010_), a
		jp _LABEL_749_
	
+:	
		ld (_RAM_C00F_), a
		jp _LABEL_749_
	
++:	
		bit 5, a
		jr z, +
		ld (_RAM_C012_), a
		ld a, (_RAM_C017_)
		or a
		jr z, _LABEL_748_
		jp _LABEL_692_
	
+:	
		ld (_RAM_C011_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_748_
		jp _LABEL_692_
	
_LABEL_717_:	
		dec a
		ld (_RAM_C008_), a
		ret
	
_LABEL_71C_:	
		cp $40
		jr c, +
		ld a, (_RAM_C00A_)
		jp +++
	
+:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (_RAM_C008_), a
+:	
		ld (_RAM_C004_), hl
		ret
	
++:	
		cp $08
		jr nc, _LABEL_77B_
		cp $00
		jr z, +++++
		cp $01
		jr z, ++++
		ret
	
_LABEL_742_:	
		ld a, b
_LABEL_743_:	
		out (Port_PSG), a
		jp _LABEL_692_
	
_LABEL_748_:	
		ld a, b
_LABEL_749_:	
		ld c, a
		and $0F
		ld b, a
		ld a, (_RAM_C00B_)
		add a, b
		cp $0F
		jr c, +
		ld a, $0F
+:	
		ld b, a
		ld a, c
		and $F0
		or b
		out (Port_PSG), a
		jp _LABEL_692_
	
+++:	
		bit 6, a
		jr nz, ++++++
		jp _LABEL_742_
	
++++:	
		ld (_RAM_C006_), hl
		jp _LABEL_692_
	
+++++:	
		ld a, (_RAM_C009_)
		or a
		jp z, _LABEL_281_
		ld hl, (_RAM_C006_)
		jp _LABEL_692_
	
_LABEL_77B_:	
		sub $04
		ld (_RAM_C00C_), a
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (_RAM_C00D_), hl
		ld hl, (_RAM_C002_)
		add hl, bc
		jp _LABEL_692_
	
++++++:	
		ld a, b
		ld (_RAM_C014_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_742_
		jp _LABEL_692_
	
	; Data from 79B to 79B (1 bytes)
	.db $C9
	
_LABEL_79C_:	
		ld a, (_RAM_C01A_)
		or a
		ret z
		ld a, (_RAM_C021_)
		or a
		jp nz, +++
		ld hl, (_RAM_C01D_)
_LABEL_7AB_:	
		ld b, (hl)
		inc hl
		ld a, (_RAM_C023_)
		or a
		jr z, +
		dec a
		ld (_RAM_C023_), a
		jr nz, +
		ld hl, (_RAM_C024_)
+:	
		ld a, b
		cp $40
		jp c, ++++
		bit 4, a
		jr z, ++
		bit 5, a
		jr nz, +
		ld (_RAM_C018_), a
		jr ++
	
+:	
		ld (_RAM_C019_), a
++:	
		out (Port_PSG), a
		jp _LABEL_7AB_
	
+++:	
		dec a
		ld (_RAM_C021_), a
		ret
	
++++:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (_RAM_C021_), a
+:	
		ld (_RAM_C01D_), hl
		ret
	
++:	
		cp $08
		jr nc, +++
		cp $00
		jr z, ++
		cp $01
		jr z, +
		ret
	
+:	
		ld (_RAM_C01F_), hl
		jp _LABEL_7AB_
	
++:	
		ld a, (_RAM_C022_)
		or a
		jp z, _LABEL_53D_
		ld hl, (_RAM_C01F_)
		ld (_RAM_C01D_), hl
		jp _LABEL_7AB_
	
+++:	
		sub $04
		ld (_RAM_C023_), a
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (_RAM_C024_), hl
		ld hl, (_RAM_C01B_)
		add hl, bc
		jp _LABEL_7AB_
	
	; Data from 821 to 821 (1 bytes)
	.db $C9
	
_LABEL_822_:	
		jp _LABEL_1B7E_
	
_LABEL_825_:	
		ld hl, $0140
		jp _LABEL_1BE5_
	
_LABEL_82B_:	
		ld hl, $0140
		jp _LABEL_1BFC_
	
	; Data from 831 to 845 (21 bytes)
	.db $21 $02 $00 $39 $7E $32 $FF $FF $C9 $FD $21 $02 $00 $FD $39 $FD
	.db $6E $00 $C3 $15 $1C
	
_LABEL_846_:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _LABEL_1C1F_
	
	; Data from 852 to 870 (31 bytes)
	.db $21 $FC $FF $36 $08 $C9 $21 $02 $00 $39 $7E $87 $87 $CB $DF $E6
	.db $0C $32 $FC $FF $C9 $21 $FC $FF $36 $00 $C9 $21 $00 $80 $C9
	
_LABEL_871_:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _LABEL_1C47_
	
_LABEL_87D_:	
		ld l, $00
		jp _LABEL_1C33_
	
	; Data from 882 to 886 (5 bytes)
	.db $2E $01 $C3 $33 $1C
	
_LABEL_887_:	
		pop bc
		pop hl
		push hl
		push bc
		jp _LABEL_1BE5_
	
_LABEL_88E_:	
		ld hl, $0004
		add hl, sp
		ld c, (hl)
		inc hl
		ld b, (hl)
		push bc
		ld hl, $0004
		add hl, sp
		ld c, (hl)
		inc hl
		ld b, (hl)
		push bc
		call _LABEL_2050_
		pop af
		pop af
		ret
	
	; Data from 8A4 to 8C4 (33 bytes)
	.db $3E $20 $F5 $33 $21 $05 $00 $39 $4E $23 $46 $C5 $21 $06 $00 $39
	.db $7E $F5 $33 $21 $06 $00 $39 $7E $F5 $33 $CD $6E $1E $F1 $F1 $33
	.db $C9
	
_LABEL_8C5_:	
		pop bc
		pop hl
		push hl
		push bc
		jp _LABEL_1CB4_
	
_LABEL_8CC_:	
		pop bc
		pop hl
		push hl
		push bc
		jp _LABEL_1CC8_
	
	; Data from 8D3 to 97E (172 bytes)
	.db $21 $04 $00 $39 $7E $87 $87 $21 $03 $00 $39 $B6 $4F $21 $05 $00
	.db $39 $7E $07 $07 $07 $07 $E6 $F0 $B1 $47 $C5 $33 $21 $03 $00 $39
	.db $7E $F5 $33 $CD $8C $1C $F1 $C9 $21 $04 $00 $39 $7E $87 $87 $21
	.db $03 $00 $39 $B6 $4F $21 $05 $00 $39 $7E $07 $07 $07 $07 $E6 $F0
	.db $B1 $47 $C5 $33 $21 $03 $00 $39 $7E $F5 $33 $CD $A0 $1C $F1 $C9
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $DD $6E $05 $26 $00 $29 $29 $29
	.db $29 $29 $29 $4D $7C $F6 $78 $47 $DD $6E $04 $26 $00 $29 $7D $B1
	.db $6F $7C $B0 $67 $DD $E1 $C3 $06 $00 $C1 $E1 $E5 $C5 $C3 $11 $00
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $3E $00 $F6 $18 $67 $C3 $11
	.db $00 $21 $04 $00 $39 $46 $C5 $33 $21 $04 $00 $39 $7E $F5 $33 $21
	.db $04 $00 $39 $7E $F5 $33 $CD $E6 $1C $F1 $33 $C9
	
_LABEL_97F_:	
		jp _LABEL_1CE0_
	
_LABEL_982_:	
		jp _LABEL_1D3B_
	
_LABEL_985_:	
		jp _LABEL_1D76_
	
_LABEL_988_:	
		jp _LABEL_1B0F_
	
	; Data from 98B to 98D (3 bytes)
	.db $C3 $0F $1B
	
_LABEL_98E_:	
		jp _LABEL_1DD8_
	
_LABEL_991_:	
		jp _LABEL_1DE0_
	
	; Data from 994 to 99A (7 bytes)
	.db $3A $62 $C0 $E6 $20 $6F $C9
	
_LABEL_99B_:	
		jp _LABEL_1D83_
	
_LABEL_99E_:	
		ld l, $00
		ret
	
_LABEL_9A1_:	
		ld hl, $0020
		ret
	
	; Data from 9A5 to A44 (160 bytes)
	.db $21 $00 $10 $C9 $21 $00 $08 $C9 $53 $74 $65 $76 $65 $6E $20 $42
	.db $6F $6C $61 $6E $64 $00 $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00 $C1 $E1 $E5 $C5
	.db $E5 $CD $F4 $02 $F1 $C9 $C1 $E1 $E5 $C5 $E5 $CD $27 $03 $F1 $C9
	.db $C3 $81 $02 $C3 $A8 $02 $C3 $36 $03 $21 $02 $00 $39 $7E $F5 $33
	.db $CD $4E $04 $33 $C9 $21 $04 $00 $39 $7E $F5 $33 $21 $03 $00 $39
	.db $4E $23 $46 $C5 $CD $07 $06 $F1 $33 $C9 $C3 $3D $05 $C3 $5A $06
	
_LABEL_A45_:	
		jp _LABEL_33E_
	
_LABEL_A48_:	
		jp _LABEL_34F_
	
_LABEL_A4B_:	
		jp _LABEL_683_
	
_LABEL_A4E_:	
		jp _LABEL_79C_
	
	; Data from A51 to A59 (9 bytes)
	.db $2E $01 $C9 $2E $02 $C9 $2E $03 $C9
	
_LABEL_A5A_:	
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $40
		out (Port_VDPAddress), a
		ld bc, $4000
-:	
		ld a, $00
		out (Port_VDPData), a
		dec bc
		ld a, b
		or c
		jp nz, -
		ret
	
	; Data from A70 to AA1 (50 bytes)
	.db $21 $8B $1A $E5 $CD $8B $0A $F1 $C9 $21 $AB $1A $E5 $CD $8B $0A
	.db $F1 $C9 $21 $68 $1A $E5 $CD $8B $0A $F1 $C9 $CD $42 $0A $7D $B7
	.db $C0 $CD $51 $0A $65 $D1 $C1 $C5 $D5 $E5 $33 $C5 $CD $2A $0A $F1
	.db $33 $C9
	
_LABEL_AA2_:	
		ld hl, $0000
		push hl
		ld hl, $17A1
		push hl
		call _LABEL_88E_
		pop af
		pop af
		ld bc, _DATA_1711_
		push bc
		call _LABEL_8C5_
		pop af
		ret
	
	; Data from AB8 to B50 (153 bytes)
	.db $3E $02 $F5 $33 $CD $31 $08 $33 $21 $40 $00 $E5 $21 $57 $80 $E5
	.db $CD $8E $08 $F1 $F1 $01 $10 $80 $C5 $21 $00 $00 $E5 $CD $A4 $08
	.db $F1 $F1 $01 $00 $80 $C5 $CD $C5 $08 $F1 $C9 $3E $03 $F5 $33 $CD
	.db $31 $08 $33 $21 $40 $00 $E5 $21 $77 $80 $E5 $CD $8E $08 $F1 $F1
	.db $01 $10 $80 $C5 $21 $00 $00 $E5 $CD $A4 $08 $F1 $F1 $01 $00 $80
	.db $C5 $CD $C5 $08 $F1 $21 $03 $03 $E5 $2E $0F $E5 $CD $D3 $08 $F1
	.db $F1 $C9 $3E $03 $F5 $33 $CD $31 $08 $33 $21 $40 $00 $E5 $21 $45
	.db $93 $E5 $CD $8E $08 $F1 $F1 $01 $E8 $92 $C5 $21 $00 $00 $E5 $CD
	.db $A4 $08 $F1 $F1 $01 $D8 $92 $C5 $CD $C5 $08 $F1 $21 $03 $03 $E5
	.db $2E $0F $E5 $CD $D3 $08 $F1 $F1 $C9
	
_LABEL_B51_:	
		ld hl, $0120
		push hl
		ld hl, $1656
		push hl
		call _LABEL_88E_
		pop af
		pop af
		ld bc, _DATA_1646_
		push bc
		call _LABEL_8CC_
		pop af
		ret
	
	; Data from B67 to EC5 (863 bytes)
	.db $01 $26 $C0 $AF $02 $21 $27 $C0 $36 $00 $C5 $3E $03 $F5 $33 $21
	.db $05 $00 $39 $7E $F5 $33 $CD $D6 $1A $F1 $7D $C1 $02 $3E $03 $F5
	.db $33 $21 $03 $00 $39 $7E $F5 $33 $CD $57 $1E $F1 $4D $21 $27 $C0
	.db $71 $C3 $88 $0D $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $F5 $DD $36
	.db $FD $00 $3E $D3 $DD $86 $FD $DD $77 $FE $3E $11 $CE $00 $DD $77
	.db $FF $0E $00 $69 $29 $09 $7D $DD $86 $FD $5F $21 $CF $11 $06 $00
	.db $09 $46 $DD $6E $FE $DD $66 $FF $7E $DD $77 $FC $26 $00 $6B $29
	.db $11 $50 $C1 $19 $5E $23 $56 $DD $7E $FC $DD $86 $04 $C5 $F5 $33
	.db $C5 $33 $D5 $CD $E9 $0D $F1 $F1 $C1 $0C $79 $D6 $04 $38 $C4 $DD
	.db $34 $FD $DD $7E $FD $D6 $03 $38 $A9 $DD $F9 $DD $E1 $C9 $3A $26
	.db $C0 $4F $87 $81 $4F $21 $26 $C0 $23 $6E $09 $C9 $DD $E5 $DD $21
	.db $00 $00 $DD $39 $F5 $F5 $21 $26 $C0 $23 $23 $4E $21 $26 $C0 $23
	.db $23 $23 $46 $C5 $21 $20 $01 $E5 $C5 $CD $64 $09 $F1 $F1 $C1 $79
	.db $C6 $28 $5F $C5 $D5 $21 $25 $01 $E5 $C5 $33 $7B $F5 $33 $CD $64
	.db $09 $F1 $F1 $D1 $C1 $78 $C6 $10 $57 $C5 $D5 $21 $2C $01 $E5 $59
	.db $D5 $CD $64 $09 $F1 $F1 $D1 $D5 $21 $31 $01 $E5 $D5 $CD $64 $09
	.db $F1 $F1 $D1 $C1 $79 $C6 $08 $DD $77 $FE $C5 $D5 $21 $21 $01 $E5
	.db $C5 $33 $DD $7E $FE $F5 $33 $CD $64 $09 $F1 $F1 $D1 $C1 $79 $C6
	.db $10 $DD $77 $FF $C5 $D5 $21 $22 $01 $E5 $C5 $33 $DD $7E $FF $F5
	.db $33 $CD $64 $09 $F1 $F1 $D1 $C1 $79 $C6 $18 $DD $77 $FD $C5 $D5
	.db $21 $23 $01 $E5 $C5 $33 $DD $7E $FD $F5 $33 $CD $64 $09 $F1 $F1
	.db $D1 $C1 $79 $C6 $20 $DD $77 $FC $C5 $D5 $21 $24 $01 $E5 $C5 $33
	.db $DD $7E $FC $F5 $33 $CD $64 $09 $F1 $F1 $D1 $C1 $78 $C6 $08 $47
	.db $C5 $D5 $21 $26 $01 $E5 $C5 $CD $64 $09 $F1 $F1 $D1 $C1 $D5 $21
	.db $2B $01 $E5 $C5 $33 $7B $F5 $33 $CD $64 $09 $F1 $F1 $D1 $D5 $21
	.db $2D $01 $E5 $D5 $33 $DD $7E $FE $F5 $33 $CD $64 $09 $F1 $F1 $D1
	.db $D5 $21 $2E $01 $E5 $D5 $33 $DD $7E $FF $F5 $33 $CD $64 $09 $F1
	.db $F1 $D1 $D5 $21 $2F $01 $E5 $D5 $33 $DD $7E $FD $F5 $33 $CD $64
	.db $09 $F1 $F1 $D1 $21 $30 $01 $E5 $D5 $33 $DD $7E $FC $F5 $33 $CD
	.db $64 $09 $DD $F9 $DD $E1 $C9 $01 $26 $C0 $0A $B7 $20 $06 $3E $03
	.db $02 $C3 $88 $0D $C6 $FF $02 $C3 $88 $0D $01 $26 $C0 $0A $FE $03
	.db $20 $05 $AF $02 $C3 $88 $0D $3C $02 $C3 $88 $0D $01 $27 $C0 $0A
	.db $B7 $20 $06 $3E $02 $02 $C3 $88 $0D $C6 $FF $02 $C3 $88 $0D $01
	.db $27 $C0 $0A $FE $02 $20 $05 $AF $02 $C3 $88 $0D $3C $02 $C3 $88
	.db $0D $01 $CF $11 $21 $26 $C0 $6E $26 $00 $09 $4E $11 $D3 $11 $21
	.db $26 $C0 $23 $6E $26 $00 $19 $5E $0D $79 $07 $07 $07 $E6 $F8 $57
	.db $21 $28 $C0 $72 $01 $29 $C0 $1D $7B $07 $07 $07 $E6 $F8 $5F $02
	.db $14 $72 $1D $7B $02 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $DD $7E
	.db $04 $C6 $E0 $4F $C5 $DD $66 $06 $DD $6E $05 $E5 $CD $23 $09 $F1
	.db $C1 $21 $21 $17 $6E $26 $00 $06 $00 $09 $E5 $CD $4C $09 $F1 $DD
	.db $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $3B $DD $4E $06 $DD $36
	.db $FF $00 $DD $7E $04 $DD $86 $FF $5F $DD $7E $05 $CE $00 $57 $1A
	.db $B7 $28 $2D $C6 $E0 $47 $51 $0C $DD $71 $06 $C5 $DD $7E $07 $F5
	.db $33 $D5 $33 $CD $23 $09 $F1 $C1 $21 $21 $17 $5E $16 $00 $78 $6F
	.db $17 $9F $67 $19 $C5 $E5 $CD $4C $09 $F1 $C1 $DD $34 $FF $18 $C2
	.db $33 $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD $7E $06
	.db $DD $77 $FF $DD $36 $FE $00 $21 $0A $00 $E5 $DD $6E $04 $DD $66
	.db $05 $E5 $CD $CE $1A $F1 $F1 $5D $54 $E5 $D5 $01 $0A $00 $C5 $DD
	.db $4E $04 $DD $46 $05 $C5 $CD $63 $1E $F1 $F1 $45 $D1 $E1 $DD $75
	.db $04 $DD $74 $05 $78 $C6 $10 $4F $7A $B3 $20 $0B $B0 $20 $08 $DD
	.db $7E $FE $B7 $28 $02 $0E $00 $DD $46 $FF $DD $35 $FF $DD $7E $FF
	.db $DD $77 $06 $C5 $DD $7E $07 $F5 $33 $C5 $33 $CD $23 $09 $F1 $C1
	.db $21 $21 $17 $6E $26 $00 $79 $17 $9F $47 $09 $E5 $CD $4C $09 $F1
	.db $DD $34 $FE $DD $7E $FE $D6 $05 $38 $8D $DD $F9 $DD $E1 $C9
	
_LABEL_EC6_:	
		ld hl, (_RAM_C14C_)
		ld (_RAM_C14E_), hl
		call _LABEL_99B_
		ld (_RAM_C14C_), hl
		ret
	
	; Data from ED3 to FFD (299 bytes)
	.db $21 $02 $00 $39 $4E $06 $00 $FD $21 $4C $C1 $FD $7E $00 $A1 $5F
	.db $FD $7E $01 $A0 $B3 $28 $10 $79 $FD $21 $4E $C1 $FD $A6 $00 $4F
	.db $78 $FD $A6 $01 $B1 $28 $03 $2E $00 $C9 $2E $01 $C9 $21 $02 $00
	.db $39 $4E $3A $4C $C1 $A1 $6F $C9 $0E $00 $C5 $3E $01 $F5 $33 $CD
	.db $00 $0F $33 $C1 $45 $C5 $3E $02 $F5 $33 $CD $00 $0F $33 $5D $D5
	.db $3E $04 $F5 $33 $CD $00 $0F $33 $D1 $C1 $55 $C5 $D5 $3E $08 $F5
	.db $33 $CD $00 $0F $33 $D1 $C1 $78 $B7 $28 $04 $7A $B7 $20 $18 $7B
	.db $B7 $28 $04 $7A $B7 $20 $10 $78 $B7 $28 $04 $7D $B7 $20 $08 $7B
	.db $B7 $28 $07 $7D $B7 $28 $03 $2E $00 $C9 $78 $B7 $28 $04 $0E $01
	.db $18 $16 $7B $B7 $28 $04 $0E $02 $18 $0E $7A $B7 $28 $04 $0E $04
	.db $18 $06 $7D $B7 $28 $02 $0E $08 $69 $C9 $21 $2A $C0 $FD $21 $02
	.db $00 $FD $39 $FD $7E $00 $77 $C9 $DD $E5 $DD $21 $00 $00 $DD $39
	.db $3B $3A $2A $C0 $DD $77 $FF $6F $26 $00 $29 $4D $44 $21 $68 $C1
	.db $09 $5E $23 $56 $21 $80 $C1 $09 $4E $23 $46 $DD $7E $FF $C6 $12
	.db $6F $3E $00 $CE $12 $67 $66 $C5 $D5 $E5 $33 $CD $31 $08 $33 $D1
	.db $21 $00 $00 $E5 $D5 $CD $8E $08 $F1 $21 $00 $00 $E3 $CD $A4 $08
	.db $F1 $F1 $2A $98 $C1 $E5 $CD $C5 $08 $F1 $33 $DD $E1 $C9 $01 $2A
	.db $C0 $0A $B7 $20 $04 $3E $0B $02 $C9 $C6 $FF $02 $C9 $01 $2A $C0
	.db $0A $FE $0B $20 $03 $AF $02 $C9 $3C $02 $C9
	
_LABEL_FFE_:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (_RAM_C02C_), a
		ld hl, _RAM_C02B_
		ld (hl), $00
		ld hl, $121E
		ld (_RAM_C02D_), hl
		ld hl, $1226
		ld (_RAM_C02F_), hl
		ld hl, $12A9
		ld (_RAM_C031_), hl
		ld hl, $13C4
		ld (_RAM_C033_), hl
		ld hl, $1425
		ld (_RAM_C035_), hl
		ld hl, $14E1
		ld (_RAM_C037_), hl
		ld hl, $156E
		ld (_RAM_C039_), hl
		ld hl, $1576
		ld (_RAM_C03B_), hl
		ld hl, $15BE
		ld (_RAM_C03D_), hl
		ld hl, $121F
		ld (_RAM_C03F_), hl
		ld hl, $1242
		ld (_RAM_C041_), hl
		ld hl, $133B
		ld (_RAM_C043_), hl
		ld hl, $13CA
		ld (_RAM_C045_), hl
		ld hl, $146F
		ld (_RAM_C047_), hl
		ld hl, $14E7
		ld (_RAM_C049_), hl
		ld hl, $156F
		ld (_RAM_C04B_), hl
		ld hl, $159E
		ld (_RAM_C04D_), hl
		ld hl, $163F
		ld (_RAM_C04F_), hl
		ret
	
_LABEL_1078_:	
		ld a, (_RAM_C02B_)
		ld iy, _RAM_C02C_
		sub (iy+0)
		jr z, +
		ld a, (iy+0)
		ld iy, _RAM_C02B_
		ld (iy+0), a
		ld bc, _RAM_C02D_
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		call _LABEL_204F_
+:	
		ld bc, _RAM_C03F_
		ld iy, _RAM_C02B_
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld hl, $C02C
		push hl
		ld l, c
		ld h, b
		call _LABEL_204F_
		pop af
		ret
	
_LABEL_10BB_:	
		xor a
		push af
		inc sp
		call +
		inc sp
		xor a
		push af
		inc sp
		call _LABEL_846_
		inc sp
		ret
	
+:	
		ld hl, _RAM_C051_
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		ret
	
	; Data from 10D8 to 1645 (1390 bytes)
	.incbin "data/File00_010D8_01645.dat"
	
; Data from 1646 to 1710 (203 bytes)	
_DATA_1646_:	
	.db $00 $00 $15 $15 $2A $2A $15 $15 $2A $2A $2A $2A $3F $3F $3F $3F
	.db $12 $00 $AA $CF $00 $7F $20 $0F $E0 $80 $C0 $DF $DF $1F $00 $7F
	.db $7F $3F $0F $C0 $FF $FF $FF $E0 $AA $DF $00 $FF $20 $EF $FF $20
	.db $3F $FF $FF $02 $AA $DF $00 $FF $20 $EF $FF $20 $3F $FF $FF $02
	.db $AA $DF $00 $FF $20 $EF $FF $20 $3F $FF $FF $02 $AA $DF $00 $FF
	.db $20 $EF $FF $20 $3F $FF $FF $02 $AA $0F $04 $01 $00 $FC $00 $20
	.db $8F $02 $F8 $F8 $0F $00 $FE $FC $FC $04 $1F $03 $FF $FF $FF $22
	.db $FF $E0 $FF $C0 $00 $00 $00 $00 $A2 $FF $04 $00 $FF $03 $AA $F5
	.db $00 $3F $80 $F8 $E0 $80 $80 $00 $F0 $00 $20 $3F $7F $FF $FC $C0
	.db $80 $00 $88 $F7 $00 $FF $F8 $00 $FF $FF $FF $88 $F7 $00 $FF $F8
	.db $00 $FF $FF $FF $88 $F7 $00 $FF $F8 $00 $FF $FF $FF $88 $F7 $00
	.db $FF $F8 $00 $FF $FF $FF $AA $F0 $04 $F8 $02 $01 $00 $F8 $04 $00
	.db $06 $07 $F8 $00 $FC $FE $FF $FC $03 $01 $00
	
; Data from 1711 to 1B0E (1022 bytes)	
_DATA_1711_:	
	.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
	.db $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
	.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
	.db $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $15 $00 $16 $00 $17 $00
	.db $18 $00 $19 $00 $1A $00 $1B $00 $1C $00 $1D $00 $1E $00 $1F $00
	.db $20 $00 $21 $00 $22 $00 $23 $00 $24 $00 $25 $00 $26 $00 $27 $00
	.db $28 $00 $29 $00 $2A $00 $2B $00 $2C $00 $2D $00 $2E $00 $2F $00
	.db $30 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00 $36 $00 $37 $00
	.db $38 $00 $39 $00 $3A $00 $3B $00 $3C $00 $3D $00 $3E $00 $3F $00
	.db $40 $00 $00 $AA $1A $18 $1C $1C $1C $00 $00 $00 $00 $00 $AA $1F
	.db $00 $36 $36 $24 $00 $00 $00 $AA $D6 $36 $7F $7F $00 $00 $00 $00
	.db $AA $54 $3E $08 $68 $0B $08 $00 $00 $00 $00 $EA $21 $52 $24 $08
	.db $12 $25 $42 $00 $00 $00 $00 $EA $18 $24 $34 $38 $4D $46 $3D $00
	.db $00 $00 $00 $AA $0F $00 $30 $30 $10 $20 $00 $00 $00 $AA $38 $30
	.db $0C $18 $18 $0C $00 $00 $00 $00 $AA $38 $06 $18 $0C $0C $18 $00
	.db $00 $00 $00 $AA $83 $00 $22 $14 $08 $14 $22 $00 $00 $00 $AA $6C
	.db $08 $00 $3E $00 $00 $00 $00 $00 $AA $F1 $00 $18 $18 $30 $00 $00
	.db $00 $AA $EF $00 $3E $00 $00 $00 $AA $F9 $00 $18 $18 $00 $00 $00
	.db $EA $01 $02 $04 $08 $10 $20 $40 $00 $00 $00 $00 $AA $38 $63 $1C
	.db $26 $32 $1C $00 $00 $00 $00 $AA $BC $0C $1C $3F $00 $00 $00 $00
	.db $EA $3E $63 $07 $1E $3C $70 $7F $00 $00 $00 $00 $EA $3F $06 $0C
	.db $1E $03 $63 $3E $00 $00 $00 $00 $EA $0E $1E $36 $66 $7F $06 $06
	.db $00 $00 $00 $00 $EA $7E $60 $7E $03 $03 $63 $3E $00 $00 $00 $00
	.db $EA $1E $30 $60 $7E $63 $63 $3E $00 $00 $00 $00 $AA $0E $18 $7F
	.db $63 $06 $0C $00 $00 $00 $00 $EA $3C $62 $72 $3C $4F $43 $3E $00
	.db $00 $00 $00 $EA $3E $63 $63 $3F $03 $06 $3C $00 $00 $00 $00 $AA
	.db $93 $00 $18 $18 $18 $18 $00 $00 $00 $AA $6C $18 $00 $00 $30 $00
	.db $00 $00 $00 $EA $06 $0C $18 $30 $18 $0C $06 $00 $00 $00 $00 $AA
	.db $D7 $00 $3E $3E $00 $00 $00 $EA $30 $18 $0C $06 $0C $18 $30 $00
	.db $00 $00 $00 $EA $3E $7F $63 $06 $1C $00 $1C $00 $00 $00 $00 $EA
	.db $1E $33 $67 $67 $60 $33 $1E $00 $00 $00 $00 $AA $36 $63 $1C $36
	.db $7F $00 $00 $00 $00 $AA $6C $63 $7E $7E $7E $00 $00 $00 $00 $AA
	.db $38 $60 $1E $33 $33 $1E $00 $00 $00 $00 $AA $38 $63 $7C $66 $66
	.db $7C $00 $00 $00 $00 $AA $6C $60 $7F $7E $7F $00 $00 $00 $00 $AA
	.db $6E $60 $7F $7E $00 $00 $00 $00 $EA $1F $30 $60 $67 $63 $33 $1F
	.db $00 $00 $00 $00 $AA $EE $63 $7F $00 $00 $00 $00 $AA $7C $0C $3F
	.db $3F $00 $00 $00 $00 $AA $F8 $03 $63 $3E $00 $00 $00 $00 $EA $63
	.db $66 $6C $78 $7C $6E $67 $00 $00 $00 $00 $AA $FC $60 $7F $00 $00
	.db $00 $00 $AA $86 $63 $77 $7F $7F $6B $00 $00 $00 $00 $EA $63 $73
	.db $7B $7F $6F $67 $63 $00 $00 $00 $00 $AA $7C $63 $3E $3E $00 $00
	.db $00 $00 $AA $70 $63 $7E $7E $60 $60 $00 $00 $00 $00 $AA $70 $63
	.db $3E $6F $66 $3D $00 $00 $00 $00 $EA $7E $63 $63 $67 $7C $6E $67
	.db $00 $00 $00 $00 $EA $3C $66 $60 $3E $03 $63 $3E $00 $00 $00 $00
	.db $AA $7E $0C $3F $00 $00 $00 $00 $AA $FC $63 $3E $00 $00 $00 $00
	.db $AA $E0 $63 $77 $3E $1C $08 $00 $00 $00 $00 $AA $C2 $63 $6B $7F
	.db $7F $77 $00 $00 $00 $00 $EA $63 $77 $3E $1C $3E $77 $63 $00 $00
	.db $00 $00 $AA $0E $0C $33 $33 $33 $1E $00 $00 $00 $00 $EA $7F $07
	.db $0E $1C $38 $70 $7F $00 $00 $00 $00 $AA $7C $18 $1E $1E $00 $00
	.db $00 $00 $EA $40 $20 $10 $08 $04 $02 $01 $00 $00 $00 $00 $AA $7C
	.db $0C $3C $3C $00 $00 $00 $00 $AA $1F $00 $08 $14 $2A $00 $00 $00
	.db $AA $FE $00 $7F $00 $00 $00 $00 $02 $08 $0A $20 $22 $28 $2A $3F
	.db $03 $0C $0F $30 $33 $3C $3F $02 $00 $32 $03 $0F $1F $3F $33 $61
	.db $61 $73 $21 $F9 $6D $6D $33 $7F $33 $38 $1C $8F $53 $A0 $50 $7F
	.db $3F $3F $1F $8F $D3 $E0 $70 $CE $4B $D0 $3B $D1 $38 $CF $47 $08
	.db $02 $00 $C7 $49 $0A $02 $00 $09 $02 $00 $45 $D0 $3B $D1 $3B $D2
	.db $3A $D3 $39 $D4 $39 $C3 $55 $DF $3C $00 $C5 $4D $D0 $3B $CE $48
	.db $3B $C7 $44 $D5 $3A $CA $46 $3B $C5 $4D $DA $3A $09 $04 $00 $DB
	.db $3B $CA $46 $DD $3A $C0 $40 $DF $38 $00 $C5 $4D $D0 $3B $C0 $4A
	.db $3B $C7 $49 $3B $CE $48 $D5 $3B $C5 $4D $3B $C0 $4A $3B $C7 $49
	.db $DA $3B $CE $48 $3B $C0 $49 $3B $C0 $40 $DF $3B $00 $F1 $E1 $D1
	.db $D5 $E5 $F5 $18 $0A $21 $03 $00 $39 $5E $2B $6E $26 $00 $54 $7B
	.db $E6 $80 $B2 $20 $10 $06 $10 $ED $6A $17 $93 $30 $01 $83 $3F $ED
	.db $6A $10 $F6 $5F $C9 $06 $09 $7D $6C $26 $00 $CB $1D $ED $6A $ED
	.db $52 $30 $01 $19 $3F $17 $10 $F5 $CB $10 $50 $5F $EB $C9
	
_LABEL_1B0F_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, _RAM_C069_
		call _LABEL_119_
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, _RAM_C0A9_
		jp _LABEL_99_
	
	; Data from 1B27 to 1B7D (87 bytes)
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01 $FD $21 $02
	.db $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21
	.db $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01 $FD $21 $02 $00 $FD $39
	.db $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21 $04 $00 $39
	.db $7E $23 $66 $6F $C3 $99 $00
	
_LABEL_1B7E_:	
		ld hl, $0000
		push hl
		call _LABEL_1CA0_
		pop af
		ld c, $00
-:	
		ld hl, _DATA_1BD2_
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
		call _LABEL_1CE0_
		call _LABEL_1D3B_
		call _LABEL_1D4D_
		call _LABEL_1DE0_
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
		ld hl, _RAM_C064_
		ld (hl), $80
		ret
	
+:	
		ld hl, _RAM_C064_
		ld (hl), $40
		ret
	
; Data from 1BD2 to 1BE4 (19 bytes)	
_DATA_1BD2_:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $64 $C0 $FD
	.db $6E $00 $C9
	
_LABEL_1BE5_:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, _RAM_C1B0_
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
	
_LABEL_1BFC_:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, $C1B0
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
	
	; Data from 1C15 to 1C1E (10 bytes)
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9
	
_LABEL_1C1F_:	
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ei
		ret
	
	; Data from 1C29 to 1C32 (10 bytes)
	.db $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
	
_LABEL_1C33_:	
		bit 0, l
		jr z, +
		ld c, $FB
		jr ++
	
+:	
		ld c, $FF
++:	
		di
		ld a, c
		out (Port_VDPAddress), a
		ld a, $86
		out (Port_VDPAddress), a
		ei
		ret
	
_LABEL_1C47_:	
		ld c, l
		bit 0, c
		jr z, +
		push bc
		ld hl, $0102
		call _LABEL_1BE5_
		pop bc
		ld hl, _RAM_C1B2_
		ld (hl), $10
		jr ++
	
+:	
		push bc
		ld hl, $0102
		call _LABEL_1BFC_
		pop bc
		ld hl, _RAM_C1B2_
		ld (hl), $08
++:	
		bit 1, c
		jr z, +
		ld hl, $0101
		call _LABEL_1BE5_
		ld hl, _RAM_C1B3_
		ld (hl), $10
		ld iy, _RAM_C1B2_
		sla (iy+0)
		ret
	
+:	
		ld hl, $0101
		call _LABEL_1BFC_
		ld hl, _RAM_C1B3_
		ld (hl), $08
		ret
	
	; Data from 1C8C to 1C9F (20 bytes)
	.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	.db $7E $D3 $BE $C9
	
_LABEL_1CA0_:	
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
	
_LABEL_1CB4_:	
		ld de, $C000
		ld c, Port_VDPAddress
		di
		out (c), e
		out (c), d
		ei
		ld b, $10
		ld c, Port_VDPData
-:	
		outi
		jr nz, -
		ret
	
_LABEL_1CC8_:	
		ld de, $C010
		ld c, Port_VDPAddress
		di
		out (c), e
		out (c), d
		ei
		ld b, $10
		ld c, Port_VDPData
-:	
		outi
		jr nz, -
		ret
	
	; Data from 1CDC to 1CDF (4 bytes)
	.db $7D $D3 $BE $C9
	
_LABEL_1CE0_:	
		ld hl, _RAM_C129_
		ld (hl), $00
		ret
	
	; Data from 1CE6 to 1D3A (85 bytes)
	.db $3A $29 $C1 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $69 $21 $29 $C1 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $29 $C1 $87 $4F $21 $A9 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $29 $C1 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_LABEL_1D3B_:	
		ld a, (_RAM_C129_)
		sub $40
		ret nc
		ld bc, $C069
		ld hl, (_RAM_C129_)
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_LABEL_1D4D_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, _RAM_C069_
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
		ld bc, _RAM_C0A9_
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
	
_LABEL_1D76_:	
		ld hl, _RAM_C061_
		ld (hl), $00
-:	
		ld hl, _RAM_C061_
		bit 0, (hl)
		jr z, -
		ret
	
_LABEL_1D83_:	
		ld hl, (_RAM_C065_)
		ret
	
	; Data from 1D87 to 1DD7 (81 bytes)
	.db $FD $21 $67 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $65 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9 $3A $65 $C0
	.db $FD $21 $67 $C0 $FD $A6 $00 $6F $3A $66 $C0 $FD $21 $67 $C0 $FD
	.db $A6 $01 $67 $C9 $FD $21 $65 $C0 $FD $7E $00 $2F $4F $FD $7E $01
	.db $2F $47 $79 $FD $21 $67 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67
	.db $C9
	
_LABEL_1DD8_:	
		ld iy, _RAM_C063_
		ld l, (iy+0)
		ret
	
_LABEL_1DE0_:	
		ld hl, _RAM_C063_
		ld (hl), $00
		ret
	
	; Data from 1DE6 to 1E0D (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $2A $C1 $21 $03 $00 $39 $7E $32 $2B $C1
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_LABEL_1E0E_:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (_RAM_C062_), a
		rlca
		jr nc, +
		ld hl, _RAM_C061_
		ld (hl), $01
		ld hl, (_RAM_C065_)
		ld (_RAM_C067_), hl
		in a, (Port_IOPort1)
		cpl
		ld hl, _RAM_C065_
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
		ld hl, (_RAM_C12A_)
		call _LABEL_204F_
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
_LABEL_1E44_:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, _RAM_C063_
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
	; Data from 1E57 to 204E (504 bytes)
	.db $21 $03 $00 $39 $5E $2B $6E $CD $DD $1A $EB $C9 $F1 $E1 $D1 $D5
	.db $E5 $F5 $CD $E0 $1A $EB $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $21
	.db $F0 $FF $39 $F9 $DD $36 $FE $00 $DD $36 $FF $00 $DD $36 $F3 $00
	.db $DD $36 $F4 $00 $DD $6E $05 $26 $00 $29 $29 $29 $29 $29 $29 $DD
	.db $75 $FC $7C $F6 $78 $DD $77 $FD $DD $7E $04 $DD $77 $FA $DD $36
	.db $FB $00 $DD $CB $FA $26 $DD $CB $FB $16 $DD $7E $FC $DD $B6 $FA
	.db $5F $DD $7E $FD $DD $B6 $FB $57 $DD $7E $08 $DD $77 $FA $DD $77
	.db $F1 $DD $36 $F0 $00 $6B $62 $CF $DD $6E $06 $DD $66 $07 $7E $DD
	.db $77 $F2 $23 $DD $75 $06 $DD $74 $07 $DD $7E $06 $DD $77 $FC $DD
	.db $7E $07 $DD $77 $FD $DD $7E $F2 $E6 $02 $DD $77 $F9 $DD $7E $F2
	.db $0F $0F $E6 $3F $DD $77 $F8 $DD $CB $F2 $46 $CA $A7 $1F $DD $36
	.db $F6 $00 $DD $7E $FF $DD $77 $F7 $DD $4E $FC $DD $46 $FD $03 $DD
	.db $6E $FC $DD $66 $FD $6E $DD $7E $F8 $C6 $02 $DD $77 $F5 $26 $00
	.db $7D $DD $B6 $F6 $6F $7C $DD $B6 $F7 $67 $DD $7E $F9 $B7 $28 $3C
	.db $DD $71 $06 $DD $70 $07 $4D $44 $DD $6E $F5 $7D $B7 $CA $20 $20
	.db $E5 $69 $60 $DF $E1 $DD $35 $F1 $DD $7E $F1 $B7 $20 $15 $7B $C6
	.db $40 $5F $7A $CE $00 $57 $E5 $C5 $6B $62 $CF $C1 $E1 $DD $7E $FA
	.db $DD $77 $F1 $3E $01 $95 $30 $01 $03 $2D $18 $CF $DD $71 $06 $DD
	.db $70 $07 $DD $75 $FE $DD $74 $FF $DD $46 $F5 $78 $B7 $CA $30 $20
	.db $DD $6E $FE $DD $66 $FF $DF $DD $35 $F1 $DD $7E $F1 $B7 $20 $0D
	.db $21 $40 $00 $19 $5D $54 $CF $DD $7E $FA $DD $77 $F1 $05 $18 $DB
	.db $DD $7E $F9 $B7 $28 $29 $DD $CB $F2 $56 $28 $10 $DD $7E $FE $DD
	.db $77 $F3 $DD $7E $FF $DD $77 $F4 $DD $36 $F0 $01 $DD $4E $F2 $CB
	.db $39 $CB $39 $CB $39 $DD $71 $FF $DD $36 $FE $00 $C3 $CF $1E $DD
	.db $6E $F8 $7D $B7 $28 $6D $DD $7E $FF $DD $77 $F6 $DD $36 $F7 $00
	.db $DD $4E $FC $DD $46 $FD $DD $75 $F5 $DD $7E $F5 $B7 $28 $34 $0A
	.db $D3 $BE $03 $00 $00 $00 $DD $7E $F6 $D3 $BE $DD $35 $F1 $DD $7E
	.db $F1 $B7 $20 $10 $21 $40 $00 $19 $EB $C5 $6B $62 $CF $C1 $DD $7E
	.db $FA $DD $77 $F1 $DD $35 $F5 $18 $D0 $DD $71 $FE $DD $70 $FF $18
	.db $08 $18 $06 $DD $71 $06 $DD $70 $07 $DD $CB $F0 $46 $CA $CF $1E
	.db $DD $7E $F3 $DD $77 $FE $DD $7E $F4 $DD $77 $FF $DD $36 $F0 $00
	.db $C3 $CF $1E $DD $F9 $DD $E1 $C9
	
_LABEL_204F_:	
		jp (hl)
	
_LABEL_2050_:	
		ld iy, $0004
		add iy, sp
		ld l, (iy+0)
		ld h, (iy+1)
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		set 6, h
		rst $08	; _LABEL_8_
		pop bc
		pop ix
		push ix
		push bc
		ld c, (ix+0)
		inc ix
		ld b, (ix+0)
		inc ix
_LABEL_2074_:	
		push bc
		ld b, $04
		ld de, _RAM_C12C_
		ld c, (ix+0)
		inc ix
_LABEL_207F_:	
		rlc c
		jr nc, _LABEL_20C6_
		rlc c
		jr c, ++
		ld a, (ix+0)
		inc ix
		ex de, hl
		ld d, a
		and $03
		add a, a
		add a, a
		add a, a
		ld e, a
		ld a, d
		ld d, $00
		ld iy, _RAM_C12C_
		add iy, de
		ex de, hl
		cp $03
		jr c, _LABEL_20E0_
		cp $10
		jr c, +
		cp $13
		jr c, ++++
		cp $20
		jr c, +
		cp $23
		jr c, +++++
		cp $40
		jr c, +
		cp $43
		jr c, ++++++
+:	
		ld h, a
		ld l, (ix+0)
		inc ix
		jr +++
	
++:	
		ld h, $00
		jr +++
	
_LABEL_20C6_:	
		rlc c
		sbc a, a
		ld l, a
		ld h, $FF
+++:	
		push bc
		ld b, $08
-:	
		ld a, l
		rlc h
		jr c, +
		ld a, (ix+0)
		inc ix
+:	
		ld (de), a
		inc de
		djnz -
		pop bc
		jr ++++++++
	
_LABEL_20E0_:	
		ld hl, $FF00
		jr +++++++
	
++++:	
		ld hl, $FFFF
		jr +++++++
	
+++++:	
		ld h, (ix+0)
		ld l, $00
		inc ix
		jr +++++++
	
++++++:	
		ld h, (ix+0)
		ld l, $FF
		inc ix
+++++++:	
		push bc
		ld b, $08
-:	
		ld a, (iy+0)
		inc iy
		xor l
		rlc h
		jr c, +
		ld a, (ix+0)
		inc ix
+:	
		ld (de), a
		inc de
		djnz -
		pop bc
++++++++:	
		dec b
		jp nz, _LABEL_207F_
		ld de, $0008
		ld c, e
		ld hl, _RAM_C12C_
--:	
		ld b, $04
		push hl
-:	
		ld a, (hl)
		out (Port_VDPData), a
		add hl, de
		djnz -
		pop hl
		inc hl
		dec c
		jr nz, --
		pop bc
		dec bc
		ld a, b
		or c
		jp nz, _LABEL_2074_
		ret
	
; Data from 2132 to 2199 (104 bytes)	
_DATA_2132_:	
	.db $00 $00 $00 $00 $D6 $11 $DB $11 $E0 $11 $E5 $11 $EA $11 $EF $11
	.db $F4 $11 $F9 $11 $FE $11 $03 $12 $08 $12 $0D $12 $89 $80 $32 $81
	.db $70 $80 $9F $80 $18 $81 $8D $80 $87 $80 $67 $80 $67 $80 $9F $80
	.db $C7 $80 $7A $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80
	.db $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $00 $80 $00 $80
	.db $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80
	.db $00 $80 $00 $80 $04 $20 $08 $08
	
_LABEL_219A_:	
		ld bc, $0068
		ld a, b
		or c
		jr z, +
		ld de, _RAM_C14C_
		ld hl, _DATA_2132_
		ldir
+:	
		ret
	
	; Data from 21AA to 7FEF (24134 bytes)
	.dsb 24034, $00
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00 $56 $61 $6E $20
	.db $48 $61 $6C $65 $6E $00 $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C
	.db $61 $6E $64 $00 $53 $44 $53 $43 $01 $00 $27 $03 $21 $20 $D2 $7F
	.db $C8 $7F $8C $7F
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 7FF0 to 7FFF (16 bytes)
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $82 $14 $99 $99 $00 $4C
	
.BANK 2	
.ORG $0000	
	
	; Data from 8000 to BFFF (16384 bytes)
	.incbin "data/File01_08000_0BFFF.dat"
	
.BANK 3	
.ORG $0000	
	
	; Data from C000 to FFFF (16384 bytes)
	.incbin "data/File02_0C000_0FFFF.dat"
	
.BANK 4	
.ORG $0000	
	
	; Data from 10000 to 13FFF (16384 bytes)
	.incbin "data/File03_10000_13FFF.dat"
	
.BANK 5	
.ORG $0000	
	
	; Data from 14000 to 17FFF (16384 bytes)
	.incbin "data/File04_14000_17FFF.dat"
	
.BANK 6	
.ORG $0000	
	
	; Data from 18000 to 1BFFF (16384 bytes)
	.incbin "data/File05_18000_1BFFF.dat"
	
.BANK 7	
.ORG $0000	
	
	; Data from 1C000 to 1FFFF (16384 bytes)
	.incbin "data/File06_1C000_1FFFF.dat"
	
.BANK 8	
.ORG $0000	
	
	; Data from 20000 to 23FFF (16384 bytes)
	.incbin "data/File07_20000_23FFF.dat"
	
.BANK 9	
.ORG $0000	
	
	; Data from 24000 to 27FFF (16384 bytes)
	.incbin "data/File08_24000_27FFF.dat"
	
.BANK 10	
.ORG $0000	
	
	; Data from 28000 to 2BFFF (16384 bytes)
	.incbin "data/File09_28000_2BFFF.dat"
	
.BANK 11	
.ORG $0000	
	
	; Data from 2C000 to 2FFFF (16384 bytes)
	.incbin "data/File10_2C000_2FFFF.dat"
	
.BANK 12	
.ORG $0000	
	
	; Data from 30000 to 33FFF (16384 bytes)
	.incbin "data/File11_30000_33FFF.dat"
	
.BANK 13	
.ORG $0000	
	
	; Data from 34000 to 37FFF (16384 bytes)
	.incbin "data/File12_34000_37FFF.dat"
	
.BANK 14	
.ORG $0000	
	
	; Data from 38000 to 3BFFF (16384 bytes)
	.incbin "data/File13_38000_3BFFF.dat"
	
.BANK 15	
.ORG $0000	
	
	; Data from 3C000 to 3FFFF (16384 bytes)
	.incbin "data/File14_3C000_3FFFF.dat"
	
