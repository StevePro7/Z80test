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
	
.enum $C010 export	
_RAM_C010_ db	
_RAM_C011_ db	
.ende	
	
.enum $C013 export	
_RAM_C013_ db	
.ende	
	
.enum $C100 export	
_RAM_C100_ db	
_RAM_C101_ db	
_RAM_C102_ dw	
_RAM_C104_ db	
.ende	
	
.enum $C122 export	
_RAM_C122_ dw	
_RAM_C124_ db	
.ende	
	
.enum $C142 export	
_RAM_C142_ db	
.ende	
	
.enum $C144 export	
_RAM_C144_ db	
.ende	
	
.enum $C164 export	
_RAM_C164_ db	
.ende	
	
.enum $C182 export	
_RAM_C182_ dsb $9	
.ende	
	
.enum $C1A2 export	
_RAM_C1A2_ dsb $9	
.ende	
	
.enum $C1B9 export	
_RAM_C1B9_ db	
.ende	
	
.enum $C300 export	
_RAM_C300_ db	
.ende	
	
.enum $C310 export	
_RAM_C310_ dsb $30	
_RAM_C340_ dsb $10	
_RAM_C350_ dsb $30	
_RAM_C380_ dsb $10	
_RAM_C390_ db	
.ende	
	
.enum $F3DB export	
_RAM_F3DB_ db	
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
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		di
		im 1
		jp _LABEL_11D6_
	
	; Data from 6 to 7 (2 bytes)
	.db $FF $FF
	
_LABEL_8_:	
		ld ($8B18), hl
		ex (sp), hl
		push de
		jp _LABEL_C1_
	
_LABEL_10_:	
		pop hl
		pop bc
		pop de
		ex (sp), hl
		ret
	
	; Data from 15 to 17 (3 bytes)
	.db $20 $08 $0E
	
_LABEL_18_:	
		ld a, ($8AC9)
		bit 0, a
		ret
	
	; Data from 1E to 1F (2 bytes)
	.db $FF $FF
	
_LABEL_20_:	
		call _LABEL_3C60_
		ret
	
	; Data from 24 to 27 (4 bytes)
	.db $3D $08 $0E $09
	
_LABEL_28_:	
		call _LABEL_412A_
		ret
	
	; Data from 2C to 2F (4 bytes)
	.db $4E $20 $4F $40
	
_LABEL_30_:	
		ld (_RAM_C100_), a
		ret
	
	; Data from 34 to 37 (4 bytes)
	.db $4D $41 $50 $40
	
_LABEL_38_:	
		di
		push af
		push bc
		push de
		push hl
		push ix
		push iy
		ex af, af'
		exx
		push af
		push bc
		push de
		call _LABEL_277_
		in a, (Port_VDPStatus)
		call _LABEL_95B_
		pop de
		pop bc
		pop af
		exx
		ex af, af'
		pop iy
		pop ix
		pop hl
		pop de
		pop bc
		pop af
		ei
		ret
	
; Data from 5D to 65 (9 bytes)	
_DATA_5D_:	
	.db $3A $39 $38 $39 $38 $37 $36 $35 $34
	
_LABEL_66_:	
		push af
		ld a, ($8B22)
		cp $FF
		jr nz, +
		ld a, ($8B17)
		cp $20
		jr c, +
		ld a, ($8B23)
		cpl
		ld ($8B23), a
		xor a
		ld ($8B17), a
+:	
		pop af
		retn
	
_LABEL_83_:	
		ld a, ($8B1A)
		or a
		jr z, +
		ld ($8343), a
		xor a
		ld ($8344), a
+:	
		ret
	
	; Data from 91 to C0 (48 bytes)
	.db $00 $00 $FF $91 $00 $03 $01 $03 $01 $03 $00 $03 $01 $03 $01 $03
	.db $00 $03 $00 $03 $01 $03 $01 $03 $00 $03 $00 $03 $01 $03 $01 $03
	.db $00 $03 $00 $03 $01 $03 $01 $03 $01 $03 $00 $03 $00 $03 $00 $FE
	
_LABEL_C1_:	
		push bc
		push hl
		ld hl, ($8B18)
		ret
	
	; Data from C7 to D8 (18 bytes)
	.db $3A $0B $8B $E6 $BF $18 $05 $3A $0B $8B $F6 $40 $32 $0B $8B $47
	.db $0E $01
	
_LABEL_D9_:	
		ld a, b
		out (Port_VDPAddress), a
		ld a, c
		or $80
		out (Port_VDPAddress), a
		ret
	
_LABEL_E2_:	
		ld hl, _DATA_11D_
		ld bc,  $1000 | Port_VDPAddress
		otir
		ld a, (_DATA_11D_)
		ld ($8B0A), a
		ld a, (_DATA_11D_ + 2)
		ld ($8B0B), a
		ld hl, $1800
		call _LABEL_176_
		xor a
		ld b, $03
-:	
		out (Port_VDPData), a
		inc a
		jr nz, -
		djnz -
		ld bc, $1800
		push bc
		ld hl, $2000
		ld a, $11
		call _LABEL_18E_
		ld hl, $0000
		pop bc
		xor a
		call _LABEL_18E_
		jp +
	
; Data from 11D to 12C (16 bytes)	
_DATA_11D_:	
	.db $02 $80 $A2 $81 $06 $82 $FF $83 $03 $84 $36 $85 $07 $86 $00 $87
	
_LABEL_12D_:	
		ld hl, $3800
		ld bc, $0800
		xor a
		call _LABEL_18E_
+:	
		ld hl, $1B00
		ld bc, $2000
-:	
		ld a, $D1
		call _LABEL_164_
		inc hl
		inc hl
		ld a, c
		call _LABEL_164_
		inc hl
		inc c
		inc c
		inc c
		inc c
		ld a, $01
		call _LABEL_164_
		inc hl
		djnz -
		ret
	
_LABEL_156_:	
		ex de, hl
		call _LABEL_176_
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
_LABEL_164_:	
		push af
		call _LABEL_176_
		ex (sp), hl
		ex (sp), hl
		pop af
		out (Port_VDPData), a
		ret
	
_LABEL_16E_:	
		call +
		ex (sp), hl
		ex (sp), hl
		in a, (Port_VDPData)
		ret
	
_LABEL_176_:	
		ld a, l
		di
		out (Port_VDPAddress), a
		ld a, h
		and $3F
		or $40
		out (Port_VDPAddress), a
		ei
		ret
	
+:	
		ld a, l
		di
		out (Port_VDPAddress), a
		ld a, h
		and $3F
		out (Port_VDPAddress), a
		ei
		ret
	
_LABEL_18E_:	
		push af
		call _LABEL_176_
-:	
		pop af
		out (Port_VDPData), a
		push af
		dec bc
		ld a, c
		or b
		jr nz, -
		pop af
		ret
	
_LABEL_19D_:	
		ld a, ($8B0D)
		ld hl, _DATA_1AB_
		and $0F
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ret
	
; Data from 1AB to 1BA (16 bytes)	
_DATA_1AB_:	
	.db $00 $01 $05 $00 $07 $08 $06 $00 $03 $02 $04 $00 $00 $00 $00 $00
	
_LABEL_1BB_:	
		push hl
		ld hl, $8B0D
		bit 5, (hl)
		pop hl
		ld a, $FF
		ret nz
		xor a
		ret
	
	; Data from 1C7 to 1ED (39 bytes)
	.db $C5 $51 $79 $E6 $07 $4F $21 $E6 $01 $09 $7E $F5 $7B $0F $0F $0F
	.db $E6 $1F $67 $7A $E6 $F8 $4F $7B $E6 $07 $B1 $6F $F1 $C1 $C9 $80
	.db $40 $20 $10 $08 $04 $02 $01
	
_LABEL_1EE_:	
		ld b, $02
--:	
		ld de, $FFFF
-:	
		dec de
		ld a, d
		or e
		jr nz, -
		djnz --
		ret
	
_LABEL_1FB_:	
		ld a, $92
		out (_PORT_DF_), a
		xor a
		out (_PORT_DE_), a
		in a, (_PORT_DE_)
		or a
		jr z, +
		ld a, $80
+:	
		ld ($8B0C), a
		ret
	
_LABEL_20D_:	
		ld a, ($8B0C)
		rlca
		jr nc, +
		in a, (Port_IOPort1)
		jp _LABEL_26C_
	
+:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		ld c, a
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
		res 4, c
+:	
		ld a, $01
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr z, +
		ld a, $03
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		bit 4, a
		jr nz, ++
+:	
		res 5, c
++:	
		ld a, c
_LABEL_26C_:	
		ld hl, $8B0D
		cpl
		ld b, a
		xor (hl)
		ld (hl), b
		inc hl
		and b
		ld (hl), a
		ret
	
_LABEL_277_:	
		ld a, ($8B17)
		cp $20
		jr nc, +
		inc a
		ld ($8B17), a
+:	
		ld a, ($8B23)
		cp $FF
		ret z
		call _LABEL_83_
		call _LABEL_20D_
		call _LABEL_23EA_
		ld a, ($8B15)
		cp $02
		jr z, +++
		ld a, ($8AE4)
		or a
		jr nz, _LABEL_2B5_
		ld a, ($8B0E)
		and $10
		cp $10
		jr nz, _LABEL_2B5_
		ld a, ($8B14)
		or a
		jr nz, +
		ld a, $01
		jr ++
	
+:	
		xor a
++:	
		ld ($8B14), a
_LABEL_2B5_:	
		ld hl, $8B13
		xor a
		or (hl)
		ret z
		dec (hl)
		ret
	
+++:	
		ld a, ($8B0D)
		and $30
		cp $30
		jr z, _LABEL_306_
		ld a, ($8B0E)
		or a
		jr z, _LABEL_2CF_
		call +
_LABEL_2CF_:	
		jr _LABEL_2B5_
	
+:	
		push hl
		push bc
		push af
		ld hl, _DATA_313_
		ld a, ($8B1F)
		cp $0E
		jr z, +
		ld c, a
		xor a
		ld b, a
		add hl, bc
		ld a, (hl)
		ld hl, $8B1F
		inc (hl)
		pop bc
		cp b
		jr z, _LABEL_2F0_
-:	
		ld hl, $8B1F
		ld (hl), $00
_LABEL_2F0_:	
		pop bc
		pop hl
		ret
	
+:	
		pop af
		and $30
		jr z, -
		xor a
		ld ($8B15), a
		inc a
		ld ($8B21), a
		inc a
		ld ($8B20), a
		jr _LABEL_2F0_
	
_LABEL_306_:	
		xor a
		ld ($8B15), a
		inc a
		ld ($8B21), a
		ld ($8B20), a
		jr _LABEL_2CF_
	
; Data from 313 to 336 (36 bytes)	
_DATA_313_:	
	.db $04 $08 $04 $08 $04 $08 $02 $04 $01 $08 $01 $04 $02 $08 $20 $43
	.db $4F $4E $54 $49 $4E $55 $45 $20 $40 $44 $4F $4F $52 $20 $20 $4F
	.db $50 $45 $4E $40
	
; 1st entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 337 to 33A (4 bytes)	
_DATA_337_:	
	.db $04 $80 $20 $06
	
	; Pointer Table from 33B to 33C (1 entries, indexed by unknown)
	.dw _DATA_35C_
	
	; Data from 33D to 343 (7 bytes)
	.db $FC $02 $0A $0E $80 $21 $06
	
	; Pointer Table from 344 to 345 (1 entries, indexed by unknown)
	.dw _DATA_3E8_
	
	; Data from 346 to 35B (22 bytes)
	.db $FC $02 $03 $0B $80 $22 $01 $A9 $03 $FC $00 $03 $0A $80 $23 $06
	.db $25 $04 $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 33B (indexed by unknown)	
; Data from 35C to 3E7 (140 bytes)	
_DATA_35C_:	
	.db $80 $04 $EA $81 $03 $A2 $80 $EA $81 $03 $9B $04 $EA $98 $03 $A0
	.db $A0 $ED $A0 $02 $9F $A2 $80 $EA $98 $03 $9F $9D $ED $9B $02 $9F
	.db $9B $04 $E5 $5E $03 $ED $9B $02 $9F $A2 $9F $ED $A0 $02 $9D $A2
	.db $A2 $ED $9B $02 $9F $A2 $9F $ED $A0 $02 $9D $EB $ED $A7 $02 $A6
	.db $A4 $A2 $ED $A4 $02 $A2 $A2 $A2 $ED $A2 $02 $A0 $EB $80 $1A $EA
	.db $D1 $03 $9F $9D $EA $D1 $03 $9F $04 $9F $02 $9D $9B $9A $9B $02
	.db $9A $9A $9A $9A $02 $98 $98 $98 $98 $02 $96 $9A $80 $80 $08 $08
	.db $08 $08 $E5 $AB $03 $9B $02 $9F $A2 $04 $80 $02 $9D $01 $A0 $A2
	.db $A0 $9F $9D $9B $02 $9F $A2 $04 $80 $02 $A0 $EB
	
; 1st entry of Pointer Table from 344 (indexed by unknown)	
; Data from 3E8 to 3F4 (13 bytes)	
_DATA_3E8_:	
	.db $80 $04 $EA $16 $04 $9A $02 $98 $96 $80 $EA $16 $04
	
; 2nd entry of Pointer Table from 50F (indexed by unknown)	
; Data from 3F5 to 3F6 (2 bytes)	
_DATA_3F5_:	
	.db $80 $02
	
; 2nd entry of Pointer Table from 44B (indexed by unknown)	
; Data from 3F7 to 446 (80 bytes)	
_DATA_3F7_:	
	.db $96 $8F $04 $80 $08 $08 $08 $08 $9B $02 $9A $98 $96 $98 $02 $96
	.db $96 $96 $96 $02 $94 $93 $91 $8F $02 $93 $8F $04 $E5 $EA $03 $80
	.db $06 $96 $02 $9A $02 $98 $04 $96 $02 $80 $06 $96 $02 $EB $E3 $04
	.db $80 $04 $EA $2F $04 $E5 $29 $04 $E1 $0B $E4 $02 $8D $04 $E1 $0D
	.db $E4 $05 $04 $E1 $0B $E4 $02 $8D $02 $02 $E1 $0D $E4 $05 $04 $EB
	
; 2nd entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 447 to 44A (4 bytes)	
_DATA_447_:	
	.db $04 $80 $20 $06
	
	; Pointer Table from 44B to 44E (2 entries, indexed by unknown)
	.dw _DATA_46C_ _DATA_3F7_
	
	; Data from 44F to 453 (5 bytes)
	.db $08 $0E $80 $21 $06
	
	; Pointer Table from 454 to 455 (1 entries, indexed by unknown)
	.dw _DATA_4B6_
	
	; Data from 456 to 46B (22 bytes)
	.db $F7 $02 $06 $0A $80 $22 $06 $93 $04 $F7 $03 $08 $0D $80 $23 $06
	.db $25 $04 $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 44B (indexed by unknown)	
; Data from 46C to 4B5 (74 bytes)	
_DATA_46C_:	
	.db $80 $04 $EA $7D $04 $A2 $A2 $A2 $EA $7D $04 $AB $A7 $04 $E5 $6E
	.db $04 $ED $A7 $04 $AB $02 $A7 $ED $A9 $02 $AE $AE $AE $ED $A7 $04
	.db $AB $02 $A7 $ED $A9 $02 $EB $80 $04 $EA $A4 $04 $9D $9A $96 $EA
	.db $A4 $04 $A2 $9F $04 $E5 $95 $04 $9F $02 $A2 $A7 $A2 $A0 $02 $A2
	.db $A6 $A2 $9F $02 $A2 $A7 $A2 $A0 $02 $EB
	
; 1st entry of Pointer Table from 454 (indexed by unknown)	
; Data from 4B6 to 4CB (22 bytes)	
_DATA_4B6_:	
	.db $80 $04 $8F $08 $8E $08 $8F $08 $8E $08 $8F $08 $8E $08 $8F $08
	.db $8E $04 $8F $E5 $B8 $04
	
; 3rd entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 4CC to 4CF (4 bytes)	
_DATA_4CC_:	
	.db $02 $80 $20 $07
	
	; Pointer Table from 4D0 to 4D1 (1 entries, indexed by unknown)
	.dw _DATA_4DF_
	
	; Data from 4D2 to 4D8 (7 bytes)
	.db $FA $00 $06 $0E $80 $21 $07
	
	; Pointer Table from 4D9 to 4DA (1 entries, indexed by unknown)
	.dw _DATA_4F5_
	
	; Data from 4DB to 4DE (4 bytes)
	.db $FA $00 $06 $0E
	
; 1st entry of Pointer Table from 4D0 (indexed by unknown)	
; Data from 4DF to 4F4 (22 bytes)	
_DATA_4DF_:	
	.db $9B $03 $9B $01 $9D $03 $9D $01 $9F $03 $9F $01 $A0 $03 $A0 $01
	.db $9F $04 $96 $9B $80 $E2
	
; 1st entry of Pointer Table from 4D9 (indexed by unknown)	
; Data from 4F5 to 50A (22 bytes)	
_DATA_4F5_:	
	.db $93 $03 $93 $01 $96 $03 $96 $01 $9B $03 $9B $01 $9D $03 $9D $01
	.db $9B $04 $93 $93 $80 $E2
	
; 4th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 50B to 50E (4 bytes)	
_DATA_50B_:	
	.db $04 $80 $20 $06
	
	; Pointer Table from 50F to 512 (2 entries, indexed by unknown)
	.dw _DATA_530_ _DATA_3F5_
	
	; Data from 513 to 517 (5 bytes)
	.db $0A $0D $80 $21 $06
	
	; Pointer Table from 518 to 519 (1 entries, indexed by unknown)
	.dw _DATA_56E_
	
	; Data from 51A to 52F (22 bytes)
	.db $F5 $02 $03 $0C $80 $22 $06 $8F $05 $F5 $02 $05 $0C $80 $23 $06
	.db $AD $05 $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 50F (indexed by unknown)	
; Data from 530 to 56D (62 bytes)	
_DATA_530_:	
	.db $80 $02 $ED $A4 $01 $80 $9F $9F $A1 $02 $9F $ED $A4 $02 $9F $A1
	.db $9F $ED $A6 $01 $80 $9F $9F $A1 $02 $9F $ED $A6 $02 $9F $A1 $9F
	.db $ED $A8 $01 $80 $9F $9F $A1 $02 $9F $ED $A8 $02 $9F $A1 $9F $E4
	.db $0B $ED $A9 $04 $AB $ED $AD $04 $AF $E4 $0A $E5 $32 $05
	
; 1st entry of Pointer Table from 518 (indexed by unknown)	
; Data from 56E to 5B3 (70 bytes)	
_DATA_56E_:	
	.db $80 $02 $9F $01 $80 $9C $9C $9D $02 $9C $9F $02 $9C $9D $9C $EC
	.db $00 $03 $70 $05 $E4 $0B $A1 $04 $A3 $A4 $04 $A6 $E4 $03 $E5 $70
	.db $05 $80 $02 $98 $06 $02 $98 $06 $02 $97 $06 $97 $02 $06 $97 $02
	.db $98 $06 $02 $98 $06 $02 $9A $04 $9C $9D $04 $9F $E5 $91 $05 $E3
	.db $04 $80 $02 $E5 $29 $04
	
; 5th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 5B4 to 5B7 (4 bytes)	
_DATA_5B4_:	
	.db $03 $A0 $20 $04
	
	; Pointer Table from 5B8 to 5B9 (1 entries, indexed by unknown)
	.dw _DATA_5D0_
	
	; Data from 5BA to 5C0 (7 bytes)
	.db $03 $01 $01 $0E $A0 $21 $04
	
	; Pointer Table from 5C1 to 5C2 (1 entries, indexed by unknown)
	.dw _DATA_5DA_
	
	; Data from 5C3 to 5CF (13 bytes)
	.db $03 $01 $01 $0E $A0 $22 $04 $E4 $05 $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 5B8 (indexed by unknown)	
; Data from 5D0 to 5D9 (10 bytes)	
_DATA_5D0_:	
	.db $A5 $AA $04 $99 $94 $02 $8D $88 $03 $E2
	
; 1st entry of Pointer Table from 5C1 (indexed by unknown)	
; Data from 5DA to 5ED (20 bytes)	
_DATA_5DA_:	
	.db $A7 $AC $04 $99 $A0 $02 $8D $A0 $03 $E2 $A4 $9E $04 $99 $9E $02
	.db $81 $88 $03 $E2
	
; 6th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 5EE to 5EF (2 bytes)	
_DATA_5EE_:	
	.db $01 $88
	
; 1st entry of Pointer Table from 630 (indexed by unknown)	
; Data from 5F0 to 5F1 (2 bytes)	
_DATA_5F0_:	
	.db $21 $01
	
	; Pointer Table from 5F2 to 5F3 (1 entries, indexed by unknown)
	.dw _DATA_5F8_
	
	; Data from 5F4 to 5F7 (4 bytes)
	.db $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 5F2 (indexed by unknown)	
; Data from 5F8 to 622 (43 bytes)	
_DATA_5F8_:	
	.db $00 $E0 $02 $01 $20 $02 $00 $80 $01 $01 $F0 $02 $00 $00 $02 $02
	.db $50 $02 $00 $D0 $02 $01 $F0 $01 $00 $00 $04 $00 $C0 $02 $02 $D0
	.db $03 $03 $50 $01 $00 $80 $01 $00 $40 $01 $EF
	
; 7th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 623 to 626 (4 bytes)	
_DATA_623_:	
	.db $01 $A8 $21 $01
	
	; Pointer Table from 627 to 628 (1 entries, indexed by unknown)
	.dw _DATA_62D_
	
	; Data from 629 to 62C (4 bytes)
	.db $03 $01 $01 $0D
	
; 1st entry of Pointer Table from 627 (indexed by unknown)	
; Data from 62D to 62F (3 bytes)	
_DATA_62D_:	
	.db $01 $82 $00
	
	; Pointer Table from 630 to 631 (1 entries, indexed by unknown)
	.dw _DATA_5F0_
	
	; Data from 632 to 646 (21 bytes)
	.db $00 $00 $00 $00 $03 $02 $00 $03 $00 $04 $00 $F0 $00 $80 $02 $02
	.db $00 $03 $00 $03 $EF
	
; 8th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 647 to 64A (4 bytes)	
_DATA_647_:	
	.db $01 $80 $22 $01
	
	; Pointer Table from 64B to 64C (1 entries, indexed by unknown)
	.dw _DATA_651_
	
	; Data from 64D to 650 (4 bytes)
	.db $00 $01 $01 $0D
	
; 1st entry of Pointer Table from 64B (indexed by unknown)	
; Data from 651 to 653 (3 bytes)	
_DATA_651_:	
	.db $99 $02 $A0
	
	; Pointer Table from 654 to 655 (1 entries, indexed by unknown)
	.dw $A099
	
	; Data from 656 to 669 (20 bytes)
	.db $EE $01 $EC $00 $0A $51 $06 $99 $03 $A0 $99 $A0 $EE $FF $EC $00
	.db $0D $5D $06 $E2
	
; 9th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 66A to 66D (4 bytes)	
_DATA_66A_:	
	.db $03 $80 $20 $03
	
	; Pointer Table from 66E to 66F (1 entries, indexed by unknown)
	.dw _DATA_686_
	
	; Data from 670 to 676 (7 bytes)
	.db $00 $01 $04 $07 $80 $21 $03
	
	; Pointer Table from 677 to 678 (1 entries, indexed by unknown)
	.dw _DATA_686_
	
	; Data from 679 to 685 (13 bytes)
	.db $03 $01 $04 $07 $80 $22 $03 $86 $06 $07 $01 $04 $07
	
; 1st entry of Pointer Table from 66E (indexed by unknown)	
; Data from 686 to 695 (16 bytes)	
_DATA_686_:	
	.db $8D $01 $91 $94 $F0 $01 $EE $01 $EC $00 $0A $86 $06 $94 $14 $E2
	
; 11th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 696 to 699 (4 bytes)	
_DATA_696_:	
	.db $04 $80 $20 $05
	
	; Pointer Table from 69A to 69B (1 entries, indexed by unknown)
	.dw _DATA_6D7_
	
	; Data from 69C to 6A2 (7 bytes)
	.db $00 $01 $07 $0D $80 $21 $05
	
	; Pointer Table from 6A3 to 6A4 (1 entries, indexed by unknown)
	.dw _DATA_70A_
	
	; Data from 6A5 to 6D6 (50 bytes)
	.db $00 $01 $04 $0C $80 $22 $01 $D3 $06 $00 $00 $04 $0C $80 $23 $05
	.db $BB $06 $00 $01 $04 $0D $E3 $04 $EA $2F $04 $EC $00 $07 $BD $06
	.db $E1 $0B $E4 $02 $02 $02 $E1 $0D $E4 $05 $02 $02 $04 $E2 $80 $01
	.db $E0 $05
	
; 1st entry of Pointer Table from 69A (indexed by unknown)	
; Data from 6D7 to 709 (51 bytes)	
_DATA_6D7_:	
	.db $EA $FF $06 $9E $08 $98 $04 $04 $9B $98 $9D $02 $9B $99 $9B $9D
	.db $08 $EA $FF $06 $9E $80 $A2 $80 $04 $9E $A2 $02 $A4 $04 $A0 $80
	.db $02 $9D $04 $9B $02 $99 $04 $E2 $99 $04 $99 $9D $99 $9E $02 $9D
	.db $9B $9D $EB
	
; 1st entry of Pointer Table from 6A3 (indexed by unknown)	
; Data from 70A to 73F (54 bytes)	
_DATA_70A_:	
	.db $91 $08 $8D $04 $91 $94 $06 $96 $02 $94 $04 $80 $92 $91 $94 $80
	.db $99 $02 $A0 $9B $A0 $99 $04 $80 $91 $08 $8D $04 $91 $94 $06 $8F
	.db $02 $94 $02 $80 $98 $80 $04 $98 $99 $02 $9B $04 $99 $80 $02 $94
	.db $04 $92 $02 $91 $04 $E2
	
; 12th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 740 to 743 (4 bytes)	
_DATA_740_:	
	.db $03 $80 $20 $04
	
	; Pointer Table from 744 to 745 (1 entries, indexed by unknown)
	.dw _DATA_75C_
	
	; Data from 746 to 74C (7 bytes)
	.db $01 $01 $04 $0D $80 $21 $04
	
	; Pointer Table from 74D to 74E (1 entries, indexed by unknown)
	.dw _DATA_773_
	
	; Data from 74F to 75B (13 bytes)
	.db $01 $01 $04 $0D $80 $22 $04 $8A $07 $01 $01 $04 $0D
	
; 1st entry of Pointer Table from 744 (indexed by unknown)	
; Data from 75C to 772 (23 bytes)	
_DATA_75C_:	
	.db $8D $02 $9D $99 $9E $9B $9E $A0 $9D $A0 $A2 $9E $A2 $A4 $A0 $A4
	.db $A5 $0E $02 $02 $02 $02 $E2
	
; 1st entry of Pointer Table from 74D (indexed by unknown)	
; Data from 773 to 7A0 (46 bytes)	
_DATA_773_:	
	.db $9D $02 $A0 $9D $A2 $9E $A2 $A4 $A0 $A4 $A5 $A2 $A5 $A7 $A4 $A7
	.db $9D $0E $02 $02 $02 $02 $E2 $81 $02 $8D $81 $83 $8F $83 $85 $91
	.db $85 $86 $92 $86 $88 $94 $88 $81 $0E $02 $88 $81 $81 $E2
	
; 13th entry of Pointer Table from 9AE (indexed by _RAM_C100_)	
; Data from 7A1 to 7A4 (4 bytes)	
_DATA_7A1_:	
	.db $04 $80 $20 $05
	
	; Pointer Table from 7A5 to 7A6 (1 entries, indexed by unknown)
	.dw _DATA_7C6_
	
	; Data from 7A7 to 7AD (7 bytes)
	.db $0D $03 $0C $0F $80 $21 $05
	
	; Pointer Table from 7AE to 7AF (1 entries, indexed by unknown)
	.dw _DATA_810_
	
	; Data from 7B0 to 7C5 (22 bytes)
	.db $01 $01 $0C $0C $80 $22 $05 $78 $08 $01 $01 $0C $0C $80 $23 $05
	.db $C7 $08 $00 $01 $04 $0D
	
; 1st entry of Pointer Table from 7A5 (indexed by unknown)	
; Data from 7C6 to 80F (74 bytes)	
_DATA_7C6_:	
	.db $80 $04 $9D $9D $02 $99 $06 $A0 $04 $9E $9D $02 $A0 $06 $98 $08
	.db $9B $94 $0C $80 $08 $92 $06 $96 $99 $08 $9E $04 $9D $9B $0C $98
	.db $04 $94 $10 $80 $04 $9D $A0 $02 $9E $06 $9D $04 $9B $04 $9D $02
	.db $A0 $06 $98 $08 $9B $94 $10 $80 $04 $92 $02 $96 $04 $99 $96 $02
	.db $9E $04 $9D $9B $02 $9D $06 $99 $20 $E2
	
; 1st entry of Pointer Table from 7AE (indexed by unknown)	
; Data from 810 to 8F5 (230 bytes)	
_DATA_810_:	
	.db $80 $04 $8D $02 $91 $04 $94 $91 $02 $99 $10 $80 $04 $94 $06 $98
	.db $04 $99 $02 $9D $0A $99 $02 $98 $96 $80 $0A $92 $04 $91 $02 $92
	.db $04 $94 $02 $96 $04 $94 $02 $92 $04 $80 $04 $94 $06 $98 $04 $99
	.db $02 $9B $10 $80 $06 $8D $02 $91 $94 $06 $99 $0A $98 $04 $94 $02
	.db $80 $04 $94 $96 $02 $98 $04 $99 $02 $9B $04 $99 $02 $98 $04 $99
	.db $02 $98 $96 $80 $04 $92 $02 $96 $98 $99 $9B $99 $80 $04 $94 $02
	.db $98 $99 $9B $99 $98 $94 $20 $E2 $81 $02 $8D $EC $00 $08 $78 $08
	.db $88 $94 $EC $00 $06 $80 $08 $88 $99 $88 $98 $86 $92 $EC $00 $06
	.db $8B $08 $86 $91 $86 $92 $88 $94 $EC $00 $06 $96 $08 $88 $96 $88
	.db $98 $81 $8D $EC $00 $07 $A1 $08 $81 $98 $88 $94 $EC $00 $06 $AA
	.db $08 $88 $99 $88 $98 $86 $92 $EC $00 $04 $B5 $08 $88 $94 $88 $94
	.db $88 $96 $88 $98 $81 $20 $E2 $E3 $04 $EA $2F $04 $EC $00 $07 $C9
	.db $08 $EA $E8 $08 $EA $2F $04 $EA $2F $04 $EA $2F $04 $EA $E8 $08
	.db $EA $2F $04 $EA $2F $04 $08 $E2 $E1 $0B $E4 $02 $02 $02 $E1 $0D
	.db $E4 $05 $04 $04 $04 $EB
	
; Pointer Table from 8F6 to 90D (12 entries, indexed by _RAM_C109_)	
_DATA_8F6_:	
	.dw _DATA_90E_ _DATA_910_ _DATA_912_ _DATA_915_ _DATA_91C_ _DATA_924_ _DATA_931_ _DATA_929_
	.dw _DATA_937_ _DATA_937_ _DATA_93F_ _DATA_93F_
	
; 1st entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 90E to 90F (2 bytes)	
_DATA_90E_:	
	.db $FF $01
	
; 2nd entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 910 to 911 (2 bytes)	
_DATA_910_:	
	.db $FF $02
	
; 3rd entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 912 to 914 (3 bytes)	
_DATA_912_:	
	.db $FF $FD $02
	
; 4th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 915 to 91B (7 bytes)	
_DATA_915_:	
	.db $FF $EE $DD $CC $BB $AA $01
	
; 5th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 91C to 923 (8 bytes)	
_DATA_91C_:	
	.db $FF $EE $DC $BA $98 $76 $54 $02
	
; 6th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 924 to 928 (5 bytes)	
_DATA_924_:	
	.db $EF $FE $DC $BA $02
	
; 8th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 929 to 930 (8 bytes)	
_DATA_929_:	
	.db $EE $FF $42 $99 $77 $A6 $55 $01
	
; 7th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 931 to 936 (6 bytes)	
_DATA_931_:	
	.db $DF $FF $ED $87 $65 $00
	
; 9th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 937 to 93E (8 bytes)	
_DATA_937_:	
	.db $EE $FF $42 $99 $77 $A6 $55 $01
	
; 11th entry of Pointer Table from 8F6 (indexed by _RAM_C109_)	
; Data from 93F to 945 (7 bytes)	
_DATA_93F_:	
	.db $FF $E8 $DD $CC $BB $AC $01
	
; Pointer Table from 946 to 94B (3 entries, indexed by _RAM_C108_)	
_DATA_946_:	
	.dw _DATA_94C_ _DATA_94E_ _DATA_951_
	
; 1st entry of Pointer Table from 946 (indexed by _RAM_C108_)	
; Data from 94C to 94D (2 bytes)	
_DATA_94C_:	
	.db $FE $00
	
; 2nd entry of Pointer Table from 946 (indexed by _RAM_C108_)	
; Data from 94E to 950 (3 bytes)	
_DATA_94E_:	
	.db $FF $EE $00
	
; 3rd entry of Pointer Table from 946 (indexed by _RAM_C108_)	
; Data from 951 to 95A (10 bytes)	
_DATA_951_:	
	.db $EF $FE $EE $EF $FE $ED $DE $EF $FE $00
	
_LABEL_95B_:	
		ld a, ($8B22)
		cp $FF
		jr nz, +
		ld a, ($8B23)
		cp $FF
		jr nz, +
		call _LABEL_D47_
		ret
	
+:	
		call +
		ld ix, _RAM_C102_
		ld b, $06
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_A39_
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
+:	
		ld a, (_RAM_C100_)
		bit 7, a
		jp z, _LABEL_D38_
		cp $8E
		jp z, _LABEL_9E2_
		jp nc, _LABEL_D38_
		sub $81
		ret m
		ld c, a
		ld b, $00
		ld hl, _DATA_9AE_
		add hl, bc
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld de, $0019
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
; Pointer Table from 9AE to 9C7 (13 entries, indexed by _RAM_C100_)	
_DATA_9AE_:	
	.dw _DATA_337_ _DATA_447_ _DATA_4CC_ _DATA_50B_ _DATA_5B4_ _DATA_5EE_ _DATA_623_ _DATA_647_
	.dw _DATA_66A_ _DATA_66A_ _DATA_696_ _DATA_740_ _DATA_7A1_
	
; Jump Table from 9C8 to 9E1 (13 entries, indexed by _RAM_C100_)	
_DATA_9C8_:	
	.dw _LABEL_9F2_ _LABEL_9F2_ _LABEL_9F2_ _LABEL_9F2_ _LABEL_9F2_ _LABEL_9FB_ _LABEL_9FB_ _LABEL_A05_
	.dw _LABEL_A05_ _LABEL_9F2_ _LABEL_9F2_ _LABEL_9F2_ _LABEL_9F2_
	
_LABEL_9E2_:	
		ld a, $DF
		out (Port_PSG), a
		xor a
		ld (_RAM_C1A2_), a
		ld hl, _RAM_C142_
		res 2, (hl)
		jp _LABEL_A35_
	
; 1st entry of Jump Table from 9C8 (indexed by _RAM_C100_)	
_LABEL_9F2_:	
		call _LABEL_D38_
		ld de, _RAM_C102_
		jp +
	
; 6th entry of Jump Table from 9C8 (indexed by _RAM_C100_)	
_LABEL_9FB_:	
		ld hl, _RAM_C122_
		set 2, (hl)
		ld de, _RAM_C182_
		jr +
	
; 8th entry of Jump Table from 9C8 (indexed by _RAM_C100_)	
_LABEL_A05_:	
		ld hl, _RAM_C1B9_
		ld (hl), $00
		ld hl, _RAM_C142_
		set 2, (hl)
		ld de, _RAM_C1A2_
+:	
		ld h, b
		ld l, c
		ld b, (hl)
		inc hl
-:	
		push bc
		ld bc, $0009
		ldir
		ld a, $20
		ld (de), a
		inc de
		ld a, $01
		ld (de), a
		inc de
		xor a
		ld (de), a
		inc de
		ld (de), a
		inc de
		ld (de), a
		push hl
		ld hl, $0012
		add hl, de
		ex de, hl
		pop hl
		inc de
		pop bc
		djnz -
_LABEL_A35_:	
		ld a, $80
		rst $30	; _LABEL_30_
		ret
	
_LABEL_A39_:	
		ld e, (ix+12)
		ld d, (ix+13)
		inc de
		ld (ix+12), e
		ld (ix+13), d
		ld l, (ix+10)
		ld h, (ix+11)
		or a
		sbc hl, de
		call z, _LABEL_B9F_
		ld e, (ix+16)
		ld d, (ix+17)
		ld a, e
		or d
		jr nz, +
		ld (ix+22), $0F
		jp _LABEL_B11_
	
+:	
		bit 5, (ix+0)
		jr nz, +
		ld a, (ix+6)
		or a
		jr nz, _LABEL_A83_
		ld (ix+18), e
		ld (ix+19), d
		jp _LABEL_ACA_
	
_LABEL_A78_:	
		dec a
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ret
	
_LABEL_A83_:	
		ld hl, _DATA_946_
		call _LABEL_A78_
		call _LABEL_B69_
		jr _LABEL_ACA_
	
+:	
		push de
		ld l, (ix+20)
		ld h, (ix+21)
		or a
		sbc hl, de
		push af
		ld a, l
		jp p, +
		neg
+:	
		ld h, a
		ld e, (ix+12)
		call _LABEL_DE9_
		ld e, (ix+10)
		call _LABEL_DF5_
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
		ex de, hl
		ld (ix+18), e
		ld (ix+19), d
		ld a, (ix+6)
		or a
		jp nz, _LABEL_A83_
_LABEL_ACA_:	
		ld a, (ix+7)
		or a
		jr nz, +
		ld a, (ix+8)
		cpl
		and $0F
		ld (ix+22), a
		jr ++
	
+:	
		res 7, a
		ld hl, _DATA_8F6_
		call _LABEL_A78_
		call _LABEL_B2F_
++:	
		bit 6, (ix+0)
		jr nz, _LABEL_B11_
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_B24_
		add hl, bc
		ld c, (hl)
		ld a, (ix+18)
		and $0F
		or c
		call _LABEL_D30_
		ld a, (ix+18)
		and $F0
		or (ix+19)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_D30_
_LABEL_B11_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_B28_
		add hl, bc
		ld a, (hl)
		or (ix+22)
		jp _LABEL_D30_
	
; Data from B24 to B27 (4 bytes)	
_DATA_B24_:	
	.db $80 $A0 $C0 $C0
	
; Data from B28 to B2B (4 bytes)	
_DATA_B28_:	
	.db $90 $B0 $D0 $F0
	
-:	
		ld (ix+14), a
_LABEL_B2F_:	
		push hl
		ld a, (ix+14)
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
		dec (ix+14)
		jr _LABEL_B2F_
	
+:	
		cp $20
		jr z, +++
++:	
		inc (ix+14)
		or $F0
		add a, (ix+8)
		inc a
		jr c, ++++
+++:	
		xor a
++++:	
		cpl
		and $0F
		ld (ix+22), a
		ret
	
-:	
		ld (ix+15), a
_LABEL_B69_:	
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
		jr c, +
		rrca
		rrca
		rrca
		rrca
		or a
		jp z, -
		cp $10
		jr nz, +
		dec (ix+15)
		jr _LABEL_B69_
	
	; Data from B8A to B8C (3 bytes)
	.db $FE $20 $C8
	
+:	
		inc (ix+15)
		cpl
		and $0F
		ld l, a
		ld h, $00
		ex de, hl
		add hl, de
		ld (ix+18), l
		ld (ix+19), h
		ret
	
_LABEL_B9F_:	
		ld e, (ix+3)
		ld d, (ix+4)
_LABEL_BA5_:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, _LABEL_C33_
		bit 3, (ix+0)
		jr nz, _LABEL_C12_
		or a
		jp p, ++
		sub $80
		jr z, +
		add a, (ix+5)
+:	
		ld hl, _DATA_D57_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+16), a
		inc hl
		ld a, (hl)
		ld (ix+17), a
		bit 5, (ix+0)
		jr z, _LABEL_C2C_
		ld a, (de)
		inc de
		sub $80
		add a, (ix+5)
		ld hl, _DATA_D57_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+20), a
		inc hl
		ld a, (hl)
		ld (ix+21), a
--:	
		ld a, (de)
_LABEL_BED_:	
		inc de
++:	
		push de
		ld h, a
		ld e, (ix+2)
		call _LABEL_DE9_
		pop de
		ld (ix+10), l
		ld (ix+11), h
-:	
		xor a
		ld (ix+14), a
		ld (ix+15), a
		ld (ix+3), e
		ld (ix+4), d
		xor a
		ld (ix+12), a
		ld (ix+13), a
		ret
	
_LABEL_C12_:	
		ld (ix+17), a
		ld a, (de)
		inc de
		ld (ix+16), a
		bit 5, (ix+0)
		jr z, --
		ld a, (de)
		inc de
		ld (ix+21), a
		ld a, (de)
		inc de
		ld (ix+20), a
		jr --
	
_LABEL_C2C_:	
		ld a, (de)
		or a
		jp p, _LABEL_BED_
		jr -
	
_LABEL_C33_:	
		ld hl, +	; Overriding return address
		push hl
		and $1F
		ld hl, _DATA_C4A_
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
		jp _LABEL_BA5_
	
; Jump Table from C4A to C6B (17 entries, indexed by unknown)	
_DATA_C4A_:	
	.dw _LABEL_C85_ _LABEL_C9E_ _LABEL_CC5_ _LABEL_CA3_ _LABEL_CBA_ _LABEL_CBF_ _LABEL_C6C_ _LABEL_CC5_
	.dw _LABEL_CC5_ _LABEL_CC5_ _LABEL_CDB_ _LABEL_CF6_ _LABEL_D09_ _LABEL_C6C_ _LABEL_C7D_ _LABEL_CCC_
	.dw _LABEL_C8A_
	
; 7th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_C6C_:	
		ld a, (_RAM_C101_)
		ld (_RAM_C104_), a
		ld (_RAM_C124_), a
		ld (_RAM_C144_), a
		ld (_RAM_C164_), a
		dec de
		ret
	
; 15th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_C7D_:	
		ld a, (de)
		add a, (ix+5)
		ld (ix+5), a
		ret
	
; 1st entry of Jump Table from C4A (indexed by unknown)	
_LABEL_C85_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
; 17th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_C8A_:	
		ld a, (de)
		add a, (ix+8)
		cp $00
		jp p, +
		xor a
		jr ++
	
+:	
		cp $0F
		jr c, ++
		ld a, $0F
		jr ++
	
; 2nd entry of Jump Table from C4A (indexed by unknown)	
_LABEL_C9E_:	
		ld a, (de)
++:	
		ld (ix+8), a
		ret
	
; 4th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CA3_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_D30_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 5th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CBA_:	
		ld a, (de)
		ld (ix+7), a
		ret
	
; 6th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CBF_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 3rd entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CC5_:	
		ld hl, _RAM_C142_
		res 2, (hl)
		jr +
	
; 16th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CCC_:	
		ld hl, _RAM_C122_
		res 2, (hl)
+:	
		xor a
		ld (ix+0), a
		call _LABEL_D21_
		pop hl
		pop hl
		ret
	
; 11th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CDB_:	
		ld a, (de)
		ld c, a
		inc de
		ld a, (de)
		ld b, a
		push bc
		push ix
		pop hl
		dec (ix+9)
		ld c, (ix+9)
		dec (ix+9)
		ld b, $00
		add hl, bc
		ld (hl), d
		dec hl
		ld (hl), e
		pop de
		dec de
		ret
	
; 12th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_CF6_:	
		push ix
		pop hl
		ld c, (ix+9)
		ld b, $00
		add hl, bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc (ix+9)
		inc (ix+9)
		ret
	
; 13th entry of Jump Table from C4A (indexed by unknown)	
_LABEL_D09_:	
		ld a, (de)
		inc de
		add a, $17
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
		jp nz, _LABEL_CBF_
		inc de
		ret
	
_LABEL_D21_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_B28_
		add hl, bc
		ld a, (hl)
		or $0F
_LABEL_D30_:	
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
_LABEL_D38_:	
		exx
		ld hl, _RAM_C102_
		ld de, _RAM_C102_ + 1
		ld bc, $00BF
		ld (hl), $00
		ldir
		exx
_LABEL_D47_:	
		exx
		ld hl, _DATA_D53_
		ld c, Port_PSG
		ld b, $04
		otir
		exx
		ret
	
; Data from D53 to D56 (4 bytes)	
_DATA_D53_:	
	.db $9F $BF $DF $FF
	
; Data from D57 to DE8 (146 bytes)	
_DATA_D57_:	
	.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
	.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
	.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
	.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
	.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
	.db $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00
	.db $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00
	.db $2B $00 $28 $00 $26 $00 $24 $00 $22 $00 $20 $00 $1E $00 $1C $00
	.db $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13 $00 $12 $00
	.db $11 $00
	
_LABEL_DE9_:	
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
	
_LABEL_DF5_:	
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
	
_LABEL_E08_:	
		call _LABEL_FD6_
		xor a
		ld (_RAM_C010_), a
-:	
		ld a, ($8B0D)
		and $30
		jr nz, +
		ei
		halt
		call ++
		ld a, (_RAM_C010_)
		and $02
		jr z, -
+:	
		call _LABEL_FE4_
		xor a
		ld ($8AE4), a
		ret
	
++:	
		ld hl, _RAM_C010_
		ld a, (hl)
		rrca
		jr nc, +
		rrca
		jr nc, ++
		ret
	
+:	
		set 0, (hl)
		ld a, $80
		ld (_RAM_C013_), a
		ld hl, _DATA_EE0_
		ld bc, $00C0
		ld de, $0E40
		call _LABEL_FA0_
		ld hl, _DATA_E98_
		ld de, $192C
		ld bc, $0308
		jp _LABEL_FBE_
	
++:	
		ld hl, _RAM_C013_
		dec (hl)
		jr nz, +
		ld hl, _RAM_C010_
		set 1, (hl)
+:	
		ld hl, _RAM_C011_
		ld a, (hl)
		inc (hl)
		cp $18
		jr nz, +
		ld (hl), $00
+:	
		ld h, $00
		ld l, a
		ld de, _DATA_EB0_
		add hl, de
		ld de, $2E40
		call +
		ld de, $0008
		add hl, de
		ld de, $2E80
		call +
		ld de, $0008
		add hl, de
		ld de, $2EC0
+:	
		call _LABEL_FB5_
		ld b, $08
-:	
		push bc
		ld bc, $0008
		call _LABEL_FA3_
		pop bc
		djnz -
		ret
	
; Data from E98 to EAF (24 bytes)	
_DATA_E98_:	
	.db $C8 $C9 $CA $CB $CC $CD $CE $CF $D0 $D1 $D2 $D3 $D4 $D5 $D6 $D7
	.db $D8 $D9 $DA $DB $DC $DD $DE $DF
	
; Data from EB0 to EDF (48 bytes)	
_DATA_EB0_:	
	.db $40 $40 $40 $50 $50 $50 $70 $70 $70 $F0 $F0 $F0 $F0 $F0 $F0 $70
	.db $70 $70 $50 $50 $50 $40 $40 $40 $40 $40 $40 $50 $50 $50 $70 $70
	.db $70 $F0 $F0 $F0 $F0 $F0 $F0 $70 $70 $70 $50 $50 $50 $40 $40 $40
	
; Data from EE0 to F9F (192 bytes)	
_DATA_EE0_:	
	.db $00 $0F $3F $7F $78 $F7 $EF $EF $00 $FE $FE $FE $00 $FE $FE $FE
	.db $00 $0F $3F $7F $78 $F7 $EF $EF $00 $F8 $F8 $F9 $01 $FB $FB $FB
	.db $00 $3F $FF $FF $E0 $DF $BF $BF $00 $F8 $F8 $F8 $00 $F8 $F8 $F8
	.db $00 $06 $0F $1F $1F $39 $36 $36 $1C $22 $5D $D5 $D9 $D5 $E2 $FC
	.db $EE $EF $EF $F7 $78 $7F $3F $0F $00 $E0 $F8 $FC $3C $DE $EE $EE
	.db $EE $EF $EF $EF $E0 $EF $EF $EF $03 $F3 $F3 $F3 $03 $F3 $F3 $F3
	.db $B8 $B7 $B7 $B7 $B0 $B7 $B7 $B7 $00 $F8 $F8 $F8 $18 $D8 $D9 $D9
	.db $76 $6F $6F $EF $D9 $D9 $D9 $B0 $E0 $60 $60 $70 $B0 $B0 $B8 $D8
	.db $00 $FF $FF $FF $00 $FF $FF $FF $EE $EE $EE $DE $3C $FC $F8 $E0
	.db $EE $EF $EF $F7 $78 $7F $3F $0F $03 $FB $FB $FB $01 $F9 $F8 $F8
	.db $B8 $BF $BF $DF $E0 $FF $FF $3F $D9 $DB $DB $DB $1F $FE $FE $FE
	.db $B0 $BF $6F $6F $60 $CF $CF $CF $D8 $DC $EC $EC $0E $FE $FE $FE
	
_LABEL_FA0_:	
		call _LABEL_FB5_
_LABEL_FA3_:	
		push hl
		push bc
		call _LABEL_FAB_
		pop bc
		pop hl
		ret
	
_LABEL_FAB_:	
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		dec bc
		ld a, b
		or c
		jr nz, _LABEL_FAB_
		ret
	
_LABEL_FB5_:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		or $40
		out (Port_VDPAddress), a
		ret
	
_LABEL_FBE_:	
		push bc
		push de
		push hl
-:	
		push bc
		ld b, $00
		call _LABEL_FA0_
		add hl, bc
		push hl
		ld hl, $0020
		add hl, de
		ex de, hl
		pop hl
		pop bc
		djnz -
		pop hl
		pop de
		pop bc
		ret
	
_LABEL_FD6_:	
		di
		ld hl, $1B00
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		ld a, $D0
		out (Port_VDPData), a
_LABEL_FE4_:	
		xor a
		ld hl, $1800
		ld bc, $0300
		jp _LABEL_18E_
	
; Data from FEE to 11D5 (488 bytes)	
_DATA_FEE_:	
	.db $00 $00 $00 $0C $12 $12 $0C $00 $00 $00 $00 $00 $00 $C0 $60 $60
	.db $00 $00 $00 $F0 $08 $08 $30 $00 $00 $00 $00 $7E $7E $00 $00 $00
	.db $30 $FE $34 $7C $B6 $BA $74 $00 $00 $8C $86 $86 $E6 $CC $00 $00
	.db $18 $00 $7C $C6 $06 $0C $38 $00 $32 $FE $30 $7C $B2 $B2 $74 $00
	.db $64 $FA $6C $6C $6C $6C $D8 $00 $0E $1C $70 $E0 $70 $1C $0E $00
	.db $0C $9E $8C $8C $CC $8C $18 $00 $7C $C6 $00 $00 $00 $C6 $7C $00
	.db $18 $18 $7E $0C $86 $C0 $7C $00 $C0 $C0 $C0 $C0 $C0 $E6 $7C $00
	.db $0C $FE $3C $4C $3C $0C $38 $00 $6C $FE $6C $6C $60 $60 $3C $00
	.db $7C $18 $FE $38 $60 $60 $3C $00 $60 $FE $60 $6E $C0 $C0 $CE $00
	.db $30 $FE $60 $7C $06 $06 $7C $00 $00 $FC $FE $06 $06 $1C $00 $00
	.db $FE $1C $38 $70 $60 $60 $3C $00 $20 $66 $3C $30 $60 $60 $3E $00
	.db $00 $DE $C0 $C0 $C0 $E0 $DE $00 $7C $D6 $92 $92 $92 $A2 $44 $00
	.db $0C $BE $8C $9C $EE $AC $18 $00 $24 $E6 $24 $44 $44 $4C $38 $00
	.db $30 $18 $30 $9A $9A $18 $30 $00 $00 $30 $78 $CC $86 $02 $00 $00
	.db $18 $7C $18 $7C $38 $5C $30 $00 $44 $7C $E6 $B6 $9A $92 $64 $00
	.db $60 $F8 $60 $F8 $60 $64 $38 $00 $68 $FC $6A $62 $34 $30 $30 $00
	.db $18 $6C $60 $FC $C6 $06 $1C $00 $46 $46 $46 $46 $06 $0C $18 $00
	.db $7E $0C $3C $06 $32 $4E $3C $00 $60 $F4 $6C $7C $74 $E4 $62 $00
	.db $60 $F0 $7C $66 $E6 $66 $6C $00 $60 $F8 $6E $30 $78 $60 $3E $00
	.db $6A $F5 $6A $6C $6C $6C $D8 $00 $15 $BD $98 $98 $D8 $98 $30 $00
	.db $CA $CA $C0 $C0 $C0 $E6 $7C $00 $15 $FD $38 $4C $3C $0C $38 $00
	.db $75 $1D $FE $38 $60 $60 $3C $00 $65 $F5 $60 $6E $C0 $C0 $CE $00
	.db $65 $65 $3C $30 $60 $60 $3E $00 $00 $00 $F8 $18 $70 $40 $80 $00
	.db $00 $3C $18 $18 $18 $18 $7E $00 $30 $FE $36 $36 $36 $36 $6C $00
	.db $FE $06 $06 $0C $1C $36 $C2 $00 $7E $66 $76 $DE $0C $0C $18 $00
	.db $FE $06 $06 $0E $0C $1C $F0 $00 $FE $06 $06 $6C $3C $18 $0C $00
	.db $FE $00 $FE $06 $06 $0C $F8 $00 $C6 $C6 $C6 $C6 $06 $0C $30 $00
	.db $6C $6C $6C $6C $6C $4E $8C $00 $FE $C6 $C6 $06 $06 $0C $38 $00
	.db $35 $FD $36 $36 $36 $36 $6C $00 $35 $35 $FE $38 $FE $18 $18 $00
	.db $65 $65 $78 $6C $64 $60 $60 $00 $02 $6D $6A $6C $6C $44 $82
	.dsb 9, $00
	
_LABEL_11D6_:	
		ld sp, $C0F0
		call _LABEL_D47_
		ld sp, $A000
		ld bc, $1000
		ld hl, $0000
-:	
		push hl
		dec bc
		ld a, b
		or c
		jr nz, -
		ld sp, $C400
		ld bc, $0200
		ld hl, $0000
-:	
		push hl
		dec bc
		ld a, b
		or c
		jr nz, -
		ld sp, $C0F0
		call _LABEL_1EE_
		call _LABEL_1FB_
		call _LABEL_201F_
		call _LABEL_35B0_
		xor a
		ld ($8B14), a
		inc a
		ld ($8B15), a
		call _LABEL_1DF9_
		call _LABEL_2091_
	; Data from 1217 to 121D (7 bytes)
	.db $38 $ED $CD $1E $12 $18 $EB
	
_LABEL_121E_:	
		call _LABEL_36DC_
		call _LABEL_1269_
		ld a, ($8AE3)
		or a
		ret nz
		ld a, ($8324)
		or a
		jr nz, _LABEL_121E_
		ld a, ($8ACA)
		ld ($8B16), a
		ld a, $07
		ld ($8ACA), a
		ld a, $06
		ld (_RAM_C101_), a
		call _LABEL_22E8_
		ld a, ($8B20)
		or a
		jr nz, +
		ret
	
+:	
		ld a, $05
		ld ($8324), a
		ld ($8336), a
		xor a
		ld ($8AE4), a
		ld hl, $832B
		ld b, $03
-:	
		ld (hl), a
		inc hl
		djnz -
		ld hl, $833D
		ld b, $03
-:	
		ld (hl), a
		inc hl
		djnz -
		jr _LABEL_121E_
	
_LABEL_1269_:	
		xor a
		ld ($8AC9), a
		ld ($8AD6), a
		ld ($8AE0), a
		ld ($8AE1), a
		ld ($8AE2), a
		ld ($8AE3), a
		ld ($8AE8), a
		call _LABEL_357A_
		ld a, ($8B20)
		cp $02
		jr nz, +
		dec a
		ld ($8AE2), a
+:	
		xor a
		ld ($8B20), a
_LABEL_1291_:	
		ld a, ($8AE4)
		cp $01
		jr z, _LABEL_12E1_
-:	
		ld a, ($8B23)
		cp $FF
		jr nz, ++
		xor a
		ld ($8B1B), a
		ld a, ($8320)
		cp $62
		jr nz, +
		ld a, ($8B0D)
		cp $32
		jr nz, +
		ld a, $01
		ld ($8B1B), a
+:	
		jr -
	
++:	
		ld a, ($8B1B)
		or a
		jr z, _LABEL_12E1_
		rst $08	; _LABEL_8_
+:	
		rst $10	; _LABEL_10_
		ld a, ($8B0D)
		cp $31
		jr nz, _LABEL_12E1_
		ld a, ($8B1A)
		or a
		jr z, +
		ld a, $81
		rst $30	; _LABEL_30_
		xor a
		jr ++
	
+:	
		ld a, $82
		rst $30	; _LABEL_30_
		ld a, $03
++:	
		ld ($8343), a
		ld ($8331), a
		ld ($8B1A), a
_LABEL_12E1_:	
		rst $18	; _LABEL_18_
		jr nz, +
		xor a
		ld ($8ACB), a
		ld ($8ACC), a
+:	
		call _LABEL_35B0_
		ld a, $01
		ld ($8AE8), a
		call _LABEL_242A_
		xor a
		ld ($8AE8), a
		call _LABEL_34CC_
		call _LABEL_2DFC_
		ld a, ($8AE3)
		or a
		ret nz
		call _LABEL_16A0_
		call _LABEL_15CB_
		call _LABEL_1345_
		call _LABEL_41A1_
		call _LABEL_167D_
		call _LABEL_160A_
		call _LABEL_1708_
		call _LABEL_2C80_
		ld a, ($8AE0)
		or a
		jr z, +
		ld ix, $8B12
		ld (ix+0), $00
		ld (ix+1), $00
		ret
	
+:	
		ld a, ($8AE1)
		call _LABEL_2355_
		or a
		ret nz
		ld a, ($8AC9)
		inc a
		ld ($8AC9), a
		call _LABEL_344B_
		jp _LABEL_1291_
	
_LABEL_1345_:	
		ld hl, $0000
		ld de, $00FF
		ld a, ($8334)
		ld b, a
		ld a, ($8335)
		ld c, a
		inc c
		inc c
		call _LABEL_1780_
		or a
		ld a, ($8AD6)
		jr z, +
		cp $11
		jr c, ++
		ld a, $8E
		rst $30	; _LABEL_30_
		xor a
		jr ++
	
+:	
		or a
		jr nz, ++
		ld a, $11
++:	
		ld ($8AD6), a
		ld a, ($8ACB)
		cp $02
		jr c, +
		cp $05
		jr nc, +
		ld d, $01
		ld l, $03
		jr ++
	
+:	
		cp $06
		jr c, ++
		ld d, $FF
		ld l, $01
++:	
		ld a, ($8ACC)
		or a
		ld a, ($8AD6)
		jr nz, +
		or a
		jr z, ++
		ld a, $11
		ld ($8AD6), a
		jr ++
	
+:	
		inc a
		ld ($8AD6), a
		cp $11
		jr nc, ++
		cp $09
		jr nc, +
		ld e, $01
		jr ++
	
+:	
		ld e, $00
++:	
		or a
		jr z, +
		ld a, d
		jr ++
	
+:	
		call _LABEL_1A4E_
		add a, d
++:	
		call _LABEL_1483_
		ld a, e
		cp $01
		jr nz, +
		set 2, h
+:	
		cp $FF
		jr nz, +
		set 3, h
+:	
		call _LABEL_1780_
		or a
		jr z, +
		res 3, h
+:	
		bit 3, h
		jr z, +
		xor a
		call _LABEL_146C_
+:	
		dec c
		dec c
		inc b
		inc b
		xor a
		call _LABEL_175A_
		jr z, +
		res 4, h
+:	
		dec b
		dec b
		dec b
		xor a
		call _LABEL_175A_
		jr z, +
		res 5, h
+:	
		inc b
		bit 3, h
		jr nz, _LABEL_1437_
		call _LABEL_14C2_
		dec c
		bit 0, h
		jr nz, ++
		call _LABEL_1C4C_
		jr z, +
		res 2, h
+:	
		dec b
		bit 1, h
		jr z, +
		bit 2, h
		jr z, +
		call _LABEL_1C4C_
		jr z, +
		res 2, h
		res 1, h
+:	
		inc b
++:	
		bit 1, h
		jr nz, ++
		inc b
		call _LABEL_1C4C_
		jr z, +
		res 2, h
+:	
		inc b
		bit 0, h
		jr z, +
		bit 2, h
		jr z, +
		call _LABEL_1C4C_
		jr z, +
		res 2, h
		res 0, h
+:	
		dec b
		dec b
++:	
		inc c
_LABEL_1437_:	
		inc c
		bit 2, h
		jr nz, +
		call _LABEL_14C2_
+:	
		dec c
		ld a, ($8AD6)
		or a
		jr z, +
		set 2, l
		jr ++
	
+:	
		bit 3, h
		jr z, +
		set 2, l
		jr ++
	
+:	
		bit 0, h
		jr z, +
		call _LABEL_14D5_
		jr nz, +
		res 0, h
+:	
		bit 1, h
		jr z, ++
		call _LABEL_14E7_
		jr nz, ++
		res 1, h
++:	
		call _LABEL_149D_
		ret
	
_LABEL_146C_:	
		push af
		dec b
		call _LABEL_1C4D_
		jr z, +
		res 1, h
+:	
		pop af
		inc b
		inc b
		inc b
		call _LABEL_1C4D_
		jr z, +
		res 0, h
+:	
		dec b
		dec b
		ret
	
_LABEL_1483_:	
		cp $FE
		jr nz, +
		set 5, h
		inc a
+:	
		cp $FF
		jr nz, +
		set 1, h
+:	
		cp $02
		jr nz, +
		set 4, h
		dec a
+:	
		cp $01
		ret nz
		set 0, h
		ret
	
_LABEL_149D_:	
		ld a, h
		ld c, h
		ld h, $00
		and $30
		jr z, +
		set 4, h
+:	
		ld a, c
		and $0C
		jr z, +
		set 2, h
		and $04
		jr z, +
		set 3, h
+:	
		ld a, c
		and $03
		jr z, +
		set 0, h
		and $01
		jr z, +
		set 1, h
+:	
		ret
	
_LABEL_14C2_:	
		ld a, ($8AD6)
		or a
		jr z, +
-:	
		xor a
		jr ++
	
+:	
		bit 3, h
		jr nz, -
		ld a, $01
++:	
		call _LABEL_146C_
		ret
	
_LABEL_14D5_:	
		push hl
		ld hl, $14FB
		ld a, $03
-:	
		call _LABEL_14EF_
		pop hl
		call _LABEL_1586_
		ret z
		call +
		ret
	
_LABEL_14E7_:	
		push hl
		ld hl, $14FE
		ld a, $01
		jr -
	
_LABEL_14EF_:	
		ld ($8AFD), a
		ld a, $C3
		ld ($8AFA), a
		ld ($8AFB), hl
		ret
	
	; Data from 14FB to 14FF (5 bytes)
	.db $04 $04 $C9 $05 $C9
	
+:	
		rst $08	; _LABEL_8_
+:	
		rst $18	; _LABEL_18_
		jr nz, _LABEL_1570_
		call $8AFA
		ld a, $02
		call _LABEL_18E9_
		push hl
		pop ix
		ld d, a
		jr nz, +
		ld d, $FF
+:	
		inc c
		ld a, $02
		call _LABEL_18E9_
		ld e, a
		jr nz, +
		ld e, $FF
+:	
		ld a, e
		and d
		cp $FF
		jr z, _LABEL_1570_
		ld a, e
		or d
		cp $FF
		jr z, +
		ld a, e
		cp d
		jr nz, _LABEL_1579_
+:	
		ld a, e
		cp $FF
		jr nz, +
		ld a, d
		push ix
		pop hl
+:	
		ld c, a
		push hl
		pop ix
		ld a, (ix+4)
		bit 2, a
		jr nz, _LABEL_1579_
		bit 0, a
		jr nz, _LABEL_1570_
		push hl
		push bc
		push ix
		call _LABEL_159D_
		call $8AFA
		call _LABEL_1C23_
		jr nz, +
		inc c
		call _LABEL_1C23_
		jr nz, +
		call _LABEL_157C_
		dec c
		call _LABEL_157C_
		pop ix
		pop bc
		pop hl
		ld a, ($8AFD)
		ld (ix+4), a
		call _LABEL_4340_
_LABEL_1570_:	
		ld a, $01
		or a
-:	
		rst $10	; _LABEL_10_
		ret
	
+:	
		pop ix
		pop bc
		pop hl
_LABEL_1579_:	
		xor a
		jr -
	
_LABEL_157C_:	
		ld a, $04
		call _LABEL_18E9_
		ret z
		call _LABEL_2F95_
		ret
	
_LABEL_1586_:	
		rst $08	; _LABEL_8_
+:	
		rst $18	; _LABEL_18_
		jr nz, +
		call $8AFA
		call ++
		jr z, +
		call _LABEL_477A_
		xor a
-:	
		rst $10	; _LABEL_10_
		ret
	
+:	
		ld a, $01
		or a
		jr -
	
_LABEL_159D_:	
		push hl
		inc hl
		ld a, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld c, (hl)
		pop hl
		ret
	
++:	
		call _LABEL_1C0E_
		and $02
		jr z, +
		inc c
		call _LABEL_1C0E_
		and $02
		jr z, +
		ld de, $86EE
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $0004
		ld bc, $8346
		call _LABEL_2F72_
		ld a, $01
		or a
		ret
	
+:	
		xor a
		ret
	
_LABEL_15CB_:	
		ld hl, $8386
		ld de, $0005
		ld b, $10
		ld c, $00
-:	
		ld a, (hl)
		or a
		jr z, ++
		rst $08	; _LABEL_8_
+:	
		inc hl
		inc hl
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld a, (hl)
		call _LABEL_1A75_
		ld (hl), a
		rst $10	; _LABEL_10_
		inc hl
		ld a, (hl)
		dec hl
		cp $34
		call nz, _LABEL_4340_
++:	
		add hl, de
		inc c
		djnz -
		ld hl, $8386
		ld b, $10
		ld c, $00
-:	
		ld a, (hl)
		or a
		jr z, +
		inc hl
		ld a, (hl)
		dec hl
		cp $34
		call z, _LABEL_4340_
+:	
		add hl, de
		inc c
		djnz -
		ret
	
_LABEL_160A_:	
		ld hl, $8416
		ld de, $0005
		ld b, $08
-:	
		ld a, (hl)
		or a
		jr z, +
		call +++
+:	
		add hl, de
		djnz -
		ld hl, $8416
		ld b, $08
		ld c, $00
-:	
		ld a, (hl)
		or a
		jr z, ++
		push hl
		pop ix
		ld a, (ix+4)
		and $05
		jr z, +
		call +++
+:	
		call _LABEL_43C6_
++:	
		add hl, de
		inc c
		djnz -
		ret
	
+++:	
		rst $18	; _LABEL_18_
		ret nz
		rst $08	; _LABEL_8_
+:	
		inc hl
		ld a, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld d, (hl)
		cp $36
		jr nz, +
		ld a, d
		jr ++
	
+:	
		cp $37
		jr nz, +
		ld a, d
		call _LABEL_1B4C_
		jr ++
	
+:	
		cp $38
		jr nz, +
		ld a, d
		call _LABEL_1AFC_
		jr ++
	
+:	
		cp $39
		jr nz, +
		ld a, d
		call _LABEL_1AD1_
		jr ++
	
+:	
		cp $3A
		jr nz, +
		ld a, d
		call _LABEL_1AC9_
		jr ++
	
+:	
		ld a, d
		call _LABEL_1AC1_
++:	
		ld (hl), a
		rst $10	; _LABEL_10_
		ret
	
_LABEL_167D_:	
		call _LABEL_16FF_
-:	
		rst $08	; _LABEL_8_
+:	
		ld a, (hl)
		cp $1F
		jr nz, +
		call _LABEL_16F7_
		call _LABEL_1A17_
		ld (hl), a
+:	
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
		call _LABEL_16FF_
-:	
		ld a, (hl)
		cp $1F
		jr nz, +
		call _LABEL_468D_
+:	
		add hl, de
		djnz -
		ret
	
_LABEL_16A0_:	
		call _LABEL_16FF_
_LABEL_16A3_:	
		rst $08	; _LABEL_8_
+:	
		ld a, (hl)
		cp $0C
		jr nz, +
		call _LABEL_44ED_
		jr _LABEL_16F2_
	
+:	
		cp $0D
		jr nz, +
		call _LABEL_44FE_
		jr _LABEL_16F2_
	
+:	
		cp $0F
		jr nz, +
		call _LABEL_4541_
		jr _LABEL_16F2_
	
+:	
		cp $1C
		jr nz, +
		ld a, ($8AC9)
		and $07
		jr nz, _LABEL_16F2_
		push hl
		call _LABEL_16F7_
		call _LABEL_1864_
		ld (hl), a
		pop hl
		call _LABEL_4606_
		jr _LABEL_16F2_
	
+:	
		cp $1D
		jr nz, _LABEL_16F2_
		ld a, ($8AC9)
		and $07
		jr nz, _LABEL_16F2_
		push hl
		call _LABEL_16F7_
		call _LABEL_186C_
		ld (hl), a
		pop hl
		call _LABEL_4640_
		jr _LABEL_16F2_
	
_LABEL_16F2_:	
		rst $10	; _LABEL_10_
		add hl, de
		djnz _LABEL_16A3_
		ret
	
_LABEL_16F7_:	
		inc hl
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		inc hl
		ld a, (hl)
		ret
	
_LABEL_16FF_:	
		ld hl, $843E
		ld de, $0005
		ld b, $10
		ret
	
_LABEL_1708_:	
		ld hl, $83D6
		ld de, $0004
		ld b, $10
-:	
		rst $08	; _LABEL_8_
+:	
		ld a, (hl)
		or a
		jr z, ++
		inc hl
		ld a, (hl)
		dec hl
		cp $21
		jr nz, +
		call _LABEL_46E0_
		jr ++
	
+:	
		cp $23
		jr nz, ++
		call _LABEL_4703_
++:	
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
		ret
	
_LABEL_172D_:	
		push bc
		ex af, af'
		ld a, $1D
		cp b
		jr c, _LABEL_1755_
		call _LABEL_1C1B_
		jr nz, _LABEL_1755_
		inc c
		call _LABEL_1C1B_
		jr nz, _LABEL_1755_
		inc c
		ex af, af'
		cp $02
		jr z, _LABEL_1752_
		or a
		jr nz, +
		call _LABEL_1C77_
		jr ++
	
+:	
		call _LABEL_1C6F_
++:	
		jr z, _LABEL_1755_
_LABEL_1752_:	
		xor a
		pop bc
		ret
	
_LABEL_1755_:	
		ld a, $01
		or a
		pop bc
		ret
	
_LABEL_175A_:	
		push bc
		push af
		call _LABEL_1C4D_
		jr z, +
		pop af
		jr _LABEL_1755_
	
+:	
		pop af
		inc c
		call _LABEL_1C4D_
		jr nz, _LABEL_1755_
		jr _LABEL_1752_
	
_LABEL_176D_:	
		push bc
		ld a, $13
		cp c
		jr c, _LABEL_1752_
		call _LABEL_1C6F_
		jr nz, _LABEL_1755_
		inc b
		call _LABEL_1C6F_
		jr nz, _LABEL_1755_
		jr _LABEL_1752_
	
_LABEL_1780_:	
		push bc
		ld a, c
		cp $FF
		jr z, _LABEL_1755_
		ld a, $13
		cp c
		jr c, _LABEL_1752_
		call _LABEL_1C44_
		jr nz, _LABEL_1755_
		inc b
		call _LABEL_1C44_
		jr nz, _LABEL_1755_
		jr _LABEL_1752_
	
_LABEL_1798_:	
		push bc
		ld a, $13
		cp c
		jr c, _LABEL_1755_
		call _LABEL_1C77_
		jr nz, _LABEL_1755_
		inc b
		call _LABEL_1C77_
		jr nz, _LABEL_1755_
		jp _LABEL_1752_
	
_LABEL_17AC_:	
		rst $08	; _LABEL_8_
+:	
		ld a, $13
		cp c
		jr c, ++
		ld e, $02
-:	
		call _LABEL_1C0E_
		ld d, a
		and $08
		jr nz, +
		ld a, d
		and $30
		jr nz, ++
+:	
		inc b
		dec e
		jr nz, -
		xor a
-:	
		rst $10	; _LABEL_10_
		ret
	
++:	
		ld a, $FF
		or a
		jr -
	
_LABEL_17CD_:	
		push bc
		ex af, af'
		ld a, $13
		cp c
		jr nc, +
		ex af, af'
		or a
		jr z, +++
		jr ++
	
+:	
		call _LABEL_1C1B_
		jr nz, +++
		inc b
		call _LABEL_1C1B_
		jr nz, +++
++:	
		xor a
		pop bc
		ret
	
+++:	
		ld a, $01
		or a
		pop bc
		ret
	
_LABEL_17ED_:	
		push hl
		ld l, a
		inc c
		inc c
		call _LABEL_17CD_
		ld d, a
		dec c
		dec c
		dec c
		ld a, l
		call _LABEL_17CD_
		ld e, a
		inc c
		pop hl
		ret
	
_LABEL_1800_:	
		push hl
		ld l, a
		push bc
		inc b
		inc b
		ld a, l
		call _LABEL_172D_
		ld d, a
		pop bc
		dec b
		ld a, l
		call _LABEL_172D_
		ld e, a
		inc b
		pop hl
		ret
	
_LABEL_1814_:	
		rst $08	; _LABEL_8_
+:	
		ld h, a
		ld a, d
		call _LABEL_1800_
		ld a, d
		or a
		jr nz, +
		ld a, e
		or a
		jr z, ++
		set 1, h
		jr ++
	
+:	
		ld a, e
		or a
		jr nz, +
		res 1, h
		jr ++
	
+:	
		res 0, h
++:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
_LABEL_1833_:	
		ld a, ($8334)
		cp b
		ret z
		push de
		ld d, a
		ld a, b
		add a, $08
		cp d
		jr c, ++
		ld a, b
		sub $08
		jr nc, +
		ccf
		jr ++
	
+:	
		ld e, a
		ld a, d
		cp e
		jr c, ++
		ld a, $01
		or a
++:	
		pop de
		ret
	
_LABEL_1852_:	
		push de
		ld a, ($8334)
		ld d, a
		ld a, b
		cp d
		pop de
		ret
	
_LABEL_185B_:	
		push de
		ld a, ($8335)
		ld d, a
		ld a, c
		cp d
		pop de
		ret
	
_LABEL_1864_:	
		push de
		ld d, $01
		call +
		pop de
		ret
	
_LABEL_186C_:	
		push de
		ld d, $02
		call +
		pop de
		ret
	
+:	
		rst $08	; _LABEL_8_
+:	
		bit 3, a
		jr nz, +++
_LABEL_1879_:	
		push de
		push bc
		ld h, a
		inc c
-:	
		call _LABEL_1798_
		or a
		jr nz, ++
		inc b
		inc b
		dec d
		jr nz, -
		pop bc
		pop de
		push hl
		inc c
		ld a, d
		add a, a
		ld d, a
-:	
		push de
		push bc
		ld a, $06
		call _LABEL_18E9_
		jr z, +
		call _LABEL_2F95_
+:	
		pop bc
		pop de
		inc b
		dec d
		jr nz, -
		pop hl
		jr _LABEL_18E3_
	
++:	
		pop bc
		pop de
		set 3, h
		ld a, h
+++:	
		push de
		push bc
		ld h, a
		dec c
-:	
		call _LABEL_17AC_
		or a
		jr nz, ++
		inc b
		inc b
		dec d
		jr nz, -
		pop bc
		pop de
		push hl
		dec c
		ld a, d
		add a, a
		ld d, a
--:	
		push de
-:	
		push bc
		ld a, $07
		call _LABEL_18E9_
		pop bc
		jr z, +
		call _LABEL_1960_
		ld de, $8334
		call _LABEL_2F6C_
		jr z, -
+:	
		pop de
		inc b
		dec d
		jr nz, --
		pop hl
		jr _LABEL_18E3_
	
++:	
		pop bc
		pop de
		res 3, h
		ld a, h
		jr _LABEL_1879_
	
_LABEL_18E3_:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
-:	
		pop af
		xor a
		ret
	
_LABEL_18E9_:	
		push af
		ld a, b
		cp $1E
		jr nc, -
		ld a, c
		cp $14
		jr nc, -
		pop af
		push de
		push bc
		push af
		bit 0, a
		jr z, ++
		ld d, b
		ld e, c
		dec e
		ld a, ($8334)
		ld h, a
		ld a, ($8335)
		ld l, a
		call _LABEL_2F6C_
		jr z, +
		dec d
		call _LABEL_2F6C_
		jr nz, ++
+:	
		ld hl, $8334
		pop af
		ld a, $01
		or a
		jr _LABEL_195D_
	
++:	
		pop af
		ex af, af'
		call _LABEL_1C0E_
		and $08
		jr z, _LABEL_195D_
		ld de, $86EE
		add hl, de
		ld a, (hl)
		srl a
		srl a
		srl a
		ld c, a
		ex af, af'
		bit 4, c
		jr nz, +
		bit 1, a
		jr z, _LABEL_195D_
		push bc
		ld l, c
		ld h, $00
		ld de, $0005
		ld bc, $8386
		jr ++
	
+:	
		bit 2, a
		jr z, _LABEL_195D_
		res 4, c
		push bc
		ld l, c
		ld h, $00
		ld de, $0005
		ld bc, $8416
++:	
		call _LABEL_2F72_
		ld a, $01
		or a
		pop bc
		ld a, c
_LABEL_195D_:	
		pop bc
		pop de
		ret
	
_LABEL_1960_:	
		push hl
		push bc
		push af
		ld de, $8334
		call _LABEL_2F6C_
		jr nz, +
		ld a, ($8335)
		dec a
		ld ($8335), a
		call _LABEL_418A_
		ld a, $FF
		call _LABEL_416E_
		pop af
		jr ++
	
+:	
		push hl
		pop ix
		ld b, (ix+2)
		ld c, (ix+3)
		dec c
		call _LABEL_17AC_
		or a
		jr z, +
		call _LABEL_2F95_
		pop af
		jr ++
	
+:	
		push hl
		call _LABEL_19A3_
		inc b
		call _LABEL_19A3_
		pop hl
		pop af
		call _LABEL_4765_
++:	
		pop bc
		pop hl
		ret
	
_LABEL_19A3_:	
		ld a, $07
		call _LABEL_18E9_
		ret z
		call _LABEL_1960_
		ret
	
_LABEL_19AD_:	
		push hl
		push bc
		push ix
		ld h, a
		bit 3, h
		jr z, ++
		dec c
		call _LABEL_1780_
		or a
		jr z, +
		res 2, h
		jr +++
	
+:	
		inc c
		inc c
		inc c
		inc c
		call _LABEL_17AC_
		or a
		jr z, +
		res 2, h
		jr +++
	
+:	
		push hl
		call _LABEL_19A3_
		inc b
		call _LABEL_19A3_
		pop hl
		jr +++
	
++:	
		inc c
		call _LABEL_17AC_
		or a
		jr z, +
		res 2, h
		jr +++
	
+:	
		call ++++
		inc b
		call ++++
		dec b
		inc c
		inc c
		inc c
		inc c
		xor a
		call _LABEL_17CD_
		or a
		jr z, +++
		res 2, h
+++:	
		ld a, h
		pop ix
		pop bc
		pop hl
		ret
	
++++:	
		push hl
		ld a, $06
		call _LABEL_18E9_
		jr z, +
		inc hl
		inc hl
		inc hl
		inc hl
		ld a, (hl)
		bit 2, a
		jr nz, +
		pop hl
		res 2, h
		ret
	
+:	
		pop hl
		ret
	
_LABEL_1A17_:	
		bit 0, a
		ret z
		rst $08	; _LABEL_8_
+:	
		ld h, a
		rst $18	; _LABEL_18_
		jr nz, ++
		inc b
		inc b
		call +++
		jr nz, +
		dec b
		dec b
		dec b
		call +++
		jr z, ++
		set 1, h
		jr ++
	
+:	
		dec b
		dec b
		dec b
		call +++
		jr nz, +
		res 1, h
		jr ++
	
+:	
		res 0, h
++:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
+++:	
		ld a, $1D
		cp b
		jr nc, +
		or a
		ret
	
+:	
		call _LABEL_1C1B_
		ret
	
_LABEL_1A4E_:	
		rst $08	; _LABEL_8_
+:	
		ld h, $00
		ld a, $02
-:	
		push af
		call _LABEL_1C7F_
		and $03
		jr z, ++
		and $01
		jr z, +
		inc h
		jr ++
	
+:	
		dec h
++:	
		inc b
		pop af
		dec a
		jr nz, -
		ld a, h
		cp $02
		jr nz, +
		dec a
+:	
		cp $FE
		jr nz, +
		inc a
+:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_1A75_:	
		rst $08	; _LABEL_8_
+:	
		ld h, a
		rst $18	; _LABEL_18_
		jr nz, _LABEL_1ABE_
		inc c
		inc c
		call _LABEL_1C23_
		jr nz, +
		push bc
		inc b
		call _LABEL_1C23_
		pop bc
		jr nz, +
		call _LABEL_157C_
		inc b
		call _LABEL_157C_
		res 0, h
		set 2, h
		res 3, h
		jr _LABEL_1ABE_
	
+:	
		call _LABEL_1A4E_
		ld h, $00
		call _LABEL_1483_
		dec c
		dec c
		inc b
		inc b
		ld a, $02
		call _LABEL_172D_
		or a
		jr z, +
		res 0, h
+:	
		dec b
		dec b
		dec b
		ld a, $02
		call _LABEL_172D_
		or a
		jr z, +
		res 1, h
+:	
		call _LABEL_149D_
_LABEL_1ABE_:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
_LABEL_1AC1_:	
		push de
		ld d, $00
		call _LABEL_1814_
		pop de
		ret
	
_LABEL_1AC9_:	
		push de
		ld d, $00
		call _LABEL_1814_
		pop de
		ret
	
_LABEL_1AD1_:	
		push de
		push bc
		ld e, a
		inc c
		inc c
		call _LABEL_176D_
		jr nz, +
		ld a, e
		res 0, a
		set 2, a
		res 3, a
		jr +++
	
+:	
		res 2, e
		dec c
		dec c
		call _LABEL_1833_
		jr c, +
		set 0, e
		ld d, $01
		jr ++
	
+:	
		ld d, $00
++:	
		ld a, e
		call _LABEL_1814_
+++:	
		pop bc
		pop de
		ret
	
_LABEL_1AFC_:	
		rst $08	; _LABEL_8_
+:	
		ld h, a
		inc c
		inc c
		call _LABEL_176D_
		jr nz, +
		res 0, h
		set 2, h
		res 3, h
		jr +++
	
+:	
		dec c
		dec c
		bit 2, h
		jr nz, ++
		bit 0, h
		jr z, ++
		ld d, $00
		call _LABEL_1833_
		jr c, +
-:	
		ld d, $01
		call _LABEL_185B_
		jr nc, +
		ld d, $02
+:	
		ld a, h
		call _LABEL_1814_
		ld h, a
		jr +++
	
++:	
		call _LABEL_1833_
		jr nz, +
		set 2, h
		set 3, h
		dec c
		call _LABEL_176D_
		jr z, +++
		res 2, h
		jr +++
	
+:	
		res 2, h
		set 0, h
		jr nc, -
		res 0, h
+++:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
_LABEL_1B4C_:	
		rst $08	; _LABEL_8_
+:	
		ld h, a
		ld l, $00
		bit 2, h
		jr nz, _LABEL_1BA8_
_LABEL_1B54_:	
		res 2, h
		set 0, h
		res 3, h
		call _LABEL_185B_
		jr c, +
		set 3, h
+:	
		ld a, $02
		call _LABEL_1800_
		ld a, d
		or a
		jr nz, ++
		ld a, e
		or a
		jp z, _LABEL_1BFA_
		ld a, l
		or a
		jr nz, +
		call _LABEL_1833_
		jr nc, +++
-:	
		set 1, h
		jp _LABEL_1BFA_
	
+:	
		call _LABEL_1852_
		jr c, -
		jp _LABEL_1BF6_
	
++:	
		ld a, e
		or a
		jr z, +
		ld a, l
		or a
		jr z, +++
		jr _LABEL_1BF6_
	
+:	
		ld a, l
		or a
		jr nz, +
		call _LABEL_1833_
		jr nc, +++
-:	
		res 1, h
		jp _LABEL_1BFA_
	
+:	
		call _LABEL_1852_
		jr z, +
		jr nc, -
+:	
		jp _LABEL_1BF6_
	
+++:	
		inc l
_LABEL_1BA8_:	
		res 0, h
		set 2, h
		res 1, h
		call _LABEL_1852_
		jr nc, +
		set 1, h
+:	
		xor a
		call _LABEL_17ED_
		ld a, d
		or a
		jr nz, ++
		ld a, e
		or a
		jr nz, +
		call _LABEL_1833_
		jr c, _LABEL_1BFA_
		call _LABEL_185B_
		jr nz, _LABEL_1BFA_
		jr _LABEL_1B54_
	
+:	
		call _LABEL_1833_
		jr c, +
		call _LABEL_185B_
		jp nc, _LABEL_1B54_
+:	
		res 3, h
		jp _LABEL_1BFA_
	
++:	
		ld a, e
		or a
		jp nz, _LABEL_1B54_
		call _LABEL_1833_
		jp c, +
		call _LABEL_185B_
		jp z, _LABEL_1B54_
		jp c, _LABEL_1B54_
+:	
		set 3, h
		jp _LABEL_1BFA_
	
_LABEL_1BF6_:	
		res 0, h
		res 2, h
_LABEL_1BFA_:	
		ld a, h
		rst $10	; _LABEL_10_
		ret
	
_LABEL_1BFD_:	
		push de
		push bc
		ld l, c
		ld h, $00
		ld c, b
		ld b, $00
		ld de, $001E
		call _LABEL_2F72_
		pop bc
		pop de
		ret
	
_LABEL_1C0E_:	
		call _LABEL_1BFD_
		push hl
		push de
		ld de, $8496
		add hl, de
		ld a, (hl)
		pop de
		pop hl
		ret
	
_LABEL_1C1B_:	
		push hl
		call _LABEL_1C0E_
		and $30
		pop hl
		ret
	
_LABEL_1C23_:	
		push hl
		ld a, b
		cp $1E
		jr c, +
		ld a, $01
		or a
		jr +++
	
+:	
		ld a, c
		cp $14
		jr nc, +
		ld a, $04
		call _LABEL_18E9_
		jr z, ++
+:	
		xor a
		jr +++
	
++:	
		call _LABEL_1C0E_
		and $30
+++:	
		pop hl
		ret
	
_LABEL_1C44_:	
		push hl
		call _LABEL_1C0E_
		and $80
		pop hl
		ret
	
_LABEL_1C4C_:	
		xor a
_LABEL_1C4D_:	
		ex af, af'
		ld a, $1D
		cp b
		jr c, +++
		ld a, $13
		cp c
		jr c, +++
		ex af, af'
		or a
		jr z, +
		push hl
		call _LABEL_1C0E_
		pop hl
		and $0A
		jr nz, ++
+:	
		call _LABEL_1C44_
		ret
	
++:	
		xor a
		ret
	
+++:	
		ld a, $01
		or a
		ret
	
_LABEL_1C6F_:	
		push hl
		call _LABEL_1C0E_
		and $20
		pop hl
		ret
	
_LABEL_1C77_:	
		push hl
		call _LABEL_1C0E_
		and $40
		pop hl
		ret
	
_LABEL_1C7F_:	
		push hl
		push de
		call _LABEL_1C0E_
		and $01
		jr z, +
		ld de, $86EE
		add hl, de
		ld a, (hl)
		or a
+:	
		pop de
		pop hl
		ret
	
_LABEL_1C91_:	
		ld bc, $080E
		ld de, _DATA_1CAF_
		call _LABEL_1FDA_
		ret z
		ld bc, $0A12
		ld de, $1CC1
		call _LABEL_1FDA_
		ret z
		ld bc, $0215
		ld de, $1CCE
		call _LABEL_1FDA_
		ret
	
; Data from 1CAF to 1CEB (61 bytes)	
_DATA_1CAF_:	
	.db $50 $55 $53 $48 $20 $53 $54 $41 $52 $54 $20 $42 $55 $54 $54 $4F
	.db $4E $40 $5B $20 $41 $53 $43 $49 $49 $20 $31 $39 $38 $36 $40 $52
	.db $45 $50 $52 $4F $47 $52 $41 $4D $4D $45 $44 $20 $47 $41 $4D $45
	.db $20 $5B $20 $53 $45 $47 $41 $20 $31 $39 $38 $36 $40
	
_LABEL_1CEC_:	
		push de
		push bc
		ld de, $9CF0
-:	
		push bc
		ld a, (hl)
		ld b, a
		and $F0
		srl a
		srl a
		srl a
		srl a
		ld (de), a
		inc de
		ld a, b
		and $0F
		ld (de), a
		inc de
		inc hl
		pop bc
		dec bc
		ld a, b
		or c
		jr nz, -
		pop hl
		add hl, hl
		ld b, h
		ld c, l
		pop hl
		ld de, $9CF0
		ex de, hl
---:	
		push bc
		ld a, (hl)
		jr +
	
--:	
		ld (de), a
		inc hl
		inc de
		pop bc
		dec bc
		ld a, b
		or c
		jr nz, ---
		ret
	
+:	
		ld b, $00
-:	
		cp $0F
		jr nz, +
		add a, b
		ld b, a
		inc hl
		ld a, (hl)
		jr -
	
+:	
		add a, b
		jr --
	
_LABEL_1D32_:	
		xor a
		ld ($8B1D), a
		ld ($8B1E), a
		ld de, $9CF0
_LABEL_1D3C_:	
		ld a, (hl)
		or a
		ret z
		ld b, a
		rlca
		jr c, +
		call ++
		inc hl
		ld a, (hl)
-:	
		ld (de), a
		inc de
		djnz -
		inc hl
		jp _LABEL_1D3C_
	
+:	
		res 7, b
		call ++
		inc hl
-:	
		ld a, (hl)
		ld (de), a
		inc de
		inc hl
		djnz -
		jp _LABEL_1D3C_
	
++:	
		push hl
		push bc
		ld hl, ($8B1D)
		ld c, b
		ld b, $00
		add hl, bc
		ld ($8B1D), hl
		pop bc
		pop hl
		ret
	
_LABEL_1D6E_:	
		ld hl, $9CF0
		push af
		ld bc, ($8B1D)
		srl b
		ld a, c
		rra
		ld c, a
		pop af
		push de
		push bc
		call _LABEL_1D94_
		pop bc
		pop de
		inc de
		push de
		push bc
		call _LABEL_1D94_
		pop bc
		pop de
		cp $02
		jr z, +
		inc de
		call _LABEL_1D94_
+:	
		ret
	
_LABEL_1D94_:	
		ldi
		jp pe, +
		ret
	
+:	
		inc de
		cp $02
		jr z, _LABEL_1D94_
		inc de
		jr _LABEL_1D94_
	
_LABEL_1DA2_:	
		ld b, $02
-:	
		push bc
		call +
		pop bc
		dec b
		jr nz, -
		ret
	
+:	
		ld b, $10
-:	
		ld a, (hl)
		srl a
		srl a
		srl a
		srl a
		ld (de), a
		inc de
		inc de
		inc hl
		inc hl
		djnz -
		xor a
		ld bc, $0020
		sbc hl, bc
		ld bc, $0010
		ex de, hl
		sbc hl, bc
		ex de, hl
		jr +
	
+:	
		ld b, $08
-:	
		ld a, (hl)
		sla a
		sla a
		sla a
		sla a
		ex de, hl
		ld c, (hl)
		ex de, hl
		or c
		ld (de), a
		inc de
		inc de
		inc hl
		inc hl
		djnz -
		ld b, $08
		jr _LABEL_1DE8_
	
_LABEL_1DE8_:	
		ld a, (hl)
		sla a
		sla a
		sla a
		sla a
		ld (de), a
		inc de
		inc de
		inc hl
		inc hl
		djnz _LABEL_1DE8_
		ret
	
_LABEL_1DF9_:	
		call _LABEL_2C76_
		call _LABEL_E08_
		call _LABEL_2091_
		call _LABEL_35B0_
		ld a, $01
		ld ($8AE4), a
		call _LABEL_1EB5_
		ld hl, _DATA_4D2F_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9650
		call _LABEL_1D6E_
		ld hl, _DATA_4E0A_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9880
		call _LABEL_1D6E_
		ld hl, _DATA_48F0_ + 2
		ld de, $0073
		ld b, $23
		call _LABEL_36AA_
		call _LABEL_36AA_
		ld hl, _DATA_48F0_ + 2
		ld de, $0173
		call _LABEL_36AA_
		call _LABEL_36AA_
		ld hl, _DATA_48F0_ + 2
		ld de, $0273
		call _LABEL_36AA_
		call _LABEL_36AA_
		ld b, $01
-:	
		push bc
		call _LABEL_1F18_
		ld a, ($8AE4)
		or a
		jr z, _LABEL_1E9D_
		call _LABEL_2227_
		ld de, $0201
		call _LABEL_222A_
		call _LABEL_1C91_
		ld a, ($8AE4)
		or a
		jr z, _LABEL_1E9D_
		call +
		jr nz, _LABEL_1E9D_
		call _LABEL_1EE4_
		pop bc
		djnz -
		push bc
		call _LABEL_2091_
		ld hl, $C1FE
		ld ($8AE5), hl
		xor a
		ld ($8AE7), a
		ld a, $07
		ld ($8ACA), a
		ld a, $06
		ld (_RAM_C101_), a
		call _LABEL_121E_
		ld a, ($8AE4)
		or a
		jr z, _LABEL_1E9D_
		pop bc
		jp _LABEL_1DF9_
	
_LABEL_1E9D_:	
		pop bc
		xor a
		ld ($8AE4), a
		rst $30	; _LABEL_30_
		call _LABEL_2640_
		call _LABEL_1EE4_
		ret
	
+:	
		ld b, $80
-:	
		call _LABEL_242A_
		jr nz, +
		djnz -
		xor a
+:	
		ret
	
_LABEL_1EB5_:	
		call _LABEL_1EE4_
		ld hl, $0000
		ld de, $0400
		add hl, de
		ld bc, $1400
		xor a
		call _LABEL_18E_
		ld hl, $2000
		ld de, $0400
		add hl, de
		ld bc, $1400
		ld a, $11
		call _LABEL_18E_
		ld b, $08
		ld hl, $0000
-:	
		ld a, $3F
		rst $28	; _LABEL_28_
		inc b
		ld a, b
		cp $0E
		ret z
		jr -
	
_LABEL_1EE4_:	
		ld l, $04
		ld e, $17
-:	
		call +
		ex de, hl
		call +
		ex de, hl
		call _LABEL_242A_
		inc l
		inc l
		dec e
		dec e
		ld a, l
		cp $18
		jr nz, -
		ret
	
+:	
		rst $08	; _LABEL_8_
+:	
		call +
		ld b, $20
-:	
		xor a
		call _LABEL_164_
		inc hl
		djnz -
		rst $10	; _LABEL_10_
		ret
	
+:	
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, $1800
		add hl, de
		ret
	
_LABEL_1F18_:	
		ld a, $8A
		rst $30	; _LABEL_30_
		ld a, $01
		ld ($8ACA), a
		ld hl, _DATA_297A_
-:	
		call _LABEL_1F75_
		jr z, +
		ex de, hl
		call _LABEL_1F7E_
		ex de, hl
		call _LABEL_242A_
		jr z, -
		xor a
		ld ($8AE4), a
		ret
	
+:	
		ld hl, _DATA_297A_
		ld c, $00
		call _LABEL_1F4E_
		ret z
		ld a, $01
		ld ($8ACA), a
		ld hl, _DATA_29DE_
		ld c, $01
		call _LABEL_1F4E_
		ret
	
_LABEL_1F4E_:	
		call _LABEL_1F75_
		jr z, +
		ex de, hl
		call _LABEL_1F7E_
		call _LABEL_242A_
		jr nz, ++
		call +++
		ex de, hl
		jr _LABEL_1F4E_
	
+:	
		dec hl
		dec hl
		call _LABEL_1F75_
		ex de, hl
		call _LABEL_1F7E_
		ex de, hl
		ld a, $01
		or a
		ret
	
++:	
		xor a
		ld ($8AE4), a
		ret
	
_LABEL_1F75_:	
		ld a, (hl)
		cp $80
		ret z
		ld d, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ret
	
_LABEL_1F7E_:	
		push bc
		push de
		ld d, $73
-:	
		push hl
		push hl
		call ++++
		pop hl
		ld a, $07
		add a, h
		ld h, a
		call ++++
		pop hl
		pop de
		pop bc
		ret
	
+++:	
		ld a, c
		or a
		jr nz, +
		push bc
		push de
		ld d, $00
		jr -
	
+:	
		push hl
		push bc
		ld a, $04
		add a, l
		ld l, a
		ld b, $0E
		call _LABEL_3488_
		pop bc
		pop hl
		ret
	
++++:	
		ld bc, $0705
--:	
		push hl
		push bc
-:	
		push hl
		push bc
		ld a, l
		cp $04
		jr c, +
		cp $18
		jr nc, +
		ld a, h
		cp $20
		jr nc, +
		push de
		call _LABEL_3CD3_
		pop de
		ld a, d
		call _LABEL_164_
+:	
		pop bc
		pop hl
		ld a, d
		or a
		jr z, +
		inc d
+:	
		inc h
		djnz -
		pop bc
		pop hl
		inc l
		dec c
		jr nz, --
		ret
	
_LABEL_1FDA_:	
		ld h, $1D
		ld l, c
-:	
		call ++
		call _LABEL_242A_
		jr nz, +
		call +++++
		dec h
		ld a, h
		cp b
		jr nz, -
		call ++
		ld a, $01
		or a
		ret
	
+:	
		xor a
		ld ($8AE4), a
		ret
	
++:	
		rst $08	; _LABEL_8_
+:	
		ld c, $01
--:	
		ld b, $00
-:	
		ld a, (de)
		cp $40
		jr z, ++++
		ld a, h
		cp $20
		jr nc, +++
		ld a, c
		or a
		jr z, +
		ld a, (de)
		jr ++
	
+:	
		ld a, $20
++:	
		call _LABEL_34A8_
+++:	
		inc de
		inc h
		jr -
	
++++:	
		rst $10	; _LABEL_10_
		ret
	
+++++:	
		rst $08	; _LABEL_8_
+:	
		ld c, $00
		jr --
	
_LABEL_201F_:	
		xor a
		ld ($8B22), a
		ld hl, _DATA_5DB5_
		ld de, $8E10
		call _LABEL_1D3C_
		ld hl, _DATA_6380_
		ld de, $9610
		ld bc, $0040
		call _LABEL_1CEC_
		ld hl, _DATA_4852_
		ld de, $C200
		ld bc, $0100
		call _LABEL_1CEC_
		ei
		call _LABEL_E2_
		call _LABEL_12D_
		ld c, $01
		ld b, $E2
		call _LABEL_D9_
		ld hl, $4A22
		ld ($8AD7), hl
		ld hl, $1800
		ld bc, $0300
-:	
		xor a
		call _LABEL_164_
		inc hl
		dec bc
		ld a, b
		or c
		jr nz, -
		ld de, (_DATA_4A1E_)
		ld hl, (_DATA_4A1E_ + 2)
		or a
		sbc hl, de
		ld b, h
		ld c, l
		ex de, hl
		ld de, $3800
		call _LABEL_156_
		ld b, $03
		xor a
		ld hl, $832E
-:	
		ld (hl), a
		inc hl
		djnz -
		ld a, $07
		ld e, $98
		xor a
		ld (_RAM_F3DB_), a
		ld ($8AE4), a
		ret
	
_LABEL_2091_:	
		ld a, $05
		ld ($8324), a
		ld a, $70
		ld ($8320), a
		ld a, $06
		ld ($8333), a
		ld a, $01
		ld ($8321), a
		ld a, $07
		ld ($8ACA), a
		ld a, $06
		ld (_RAM_C101_), a
		ld a, $00
		ld ($8322), a
		ld a, $11
		ld ($8323), a
		xor a
		ld ($8B23), a
		ld ($8B1B), a
		ld b, $09
		xor a
		ld hl, $8325
-:	
		ld (hl), a
		inc hl
		djnz -
		ld ($8331), a
		ld ($8332), a
		ld ($8AE8), a
		ld ($8B1A), a
		ld hl, $8000
		ld de, $8001
		ld bc, $000C
		ld (hl), $00
		ldir
		ld hl, $800D
		ld de, $800E
		ld bc, $02C5
		ld (hl), $FF
		ldir
		ld b, $00
-:	
		ld hl, $00FF
		ld a, $3F
		rst $28	; _LABEL_28_
		inc b
		ld a, b
		cp $03
		jr nz, -
-:	
		ld hl, $000F
		ld a, $3F
		rst $28	; _LABEL_28_
		inc b
		ld a, b
		cp $06
		jr nz, -
		call _LABEL_226E_
		call _LABEL_225D_
		ld hl, _DATA_4ED2_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9660
		call _LABEL_1D6E_
		ld hl, _DATA_4BC6_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9820
		call _LABEL_1D6E_
		ld hl, _DATA_5CB0_
		call _LABEL_1D32_
		ld a, $02
		ld de, $99E0
		call _LABEL_1D6E_
		ld hl, _DATA_4FA8_
		call _LABEL_1D32_
		ld a, $02
		ld de, $99F0
		call _LABEL_1D6E_
		ld hl, _DATA_4FCC_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9A30
		call _LABEL_1D6E_
		ld hl, _DATA_4FE0_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9A50
		call _LABEL_1D6E_
		call _LABEL_223E_
		ld hl, _DATA_4906_ - 2
		ld de, $000D
		ld b, $01
		call _LABEL_36AA_
		ld hl, _DATA_48F6_
		ld b, $1C
		call _LABEL_36AA_
		ld hl, _DATA_48F0_
		call _LABEL_36AA_
		ld hl, _DATA_4906_
		ld b, $01
		call _LABEL_36AA_
		ld hl, _DATA_48FE_
		ld b, $0A
		call _LABEL_36AA_
		ld hl, _DATA_48F6_ + 2
		ld b, $04
		call _LABEL_36AA_
		ld b, $02
		call _LABEL_36AA_
		call _LABEL_36AA_
		ld hl, _DATA_4902_ - 2
		ld b, $1A
		call _LABEL_36AA_
		call _LABEL_2227_
		ld hl, $1100
		ld bc, $0704
		ld a, $0E
		call _LABEL_36C2_
		ld a, $2A
		call _LABEL_22A0_
		ld hl, $0100
		ld bc, $0301
		ld a, $52
		call _LABEL_36C2_
		ld hl, $0900
		ld bc, $0401
		ld a, $51
		call _LABEL_36C2_
		ld hl, $0102
		ld bc, $0201
		ld a, $55
		call _LABEL_36C2_
		ld hl, $0103
		ld bc, $0201
		ld a, $57
		call _LABEL_36C2_
		ld a, ($8AE4)
		or a
		jr nz, ++
		ld a, ($8321)
		bit 3, a
		jr z, +
		call _LABEL_35BB_
		or a
		ret
	
+:	
		ld hl, $1301
		ld de, $002C
		ld c, $59
		ld b, $01
		call _LABEL_3499_
		inc l
		ld de, $0034
		call _LABEL_3499_
		or a
		ret
	
++:	
		ld hl, $1201
		ld de, _DATA_2970_
		ld c, $59
		ld b, $01
		call _LABEL_3499_
		ld hl, $1302
		ld de, $2975
		call _LABEL_3499_
		or a
		ret
	
_LABEL_2227_:	
		ld de, $0101
_LABEL_222A_:	
		call _LABEL_223E_
		ld hl, _DATA_4902_ - 2
		ld b, $1C
		call _LABEL_36AA_
		ld hl, _DATA_48FE_
		ld b, $0A
		call _LABEL_36AA_
		ret
	
_LABEL_223E_:	
		push de
		ld hl, _DATA_5044_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9A70
		call _LABEL_1D6E_
		ld hl, _DATA_4FF4_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9C30
		call _LABEL_1D6E_
		pop de
		ret
	
_LABEL_225D_:	
		rst $08	; _LABEL_8_
+:	
		ld hl, _DATA_5CA4_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9650
		call _LABEL_1D6E_
		rst $10	; _LABEL_10_
		ret
	
_LABEL_226E_:	
		ld hl, _DATA_5C90_
		call _LABEL_1D32_
		ld a, $02
		ld de, $9CD0
		call _LABEL_1D6E_
		ld hl, _DATA_4902_
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $0001
		ld b, $06
		ld ix, _DATA_4016_
-:	
		rst $08	; _LABEL_8_
+:	
		add hl, hl
		add hl, hl
		add hl, hl
		ld a, (ix+0)
		call _LABEL_22DE_
		call _LABEL_22DE_
		rst $10	; _LABEL_10_
		inc ix
		inc hl
		inc hl
		djnz -
		ret
	
_LABEL_22A0_:	
		push af
		ld c, $33
		or a
		jr nz, +
		ld c, $3F
+:	
		ld a, c
		ld hl, $C0FF
		ld b, $06
		rst $28	; _LABEL_28_
		ld a, c
		ld hl, $C00F
		inc b
		rst $28	; _LABEL_28_
		pop af
		push af
		ld c, $46
		or a
		jr nz, +
		ld c, $00
+:	
		ld a, c
		ld hl, $1F00
		ld b, $04
-:	
		push af
		push hl
		push bc
		call _LABEL_3CD3_
		call _LABEL_164_
		pop bc
		pop hl
		pop af
		inc l
		djnz -
		pop af
		ld hl, $1800
		ld bc, $0704
		call _LABEL_36C2_
		ret
	
_LABEL_22DE_:	
		ld b, $08
-:	
		push af
		call _LABEL_3F21_
		pop af
		djnz -
		ret
	
_LABEL_22E8_:	
		xor a
		ld ($8B22), a
		ld a, $01
		ld ($8AE4), a
		xor a
		ld ($8B0D), a
		ld ($8B15), a
		ld a, $8C
		rst $30	; _LABEL_30_
		ld a, ($8324)
		ld ($8336), a
		call _LABEL_3094_
		ld hl, $090D
		ld bc, $0E03
-:	
		call _LABEL_3488_
		inc l
		dec c
		jr nz, -
		ld hl, $0B0E
		ld de, $368D
		ld bc, $0201
		call _LABEL_3499_
		ld a, $30
		ld ($8B21), a
		ld a, $02
		ld ($8B15), a
		xor a
		ld ($8B1F), a
-:	
		call _LABEL_242A_
		ld hl, $8B21
		dec (hl)
		jr nz, -
		ld a, ($8B20)
		or a
		jr z, +++
		cp $01
		jr nz, +
		ld de, $0321
		jr ++
	
+:	
		ld de, $032C
++:	
		ld hl, $0B0E
		ld bc, $0201
		call _LABEL_3499_
		ld a, $60
		call _LABEL_280C_
+++:	
		ret
	
_LABEL_2355_:	
		or a
		ret z
		push af
		call _LABEL_3359_
		ld a, ($8321)
		bit 3, a
		jr z, +
		call _LABEL_33FD_
		ld c, $07
		ld a, ($8320)
		call _LABEL_3624_
+:	
		ld a, ($8AE2)
		or a
		jr z, +
		ld hl, $800D
		ld de, $800E
		ld bc, $00D1
		ld (hl), $00
		ldir
+:	
		pop af
		push af
		cp $01
		jr nz, +
		ld a, ($8320)
		sub $10
		daa
		ld ($8320), a
		ld a, $11
		ld ($8335), a
		jr ++
	
+:	
		cp $03
		jr nz, +
		ld a, ($8320)
		add a, $01
		daa
		ld ($8320), a
		xor a
		ld ($8334), a
		jr ++
	
+:	
		cp $05
		jr nz, +
		ld a, ($8320)
		add a, $10
		daa
		ld ($8320), a
		xor a
		ld ($8335), a
		jr ++
	
+:	
		cp $07
		jr nz, ++
		ld a, ($8320)
		sub $01
		daa
		ld ($8320), a
		ld a, $1C
		ld ($8334), a
++:	
		ld hl, $8334
		ld de, $8322
		ld bc, $0012
		ldir
		ld a, ($8321)
		bit 3, a
		jr z, +
		ld c, $0F
		ld a, ($8320)
		call _LABEL_3624_
+:	
		pop af
		ret
	
_LABEL_23EA_:	
		push bc
		ld a, ($8AC9)
		ld c, a
		call _LABEL_1BB_
		or a
		jr z, +
		bit 0, c
		jr nz, +
		ld ($8ACC), a
+:	
		ld a, ($8AE4)
		or a
		jr nz, +
		call _LABEL_19D_
		or a
		jr z, +
		bit 0, c
		jr nz, +
		ld ($8ACB), a
+:	
		ld a, ($8B15)
		cp $01
		jr nz, +
		ld a, ($8B0D)
		and $30
		jr z, +
		ld a, $FE
		ld ($8AD5), a
		ld a, ($8AE4)
		or a
		jr z, +
+:	
		pop bc
		ret
	
_LABEL_242A_:	
		rst $08	; _LABEL_8_
+:	
		ld a, ($8ACA)
		call _LABEL_280C_
		ld a, ($8AE4)
		or a
		jr z, _LABEL_2477_
		ld a, ($8AE8)
		or a
		jr z, _LABEL_2477_
		rst $18	; _LABEL_18_
		jr nz, _LABEL_2477_
		ld hl, ($8AE5)
		ld a, ($8AE7)
		or a
		jr nz, +
		inc hl
		inc hl
		ld ($8AE5), hl
		inc hl
		ld a, (hl)
		dec hl
+:	
		dec a
		ld ($8AE7), a
		ld a, (hl)
		and $0F
		ld ($8ACB), a
		ld a, (hl)
		bit 4, a
		jr z, +
		ld a, $FF
		jr ++
	
+:	
		xor a
++:	
		ld ($8ACC), a
		push de
		ld de, $C300
		call _LABEL_2F6C_
		pop de
		jr c, _LABEL_2477_
		ld a, $01
		ld ($8AE3), a
_LABEL_2477_:	
		ld hl, $8ACD
		ld b, $09
-:	
		ld a, (hl)
		cp $FF
		jr nz, +
		inc hl
		djnz -
		xor a
+:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_2487_:	
		xor a
		ld ($8B22), a
		call _LABEL_2699_
		ld hl, $0013
		ld c, $01
-:	
		ld d, $00
		rst $20	; _LABEL_20_
		inc h
		ld a, h
		cp $1E
		jr nz, -
		ld ix, _DATA_29EE_
-:	
		ld c, (ix+0)
		ld a, $FF
		cp c
		jr z, +
		ld a, ($8320)
		cp c
		jr nz, ++
		ld a, ($8334)
		ld c, (ix+1)
		cp c
		jr nz, ++
		ld a, ($8335)
		ld c, (ix+2)
		cp c
		jr nz, ++
+:	
		ld l, (ix+3)
		ld h, (ix+4)
		call _LABEL_14EF_
		call $8AFA
		ld a, $FF
		ld ($8B22), a
		ret
	
++:	
		ld bc, $0005
		add ix, bc
		jr -
	
_LABEL_24D9_:	
		xor a
		ld ($8B22), a
		ld a, ($8ACA)
		ld ($8B16), a
		ld a, $07
		ld ($8ACA), a
		ld a, $06
		ld (_RAM_C101_), a
		ld a, $8D
		rst $30	; _LABEL_30_
		ld hl, $8336
		inc (hl)
		call _LABEL_2699_
		ld hl, $0000
		ld c, $02
		call _LABEL_25FB_
		ld hl, $0001
		ld de, $0012
		call _LABEL_260D_
		ld hl, $1C01
		ld de, $000D
		call _LABEL_260D_
		ld hl, $140E
-:	
		push hl
		ld c, $02
		call _LABEL_25FB_
		pop hl
		inc l
		dec h
		dec h
		dec h
		dec h
		ld a, l
		cp $14
		jr nz, -
		ld hl, $190C
		ld c, $20
		ld d, $00
		call _LABEL_42F5_
		ld a, $02
		ld ($8334), a
		ld a, $11
		ld ($8335), a
		call _LABEL_418A_
		ld a, $06
		call _LABEL_416E_
		ld hl, $2BBA
		ld ($8AFE), hl
		ld hl, $0015
		ld ($8B05), hl
		xor a
		ld ($8B07), a
		ld ($8AE3), a
		ld hl, $0096
		ld ($8B08), hl
-:	
		call _LABEL_242A_
		call _LABEL_2855_
		call _LABEL_293B_
		ld hl, $8AC9
		inc (hl)
		ld a, ($8AE3)
		or a
		jr z, -
-:	
		call _LABEL_242A_
		call _LABEL_2855_
		ld hl, $8AC9
		inc (hl)
		ld a, (hl)
		cp $53
		jr c, -
		call _LABEL_2640_
		ld hl, $190C
		ld c, $00
		ld d, $00
		call _LABEL_42ED_
		ld a, $2C
		call _LABEL_2631_
		call _LABEL_242A_
		ld a, $2D
		call _LABEL_2631_
		call _LABEL_242A_
		ld a, $2E
		call _LABEL_2631_
		ld hl, $170A
		ld a, $3B
		ld b, $08
		call _LABEL_2624_
		inc h
		inc h
		call _LABEL_2624_
		inc l
		inc l
		dec h
		dec h
		call _LABEL_2624_
		inc h
		inc h
		call _LABEL_2624_
		ld hl, $180E
		ld bc, $0404
		ld a, $9F
		call _LABEL_36C2_
		call _LABEL_242A_
		ld a, $3F
		ld hl, $0000
		call _LABEL_2634_
		call _LABEL_264F_
		ld b, $40
-:	
		call _LABEL_242A_
		djnz -
		call _LABEL_37CD_
		xor a
		ld ($8AE3), a
		ld hl, $2C11
		ld ($8AFE), hl
-:	
		call _LABEL_242A_
		call _LABEL_293B_
		ld a, ($8AE3)
		or a
		jr z, -
		ld a, $A0
		call _LABEL_280C_
		call _LABEL_280C_
		ret
	
_LABEL_25FB_:	
		ld a, l
		and $01
		ld d, a
		rst $20	; _LABEL_20_
		inc h
		ld a, d
		xor $01
		ld d, a
		rst $20	; _LABEL_20_
		inc h
		ld a, h
		cp $1E
		jr nz, _LABEL_25FB_
		ret
	
_LABEL_260D_:	
		ld ($8ADD), de
		ld c, $06
-:	
		push hl
		push de
		call _LABEL_3A68_
		call _LABEL_3A96_
		pop de
		pop hl
		inc l
		dec de
		ld a, d
		or e
		jr nz, -
		ret
	
_LABEL_2624_:	
		push hl
		push af
		push bc
		call _LABEL_4192_
		pop bc
		pop af
		rst $28	; _LABEL_28_
		pop hl
		inc a
		inc b
		ret
	
_LABEL_2631_:	
		ld hl, $170C
_LABEL_2634_:	
		ld b, $0C
		call _LABEL_2624_
		dec a
		inc h
		inc h
		call _LABEL_2624_
		ret
	
_LABEL_2640_:	
		ld hl, $0000
		ld b, $08
-:	
		ld a, $3F
		rst $28	; _LABEL_28_
		inc b
		ld a, b
		cp $0B
		jr nz, -
		ret
	
_LABEL_264F_:	
		ld hl, $1807
		ld a, $AF
		ld ($8AFD), a
-:	
		call +
		dec l
		ld a, l
		cp $03
		jr nz, -
		ld hl, $1807
		xor a
		ld ($8AFD), a
-:	
		call +
		dec l
		ld a, l
		cp $04
		jr nz, -
		ld b, $03
-:	
		call _LABEL_242A_
		djnz -
		ld hl, $1804
		call +
		ret
	
+:	
		push hl
		push hl
		call +
		pop hl
		inc h
		call +
		call _LABEL_242A_
		pop hl
		ret
	
+:	
		ld b, h
		ld c, l
		call _LABEL_3CC3_
		ld a, ($8AFD)
		call _LABEL_164_
		ret
	
_LABEL_2699_:	
		call _LABEL_37A4_
		call _LABEL_37CD_
		call _LABEL_2227_
		ld de, $0938
		call _LABEL_2818_
		ld de, $0201
		call _LABEL_222A_
		ld de, $1138
		call _LABEL_2818_
		ld hl, _DATA_490A_ - 2
		ld de, $019F
		ld b, $10
		call _LABEL_36AA_
		call _LABEL_225D_
		ld hl, _DATA_4906_ - 2
		ld b, $01
		call _LABEL_36AA_
		ld hl, _DATA_490A_ - 2
		ld de, $029F
		ld b, $10
		call _LABEL_36AA_
		ld a, $AF
		ld ($8A67), a
		ld ($8A68), a
		xor a
		ld ($8AC9), a
		ld ($8AD6), a
		ld ($8AE3), a
		ld ($8344), a
		ld ($8343), a
		ret
	
	; Data from 26EE to 280B (286 bytes)
	.db $3A $CA $8A $32 $16 $8B $3E $07 $32 $CA $8A $3E $06 $32 $01 $C1
	.db $3E $8B $F7 $3E $05 $32 $34 $83 $3E $11 $32 $35 $83 $CD $8A $41
	.db $3E $06 $CD $6E $41 $21 $FD $29 $22 $03 $8B $21 $2C $2B $22 $FE
	.db $8A $21 $15 $00 $22 $05 $8B $AF $32 $07 $8B $21 $5B $2C $22 $08
	.db $8B $CD $2A $24 $CD $2B $28 $CD $B2 $28 $CD $3B $29 $21 $C9 $8A
	.db $34 $3A $E3 $8A $B7 $28 $EA $AF $32 $E3 $8A $CD $2A $24 $CD $2B
	.db $28 $CD $55 $28 $21 $C9 $8A $34 $3A $C9 $8A $FE $7F $38 $EC $3E
	.db $90 $CD $0C $28 $3A $16 $8B $32 $CA $8A $06 $07 $B8 $3E $06 $28
	.db $02 $3E $04 $32 $01 $C1 $C9 $3A $21 $83 $CB $5F $CA $EE $26 $3A
	.db $CA $8A $32 $16 $8B $3E $07 $32 $CA $8A $3E $06 $32 $01 $C1 $3E
	.db $8B $F7 $CB $CF $32 $21 $83 $3E $05 $32 $34 $83 $3E $11 $32 $35
	.db $83 $CD $8A $41 $3E $06 $CD $6E $41 $21 $83 $2A $22 $03 $8B $21
	.db $69 $2B $22 $FE $8A $21 $24 $00 $22 $05 $8B $AF $32 $07 $8B $21
	.db $5B $2C $22 $08 $8B $CD $2A $24 $CD $2B $28 $CD $B2 $28 $CD $EC
	.db $28 $CD $3B $29 $21 $C9 $8A $34 $3A $E3 $8A $B7 $28 $E7 $AF $32
	.db $E3 $8A $CD $2A $24 $CD $2B $28 $CD $55 $28 $21 $C9 $8A $34 $3A
	.db $C9 $8A $FE $7F $38 $EC $3E $90 $CD $0C $28 $3A $16 $8B $32 $CA
	.db $8A $06 $07 $B8 $3E $06 $28 $02 $3E $04 $32 $01 $C1 $C9
	
_LABEL_280C_:	
		push hl
		ld hl, $8B11
		ld (hl), a
-:	
		ei
		halt
		dec (hl)
		jr nz, -
		pop hl
		ret
	
_LABEL_2818_:	
		ld bc, $03C0
		ld hl, _DATA_FEE_
		call _LABEL_156_
		set 5, h
		ld bc, $03C0
		ld a, $F0
		jp _LABEL_18E_
	
	; Data from 282B to 2854 (42 bytes)
	.db $CD $40 $28 $ED $53 $03 $8B $0E $00 $16 $00 $CD $ED $42 $CD $40
	.db $28 $CD $51 $28 $C9 $2A $03 $8B $CD $75 $1F $20 $07 $23 $5E $23
	.db $56 $EB $18 $F4 $EB $C9 $CF $C3 $E4 $46
	
_LABEL_2855_:	
		ld hl, ($8B08)
		ld a, (hl)
		cp $FF
		jr nz, +
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld ($8B08), de
		jr _LABEL_2855_
	
+:	
		cp $FE
		jr nz, +
		call _LABEL_418A_
		ld a, $06
		call _LABEL_416E_
		ret
	
+:	
		rst $18	; _LABEL_18_
		jr nz, +
		ld a, (hl)
		ld ($8ACB), a
		inc hl
		ld a, (hl)
		ld ($8ACC), a
		inc hl
		ld ($8B08), hl
+:	
		call _LABEL_1345_
		call _LABEL_41A1_
		ld a, ($8334)
		ld b, a
		ld a, ($8335)
		ld c, a
		call _LABEL_1C0E_
		and $04
		ret z
		rst $18	; _LABEL_18_
		ret nz
		ld h, b
		ld l, c
		ld c, $00
		ld d, $00
		call _LABEL_42ED_
		ld hl, $8338
		inc (hl)
		ld hl, $8326
		inc (hl)
		call _LABEL_303E_
		call _LABEL_242A_
		ret
	
	; Data from 28B2 to 293A (137 bytes)
	.db $3A $07 $8B $3C $32 $07 $8B $2A $05 $8B $4E $B9 $D8 $91 $FE $04
	.db $D0 $23 $56 $23 $5E $EB $FE $03 $28 $0E $F5 $CD $92 $41 $F1 $4F
	.db $3E $2E $91 $06 $0C $EF $18 $11 $E5 $21 $00 $00 $3E $3F $06 $0C
	.db $EF $E1 $0E $2B $16 $00 $CD $F5 $42 $C9 $3A $07 $8B $21 $27 $00
	.db $4E $B9 $C0 $3E $99 $F5 $0E $09 $CD $24 $36 $CD $2F $29 $F1 $D6
	.db $10 $30 $F2 $0E $63 $06 $99 $C5 $C5 $79 $21 $00 $80 $CD $18 $33
	.db $C1 $0E $04 $B7 $28 $02 $0E $07 $78 $CD $24 $36 $CD $2F $29 $C1
	.db $78 $D6 $10 $47 $79 $D6 $0A $4F $FE $09 $20 $DB $C9 $C5 $0E $20
	.db $06 $00 $10 $FE $0D $20 $F9 $C1 $C9
	
_LABEL_293B_:	
		ld hl, ($8AFE)
		ld a, (hl)
		inc hl
		ld ($8AFE), hl
		cp $FE
		jr nz, +
		ld a, $01
		ld ($8AE3), a
		jr ++
	
+:	
		cp $FD
		jr nz, +
		ld d, (hl)
		inc hl
		ld e, (hl)
		ld ($8B00), de
		inc hl
		ld ($8AFE), hl
		jr _LABEL_293B_
	
+:	
		push af
		ld hl, ($8B00)
		inc h
		ld ($8B00), hl
		dec h
		call _LABEL_3CD3_
		pop af
		call _LABEL_164_
++:	
		ret
	
; Data from 2970 to 2979 (10 bytes)	
_DATA_2970_:	
	.db $44 $45 $4D $4F $40 $47 $41 $4D $45 $40
	
; Data from 297A to 29DD (100 bytes)	
_DATA_297A_:	
	.db $FD $00 $15 $00 $15 $18 $FD $18 $FE $01 $14 $01 $14 $17 $FE $17
	.db $FF $02 $13 $02 $13 $16 $FF $16 $00 $03 $12 $03 $12 $15 $00 $15
	.db $01 $04 $11 $04 $11 $14 $01 $14 $02 $05 $10 $05 $10 $13 $02 $13
	.db $03 $06 $0F $06 $0F $12 $03 $12 $04 $07 $0E $07 $0E $11 $04 $11
	.db $05 $08 $0D $08 $0D $10 $05 $10 $06 $09 $0C $09 $0C $0F $06 $0F
	.db $07 $0A $0B $0A $0B $0E $07 $0E $08 $0B $0A $0B $0A $0D $08 $0D
	.db $09 $0C $80 $80
	
; Data from 29DE to 29ED (16 bytes)	
_DATA_29DE_:	
	.db $09 $0C $09 $0B $09 $0A $09 $09 $09 $08 $09 $07 $09 $06 $80 $80
	
; Data from 29EE to 2C75 (648 bytes)	
_DATA_29EE_:	
	.db $99 $18 $0E $EE $26 $50 $0C $06 $75 $27 $FF $FF $FF $EE $26 $1A
	.db $03 $19 $03 $18 $03 $17 $03 $16 $03 $15 $04 $15 $05 $16 $06 $17
	.db $07 $18 $07 $19 $07 $1A $06 $1B $05 $1B $04 $1A $03 $19 $03 $18
	.db $04 $18 $05 $17 $06 $16 $07 $15 $08 $14 $09 $13 $0A $12 $0B $11
	.db $0C $10 $0D $0F $0E $0E $0E $0D $0E $0C $0E $0B $0E $0A $0E $0A
	.db $0E $0A $0E $0A $0E $0B $0E $0C $0E $0D $0E $0E $0E $0F $0E $10
	.db $0D $11 $0C $12 $0B $13 $0A $14 $09 $15 $08 $16 $07 $17 $06 $18
	.db $05 $18 $04 $80 $64 $2A $17 $03 $16 $03 $15 $04 $15 $05 $16 $06
	.db $17 $07 $18 $07 $19 $07 $1A $06 $1B $05 $1B $04 $1A $03 $19 $03
	.db $18 $03 $80 $64 $2A $1B $03 $1A $03 $19 $03 $18 $03 $17 $02 $16
	.db $01 $15 $00 $15 $00 $15 $00 $15 $00 $14 $00 $13 $01 $13 $02 $13
	.db $03 $14 $04 $15 $05 $16 $05 $17 $05 $18 $05 $19 $05 $19 $05 $1A
	.db $05 $1A $05 $1B $04 $1A $04 $19 $04 $19 $04 $18 $04 $18 $04 $17
	.db $04 $17 $04 $16 $04 $16 $04 $15 $04 $16 $05 $17 $05 $17 $05 $18
	.db $04 $19 $03 $1A $03 $1B $04 $1B $05 $1B $05 $1A $06 $1A $06 $19
	.db $07 $18 $08 $17 $09 $16 $0A $15 $0B $14 $0C $13 $0C $12 $0D $11
	.db $0D $10 $0D $0F $0E $0E $0E $0D $0E $0C $0E $0B $0E $0A $0E $0A
	.db $0E $0A $0E $0A $0E $0B $0E $0C $0E $0D $0E $0E $0E $0F $0E $10
	.db $0D $11 $0D $12 $0D $13 $0C $14 $0C $15 $0B $16 $0A $17 $09 $18
	.db $08 $18 $07 $19 $06 $19 $05 $19 $04 $18 $03 $80 $64 $2A $FD $03
	.db $08 $2B $48 $4D $3C $2D $27 $63 $63 $FD $03 $09 $2E $4A $2C $3D
	.db $63 $2B $2F $2C $56 $60 $4C $63 $63 $FD $03 $0A $33 $34 $2B $4E
	.db $43 $35 $27 $63 $63 $63 $63 $FD $03 $0B $38 $2C $36 $3A $3D $63
	.db $3A $2F $29 $3B $63 $30 $52 $33 $2C $27 $FE $FD $03 $08 $2E $40
	.db $44 $33 $43 $3F $28 $63 $39 $50 $3E $63 $2B $2F $2C $FD $03 $09
	.db $34 $49 $34 $3E $63 $42 $46 $3D $28 $3C $47 $4B $4A $3B $2C $43
	.db $35 $27 $63 $63 $63 $FD $03 $0A $3F $46 $30 $28 $38 $35 $31 $3B
	.db $2B $4E $3B $30 $52 $33 $2C $27 $63 $63 $63 $63 $63 $FD $03 $0B
	.db $2B $2F $2C $56 $60 $45 $63 $53 $2D $51 $27 $FE $FD $04 $0A $5A
	.db $5D $5F $5C $2A $58 $40 $44 $63 $63 $FD $04 $0B $5B $59 $54 $55
	.db $5D $4D $FD $04 $0C $38 $35 $31 $3D $FD $04 $0D $43 $2C $48 $43
	.db $34 $38 $27 $63 $63 $63 $63 $FD $0F $08 $2B $2B $63 $2E $2D $4F
	.db $33 $43 $28 $63 $63 $FD $0F $09 $32 $3E $40 $4D $30 $49 $3E $4C
	.db $FD $0F $0A $43 $39 $32 $4D $4A $3B $FD $0F $0B $2E $48 $43 $34
	.db $38 $27 $FE $FD $05 $08 $37 $34 $3B $63 $41 $38 $48 $3F $28 $63
	.db $34 $2B $4B $36 $3D $63 $30 $47 $34 $43 $34 $38 $27 $63 $63 $63
	.db $FD $0A $0F $14 $63 $08 $63 $05 $63 $63 $63 $05 $63 $0E $63 $04
	.db $63 $63 $63 $63 $63 $63 $63 $63 $FD $08 $13 $62 $57 $5E $2A $61
	.db $63 $63 $06 $01 $09 $12 $19 $63 $14 $01 $0C $05 $FE $03 $01 $03
	.db $01 $03 $01 $03 $00 $03 $00 $03 $00 $07 $00 $07 $00 $07 $00 $07
	.db $00 $07 $00 $07 $00 $FF $91 $00
	
_LABEL_2C76_:	
		xor a
		ld hl, $1B00
		ld bc, $0080
		jp _LABEL_18E_
	
_LABEL_2C80_:	
		rst $08	; _LABEL_8_
+:	
		rst $18	; _LABEL_18_
		jp z, _LABEL_2D6B_
		ld a, ($8AE0)
		or a
		jr nz, +
		ld a, ($8343)
		or a
		jp nz, _LABEL_2D6B_
		ld a, ($8334)
		ld b, a
		ld a, ($8335)
		ld c, a
		call _LABEL_2D6D_
		jr nz, +
		inc b
		call _LABEL_2D6D_
		jr nz, +
		inc c
		call _LABEL_2D6D_
		jr nz, +
		dec b
		call _LABEL_2D6D_
		jp z, _LABEL_2D6B_
+:	
		ld a, ($8ACA)
		ld ($8B16), a
		ld a, $07
		ld ($8ACA), a
		ld a, $06
		ld (_RAM_C101_), a
		xor a
		ld ($8AC9), a
		ld b, $10
--:	
		push bc
		call _LABEL_242A_
		ld h, $00
		call _LABEL_2DAE_
		ld hl, $8AC9
		inc (hl)
-:	
		ld a, ($8B23)
		cp $FF
		jr z, -
		pop bc
		ld a, b
		cp $10
		jr nz, +
		ld a, $83
		rst $30	; _LABEL_30_
+:	
		djnz --
-:	
		call _LABEL_242A_
		xor a
		ld ($8ACB), a
		ld ($8ACC), a
		call _LABEL_1345_
		ld a, h
		bit 2, a
		jr z, +
		ld a, ($8335)
		cp $12
		jr nc, +
		call _LABEL_2DAE_
		ld hl, $8AC9
		inc (hl)
		jr -
	
+:	
		call _LABEL_418A_
		ld a, $0D
		call _LABEL_416E_
		ld b, $20
-:	
		call _LABEL_242A_
		djnz -
		ld hl, $8324
		dec (hl)
		ld hl, $8336
		dec (hl)
		ld a, ($8B16)
		ld ($8ACA), a
		ld b, $07
		cp b
		ld a, $06
		jr z, +
		ld a, $04
+:	
		ld (_RAM_C101_), a
		ld a, ($8AE0)
		or a
		jr nz, _LABEL_2D6B_
		inc a
		ld ($8AE0), a
		ld a, ($8AE4)
		or a
		jr z, +
		ld a, $01
		ld ($8AE3), a
+:	
		ld hl, $8336
		ld de, $8324
		ld bc, $000D
		ldir
		ld a, ($8331)
		or a
		jr z, +
		add a, $04
		ld ($8331), a
+:	
		ld a, ($8332)
		or a
		jr z, +
		add a, $04
		ld ($8332), a
+:	
		call _LABEL_3359_
_LABEL_2D6B_:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_2D6D_:	
		push bc
		ld a, c
		cp $14
		jr c, +
		xor a
		jr ++
	
+:	
		call _LABEL_1C0E_
		ld d, a
		and $80
		jr nz, ++
		ld a, d
		and $10
		jr z, ++
		ld de, $86EE
		add hl, de
		ld a, (hl)
		and $07
		ld d, a
		ld a, ($8AD6)
		cp $02
		jr c, +
		cp $11
		jr nc, +
		res 2, d
+:	
		ld a, ($8344)
		or a
		jr z, +
		res 1, d
+:	
		ld a, d
		or a
++:	
		pop bc
		ret
	
	; Data from 2DA4 to 2DAD (10 bytes)
	.db $E5 $D5 $3E $01 $32 $CA $8A $D1 $E1 $C9
	
_LABEL_2DAE_:	
		ld a, e
		cp $04
		jr nz, +
		ld a, ($8B12)
		cp $02
		ld a, $00
		ld ($8B12), a
		jr z, +
		ld a, $85
		rst $30	; _LABEL_30_
		ld a, $40
		call _LABEL_280C_
+:	
		bit 2, h
		jr nz, +++
--:	
		call _LABEL_418A_
-:	
		ld a, ($8AC9)
		and $03
		jr nz, +
		ld a, $07
		jr ++
	
+:	
		ld b, $09
		add a, b
++:	
		call _LABEL_416E_
		ret
	
+++:	
		rst $18	; _LABEL_18_
		jr nz, --
		ld a, ($8334)
		inc a
		add a, a
		add a, a
		add a, a
		ld h, a
		ld a, ($8335)
		inc a
		ld ($8335), a
		add a, $03
		add a, a
		inc a
		add a, a
		add a, a
		dec a
		ld l, a
		jr -
	
_LABEL_2DFC_:	
		rst $18	; _LABEL_18_
		ret nz
		ld a, ($8334)
		ld b, a
		ld a, ($8335)
		ld c, a
		call _LABEL_1C0E_
		and $04
		ret z
		ld ix, $83D6
		ld d, b
		ld e, c
		ld b, $10
_LABEL_2E14_:	
		push de
		push bc
		push ix
		ld h, (ix+2)
		ld l, (ix+3)
		call _LABEL_2F6C_
		jp nz, _LABEL_2F06_
		ld a, (ix+1)
		cp $23
		jr z, +
		call _LABEL_2F26_
+:	
		cp $20
		jr nz, +
		call _LABEL_2F14_
		call _LABEL_24D9_
		ld hl, $8321
		set 2, (hl)
		ld a, $01
		ld ($8AE3), a
		call _LABEL_1EE4_
		call _LABEL_2227_
		jp _LABEL_2F06_
	
+:	
		cp $21
		jr nz, +
		call _LABEL_2F14_
		call _LABEL_2487_
		call _LABEL_1EE4_
		call _LABEL_2227_
		call _LABEL_36DC_
		jp _LABEL_2F06_
	
+:	
		cp $22
		jr nz, +
		ld hl, $8321
		set 3, (hl)
		ld hl, $1100
		ld bc, $0704
		ld a, $0E
		call _LABEL_36C2_
		call _LABEL_35BB_
		jp _LABEL_2F06_
	
+:	
		cp $23
		jr nz, ++
		ld a, ($8343)
		cp $0A
		jp z, _LABEL_2F06_
		cp $00
		ld a, $0A
		ld ($8343), a
		jr nz, +
		xor a
		ld ($8344), a
		ld a, $82
		rst $30	; _LABEL_30_
		halt
+:	
		jr _LABEL_2F06_
	
++:	
		cp $24
		jr nz, ++
		ld a, ($8B1A)
		or a
		jr nz, +
		ld a, $10
		ld ($8344), a
		xor a
		ld ($8343), a
		ld a, $84
		rst $30	; _LABEL_30_
		halt
+:	
		jr _LABEL_2F06_
	
++:	
		cp $25
		jr nz, +
		ld a, $01
		ld ($8AE2), a
		jr _LABEL_2F06_
	
+:	
		cp $26
		jr nz, +
		call _LABEL_3087_
		jr _LABEL_2F06_
	
+:	
		ld c, a
		sub $27
		push af
		ld e, a
		ld d, $00
		call _LABEL_4192_
		push hl
		ld hl, _DATA_5D_
		add hl, de
		ld a, (hl)
		pop hl
		ld b, $0D
		rst $28	; _LABEL_28_
		ld a, $10
		ld ($8AF9), a
		pop af
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3698_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		call _LABEL_2FC9_
		ld a, c
		cp $2A
		jr c, _LABEL_2F06_
		sub $2A
		ld e, a
		ld d, $00
		ld hl, $8337
		add hl, de
		ld a, (hl)
		cp $FF
		jr z, _LABEL_2F06_
		inc (hl)
		call _LABEL_303E_
_LABEL_2F06_:	
		pop ix
		ld bc, $0004
		add ix, bc
		pop bc
		pop de
		dec b
		jp nz, _LABEL_2E14_
		ret
	
_LABEL_2F14_:	
		call _LABEL_1EB5_
		ld hl, $8334
		ld de, $8322
		ld bc, $0012
		ldir
		call _LABEL_3359_
		ret
	
_LABEL_2F26_:	
		push af
		push hl
		push af
		xor a
		ld (ix+0), a
		ld c, $00
		ld d, $00
		call _LABEL_42ED_
		pop af
		cp $21
		jr nz, +
		ld hl, $0000
		ld a, $3F
		ld b, $0B
		rst $28	; _LABEL_28_
+:	
		ld a, $87
		rst $30	; _LABEL_30_
		call _LABEL_242A_
		pop hl
		pop af
		ret
	
_LABEL_2F4A_:	
		push hl
		pop ix
		ld hl, $0000
		ld iy, $0000
		ld b, $10
-:	
		add ix, ix
		adc hl, hl
		add iy, iy
		call _LABEL_2F6C_
		jr c, +
		sbc hl, de
		inc iy
+:	
		djnz -
		ex de, hl
		push iy
		pop hl
		ret
	
_LABEL_2F6C_:	
		ld a, h
		cp d
		ret nz
		ld a, l
		cp e
		ret
	
_LABEL_2F72_:	
		push bc
		ld a, $10
		ld b, h
		ld c, l
		ld hl, $0000
-:	
		sla e
		rl d
		jr c, +
		dec a
		jr z, ++
		jr -
	
-:	
		dec a
		jr z, ++
		add hl, hl
		sla e
		rl d
		jr nc, -
+:	
		add hl, bc
		jr -
	
++:	
		pop bc
		add hl, bc
		ret
	
_LABEL_2F95_:	
		push hl
		push bc
		call _LABEL_42DD_
		push hl
		xor a
		ld (ix+0), a
		ld c, a
		ld d, a
		call _LABEL_42ED_
		pop hl
		call _LABEL_2FAB_
		pop bc
		pop hl
		ret
	
_LABEL_2FAB_:	
		ld a, $86
		rst $30	; _LABEL_30_
		call _LABEL_4192_
		ld a, $2C
-:	
		push af
		ld b, $0C
		rst $28	; _LABEL_28_
		call _LABEL_242A_
		pop af
		inc a
		cp $2F
		jr nz, -
		ld a, $3F
		ld b, $0C
		ld hl, $0000
		rst $28	; _LABEL_28_
		ret
	
_LABEL_2FC9_:	
		push bc
		ld hl, $833F
		ld a, (hl)
		add a, e
		daa
		ld (hl), a
		dec hl
		ld a, (hl)
		adc a, d
		daa
		ld (hl), a
		dec hl
		call c, _LABEL_3087_
		ld a, (hl)
		adc a, $00
		daa
		ld (hl), a
		ld de, $8340
		ld hl, $833D
		ld b, $03
-:	
		ld a, (de)
		ld c, (hl)
		cp c
		jr c, +
		jr nz, ++
		inc de
		inc hl
		djnz -
+:	
		ld hl, $833D
		ld de, $8340
		ld bc, $0003
		ldir
++:	
		call _LABEL_3002_
		pop bc
		ret
	
_LABEL_3002_:	
		ld hl, $833D
		ld de, $0022
		call +
		ld hl, $8340
		ld de, $002A
		call +
		ret
	
+:	
		ld b, $03
-:	
		call +
		inc de
		inc de
		inc hl
		djnz -
		ret
	
+:	
		rst $08	; _LABEL_8_
+:	
		xor a
		rld
		ld b, a
		rld
		ld c, a
		rld
		ex de, hl
		ld de, $1800
		add hl, de
		ld a, b
		add a, $47
		call _LABEL_164_
		inc hl
		ld a, c
		add a, $47
		call _LABEL_164_
		rst $10	; _LABEL_10_
		ret
	
_LABEL_303E_:	
		ld de, $1800
		ld hl, $0043
		add hl, de
		ld de, $8337
		ld c, $01
		ld b, $0E
--:	
		ld a, (de)
		push de
		push hl
		push bc
		ld l, a
		ld h, $00
		ld de, $0005
		call _LABEL_2F4A_
		pop bc
		ld d, l
		inc d
		inc e
		pop hl
-:	
		dec d
		jr z, +
		ld a, c
		call _LABEL_164_
		inc hl
		djnz -
		jr ++
	
+:	
		inc c
-:	
		dec e
		jr z, +++
		ld a, c
		call _LABEL_164_
		inc hl
		djnz -
++:	
		pop de
		ret
	
+++:	
		pop de
		inc c
		inc de
		ld a, c
		cp $0D
		jr nz, --
--:	
		xor a
		call _LABEL_164_
		inc hl
		djnz --
		ret
	
_LABEL_3087_:	
		push af
		push hl
		ld hl, $8336
		ld a, (hl)
		inc (hl)
		call _LABEL_3094_
		pop hl
		pop af
		ret
	
_LABEL_3094_:	
		ld de, $1800
		ld hl, $0063
		add hl, de
		ld a, ($8336)
		or a
		ret z
		dec a
		cp $0E
		jr c, +
		ld a, $0E
+:	
		ld c, a
		inc c
		ld b, $0E
-:	
		dec c
		jr z, --
		ld a, $0D
		call _LABEL_164_
		inc hl
		djnz -
		ret
	
_LABEL_30B7_:	
		push hl
		ld a, c
		cp $1B
		jr nc, +
---:	
		push hl
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_47C0_
		add hl, bc
--:	
		ld d, (hl)
		inc hl
		ld e, (hl)
_LABEL_30C9_:	
		pop bc
		call _LABEL_1BFD_
		ld bc, $8496
		add hl, bc
		ld (hl), d
		ld bc, $0258
		add hl, bc
		ld (hl), e
		jp _LABEL_314F_
	
+:	
		cp $1F
		jr nc, +
		sub $1B
-:	
		push hl
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_47F6_
		add hl, bc
		ld a, d
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		jp --
	
+:	
		jr nz, +
		sub $06
		jr ---
	
+:	
		cp $30
		jr nc, +
		ld a, $04
		jp -
	
+:	
		cp $40
		jr nc, +++
		ld a, e
		add a, a
		add a, a
		add a, a
		ld e, a
		res 7, e
		ld a, c
		cp $35
		jr nc, +
		ld d, $A8
-:	
		push hl
		jp _LABEL_30C9_
	
+:	
		jr nz, ++
		ld a, d
		cp $02
		jr nc, +
		set 0, e
		ld d, $18
		jr -
	
+:	
		ld d, $A8
		jr -
	
++:	
		set 7, e
		cp $36
		jr nz, +
		ld a, d
		cp $02
		jr nc, +
		set 2, e
		ld d, $38
		jr -
	
+:	
		set 0, e
		ld d, $38
		jr -
	
+++:	
		cp $55
		jr nc, +
		ld d, $A0
		jr -
	
+:	
		ld d, $A2
		jr -
	
_LABEL_314F_:	
		pop hl
		ret
	
_LABEL_3151_:	
		push af
		push hl
		push bc
		ld b, a
		cp $30
		jp c, _LABEL_31D9_
		cp $36
		jr nc, ++
		ld a, ($8492)
		ld e, a
		inc a
		ld ($8492), a
		ld d, $00
		rst $08	; _LABEL_8_
+:	
		ld hl, $0005
		ld bc, $8386
		call _LABEL_2F72_
		push hl
		call _LABEL_32D7_
		add hl, hl
		ld de, $80DF
		add hl, de
		pop ix
		pop bc
		pop de
		ld a, e
		call _LABEL_3318_
		pop hl
		ld (ix+0), a
		ld (ix+1), b
		ld (ix+2), h
		ld (ix+3), l
		ld (ix+4), $00
		jp _LABEL_320B_
	
++:	
		ld a, ($8494)
		ld e, a
		inc a
		ld ($8494), a
		ld d, $00
		rst $08	; _LABEL_8_
+:	
		ld hl, $0005
		ld bc, $8416
		call _LABEL_2F72_
		push hl
		call _LABEL_32D7_
		ld de, $826F
		add hl, de
		pop ix
		pop bc
		pop de
		ld a, e
		call _LABEL_3318_
		pop hl
		ld (ix+0), a
		push af
		ld (ix+1), b
		ld (ix+2), h
		ld (ix+3), l
		bit 5, c
		jr nz, +
		ld a, $01
		jr ++
	
+:	
		ld a, $03
++:	
		ld (ix+4), a
		pop af
		jr _LABEL_320B_
	
_LABEL_31D9_:	
		ld a, ($8493)
		ld e, a
		inc a
		ld ($8493), a
		ld d, $00
		rst $08	; _LABEL_8_
+:	
		ld hl, $0004
		ld bc, $83D6
		call _LABEL_2F72_
		push hl
		call _LABEL_32D7_
		add hl, hl
		ld de, $81A7
		add hl, de
		pop ix
		pop bc
		pop de
		ld a, e
		call _LABEL_3318_
		pop hl
		ld (ix+0), a
		ld (ix+1), b
		ld (ix+2), h
		ld (ix+3), l
_LABEL_320B_:	
		pop bc
		pop hl
		ld b, a
		pop af
		ret
	
_LABEL_3210_:	
		push hl
		push de
		push de
		ld a, ($8491)
		ld e, a
		inc a
		ld ($8491), a
		ld d, $00
		push hl
		push hl
		ld hl, $0004
		ld bc, $8346
		call _LABEL_2F72_
		push hl
		pop ix
		pop hl
		ld a, h
		call _LABEL_3250_
		call _LABEL_3318_
		pop hl
		pop de
		ld (ix+0), a
		push af
		dec e
		ld a, ($8ADF)
		add a, a
		add a, a
		add a, a
		add a, a
		add a, e
		ld (ix+1), a
		ld (ix+2), h
		ld (ix+3), l
		pop af
		pop de
		pop hl
		ld d, a
		ret
	
_LABEL_3250_:	
		cp $00
		jr nz, +
		ld a, ($848E)
		ld de, $0000
		inc a
		ld ($848E), a
		jr ++
	
+:	
		cp $1C
		jr nz, +
		ld a, ($848F)
		ld de, $0002
		inc a
		ld ($848F), a
		jr ++
	
+:	
		ld a, ($8490)
		ld de, $0001
		inc a
		ld ($8490), a
++:	
		dec a
		push af
		call _LABEL_32F7_
		add hl, de
		ld de, $800D
		add hl, de
		pop af
		ret
	
_LABEL_3286_:	
		push af
		rst $08	; _LABEL_8_
+:	
		push af
		push de
		ld a, ($8495)
		ld e, a
		inc a
		ld ($8495), a
		ld d, $00
		push hl
		ld hl, $0005
		ld bc, $843E
		call _LABEL_2F72_
		push hl
		pop ix
		pop hl
		pop de
		pop af
		ld (ix+0), a
		ld (ix+1), h
		ld (ix+2), l
		ld (ix+3), e
		cp $0C
		jr nz, +
		ld a, $03
		jr ++
	
+:	
		cp $0D
		jr nz, +
		ld a, $01
		jr ++
	
+:	
		cp $1C
		jr nc, +
		xor a
		jr ++
	
+:	
		cp $1F
		jr nc, +
		ld a, $04
		jr ++
	
+:	
		ld a, $01
++:	
		ld (ix+4), a
		rst $10	; _LABEL_10_
		pop af
		ret
	
_LABEL_32D7_:	
		push de
		push bc
		ld a, ($8320)
		ld c, a
		srl a
		srl a
		srl a
		srl a
		ld e, a
		ld d, $00
		ld hl, $000A
		ld a, c
		and $0F
		ld c, a
		ld b, $00
		call _LABEL_2F72_
		pop bc
		pop de
		ret
	
_LABEL_32F7_:	
		push de
		push bc
		ld a, ($8320)
		ld c, a
		srl a
		srl a
		srl a
		srl a
		ld l, a
		ld h, $00
		ld de, $0015
		ld a, c
		and $0F
		add a, a
		ld c, a
		ld b, $00
		call _LABEL_2F72_
		pop bc
		pop de
		ret
	
_LABEL_3318_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_3329_
		inc b
		ld a, (hl)
-:	
		rla
		djnz -
		ld a, $00
		jr nc, +
		ld a, $01
+:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_3329_:	
		ld b, a
		srl a
		srl a
		srl a
		ld e, a
		ld d, $00
		add hl, de
		ld a, b
		and $07
		ld b, a
		ret
	
_LABEL_3339_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_3329_
		ld a, $08
		sub b
		ld b, a
		ld a, c
		or a
		jr z, +
		rra
-:	
		rla
		djnz -
		ld c, (hl)
		or c
		ld (hl), a
		jr ++
	
+:	
		ld a, $FE
		rra
-:	
		rla
		djnz -
		ld c, (hl)
		and c
		ld (hl), a
++:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_3359_:	
		xor a
		ld ($848E), a
		ld ($848F), a
		ld ($8490), a
		ld hl, $8346
		ld de, $0004
		ld a, ($8491)
		or a
		jr z, ++
		ld b, a
-:	
		rst $08	; _LABEL_8_
+:	
		ld c, (hl)
		inc hl
		inc hl
		ld a, (hl)
		call _LABEL_3250_
		call _LABEL_3339_
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
++:	
		ld hl, $8386
		ld de, $0005
		ld a, ($8492)
		or a
		jr z, ++
		ld b, a
		xor a
		ld ($8492), a
-:	
		rst $08	; _LABEL_8_
+:	
		ld c, (hl)
		call _LABEL_32D7_
		add hl, hl
		ld de, $80DF
		add hl, de
		ld a, ($8492)
		inc a
		ld ($8492), a
		dec a
		call _LABEL_3339_
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
++:	
		ld hl, $83D6
		ld de, $0004
		ld a, ($8493)
		or a
		jr z, ++
		ld b, a
		xor a
		ld ($8493), a
-:	
		rst $08	; _LABEL_8_
+:	
		ld c, (hl)
		call _LABEL_32D7_
		add hl, hl
		ld de, $81A7
		add hl, de
		ld a, ($8493)
		inc a
		ld ($8493), a
		dec a
		call _LABEL_3339_
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
++:	
		ld hl, $8416
		ld de, $0005
		ld a, ($8494)
		or a
		jr z, ++
		ld b, a
		xor a
		ld ($8494), a
-:	
		rst $08	; _LABEL_8_
+:	
		ld c, (hl)
		call _LABEL_32D7_
		ld de, $826F
		add hl, de
		ld a, ($8494)
		inc a
		ld ($8494), a
		dec a
		call _LABEL_3339_
		rst $10	; _LABEL_10_
		add hl, de
		djnz -
++:	
		ret
	
_LABEL_33FD_:	
		call _LABEL_32D7_
		ld a, l
		ld c, $01
		ld hl, $8000
		call _LABEL_3339_
		ret
	
_LABEL_340A_:	
		push af
		rst $08	; _LABEL_8_
+:	
		bit 0, c
		jr z, +++
		ld e, c
		ld b, h
		ld c, l
		rst $18	; _LABEL_18_
		jr nz, ++
		dec c
		call _LABEL_1C7F_
		jr z, +
		and $10
		jr z, +
		jr ++
	
+:	
		inc b
		call _LABEL_1C7F_
		jr z, +++
		and $10
		jr z, +++
++:	
		ld c, $04
		bit 1, e
		jr nz, +
		ld c, $0C
+:	
		ld hl, $843E
		ld de, $0005
		ld b, $10
-:	
		ld a, (hl)
		cp $1B
		jr nz, +
		ld a, c
		call _LABEL_4578_
+:	
		add hl, de
		djnz -
+++:	
		rst $10	; _LABEL_10_
		pop af
		ret
	
_LABEL_344B_:	
		ld hl, $8AF9
		ld a, (hl)
		or a
		jr z, +
		dec a
		ld (hl), a
		or a
		jr nz, +
		ld hl, $0000
		ld a, $3F
		ld b, $0D
		rst $28	; _LABEL_28_
+:	
		ld a, ($8AC9)
		and $0F
		ret nz
		ld hl, $8343
		call +
		ld hl, $8344
		call +
		ret
	
+:	
		ld a, (hl)
		or a
		ret z
		dec a
		ld (hl), a
		cp $06
		ret nc
		or a
		jr z, +
		ret
	
+:	
		ld a, ($8B1A)
		or a
		jr nz, +
		ld a, $81
		rst $30	; _LABEL_30_
+:	
		ret
	
_LABEL_3488_:	
		push hl
		push bc
-:	
		push hl
		call _LABEL_3CD3_
		xor a
		call _LABEL_164_
		pop hl
		inc h
		djnz -
		pop bc
		pop hl
		ret
	
_LABEL_3499_:	
		rst $08	; _LABEL_8_
_LABEL_349A_:	
		ld a, (de)
		cp $40
		jr z, +
		call _LABEL_34A8_
		inc de
		inc h
		jr _LABEL_349A_
	
+:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_34A8_:	
		cp $20
		jr nz, +
		xor a
		jr ++
	
+:	
		cp $3A
		jr nc, +
		sub $30
		add a, $5D
+:	
		sub $41
		add a, c
++:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_3CD3_
		call _LABEL_164_
		ld a, b
		or a
		jr z, +
-:	
		call _LABEL_242A_
		djnz -
+:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_34CC_:	
		ld a, ($8AE4)
		or a
		jr z, ++
		ld hl, $8AD5
		ld a, (hl)
		cp $FE
		jr z, +
		ret
	
+:	
		ld a, $FF
		ld ($8B22), a
		xor a
		ld ($8AE4), a
		inc a
		ld ($8AE3), a
		ret
	
++:	
		ld a, ($8AD3)
		ld c, a
		rst $18	; _LABEL_18_
		jr z, ++
		call _LABEL_353A_
		jr nz, +
+:	
		bit 6, c
		jr nz, ++
		ld a, $01
		ld ($8324), a
		ld ($8AE0), a
++:	
		ld a, ($8B14)
		or a
		jr nz, +
		ld a, $07
		ld b, $06
		jr ++
	
+:	
		ld a, $02
		ld b, $04
++:	
		ld ($8ACA), a
		ld a, ($8343)
		call +
		ld a, ($8344)
		call +
		ld a, b
		ld (_RAM_C101_), a
		ld a, ($8AD4)
		ld c, a
		bit 1, c
		call z, _LABEL_357A_
		ret
	
+:	
		cp $01
		jr z, +
		cp $02
		jr z, +
-:	
		ret
	
+:	
		dec b
		jr -
	
_LABEL_353A_:	
		push hl
		push de
		push af
		di
		ld a, ($8B0D)
		and $30
		cp $30
		jr z, +
		xor a
		ld ($8B12), a
		ld ($8B13), a
		jr ++
	
+:	
		ld a, ($8B12)
		or a
		jr z, +
		ld a, ($8B13)
		or a
		jr nz, ++
		ld a, $01
		ld ($8AE0), a
		ld a, $FF
		ld ($8B13), a
		ld a, $02
		ld ($8B12), a
		jr ++
	
+:	
		ld hl, $8B12
		ld (hl), $01
		inc hl
		ld (hl), $FF
++:	
		ei
		pop af
		pop de
		pop hl
		ret
	
_LABEL_357A_:	
		push bc
		ld a, ($8AE4)
		or a
		jr nz, ++
		ld a, ($8AE3)
		cp $01
		jr z, +
		ld a, $00
		ld (_RAM_C100_), a
+:	
		call _LABEL_242A_
		xor a
		ld ($8ACB), a
		ld ($8ACC), a
		call _LABEL_35B0_
-:	
		call _LABEL_242A_
		jr nz, ++
		ld a, ($8ACB)
		or a
		jr nz, ++
		ld a, ($8ACC)
		or a
		jr z, -
++:	
		call _LABEL_3780_
		pop bc
		ret
	
_LABEL_35B0_:	
		ld hl, $8ACD
		ld b, $09
-:	
		ld (hl), $FF
		inc hl
		djnz -
		ret
	
_LABEL_35BB_:	
		ld a, $02
		ld hl, $90FF
		ld b, $00
		ld c, $2F
-:	
		push af
		push hl
		ld de, $1000
		ld a, c
		rst $28	; _LABEL_28_
		add hl, de
		ld a, c
		inc b
		rst $28	; _LABEL_28_
		add hl, de
		inc c
		ld a, c
		inc b
		rst $28	; _LABEL_28_
		pop hl
		ld de, $FF10
		add hl, de
		inc b
		inc c
		pop af
		dec a
		jr nz, -
		ld hl, $0000
--:	
		push hl
-:	
		push hl
		ld c, h
		ld b, $00
		ld h, $00
		ld de, $000A
		call _LABEL_2F72_
		ld a, l
		ld hl, $8000
		call _LABEL_3318_
		pop hl
		ld c, $04
		or a
		jr z, +
		ld c, $07
+:	
		call +
		inc h
		ld a, h
		cp $0A
		jr nz, -
		pop hl
		inc l
		ld a, l
		cp $0A
		jr nz, --
		ld a, ($8320)
		ld c, $0F
		call _LABEL_3624_
		ld a, ($8321)
		bit 1, a
		ret z
		ld a, $09
		ld c, $09
		call _LABEL_3624_
		ret
	
_LABEL_3624_:	
		push hl
		ld l, a
		srl l
		srl l
		srl l
		srl l
		and $0F
		ld h, a
		call +
		pop hl
		ret
	
+:	
		push hl
		push bc
		ld a, l
		add a, a
		add a, l
		add a, $02
		ld l, a
		ld b, $02
_LABEL_3640_:	
		push hl
		push bc
		push bc
		ld a, h
		ld c, a
		srl a
		add a, $0F
		ld h, a
		ld a, l
		and $07
		ld e, a
		ld d, $00
		srl l
		srl l
		srl l
		ld a, l
		add a, a
		add a, l
		add a, a
		add a, l
		add a, h
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $2000
		add hl, de
		ld a, c
		pop bc
		bit 0, a
		jr nz, +
		sla c
		sla c
		sla c
		sla c
		call _LABEL_16E_
		and $0F
		jr ++
	
+:	
		call _LABEL_16E_
		and $F0
++:	
		or c
		call _LABEL_164_
		pop bc
		pop hl
		inc l
		djnz _LABEL_3640_
		pop bc
		pop hl
		ret
	
	; Data from 368D to 3697 (11 bytes)
	.db $47 $41 $4D $45 $20 $20 $4F $56 $45 $52 $40
	
; Data from 3698 to 36A9 (18 bytes)	
_DATA_3698_:	
	.db $00 $08 $00 $04 $00 $02 $00 $04 $00 $02 $00 $01 $50 $00 $20 $00
	.db $10 $00
	
_LABEL_36AA_:	
		push hl
		push bc
		push de
		ld e, (hl)
		inc hl
		ld d, (hl)
		pop hl
-:	
		push hl
		add hl, hl
		add hl, hl
		add hl, hl
		call _LABEL_3F30_
		pop hl
		inc hl
		djnz -
		ex de, hl
		pop bc
		pop hl
		inc hl
		inc hl
		ret
	
_LABEL_36C2_:	
		push bc
		push hl
-:	
		push af
		push hl
		call _LABEL_3CD3_
		call _LABEL_164_
		pop hl
		pop af
		or a
		jr z, +
		inc a
+:	
		inc h
		djnz -
		pop hl
		pop bc
		inc l
		dec c
		jr nz, _LABEL_36C2_
		ret
	
_LABEL_36DC_:	
		xor a
		ld ($8B22), a
		call _LABEL_2640_
		call _LABEL_37A4_
		ld hl, _DATA_490A_
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		call _LABEL_1D32_
		ld a, $02
		ld de, $9650
		push de
		call _LABEL_1D6E_
		pop de
		ld hl, $0000
		push de
		call _LABEL_3F30_
		pop de
		ld hl, $0800
		push de
		call _LABEL_3F30_
		pop de
		ld hl, $1000
		call _LABEL_3F30_
		call _LABEL_37CD_
		ld hl, $0000
		ld b, $0B
		ld a, $3F
		rst $28	; _LABEL_28_
		ld b, $0D
		ld a, $3F
		rst $28	; _LABEL_28_
		ld bc, $0011
		ld hl, $8322
		ld de, $8334
		ldir
		call _LABEL_3002_
		call _LABEL_303E_
		call _LABEL_3094_
		ld a, ($8320)
		ld e, a
		and $0F
		add a, a
		add a, a
		ld c, a
		ld b, $00
		srl e
		srl e
		srl e
		srl e
		ld d, $00
		ld hl, $002A
		call _LABEL_2F72_
		push hl
		call _LABEL_37E9_
		call _LABEL_3802_
		pop hl
		inc hl
		inc hl
		inc hl
		inc hl
		push hl
		call _LABEL_37E9_
		call _LABEL_3816_
		pop hl
		dec hl
		dec hl
		call _LABEL_37E9_
		call _LABEL_3879_
		call _LABEL_418A_
		ld a, ($8333)
		call _LABEL_416E_
		ld a, ($8AE4)
		cp $01
		jr z, _LABEL_3780_
		ld a, $FF
		ld ($8B22), a
_LABEL_3780_:	
		ld a, ($8343)
		or a
		jr z, +
		ld a, $82
		rst $30	; _LABEL_30_
		ret
	
+:	
		ld a, ($8344)
		or a
		jr z, ++
		ld a, ($8B1A)
		or a
		jr nz, +
		ld a, $84
		rst $30	; _LABEL_30_
+:	
		ret
	
++:	
		ld a, ($8B1A)
		or a
		jr nz, +
		ld a, $81
		rst $30	; _LABEL_30_
+:	
		ret
	
_LABEL_37A4_:	
		ld hl, $8946
		ld de, $8947
		ld bc, $011F
		ld (hl), $00
		ldir
		ld hl, $8346
		ld de, $8347
		ld bc, $014F
		ld (hl), $00
		ldir
		ld a, $72
		ld ($8A66), a
		ld a, $1A
		ld ($8A67), a
		xor a
		ld ($8A68), a
		ret
	
_LABEL_37CD_:	
		ld de, $1800
		ld hl, $0080
		add hl, de
		xor a
		ld bc, $0280
		call _LABEL_18E_
		ld hl, $8496
		ld de, $8497
		ld bc, $04AF
		ld (hl), $00
		ldir
		ret
	
_LABEL_37E9_:	
		push de
		push hl
		ld de, ($8AD7)
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		pop hl
		ld a, d
		or e
		jr nz, +
		ld de, _DATA_4A22_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
+:	
		ex de, hl
		pop de
		ret
	
_LABEL_3802_:	
		xor a
		ld ($8ADB), a
-:	
		ld ($8ADC), a
		ld ($8AD9), hl
		ld hl, $0000
		ld ($8ADD), hl
		call _LABEL_381E_
		ret
	
_LABEL_3816_:	
		ld a, $1C
		ld ($8ADB), a
		xor a
		jr -
	
_LABEL_381E_:	
		ld hl, ($8AD9)
		ld a, (hl)
		ld c, a
		and $07
		inc a
		ld e, a
		ld d, $00
		cp $08
		call z, _LABEL_3B84_
		ld ($8ADD), de
		ld hl, ($8AD9)
		inc hl
		ld ($8AD9), hl
		ld a, c
		srl a
		srl a
		srl a
		ld c, a
		cp $07
		jr nz, +
		ld a, ($8ADB)
		cp $1C
		jr nz, ++
		ld c, $08
		jr ++
	
+:	
		cp $08
		jr nz, ++
		ld a, ($8ADB)
		cp $00
		jr nz, ++
		ld c, $07
++:	
		ld a, c
		call +
		ld a, ($8ADB)
		cp $02
		ret z
		cp $1E
		ret z
		jr _LABEL_381E_
	
+:	
		or a
		jr z, +
		cp $10
		jp c, _LABEL_3970_
+:	
		and $0F
		jp _LABEL_38B8_
	
_LABEL_3879_:	
		ld a, $02
		ld ($8ADB), a
		xor a
		ld ($8ADC), a
		ld ($8AD9), hl
		ld hl, $0000
		ld ($8ADD), hl
		call _LABEL_38AA_
		ld a, $02
		ld ($8ADB), a
		xor a
		ld ($8ADC), a
		ld hl, $0000
		ld ($8ADD), hl
		call _LABEL_3962_
		ld hl, $0000
		ld ($8ADD), hl
		call _LABEL_3B96_
		ret
	
_LABEL_38AA_:	
		call _LABEL_3B5F_
		call _LABEL_38B8_
		ld a, ($8ADC)
		cp $14
		ret z
		jr _LABEL_38AA_
	
_LABEL_38B8_:	
		ld c, a
		ld a, ($8ADB)
		ld h, a
		ld a, ($8ADC)
		ld l, a
		ld de, ($8ADD)
		ld a, c
		cp $0C
		jr c, +
		cp $0E
		jr z, +
		call _LABEL_3286_
+:	
		or a
		jr nz, +
		ld c, $00
_LABEL_38D6_:	
		push de
		ld a, c
		or a
		call nz, _LABEL_3A84_
		call _LABEL_3C1E_
		pop de
		dec de
		ld a, d
		or e
		jr nz, _LABEL_38D6_
		jp _LABEL_3961_
	
+:	
		cp $04
		jr nc, +
		ld ($8ADF), a
-:	
		push de
		ld a, l
		and $01
		ld d, a
		rst $20	; _LABEL_20_
		inc h
		ld a, l
		and $01
		xor $01
		ld d, a
		rst $20	; _LABEL_20_
		call _LABEL_3C1E_
		pop de
		dec de
		ld a, d
		or e
		jr nz, -
		jp _LABEL_3961_
	
+:	
		cp $07
		jr nc, +
		sub $03
		ld c, a
		jr _LABEL_38D6_
	
+:	
		cp $09
		jr nc, +
		sub $07
		ld c, a
--:	
		push de
		call _LABEL_3A68_
		call _LABEL_3A96_
		call _LABEL_3C1E_
		pop de
		dec de
		ld a, d
		or e
		jr nz, --
		jp _LABEL_3961_
	
+:	
		jr nz, +
		sub $05
		ld c, a
		jp _LABEL_38D6_
	
+:	
		cp $0C
		jr nc, +
-:	
		push de
		ld d, $00
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		dec h
		inc l
		ld d, $01
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		call _LABEL_3C1E_
		pop de
		dec de
		ld a, d
		or e
		jr nz, -
		jp _LABEL_3961_
	
+:	
		cp $10
		jr nc, +
		sub $0A
		ld c, a
		jp --
	
+:	
		sub $0B
		ld c, a
		jp _LABEL_38D6_
	
_LABEL_3961_:	
		ret
	
_LABEL_3962_:	
		call _LABEL_3B5F_
		call _LABEL_3970_
		ld a, ($8ADB)
		cp $1C
		ret z
		jr _LABEL_3962_
	
_LABEL_3970_:	
		ld c, a
		ld a, ($8ADB)
		ld h, a
		ld a, ($8ADC)
		ld l, a
		ld de, ($8ADD)
		ld a, c
		cp $0C
		jr c, +
		cp $0E
		jr z, +
		add a, $10
		call _LABEL_3286_
		sub $10
+:	
		or a
		jr nz, +
-:	
		push de
		call _LABEL_3C47_
		pop de
		dec de
		ld a, d
		or e
		jr nz, -
		jp _LABEL_3A67_
	
+:	
		cp $05
		jr nc, +
		add a, $04
		ld c, a
_LABEL_39A4_:	
		push de
		call _LABEL_3A84_
		call _LABEL_3C47_
		pop de
		dec de
		ld a, d
		or e
		jr nz, _LABEL_39A4_
		jp _LABEL_3A67_
	
+:	
		cp $05
		jr nz, +
		inc a
		ld c, a
_LABEL_39BA_:	
		push de
		call _LABEL_3A68_
		call _LABEL_3A96_
		call _LABEL_3C47_
		pop de
		dec de
		ld a, d
		or e
		jr nz, _LABEL_39BA_
		jp _LABEL_3A67_
	
+:	
		cp $06
		jr nz, ++
		ld a, e
		cp $01
		jr z, +
		call _LABEL_3AC7_
		call _LABEL_3210_
		call _LABEL_3AE2_
		call _LABEL_3C47_
		call _LABEL_3B0C_
		call _LABEL_3C47_
		call _LABEL_3B0C_
		call _LABEL_3C47_
		ld a, ($8ADB)
		or a
		jr z, +
		cp $1C
		jr z, +
		jp _LABEL_3A67_
	
+:	
		call _LABEL_3B21_
		call _LABEL_3C47_
		jp _LABEL_3A67_
	
++:	
		cp $0B
		jr nc, +
		add a, $02
		ld c, a
		jp _LABEL_39A4_
	
+:	
		jr nz, _LABEL_3A57_
		push hl
		push de
		ld b, e
		dec b
-:	
		inc l
		djnz -
		push hl
		ld b, h
		ld c, l
		call _LABEL_3CC3_
		call _LABEL_16E_
		pop hl
		or a
		jr nz, +
		push af
		ld a, $1B
		call _LABEL_3286_
		pop af
+:	
		pop de
		pop hl
		or a
		jr z, +
		ld c, $0B
		jr ++
	
+:	
		ld c, $07
++:	
		push af
-:	
		push de
		call _LABEL_3A68_
		call _LABEL_3A96_
		call _LABEL_3C47_
		pop de
		dec de
		ld a, d
		or e
		jr nz, -
		pop af
		or a
		jp nz, _LABEL_3A67_
		inc l
		inc l
		inc l
		ld c, $0B
		call _LABEL_3A84_
		jp _LABEL_3A67_
	
_LABEL_3A57_:	
		cp $0F
		jr nc, +
		sub $04
		ld c, a
		jp _LABEL_39BA_
	
+:	
		sub $03
		ld c, a
		jp _LABEL_39A4_
	
_LABEL_3A67_:	
		ret
	
_LABEL_3A68_:	
		push hl
		ld hl, ($8ADD)
		call _LABEL_2F6C_
		jr nz, +
		xor a
		jr ++
	
+:	
		ld hl, $0001
		call _LABEL_2F6C_
		jr nz, +
		ld a, $02
		jr ++
	
+:	
		ld a, $01
++:	
		pop hl
		ret
	
_LABEL_3A84_:	
		push bc
		push hl
		ld l, c
		ld h, $00
		add hl, hl
		add hl, hl
		ld de, _DATA_4037_
		add hl, de
		ex de, hl
		pop hl
		call +
		pop bc
		ret
	
_LABEL_3A96_:	
		push bc
		push hl
		ld b, $00
		ld l, c
		ld h, $00
		add hl, hl
		add hl, bc
		add hl, hl
		add hl, hl
		ld de, _DATA_406B_
		add hl, de
		ex de, hl
		ld h, $00
		ld l, a
		add hl, hl
		add hl, hl
		add hl, de
		ex de, hl
		pop hl
		call +
		pop bc
		ret
	
+:	
		push hl
		ex de, hl
		ld c, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld a, (hl)
		pop hl
		call +
		ret
	
+:	
		rst $20	; _LABEL_20_
		inc h
		ld c, b
		ld d, a
		rst $20	; _LABEL_20_
		ret
	
_LABEL_3AC7_:	
		push hl
		push de
		dec l
		call _LABEL_3B2A_
		cp $04
		jr nc, +
-:	
		ld ($8ADF), a
		pop de
		pop hl
		ret
	
+:	
		ld a, ($8ADF)
		and $03
		jr nz, -
		ld a, $03
		jr -
	
_LABEL_3AE2_:	
		push de
		push de
		ld a, ($8ADF)
		add a, $3F
		ld c, a
		ld d, $00
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		dec h
		pop de
		ld a, d
		or a
		jr z, +
		ld a, ($8ADF)
		dec a
		ld c, a
		add a, a
		add a, c
		add a, a
		ld c, a
		ld a, e
		add a, c
		add a, $41
		ld c, a
		ld d, $00
		rst $20	; _LABEL_20_
		call _LABEL_4332_
+:	
		pop de
		ret
	
_LABEL_3B0C_:	
		ld a, d
		or a
		ret z
		push de
		ld a, e
		add a, $53
		ld c, a
		ld d, $00
		ld a, ($8491)
		dec a
		ld e, a
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		pop de
		ret
	
_LABEL_3B21_:	
		ld c, $16
		ld d, $00
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		ret
	
_LABEL_3B2A_:	
		rst $08	; _LABEL_8_
+:	
		ld a, l
		cp $04
		jr nc, +
		ld de, $8946
		jr ++
	
+:	
		cp $0C
		jr nc, +
		ld de, $89A6
		jr ++
	
+:	
		ld de, $8A06
++:	
		ld b, h
		ld c, l
		call _LABEL_3CC3_
		call _LABEL_16E_
		ld b, $03
		ld c, a
-:	
		inc de
		ld a, (de)
		or a
		jr z, +
		cp c
		jr z, ++
		inc a
		cp c
		jr z, ++
+:	
		djnz -
++:	
		ld a, $04
		sub b
		rst $10	; _LABEL_10_
		ret
	
_LABEL_3B5F_:	
		ld hl, ($8AD9)
		ld a, (hl)
		ld c, a
		and $0F
		inc a
		ld e, a
		ld d, $00
		cp $10
		call z, _LABEL_3B84_
		ld ($8ADD), de
		ld hl, ($8AD9)
		inc hl
		ld ($8AD9), hl
		ld a, c
		srl a
		srl a
		srl a
		srl a
		ret
	
_LABEL_3B84_:	
		ld hl, ($8AD9)
		inc hl
		ld ($8AD9), hl
		ld a, (hl)
		ld l, a
		ld h, $00
		add hl, de
		ex de, hl
		cp $FF
		jr z, _LABEL_3B84_
		ret
	
_LABEL_3B96_:	
		ld hl, ($8AD9)
		ld a, (hl)
		or a
		ret z
		ld c, a
		and $0F
		add a, a
		ld ($8ADB), a
		ld hl, ($8AD9)
		inc hl
		ld ($8AD9), hl
		ld a, (hl)
		ld b, a
		and $1F
		ld ($8ADC), a
		ld a, c
		srl a
		srl a
		srl a
		srl a
		ld c, a
		ld a, b
		and $E0
		or c
		call +
		ld hl, ($8AD9)
		inc hl
		ld ($8AD9), hl
		jr _LABEL_3B96_
	
+:	
		ld c, a
		ld a, ($8ADB)
		ld h, a
		ld a, ($8ADC)
		ld l, a
		ld a, c
		and $0F
		bit 6, c
		jr z, +
		add a, $20
		jr ++
	
+:	
		add a, $30
++:	
		call _LABEL_3151_
		ex af, af'
		ld a, b
		or a
		ret z
		ex af, af'
		cp $36
		jr z, +++
		cp $23
		jr z, ++++
		cp $21
		jr nz, ++
		push af
		rst $08	; _LABEL_8_
+:	
		call _LABEL_4192_
		ld a, $2A
		ld b, $0B
		rst $28	; _LABEL_28_
		rst $10	; _LABEL_10_
		pop af
++:	
		ld d, $00
		bit 5, c
		jr z, +
		ld d, $04
+:	
		ld c, a
		call _LABEL_42F5_
		ret
	
+++:	
		ld c, a
		inc l
		ld d, $00
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		ret
	
++++:	
		ld c, a
		ld d, $00
		call _LABEL_42ED_
		ret
	
_LABEL_3C1E_:	
		ld a, ($8ADB)
		cp $00
		jr z, _LABEL_3C47_
		cp $1C
		jr z, _LABEL_3C47_
		inc a
		inc a
		ld ($8ADB), a
		cp $1C
		jr nz, _LABEL_3C3E_
		ld a, $02
		ld ($8ADB), a
		ld a, ($8ADC)
		inc a
		ld ($8ADC), a
_LABEL_3C3E_:	
		ld a, ($8ADB)
		ld h, a
		ld a, ($8ADC)
		ld l, a
		ret
	
_LABEL_3C47_:	
		ld a, ($8ADC)
		inc a
		ld ($8ADC), a
		cp $14
		jr nz, _LABEL_3C3E_
		xor a
		ld ($8ADC), a
		ld a, ($8ADB)
		inc a
		inc a
		ld ($8ADB), a
		jr _LABEL_3C3E_
	
_LABEL_3C60_:	
		push af
		push hl
		push bc
		push de
		ld a, l
		cp $14
		jr nc, _LABEL_3CBE_
		ld a, h
		cp $1E
		jr nc, _LABEL_3CBE_
		push bc
		call _LABEL_30B7_
		ld b, h
		ld c, l
		ld a, c
		cp $04
		jr nc, +
		ld hl, $8946
		ld ix, $8A66
		ld iy, $0000
		jr ++
	
+:	
		cp $0C
		jr nc, +
		ld hl, $89A6
		ld ix, $8A67
		ld iy, $0100
		jr ++
	
+:	
		ld hl, $8A06
		ld ix, $8A68
		ld iy, $0200
++:	
		pop de
		ld a, e
		cp $0D
		jr nz, +
		ld e, $0C
+:	
		ld d, $00
		add hl, de
		ld a, (hl)
		or a
		jr nz, +
		call _LABEL_3D67_
		ld a, (hl)
+:	
		pop de
		push de
		add a, d
		call _LABEL_3CC3_
		call _LABEL_164_
_LABEL_3CBE_:	
		pop de
		pop bc
		pop hl
		pop af
		ret
	
_LABEL_3CC3_:	
		push af
		push de
		push bc
		inc b
		ld h, b
		ld a, c
		add a, $04
		ld l, a
		call _LABEL_3CD3_
		pop bc
		pop de
		pop af
		ret
	
_LABEL_3CD3_:	
		push de
		ld e, h
		ld d, $00
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $1800
		add hl, de
		pop de
		ret
	
_LABEL_3CE5_:	
		ld a, (ix+0)
		add a, $01
		ld (ix+0), a
		ret
	
_LABEL_3CEE_:	
		rst $08	; _LABEL_8_
+:	
		push af
		ld hl, _RAM_C300_
		ld de, _RAM_C310_
		ld (hl), e
		inc hl
		ld (hl), d
		inc hl
		ld a, (iy+2)
		ld (hl), a
		ld h, (iy+1)
		ld l, (iy+0)
		call _LABEL_1D32_
		ld de, _RAM_C310_
		ld a, $02
		call _LABEL_1D6E_
		pop af
		cp $2F
		jr c, _LABEL_3D61_
		cp $36
		jr z, _LABEL_3D61_
		ld hl, _RAM_C310_
		ld de, _RAM_C350_
		cp $37
		jr nz, +
		ld bc, $0010
		ldir
		ld hl, _RAM_C340_
		ld de, _RAM_C380_
		ld bc, $0010
		ldir
		jr ++++
	
+:	
		cp $38
		jr nz, +
		ld bc, $0020
		ldir
		jr ++++
	
+:	
		cp $39
		jr nz, +
		jr ++
	
+:	
		cp $3A
		jr nz, +++
++:	
		ld bc, $0040
		ldir
		jr ++++
	
+++:	
		cp $3B
		jr nz, +
		jr ++++
	
+:	
		jr +++++
	
++++:	
		ld hl, _RAM_C350_
		ld de, _RAM_C390_
+++++:	
		call _LABEL_1DA2_
_LABEL_3D61_:	
		ld iy, _RAM_C300_
		rst $10	; _LABEL_10_
		ret
	
_LABEL_3D67_:	
		ld a, e
		or a
		ret z
		push hl
		push bc
		or a
		sbc hl, de
		push hl
		push iy
		pop hl
		push de
		pop iy
		add iy, iy
		add iy, de
		ld bc, _DATA_490A_
		add iy, bc
		call _LABEL_3CEE_
		ld a, e
		pop de
		cp $40
		jp nc, _LABEL_3DE0_
		cp $30
		jp nc, _LABEL_3DF7_
		cp $2A
		jp nc, ++
		cp $1B
		jp c, _LABEL_3D9D_
		cp $1F
		jp c, +
_LABEL_3D9D_:	
		call _LABEL_3EF6_
		jp _LABEL_3E0F_
	
+:	
		ld b, $03
		ld hl, $0000
		ld de, $8946
		ld ix, $8A66
-:	
		call _LABEL_3EF6_
		call _LABEL_3E12_
		djnz -
		jp _LABEL_3E0F_
	
++:	
		call _LABEL_3F0C_
		ex de, hl
		ld hl, _DATA_4016_
		sub $2A
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (hl)
		ex de, hl
		call _LABEL_3EB2_
		ld b, $04
--:	
		call _LABEL_3CE5_
		push bc
		ld b, $08
-:	
		ld a, c
		call _LABEL_3F21_
		djnz -
		pop bc
		djnz --
		jp _LABEL_3E0F_
	
_LABEL_3DE0_:	
		call _LABEL_3F0C_
		ex de, hl
		ld hl, _DATA_401C_
		sub $40
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (hl)
		ex de, hl
		call _LABEL_3EB2_
		ld b, $02
		jp --
	
_LABEL_3DF7_:	
		cp $36
		jr z, _LABEL_3D9D_
		ld b, $03
		ld hl, $0000
		ld de, $8946
		ld ix, $8A66
-:	
		call +
		call _LABEL_3E12_
		djnz -
_LABEL_3E0F_:	
		pop bc
		pop hl
		ret
	
_LABEL_3E12_:	
		push bc
		ld bc, $0100
		add hl, bc
		ex de, hl
		ld bc, $0060
		add hl, bc
		ex de, hl
		inc ix
		pop bc
		ret
	
+:	
		push af
		rst $08	; _LABEL_8_
+:	
		call _LABEL_3F0C_
		ex af, af'
		call +++
		ex af, af'
		cp $36
		jr c, +
		ex af, af'
		call ++++
		call +++++
		call _LABEL_3E78_
		call _LABEL_3E82_
		call _LABEL_3E88_
		ex af, af'
		cp $3A
		jr nc, ++
		call _LABEL_3E91_
		call _LABEL_3E99_
		jr ++
	
+:	
		call _LABEL_3EA2_
		call _LABEL_3EAA_
++:	
		rst $10	; _LABEL_10_
		pop af
		ret
	
+++:	
		call _LABEL_3EB2_
-----:	
		ld b, $04
----:	
		call _LABEL_3CE5_
		call _LABEL_3F30_
		djnz ----
		ret
	
++++:	
		call _LABEL_3EB2_
		ex de, hl
		call _LABEL_3F59_
		ex de, hl
---:	
		ld de, $8A69
		jr -----
	
+++++:	
		call _LABEL_3EB2_
		call _LABEL_3EB9_
		jr -----
	
_LABEL_3E78_:	
		call _LABEL_3EB2_
		call _LABEL_3EC2_
--:	
		ld b, $06
		jr ----
	
_LABEL_3E82_:	
		call _LABEL_3EE0_
		ex de, hl
		jr ---
	
_LABEL_3E88_:	
		call _LABEL_3EEB_
		ex de, hl
-:	
		ld de, $8A69
		jr --
	
_LABEL_3E91_:	
		call +
		call _LABEL_3FC2_
		jr -
	
_LABEL_3E99_:	
		call _LABEL_3EE0_
		call _LABEL_3FC2_
		ex de, hl
		jr -
	
_LABEL_3EA2_:	
		call _LABEL_3EB2_
		call _LABEL_3EB9_
		jr --
	
_LABEL_3EAA_:	
		call ++
		call _LABEL_3FC2_
		jr -
	
_LABEL_3EB2_:	
		ld e, (iy+0)
		ld d, (iy+1)
		ret
	
_LABEL_3EB9_:	
		push bc
		ld bc, $0040
-:	
		ex de, hl
		add hl, bc
		ex de, hl
		pop bc
		ret
	
_LABEL_3EC2_:	
		push bc
		ld bc, $0080
		jr -
	
+:	
		call _LABEL_3EB2_
		call _LABEL_3EB9_
-:	
		push hl
		ex de, hl
		ld de, $8A69
		ld bc, $0040
		ldir
		pop hl
		ret
	
++:	
		call _LABEL_3EB2_
		jp -
	
_LABEL_3EE0_:	
		call _LABEL_3EB2_
		call _LABEL_3EB9_
		ex de, hl
		call _LABEL_3F59_
		ret
	
_LABEL_3EEB_:	
		call _LABEL_3EB2_
		call _LABEL_3EC2_
		ex de, hl
		call _LABEL_3F6C_
		ret
	
_LABEL_3EF6_:	
		push af
		rst $08	; _LABEL_8_
+:	
		call _LABEL_3F0C_
		call _LABEL_3EB2_
		ld b, (iy+2)
-:	
		call _LABEL_3CE5_
		call _LABEL_3F30_
		djnz -
		rst $10	; _LABEL_10_
		pop af
		ret
	
_LABEL_3F0C_:	
		push af
		ex de, hl
		ld c, a
		ld b, $00
		add hl, bc
		ex de, hl
		ld a, (ix+0)
		inc a
		ld (de), a
		ld c, a
		ld b, $00
		add hl, bc
		add hl, hl
		add hl, hl
		add hl, hl
		pop af
		ret
	
_LABEL_3F21_:	
		push bc
		ex af, af'
		ld a, (de)
		call +
		inc de
		ex af, af'
		call ++
		inc hl
		inc de
		pop bc
		ret
	
_LABEL_3F30_:	
		push bc
		ld b, $08
-:	
		push bc
		ld a, (de)
		call +
		inc de
		ld a, (de)
		call ++
		inc hl
		inc de
		pop bc
		djnz -
		pop bc
		ret
	
+:	
		ld bc, $0000
		call +++
		ret
	
++:	
		ld bc, $2000
		call +++
		ret
	
+++:	
		push hl
		add hl, bc
		call _LABEL_164_
		pop hl
		ret
	
_LABEL_3F59_:	
		rst $08	; _LABEL_8_
+:	
		ld de, $8A69
		call ++
		ld bc, $0020
		add hl, bc
		ex de, hl
		add hl, bc
		ex de, hl
		call ++
		rst $10	; _LABEL_10_
		ret
	
_LABEL_3F6C_:	
		rst $08	; _LABEL_8_
+:	
		ld de, $8A69
		call +++
		ld bc, $0030
		add hl, bc
		ex de, hl
		add hl, bc
		ex de, hl
		call +++
		rst $10	; _LABEL_10_
		ret
	
++:	
		push de
		ld bc, $0010
		ex de, hl
		add hl, bc
		ex de, hl
		ld b, $02
--:	
		push hl
-:	
		push bc
		call ++++
		ld bc, $0010
		add hl, bc
		or a
		ex de, hl
		sbc hl, bc
		ex de, hl
		pop bc
		djnz -
		pop hl
		pop de
		ret
	
+++:	
		push de
		ld bc, $0020
		ex de, hl
		add hl, bc
		ex de, hl
		ld b, $03
		jr --
	
++++:	
		push hl
		push de
		ld b, $08
--:	
		push bc
		ld c, (hl)
		xor a
		ld b, $08
-:	
		srl c
		rla
		djnz -
		ld (de), a
		inc hl
		inc de
		ld a, (hl)
		ld (de), a
		inc hl
		inc de
		pop bc
		djnz --
		pop de
		pop hl
		ret
	
_LABEL_3FC2_:	
		push hl
		push de
		ld hl, $8AB1
		call +
		ld b, $04
		ld hl, $8A99
-:	
		push bc
		push hl
		call ++
		pop hl
		ld de, $FFF0
		add hl, de
		pop bc
		djnz -
		ld hl, $8A69
		call +
		pop de
		pop hl
		ret
	
+:	
		ld de, $0008
		ld c, $02
--:	
		ld b, $04
-:	
		xor a
		ld (hl), a
		inc hl
		ld a, $11
		ld (hl), a
		inc hl
		djnz -
		add hl, de
		dec c
		jr nz, --
		ret
	
++:	
		push hl
		ld bc, $0008
		add hl, bc
		ld d, h
	
.BANK 1 SLOT 1	
.ORG $0000	
	
		ld e, l
		ld bc, $0018
		add hl, bc
		ex de, hl
		ld bc, $0008
		ldir
		pop hl
		ld d, h
		ld e, l
		ld bc, $0008
		add hl, bc
		ex de, hl
		ldir
		ret
	
; Data from 4016 to 401B (6 bytes)	
_DATA_4016_:	
	.db $51 $81 $D1 $21 $71 $B1
	
; Data from 401C to 4036 (27 bytes)	
_DATA_401C_:	
	.db $F1 $81 $71 $F5 $F8 $FD $F2 $F7 $FB $85 $68 $8D $82 $87 $8B $75
	.db $78 $7D $72 $57 $7B $51 $81 $D1 $21 $71 $B1
	
; Data from 4037 to 406A (52 bytes)	
_DATA_4037_:	
	.db $00 $00 $00 $00 $04 $00 $04 $01 $00 $00 $05 $00 $06 $00 $00 $00
	.db $09 $00 $09 $00 $11 $00 $01 $01 $00 $00 $11 $00 $01 $01 $13 $00
	.db $13 $00 $00 $00 $17 $00 $17 $01 $18 $00 $18 $01 $1B $05 $1B $06
	.db $1F $00 $1F $01
	
; Data from 406B to 40FA (144 bytes)	
_DATA_406B_:	
	.db $07 $00 $07 $01 $07 $01 $07 $01 $07 $01 $07 $02 $00 $00 $08 $00
	.db $08 $01 $08 $01 $08 $02 $00 $00 $0C $00 $0C $01 $0C $02 $0C $01
	.db $0C $02 $0C $00 $0D $00 $0D $02 $0D $01 $0D $02 $0D $01 $0D $00
	.db $0E $00 $0E $01 $0E $01 $0E $01 $0E $01 $0E $02 $0F $00 $0F $01
	.db $0F $00 $0F $01 $0F $00 $0F $01 $15 $00 $15 $01 $15 $02 $15 $03
	.db $15 $04 $15 $05 $1B $00 $1B $01 $1B $02 $1B $02 $1B $03 $1B $04
	.db $1C $00 $1C $01 $1C $02 $1C $03 $1C $02 $1C $03 $1D $00 $1D $01
	.db $00 $00 $1D $03 $00 $00 $1D $03 $1D $01 $1D $02 $1D $04 $00 $00
	.db $1D $04 $00 $00 $1B $00 $1B $01 $1B $02 $1B $02 $1B $00 $1B $01
	
_LABEL_40FB_:	
		push af
		rst $08	; _LABEL_8_
+:	
		push af
		push hl
		ld a, b
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, $1B00
		add hl, de
		pop de
		ld a, e
		call _LABEL_164_
		inc hl
		ld a, d
		call _LABEL_164_
		inc hl
		pop af
		cp $FF
		jr z, +
		add a, a
		add a, a
		call _LABEL_164_
+:	
		inc hl
		ld a, c
		cp $FF
		jr z, +
		call _LABEL_164_
+:	
		rst $10	; _LABEL_10_
		pop af
		ret
	
_LABEL_412A_:	
		push de
		push bc
		cp $FF
		jr z, +++
		push hl
		ld hl, (_DATA_4A22_ - 2)
		ld e, a
		ld d, $00
		add hl, de
		ld c, (hl)
		push af
		ld a, c
		cp $08
		jr nz, ++
		ld a, ($8343)
		call +++++
		jr z, +
		ld c, $0F
		jr ++
	
+:	
		ld a, ($8344)
		call +++++
		jr z, ++
		ld c, $02
++:	
		pop af
		pop hl
		jr ++++
	
+++:	
		ld c, a
++++:	
		call _LABEL_40FB_
		pop bc
		pop de
		ret
	
+++++:	
		or a
		ret z
		cp $03
		jr nc, +
		rst $18	; _LABEL_18_
		ret
	
+:	
		ld a, ($8AC9)
		bit 2, a
		ret
	
_LABEL_416E_:	
		cp $FF
		jr z, +
		ld ($8345), a
+:	
		ld e, a
		add a, a
		add a, e
		ld d, a
		ld b, $08
-:	
		ld a, e
		cp $FF
		jr z, +
		ld a, d
+:	
		rst $28	; _LABEL_28_
		inc d
		inc b
		ld a, b
		cp $0B
		jr nz, -
		ret
	
_LABEL_418A_:	
		ld a, ($8334)
		ld h, a
		ld a, ($8335)
		ld l, a
_LABEL_4192_:	
		ld a, h
		inc a
		add a, a
		add a, a
		add a, a
		ld h, a
		ld a, l
		add a, $04
		add a, a
		add a, a
		add a, a
		dec a
		ld l, a
		ret
	
_LABEL_41A1_:	
		ex de, hl
		ld a, ($8AD6)
		cp $01
		jr nz, +
		ld a, $88
		rst $30	; _LABEL_30_
+:	
		rst $18	; _LABEL_18_
		jp z, _LABEL_422B_
		bit 4, d
		jr z, ++
		bit 0, d
		jr z, ++
		bit 1, d
		jr z, +
		ld a, ($8334)
		inc a
		ld ($8334), a
		jr ++
	
+:	
		ld a, ($8334)
		dec a
		ld ($8334), a
++:	
		call _LABEL_418A_
_LABEL_41CF_:	
		ld a, ($8AD6)
		cp $01
		jr z, +
		bit 4, e
		jr nz, ++++
		bit 2, e
		jr nz, ++++
+:	
		ld a, ($8AC9)
		bit 0, e
		jr z, +++
		bit 1, e
		jr nz, ++
		bit 0, a
		jr z, +
		ld a, $01
		jr +++++
	
+:	
		bit 1, a
		jr nz, +
		ld a, $02
		jr +++++
	
+:	
		ld a, $03
		jr +++++
	
++:	
		bit 0, a
		jr z, +
		ld a, $06
		jr +++++
	
+:	
		bit 1, a
		jr nz, +
		ld a, $07
		jr +++++
	
+:	
		ld a, $08
		jr +++++
	
+++:	
		ld a, $00
		jr +++++
	
++++:	
		bit 0, e
		jr z, ++
		bit 1, e
		jr nz, +
		ld a, $04
		jr +++++
	
+:	
		ld a, $09
		jr +++++
	
++:	
		ld a, $05
+++++:	
		call _LABEL_416E_
		ret
	
_LABEL_422B_:	
		ld a, ($8334)
		or a
		jr nz, +
		bit 0, e
		jr z, +
		bit 1, e
		jr nz, +
		ld a, ($8320)
		and $0F
		jr z, +
		call _LABEL_418A_
		ld a, $01
		call _LABEL_416E_
		ld a, $00
		rst $30	; _LABEL_30_
		ld a, $07
		ld ($8AE1), a
		ret
	
+:	
		ld a, ($8334)
		cp $1C
		jr nz, +
		bit 0, e
		jr z, +
		bit 1, e
		jr z, +
		ld a, ($8320)
		and $0F
		cp $09
		jr z, +
		call _LABEL_418A_
		ld a, $06
		call _LABEL_416E_
		ld a, $00
		rst $30	; _LABEL_30_
		ld a, $03
		ld ($8AE1), a
		ret
	
+:	
		ld a, ($8334)
		ld b, a
		inc a
		add a, a
		ld h, a
		ld a, ($8335)
		cp $FE
		jr nz, +
		ld a, $00
		rst $30	; _LABEL_30_
		ld a, $01
		ld ($8AE1), a
		ret
	
+:	
		cp $14
		jr nz, +
		ld a, $00
		rst $30	; _LABEL_30_
		ld a, $05
		ld ($8AE1), a
		ret
	
+:	
		ld c, a
		add a, $04
		add a, a
		ld l, a
		bit 0, d
		jr z, ++
		bit 1, d
		jr nz, +
		dec b
		dec h
		bit 4, d
		jr z, ++
		dec h
		jr ++
	
+:	
		inc b
		inc h
		bit 4, d
		jr z, ++
		inc h
++:	
		bit 2, d
		jr z, ++
		bit 3, d
		jr z, +
		dec c
		dec l
		jr ++
	
+:	
		inc c
		inc l
++:	
		ld a, b
		ld ($8334), a
		ld a, c
		ld ($8335), a
		ld a, h
		add a, a
		add a, a
		ld h, a
		ld a, l
		add a, a
		add a, a
		dec a
		ld l, a
		jp _LABEL_41CF_
	
_LABEL_42DD_:	
		push hl
		pop ix
		ld a, (ix+1)
		ld h, (ix+2)
		ld l, (ix+3)
		ld c, (ix+4)
		ret
	
_LABEL_42ED_:	
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		inc l
		rst $20	; _LABEL_20_
		dec h
		rst $20	; _LABEL_20_
		ret
	
_LABEL_42F5_:	
		call _LABEL_4328_
		dec h
		inc l
		call +
		call _LABEL_4332_
		ret
	
_LABEL_4301_:	
		call _LABEL_4328_
		call _LABEL_4332_
		dec h
		dec h
		inc l
		call +
		call _LABEL_4332_
		call _LABEL_4332_
		ret
	
_LABEL_4314_:	
		call _LABEL_4328_
		dec h
		inc l
		call +
		call _LABEL_4332_
		dec h
		inc l
		call +
		call _LABEL_4332_
		ret
	
_LABEL_4328_:	
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		ret
	
_LABEL_432D_:	
		rst $20	; _LABEL_20_
		call ++
		ret
	
_LABEL_4332_:	
		inc h
+:	
		inc d
		rst $20	; _LABEL_20_
		ret
	
++:	
		dec h
		dec d
		rst $20	; _LABEL_20_
		ret
	
_LABEL_433A_:	
		ld c, $00
		ld d, $00
		rst $20	; _LABEL_20_
		ret
	
_LABEL_4340_:	
		rst $08	; _LABEL_8_
+:	
		ld e, c
		call _LABEL_42DD_
		cp $34
		call z, _LABEL_340A_
		ex af, af'
		rst $18	; _LABEL_18_
		jr z, _LABEL_4395_
		ex af, af'
		bit 0, c
		jr z, ++
		bit 1, c
		jr nz, +
_LABEL_4357_:	
		ld c, a
		ld d, $00
		call _LABEL_42F5_
		inc h
		call _LABEL_433A_
		dec l
		rst $20	; _LABEL_20_
		jp _LABEL_43C4_
	
+:	
		ld d, $00
_LABEL_4368_:	
		push af
		push de
		dec h
		call _LABEL_433A_
		inc l
		rst $20	; _LABEL_20_
		pop de
		pop af
		dec l
		inc h
		ld c, a
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
++:	
		bit 2, c
		jp z, _LABEL_43C4_
		ld d, $00
_LABEL_4382_:	
		push af
		push de
		dec l
		call _LABEL_433A_
		inc h
		rst $20	; _LABEL_20_
		pop de
		pop af
		inc l
		dec h
		ld c, a
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
_LABEL_4395_:	
		ex af, af'
		bit 0, c
		jr z, ++
		bit 1, c
		jr nz, +
		ld d, $04
_LABEL_43A0_:	
		dec h
		ld (ix+2), h
-:	
		ld c, a
		call _LABEL_4301_
		jp _LABEL_43C4_
	
+:	
		ld d, $04
_LABEL_43AD_:	
		inc h
		ld (ix+2), h
		dec h
		jr -
	
++:	
		bit 2, c
		jp z, _LABEL_43C4_
		ld d, $0A
_LABEL_43BB_:	
		inc l
		ld (ix+3), l
		dec l
		ld c, a
		call _LABEL_4314_
_LABEL_43C4_:	
		rst $10	; _LABEL_10_
		ret
	
_LABEL_43C6_:	
		rst $08	; _LABEL_8_
+:	
		ld e, c
		inc hl
		ld a, (hl)
		dec hl
		cp $36
		jp z, _LABEL_449C_
		rst $18	; _LABEL_18_
		jr z, _LABEL_4417_
		call _LABEL_42DD_
		bit 0, c
		jr z, ++
		bit 1, c
		jr nz, +
		jp _LABEL_4357_
	
+:	
		ld d, $04
		jp _LABEL_4368_
	
++:	
		bit 2, c
		jr z, +++
		bit 1, c
		jr nz, +
		ld d, $00
		jr ++
	
+:	
		ld d, $04
++:	
		bit 3, c
		jp z, _LABEL_4382_
		ld c, a
		call _LABEL_42F5_
		inc l
		call _LABEL_433A_
		dec h
		rst $20	; _LABEL_20_
		jp _LABEL_43C4_
	
+++:	
		bit 1, c
		jr nz, +
		ld d, $00
		jr ++
	
+:	
		ld d, $04
++:	
		ld c, a
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
_LABEL_4417_:	
		call _LABEL_42DD_
		bit 0, c
		jr z, ++
		bit 1, c
		jr nz, +
		ld d, $0C
		jp _LABEL_43A0_
	
+:	
		ld d, $16
		jp _LABEL_43AD_
	
++:	
		bit 2, c
		jr z, _LABEL_448B_
		bit 1, c
		jr nz, +
		ld d, $1C
		jr ++
	
+:	
		ld d, $22
++:	
		bit 3, c
		jr nz, ++
		push af
		ld b, h
		ld c, l
		inc c
		inc c
		ld a, $01
		call _LABEL_17CD_
		or a
		jr nz, +
		pop af
		jp _LABEL_43BB_
	
+:	
		pop af
		xor a
		ld (ix+0), a
		ld d, a
		ld c, a
		call _LABEL_42ED_
		call _LABEL_2FAB_
		jp _LABEL_43C4_
	
++:	
		push af
		ld b, h
		ld c, l
		dec c
		ld a, $01
		call _LABEL_17CD_
		or a
		jr nz, +
		pop af
		jr ++
	
+:	
		pop af
		xor a
		ld (ix+0), a
		ld d, a
		ld c, a
		call _LABEL_42ED_
		dec l
		dec l
		call _LABEL_2FAB_
		jp _LABEL_43C4_
	
++:	
		dec l
		ld (ix+3), l
		ld c, a
		call _LABEL_4314_
		jp _LABEL_43C4_
	
_LABEL_448B_:	
		bit 1, c
		jr nz, +
		ld d, $08
		jr ++
	
+:	
		ld d, $12
++:	
		ld c, a
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
_LABEL_449C_:	
		call _LABEL_42DD_
		ld a, ($8AC9)
		and $3F
		cp $10
		jr nc, +
		ld d, $00
--:	
		inc l
		ld c, $36
		call _LABEL_4328_
		jp _LABEL_43C4_
	
+:	
		cp $18
		jr nc, +
-:	
		ld d, $02
		jr --
	
+:	
		cp $38
		jr nc, +++
		bit 0, a
		jr nz, +
		ld d, $04
		jr ++
	
+:	
		ld d, $08
++:	
		ld c, $36
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
+++:	
		jr nz, -
		call _LABEL_433A_
		inc h
		call _LABEL_433A_
		dec h
		jr -
	
_LABEL_44DD_:	
		push hl
		pop ix
		ld h, (ix+1)
		ld l, (ix+2)
		ld b, (ix+3)
		ld c, (ix+4)
		ret
	
_LABEL_44ED_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_44DD_
		ld a, ($8AC9)
		and $03
		ld c, $0C
		call ++
		jp _LABEL_43C4_
	
_LABEL_44FE_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_44DD_
		ld a, ($8AC9)
		and $03
		ld c, a
		ld a, $03
		sub c
		ld c, $0D
		call ++
		jp _LABEL_43C4_
	
++:	
		ld ix, _DATA_4832_
--:	
		add a, a
		add a, a
		ld e, a
		ld d, $00
		dec b
		add ix, de
		ld d, (ix+0)
		call +
-:	
		inc h
		ld d, (ix+1)
		call +
		inc h
		ld d, (ix+2)
		call +
		djnz -
		inc h
		ld d, (ix+3)
		rst $20	; _LABEL_20_
		ret
	
+:	
		push ix
		rst $20	; _LABEL_20_
		pop ix
		ret
	
_LABEL_4541_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_44DD_
		ld a, ($8AC9)
		bit 5, a
		jr nz, +
		and $03
		ld ix, _DATA_4842_
		ld c, $0F
		call --
		jp _LABEL_43C4_
	
+:	
		ld a, b
		add a, a
		ld b, a
-:	
		push hl
		push bc
		ld b, h
		ld c, l
		call _LABEL_1BFD_
		ld bc, $8496
		add hl, bc
		ld (hl), $10
		ld bc, $0258
		add hl, bc
		ld (hl), $00
		pop bc
		pop hl
		inc h
		djnz -
		jp _LABEL_43C4_
	
_LABEL_4578_:	
		rst $08	; _LABEL_8_
+:	
		push ix
		call _LABEL_44DD_
		ld c, a
		rst $18	; _LABEL_18_
		jr nz, +++
		ld a, c
		ld b, h
		ld c, l
		call _LABEL_19AD_
		ld c, a
		ld (ix+4), c
		bit 2, c
		jp z, _LABEL_4601_
		bit 3, c
		jr nz, +
		inc l
		ld (ix+2), l
		dec l
		jr ++
	
+:	
		dec l
		ld (ix+2), l
++:	
		ld c, $1B
		ld d, $07
		call _LABEL_42F5_
		inc d
		dec h
		inc l
		inc l
		inc l
		call _LABEL_42F5_
		jr _LABEL_4601_
	
+++:	
		push ix
		ld c, (ix+4)
		bit 2, c
		jr z, _LABEL_45FB_
		bit 3, c
		jr z, +
		ld c, $1B
		ld d, $03
		call _LABEL_4328_
		inc l
		call _LABEL_433A_
		dec h
		rst $20	; _LABEL_20_
		inc l
		inc l
		inc l
		ld c, $1B
		ld d, $05
		call _LABEL_4328_
		inc l
		call _LABEL_433A_
		dec h
		rst $20	; _LABEL_20_
		jr _LABEL_45FB_
	
+:	
		dec l
		ld c, $1B
		ld d, $02
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		inc l
		ld d, $04
		call _LABEL_432D_
		inc l
		inc l
		inc l
		call _LABEL_433A_
		inc h
		rst $20	; _LABEL_20_
		inc l
		ld c, $1B
		ld d, $06
		call _LABEL_432D_
_LABEL_45FB_:	
		pop ix
		xor a
		ld (ix+4), a
_LABEL_4601_:	
		pop ix
		jp _LABEL_43C4_
	
_LABEL_4606_:	
		rst $08	; _LABEL_8_
+:	
		rst $18	; _LABEL_18_
		jr nz, _LABEL_4627_
		call _LABEL_44DD_
		bit 2, c
		jp z, _LABEL_4627_
		bit 3, c
		jr z, +
		dec l
		ld (ix+2), l
		ld c, $1C
		ld d, $00
		call _LABEL_4328_
		inc l
		ld d, $03
		call _LABEL_432D_
_LABEL_4627_:	
		jp _LABEL_43C4_
	
+:	
		inc l
		ld (ix+2), l
		dec l
		ld c, $00
		ld d, $00
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		inc l
		ld c, $1C
		ld d, $01
		call _LABEL_432D_
		jr _LABEL_4627_
	
_LABEL_4640_:	
		rst $08	; _LABEL_8_
+:	
		rst $18	; _LABEL_18_
		jr nz, _LABEL_466E_
		call _LABEL_44DD_
		bit 2, c
		jr z, _LABEL_466E_
		bit 3, c
		jr z, +
		dec l
		ld (ix+2), l
		ld c, $1D
		ld d, $00
		call _LABEL_4328_
		inc h
		call _LABEL_4328_
		inc l
		call _LABEL_433A_
		dec h
		ld c, $1D
		ld d, $04
		call _LABEL_432D_
		dec h
		call _LABEL_433A_
_LABEL_466E_:	
		jp _LABEL_43C4_
	
+:	
		inc l
		ld (ix+2), l
		dec l
		call _LABEL_433A_
		inc h
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		inc h
		rst $20	; _LABEL_20_
		inc l
		ld d, $02
		ld c, $1D
		call _LABEL_432D_
		dec h
		call _LABEL_432D_
		jr _LABEL_466E_
	
_LABEL_468D_:	
		rst $08	; _LABEL_8_
+:	
		call _LABEL_44DD_
		bit 0, c
		jp z, _LABEL_43C4_
		bit 1, c
		ld c, $1F
		ld a, ($8AC9)
		jr nz, ++
		bit 0, a
		jr nz, +
		dec h
		ld (ix+1), h
-:	
		ld d, $02
		call _LABEL_4328_
		call _LABEL_4332_
		jr _LABEL_46BA_
	
+:	
		ld d, $00
		call _LABEL_4328_
		inc h
		call _LABEL_433A_
_LABEL_46BA_:	
		jp _LABEL_43C4_
	
++:	
		bit 0, a
		jr nz, +
		inc h
		ld (ix+1), h
		dec h
		jr -
	
+:	
		dec h
		call _LABEL_433A_
		inc h
		ld c, $1F
		ld d, $00
		call _LABEL_4328_
		jr _LABEL_46BA_
	
-:	
		push hl
		pop ix
		ld h, (ix+2)
		ld l, (ix+3)
		ret
	
_LABEL_46E0_:	
		rst $08	; _LABEL_8_
+:	
		call -
		push hl
		call _LABEL_4192_
		ld a, ($8AC9)
		and $01
		add a, $2A
		ld b, $0B
		rst $28	; _LABEL_28_
		pop hl
		ld a, ($8AC9)
		and $01
		add a, a
		add a, a
		ld d, a
		ld c, $21
		call _LABEL_42F5_
		jp _LABEL_43C4_
	
_LABEL_4703_:	
		rst $08	; _LABEL_8_
+:	
		call -
		ld a, ($8AC9)
		and $7F
		cp $10
		jr z, _LABEL_4761_
		jp nc, _LABEL_43C4_
		push hl
		ld b, $03
		ld hl, $8969
		ld de, $0000
--:	
		push bc
		push hl
		push de
		ld a, (hl)
		or a
		jr z, +
		ld h, $00
		ld l, a
		add hl, de
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, $2000
		add hl, de
		ld de, $0007
		add hl, de
		call _LABEL_16E_
		ld c, a
		ld b, $07
-:	
		dec hl
		call _LABEL_16E_
		inc hl
		call _LABEL_164_
		dec hl
		djnz -
		ld a, c
		call _LABEL_164_
+:	
		pop de
		pop hl
		ld bc, $0060
		add hl, bc
		ex de, hl
		ld bc, $0100
		add hl, bc
		ex de, hl
		pop bc
		djnz --
		pop hl
		ld c, $23
-:	
		ld d, $00
		call _LABEL_42ED_
		jp _LABEL_43C4_
	
_LABEL_4761_:	
		ld c, $00
		jr -
	
_LABEL_4765_:	
		ld e, a
		call _LABEL_42DD_
		dec l
		ld (ix+3), l
		ld c, a
		ld d, $00
		call _LABEL_42F5_
		inc l
		call _LABEL_433A_
		dec h
		rst $20	; _LABEL_20_
		ret
	
_LABEL_477A_:	
		push hl
		pop ix
		ld a, (ix+1)
		and $0F
		dec a
		ld e, a
		ld d, $00
		ld hl, $8337
		add hl, de
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		push ix
		call _LABEL_303E_
		pop ix
		xor a
		ld (ix+0), a
		ld h, (ix+2)
		ld l, (ix+3)
		ld a, (ix+1)
		and $F0
		srl a
		srl a
		srl a
		srl a
		add a, $3F
		ld c, a
		ld d, $00
		rst $20	; _LABEL_20_
		call _LABEL_4332_
		dec h
		inc l
		ld c, $00
		ld d, $00
		call _LABEL_42ED_
+:	
		ret
	
; Data from 47C0 to 47F5 (54 bytes)	
_DATA_47C0_:	
	.db $00 $00 $E0 $00 $E0 $00 $E0 $00 $E0 $00 $E0 $00 $E0 $00 $A0 $00
	.db $A0 $00 $10 $02 $10 $01 $10 $01 $A1 $01 $A1 $02 $A1 $10 $A0 $00
	.db $00 $00 $E0 $00 $E0 $00 $E0 $00 $E0 $00 $A0 $00 $A0 $00 $10 $01
	.db $10 $01 $A0 $00 $A0 $00
	
; Pointer Table from 47F6 to 47FF (5 entries, indexed by unknown)	
_DATA_47F6_:	
	.dw _DATA_4800_ _DATA_4810_ _DATA_4818_ _DATA_4818_ _DATA_4822_
	
; 1st entry of Pointer Table from 47F6 (indexed by unknown)	
; Data from 4800 to 480F (16 bytes)	
_DATA_4800_:	
	.db $A0 $00 $A0 $00 $20 $00 $A0 $00 $A0 $00 $A0 $00 $A0 $00 $A0 $00
	
; 2nd entry of Pointer Table from 47F6 (indexed by unknown)	
; Data from 4810 to 4817 (8 bytes)	
_DATA_4810_:	
	.db $A0 $00 $A0 $00 $A0 $00 $A0 $00
	
; 3rd entry of Pointer Table from 47F6 (indexed by unknown)	
; Data from 4818 to 4821 (10 bytes)	
_DATA_4818_:	
	.db $A0 $00 $A0 $00 $A0 $00 $20 $00 $20 $00
	
; 5th entry of Pointer Table from 47F6 (indexed by unknown)	
; Data from 4822 to 4831 (16 bytes)	
_DATA_4822_:	
	.db $24 $00 $20 $00 $20 $00 $20 $00 $24 $00 $20 $00 $20 $00 $20 $00
	
; Data from 4832 to 4841 (16 bytes)	
_DATA_4832_:	
	.db $03 $05 $04 $03 $00 $02 $01 $00 $03 $04 $05 $03 $00 $01 $02 $00
	
; Data from 4842 to 4851 (16 bytes)	
_DATA_4842_:	
	.db $02 $03 $02 $03 $01 $00 $01 $00 $03 $02 $03 $02 $00 $01 $00 $01
	
; Data from 4852 to 48EF (158 bytes)	
_DATA_4852_:	
	.db $37 $02 $F1 $30 $33 $B0 $3F $45 $3F $80 $23 $7F $42 $02 $F4 $53
	.db $10 $23 $5F $43 $31 $02 $77 $F8 $37 $6F $83 $02 $F4 $50 $13 $1F
	.db $48 $03 $77 $03 $F8 $77 $F2 $07 $F8 $37 $10 $1F $11 $F8 $47 $2F
	.db $83 $02 $F8 $3F $43 $3B $01 $F1 $30 $17 $40 $17 $F1 $02 $72 $01
	.db $31 $01 $32 $01 $39 $05 $F4 $43 $EF $42 $02 $F8 $50 $2F $44 $02
	.db $36 $F4 $93 $C0 $9F $88 $02 $F4 $70 $FF $FF $AF $11 $08 $72 $0F
	.db $97 $4F $82 $73 $F8 $37 $20 $43 $30 $27 $40 $13 $90 $3F $11 $0F
	.db $83 $20 $73 $7F $11 $F4 $13 $10 $3F $46 $31 $F4 $1F $11 $F8 $20
	.db $2F $83 $02 $F4 $33 $F9 $F4 $73 $DF $42 $F1 $1F $85 $03 $F1 $3F
	.db $82 $01 $F4 $60 $2F $14 $0E $F1 $3F $42 $32 $0F $FF $A0
	
; Data from 48F0 to 48F5 (6 bytes)	
_DATA_48F0_:	
	.db $20 $98 $50 $96 $80 $98
	
; Data from 48F6 to 48FD (8 bytes)	
_DATA_48F6_:	
	.db $60 $96 $F0 $99 $30 $9A $50 $9A
	
; Data from 48FE to 4901 (4 bytes)	
_DATA_48FE_:	
	.db $30 $9C $70 $9A
	
; Data from 4902 to 4905 (4 bytes)	
_DATA_4902_:	
	.db $D0 $9C $50 $96
	
; Data from 4906 to 4909 (4 bytes)	
_DATA_4906_:	
	.db $E0 $99 $B5 $5C
	
; Pointer Table from 490A to 490B (1 entries, indexed by unknown)	
_DATA_490A_:	
	.dw _DATA_5121_
	
	; Data from 490C to 4A1D (274 bytes)
	.db $01 $26 $51 $02 $36 $51 $02 $46 $51 $02 $56 $51 $02 $66 $51 $01
	.db $66 $51 $01 $8F $51 $03 $8F $51 $03 $AD $51 $01 $B9 $51 $02 $D0
	.db $51 $02 $E7 $51 $06 $E7 $51 $06 $47 $52 $03 $73 $52 $04 $21 $51
	.db $01 $71 $51 $01 $71 $51 $01 $80 $51 $01 $80 $51 $01 $AC $52 $06
	.db $ED $52 $02 $01 $53 $02 $1E $53 $02 $21 $51 $01 $21 $51 $01 $3C
	.db $53 $0F $E3 $53 $04 $1B $54 $05 $1B $54 $05 $43 $54 $05 $94 $54
	.db $04 $CE $54 $08 $2A $55 $04 $65 $55 $04 $88 $55 $04 $C1 $55 $04
	.db $EE $55 $04 $2E $56 $04 $6A $56 $04 $AB $56 $04 $ED $56 $04 $ED
	.db $56 $04 $ED $56 $04 $ED $56 $04 $ED $56 $04 $ED $56 $04 $0E $57
	.db $10 $7D $57 $10 $EE $57 $10 $45 $58 $10 $B3 $58 $10 $0C $59 $06
	.db $78 $59 $0C $1A $5A $28 $8A $5A $28 $16 $5B $28 $4D $5B $1C $BA
	.db $5B $1C $21 $51 $01 $21 $51 $01 $21 $51 $01 $21 $51 $01 $52 $5C
	.db $02 $52 $5C $02 $52 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02
	.db $65 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $65
	.db $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C
	.db $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $65 $5C $02 $7E $5C $02
	.db $7E $5C $02 $7E $5C $02 $7E $5C $02 $7E $5C $02 $7E $5C $02 $7E
	.db $5C $02
	
; Data from 4A1E to 4A1F (2 bytes)	
_DATA_4A1E_:	
	.db $10 $8E
	
	; Pointer Table from 4A20 to 4A21 (1 entries, indexed by unknown)
	.dw $9610
	
; Data from 4A22 to 4BC5 (420 bytes)	
_DATA_4A22_:	
	.db $A4 $63 $AA $63 $12 $64 $17 $64 $54 $64 $59 $64 $89 $64 $8E $64
	.db $E3 $64 $EB $64 $2C $65 $33 $65 $A3 $65 $A8 $65 $E4 $65 $E9 $65
	.db $2C $66 $2F $66 $6B $66 $6F $66 $B2 $66 $B4 $66 $B6 $66 $05 $67
	.db $0B $67 $3B $67 $41 $67 $7E $67 $83 $67 $B6 $67 $BB $67 $03 $68
	.db $06 $68 $62 $68 $68 $68 $AE $68 $B0 $68 $05 $69 $09 $69 $55 $69
	.db $5B $69 $A3 $69 $A8 $69 $AA $69 $E6 $69 $EA $69 $52 $6A $56 $6A
	.db $9C $6A $A0 $6A $D3 $6A $D6 $6A $0D $6B $10 $6B $65 $6B $6A $6B
	.db $C6 $6B $C9 $6B $06 $6C $0B $6C $84 $6C $87 $6C $E3 $6C $E5 $6C
	.db $E8 $6C $25 $6D $29 $6D $6F $6D $73 $6D $CB $6D $CE $6D $1D $6E
	.db $21 $6E $59 $6E $5E $6E $85 $6E $8A $6E $B8 $6E $BD $6E $E7 $6E
	.db $EB $6E $53 $6F $59 $6F $AE $6F $B0 $6F $B2 $6F $FD $6F $01 $70
	.db $32 $70 $36 $70 $77 $70 $7A $70 $C2 $70 $C4 $70 $02 $71 $06 $71
	.db $39 $71 $3F $71 $8A $71 $8F $71 $BE $71 $C1 $71 $EE $71 $F2 $71
	.db $25 $72 $27 $72 $29 $72 $66 $72 $69 $72 $A9 $72 $AD $72 $FE $72
	.db $02 $73 $3C $73 $40 $73 $8A $73 $91 $73 $BD $73 $C4 $73 $06 $74
	.db $0D $74 $67 $74 $6C $74 $A1 $74 $A6 $74 $F4 $74 $F6 $74 $FA $74
	.db $45 $75 $49 $75 $67 $75 $6C $75 $C6 $75 $CA $75 $FD $75 $01 $76
	.db $1C $76 $1E $76 $65 $76 $68 $76 $B8 $76 $BB $76 $05 $77 $0A $77
	.db $47 $77 $4B $77 $90 $77 $92 $77 $95 $77 $D1 $77 $D9 $77 $09 $78
	.db $11 $78 $5F $78 $65 $78 $AB $78 $B1 $78 $FF $78 $04 $79 $36 $79
	.db $3C $79 $84 $79 $8A $79 $D9 $79 $DE $79 $1C $7A $22 $7A $69 $7A
	.db $6C $7A $6E $7A $C1 $7A $C4 $7A $EC $7A $F4 $7A $3A $7B $3E $7B
	.db $83 $7B $88 $7B $E5 $7B $EA $7B $25 $7C $2A $7C $47 $7C $4A $7C
	.db $8C $7C $90 $7C $C1 $7C $C6 $7C $00 $7D $02 $7D $04 $7D $4E $7D
	.db $51 $7D $97 $7D $9B $7D $EB $7D $EF $7D $15 $7E $1A $7E $48 $7E
	.db $4D $7E $98 $7E $9D $7E $E2 $7E $E7 $7E $46 $7F $49 $7F $66 $7F
	.db $6B $7F $B8 $7F
	
; Data from 4BC6 to 4D2E (361 bytes)	
_DATA_4BC6_:	
	.db $85 $FF $00 $00 $1F $33 $03 $03 $89 $FF $00 $04 $E0 $30 $36 $3B
	.db $33 $FF $04 $00 $84 $3C $66 $64 $FF $03 $00 $81 $40 $03 $00 $C0
	.db $FF $00 $00 $08 $00 $00 $80 $00 $FF $00 $00 $0C $0E $08 $08 $1C
	.db $FF $10 $38 $38 $7C $7C $FE $FE $03 $03 $01 $20 $01 $03 $07 $07
	.db $33 $BB $11 $85 $00 $3C $7E $FF $69 $F2 $3C $00 $00 $04 $80 $80
	.db $00 $20 $70 $20 $00 $01 $03 $01 $00 $04 $00 $20 $70 $30 $B0 $B0
	.db $03 $3E $8D $2A $2A $3E $3F $1F $01 $29 $29 $01 $43 $E7 $E7 $00
	.db $04 $0F $86 $07 $07 $03 $01 $FF $F7 $03 $FF $96 $7F $3F $FF $1E
	.db $73 $E1 $4D $19 $71 $F5 $38 $3F $61 $F1 $B9 $9D $8F $C7 $FF $F1
	.db $B3 $B3 $03 $B6 $BC $FB $B3 $0F $07 $30 $20 $40 $84 $0C $07 $00
	.db $00 $55 $7F $00 $2A $00 $0C $00 $00 $10 $80 $92 $DF $FF $FF $7C
	.db $00 $00 $20 $32 $77 $FF $FF $10 $00 $08 $18 $1C $3C $FF $FF $FC
	.db $00 $04 $40 $44 $EE $FF $FF $91 $00 $03 $07 $1F $7F $FF $FF $0F
	.db $E7 $06 $FF $82 $0C $F3 $05 $00 $84 $FF $71 $B5 $B5 $05 $95 $83
	.db $71 $B5 $B5 $05 $95 $81 $71 $04 $B5 $03 $95 $81 $71 $07 $B5 $81
	.db $75 $07 $B5 $83 $71 $F5 $85 $03 $A5 $83 $85 $85 $71 $06 $85 $81
	.db $65 $03 $95 $81 $B5 $04 $85 $03 $95 $04 $58 $81 $5B $03 $95 $85
	.db $85 $85 $B5 $85 $85 $04 $B5 $04 $85 $03 $B5 $06 $85 $81 $65 $06
	.db $F5 $03 $5F $03 $8F $82 $6F $EF $08 $85 $82 $5B $5B $03 $53 $82
	.db $58 $58 $19 $85 $82 $F8 $F8 $05 $8F $81 $F8 $04 $EF $04 $5F $03
	.db $35 $04 $15 $84 $71 $85 $35 $35 $04 $15 $83 $71 $85 $35 $05 $15
	.db $84 $71 $85 $35 $35 $04 $05 $82 $71 $85 $06 $15 $83 $71 $F8 $EC
	.db $05 $05 $83 $71 $5F $E5 $06 $71 $00
	
; Data from 4D2F to 4E09 (219 bytes)	
_DATA_4D2F_:	
	.db $03 $00 $87 $01 $03 $07 $0F $1F $07 $3F $06 $FF $81 $FC $04 $FF
	.db $8F $FC $E0 $80 $08 $DC $FD $FC $FE $7E $0F $03 $E3 $FF $80 $08
	.db $04 $18 $85 $80 $C0 $C0 $DC $F6 $03 $C6 $03 $00 $88 $38 $7E $CC
	.db $88 $D0 $1F $3F $3F $03 $7F $03 $FF $87 $FE $FC $F8 $F8 $F0 $F0
	.db $E0 $08 $00 $81 $01 $07 $00 $8D $98 $CC $84 $00 $00 $03 $0F $1F
	.db $C6 $63 $21 $00 $78 $03 $FF $83 $E0 $FF $3C $03 $00 $82 $83 $C3
	.db $08 $FF $08 $E0 $10 $00 $8A $3E $7C $78 $38 $18 $08 $00 $00 $07
	.db $03 $06 $01 $83 $E7 $F7 $F7 $04 $FF $83 $FB $FF $FF $03 $7F $8B
	.db $3F $3F $1F $E0 $F0 $F0 $F8 $F8 $FC $FC $FE $0F $00 $8D $01 $00
	.db $03 $0F $1F $3F $7E $FF $FF $79 $F9 $E1 $C1 $04 $01 $08 $F8 $85
	.db $1F $0F $07 $03 $01 $03 $00 $06 $FF $86 $3F $07 $00 $80 $E0 $FC
	.db $03 $FF $A1 $FE $03 $07 $0E $7C $F8 $F0 $C0 $00 $FF $FF $7F $0F
	.db $03 $01 $00 $00 $81 $C7 $DC $F8 $F0 $E0 $C0 $40 $FC $FF $FF $7F
	.db $3F $1F $0F $07 $77 $B1 $77 $B1 $2A $B1 $00
	
; Data from 4E0A to 4ED1 (200 bytes)	
_DATA_4E0A_:	
	.db $0D $00 $90 $01 $01 $03 $00 $00 $01 $81 $C3 $E7 $F7 $F9 $80 $C0
	.db $E0 $F0 $F8 $03 $FC $1C $00 $81 $3F $03 $FF $84 $07 $07 $01 $00
	.db $04 $FF $04 $FC $04 $FF $08 $FC $05 $00 $83 $03 $0F $1F $04 $00
	.db $81 $7C $03 $FF $06 $00 $8A $C0 $F0 $E0 $C0 $C0 $E0 $F0 $FC $FE
	.db $FF $07 $00 $81 $80 $0C $FC $04 $FD $A8 $3F $7F $FE $FC $F8 $F8
	.db $F0 $F0 $FF $FF $1F $07 $01 $00 $01 $03 $F8 $FC $FC $F8 $F0 $E0
	.db $C0 $80 $FF $7F $1F $07 $03 $01 $00 $00 $C0 $F0 $F8 $FC $FE $FF
	.db $7F $7F $08 $FC $04 $FF $04 $FD $82 $F0 $F0 $03 $F8 $8B $FC $FF
	.db $FF $07 $0E $1C $38 $70 $E0 $C0 $80 $07 $00 $85 $04 $00 $00 $C0
	.db $F8 $04 $FF $03 $3F $9F $7F $FE $FC $F8 $E0 $FE $FF $7F $7F $3E
	.db $1E $0C $04 $FE $FF $7F $7F $3E $1E $0C $04 $FF $FF $7F $3F $1F
	.db $0F $07 $00 $E0 $F8 $05 $FF $89 $F8 $0F $3E $FC $F8 $F0 $C0 $00
	.db $00 $77 $B1 $77 $B1 $2A $B1 $00
	
; Data from 4ED2 to 4FA7 (214 bytes)	
_DATA_4ED2_:	
	.db $8A $0A $0F $0F $07 $03 $03 $08 $1C $AA $FF $06 $F0 $82 $8F $FF
	.db $06 $F0 $82 $FF $FF $06 $F0 $82 $07 $FF $06 $F0 $82 $D5 $FF $06
	.db $F0 $81 $20 $04 $70 $8B $50 $D8 $F8 $1C $1C $1F $1B $1B $0F $07
	.db $07 $28 $F0 $84 $F8 $F8 $F0 $10 $03 $38 $82 $F8 $03 $04 $07 $83
	.db $36 $3F $1F $28 $F0 $8A $D8 $F8 $F0 $FC $DC $D8 $F8 $F0 $0F $0F
	.db $06 $FF $07 $F0 $81 $FF $07 $F0 $81 $FF $07 $F0 $81 $FF $07 $F0
	.db $81 $FF $07 $F0 $83 $FF $E0 $E0 $06 $FF $03 $F5 $87 $E5 $E5 $F5
	.db $85 $85 $5F $F1 $06 $11 $82 $F5 $F1 $06 $11 $82 $F8 $F1 $06 $11
	.db $82 $58 $F1 $06 $11 $82 $F5 $F8 $06 $11 $03 $85 $81 $65 $04 $F5
	.db $82 $85 $65 $04 $F5 $82 $E5 $F5 $28 $11 $83 $F5 $E5 $E5 $03 $85
	.db $82 $65 $F5 $03 $85 $81 $65 $03 $F5 $81 $E5 $28 $11 $83 $F5 $F5
	.db $E5 $04 $F5 $83 $E5 $25 $25 $05 $61 $81 $71 $07 $11 $81 $71 $07
	.db $11 $81 $71 $07 $11 $81 $71 $07 $11 $81 $71 $07 $11 $83 $71 $F5
	.db $F5 $05 $61 $81 $71 $00
	
; Data from 4FA8 to 4FCB (36 bytes)	
_DATA_4FA8_:	
	.db $84 $D8 $D8 $DA $F8 $03 $DA $99 $00 $63 $D6 $C6 $66 $36 $B6 $63
	.db $00 $19 $B5 $B5 $35 $B5 $B5 $19 $00 $CF $AC $AC $CE $AC $AC $AF
	.db $00 $20 $B1 $00
	
; Data from 4FCC to 4FDF (20 bytes)	
_DATA_4FCC_:	
	.db $87 $CC $D8 $F1 $E3 $F3 $DB $CD $03 $00 $86 $9B $5B $CF $03 $DE
	.db $00 $10 $71 $00
	
; Data from 4FE0 to 4FF3 (20 bytes)	
_DATA_4FE0_:	
	.db $90 $C6 $C6 $C0 $C6 $C6 $D6 $F6 $00 $70 $C0 $C6 $ED $CF $CC $C7
	.db $00 $10 $71 $00
	
; Data from 4FF4 to 5043 (80 bytes)	
_DATA_4FF4_:	
	.db $81 $7C $05 $C6 $84 $7C $00 $18 $38 $04 $18 $AD $3C $00 $7C $C6
	.db $C6 $0C $38 $60 $FE $00 $7C $C6 $06 $1C $06 $C6 $7C $00 $0C $1C
	.db $2C $4C $CC $FE $0C $00 $FE $C0 $FC $06 $06 $C6 $7C $00 $7C $C6
	.db $C0 $FC $C6 $C6 $7C $00 $FE $C6 $0C $04 $18 $91 $00 $7C $C6 $C6
	.db $7C $C6 $C6 $7C $00 $7C $C6 $C6 $7E $06 $C6 $7C $00 $50 $81 $00
	
; Data from 5044 to 5120 (221 bytes)	
_DATA_5044_:	
	.db $92 $10 $38 $38 $4C $7C $86 $86 $00 $FC $66 $66 $7C $66 $66 $FC
	.db $00 $3C $66 $03 $C0 $85 $62 $3C $00 $F8 $64 $03 $66 $9B $64 $F8
	.db $00 $FE $62 $68 $78 $68 $62 $FE $00 $FE $62 $68 $78 $68 $60 $F0
	.db $00 $3C $66 $C0 $CE $C6 $66 $3E $00 $03 $C6 $81 $FE $03 $C6 $82
	.db $00 $3C $05 $18 $83 $3C $00 $3E $03 $0C $8D $CC $CC $78 $00 $C6
	.db $CC $D8 $F0 $E8 $C4 $C2 $00 $F0 $04 $60 $87 $62 $FE $00 $C6 $C6
	.db $EE $EE $03 $B6 $8B $00 $C6 $66 $76 $5E $4E $46 $E2 $00 $38 $44
	.db $03 $C6 $A5 $44 $38 $00 $FC $66 $66 $7C $60 $60 $F0 $00 $38 $44
	.db $C6 $C6 $DE $64 $3A $00 $FC $66 $66 $7C $78 $6C $E6 $00 $3C $66
	.db $60 $3C $06 $46 $FC $00 $7E $5A $04 $18 $82 $3C $00 $06 $66 $8A
	.db $3C $00 $C2 $C2 $64 $64 $38 $38 $10 $00 $05 $DA $8E $6C $48 $00
	.db $C2 $64 $38 $18 $2C $46 $82 $00 $C2 $64 $38 $03 $18 $9A $3C $00
	.db $FE $8C $18 $30 $60 $C2 $FE $00 $3C $42 $99 $A1 $A1 $99 $42 $3C
	.db $7E $E7 $C3 $0E $18 $00 $18 $18 $77 $31 $69 $31 $00
	
; 1st entry of Pointer Table from 490A (indexed by unknown)	
; Data from 5121 to 5C8F (2927 bytes)	
_DATA_5121_:	
	.incbin ...
	
; Data from 5C90 to 5CA3 (20 bytes)	
_DATA_5C90_:	
	.db $90 $00 $78 $FC $7B $32 $33 $39 $33 $00 $38 $7C $38 $10 $18 $10
	.db $00 $10 $41 $00
	
; Data from 5CA4 to 5CAF (12 bytes)	
_DATA_5CA4_:	
	.db $88 $00 $6C $FE $FE $7C $38 $10 $00 $08 $81 $00
	
; Data from 5CB0 to 5DB4 (261 bytes)	
_DATA_5CB0_:	
	.db $08 $80 $08 $71 $00 $02 $89 $05 $89 $06 $86 $0D $86 $7F $86 $3E
	.db $8B $09 $4B $0C $4B $E0 $86 $E0 $87 $F0 $87 $F3 $87 $FF $86 $1C
	.db $8B $28 $4B $08 $4B $04 $BA $24 $BA $1B $B8 $1F $98 $1F $89 $3B
	.db $8F $C6 $F8 $CF $F8 $00 $BA $80 $BA $00 $BA $00 $98 $40 $86 $40
	.db $86 $7F $F8 $7F $F8 $06 $4B $06 $89 $0F $86 $18 $86 $1F $86 $3D
	.db $8A $37 $86 $35 $8A $10 $4B $38 $89 $7C $89 $8A $86 $FA $86 $9F
	.db $8A $F7 $86 $93 $8A $EF $F8 $E6 $B8 $10 $F7 $DB $FB $DF $FB $DF
	.db $FB $9F $FB $0F $FB $3F $F8 $3F $F8 $BF $F8 $A0 $FB $A0 $FB $20
	.db $FB $20 $FB $20 $FB $33 $86 $38 $84 $2F $8B $0F $8B $EF $8B $EF
	.db $86 $EF $86 $E7 $86 $F7 $86 $4F $8B $C6 $8B $E0 $8B $74 $86 $74
	.db $86 $7A $86 $74 $86 $0C $FB $3F $BF $CF $FB $E4 $F7 $CE $F7 $9F
	.db $F7 $BF $F7 $BF $F7 $60 $FB $1F $BF $30 $F7 $30 $F7 $18 $F7 $1C
	.db $F7 $9C $F7 $CE $F7 $C1 $86 $06 $76 $07 $75 $0B $75 $0B $75 $0B
	.db $75 $07 $75 $0F $75 $68 $86 $90 $76 $E0 $75 $60 $75 $60 $75 $60
	.db $75 $F0 $75 $78 $75 $FF $F7 $7F $F7 $7F $FE $7F $FE $3F $FE $2E
	.db $FE $3E $FE $37 $FE $EF $F7 $EE $F7 $EC $FE $A8 $FE $E8 $FE $A8
	.db $FE $B4 $FE $D0 $FE
	
; Data from 5DB5 to 637F (1483 bytes)	
_DATA_5DB5_:	
	.incbin ...
	
; Data from 6380 to 7FFF (7296 bytes)	
_DATA_6380_:	
	.incbin ...
	