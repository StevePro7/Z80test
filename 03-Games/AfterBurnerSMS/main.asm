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
BANKSTOTAL 32	
BANKSIZE $7FF0	
BANKS 1	
BANKSIZE $10	
BANKS 1	
BANKSIZE $4000	
BANKS 30	
.ENDRO	
	
.enum $C000 export	
_RAM_C000_ db	
_RAM_C001_ db	
_RAM_C002_ db	
_RAM_C003_ db	
_RAM_C004_ db	
_RAM_C005_ db	
_RAM_C006_ db	
_RAM_C007_ db	
.ende	
	
.enum $C009 export	
_RAM_C009_ db	
_RAM_C00A_ db	
_RAM_C00B_ db	
_RAM_C00C_ db	
.ende	
	
.enum $C010 export	
_RAM_C010_ db	
_RAM_C011_ dsb $6	
_RAM_C017_ db	
_RAM_C018_ db	
_RAM_C019_ dw	
_RAM_C01B_ dw	
_RAM_C01D_ db	
_RAM_C01E_ db	
_RAM_C01F_ db	
_RAM_C020_ db	
_RAM_C021_ db	
_RAM_C022_ db	
_RAM_C023_ db	
_RAM_C024_ db	
_RAM_C025_ db	
_RAM_C026_ db	
_RAM_C027_ db	
_RAM_C028_ db	
_RAM_C029_ db	
_RAM_C02A_ db	
_RAM_C02B_ db	
_RAM_C02C_ db	
_RAM_C02D_ db	
_RAM_C02E_ db	
_RAM_C02F_ db	
_RAM_C030_ dw	
_RAM_C032_ db	
_RAM_C033_ db	
_RAM_C034_ db	
_RAM_C035_ db	
_RAM_C036_ db	
_RAM_C037_ db	
_RAM_C038_ db	
_RAM_C039_ db	
_RAM_C03A_ db	
_RAM_C03B_ dw	
_RAM_C03D_ db	
.ende	
	
.enum $C03F export	
_RAM_C03F_ db	
.ende	
	
.enum $C07A export	
_RAM_C07A_ db	
.ende	
	
.enum $C080 export	
_RAM_C080_ db	
.ende	
	
.enum $C0F0 export	
_RAM_C0F0_ dw	
_RAM_C0F2_ dw	
_RAM_C0F4_ dw	
_RAM_C0F6_ dw	
_RAM_C0F8_ dw	
_RAM_C0FA_ db	
_RAM_C0FB_ db	
_RAM_C0FC_ dw	
_RAM_C0FE_ dw	
_RAM_C100_ db	
_RAM_C101_ dw	
_RAM_C103_ dw	
_RAM_C105_ db	
_RAM_C106_ db	
_RAM_C107_ dw	
_RAM_C109_ dw	
_RAM_C10B_ dw	
_RAM_C10D_ dw	
_RAM_C10F_ dw	
.ende	
	
.enum $C112 export	
_RAM_C112_ db	
_RAM_C113_ db	
_RAM_C114_ db	
_RAM_C115_ db	
_RAM_C116_ db	
_RAM_C117_ db	
_RAM_C118_ db	
_RAM_C119_ dw	
_RAM_C11B_ db	
_RAM_C11C_ dw	
_RAM_C11E_ dw	
_RAM_C120_ db	
_RAM_C121_ db	
_RAM_C122_ db	
_RAM_C123_ db	
_RAM_C124_ db	
_RAM_C125_ db	
_RAM_C126_ db	
_RAM_C127_ db	
_RAM_C128_ db	
_RAM_C129_ db	
_RAM_C12A_ dw	
_RAM_C12C_ dw	
_RAM_C12E_ db	
_RAM_C12F_ dw	
_RAM_C131_ dw	
_RAM_C133_ dw	
_RAM_C135_ dw	
.ende	
	
.enum $C139 export	
_RAM_C139_ db	
_RAM_C13A_ db	
_RAM_C13B_ db	
_RAM_C13C_ db	
_RAM_C13D_ dw	
_RAM_C13F_ dw	
_RAM_C141_ db	
_RAM_C142_ dw	
_RAM_C144_ dw	
_RAM_C146_ dw	
_RAM_C148_ dw	
.ende	
	
.enum $C14E export	
_RAM_C14E_ db	
_RAM_C14F_ db	
_RAM_C150_ dsb $d	
.ende	
	
.enum $C162 export	
_RAM_C162_ db	
_RAM_C163_ dsb $d	
.ende	
	
.enum $C175 export	
_RAM_C175_ db	
_RAM_C176_ dsb $d	
.ende	
	
.enum $C188 export	
_RAM_C188_ db	
.ende	
	
.enum $C1DC export	
_RAM_C1DC_ db	
.ende	
	
.enum $C1EE export	
_RAM_C1EE_ db	
.ende	
	
.enum $C200 export	
_RAM_C200_ db	
.ende	
	
.enum $C240 export	
_RAM_C240_ db	
.ende	
	
.enum $C280 export	
_RAM_C280_ db	
.ende	
	
.enum $C400 export	
_RAM_C400_ db	
.ende	
	
.enum $C500 export	
_RAM_C500_ db	
.ende	
	
.enum $C700 export	
_RAM_C700_ db	
.ende	
	
.enum $C800 export	
_RAM_C800_ db	
.ende	
	
.enum $D09F export	
_RAM_D09F_ db	
.ende	
	
.enum $D180 export	
_RAM_D180_ db	
.ende	
	
.enum $D1C1 export	
_RAM_D1C1_ db	
.ende	
	
.enum $D280 export	
_RAM_D280_ db	
.ende	
	
.enum $D7E5 export	
_RAM_D7E5_ db	
.ende	
	
.enum $D800 export	
_RAM_D800_ db	
.ende	
	
.enum $D8E0 export	
_RAM_D8E0_ db	
.ende	
	
.enum $D8E2 export	
_RAM_D8E2_ db	
.ende	
	
.enum $D8EB export	
_RAM_D8EB_ db	
.ende	
	
.enum $D8EF export	
_RAM_D8EF_ db	
_RAM_D8F0_ db	
.ende	
	
.enum $DA40 export	
_RAM_DA40_ db	
.ende	
	
.enum $DAE7 export	
_RAM_DAE7_ db	
.ende	
	
.enum $DAE9 export	
_RAM_DAE9_ db	
_RAM_DAEA_ db	
.ende	
	
.enum $DBEC export	
_RAM_DBEC_ db	
.ende	
	
.enum $DCE7 export	
_RAM_DCE7_ db	
.ende	
	
.enum $DDE7 export	
_RAM_DDE7_ db	
.ende	
	
.enum $DE00 export	
_RAM_DE00_ db	
_RAM_DE01_ db	
_RAM_DE02_ db	
_RAM_DE03_ db	
_RAM_DE04_ db	
_RAM_DE05_ db	
_RAM_DE06_ db	
_RAM_DE07_ db	
.ende	
	
.enum $DE09 export	
_RAM_DE09_ db	
_RAM_DE0A_ db	
_RAM_DE0B_ db	
_RAM_DE0C_ db	
.ende	
	
.enum $DE0E export	
_RAM_DE0E_ db	
.ende	
	
.enum $DE15 export	
_RAM_DE15_ db	
_RAM_DE16_ db	
.ende	
	
.enum $DE18 export	
_RAM_DE18_ db	
_RAM_DE19_ db	
.ende	
	
.enum $DE4E export	
_RAM_DE4E_ db	
.ende	
	
.enum $DE6E export	
_RAM_DE6E_ db	
_RAM_DE6F_ db	
.ende	
	
.enum $DE7C export	
_RAM_DE7C_ db	
.ende	
	
.enum $DE8E export	
_RAM_DE8E_ db	
_RAM_DE8F_ db	
.ende	
	
.enum $DE95 export	
_RAM_DE95_ db	
.ende	
	
.enum $DE9C export	
_RAM_DE9C_ db	
.ende	
	
.enum $DEAE export	
_RAM_DEAE_ db	
.ende	
	
.enum $DECE export	
_RAM_DECE_ db	
.ende	
	
.enum $DEEB export	
_RAM_DEEB_ db	
.ende	
	
.enum $DEEE export	
_RAM_DEEE_ db	
.ende	
	
.enum $DFF0 export	
_RAM_DFF0_ db	
_RAM_DFF1_ db	
_RAM_DFF2_ db	
_RAM_DFF3_ db	
.ende	
	
.enum $E000 export	
_RAM_E000_ db	
.ende	
	
.enum $E0E2 export	
_RAM_E0E2_ db	
.ende	
	
.enum $E49F export	
_RAM_E49F_ db	
.ende	
	
.enum $E8E0 export	
_RAM_E8E0_ db	
.ende	
	
.enum $F602 export	
_RAM_F602_ db	
.ende	
	
.enum $F800 export	
_RAM_F800_ db	
.ende	
	
.enum $FB00 export	
_RAM_FB00_ db	
.ende	
	
.enum $FF23 export	
_RAM_FF23_ db	
.ende	
	
.enum $FF2A export	
_RAM_FF2A_ db	
.ende	
	
.enum $FF40 export	
_RAM_FF40_ db	
.ende	
	
.enum $FF43 export	
_RAM_FF43_ db	
.ende	
	
.enum $FFE0 export	
_RAM_FFE0_ db	
.ende	
	
.enum $FFF0 export	
_RAM_FFF0_ db	
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende	
	
.enum $FFFF export	
_RAM_FFFF_ db	
.ende	
	
; Ports	
.define Port_MemoryControl $3E	
.define Port_IOPortControl $3F	
.define Port_PSG $7F	
.define Port_VDPData $BE	
.define Port_VDPAddress $BF	
.define Port_FMAddress $F0	
.define Port_FMData $F1	
.define Port_AudioControl $F2	
	
; Input Ports	
.define Port_VDPStatus $BF	
.define Port_IOPort1 $DC	
.define Port_IOPort2 $DD	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		di
		im 1
		ld sp, $DFF0
		jp _LABEL_99_
	
	; Data from 9 to A (2 bytes)
	.db $FF $FF
	
; 1st entry of Pointer Table from 120E1 (indexed by unknown)	
; Data from B to B (1 bytes)	
_DATA_B_:	
	.db $FF
	
; Data from C to C (1 bytes)	
_DATA_C_:	
	.db $FF
	
; 1st entry of Pointer Table from 4CF6 (indexed by _RAM_C13C_)	
; Data from D to D (1 bytes)	
_DATA_D_:	
	.db $FF
	
; 3rd entry of Pointer Table from 120F9 (indexed by unknown)	
; Data from E to F (2 bytes)	
_DATA_E_:	
	.db $FF $FF
	
_LABEL_10_:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ret
	
; 3rd entry of Pointer Table from 120E1 (indexed by unknown)	
; Data from 17 to 17 (1 bytes)	
_DATA_17_:	
	.db $FF
	
; Data from 18 to 1E (7 bytes)	
_DATA_18_:	
	.db $FF $FF $FF $FF $FF $FF $FF
	
; 1st entry of Pointer Table from 120F1 (indexed by unknown)	
; Data from 1F to 1F (1 bytes)	
_DATA_1F_:	
	.db $FF
	
; Data from 20 to 2D (14 bytes)	
_DATA_20_:	
	.dsb 14, $FF
	
; 1st entry of Pointer Table from 120E9 (indexed by unknown)	
; Data from 2E to 34 (7 bytes)	
_DATA_2E_:	
	.db $FF $FF $FF $FF $FF $FF $FF
	
; Data from 35 to 36 (2 bytes)	
_DATA_35_:	
	.db $FF $FF
	
; 1st entry of Pointer Table from 10335 (indexed by unknown)	
; Data from 37 to 37 (1 bytes)	
_DATA_37_:	
	.db $FF
	
_LABEL_38_:	
		jp _LABEL_119_
	
	; Data from 3B to 47 (13 bytes)
	.dsb 13, $FF
	
; 5th entry of Pointer Table from 12E20 (indexed by unknown)	
; Data from 48 to 4F (8 bytes)	
_DATA_48_:	
	.db $FF $FF $FF $FF $FF $FF $FF $FF
	
; Data from 50 to 57 (8 bytes)	
_DATA_50_:	
	.db $FF $FF $FF $FF $FF $FF $FF $FF
	
; 3rd entry of Pointer Table from 12E20 (indexed by unknown)	
; Data from 58 to 5F (8 bytes)	
_DATA_58_:	
	.db $FF $FF $FF $FF $FF $FF $FF $FF
	
; Data from 60 to 65 (6 bytes)	
_DATA_60_:	
	.db $FF $FF $FF $FF $FF $FF
	
_LABEL_66_:	
		push af
		ld a, (_RAM_C001_)
		cp $05
		jr c, +
		cp $0A
		jr nc, +
		ld a, (_RAM_C000_)
		bit 1, a
		jr nz, _LABEL_8D_
		ld a, $0C
		ld (_RAM_C00A_), a
		jr _LABEL_8D_
	
+:	
		cp $03
		jr z, +
		cp $0C
		jr nz, _LABEL_8D_
		ld a, $05
		ld (_RAM_C00A_), a
_LABEL_8D_:	
		pop af
		retn
	
+:	
		ld a, (_RAM_DFF3_)
		inc a
		ld (_RAM_DFF3_), a
		jr _LABEL_8D_
	
_LABEL_99_:	
		ld hl, _RAM_FFFC_
		ld (hl), $80
		inc hl
		ld (hl), $00
		inc hl
		ld (hl), $01
		inc hl
		ld (hl), $02
		ld a, (_RAM_C000_)
		ld hl, _RAM_C000_
		ld de, _RAM_C000_ + 1
		ld bc, $1FFB
		ld (hl), $00
		ldir
		ld (_RAM_DFF0_), a
		call _LABEL_8DA_
		call _LABEL_8CD_
		call _LABEL_93F_
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70943_
		call _LABEL_8AF_
		or a
		ld a, $00
		jr z, +
		ld hl, _RAM_C000_
		set 0, (hl)
		ld a, $02
+:	
		ld (_RAM_C001_), a
		ei
--:	
		ld a, $FF
		ld (_RAM_C002_), a
-:	
		ld a, (_RAM_C002_)
		or a
		jr nz, -
		ld a, (_RAM_C001_)
		ld hl, _DATA_F4_
		call _LABEL_23B5_
		jr --
	
; Jump Table from F4 to 117 (18 entries, indexed by _RAM_C001_)	
_DATA_F4_:	
	.dw _LABEL_1AB_ _LABEL_118_ _LABEL_341_ _LABEL_3DA_ _LABEL_52F_ _LABEL_5D3_ _LABEL_5D3_ _LABEL_5D3_
	.dw _LABEL_5D3_ _LABEL_5D3_ _LABEL_356E_ _LABEL_118_ _LABEL_892_ _LABEL_60CE_ _LABEL_118_ _LABEL_63C2_
	.dw _LABEL_643A_ _LABEL_6551_
	
; 2nd entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_118_:	
		ret
	
_LABEL_119_:	
		push af
		push hl
		ex af, af'
		exx
		push af
		push hl
		push ix
		push iy
		in a, (Port_VDPStatus)
		in a, (Port_IOPort2)
		and $10
		ld hl, _RAM_C009_
		ld c, (hl)
		ld (hl), a
		xor c
		and c
		jr nz, ++
		call +
_LABEL_135_:	
		pop iy
		pop ix
		pop hl
		pop af
		exx
		ex af, af'
		pop hl
		pop af
		ei
		ret
	
+:	
		xor a
		ld (_RAM_C002_), a
		ld a, (_RAM_C001_)
		ld hl, _DATA_186_
		jp _LABEL_23B5_
	
++:	
		ld a, (_RAM_C001_)
		cp $05
		jr c, +
		cp $0A
		jr nc, +
		ld a, $02
		ld (_RAM_C00A_), a
		jr _LABEL_135_
	
+:	
		ld de, $81A0
		rst $10	; _LABEL_10_
		ld hl, _RAM_C017_
		ld de, _RAM_C017_ + 1
		ld bc, $01E8
		ld (hl), $00
		ldir
		call _LABEL_97F_
		call _LABEL_968_
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70943_
		ld a, $02
		ld (_RAM_C001_), a
		jr _LABEL_135_
	
; Jump Table from 186 to 1A9 (18 entries, indexed by _RAM_C001_)	
_DATA_186_:	
	.dw _LABEL_1AA_ _LABEL_1F2_ _LABEL_1AA_ _LABEL_436_ _LABEL_1AA_ _LABEL_74A_ _LABEL_778_ _LABEL_7B0_
	.dw _LABEL_812_ _LABEL_739_ _LABEL_1AA_ _LABEL_3637_ _LABEL_1AA_ _LABEL_739_ _LABEL_61BF_ _LABEL_1AA_
	.dw _LABEL_649A_ _LABEL_1AA_
	
; 1st entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_1AA_:	
		ret
	
; 1st entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_1AB_:	
		call _LABEL_23CE_
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70909_
		ld hl, _DATA_54F6_
		ld de, $C000
		ld bc, $0020
		call _LABEL_9B0_
		ld hl, _DATA_269_
		ld de, $4020
		ld bc, $00D8
		ld a, $01
		call _LABEL_A10_
		ld hl, _DATA_241_
		ld de, $7A8C
		ld bc, $0214
		xor a
		ld (_RAM_C003_), a
		call _LABEL_9DB_
		xor a
		ld (_RAM_C017_), a
		ld (_RAM_C018_), a
		ld (_RAM_C019_), a
		ld a, $01
		ld (_RAM_C001_), a
		jp _LABEL_23EB_
	
; 2nd entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_1F2_:	
		call _LABEL_91E_
		jr nz, +
		call ++
		ld hl, _RAM_C017_
		dec (hl)
		ret nz
+:	
		ld a, $02
		ld (_RAM_C001_), a
		ret
	
++:	
		ld hl, _RAM_C019_
		dec (hl)
		ret p
		ld (hl), $01
		ld bc, $0100
-:	
		dec bc
		ld a, b
		or c
		jr nz, -
		ld hl, _RAM_C018_
		ld a, (hl)
		inc (hl)
		and $0F
		ld l, a
		ld h, $00
		ld de, _DATA_231_
		add hl, de
		ld de, $C001
		rst $10	; _LABEL_10_
		ld a, (hl)
		out (Port_VDPData), a
		ld de, $C011
		rst $10	; _LABEL_10_
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
; Data from 231 to 240 (16 bytes)	
_DATA_231_:	
	.db $2F $1F $0F $0E $0D $0C $08 $04 $04 $08 $0C $0D $0E $0F $1F $2F
	
; Data from 241 to 268 (40 bytes)	
_DATA_241_:	
	.db $01 $02 $01 $02 $01 $02 $03 $04 $00 $00 $05 $06 $03 $04 $07 $08
	.db $05 $09 $0A $0B $0C $0D $0E $0F $10 $11 $12 $13 $00 $00 $14 $15
	.db $12 $13 $16 $17 $18 $19 $1A $1B
	
; Data from 269 to 29F (55 bytes)	
_DATA_269_:	
	.db $00 $00 $00 $00 $00 $00 $1F $3F $00 $00 $00 $00 $00 $00 $FF $FE
	.db $00 $00 $00 $00 $00 $00 $00 $01 $00 $00 $00 $00 $00 $00 $E0 $E0
	.db $00 $00 $00 $00 $00 $00 $38 $38 $00 $00 $00 $00 $00 $00 $07 $0F
	.db $00 $00 $00 $00 $00 $00 $3F
	
; Data from 2A0 to 2BF (32 bytes)	
_DATA_2A0_:	
	.db $3F $00 $00 $00 $00 $00 $00 $FE $FF $00 $00 $00 $00 $00 $00 $07
	.db $1C $00 $00 $3F $0C $0C $0C $0C $1D $00 $00 $FF $CC $CC $CC $CC
	
; Data from 2C0 to 2F1 (50 bytes)	
_DATA_2C0_:	
	.db $DC $38 $70 $7F $3F $00 $00 $7F $FF $00 $00 $FC $FE $0E $1C $FC
	.db $F8 $38 $70 $7F $7F $F0 $E0 $FF $7F $00 $00 $FE $FC $00 $00 $FC
	.db $F8 $38 $70 $70 $70 $E0 $E0 $FF $7F $00 $00 $7E $FC $1C $38 $F8
	.db $F0 $03
	
; 1st entry of Pointer Table from 72C18 (indexed by unknown)	
; Data from 2F2 to 30D (28 bytes)	
_DATA_2F2_:	
	.db $07 $0E $1D $3B $70 $E0 $C0 $F0 $30 $38 $F8 $FC $1C $0E $0E $7C
	.db $7C $7C $76 $F7 $E7 $E3 $E3 $1E $3E $7E $EE $DE
	
; 3rd entry of Pointer Table from 72228 (indexed by unknown)	
; Data from 30E to 340 (51 bytes)	
_DATA_30E_:	
	.db $DC $9C $1C $70 $70 $77 $73 $F1 $E0 $E0 $E0 $07 $0E $FE $FC $C0
	.db $E0 $70 $38 $78 $71 $77 $73 $F1 $E0 $E0 $E0 $70 $C0 $00 $80 $C0
	.db $E0 $78 $1C $19 $19 $19 $3B $33 $33 $33 $FF $98 $98 $98 $B8 $30
	.db $30 $30 $FC
	
; 3rd entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_341_:	
		call _LABEL_23CE_
		xor a
		ld (_RAM_C00A_), a
		ld de, $8006
		rst $10	; _LABEL_10_
		ld hl, _RAM_C000_
		res 1, (hl)
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70909_
		ld hl, _RAM_C017_
		ld de, _RAM_C017_ + 1
		ld bc, $01E8
		ld (hl), $00
		ldir
		ld a, $1B
		ld (_RAM_FFFF_), a
		ld hl, _DATA_6C100_
		ld de, $C000
		ld bc, $0020
		call _LABEL_9B0_
		ld hl, _DATA_6C419_
		ld de, $5920
		call _LABEL_A48_
		ld hl, _DATA_6C000_
		ld de, $7C00
		ld bc, $0820
		xor a
		ld (_RAM_C003_), a
		call _LABEL_9DB_
		ld hl, _DATA_6C8D8_
		ld de, $4000
		call _LABEL_A48_
		ld hl, _DATA_6C111_
		ld de, _RAM_C200_
		ld c, $02
		call _LABEL_AA4_
		ld hl, _RAM_C200_
		ld de, $78C8
		ld bc, $0D32
		call _LABEL_9FA_
		ld hl, _DATA_6D0D6_
		ld de, $6000
		call _LABEL_A48_
		ld hl, _DATA_6C250_
		ld de, _RAM_C700_
		ld c, $02
		call _LABEL_AA4_
		ld a, $B4
		ld (_RAM_C019_), a
		ld a, $86
		ld (_RAM_DE04_), a
		xor a
		ld (_RAM_DFF3_), a
		ld a, $03
		ld (_RAM_C001_), a
		jp _LABEL_23EB_
	
; 4th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_3DA_:	
		call _LABEL_91E_
		jp nz, _LABEL_523_
		ld a, (_RAM_C017_)
		or a
		ret nz
		ld a, (_RAM_C019_)
		or a
		ret nz
		ld a, $01
		ld (_RAM_C017_), a
		ld a, $38
		ld (_RAM_C01D_), a
		ld a, $B4
		ld (_RAM_C019_), a
		ld hl, _RAM_C01B_
		inc (hl)
		ld a, (hl)
		cp $08
		jp nc, _LABEL_529_
		and $03
		bit 0, a
		ret z
		bit 1, a
		ld hl, _DATA_6D0D6_
		ld de, _DATA_6C250_
		jr z, +
		ld hl, _DATA_6DCC7_
		ld de, _DATA_6C33E_
+:	
		push de
		ld de, $6000
		ld a, $FF
		ld (_RAM_C021_), a
		ld a, $1B
		ld (_RAM_FFFF_), a
		call _LABEL_A75_
		xor a
		ld (_RAM_C021_), a
		pop hl
		ld de, _RAM_C700_
		ld c, $02
		jp _LABEL_AA4_
	
; 4th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_436_:	
		call +
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ret
	
+:	
		ld a, (_RAM_C021_)
		or a
		ret nz
		ld hl, _RAM_C019_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
+:	
		ld a, (_RAM_C017_)
		or a
		ret z
		ld hl, _RAM_C01D_
		ld a, (hl)
		sub $02
		jr nc, +
		xor a
		ld (_RAM_C017_), a
		ret
	
+:	
		ld (hl), a
		sub $30
		jr c, ++
		ld e, a
		ld d, $00
		ld hl, $78C0
		add hl, de
		ex de, hl
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr c, +
		ld hl, _RAM_C700_
+:	
		ld bc, $0D32
		call _LABEL_4FF_
		jp +++
	
++:	
		push af
		neg
		ld (_RAM_C01F_), a
		ld e, a
		ld d, $00
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr c, +
		ld hl, _RAM_C700_
+:	
		add hl, de
		pop af
		add a, $32
		ld c, a
		ld b, $0D
		ld de, $78C0
		call _LABEL_4E1_
+++:	
		ld hl, (_RAM_C01D_)
		ld a, l
		cp $06
		push af
		ld h, $00
		ld de, $78C8
		add hl, de
		ex de, hl
		pop af
		jr nc, +
		ld bc, $0D32
		xor a
		jr ++
	
+:	
		sub $38
		neg
		ld c, a
		ld b, $0D
		neg
		add a, $32
++:	
		ld (_RAM_C01F_), a
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr nc, +
		ld hl, _RAM_C700_
+:	
		jp _LABEL_4E1_
	
_LABEL_4E1_:	
		push bc
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		jp nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		ld bc, (_RAM_C01F_)
		add hl, bc
		pop bc
		djnz _LABEL_4E1_
		ret
	
_LABEL_4FF_:	
		push bc
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		jp nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz _LABEL_4FF_
		ret
	
_LABEL_518_:	
		ex de, hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ret
	
_LABEL_523_:	
		ld a, $0A
		ld (_RAM_C001_), a
		ret
	
_LABEL_529_:	
		ld a, $11
		ld (_RAM_C001_), a
		ret
	
; 5th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_52F_:	
		di
		ld hl, _DATA_5536_
		ld de, $C008
		ld bc, $0018
		call _LABEL_9B0_
		ld a, $FB
		out (Port_VDPAddress), a
		ld a, $86
		out (Port_VDPAddress), a
		xor a
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ld hl, $0000
		ld de, $5000
		ld bc, $0010
		call _LABEL_988_
		ld de, $7000
		ld bc, $0010
		call _LABEL_988_
		ld hl, _RAM_C020_
		ld de, _RAM_C020_ + 1
		ld bc, $01DF
		ld (hl), $00
		ldir
		ld hl, _DATA_55AE_
		ld de, $5800
		call _LABEL_A48_
		ld hl, _DATA_729_
		ld de, $7E00
		ld bc, $0006
		call _LABEL_9B0_
		ld hl, _DATA_729_
		ld de, $7F00
		ld bc, $0006
		call _LABEL_9B0_
		ld hl, _DATA_72F_
		ld de, $7E80
		ld bc, $000A
		call _LABEL_9B0_
		ld hl, _DATA_72F_
		ld de, $7F80
		ld bc, $000A
		call _LABEL_9B0_
		ld hl, $FFD0
		ld (_RAM_C105_), hl
		ld hl, $0080
		ld (_RAM_C107_), hl
		ld a, $0C
		ld (_RAM_C100_), a
		call _LABEL_3861_
		ld a, $FF
		ld (_RAM_C020_), a
		ld a, $0A
		ld (_RAM_C038_), a
		ld a, $06
		ld (_RAM_C023_), a
		call _LABEL_23BF_
		ld a, $09
		ld (_RAM_C001_), a
		ei
		ret
	
; 6th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_5D3_:	
		call _LABEL_26CA_
		ld hl, _RAM_C022_
		inc (hl)
		ld hl, _RAM_C038_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
+:	
		ld a, (_RAM_C037_)
		or a
		ld hl, $0000
		jr nz, +
		ld a, (_RAM_C021_)
		and $0F
		add a, a
		ld b, a
		add a, a
		add a, b
		add a, a
		ld l, a
		ld h, $00
		add hl, hl
+:	
		ld bc, (_RAM_C01B_)
		add hl, bc
		ld a, (_RAM_C022_)
		and $03
		add a, a
		ld b, a
		add a, a
		add a, b
		ld b, $00
		ld c, a
		add hl, bc
		ld a, (hl)
		ld (_RAM_FFFF_), a
		inc hl
		ex de, hl
		ld a, (_RAM_C023_)
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld c, l
		ld b, h
		ex de, hl
		ld a, (_RAM_C020_)
		or a
		ld de, _RAM_C200_
		jp z, _LABEL_62C_
		ld de, $C500
_LABEL_62C_:	
		ld a, (_RAM_C001_)
		cp $07
		jr nc, +
		halt
		jr _LABEL_62C_
	
+:	
		ld a, (hl)
		inc hl
		or a
		jp nz, _LABEL_68F_
		ld a, (hl)
		inc hl
		push hl
		ld h, (hl)
		ld l, a
		add hl, bc
		call _LABEL_70D_
		ld a, (_RAM_C038_)
		neg
		add a, $18
		ld b, a
-:	
		push bc
		call _LABEL_6CC_
		pop bc
		djnz -
		pop hl
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld b, (hl)
		inc hl
		ld de, _RAM_D800_
-:	
		push bc
		call _LABEL_6DC_
		pop bc
		djnz -
_LABEL_666_:	
		call _LABEL_20A8_
-:	
		ld a, (_RAM_C001_)
		cp $09
		jr z, +
		halt
		jr -
	
+:	
		ld a, (_RAM_C020_)
		xor $FF
		ld (_RAM_C020_), a
		ld a, (_RAM_C00A_)
		or a
		jr z, +
		ld (_RAM_C001_), a
		xor a
		ld (_RAM_C00A_), a
		ret
	
+:	
		ld a, $05
		ld (_RAM_C001_), a
		ret
	
_LABEL_68F_:	
		ld a, (hl)
		inc hl
		push hl
		ld h, (hl)
		ld l, a
		add hl, bc
		ld b, $18
-:	
		push bc
		call _LABEL_6CC_
		ld bc, $FFC0
		add hl, bc
		pop bc
		djnz -
		pop hl
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld b, (hl)
		inc hl
		ld de, $0015
		add hl, de
		ld de, _RAM_D800_
--:	
		push bc
		ld b, $08
-:	
		push bc
		ldi
		ldi
		ldi
		ld bc, $FFFA
		add hl, bc
		pop bc
		djnz -
		ld bc, $0030
		add hl, bc
		pop bc
		djnz --
		jp _LABEL_666_
	
_LABEL_6CC_:	
		ldi
_LABEL_6CE_:	
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
_LABEL_6DC_:	
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
_LABEL_704_:	
		ldi
		ldi
		ldi
		ldi
		ret
	
_LABEL_70D_:	
		ld a, (_RAM_C038_)
		or a
		ret z
		push hl
		call +
		pop hl
		ret
	
+:	
		ld l, e
		ld h, d
		inc de
		ld (hl), $80
		call _LABEL_6CE_
		dec a
		ret z
-:	
		call _LABEL_6CC_
		dec a
		jr nz, -
		ret
	
; Data from 729 to 72E (6 bytes)	
_DATA_729_:	
	.db $10 $10 $20 $20 $18 $D0
	
; Data from 72F to 738 (10 bytes)	
_DATA_72F_:	
	.db $D8 $C0 $E8 $C1 $D8 $C2 $E8 $C3 $E0 $CC
	
; 10th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_739_:	
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ret
	
; 6th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_74A_:	
		xor a
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $40
		jr nz, +
		ld a, $60
+:	
		out (Port_VDPAddress), a
		ld hl, _RAM_C800_
		call _LABEL_AD2_
		call _LABEL_11D5_
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ld a, $06
		ld (_RAM_C001_), a
		ret
	
; 7th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_778_:	
		ld hl, _RAM_D180_
		call _LABEL_AD2_
		ld bc,  $0000 | Port_VDPData
		call _LABEL_11EA_
		ld a, $20
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $50
		jr nz, +
		ld a, $70
+:	
		out (Port_VDPAddress), a
		ld hl, _RAM_D800_
		call _LABEL_11FC_
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ld a, $07
		ld (_RAM_C001_), a
		ret
	
; 8th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_7B0_:	
		ld hl, _RAM_DA40_
		call _LABEL_1213_
		ld bc,  $6800 | Port_VDPData
		xor a
		call _LABEL_1200_
		ld a, (_RAM_C0FA_)
		or a
		jr z, ++
		xor a
		ld (_RAM_C0FA_), a
		ld a, $05
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $7E
		jr nz, +
		ld a, $7F
+:	
		out (Port_VDPAddress), a
		ld hl, _RAM_C03F_
		ld bc,  $3B00 | Port_VDPData
-:	
		outi
		jp nz, -
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $7E
		jr nz, +
		ld a, $7F
+:	
		out (Port_VDPAddress), a
		ld hl, _RAM_C07A_
		ld b, $76
-:	
		outi
		jp nz, -
++:	
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ld a, $08
		ld (_RAM_C001_), a
		ret
	
; 9th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_812_:	
		ld a, (_RAM_C020_)
		or a
		ld a, $FD
		jr nz, +
		ld a, $FF
+:	
		out (Port_VDPAddress), a
		ld a, $85
		out (Port_VDPAddress), a
		xor a
		out (Port_VDPAddress), a
		ld a, $78
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $01
		ld hl, _RAM_C500_
		jr z, +
		xor a
		ld hl, _RAM_C200_
+:	
		call _LABEL_1897_
		ld a, (_RAM_C01D_)
		or a
		call nz, ++
		xor a
		out (Port_VDPAddress), a
		ld a, $7C
		out (Port_VDPAddress), a
		ld a, (_RAM_C020_)
		or a
		ld a, $01
		ld hl, _RAM_C700_
		jr z, +
		xor a
		ld hl, _RAM_C400_
+:	
		call _LABEL_209A_
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ld a, $09
		ld (_RAM_C001_), a
		ret
	
++:	
		xor a
		out (Port_VDPAddress), a
		ld a, $C0
		out (Port_VDPAddress), a
		ld c, Port_VDPData
		ld a, (_RAM_C01D_)
		cp $FF
		jr z, +
		out (c), a
		xor a
		ld (_RAM_C01D_), a
		ret
	
+:	
		xor a
		ld (_RAM_C01D_), a
		ld hl, (_RAM_C019_)
		jp _LABEL_11C4_
	
; 13th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_892_:	
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70943_
		pop af
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C00A_)
		or a
		ret z
		ld (_RAM_C001_), a
		xor a
		ld (_RAM_C00A_), a
		ret
	
_LABEL_8AF_:	
		ld a, $F5
		out (Port_IOPortControl), a
		in a, (Port_IOPort2)
		and $C0
		cp $C0
		jr nz, +
		ld a, $55
		out (Port_IOPortControl), a
		in a, (Port_IOPort2)
		and $C0
		or a
		jr nz, +
		ld a, $FF
		out (Port_IOPortControl), a
		ret
	
+:	
		xor a
		ret
	
_LABEL_8CD_:	
		ld b, $04
--:	
		ld hl, $FFFF
-:	
		dec hl
		ld a, h
		or l
		jr nz, -
		djnz --
		ret
	
_LABEL_8DA_:	
		ld a, (_RAM_DFF0_)
		or $04
		out (Port_MemoryControl), a
		ld bc, $0700
-:	
		ld a, b
		and $01
		out (Port_AudioControl), a
		ld e, a
		in a, (Port_AudioControl)
		and $07
		cp e
		jr nz, +
		inc c
+:	
		djnz -
		ld a, c
		cp $07
		jr z, +
		xor a
+:	
		and $01
		out (Port_AudioControl), a
		ld (_RAM_DE00_), a
		ld a, (_RAM_DFF0_)
		out (Port_MemoryControl), a
		ret
	
_LABEL_907_:	
		ld a, (_RAM_C000_)
		bit 1, a
		jp nz, +
		ld hl, _RAM_C005_
-:	
		in a, (Port_IOPort1)
		or $C0
		cpl
		ld c, a
		xor (hl)
		ld (hl), c
		inc hl
		and c
		ld (hl), a
		ret
	
_LABEL_91E_:	
		ld hl, _RAM_C007_
		call -
		and $30
		ret
	
+:	
		call _LABEL_91E_
		jr z, +
		ld a, $02
		ld (_RAM_C00A_), a
		ret
	
+:	
		ld a, r
		and $3C
		or $20
		ld (_RAM_C006_), a
		ld (_RAM_C005_), a
		ret
	
_LABEL_93F_:	
		ld hl, _DATA_952_
		ld bc,  $1600 | Port_VDPAddress
		otir
		ld de, $4000
		ld hl, $0000
		ld bc, $2000
		jr _LABEL_988_
	
; Data from 952 to 967 (22 bytes)	
_DATA_952_:	
	.db $06 $80 $A0 $81 $FF $82 $FF $83 $FF $84 $FF $85 $FF $86 $00 $87
	.db $00 $88 $00 $89 $FF $8A
	
_LABEL_968_:	
		ld de, $7E00
		ld hl, $E0E0
		ld bc, $0020
		call _LABEL_988_
		ld de, $7F00
		ld hl, $E0E0
		ld bc, $0020
		jr _LABEL_988_
	
_LABEL_97F_:	
		ld de, $7800
		ld bc, $0380
		ld hl, $0000
_LABEL_988_:	
		rst $10	; _LABEL_10_
-:	
		ld a, l
		out (Port_VDPData), a
		push af
		pop af
		ld a, h
		out (Port_VDPData), a
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
	; Data from 997 to 9AF (25 bytes)
	.db $D7 $F5 $F1 $DB $BE $47 $F5 $F1 $DB $BE $4F $C9 $F5 $D7 $F1 $D3
	.db $BE $F5 $F1 $3A $03 $C0 $D3 $BE $C9
	
_LABEL_9B0_:	
		rst $10	; _LABEL_10_
-:	
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
	; Data from 9BB to 9CA (16 bytes)
	.db $D7 $7E $D3 $BE $23 $0B $3A $03 $C0 $D3 $BE $79 $B0 $20 $F2 $C9
	
_LABEL_9CB_:	
		di
		rst $10	; _LABEL_10_
		ei
		jr -
	
	; Data from 9D0 to 9DA (11 bytes)
	.db $D7 $DB $BE $77 $23 $0B $79 $B0 $20 $F7 $C9
	
_LABEL_9DB_:	
		push bc
		set 6, d
		rst $10	; _LABEL_10_
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		push af
		pop af
		ld a, (_RAM_C003_)
		out (c), a
		push af
		pop af
		jp nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz _LABEL_9DB_
		ret
	
_LABEL_9FA_:	
		push bc
		rst $10	; _LABEL_10_
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		ex (sp), hl
		ex (sp), hl
		jp nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz _LABEL_9FA_
		ret
	
_LABEL_A10_:	
		ld (_RAM_C004_), a
		rst $10	; _LABEL_10_
--:	
		ld a, (hl)
		push bc
		push de
		push hl
		ld c, Port_VDPData
		ld b, $04
		ld h, a
		ld a, (_RAM_C004_)
-:	
		rra
		ld d, h
		jr c, +
		ld d, $00
+:	
		out (c), d
		djnz -
		pop hl
		pop de
		pop bc
		inc hl
		dec bc
		ld a, b
		or c
		jp nz, --
		ret
	
	; Data from A35 to A47 (19 bytes)
	.db $D7 $C5 $06 $04 $4D $AF $CB $19 $30 $01 $7C $D3 $BE $10 $F6 $C1
	.db $10 $EF $C9
	
_LABEL_A48_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_A55_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_A55_:	
		ld a, (hl)
		inc hl
		or a
		ret z
		ld c, a
		and $7F
		ld b, a
		ld a, c
		and $80
-:	
		rst $10	; _LABEL_10_
		ld a, (hl)
		out (Port_VDPData), a
		jp z, +
		inc hl
+:	
		inc de
		inc de
		inc de
		inc de
		djnz -
		jp nz, _LABEL_A55_
		inc hl
		jp _LABEL_A55_
	
_LABEL_A75_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_A82_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_A82_:	
		ld a, (hl)
		inc hl
		or a
		ret z
		ld c, a
		and $7F
		ld b, a
		ld a, c
		and $80
-:	
		di
		rst $10	; _LABEL_10_
		ei
		ld a, (hl)
		out (Port_VDPData), a
		jp z, +
		inc hl
+:	
		inc de
		inc de
		inc de
		inc de
		djnz -
		jp nz, _LABEL_A82_
		inc hl
		jp _LABEL_A82_
	
_LABEL_AA4_:	
		ld b, c
-:	
		push bc
		push de
		call _LABEL_AB1_
		inc hl
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_AB1_:	
		ld a, (hl)
		or a
		ret z
		and $7F
		ld b, a
		ld a, (hl)
		inc hl
		and $80
-:	
		ld a, (hl)
		ld (de), a
		jp z, +
		inc hl
+:	
		push af
		ld a, e
		add a, c
		ld e, a
		adc a, d
		sub e
		ld d, a
		pop af
		djnz -
		jp nz, _LABEL_AB1_
		inc hl
		jp _LABEL_AB1_
	
_LABEL_AD2_:	
		ld c, Port_VDPData
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
_LABEL_11C4_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		ret
	
_LABEL_11D5_:	
		ld bc,  $0000 | Port_VDPData
-:	
		outi
		jp nz, -
		nop
-:	
		outi
		jp nz, -
		nop
-:	
		outi
		jp nz, -
		nop
_LABEL_11EA_:	
		outi
		jp nz, _LABEL_11EA_
		nop
-:	
		outi
		jp nz, -
		nop
-:	
		outi
		jp nz, -
		ret
	
_LABEL_11FC_:	
		ld bc,  $C000 | Port_VDPData
		xor a
_LABEL_1200_:	
		outi
		inc b
		dec de
		outi
		inc b
		inc de
		outi
		inc de
		dec de
		nop
		out (Port_VDPData), a
		jp nz, _LABEL_1200_
		ret
	
_LABEL_1213_:	
		ld c, Port_VDPData
		xor a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		outi
		outi
		outi
		out (Port_VDPData), a
		ret
	
_LABEL_1897_:	
		ld c, Port_VDPData
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		outi
		out (Port_VDPData), a
		ret
	
_LABEL_209A_:	
		ld bc,  $0000 | Port_VDPData
-:	
		outi
		dec de
		inc de
		nop
		out (Port_VDPData), a
		jp nz, -
		ret
	
_LABEL_20A8_:	
		xor a
		ld (_RAM_C025_), a
		ld a, (_RAM_C035_)
		ld hl, _DATA_239D_
		jp _LABEL_23B5_
	
; 2nd entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_20B5_:	
		call _LABEL_2F95_
		call _LABEL_2C4A_
		ld iy, _RAM_C116_
		call _LABEL_2123_
		ld iy, _RAM_C129_
		call _LABEL_2123_
		ld iy, _RAM_C13C_
		call _LABEL_2123_
_LABEL_20D0_:	
		ld iy, _RAM_C14F_
		call +
		ld iy, _RAM_C162_
		call +
		ld iy, _RAM_C175_
		call +
		ld a, (_RAM_C000_)
		bit 1, a
		ret z
		ld hl, _RAM_DFF1_
		inc (hl)
		bit 4, (hl)
		ret nz
		bit 5, (hl)
		jp z, _LABEL_43CB_
		jp _LABEL_4391_
	
+:	
		ld a, $11
		ld (_RAM_FFFF_), a
		ld a, (iy+0)
		or a
		ret z
		bit 7, (iy+5)
		ret z
		bit 0, (iy+18)
		ld hl, _DATA_46069_
		ld de, _DATA_45FF1_
		jr z, +
		ld hl, $A081
		ld de, _DATA_46017_
+:	
		dec a
		jp nz, _LABEL_2174_
		ex de, hl
		jp _LABEL_2174_
	
_LABEL_2123_:	
		bit 7, (iy+5)
		ret z
_LABEL_2128_:	
		ld a, (iy+0)
		or a
		ret z
		ld a, (iy+18)
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_2395_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (_RAM_C021_)
		add a, (iy+17)
		and $0F
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ex de, hl
		ld a, (iy+5)
		and $1F
		ld l, a
		ld h, $00
		ld bc, _DATA_2375_
		add hl, bc
		ld a, (hl)
		ld b, a
		add a, a
		add a, b
		ld l, a
		ld h, $00
		add hl, de
		ld a, (hl)
		ld (_RAM_FFFF_), a
		inc hl
		jr _LABEL_2170_
	
_LABEL_2168_:	
		ld a, (iy+5)
		add a, a
		ld l, a
		ld h, $00
		add hl, de
_LABEL_2170_:	
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
_LABEL_2174_:	
		ld c, (iy+10)
		ld b, (iy+11)
		ld (_RAM_C02E_), bc
		ld c, (iy+12)
		ld b, (iy+13)
		ld (_RAM_C030_), bc
_LABEL_2188_:	
		ld a, (hl)
		ld (_RAM_C02C_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C02D_), a
		inc hl
		ld e, (hl)
		ld d, $FF
		inc hl
		ex de, hl
		ld bc, (_RAM_C02E_)
		add hl, bc
		ld a, h
		dec a
		cp $FE
		ret c
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		push hl
		ld hl, (_RAM_C030_)
		ld a, (de)
		ld c, a
		ld b, $FF
		add hl, bc
		ld a, h
		dec a
		cp $FE
		jr nc, +
		pop hl
		ret
	
+:	
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		pop bc
		ld h, c
		ex de, hl
		inc hl
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
_LABEL_21D2_:	
		push bc
		push de
		ld a, d
		cp $18
		jp c, +
		ld b, $00
		add hl, bc
		add hl, bc
		jp _LABEL_223B_
	
+:	
		ld b, c
		ld c, e
		push hl
		ld l, d
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld a, (_RAM_C020_)
		or a
		ld de, $C200
		jr z, +
		ld de, $C500
+:	
		add hl, de
		ex de, hl
		pop hl
-:	
		push bc
		push de
		push hl
		ld a, c
		cp $20
		jr nc, _LABEL_2233_
		or e
		ld e, a
		ld a, (hl)
		inc hl
		or a
		jp z, _LABEL_2233_
		dec a
		jp z, +
		ld a, (de)
		cp $80
		jp nc, _LABEL_22DC_
_LABEL_2215_:	
		ld l, (hl)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ex de, hl
		ld hl, (_RAM_C02C_)
		add hl, de
		ex de, hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld bc, $C800
		add hl, bc
		ex de, hl
		call _LABEL_6CC_
_LABEL_2233_:	
		pop hl
		pop de
		pop bc
		inc hl
		inc hl
		inc c
		djnz -
_LABEL_223B_:	
		pop de
		inc d
		pop bc
		djnz _LABEL_21D2_
		ret
	
+:	
		ld a, (de)
		cp $80
		jp z, _LABEL_22DC_
		jp nc, +
		ld l, (hl)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ex de, hl
		ld hl, (_RAM_C02C_)
		add hl, de
		ex de, hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld bc, _RAM_C800_
		add hl, bc
		ex de, hl
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		call _LABEL_2342_
		jp _LABEL_2233_
	
+:	
		push af
		ld a, (_RAM_C025_)
		cp $80
		jp nc, _LABEL_22D8_
		ld (de), a
		inc a
		ld (_RAM_C025_), a
		dec a
		ld l, (hl)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ex de, hl
		ld hl, (_RAM_C02C_)
		add hl, de
		ex de, hl
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld bc, $C800
		add hl, bc
		pop af
		push hl
		ld h, $00
		sub $81
		ld l, a
		add hl, hl
		add hl, hl
		add hl, hl
		ld c, l
		ld b, h
		add hl, hl
		add hl, bc
		ld bc, _RAM_D800_
		add hl, bc
		ex de, hl
		pop bc
		call +
		call +
		call +
		call +
		call +
		call +
		call +
		call +
		jp _LABEL_2233_
	
_LABEL_22D8_:	
		pop af
		jp _LABEL_2233_
	
_LABEL_22DC_:	
		ld a, (_RAM_C025_)
		cp $80
		jp nc, _LABEL_2233_
		ld (de), a
		inc a
		ld (_RAM_C025_), a
		dec a
		jp _LABEL_2215_
	
+:	
		ld a, (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		jp z, +
		dec hl
		dec hl
		dec hl
		cp $FF
		jp z, ++
		cpl
		push af
		ex de, hl
		and (hl)
		ex de, hl
		or (hl)
		ld (bc), a
		inc bc
		inc de
		inc hl
		pop af
		push af
		ex de, hl
		and (hl)
		ex de, hl
		or (hl)
		ld (bc), a
		inc bc
		inc de
		inc hl
		pop af
		ex de, hl
		and (hl)
		ex de, hl
		or (hl)
		ld (bc), a
		inc bc
		inc de
		inc hl
-:	
		ld a, (hl)
		ld (bc), a
		inc bc
		inc hl
		ret
	
+:	
		ld a, (de)
		ld (bc), a
		inc de
		inc bc
		ld a, (de)
		ld (bc), a
		inc de
		inc bc
		ld a, (de)
		ld (bc), a
		inc de
		inc bc
		jp -
	
++:	
		ld a, (hl)
		ld (bc), a
		inc hl
		inc bc
		inc de
		ld a, (hl)
		ld (bc), a
		inc hl
		inc bc
		inc de
		ld a, (hl)
		ld (bc), a
		inc hl
		inc bc
		inc de
		jp -
	
_LABEL_2342_:	
		ld a, (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		jp z, +
		dec hl
		dec hl
		dec hl
		cp $FF
		jp z, _LABEL_704_
		cpl
		ld b, a
		ld a, (de)
		and b
		or (hl)
		ld (de), a
		inc de
		inc hl
		ld a, (de)
		and b
		or (hl)
		ld (de), a
		inc de
		inc hl
		ld a, (de)
		and b
		or (hl)
		ld (de), a
		inc de
		inc hl
		ld a, (de)
		and b
		or (hl)
		ld (de), a
		inc de
		inc hl
		ret
	
+:	
		inc hl
		inc de
		inc de
		inc de
		inc de
		ret
	
; Data from 2375 to 2394 (32 bytes)	
_DATA_2375_:	
	.db $00 $00 $00 $01 $01 $01 $02 $02 $02 $03 $03 $03 $04 $04 $04 $04
	.db $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $08 $08 $08 $09 $09
	
; Pointer Table from 2395 to 239C (4 entries, indexed by _RAM_C128_)	
_DATA_2395_:	
	.dw _DATA_4CF6_ _DATA_4EF6_ _DATA_50F6_ _DATA_52F6_
	
; Jump Table from 239D to 23B4 (12 entries, indexed by _RAM_C035_)	
_DATA_239D_:	
	.dw _LABEL_2C4A_ _LABEL_20B5_ _LABEL_2ACD_ _LABEL_2AE6_ _LABEL_2C4A_ _LABEL_2C4A_ _LABEL_3458_ _LABEL_401F_
	.dw _LABEL_4125_ _LABEL_464B_ _LABEL_2C4A_ _LABEL_41D7_
	
_LABEL_23B5_:	
		add a, a
		ld d, $00
		ld e, a
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
_LABEL_23BF_:	
		ld a, (_RAM_C017_)
		ld l, a
		ld h, $00
		ld de, _DATA_261E_
		add hl, de
		ld a, (hl)
		ld (_RAM_DE04_), a
		ret
	
_LABEL_23CE_:	
		ei
		halt
		di
		ld de, $8026
		rst $10	; _LABEL_10_
		ld de, $8180
		rst $10	; _LABEL_10_
		ld de, $8900
		rst $10	; _LABEL_10_
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_97F_
		call _LABEL_968_
		jp _LABEL_70943_
	
_LABEL_23EB_:	
		ld de, $81A0
		rst $10	; _LABEL_10_
		ei
		halt
		di
		ld de, $81E0
		rst $10	; _LABEL_10_
		ei
		ret
	
_LABEL_23F8_:	
		ld a, $FF
		ld (_RAM_C0FA_), a
		ld a, $D0
		ld (_RAM_C03F_), a
		ret
	
_LABEL_2403_:	
		ld de, (_RAM_C109_)
		ld l, (iy+1)
		ld h, (iy+2)
		add hl, de
		ld (iy+1), l
		ld (iy+2), h
		ld de, (_RAM_C101_)
		ld l, (iy+6)
		ld h, (iy+7)
		add hl, de
		ld (iy+6), l
		ld (iy+7), h
		ld de, (_RAM_C10B_)
		ld l, (iy+3)
		ld h, (iy+4)
		add hl, de
		ld (iy+3), l
		ld (iy+4), h
		ld de, (_RAM_C103_)
		ld l, (iy+8)
		ld h, (iy+9)
		add hl, de
		ld (iy+8), l
		ld (iy+9), h
_LABEL_2447_:	
		xor a
		ld l, (iy+1)
		ld h, (iy+2)
		ld e, (iy+6)
		ld d, (iy+7)
		sbc hl, de
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		ld b, a
		ex de, hl
		ld a, (iy+5)
		and $1F
		ld c, a
		ld a, b
		ld b, $00
		ld hl, _DATA_25FF_
		add hl, bc
		ld c, a
		ld a, (hl)
		ld b, a
		call _LABEL_258F_
		ld a, c
		or a
		jr z, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ld e, (iy+6)
		ld d, (iy+7)
		add hl, de
		ld (_RAM_C02E_), hl
		xor a
		ld l, (iy+3)
		ld h, (iy+4)
		ld e, (iy+8)
		ld d, (iy+9)
		sbc hl, de
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		ex de, hl
		ld c, a
		ld a, b
		call _LABEL_258F_
		ld a, c
		or a
		jr z, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ld e, (iy+8)
		ld d, (iy+9)
		add hl, de
		ld (_RAM_C030_), hl
		xor a
		ld hl, (_RAM_C02E_)
		ld bc, $FFA0
		adc hl, bc
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		ld (_RAM_C026_), hl
		ld (_RAM_C02A_), a
		xor a
		ld hl, (_RAM_C030_)
		ld bc, $FF80
		adc hl, bc
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		ld (_RAM_C028_), hl
		ld (_RAM_C02B_), a
		ld a, (_RAM_C021_)
		and $0F
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_25D7_
		add hl, bc
		ld a, (_RAM_C02B_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C028_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		push hl
		ld b, $00
		ld hl, _DATA_25D1_ - 2
		add hl, bc
		ld a, (_RAM_C02A_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C026_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		pop de
		add hl, de
		ld de, $0080
		add hl, de
		ld (iy+12), l
		ld (iy+13), h
		ld b, $00
		ld hl, _DATA_25D1_ - 2
		add hl, bc
		ld a, (_RAM_C02B_)
		cpl
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C028_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		push hl
		ld b, $00
		ld hl, _DATA_25D7_
		add hl, bc
		ld a, (_RAM_C02A_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C026_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		pop de
		add hl, de
		ld de, $0060
		add hl, de
		ld (iy+10), l
		ld (iy+11), h
		ret
	
_LABEL_258F_:	
		ex de, hl
		add hl, hl
		ex de, hl
		ld hl, $0000
		add a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		add hl, hl
		adc a, a
		jr nc, +
		add hl, de
		adc a, $00
+:	
		ld l, h
		ld h, a
		ret
	
	; Data from 25CF to 25D0 (2 bytes)
	.db $00 $00
	
; Data from 25D1 to 25D6 (6 bytes)	
_DATA_25D1_:	
	.db $00 $39 $00 $5B $00 $72
	
; Data from 25D7 to 25DC (6 bytes)	
_DATA_25D7_:	
	.db $00 $80 $00 $72 $00 $5B
	
; Data from 25DD to 25FE (34 bytes)	
_DATA_25DD_:	
	.db $00 $39 $00 $00 $FF $39 $FF $5B $FF $72 $FF $80 $FF $72 $FF $5B
	.db $FF $39 $00 $00 $00 $39 $00 $5B $00 $72 $00 $80 $00 $72 $00 $5B
	.db $00 $39
	
; Data from 25FF to 261D (31 bytes)	
_DATA_25FF_:	
	.db $80 $7A $74 $6E $68 $63 $5F $59 $55 $51 $4D $49 $45 $42 $3E $3B
	.db $38 $36 $33 $30 $2E $2C $29 $27 $25 $24 $22 $20 $1F $1D $1B
	
; Data from 261E to 2630 (19 bytes)	
_DATA_261E_:	
	.db $1A $81 $81 $81 $81 $81 $81 $84 $84 $84 $84 $84 $84 $85 $85 $85
	.db $85 $85 $85
	
_LABEL_2631_:	
		ld hl, _RAM_C03F_
		ld (_RAM_C0F0_), hl
		ld hl, _RAM_C07A_
		ld (_RAM_C0F2_), hl
		call +
		ld a, $FF
		ld (_RAM_C0FA_), a
		ld a, $D0
		ld hl, (_RAM_C0F0_)
		ld (hl), a
		ret
	
+:	
		call _LABEL_3EA9_
		call _LABEL_3E03_
		ld a, (_RAM_C035_)
		cp $06
		ret z
		call _LABEL_3B15_
		call _LABEL_39A3_
		ret
	
_LABEL_265F_:	
		ld bc, $0008
		add hl, bc
		ld (_RAM_C0F4_), hl
		ex de, hl
		ld (_RAM_C0F6_), hl
		ld l, a
		ld h, $00
		add hl, hl
		ld bc, _DATA_5926_
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld b, (hl)
		inc hl
		ld (_RAM_C0F8_), hl
_LABEL_267B_:	
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ex de, hl
		ld hl, (_RAM_C0F4_)
		add hl, de
		ld a, h
		or a
		jr nz, +
		ld a, l
		cp $C8
		jr nc, +
		add a, $F8
		ld c, a
		ld hl, (_RAM_C0F8_)
		inc hl
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ex de, hl
		ld hl, (_RAM_C0F6_)
		add hl, de
		ld a, h
		or a
		jr nz, +
		ld a, l
		ld hl, (_RAM_C0F0_)
		ld (hl), c
		inc hl
		ld (_RAM_C0F0_), hl
		ld hl, (_RAM_C0F8_)
		ld de, $0004
		add hl, de
		ld c, (hl)
		ld hl, (_RAM_C0F2_)
		ld (hl), a
		inc hl
		ld (hl), c
		inc hl
		ld (_RAM_C0F2_), hl
+:	
		ld hl, (_RAM_C0F8_)
		ld de, $0005
		add hl, de
		ld (_RAM_C0F8_), hl
		djnz _LABEL_267B_
		ret
	
_LABEL_26CA_:	
		ld a, (_RAM_C035_)
		ld hl, _DATA_26DF_
		jp _LABEL_23B5_
	
; 2nd entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_26D3_:	
		call _LABEL_907_
		call _LABEL_27C3_
		call _LABEL_2D59_
		jp _LABEL_2631_
	
; Jump Table from 26DF to 26F6 (12 entries, indexed by _RAM_C035_)	
_DATA_26DF_:	
	.dw _LABEL_2B6A_ _LABEL_26D3_ _LABEL_2B92_ _LABEL_2BFE_ _LABEL_37AD_ _LABEL_37F1_ _LABEL_3273_ _LABEL_4008_
	.dw _LABEL_40B9_ _LABEL_44A0_ _LABEL_4145_ _LABEL_4170_
	
_LABEL_26F7_:	
		xor a
		ld (_RAM_C036_), a
		ld ix, _RAM_C116_
		call +
		ld ix, _RAM_C129_
		call +
		ld ix, _RAM_C13C_
+:	
		ld a, (ix+0)
		or a
		ret z
		inc a
		ret z
		ld a, (iy+5)
		and $1F
		sub (ix+5)
		jr nc, +
		neg
+:	
		cp $03
		ret nc
		ld a, (ix+5)
		and $1C
		ld l, a
		ld h, $00
		ld de, _DATA_27A3_
		add hl, de
		ex de, hl
		ld l, (iy+10)
		ld h, (iy+11)
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (ix+10)
		ld b, (ix+11)
		or a
		sbc hl, bc
		ret m
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		or a
		sbc hl, bc
		ret p
		ld l, (iy+12)
		ld h, (iy+13)
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (ix+12)
		ld b, (ix+13)
		or a
		sbc hl, bc
		ret m
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		or a
		sbc hl, bc
		ret p
		ld a, (_RAM_C035_)
		cp $09
		jr z, +
		ld a, $FF
		ld (_RAM_C036_), a
		ld (ix+0), a
		ld (ix+18), $00
		xor a
		call _LABEL_443E_
		ld hl, _RAM_C01F_
		inc (hl)
-:	
		ld a, $91
		ld (_RAM_DE05_), a
		ret
	
+:	
		ld a, $FF
		ld (_RAM_C036_), a
		ld a, (ix+18)
		or a
		ret nz
		ld (ix+18), $04
		ld (ix+14), $00
		jr -
	
; Data from 27A3 to 27C2 (32 bytes)	
_DATA_27A3_:	
	.db $20 $40 $20 $40 $1C $38 $1C $38 $18 $30 $18 $30 $14 $28 $14 $28
	.db $10 $20 $10 $20 $0C $18 $0C $18 $08 $10 $08 $10 $04 $08 $04 $08
	
_LABEL_27C3_:	
		ld iy, _RAM_C0FB_
		call _LABEL_2B2A_
_LABEL_27CA_:	
		call _LABEL_28EE_
		ld a, (_RAM_C113_)
		inc a
		ld b, a
		add a, a
		add a, a
		add a, b
		ld b, a
		ld a, (_RAM_C114_)
		inc a
		inc a
		add a, b
		ld (_RAM_C100_), a
		ld a, (_RAM_C113_)
		inc a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_2C59_
		add hl, de
		ld a, (hl)
		ld (_RAM_C02A_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C026_), a
		ld a, (_RAM_C114_)
		inc a
		inc a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_2C5F_
		add hl, de
		ld a, (hl)
		ld (_RAM_C02B_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C028_), a
		ld a, (_RAM_C021_)
		neg
		and $0F
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_25D7_
		add hl, bc
		ld a, (_RAM_C02A_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C026_)
		ld h, $00
		ex de, hl
		call _LABEL_258F_
		ld e, l
		ld d, h
		add hl, hl
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
+:	
		ld (_RAM_C109_), hl
		ld (_RAM_C101_), de
		ld b, $00
		ld hl, _DATA_25D1_
		ld a, (_RAM_C02B_)
		or a
		jr z, +
		ld hl, _DATA_25DD_
+:	
		add hl, bc
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C028_)
		ld h, $00
		ex de, hl
		call _LABEL_258F_
		ld e, l
		ld d, h
		add hl, hl
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
+:	
		ld (_RAM_C10B_), hl
		ld (_RAM_C103_), de
		ld a, (_RAM_C100_)
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_2C69_
		add hl, de
		ld a, (hl)
		ld (_RAM_C02A_), a
		inc hl
		ld c, (hl)
		ld b, $00
		ld (_RAM_C026_), bc
		inc hl
		ld a, (hl)
		ld (_RAM_C02B_), a
		inc hl
		ld c, (hl)
		ld (_RAM_C028_), bc
		call _LABEL_2A36_
		ld hl, (_RAM_C02E_)
		ld (_RAM_C0FC_), hl
		ld hl, (_RAM_C030_)
		ld (_RAM_C0FE_), hl
		ld a, (_RAM_C100_)
		add a, a
		add a, a
		ld l, a
		ld h, $00
		push hl
		ld de, _DATA_2CA5_
		call +
		ld (_RAM_C10D_), hl
		pop hl
		ld de, _DATA_2CE1_
		call +
		ld (_RAM_C10F_), hl
		ret
	
+:	
		add hl, de
		ld a, (hl)
		ld (_RAM_C02A_), a
		inc hl
		ld c, (hl)
		ld b, $00
		ld (_RAM_C026_), bc
		inc hl
		ld a, (hl)
		ld (_RAM_C02B_), a
		inc hl
		ld c, (hl)
		ld (_RAM_C028_), bc
		call _LABEL_2A36_
		ld a, (_RAM_C02E_)
		ld l, a
		ld a, (_RAM_C030_)
		ld h, a
		ret
	
_LABEL_28EE_:	
		ld a, (_RAM_C005_)
		ld c, a
		ld a, (iy+23)
		and $C0
		jp nz, _LABEL_2A00_
		call _LABEL_2974_
		ld a, (_RAM_C114_)
		or a
		jr nz, +
		ld a, (_RAM_C006_)
		and $03
		jr nz, +
		ld a, (_RAM_C005_)
		and $03
		jr z, +
		inc (iy+26)
		jr nz, ++
		ld (iy+26), $04
		jr ++
	
+:	
		ld (iy+26), $00
++:	
		ld hl, _RAM_C023_
		ld b, (iy+24)
		bit 0, c
		jr nz, +++
		bit 1, c
		jr nz, +
		dec (iy+24)
		ret p
		inc (iy+24)
		ret z
		inc (iy+24)
		ret
	
+:	
		dec (hl)
		jp p, +
		ld (hl), $00
		ld a, (_RAM_C115_)
		cp $04
		jr c, ++
		ld (iy+24), $00
		ret
	
+:	
		ld (iy+26), $00
++:	
		inc b
		ret z
		dec (iy+24)
		ret
	
+++:	
		inc (hl)
		ld a, (hl)
		cp $0D
		jr c, +
		ld (hl), $0C
		ld a, (_RAM_C115_)
		cp $04
		jr c, ++
		ld (iy+24), $00
		ret
	
+:	
		ld (iy+26), $00
++:	
		dec b
		ret z
		inc (iy+24)
		ret
	
_LABEL_2974_:	
		ld hl, _RAM_C021_
		ld b, (iy+25)
		ld a, (hl)
		and $0F
		bit 5, (iy+23)
		jp nz, _LABEL_29E3_
		bit 4, (iy+23)
		jp nz, ++
		dec (iy+25)
		jp p, +
		inc (iy+25)
		jr z, +
		inc (iy+25)
+:	
		or a
		jr z, _LABEL_29A3_
		dec (hl)
		cp $08
		ret c
		inc (hl)
		inc (hl)
		ret
	
_LABEL_29A3_:	
		ld (iy+23), $20
		dec (hl)
		dec (iy+25)
		bit 2, c
		ret nz
		ld (iy+23), $10
		inc (hl)
		inc (hl)
		inc (iy+25)
		inc (iy+25)
		bit 3, c
		ret nz
		ld (iy+23), $00
		dec (hl)
		dec (iy+25)
		ret
	
++:	
		dec b
		dec b
		jr z, +
		inc (iy+25)
+:	
		cp $03
		jr z, +
		inc (hl)
		ret
	
+:	
		bit 3, c
		ret nz
		bit 2, c
		jr z, _LABEL_29A3_
		set 7, (iy+23)
		ld (iy+22), $10
		ret
	
_LABEL_29E3_:	
		inc b
		inc b
		jr z, +
		dec (iy+25)
+:	
		cp $0D
		jr z, +
		dec (hl)
		ret
	
+:	
		bit 2, c
		ret nz
		bit 3, c
		jr z, _LABEL_29A3_
		set 6, (iy+23)
		ld (iy+22), $10
		ret
	
_LABEL_2A00_:	
		call +
		dec (iy+22)
		ret nz
		res 7, (iy+23)
		res 6, (iy+23)
		call _LABEL_2974_
		ld a, (iy+23)
		and $C0
		ret z
		ld (iy+23), $00
		ret
	
+:	
		rlca
		ld hl, _RAM_C021_
		ld a, (iy+25)
		jr c, +
		inc (hl)
		dec a
		dec a
		ret z
		inc (iy+25)
		ret
	
+:	
		dec (hl)
		inc a
		inc a
		ret z
		dec (iy+25)
		ret
	
_LABEL_2A36_:	
		ld a, (_RAM_C021_)
		neg
		and $0F
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_25D7_
		add hl, bc
		ld a, (_RAM_C02B_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C028_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		push hl
		ld b, $00
		ld hl, _DATA_25D1_ - 2
		add hl, bc
		ld a, (_RAM_C02A_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C026_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		pop de
		add hl, de
		ld de, $0080
		add hl, de
		ld (_RAM_C030_), hl
		ld b, $00
		ld hl, _DATA_25D1_ - 2
		add hl, bc
		ld a, (_RAM_C02B_)
		cpl
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C028_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		push hl
		ld b, $00
		ld hl, _DATA_25D7_
		add hl, bc
		ld a, (_RAM_C02A_)
		xor (hl)
		ld b, a
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C026_)
		ex de, hl
		call _LABEL_258F_
		inc b
		jr nz, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		pop de
		add hl, de
		ld de, $0060
		add hl, de
		ld (_RAM_C02E_), hl
		ret
	
; 3rd entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_2ACD_:	
		ld iy, _RAM_C0FB_
		ld a, (_RAM_C0FB_)
		ld b, a
		add a, a
		add a, b
		ld l, a
		ld h, $00
		ld de, _DATA_47CE_
		add hl, de
		ld a, (hl)
		ld (_RAM_FFFF_), a
		inc hl
		jp _LABEL_2170_
	
; 4th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_2AE6_:	
		ld iy, _RAM_C0FB_
		ld a, (_RAM_C0FB_)
		sub $14
		jr c, +
		ld b, a
		add a, a
		add a, b
		ld l, a
		ld h, $00
		ld de, _DATA_2D1D_
		add hl, de
		ld c, (hl)
		inc hl
		ex de, hl
		ld b, $FF
		ld hl, (_RAM_C105_)
		push hl
		add hl, bc
		ld (_RAM_C105_), hl
		ex de, hl
		ld a, $11
		ld (_RAM_FFFF_), a
		call _LABEL_2170_
		pop hl
		ld (_RAM_C105_), hl
+:	
		ld a, (_RAM_C0FB_)
		ld b, a
		add a, a
		add a, b
		ld l, a
		ld h, $00
		ld de, _DATA_47FE_
		add hl, de
		ld a, (hl)
		ld (_RAM_FFFF_), a
		inc hl
		jp _LABEL_2170_
	
_LABEL_2B2A_:	
		ld ix, _RAM_C116_
		call +
		ld ix, _RAM_C129_
		call +
		ld ix, _RAM_C13C_
+:	
		ld a, (ix+0)
		or a
		ret z
		ld a, (ix+5)
		cp $02
		ret nc
		ld a, (ix+11)
		or (ix+13)
		ret nz
		ld a, (ix+10)
		add a, $A8
		cp $30
		ret nc
		ld a, (ix+12)
		add a, $A8
		cp $50
		ret nc
		ld a, $02
		ld (_RAM_C035_), a
		pop hl
		ld a, $87
		ld (_RAM_DE04_), a
		ret
	
; 1st entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_2B6A_:	
		call _LABEL_23F8_
		ld hl, (_RAM_C105_)
		ld de, $0010
		add hl, de
		ld (_RAM_C105_), hl
		ld a, l
		cp $60
		ret nz
		ld a, (_RAM_C000_)
		bit 1, a
		jr z, +
		ld a, $01
		ld (_RAM_C035_), a
		ret
	
+:	
		ld a, $07
		ld (_RAM_C035_), a
		xor a
		ld (_RAM_C03A_), a
		ret
	
; 3rd entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_2B92_:	
		call _LABEL_23F8_
		xor a
		ld (_RAM_C005_), a
		ld (_RAM_C006_), a
		ld iy, _RAM_C0FB_
		call _LABEL_28EE_
		ld hl, _RAM_C0FB_
		ld a, (hl)
		cp $0F
		jr nc, _LABEL_2BAD_
		inc (hl)
		ret
	
_LABEL_2BAD_:	
		ld a, (_RAM_C000_)
		bit 1, a
		jr z, +
		ld a, $02
		ld (_RAM_C00A_), a
		ret
	
+:	
		ld a, (_RAM_C021_)
		and $0F
		ret nz
		ld hl, _RAM_C018_
		dec (hl)
		jp m, +
_LABEL_2BC7_:	
		ld a, $00
		ld (_RAM_C035_), a
		ld hl, _RAM_C0FB_
		ld de, _RAM_C0FB_ + 1
		ld bc, $0104
		ld (hl), $00
		ldir
		ld hl, $FFD0
		ld (_RAM_C105_), hl
		ld hl, $0080
		ld (_RAM_C107_), hl
		ld a, $0C
		ld (_RAM_C100_), a
		jp _LABEL_23BF_
	
+:	
		ld a, $08
		ld (_RAM_C035_), a
		ld hl, $FFE0
		ld (_RAM_C0FC_), hl
		ld a, $40
		ld (_RAM_C03A_), a
		ret
	
; 4th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_2BFE_:	
		call _LABEL_23F8_
		xor a
		ld (_RAM_C005_), a
		ld (_RAM_C006_), a
		ld iy, _RAM_C0FB_
		call _LABEL_28EE_
		ld hl, _RAM_C0FB_
		ld a, (hl)
		cp $27
		jr nc, _LABEL_2BAD_
		inc (hl)
		cp $08
		ret c
		cp $14
		jr c, +
		cp $1E
		ld de, $0008
		jr nc, ++
		ld hl, $00C0
		ld (_RAM_C105_), hl
		ld hl, _RAM_C022_
		dec (hl)
		ld a, $88
		ld (_RAM_DE04_), a
		ret
	
+:	
		ld hl, _RAM_C023_
		ld a, (hl)
		cp $0C
		jr nc, +
		inc (hl)
+:	
		ld de, $0010
++:	
		ld hl, (_RAM_C105_)
		add hl, de
		ld (_RAM_C105_), hl
		ret
	
; 1st entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_2C4A_:	
		ld a, $04
		ld (_RAM_FFFF_), a
		ld de, _DATA_47B0_
		ld iy, _RAM_C0FB_
		jp _LABEL_2168_
	
; Data from 2C59 to 2C5E (6 bytes)	
_DATA_2C59_:	
	.db $00 $08 $00 $00 $FF $08
	
; Data from 2C5F to 2C68 (10 bytes)	
_DATA_2C5F_:	
	.db $FF $08 $FF $04 $00 $00 $00 $04 $00 $08
	
; Data from 2C69 to 2CA4 (60 bytes)	
_DATA_2C69_:	
	.db $FF $7E $00 $06 $FF $80 $00 $03 $FF $82 $00 $00 $FF $7D $FF $06
	.db $FF $78 $FF $0C $FF $5A $FF $10 $FF $3D $FF $08 $FF $20 $00 $00
	.db $FF $3E $00 $05 $FF $5C $00 $0A $FF $08 $FF $20 $00 $34 $FF $10
	.db $00 $70 $00 $00 $00 $34 $00 $10 $FF $08 $00 $20
	
; Data from 2CA5 to 2CE0 (60 bytes)	
_DATA_2CA5_:	
	.db $FF $26 $FF $06 $FF $22 $FF $06 $FF $1D $FF $07 $FF $20 $FF $0A
	.db $FF $20 $FF $0C $FF $19 $FF $08 $FF $14 $FF $08 $FF $0F $FF $07
	.db $FF $18 $FF $09 $FF $20 $FF $0B $00 $05 $FF $0B $00 $0C $FF $09
	.db $00 $14 $FF $07 $00 $0A $FF $04 $00 $00 $FF $02
	
; Data from 2CE1 to 2D1C (60 bytes)	
_DATA_2CE1_:	
	.db $FF $28 $00 $06 $FF $23 $00 $07 $FF $1D $00 $08 $FF $1D $00 $03
	.db $FF $1D $FF $02 $FF $20 $00 $05 $FF $18 $00 $06 $FF $0F $00 $08
	.db $FF $14 $00 $05 $FF $19 $00 $02 $FF $02 $00 $03 $00 $09 $00 $05
	.db $00 $14 $00 $08 $00 $0D $00 $0A $00 $06 $00 $0C
	
; Data from 2D1D to 2D1D (1 bytes)	
_DATA_2D1D_:	
	.db $E8
	
	; Pointer Table from 2D1E to 2D25 (4 entries, indexed by _RAM_C0FB_)
	.dw _DATA_45F55_ _DATA_463E8_ _RAM_D09F_ _DATA_45FF1_
	
	; Data from 2D26 to 2D58 (51 bytes)
	.db $D0 $17 $A0 $B8 $3D $A0 $B8 $4B $A0 $B8 $F1 $9F $B8 $17 $A0 $B8
	.db $4B $A0 $B8 $17 $A0 $B8 $F1 $9F $B8 $4B $A0 $B8 $3D $A0 $B8 $4B
	.db $A0 $B8 $3D $A0 $B8 $4B $A0 $B8 $3D $A0 $B8 $4B $A0 $B8 $3D $A0
	.db $B8 $4B $A0
	
_LABEL_2D59_:	
		call _LABEL_2F2B_
		call _LABEL_307D_
		ld iy, _RAM_C116_
		call +
		ld iy, _RAM_C129_
		call +
		ld iy, _RAM_C13C_
+:	
		ld a, (iy+0)
		or a
		ret z
		inc a
		jp z, _LABEL_2E6C_
		ld a, (iy+11)
		inc a
		cp $03
		jp nc, _LABEL_2E67_
		ld a, (iy+13)
		inc a
		cp $03
		jp nc, _LABEL_2E67_
		bit 7, (iy+5)
		jp nz, _LABEL_2E89_
		call +
		jp _LABEL_2403_
	
+:	
		ld a, (iy+18)
		cp $02
		call c, _LABEL_304D_
		ld l, (iy+0)
		dec l
		ld h, $00
		add hl, hl
		ld a, $1E
		ld (_RAM_FFFF_), a
		ld de, _DATA_78DD4_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld l, (iy+16)
		ld h, $00
		inc (iy+16)
		add hl, de
		ld b, (hl)
		bit 7, b
		jp nz, _LABEL_2E5E_
		bit 6, b
		call nz, _LABEL_2E39_
		bit 5, b
		call nz, _LABEL_2E35_
		bit 4, b
		call nz, _LABEL_2E31_
		bit 3, b
		call nz, _LABEL_2E2D_
		bit 2, b
		call nz, _LABEL_2E29_
		bit 1, b
		call nz, ++
		bit 0, b
		call nz, +
		bit 6, b
		ret nz
		ld a, (iy+17)
		and $0F
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_320C_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld l, (iy+3)
		ld h, (iy+4)
		add hl, de
		ld (iy+3), l
		ld (iy+4), h
		ret
	
+:	
		ld l, (iy+1)
		ld h, (iy+2)
		ld de, $FFF8
		add hl, de
		ld (iy+1), l
		ld (iy+2), h
		ret
	
++:	
		ld l, (iy+1)
		ld h, (iy+2)
		ld de, $0008
		add hl, de
		ld (iy+1), l
		ld (iy+2), h
		ret
	
_LABEL_2E29_:	
		inc (iy+17)
		ret
	
_LABEL_2E2D_:	
		dec (iy+17)
		ret
	
_LABEL_2E31_:	
		inc (iy+5)
		ret
	
_LABEL_2E35_:	
		dec (iy+5)
		ret
	
_LABEL_2E39_:	
		inc (iy+17)
		ld de, $FFE8
		bit 2, b
		jr nz, +
		dec (iy+17)
		dec (iy+17)
		ld de, $0018
+:	
		ld l, (iy+3)
		ld h, (iy+4)
		add hl, de
		ld (iy+3), l
		ld (iy+4), h
		res 2, b
		res 3, b
		ret
	
_LABEL_2E5E_:	
		set 7, (iy+5)
		bit 4, b
		jr z, _LABEL_2E89_
		pop hl
_LABEL_2E67_:	
		ld (iy+0), $00
		ret
	
_LABEL_2E6C_:	
		ld l, (iy+1)
		ld h, (iy+2)
		ld de, $0008
		add hl, de
		ld (iy+1), l
		ld (iy+2), h
		inc (iy+18)
		ld a, (iy+18)
		cp $04
		jp c, _LABEL_2403_
		jr _LABEL_2E67_
	
_LABEL_2E89_:	
		call +
		jp _LABEL_2447_
	
+:	
		ld e, (iy+1)
		ld d, (iy+2)
		ld hl, $FFA0
		or a
		adc hl, de
		ld bc, $0020
		jp p, +
		ld bc, $FFE0
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ld (_RAM_C02E_), bc
		ld (_RAM_C026_), hl
		ld e, (iy+3)
		ld d, (iy+4)
		ld hl, $FF80
		or a
		adc hl, de
		ld bc, _DATA_20_
		jp p, +
		ld bc, _RAM_FFE0_
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ld (_RAM_C030_), bc
		ld (_RAM_C028_), hl
		ld de, (_RAM_C026_)
		or a
		sbc hl, de
		jp p, +
		ld de, (_RAM_C028_)
		or a
		adc hl, de
		jp m, ++
		call ++
		jr +++
	
+:	
		or a
		sbc hl, de
		jp p, +++
		call +++
++:	
		ld bc, (_RAM_C02E_)
		ld l, (iy+1)
		ld h, (iy+2)
		add hl, bc
		ld (iy+1), l
		ld (iy+2), h
		ret
	
+++:	
		ld bc, (_RAM_C030_)
		ld l, (iy+3)
		ld h, (iy+4)
		add hl, bc
		ld (iy+3), l
		ld (iy+4), h
		ld a, (iy+0)
		inc a
		ret z
		inc (iy+17)
		inc b
		ret z
		dec (iy+17)
		dec (iy+17)
		ret
	
_LABEL_2F2B_:	
		ld a, (_RAM_C034_)
		or a
		jp nz, _LABEL_302F_
		ld hl, _RAM_C033_
		dec (hl)
		ret p
		ld (hl), $04
		ld de, _RAM_C116_
		ld a, (de)
		or a
		jr z, +
		ld de, _RAM_C129_
		ld a, (de)
		or a
		jr z, +
		ld de, _RAM_C13C_
		ld a, (de)
		or a
		ret nz
+:	
		ld a, $1E
		ld (_RAM_FFFF_), a
		ld hl, _RAM_C032_
		ld a, (hl)
		inc (hl)
		ld l, a
		ld h, $00
		add hl, hl
		push hl
		ld a, (_RAM_C017_)
		dec a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld bc, _DATA_78000_
		add hl, bc
		pop bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld bc, $0013
		ldir
		ld a, (_RAM_C032_)
		cp $40
		ret c
		ld a, (_RAM_C000_)
		bit 1, a
		jr z, +
		ld a, $02
		ld (_RAM_C00A_), a
		ret
	
+:	
		xor a
		ld (_RAM_C032_), a
		dec a
		ld (_RAM_C034_), a
		ret
	
_LABEL_2F95_:	
		ld a, $1F
_LABEL_2F97_:	
		ld iy, _RAM_C116_
		cp (iy+5)
		push af
		call z, _LABEL_2FE4_
		pop af
		ld iy, _RAM_C129_
		cp (iy+5)
		push af
		call z, _LABEL_2FE4_
		pop af
		ld iy, _RAM_C13C_
		cp (iy+5)
		push af
		call z, _LABEL_2FE4_
		pop af
		ld iy, _RAM_C14F_
		cp (iy+5)
		push af
		call z, _LABEL_3010_
		pop af
		ld iy, _RAM_C162_
		cp (iy+5)
		push af
		call z, _LABEL_3010_
		pop af
		ld iy, _RAM_C175_
		cp (iy+5)
		push af
		call z, _LABEL_3010_
		pop af
		dec a
		jp p, _LABEL_2F97_
		ret
	
_LABEL_2FE4_:	
		ld a, (_RAM_C035_)
		cp $09
		ret z
		ld a, (iy+0)
		or a
		ret z
		inc a
		jp nz, _LABEL_2128_
		ld de, _DATA_323F_
-:	
		ld a, (iy+5)
		and $18
		rrca
		bit 0, (iy+18)
		jr z, +
		inc a
		inc a
+:	
		ld l, a
		ld h, $00
		add hl, de
		ld a, $11
		ld (_RAM_FFFF_), a
		jp _LABEL_2170_
	
_LABEL_3010_:	
		ld a, (iy+0)
		or a
		ret z
		dec a
		ld de, $3243
		jr z, -
		ld a, $11
		ld (_RAM_FFFF_), a
		ld a, (iy+5)
		and $1E
		ld l, a
		ld h, $00
		ld de, _DATA_3253_
		add hl, de
		jp _LABEL_2170_
	
_LABEL_302F_:	
		ld a, (_RAM_C116_)
		or a
		ret nz
		ld a, (_RAM_C129_)
		or a
		ret nz
		ld a, (_RAM_C13C_)
		or a
		ret nz
		ld a, (_RAM_C017_)
		ld l, a
		ld h, $00
		ld de, _DATA_322C_
		add hl, de
		ld a, (hl)
		ld (_RAM_C035_), a
		ret
	
_LABEL_304D_:	
		ld a, (iy+5)
		cp $1F
		ret nz
_LABEL_3053_:	
		ld de, _RAM_C14F_
		call +
		ld de, _RAM_C162_
		call +
		ld de, _RAM_C175_
		call +
		ret
	
+:	
		ld a, (de)
		or a
		ret nz
		dec a
		ld (de), a
		inc de
		push iy
		pop hl
		inc hl
		ld bc, $000D
		ldir
		ld hl, $0005
		add hl, de
		ld (hl), $00
		pop hl
		ret
	
_LABEL_307D_:	
		ld iy, _RAM_C14F_
		call +
		ld iy, _RAM_C162_
		call +
		ld iy, _RAM_C175_
+:	
		ld a, (iy+0)
		or a
		ret z
		dec a
		jp z, _LABEL_31FB_
		ld a, (iy+11)
		or (iy+13)
		jp nz, _LABEL_2E67_
		ld a, (iy+10)
		cp $C0
		jp nc, _LABEL_2E67_
		bit 7, (iy+5)
		jr z, _LABEL_3114_
		ld a, (iy+14)
		or (iy+15)
		or (iy+16)
		or (iy+17)
		jr nz, +
		ld a, $03
		ld (_RAM_C035_), a
		pop hl
		ld a, $87
		ld (_RAM_DE04_), a
		ret
	
+:	
		inc (iy+18)
		ld a, (iy+18)
		cp $11
		jr c, +
		ld a, $10
+:	
		srl a
		ld c, a
		ld b, $00
		ld a, (iy+14)
		ld l, a
		ld h, (iy+15)
		or h
		jr z, +
		bit 7, h
		add hl, bc
		jr z, +
		or a
		sbc hl, bc
		sbc hl, bc
+:	
		ld (iy+14), l
		ld (iy+15), h
		ld a, (iy+16)
		ld l, a
		ld h, (iy+17)
		or h
		jr z, +
		bit 7, h
		add hl, bc
		jr z, +
		or a
		sbc hl, bc
		sbc hl, bc
+:	
		ld (iy+16), l
		ld (iy+17), h
		call _LABEL_3DDC_
		jp _LABEL_2403_
	
_LABEL_3114_:	
		call +
		jp _LABEL_2403_
	
+:	
		call +
		dec (iy+5)
		dec (iy+5)
		ret p
		ld (iy+5), $80
		ret
	
+:	
		ld a, (_RAM_C035_)
		cp $09
		ld a, (_RAM_C017_)
		jr z, +++
		ld a, (iy+5)
		cp $08
		jr nc, +
		ld a, $07
		jr ++
	
+:	
		ld a, $18
		sub (iy+5)
++:	
		ld b, a
		ld a, (_RAM_C017_)
		srl a
		srl a
		add a, b
		cp $19
		jr c, +++
		ld a, $18
+++:	
		ld l, (iy+1)
		ld h, (iy+2)
		push hl
		ld de, $0060
		or a
		sbc hl, de
		jp p, ++
		ld b, $00
		ld c, a
		bit 7, a
		jr z, +
		dec b
+:	
		pop hl
		add hl, bc
		ld (iy+14), c
		ld (iy+15), b
		ld c, l
		ld b, h
		or a
		sbc hl, de
		jp m, ++++
		jr +++
	
++:	
		ld b, $00
		cpl
		ld c, a
		cpl
		bit 7, a
		jr nz, +
		dec b
+:	
		pop hl
		add hl, bc
		ld (iy+14), c
		ld (iy+15), b
		ld c, l
		ld b, h
		or a
		sbc hl, de
		jp p, ++++
+++:	
		ld (iy+14), $00
		ld (iy+15), $00
		ld bc, $0060
++++:	
		ld (iy+1), c
		ld (iy+2), b
		ld l, (iy+3)
		ld h, (iy+4)
		push hl
		ld de, $0080
		or a
		sbc hl, de
		jp p, ++
		ld b, $00
		ld c, a
		bit 7, a
		jr z, +
		dec b
+:	
		pop hl
		add hl, bc
		ld (iy+16), c
		ld (iy+17), b
		ld c, l
		ld b, h
		or a
		sbc hl, de
		jp m, ++++
		jr +++
	
++:	
		ld b, $00
		cpl
		ld c, a
		rlca
		jr nc, +
		dec b
+:	
		pop hl
		add hl, bc
		ld (iy+16), c
		ld (iy+17), b
		ld c, l
		ld b, h
		or a
		sbc hl, de
		jp p, ++++
+++:	
		ld bc, $0080
		ld (iy+16), $00
		ld (iy+17), $00
++++:	
		ld (iy+3), c
		ld (iy+4), b
		ret
	
_LABEL_31FB_:	
		call _LABEL_3DDC_
		inc (iy+18)
		ld a, (iy+18)
		cp $06
		jp c, _LABEL_2403_
		jp _LABEL_2E67_
	
; Data from 320C to 322B (32 bytes)	
_DATA_320C_:	
	.db $00 $00 $FC $FF $F8 $FF $F4 $FF $F0 $FF $F4 $FF $F8 $FF $FC $FF
	.db $00 $00 $04 $00 $08 $00 $0C $00 $10 $00 $0C $00 $08 $00 $04 $00
	
; Data from 322C to 323E (19 bytes)	
_DATA_322C_:	
	.db $04 $04 $04 $06 $04 $04 $09 $04 $04 $06 $04 $04 $09 $04 $04 $06
	.db $04 $04 $09
	
; Pointer Table from 323F to 3240 (1 entries, indexed by _RAM_C11B_)	
_DATA_323F_:	
	.dw _DATA_45F55_
	
	; Pointer Table from 3241 to 324E (7 entries, indexed by _RAM_C11B_)
	.dw _DATA_45FA3_ _DATA_45FF1_ _DATA_46017_ _DATA_4603D_ _DATA_4604B_ _DATA_46059_ _DATA_46061_
	
	; Data from 324F to 3252 (4 bytes)
	.db $59 $A0 $61 $A0
	
; Pointer Table from 3253 to 3272 (16 entries, indexed by _RAM_C154_)	
_DATA_3253_:	
	.dw _DATA_46099_ _DATA_460B1_ _DATA_46099_ _DATA_460B1_ _DATA_460C9_ _DATA_460E1_ _DATA_460C9_ _DATA_460E1_
	.dw _DATA_460E9_ _DATA_460F1_ _DATA_460E9_ _DATA_460F1_ _DATA_460F9_ _DATA_46101_ _DATA_460F9_ _DATA_46101_
	
; 7th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_3273_:	
		ld a, (_RAM_C116_)
		ld hl, _DATA_3494_
		call _LABEL_23B5_
		jp _LABEL_2631_
	
; 1st entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_327F_:	
		ld a, $01
		ld (_RAM_C116_), a
		ld hl, $FFD0
		ld (_RAM_C120_), hl
		ld a, (_RAM_C017_)
		cp $03
		ld hl, $0020
		jr z, +
		cp $09
		ld hl, $00E0
		jr z, +
		ld hl, $FFF0
+:	
		ld (_RAM_C122_), hl
		xor a
		ld (_RAM_C128_), a
		jp _LABEL_3486_
	
; 2nd entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_32A8_:	
		call _LABEL_3486_
		ld hl, _RAM_C023_
		dec (hl)
		jp p, +
		ld (hl), $00
+:	
		ld hl, (_RAM_C120_)
		ld de, $0008
		add hl, de
		ld (_RAM_C120_), hl
		ld a, h
		or a
		ret nz
		ld a, $30
		cp l
		ret nc
		xor a
		ld (_RAM_C127_), a
		ld (_RAM_C125_), a
		ld (_RAM_C124_), a
		dec a
		ld (_RAM_C037_), a
		ld a, $04
		ld (_RAM_C126_), a
		ld a, $02
		ld (_RAM_C116_), a
		ret
	
; 3rd entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_32DE_:	
		call _LABEL_3310_
		call _LABEL_3325_
		ld hl, (_RAM_C109_)
		ld de, (_RAM_C120_)
		add hl, de
		ld (_RAM_C120_), hl
		ld hl, (_RAM_C10B_)
		ld de, (_RAM_C122_)
		add hl, de
		ld (_RAM_C122_), hl
		ld a, (_RAM_C124_)
		rrca
		ret nc
		ld a, (_RAM_C006_)
		and $30
		ret z
		ld a, $81
		ld (_RAM_C124_), a
		ld a, $03
		ld (_RAM_C116_), a
		ret
	
_LABEL_3310_:	
		call _LABEL_907_
		ld iy, _RAM_C0FB_
		call _LABEL_27CA_
		ld a, (_RAM_C112_)
		and $C0
		ret z
		xor a
		ld (_RAM_C112_), a
		ret
	
_LABEL_3325_:	
		call _LABEL_336C_
_LABEL_3328_:	
		call _LABEL_3385_
		ld a, (_RAM_C017_)
		cp $03
		ld de, _DATA_34A2_
		jr z, +
		cp $09
		ld de, _DATA_34E6_
		jr z, +
		ld de, _DATA_352A_
+:	
		ld a, (_RAM_C127_)
		add a, a
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, e
		or d
		jr z, +
		ld a, $01
		bit 7, d
		jr z, +
		inc a
+:	
		ld (_RAM_C128_), a
		ld hl, (_RAM_C120_)
		add hl, bc
		ld (_RAM_C120_), hl
		ld hl, (_RAM_C122_)
		add hl, de
		ld (_RAM_C122_), hl
		ret
	
_LABEL_336C_:	
		ld a, (_RAM_C121_)
		inc a
		cp $03
		jr nc, +
		ld a, (_RAM_C123_)
		inc a
		cp $03
		ret c
+:	
		ld a, $04
		ld (_RAM_C035_), a
		xor a
		ld (_RAM_C01F_), a
		ret
	
_LABEL_3385_:	
		ld hl, _RAM_C126_
		dec (hl)
		ret p
		ld (hl), $04
		ld hl, _RAM_C127_
		ld a, (hl)
		cp $10
		ret nc
		inc (hl)
		ret
	
; 4th entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_3395_:	
		call _LABEL_3486_
		ld bc, $FFFF
		call +
		ld a, c
		or b
		ret nz
		ld a, $04
		ld (_RAM_C116_), a
		ret
	
+:	
		ld de, (_RAM_C120_)
		ld hl, $0010
		xor a
		ld (_RAM_C128_), a
		sbc hl, de
		jp p, +
		ld hl, $FFF8
		add hl, de
		ld (_RAM_C120_), hl
		ex de, hl
		ld hl, $0010
		xor a
		sbc hl, de
		jp m, ++
-:	
		ld hl, $0010
		ld (_RAM_C120_), hl
		ld b, $00
		jr ++
	
+:	
		ld hl, $0008
		add hl, de
		ld (_RAM_C120_), hl
		ex de, hl
		ld hl, $0010
		xor a
		sbc hl, de
		jp m, -
++:	
		ld de, (_RAM_C122_)
		ld hl, $0080
		xor a
		sbc hl, de
		jp p, +
		ld hl, $FFF8
		add hl, de
		ld (_RAM_C122_), hl
		ex de, hl
		ld hl, $0080
		xor a
		sbc hl, de
		ret m
-:	
		ld hl, $0080
		ld (_RAM_C122_), hl
		ld c, $00
		ret
	
+:	
		ld hl, $0008
		add hl, de
		ld (_RAM_C122_), hl
		ex de, hl
		ld hl, $0080
		xor a
		sbc hl, de
		ret p
		jr -
	
; 5th entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_3419_:	
		call _LABEL_3486_
		ld hl, (_RAM_C120_)
		ld de, $0008
		add hl, de
		ld (_RAM_C120_), hl
		ld a, l
		cp $48
		ret c
		ld a, $05
		ld (_RAM_C116_), a
		ld a, $10
		ld (_RAM_C125_), a
		ld a, $8E
		ld (_RAM_DE04_), a
		ret
	
; 6th entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_343A_:	
		ld hl, _RAM_C125_
		dec (hl)
		ret p
		ld a, $06
		ld (_RAM_C116_), a
		ret
	
; 7th entry of Jump Table from 3494 (indexed by _RAM_C116_)	
_LABEL_3445_:	
		ld a, $10
		ld (_RAM_C127_), a
		call _LABEL_3328_
		ld a, (_RAM_C121_)
		inc a
		ret p
		ld a, $0A
		ld (_RAM_C035_), a
		ret
	
; 7th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_3458_:	
		ld a, (_RAM_C116_)
		or a
		jp z, _LABEL_2C4A_
		ld iy, _RAM_C116_
		ld a, $11
		ld (_RAM_FFFF_), a
		ld hl, _DATA_452B5_
		call _LABEL_2174_
		ld a, (_RAM_C128_)
		or a
		ld hl, _DATA_45423_
		jr z, +
		dec a
		ld hl, _DATA_45431_
		jr z, +
		ld hl, _DATA_45443_
+:	
		call _LABEL_2174_
		jp _LABEL_2C4A_
	
_LABEL_3486_:	
		xor a
		ld (_RAM_C005_), a
		ld (_RAM_C006_), a
		ld iy, _RAM_C0FB_
		jp _LABEL_27CA_
	
; Jump Table from 3494 to 34A1 (7 entries, indexed by _RAM_C116_)	
_DATA_3494_:	
	.dw _LABEL_327F_ _LABEL_32A8_ _LABEL_32DE_ _LABEL_3395_ _LABEL_3419_ _LABEL_343A_ _LABEL_3445_
	
; Data from 34A2 to 34E5 (68 bytes)	
_DATA_34A2_:	
	.db $08 $00 $00 $00 $04 $00 $04 $00 $00 $00 $08 $00 $00 $00 $08 $00
	.db $FC $FF $04 $00 $F8 $FF $00 $00 $FC $FF $FC $FF $00 $00 $F8 $FF
	.db $00 $00 $F8 $FF $04 $00 $FC $FF $08 $00 $00 $00 $04 $00 $04 $00
	.db $00 $00 $08 $00 $00 $00 $08 $00 $FC $FF $04 $00 $F8 $FF $00 $00
	.db $E8 $FF $00 $00
	
; Data from 34E6 to 3516 (49 bytes)	
_DATA_34E6_:	
	.db $08 $00 $00 $00 $04 $00 $F8 $FF $00 $00 $F4 $FF $00 $00 $F4 $FF
	.db $FC $FF $F8 $FF $F8 $FF $00 $00 $FC $FF $04 $00 $00 $00 $08 $00
	.db $00 $00 $08 $00 $04 $00 $04 $00 $08 $00 $00 $00 $04 $00 $FC $FF
	.db $00
	
; 1st entry of Pointer Table from 4EF6 (indexed by _RAM_C13C_)	
; Data from 3517 to 3529 (19 bytes)	
_DATA_3517_:	
	.db $00 $F8 $FF $00 $00 $F8 $FF $FC $FF $FC $FF $F8 $FF $00 $00 $EC
	.db $FF $08 $00
	
; Data from 352A to 356D (68 bytes)	
_DATA_352A_:	
	.db $10 $00 $00 $00 $0C $00 $08 $00 $08 $00 $0C $00 $04 $00 $10 $00
	.db $00 $00 $0C $00 $FC $FF $08 $00 $F8 $FF $04 $00 $FC $FF $00 $00
	.db $00 $00 $FC $FF $00 $00 $F8 $FF $00 $00 $FC $FF $04 $00 $00 $00
	.db $08 $00 $FC $FF $0C $00 $F8 $FF $06 $00 $F0 $FF $00 $00 $00 $00
	.db $F8 $FF $10 $00
	
; 11th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_356E_:	
		call _LABEL_23CE_
		ld hl, _DATA_554E_
		ld de, $C000
		ld bc, $0020
		call _LABEL_9B0_
		ld hl, _RAM_C020_
		ld de, _RAM_C020_ + 1
		ld bc, $001E
		ld (hl), $00
		ldir
		ld a, $19
		ld (_RAM_FFFF_), a
		ld a, $FF
		out (Port_VDPAddress), a
		ld a, $85
		out (Port_VDPAddress), a
		ld a, $FF
		out (Port_VDPAddress), a
		ld a, $86
		out (Port_VDPAddress), a
		ld hl, _DATA_64999_
		ld de, $4000
		call _LABEL_A48_
		ld hl, _DATA_66195_
		ld de, $6000
		call _LABEL_A48_
		ld hl, _DATA_64000_
		ld de, $6C00
		call _LABEL_A48_
		ld hl, _DATA_66012_
		ld de, _RAM_C200_
		ld c, $02
		call _LABEL_AA4_
		ld hl, _RAM_C200_
		ld de, $7800
		ld bc, $0700
		call _LABEL_9B0_
		ld hl, _DATA_66519_
		ld de, _RAM_C200_
		ld c, $02
		call _LABEL_AA4_
		ld a, $D0
		ld (_RAM_C03F_), a
		ld hl, $8000
		ld (_RAM_C024_), hl
		ld a, $E0
		ld (_RAM_C029_), a
		ld hl, $7EC0
		ld (_RAM_C02A_), hl
		xor a
		ld (_RAM_C017_), a
		ld (_RAM_DFF2_), a
		ld a, $02
		ld (_RAM_C018_), a
		call _LABEL_656E_
		ld hl, _RAM_C00B_
		ld de, _RAM_C00B_ + 1
		ld bc, $0005
		ld (hl), $00
		ldir
		ld de, $81A0
		rst $10	; _LABEL_10_
		ei
		halt
		di
		ld de, $81E0
		rst $10	; _LABEL_10_
		call _LABEL_367A_
		ld a, $1C
		ld (_RAM_FFFF_), a
		ld a, $80
		out (Port_PSG), a
		xor a
		out (Port_PSG), a
		call _LABEL_72DD9_
		ld a, $8D
		ld (_RAM_DE05_), a
		ld a, $0B
		ld (_RAM_C001_), a
		ei
		ret
	
; 12th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_3637_:	
		call +
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ret
	
+:	
		call _LABEL_36FC_
		call _LABEL_367A_
		ld a, (_RAM_C022_)
		cp $08
		ret nc
		ld hl, _RAM_C020_
		dec (hl)
		ret p
		ld (hl), $08
		ld hl, _RAM_C021_
		inc (hl)
		ld a, (hl)
		and $07
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3725_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, $7CD2
		ld bc, $0220
		jp _LABEL_9FA_
	
_LABEL_367A_:	
		ld hl, _RAM_C03F_
		ld (_RAM_C0F0_), hl
		ld hl, _RAM_C07A_
		ld (_RAM_C0F2_), hl
		call _LABEL_36B4_
		ld a, $D0
		ld hl, (_RAM_C0F0_)
		ld (hl), a
_LABEL_368F_:	
		xor a
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld hl, _RAM_C03F_
		ld bc,  $4000 | Port_VDPData
-:	
		outi
		jp nz, -
		ld a, $80
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld hl, _RAM_C07A_
		ld b, $80
-:	
		outi
		jp nz, -
		ret
	
_LABEL_36B4_:	
		ld hl, _RAM_C023_
		dec (hl)
		call m, +
		ld hl, (_RAM_C024_)
		ld de, (_RAM_C026_)
		add hl, de
		ld (_RAM_C024_), hl
		ld l, h
		ld h, $00
		ld de, $0084
		ld a, (_RAM_C028_)
		jp _LABEL_265F_
	
+:	
		ld hl, _RAM_C022_
		ld a, (hl)
		inc (hl)
		cp $1E
		jr c, +
		ld a, $04
		ld (_RAM_C001_), a
		ret
	
+:	
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3735_
		add hl, de
		ld a, (hl)
		ld (_RAM_C023_), a
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (_RAM_C026_), de
		inc hl
		ld a, (hl)
		ld (_RAM_C028_), a
		ret
	
_LABEL_36FC_:	
		ld a, (_RAM_C022_)
		cp $08
		ret c
		ld hl, _RAM_C029_
		ld a, (hl)
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ld a, (hl)
		dec (hl)
		and $07
		ret nz
		ld de, (_RAM_C02A_)
		ld hl, $FFC0
		add hl, de
		ld (_RAM_C02A_), hl
		ld hl, $0000
		ld bc, $0020
		jp _LABEL_988_
	
; Pointer Table from 3725 to 3734 (8 entries, indexed by _RAM_C021_)	
_DATA_3725_:	
	.dw _RAM_C200_ _RAM_C280_ _RAM_C200_ _RAM_C280_ _RAM_C240_ _RAM_C280_ _RAM_C200_ _RAM_C280_
	
; Data from 3735 to 37AC (120 bytes)	
_DATA_3735_:	
	.db $01 $00 $00 $1E $08 $C0 $FF $1F $08 $C0 $FF $20 $08 $C0 $FF $21
	.db $08 $C0 $FF $22 $08 $C0 $FF $21 $08 $C0 $FF $22 $08 $C0 $FF $21
	.db $08 $C0 $FF $23 $08 $B0 $FF $24 $08 $A0 $FF $23 $08 $90 $FF $24
	.db $08 $80 $FF $23 $08 $70 $FF $24 $08 $70 $FF $23 $08 $80 $FF $24
	.db $08 $90 $FF $25 $08 $A0 $FF $26 $08 $B0 $FF $25 $08 $C0 $FF $26
	.db $08 $D0 $FF $25 $08 $E0 $FF $26 $08 $C0 $FF $25 $08 $80 $FF $26
	.db $04 $00 $FF $27 $04 $00 $FE $28 $04 $00 $FD $29 $04 $00 $FC $2A
	.db $04 $00 $FB $2B $04 $00 $FA $2C
	
; 5th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_37AD_:	
		call _LABEL_23F8_
		call _LABEL_3486_
		ld a, (_RAM_C021_)
		and $0F
		ret nz
		ld hl, _RAM_C032_
		ld de, _RAM_C032_ + 1
		ld bc, $000C
		ld (hl), $00
		ldir
		call _LABEL_23F8_
		ld hl, _RAM_C0FB_
		ld de, _RAM_C0FB_ + 1
		ld bc, $0104
		ld (hl), $00
		ldir
		ld a, $05
		ld (_RAM_C035_), a
		ld hl, $0060
		ld (_RAM_C105_), hl
		ld hl, $0080
		ld (_RAM_C107_), hl
		ld a, $07
		ld (_RAM_C100_), a
		xor a
		ld (_RAM_C01E_), a
		ret
	
; 6th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_37F1_:	
		call _LABEL_23F8_
		ld a, (_RAM_C021_)
		and $0F
		jp nz, _LABEL_3486_
		ld a, (_RAM_C039_)
		or a
		jr nz, _LABEL_3844_
		ld hl, _RAM_C023_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret
	
+:	
		ld hl, _RAM_C038_
		ld a, (hl)
		inc (hl)
		cp $05
		jr nc, +
		inc (hl)
		ret
	
+:	
		ld a, (_RAM_C017_)
		dec a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_393B_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, _RAM_C01E_
		ld a, (hl)
		inc (hl)
		ld l, a
		ld h, $00
		add hl, de
		ld a, (hl)
		cp $FF
		jr z, +
		ld (_RAM_C01D_), a
		ret
	
+:	
		ld a, $8C
		ld (_RAM_DE04_), a
		ld a, $FF
		ld (_RAM_C039_), a
		jp _LABEL_3861_
	
_LABEL_3844_:	
		ld hl, _RAM_C038_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret
	
+:	
		ld hl, _RAM_C023_
		ld a, (hl)
		cp $06
		jr nc, +
		inc (hl)
		ret
	
+:	
		ld a, $07
		ld (_RAM_C035_), a
		xor a
		ld (_RAM_C027_), a
		ret
	
_LABEL_3861_:	
		ld hl, _RAM_C017_
		ld a, (hl)
		inc (hl)
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3887_
		add hl, de
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (_RAM_C01B_), bc
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, $38AB
		add hl, de
		ld (_RAM_C019_), hl
		ld a, $FF
		ld (_RAM_C01D_), a
		ret
	
; Pointer Table from 3887 to 38AA (18 entries, indexed by _RAM_C017_)	
_DATA_3887_:	
	.dw _DATA_4B76_ _DATA_4876_ _DATA_4876_ _DATA_49F6_ _DATA_4B76_ _DATA_4876_ _DATA_4B76_ _DATA_4876_
	.dw _DATA_49F6_ _DATA_4876_ _DATA_49F6_ _DATA_4876_ _DATA_49F6_ _DATA_4876_ _DATA_4B76_ _DATA_4876_
	.dw _DATA_4876_ _DATA_4B76_
	
	; Data from 38AB to 393A (144 bytes)
	.db $38 $30 $3F $3C $00 $38 $2A $34 $0B $0A $3F $0E $00 $09 $2A $05
	.db $00 $10 $3F $25 $00 $21 $2A $11 $2D $34 $3F $2C $00 $28 $2A $24
	.db $34 $3F $3F $3D $00 $3E $2A $3F $38 $19 $3F $2D $00 $29 $2A $25
	.db $3A $3F $3F $3E $00 $3D $2A $3E $2B $1B $3F $2F $00 $1A $2A $15
	.db $29 $25 $3F $24 $00 $20 $2A $10 $38 $18 $3F $0D $00 $08 $2A $04
	.db $1B $0A $3F $2F $00 $1A $2A $15 $39 $09 $3F $1D $00 $19 $2A $15
	.db $3D $28 $3F $2D $00 $29 $2A $25 $2A $29 $3F $0E $00 $09 $2A $05
	.db $38 $1A $3F $0F $00 $0B $2A $0A $29 $18 $3F $2C $00 $28 $2A $24
	.db $3E $29 $3F $1E $00 $19 $2A $15 $38 $30 $3F $3C $00 $38 $2A $34
	
; Pointer Table from 393B to 395C (17 entries, indexed by _RAM_C017_)	
_DATA_393B_:	
	.dw _DATA_395D_ _DATA_3963_ _DATA_396C_ _DATA_3972_ _DATA_3979_ _DATA_397A_ _DATA_397D_ _DATA_3980_
	.dw _DATA_3984_ _DATA_3988_ _DATA_398F_ _DATA_3993_ _DATA_3995_ _DATA_3998_ _DATA_399B_ _DATA_399D_
	.dw _DATA_39A0_
	
; 1st entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 395D to 3962 (6 bytes)	
_DATA_395D_:	
	.db $28 $18 $08 $09 $0A $FF
	
; 2nd entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3963 to 396B (9 bytes)	
_DATA_3963_:	
	.db $1B $0A $09 $08 $18 $28 $24 $20 $FF
	
; 3rd entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 396C to 3971 (6 bytes)	
_DATA_396C_:	
	.db $10 $20 $21 $25 $29 $FF
	
; 4th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3972 to 3978 (7 bytes)	
_DATA_3972_:	
	.db $29 $39 $3A $3B $39 $38 $FF
	
; 5th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3979 to 3979 (1 bytes)	
_DATA_3979_:	
	.db $FF
	
; 6th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 397A to 397C (3 bytes)	
_DATA_397A_:	
	.db $28 $29 $FF
	
; 7th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 397D to 397F (3 bytes)	
_DATA_397D_:	
	.db $3A $3B $FF
	
; 8th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3980 to 3983 (4 bytes)	
_DATA_3980_:	
	.db $27 $26 $25 $FF
	
; 9th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3984 to 3987 (4 bytes)	
_DATA_3984_:	
	.db $25 $35 $34 $FF
	
; 10th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3988 to 398E (7 bytes)	
_DATA_3988_:	
	.db $39 $3D $2D $2B $1B $0B $FF
	
; 11th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 398F to 3992 (4 bytes)	
_DATA_398F_:	
	.db $2B $3B $3A $FF
	
; 12th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3993 to 3994 (2 bytes)	
_DATA_3993_:	
	.db $38 $FF
	
; 13th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3995 to 3997 (3 bytes)	
_DATA_3995_:	
	.db $39 $29 $FF
	
; 14th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 3998 to 399A (3 bytes)	
_DATA_3998_:	
	.db $29 $28 $FF
	
; 15th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 399B to 399C (2 bytes)	
_DATA_399B_:	
	.db $39 $FF
	
; 16th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 399D to 399F (3 bytes)	
_DATA_399D_:	
	.db $39 $3D $FF
	
; 17th entry of Pointer Table from 393B (indexed by _RAM_C017_)	
; Data from 39A0 to 39A2 (3 bytes)	
_DATA_39A0_:	
	.db $3D $39 $FF
	
_LABEL_39A3_:	
		call _LABEL_3A08_
		ld a, (_RAM_C005_)
		and $20
		ret z
		ld hl, _RAM_C188_
		ld de, $000E
		ld b, $05
-:	
		ld a, (hl)
		or a
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		push hl
-:	
		add hl, de
		ld a, (hl)
		or a
		jr z, +
		djnz -
		pop hl
		ret
	
+:	
		ld bc, (_RAM_C0FC_)
		ld de, (_RAM_C0FE_)
		push hl
		pop iy
		ld hl, (_RAM_C10D_)
		call +
		pop iy
		ld hl, (_RAM_C10F_)
		call +
		ld a, $8A
		ld (_RAM_DE06_), a
		ret
	
+:	
		ld (iy+1), l
		ld (iy+2), $00
		ld (iy+3), h
		ld (iy+4), $00
		ld (iy+6), c
		ld (iy+7), b
		ld (iy+8), e
		ld (iy+9), d
		ld (iy+5), $00
		ld (iy+0), $FF
		ret
	
_LABEL_3A08_:	
		ld iy, _RAM_C188_
		ld b, $06
-:	
		push bc
		ld a, (iy+0)
		or a
		call nz, +
		pop bc
		ld de, $000E
		add iy, de
		djnz -
		ret
	
+:	
		call +
		call +++
		call _LABEL_26F7_
		ld a, (_RAM_C036_)
		or a
		ret z
		jp ++
	
+:	
		call _LABEL_2403_
		ld a, (iy+5)
		ld l, a
		add a, $04
		cp $20
		jp nc, ++
		ld (iy+5), a
		ld h, $00
		ld de, _DATA_3AE5_
		add hl, de
		ld a, (hl)
		ld l, (iy+10)
		ld h, (iy+11)
		ld e, (iy+12)
		ld d, (iy+13)
		jp _LABEL_265F_
	
++:	
		ld (iy+0), $00
		ret
	
+++:	
		ld ix, _RAM_C14F_
		call +
		ld ix, _RAM_C162_
		call +
		ld ix, _RAM_C175_
+:	
		ld a, (ix+0)
		inc a
		ret nz
		bit 7, (ix+5)
		ret nz
		ld a, (iy+5)
		and $1F
		sub (ix+5)
		jr nc, +
		neg
+:	
		cp $05
		ret nc
		ld a, (ix+5)
		and $18
		rrca
		ld l, a
		ld h, $00
		ld de, _DATA_3B05_
		add hl, de
		ex de, hl
		ld l, (iy+10)
		ld h, (iy+11)
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (ix+10)
		ld b, (ix+11)
		or a
		sbc hl, bc
		ret m
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		or a
		sbc hl, bc
		ret p
		ld l, (iy+12)
		ld h, (iy+13)
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (ix+12)
		ld b, (ix+13)
		or a
		sbc hl, bc
		ret m
		ld a, (de)
		inc de
		ld c, a
		ld b, $00
		or a
		sbc hl, bc
		ret p
		ld a, $91
		ld (_RAM_DE06_), a
		ld (ix+0), $01
		ld (ix+18), $00
		ld a, $01
		jp _LABEL_443E_
	
; Data from 3AE5 to 3B04 (32 bytes)	
_DATA_3AE5_:	
	.db $0D $0D $0D $0D $0D $0D $0D $0D
	.dsb 10, $0E
	.dsb 14, $0F
	
; Data from 3B05 to 3B14 (16 bytes)	
_DATA_3B05_:	
	.db $08 $10 $08 $10 $06 $0C $06 $0C $04 $08 $04 $08 $02 $04 $02 $04
	
_LABEL_3B15_:	
		call _LABEL_3B71_
		ld iy, _RAM_C1EE_
		ld a, (_RAM_C1EE_)
		or a
		jp nz, +
		ld a, (_RAM_C006_)
		and $10
		ret z
		call _LABEL_3C35_
		ld b, $C1
		ld ix, _RAM_C13C_
		call _LABEL_3CD7_
		ld ix, _RAM_C129_
		call _LABEL_3CD7_
		ld ix, _RAM_C116_
		call _LABEL_3CD7_
		ret
	
+:	
		call _LABEL_2403_
		call _LABEL_3DDC_
		call _LABEL_3CF0_
		call +
		call _LABEL_26F7_
		ld a, (_RAM_C036_)
		or a
		ret z
		jp _LABEL_3D18_
	
+:	
		ld ix, _RAM_C13C_
		call _LABEL_3D1D_
		ld ix, _RAM_C129_
		call _LABEL_3D1D_
		ld ix, _RAM_C116_
		call _LABEL_3D1D_
		ret
	
_LABEL_3B71_:	
		ld iy, _RAM_C1DC_
		ld a, (_RAM_C1DC_)
		or a
		jp nz, +
		ld a, (_RAM_C006_)
		and $10
		ret z
		call _LABEL_3C35_
		pop hl
		ld b, $81
		ld ix, _RAM_C116_
		call _LABEL_3CD7_
		ld ix, _RAM_C129_
		call _LABEL_3CD7_
		ld ix, _RAM_C13C_
		call _LABEL_3CD7_
		ret
	
+:	
		call _LABEL_2403_
		call _LABEL_3DDC_
		call _LABEL_3CF0_
		call +
		call _LABEL_26F7_
		ld a, (_RAM_C036_)
		or a
		ret z
		jp _LABEL_3D18_
	
+:	
		ld ix, _RAM_C116_
		call _LABEL_3D21_
		ld ix, _RAM_C129_
		call _LABEL_3D21_
		ld ix, _RAM_C13C_
		call _LABEL_3D21_
		ret
	
; Data from 3BCB to 3C06 (60 bytes)	
_DATA_3BCB_:	
	.db $00 $04 $FF $04 $00 $06 $FF $02 $00 $08 $00 $00 $00 $0A $FF $02
	.db $00 $0C $FF $04 $00 $00 $00 $00 $00 $04 $00 $00 $00 $0C $00 $00
	.db $00 $04 $FF $04 $00 $00 $FF $08 $00 $08 $FF $08 $00 $10 $FF $04
	.db $00 $18 $00 $00 $00 $10 $00 $04 $00 $08 $00 $08
	
; Data from 3C07 to 3C2A (36 bytes)	
_DATA_3C07_:	
	.db $00 $11 $00 $12 $00 $11 $01 $10 $02 $11 $03 $12 $04 $13 $05 $14
	.db $07 $15 $09 $16 $0B $17 $0D $18 $10 $19 $13 $1A $16 $1B $19 $1C
	.db $1D $1D $1F $1D
	
; Data from 3C2B to 3C34 (10 bytes)	
_DATA_3C2B_:	
	.db $00 $04 $00 $02 $00 $00 $FF $02 $FF $04
	
_LABEL_3C35_:	
		ld a, (_RAM_C100_)
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3BCB_
		add hl, de
		ld a, (hl)
		ld (_RAM_C02A_), a
		inc hl
		ld c, (hl)
		ld b, $00
		ld (_RAM_C026_), bc
		inc hl
		ld a, (hl)
		ld (_RAM_C02B_), a
		inc hl
		ld c, (hl)
		ld (_RAM_C028_), bc
		call _LABEL_2A36_
		ld hl, (_RAM_C02E_)
		ld (iy+1), l
		ld (iy+2), h
		ld hl, (_RAM_C030_)
		ld (iy+3), l
		ld (iy+4), h
		ld hl, (_RAM_C0FC_)
		ld (iy+6), l
		ld (iy+7), h
		ld hl, (_RAM_C0FE_)
		ld (iy+8), l
		ld (iy+9), h
		xor a
		ld (_RAM_C02A_), a
		ld a, $08
		ld (_RAM_C026_), a
		ld a, (_RAM_C114_)
		inc a
		inc a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3C2B_
		add hl, de
		ld a, (hl)
		ld (_RAM_C02B_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C028_), a
		call _LABEL_2A36_
		ld hl, (_RAM_C02E_)
		ld de, $FFA0
		add hl, de
		ld de, (_RAM_C109_)
		or a
		sbc hl, de
		ld (iy+14), l
		ld (iy+15), h
		ld hl, (_RAM_C030_)
		ld de, $FF80
		add hl, de
		ld de, (_RAM_C10B_)
		or a
		sbc hl, de
		ld (iy+16), l
		ld (iy+17), h
		ld (iy+5), $00
		ld (iy+0), $01
		ld a, $8B
		ld (_RAM_DE06_), a
		ret
	
_LABEL_3CD7_:	
		ld a, (ix+0)
		or a
		ret z
		ld a, (ix+5)
		and $1F
		cp (iy+5)
		ret c
		ld a, (ix+14)
		cp $01
		ret nz
		ld (ix+14), b
		pop hl
		ret
	
_LABEL_3CF0_:	
		ld a, (iy+0)
		cp $13
		jr nc, _LABEL_3D18_
		inc (iy+0)
		dec a
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3C07_
		add hl, de
		ld a, (hl)
		ld (iy+5), a
		inc hl
		ld a, (hl)
		ld l, (iy+10)
		ld h, (iy+11)
		ld e, (iy+12)
		ld d, (iy+13)
		jp _LABEL_265F_
	
_LABEL_3D18_:	
		ld (iy+0), $00
		ret
	
_LABEL_3D1D_:	
		ld b, $C1
		jr +
	
_LABEL_3D21_:	
		ld b, $81
+:	
		ld a, (ix+0)
		or a
		ret z
		ld a, (ix+14)
		cp b
		ret nz
		ld a, (ix+5)
		and $1F
		cp (iy+5)
		jr nc, +
		ld (ix+14), $01
		ret
	
+:	
		pop hl
		ld l, (ix+6)
		ld h, (ix+7)
		ld (iy+6), l
		ld (iy+7), h
		ld l, (ix+8)
		ld h, (ix+9)
		ld (iy+8), l
		ld (iy+9), h
		xor a
		ld (iy+14), a
		ld (iy+15), a
		ld (iy+16), a
		ld (iy+17), a
		ld a, (iy+5)
		and $1F
		add a, a
		add a, a
		ld l, a
		ld h, $00
		inc hl
		ld (_RAM_C026_), hl
		cpl
		ld l, a
		ld h, $FF
		ld (_RAM_C028_), hl
		ld l, (ix+1)
		ld h, (ix+2)
		push hl
		ld e, (iy+1)
		ld d, (iy+2)
		or a
		sbc hl, de
		jp p, +
		ld bc, (_RAM_C026_)
		add hl, bc
		pop hl
		jr c, ++
		ex de, hl
		sbc hl, bc
		jr ++
	
+:	
		ld bc, (_RAM_C028_)
		add hl, bc
		pop hl
		jr nc, ++
		ld hl, (_RAM_C026_)
		add hl, de
++:	
		ld (iy+1), l
		ld (iy+2), h
		ld l, (ix+3)
		ld h, (ix+4)
		push hl
		ld e, (iy+3)
		ld d, (iy+4)
		or a
		sbc hl, de
		jp p, +
		ld bc, (_RAM_C026_)
		add hl, bc
		pop hl
		jr c, ++
		ex de, hl
		sbc hl, bc
		jr ++
	
+:	
		ld bc, (_RAM_C028_)
		add hl, bc
		pop hl
		jr nc, ++
		ld hl, (_RAM_C026_)
		add hl, de
++:	
		ld (iy+3), l
		ld (iy+4), h
		ret
	
_LABEL_3DDC_:	
		ld l, (iy+1)
		ld h, (iy+2)
		ld e, (iy+14)
		ld d, (iy+15)
		add hl, de
		ld (iy+1), l
		ld (iy+2), h
		ld l, (iy+3)
		ld h, (iy+4)
		ld e, (iy+16)
		ld d, (iy+17)
		add hl, de
		ld (iy+3), l
		ld (iy+4), h
		ret
	
_LABEL_3E03_:	
		ld a, (_RAM_C023_)
		ld l, a
		ld h, $00
		ld de, $FFFA
		add hl, de
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, (_RAM_C037_)
		or a
		ld a, $00
		jr nz, +
		ld a, (_RAM_C021_)
		and $07
+:	
		ld de, $0000
		call _LABEL_265F_
		ld iy, _RAM_C116_
		call +
		ld iy, _RAM_C129_
		call +
		ld iy, _RAM_C13C_
		call +
+:	
		ld a, (iy+0)
		or a
		ret z
		xor a
		ld l, (iy+12)
		ld h, (iy+13)
		ld bc, $FF80
		adc hl, bc
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		or a
		jr z, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ex de, hl
		xor a
		ld l, (iy+10)
		ld h, (iy+11)
		ld bc, $FFA0
		adc hl, bc
		jp p, +
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $FF
+:	
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		or a
		jr z, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		ld a, $08
		jp _LABEL_265F_
	
_LABEL_3EA9_:	
		ld a, (_RAM_C035_)
		cp $06
		jr nz, +
		ld a, (_RAM_C116_)
		cp $05
		ret nc
+:	
		call _LABEL_3FCD_
		ld hl, (_RAM_C026_)
		ld de, $FFE0
		add hl, de
		ld (_RAM_C026_), hl
		ld de, $0040
		add hl, de
		ld (_RAM_C02E_), hl
		ld hl, (_RAM_C028_)
		ld de, $FFE0
		add hl, de
		ld (_RAM_C028_), hl
		ld de, $0040
		add hl, de
		ld (_RAM_C030_), hl
		ld a, (_RAM_C035_)
		cp $06
		jp z, _LABEL_3F70_
		ld iy, _RAM_C116_
		call +
		ld iy, _RAM_C129_
		call +
		ld iy, _RAM_C13C_
+:	
		ld a, (_RAM_C035_)
		cp $09
		jr nz, +
		ld a, (iy+18)
		or a
		ret nz
+:	
		ld a, (iy+0)
		or a
		ret z
		inc a
		ret z
		bit 7, (iy+14)
		jr nz, _LABEL_3F5F_
		ld a, (iy+15)
		or a
		jr z, +
		dec (iy+15)
		bit 0, (iy+15)
		ret z
		jr _LABEL_3F5F_
	
+:	
		ld (iy+14), $00
		ld a, (iy+5)
		and $1F
		cp $06
		ret c
		ld e, (iy+10)
		ld d, (iy+11)
		xor a
		ld hl, (_RAM_C026_)
		sbc hl, de
		ret nc
		xor a
		ld hl, (_RAM_C02E_)
		sbc hl, de
		ret c
		ld e, (iy+12)
		ld d, (iy+13)
		xor a
		ld hl, (_RAM_C028_)
		sbc hl, de
		ret nc
		xor a
		ld hl, (_RAM_C030_)
		sbc hl, de
		ret c
		ld (iy+14), $01
		ld (iy+15), $10
		ld a, $8F
		ld (_RAM_DE06_), a
_LABEL_3F5F_:	
		ld l, (iy+10)
		ld h, (iy+11)
		ld e, (iy+12)
		ld d, (iy+13)
		ld a, $09
		jp _LABEL_265F_
	
_LABEL_3F70_:	
		ld a, (_RAM_C116_)
		cp $02
		ret c
		ld a, (_RAM_C124_)
		bit 7, a
		jr nz, _LABEL_3FC1_
		ld hl, _RAM_C125_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		bit 0, a
		ret z
		ld a, $8F
		ld (_RAM_DE06_), a
		jr _LABEL_3FC1_
	
+:	
		xor a
		ld (_RAM_C124_), a
		ld de, (_RAM_C120_)
		xor a
		ld hl, (_RAM_C026_)
		sbc hl, de
		ret nc
		xor a
		ld hl, (_RAM_C02E_)
		sbc hl, de
		ret c
		ld de, (_RAM_C122_)
		xor a
		ld hl, (_RAM_C028_)
		sbc hl, de
		ret nc
		xor a
		ld hl, (_RAM_C030_)
		sbc hl, de
		ret c
		ld a, $01
		ld (_RAM_C124_), a
		ld a, $04
		ld (_RAM_C125_), a
_LABEL_3FC1_:	
		ld hl, (_RAM_C120_)
		ld de, (_RAM_C122_)
		ld a, $09
		jp _LABEL_265F_
	
_LABEL_3FCD_:	
		ld a, (_RAM_C100_)
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_3FEA_
		add hl, de
		ld e, (hl)
		inc hl
		ld l, (hl)
		ld h, $00
		ld d, h
		ld a, $0A
		ld (_RAM_C026_), hl
		ld (_RAM_C028_), de
		jp _LABEL_265F_
	
; Data from 3FEA to 4007 (30 bytes)	
_DATA_3FEA_:	
	.db $80 $30 $80 $38 $80 $40 $7D $3C $7A $38 $86 $40 $84 $42 $80 $44
	.db $79 $42 $72 $40 $90 $78 $88 $74 $80 $70 $78 $74 $70 $78
	
; 8th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_4008_:	
		call _LABEL_23F8_
		call _LABEL_907_
		call _LABEL_27C3_
		ld hl, _RAM_C03A_
		inc (hl)
		ld a, (hl)
		cp $20
		ret c
		ld a, $01
		ld (_RAM_C035_), a
		ret
	
; 8th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_401F_:	
		call _LABEL_2C4A_
		ld a, $12
		ld (_RAM_FFFF_), a
		call _LABEL_43CB_
		ld hl, $0020
		ld (_RAM_C02E_), hl
		ld hl, $0070
		ld (_RAM_C030_), hl
		ld hl, _DATA_4ACA2_
		call _LABEL_2188_
		ld hl, $0040
		ld (_RAM_C02E_), hl
		ld hl, _DATA_60_
		ld (_RAM_C030_), hl
		ld hl, _DATA_4ACC0_
		call _LABEL_2188_
		ld hl, $0080
		ld (_RAM_C02E_), hl
		ld hl, $0070
		ld (_RAM_C030_), hl
		ld hl, _DATA_4ACDE_
		call _LABEL_2188_
		ld hl, $0088
		ld (_RAM_C02E_), hl
		ld hl, $0090
		ld (_RAM_C030_), hl
		ld a, (_RAM_C018_)
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_4355_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_2188_
		ld a, (_RAM_C017_)
		cp $0A
		call nc, +
		ld hl, $0040
		ld (_RAM_C02E_), hl
		ld hl, $00A8
		ld (_RAM_C030_), hl
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_4369_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp _LABEL_2188_
	
+:	
		ld hl, $0040
		ld (_RAM_C02E_), hl
		ld hl, $00A0
		ld (_RAM_C030_), hl
		ld hl, _DATA_4ADD0_
		call _LABEL_2188_
		ld a, (_RAM_C017_)
		sub $0A
		ret
	
; 9th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_40B9_:	
		call _LABEL_23F8_
		xor a
		ld (_RAM_C01F_), a
		ld hl, _RAM_C023_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
+:	
		ld hl, (_RAM_C0FC_)
		ld a, l
		cp $50
		jr z, +
		ld de, $0010
		add hl, de
		ld (_RAM_C0FC_), hl
		ret
	
+:	
		ld hl, _RAM_C03A_
		dec (hl)
		jp p, +
		ld a, $02
		ld (_RAM_C00A_), a
		ret
	
+:	
		ld a, (_RAM_DFF3_)
		cp $64
		jr z, +
		ld a, (_RAM_C017_)
		cp $0A
		ret nc
		ld a, (_RAM_DFF2_)
		cp $02
		ret nc
-:	
		call _LABEL_907_
		ld a, (_RAM_C005_)
		cp $31
		ret nz
		call _LABEL_656E_
		ld hl, _RAM_C00B_
		ld de, _RAM_C00B_ + 1
		ld bc, $0005
		ld (hl), $00
		ldir
		ld a, $02
		ld (_RAM_C018_), a
		ld hl, _RAM_DFF2_
		inc (hl)
		jp _LABEL_2BC7_
	
+:	
		ld a, (_RAM_C017_)
		cp $12
		jr c, -
		ret
	
; 9th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_4125_:	
		ld a, $12
		ld (_RAM_FFFF_), a
		ld hl, (_RAM_C0FC_)
		ld (_RAM_C02E_), hl
		ld hl, _DATA_50_
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD66_
		call _LABEL_2188_
		ld a, (_RAM_C0FC_)
		cp $50
		ret nz
		jp _LABEL_43CB_
	
; 11th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_4145_:	
		xor a
		ld (_RAM_C021_), a
		ld (_RAM_C037_), a
		call _LABEL_23F8_
		call _LABEL_907_
		call _LABEL_27C3_
		ld hl, _RAM_C116_
		ld de, _RAM_C116_ + 1
		ld (hl), $00
		ld bc, $0004
		ldir
		ld a, $0B
		ld (_RAM_C035_), a
		ld a, $10
		ld (_RAM_C03A_), a
		ld (_RAM_C11E_), a
		ret
	
; 12th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_4170_:	
		call _LABEL_23F8_
		ld a, (_RAM_C03A_)
		or a
		jr z, +
		call _LABEL_907_
		jp _LABEL_27C3_
	
+:	
		ld a, (_RAM_C017_)
		cp $06
		jr z, +
		cp $0C
		jr z, +
		cp $12
		jr z, +
		ld a, $04
		ld (_RAM_C035_), a
		ret
	
+:	
		ld a, (_RAM_C021_)
		and $0F
		jr z, +
		jp _LABEL_3486_
	
+:	
		ld hl, (_RAM_C105_)
		ld de, $FFF0
		add hl, de
		ld (_RAM_C105_), hl
		ld a, $07
		ld (_RAM_C100_), a
		ld hl, _RAM_C023_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret
	
+:	
		ld hl, _RAM_C038_
		ld a, (hl)
		inc (hl)
		cp $05
		jr nc, +
		inc (hl)
		ret
	
+:	
		ld a, (_RAM_C106_)
		or a
		ret p
		ld a, (_RAM_C105_)
		cp $E0
		ret nc
		ld a, $0D
		ld (_RAM_C00A_), a
		ld a, $B3
		ld (_RAM_DE04_), a
		ret
	
; 12th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_41D7_:	
		call _LABEL_2C4A_
		ld a, (_RAM_C03A_)
		or a
		ret z
		call _LABEL_43CB_
		ld a, $15
		ld (_RAM_FFFF_), a
		ld hl, $0020
		ld (_RAM_C02E_), hl
		ld hl, $0038
		ld (_RAM_C030_), hl
		ld hl, _DATA_57774_
		call _LABEL_2188_
		ld hl, $0040
		ld (_RAM_C02E_), hl
		ld hl, $0038
		ld (_RAM_C030_), hl
		ld hl, _DATA_577AE_
		call _LABEL_2188_
		call _LABEL_42D9_
		ld hl, _RAM_C01F_
		ld a, (hl)
		or a
		jp z, _LABEL_42A4_
		ld hl, $0020
		ld (_RAM_C02E_), hl
		sub $64
		jp nc, _LABEL_427F_
		add a, $64
		ld d, $00
_LABEL_4225_:	
		ld bc, $0900
-:	
		sub $0A
		jr c, _LABEL_4276_
		inc c
		djnz -
_LABEL_422F_:	
		push af
		ld hl, $00B0
		ld (_RAM_C030_), hl
		ld l, c
		ld h, $00
		add hl, hl
		ld de, _DATA_437D_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_2188_
		pop af
_LABEL_4246_:	
		ld hl, $00B8
		ld (_RAM_C030_), hl
		ld l, a
		ld h, $00
		add hl, hl
		ld de, _DATA_437D_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_2188_
		ld hl, _RAM_C11E_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret nz
		ld a, $90
		ld (_RAM_DE04_), a
		ret
	
+:	
		ld hl, _RAM_C01F_
		dec (hl)
		call _LABEL_42C3_
		ld a, $02
		jp _LABEL_443E_
	
_LABEL_4276_:	
		add a, $0A
		dec c
		jp m, +
		inc c
		jr _LABEL_422F_
	
_LABEL_427F_:	
		push af
		ld hl, $00A8
		ld (_RAM_C030_), hl
		ld hl, _DATA_577DE_
		call _LABEL_2188_
		ld d, $FF
		pop af
		jr _LABEL_4225_
	
+:	
		inc d
		jr nz, _LABEL_4246_
		push af
		ld hl, $00B0
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		call _LABEL_2188_
		pop af
		jr _LABEL_4246_
	
_LABEL_42A4_:	
		ld a, $94
		ld (_RAM_DE04_), a
		ld hl, _RAM_C03A_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
+:	
		ld hl, $0020
		ld (_RAM_C02E_), hl
		ld hl, $00B8
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		jp _LABEL_2188_
	
_LABEL_42C3_:	
		ld hl, _RAM_C118_
		ld a, $02
		add a, (hl)
		ld (hl), a
		sub $0A
		ret c
		ld (hl), a
		dec hl
		inc (hl)
		ld a, (hl)
		sub $0A
		ret c
		ld (hl), $00
		dec hl
		inc (hl)
		ret
	
_LABEL_42D9_:	
		ld hl, $0040
		ld (_RAM_C02E_), hl
		ld hl, $0080
		ld (_RAM_C030_), hl
		ld hl, _RAM_C116_
		ld bc, $0300
-:	
		push hl
		ld a, (hl)
		or a
		jr z, _LABEL_4338_
		ld c, $FF
		push bc
		call _LABEL_4346_
		pop bc
_LABEL_42F7_:	
		ld hl, (_RAM_C030_)
		ld de, $0008
		add hl, de
		ld (_RAM_C030_), hl
		pop hl
		inc hl
		djnz -
		inc c
		jr nz, +
		ld hl, $0098
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		call _LABEL_2188_
		ld hl, $00A0
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		call _LABEL_2188_
		ld hl, $00A8
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		call _LABEL_2188_
+:	
		ld hl, $00B0
		ld (_RAM_C030_), hl
		ld hl, _DATA_577D4_
		jp _LABEL_2188_
	
_LABEL_4338_:	
		ld a, c
		or a
		jr z, _LABEL_42F7_
		push bc
		ld hl, _DATA_577D4_
		call _LABEL_2188_
		pop bc
		jr _LABEL_42F7_
	
_LABEL_4346_:	
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_437D_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp _LABEL_2188_
	
; Pointer Table from 4355 to 4368 (10 entries, indexed by _RAM_C00C_)	
_DATA_4355_:	
	.dw _DATA_4AD16_ _DATA_4AD1E_ _DATA_4AD26_ _DATA_4AD2E_ _DATA_4AD36_ _DATA_4AD3E_ _DATA_4AD46_ _DATA_4AD4E_
	.dw _DATA_4AD56_ _DATA_4AD5E_
	
; Pointer Table from 4369 to 437C (10 entries, indexed by _RAM_C017_)	
_DATA_4369_:	
	.dw _DATA_4ADC6_ _DATA_4ADD0_ _DATA_4ADDA_ _DATA_4ADE4_ _DATA_4ADEE_ _DATA_4ADF8_ _DATA_4AE02_ _DATA_4AE0C_
	.dw _DATA_4AE16_ _DATA_4AE20_
	
; Pointer Table from 437D to 437E (1 entries, indexed by _RAM_C117_)	
_DATA_437D_:	
	.dw _DATA_577D4_
	
	; Pointer Table from 437F to 4390 (9 entries, indexed by unknown)
	.dw _DATA_577DE_ _DATA_577E8_ _DATA_577F2_ _DATA_577FC_ _DATA_57806_ _DATA_57810_ _DATA_5781A_ _DATA_57824_
	.dw _DATA_5782E_
	
_LABEL_4391_:	
		ld a, $12
		ld (_RAM_FFFF_), a
		ld hl, $00A0
		ld (_RAM_C02E_), hl
		ld hl, $0038
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD00_
		call _LABEL_2188_
		ld hl, $00B0
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD16_
		call _LABEL_2188_
		ld hl, $00B8
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD16_
		call _LABEL_2188_
		ld hl, $0080
		ld (_RAM_C030_), hl
		ld hl, _RAM_C011_
		jr +
	
_LABEL_43CB_:	
		ld a, $12
		ld (_RAM_FFFF_), a
		ld hl, $00A0
		ld (_RAM_C02E_), hl
		ld hl, _DATA_50_
		ld (_RAM_C030_), hl
		ld hl, _DATA_4ACF0_
		call _LABEL_2188_
		ld hl, $00B0
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD16_
		call _LABEL_2188_
		ld hl, $00B8
		ld (_RAM_C030_), hl
		ld hl, _DATA_4AD16_
		call _LABEL_2188_
		ld hl, $0080
		ld (_RAM_C030_), hl
		ld hl, _RAM_C00B_
+:	
		ld bc, $0600
--:	
		push hl
		ld a, (hl)
		or a
		jr z, +
		ld c, $FF
		push bc
		call ++
		pop bc
-:	
		ld hl, (_RAM_C030_)
		ld de, $0008
		add hl, de
		ld (_RAM_C030_), hl
		pop hl
		inc hl
		djnz --
		ret
	
+:	
		ld a, c
		or a
		jr z, -
		push bc
		ld hl, _DATA_4AD16_
		call _LABEL_2188_
		pop bc
		jr -
	
++:	
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_4355_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp _LABEL_2188_
	
_LABEL_443E_:	
		ld b, a
		add a, a
		add a, a
		add a, b
		ld c, a
		ld b, $00
		ld a, (_RAM_C000_)
		bit 1, a
		ret nz
		ld a, (_RAM_C00C_)
		push af
		ld hl, _DATA_4491_
		add hl, bc
		ex de, hl
		ld hl, _RAM_C010_
		ld b, $05
-:	
		ld a, (de)
		add a, (hl)
		ld (hl), a
		sub $0A
		dec hl
		inc de
		jr c, +
		inc (hl)
		inc hl
		ld (hl), a
		dec hl
+:	
		djnz -
		pop bc
		ld a, (_RAM_C00C_)
		cp $05
		jr nz, +
		dec a
		cp b
		jr nz, +
		ld hl, _RAM_C018_
		ld a, (hl)
		cp $09
		jr nc, +
		inc (hl)
+:	
		ld a, (_RAM_C00B_)
		cp $0A
		ret c
		ld hl, _RAM_C00B_
		ld de, _RAM_C00B_ + 1
		ld bc, $0005
		ld (hl), $09
		ldir
		ret
	
; Data from 4491 to 449F (15 bytes)	
_DATA_4491_:	
	.db $05 $02 $00 $00 $00 $08 $00 $00 $00 $00 $00 $00 $02 $00 $00
	
; 10th entry of Jump Table from 26DF (indexed by _RAM_C035_)	
_LABEL_44A0_:	
		ld a, (_RAM_C116_)
		ld hl, _DATA_4700_
		call _LABEL_23B5_
		jp _LABEL_2631_
	
; 1st entry of Jump Table from 4700 (indexed by _RAM_C116_)	
_LABEL_44AC_:	
		ld a, $92
		ld (_RAM_DE04_), a
		ld hl, _RAM_C116_
		ld de, _RAM_C116_ + 1
		ld bc, $00E9
		ld (hl), $00
		ldir
		ld a, $01
		ld (_RAM_C116_), a
		ld hl, $FFD0
		ld (_RAM_C120_), hl
		ld hl, $0080
		ld (_RAM_C122_), hl
		jp _LABEL_3486_
	
; 2nd entry of Jump Table from 4700 (indexed by _RAM_C116_)	
_LABEL_44D2_:	
		call _LABEL_3486_
		ld hl, (_RAM_C120_)
		ld de, $0008
		add hl, de
		ld (_RAM_C120_), hl
		ld a, h
		or a
		ret nz
		ld a, $40
		cp l
		ret nc
		ld a, $FF
		ld (_RAM_C037_), a
		ld a, $04
		ld (_RAM_C126_), a
		ld a, $02
		ld (_RAM_C116_), a
		ld (_RAM_C127_), a
		ld a, $08
		ld (_RAM_C139_), a
		ld a, $01
		ld (_RAM_C129_), a
		ld (_RAM_C13C_), a
		ld a, $14
		ld (_RAM_C11B_), a
		ld (_RAM_C12E_), a
		ld (_RAM_C141_), a
		ld a, $83
		ld (_RAM_DE04_), a
		ret
	
; 3rd entry of Jump Table from 4700 (indexed by _RAM_C116_)	
_LABEL_4516_:	
		call _LABEL_3310_
		call _LABEL_45A4_
		call _LABEL_307D_
		call _LABEL_45C5_
		call _LABEL_336C_
		ld a, (_RAM_C035_)
		cp $04
		call z, _LABEL_23BF_
_LABEL_452D_:	
		ld hl, (_RAM_C109_)
		add hl, hl
		ld de, (_RAM_C120_)
		add hl, de
		ld (_RAM_C120_), hl
		ld (_RAM_C11C_), hl
		ld (_RAM_C117_), hl
		ld (_RAM_C133_), hl
		ld (_RAM_C12F_), hl
		ld (_RAM_C12A_), hl
		ld (_RAM_C146_), hl
		ld (_RAM_C142_), hl
		ld (_RAM_C13D_), hl
		ld hl, (_RAM_C10B_)
		add hl, hl
		ld de, (_RAM_C122_)
		add hl, de
		ld (_RAM_C122_), hl
		ld (_RAM_C11E_), hl
		ld (_RAM_C119_), hl
		ld de, $FFD8
		add hl, de
		ld (_RAM_C135_), hl
		ld (_RAM_C131_), hl
		ld (_RAM_C12C_), hl
		ld de, $0050
		add hl, de
		ld (_RAM_C148_), hl
		ld (_RAM_C144_), hl
		ld (_RAM_C13F_), hl
		ret
	
; 4th entry of Jump Table from 4700 (indexed by _RAM_C116_)	
_LABEL_457E_:	
		pop hl
		call _LABEL_3310_
		call _LABEL_23F8_
		ld hl, _RAM_C127_
		inc (hl)
		ld l, (hl)
		ld h, $00
		ld de, (_RAM_C120_)
		add hl, de
		ld (_RAM_C120_), hl
		call _LABEL_452D_
		ld a, (_RAM_C121_)
		inc a
		cp $03
		ret c
		ld a, $0A
		ld (_RAM_C035_), a
		ret
	
_LABEL_45A4_:	
		ld hl, _RAM_C139_
		dec (hl)
		ret p
		ld (hl), $10
		ld iy, _RAM_C116_
		call +
		ld iy, _RAM_C129_
		call +
		ld iy, _RAM_C13C_
+:	
		ld a, (iy+18)
		or a
		ret nz
		jp _LABEL_3053_
	
_LABEL_45C5_:	
		ld a, (_RAM_C128_)
		or a
		jr z, +
		ld a, (_RAM_C13B_)
		or a
		jr z, +
		ld a, (_RAM_C14E_)
		or a
		jr z, +
		ld a, $03
		ld (_RAM_C116_), a
		xor a
		ld (_RAM_C127_), a
		ld a, $08
		ld (_RAM_C13A_), a
		ret
	
+:	
		ld a, (_RAM_C127_)
		ld de, _RAM_C120_
		call ++
		ld a, (_RAM_C13A_)
		ld de, _RAM_C122_
		call ++
		call +++
		ld a, (_RAM_C121_)
		or a
		ld hl, _RAM_C127_
		call nz, +
		ld a, (_RAM_C123_)
		or a
		ret z
		ld hl, _RAM_C13A_
+:	
		ld (hl), $0C
		ret p
		ld (hl), $04
		ret
	
++:	
		add a, a
		ld c, a
		ld b, $00
		ld a, (_RAM_C017_)
		cp $12
		ld hl, _DATA_4708_
		jr nz, +
		ld hl, _DATA_4728_
+:	
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld a, (de)
		ld l, a
		inc de
		ld a, (de)
		ld h, a
		add hl, bc
		ex de, hl
		ld (hl), d
		dec hl
		ld (hl), e
		ret
	
+++:	
		ld hl, _RAM_C126_
		dec (hl)
		ret p
		ld (hl), $18
		ld hl, _RAM_C127_
		call +
		ld hl, _RAM_C13A_
+:	
		ld a, (hl)
		inc (hl)
		cp $0F
		ret c
		ld (hl), $00
		ret
	
; 10th entry of Jump Table from 239D (indexed by _RAM_C035_)	
_LABEL_464B_:	
		ld a, (_RAM_C116_)
		or a
		jp z, _LABEL_2C4A_
		ld a, $06
		ld (_RAM_FFFF_), a
		ld iy, _RAM_C116_
		ld hl, _DATA_19FD5_
		call _LABEL_2174_
		ld hl, _DATA_1A13F_
		call +
		ld iy, _RAM_C129_
		ld hl, $A12B
		call +
		ld iy, _RAM_C13C_
		ld hl, $A135
		call +
		ld a, (_RAM_C116_)
		cp $03
		jr nc, ++
		call _LABEL_2F95_
		call _LABEL_2C4A_
		jp _LABEL_20D0_
	
+:	
		ld a, (iy+18)
		or a
		ret z
		inc a
		ld a, $06
		ld (_RAM_FFFF_), a
		jp z, _LABEL_2174_
		ld a, $11
		ld (_RAM_FFFF_), a
		ld l, (iy+18)
		dec l
		ld h, $00
		add hl, hl
		ld de, _DATA_4748_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_2174_
		dec (iy+18)
		ret nz
		ld (iy+18), $FF
		ret
	
++:	
		call +
		jp _LABEL_2C4A_
	
+:	
		ld a, $11
		ld (_RAM_FFFF_), a
		ld a, $91
		ld (_RAM_DE05_), a
		ld a, (_RAM_C127_)
		call +
		ld hl, _RAM_C13A_
		inc (hl)
		ld a, (hl)
+:	
		and $0F
		add a, a
		ld b, a
		add a, a
		add a, b
		ld l, a
		ld h, $00
		ld de, _DATA_4750_
		add hl, de
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		push hl
		ld hl, (_RAM_C120_)
		add hl, bc
		ld (_RAM_C02E_), hl
		ld hl, (_RAM_C122_)
		add hl, de
		ld (_RAM_C030_), hl
		pop hl
		jp _LABEL_2188_
	
; Jump Table from 4700 to 4707 (4 entries, indexed by _RAM_C116_)	
_DATA_4700_:	
	.dw _LABEL_44AC_ _LABEL_44D2_ _LABEL_4516_ _LABEL_457E_
	
; Data from 4708 to 4727 (32 bytes)	
_DATA_4708_:	
	.db $00 $00 $04 $00 $08 $00 $0C $00 $10 $00 $0C $00 $08 $00 $04 $00
	.db $00 $00 $FC $FF $F8 $FF $F4 $FF $F0 $FF $F4 $FF $F8 $FF $FC $FF
	
; Data from 4728 to 4747 (32 bytes)	
_DATA_4728_:	
	.db $00 $00 $06 $00 $0C $00 $12 $00 $18 $00 $12 $00 $0C $00 $06 $00
	.db $00 $00 $FA $FF $F4 $FF $EE $FF $E8 $FF $EE $FF $F4 $FF $FA $FF
	
; Pointer Table from 4748 to 474F (4 entries, indexed by _RAM_C128_)	
_DATA_4748_:	
	.dw _DATA_4603D_ _DATA_4604B_ _DATA_45FF1_ _DATA_46017_
	
; Data from 4750 to 47AF (96 bytes)	
_DATA_4750_:	
	.db $F0 $FF $F8 $FF $F1 $9F $F0 $FF $F8 $FF $17 $A0 $E0 $FF $10 $00
	.db $F1 $9F $E0 $FF $10 $00 $17 $A0 $E8 $FF $D0 $FF $F1 $9F $E8 $FF
	.db $D0 $FF $17 $A0 $D8 $FF $28 $00 $F1 $9F $D8 $FF $28 $00 $17 $A0
	.db $F8 $FF $F8 $FF $4B $A0 $D8 $FF $F0 $FF $4B $A0 $00 $00 $10 $00
	.db $4B $A0 $10 $00 $18 $00 $4B $A0 $08 $00 $D0 $FF $4B $A0 $E8 $FF
	.db $28 $00 $4B $A0 $18 $00 $20 $00 $4B $A0 $E0 $FF $D8 $FF $4B $A0
	
; Pointer Table from 47B0 to 47CD (15 entries, indexed by _RAM_C100_)	
_DATA_47B0_:	
	.dw _DATA_10400_ _DATA_103A0_ _DATA_10000_ _DATA_10056_ _DATA_100B6_ _DATA_104DC_ _DATA_10472_ _DATA_10128_
	.dw _DATA_1017E_ _DATA_101E8_ _DATA_105B8_ _DATA_1054E_ _DATA_1025A_ _DATA_102C4_ _DATA_1032E_
	
; Data from 47CE to 47FD (48 bytes)	
_DATA_47CE_:	
	.db $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $0F
	.db $49 $A1 $0F $37 $AE $0F $49 $A1 $0F $37 $AE $16 $99 $A6 $16 $99
	.db $A6 $16 $99 $A6 $19 $80 $A5 $19 $80 $A5 $19 $80 $A5 $19 $80 $A5
	
; Data from 47FE to 4875 (120 bytes)	
_DATA_47FE_:	
	.db $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $05 $FC $B2 $0A
	.db $F9 $9B $0A $8B $9C $0A $A1 $A5 $0A $D3 $B0 $0A $A1 $A5 $0A $D3
	.db $B0 $0A $A1 $A5 $0A $D3 $B0 $0A $A1 $A5 $0A $D3 $B0 $0A $A1 $A5
	.db $0A $D3 $B0 $0A $A1 $A5 $0A $D3 $B0 $0A $A1 $A5 $11 $55 $B4 $11
	.db $55 $B4 $11 $17 $B4 $11 $17 $B4 $11 $C9 $B3 $11 $C9 $B3 $11 $7B
	.db $B4 $11 $C9 $B3 $11 $7B $B4 $11 $C9 $B3 $11 $7B $B4 $11 $C9 $B3
	.db $11 $7B $B4 $11 $C9 $B3 $11 $7B $B4 $11 $C9 $B3 $11 $7B $B4 $11
	.db $C9 $B3 $11 $7B $B4 $11 $C9 $B3
	
; 2nd entry of Pointer Table from 3887 (indexed by _RAM_C017_)	
; Data from 4876 to 49F5 (384 bytes)	
_DATA_4876_:	
	.db $03 $00 $AC $8F $00 $80 $03 $00 $2C $94 $91 $83 $03 $00 $AC $98
	.db $FA $87 $03 $00 $2C $9D $8B $8B $13 $00 $09 $84 $00 $80 $13 $00
	.db $09 $84 $00 $80 $13 $00 $09 $84 $00 $80 $13 $00 $09 $84 $00 $80
	.db $06 $00 $39 $84 $00 $80 $06 $00 $39 $84 $00 $80 $06 $00 $39 $84
	.db $00 $80 $06 $00 $39 $84 $00 $80 $07 $00 $44 $91 $00 $80 $07 $00
	.db $C4 $95 $99 $84 $07 $00 $44 $9A $AA $89 $07 $00 $C4 $9E $13 $8E
	.db $08 $00 $01 $83 $00 $80 $08 $00 $01 $83 $00 $80 $08 $00 $01 $83
	.db $00 $80 $08 $00 $01 $83 $00 $80 $07 $FF $24 $94 $00 $80 $07 $FF
	.db $A4 $98 $99 $84 $07 $FF $24 $9D $AA $89 $07 $FF $A4 $A1 $13 $8E
	.db $06 $FF $19 $87 $00 $80 $06 $FF $19 $87 $00 $80 $06 $FF $19 $87
	.db $00 $80 $06 $FF $19 $87 $00 $80 $13 $FF $E9 $86 $00 $80 $13 $FF
	.db $E9 $86 $00 $80 $13 $FF $E9 $86 $00 $80 $13 $FF $E9 $86 $00 $80
	.db $03 $FF $8C $92 $00 $80 $03 $FF $0C $97 $91 $83 $03 $FF $8C $9B
	.db $FA $87 $03 $FF $0C $A0 $8B $8B $09 $FF $E9 $86 $00 $80 $09 $FF
	.db $E9 $86 $00 $80 $09 $FF $E9 $86 $00 $80 $09 $FF $E9 $86 $00 $80
	.db $0A $FF $19 $87 $00 $80 $0A $FF $19 $87 $00 $80 $0A $FF $19 $87
	.db $00 $80 $0A $FF $19 $87 $00 $80 $0B $FF $24 $94 $00 $80 $0B $FF
	.db $A4 $98 $99 $84 $0B $FF $24 $9D $AA $89 $0B $FF $A4 $A1 $13 $8E
	.db $0C $00 $01 $83 $00 $80 $0C $00 $01 $83 $00 $80 $0C $00 $01 $83
	.db $00 $80 $0C $00 $01 $83 $00 $80 $0B $00 $44 $91 $00 $80 $0B $00
	.db $C4 $95 $99 $84 $0B $00 $44 $9A $AA $89 $0B $00 $C4 $9E $13 $8E
	.db $0A $00 $39 $84 $00 $80 $0A $00 $39 $84 $00 $80 $0A $00 $39 $84
	.db $00 $80 $0A $00 $39 $84 $00 $80 $09 $00 $09 $84 $00 $80 $09 $00
	.db $09 $84 $00 $80 $09 $00 $09 $84 $00 $80 $09 $00 $09 $84 $00 $80
	
; 4th entry of Pointer Table from 3887 (indexed by _RAM_C017_)	
; Data from 49F6 to 4B75 (384 bytes)	
_DATA_49F6_:	
	.db $10 $00 $3C $8D $00 $80 $10 $00 $BC $91 $71 $82 $10 $00 $3C $96
	.db $02 $86 $10 $00 $BC $9A $23 $8A $11 $00 $81 $84 $00 $80 $11 $00
	.db $81 $84 $00 $80 $11 $00 $81 $84 $00 $80 $11 $00 $81 $84 $00 $80
	.db $12 $00 $39 $84 $00 $80 $12 $00 $39 $84 $00 $80 $12 $00 $39 $84
	.db $00 $80 $12 $00 $39 $84 $00 $80 $05 $00 $8C $8E $00 $80 $05 $00
	.db $0C $93 $09 $84 $05 $00 $8C $97 $CA $87 $05 $00 $0C $9C $EB $8B
	.db $13 $00 $52 $8A $89 $88 $13 $00 $52 $8A $89 $88 $13 $00 $52 $8A
	.db $89 $88 $13 $00 $52 $8A $89 $88 $05 $FF $6C $91 $00 $80 $05 $FF
	.db $EC $95 $09 $84 $05 $FF $6C $9A $CA $87 $05 $FF $EC $9E $EB $8B
	.db $12 $FF $19 $87 $00 $80 $12 $FF $19 $87 $00 $80 $12 $FF $19 $87
	.db $00 $80 $12 $FF $19 $87 $00 $80 $11 $FF $61 $87 $00 $80 $11 $FF
	.db $61 $87 $00 $80 $11 $FF $61 $87 $00 $80 $11 $FF $61 $87 $00 $80
	.db $10 $FF $1C $90 $00 $80 $10 $FF $9C $94 $71 $82 $10 $FF $1C $99
	.db $02 $86 $10 $FF $9C $9D $23 $8A $14 $FF $A1 $86 $00 $80 $14 $FF
	.db $A1 $86 $00 $80 $14 $FF $A1 $86 $00 $80 $14 $FF $A1 $86 $00 $80
	.db $14 $FF $72 $8F $41 $88 $14 $FF $72 $8F $41 $88 $14 $FF $72 $8F
	.db $41 $88 $14 $FF $72 $8F $41 $88 $15 $FF $04 $93 $00 $80 $15 $FF
	.db $84 $97 $F1 $83 $15 $FF $04 $9C $E2 $87 $15 $FF $84 $A0 $93 $8C
	.db $12 $00 $22 $A8 $59 $A6 $12 $00 $22 $A8 $59 $A6 $12 $00 $22 $A8
	.db $59 $A6 $12 $00 $22 $A8 $59 $A6 $15 $00 $24 $90 $00 $80 $15 $00
	.db $A4 $94 $F1 $83 $15 $00 $24 $99 $E2 $87 $15 $00 $A4 $9D $93 $8C
	.db $14 $00 $92 $8C $41 $88 $14 $00 $92 $8C $41 $88 $14 $00 $92 $8C
	.db $41 $88 $14 $00 $92 $8C $41 $88 $14 $00 $C1 $83 $00 $80 $14 $00
	.db $C1 $83 $00 $80 $14 $00 $C1 $83 $00 $80 $14 $00 $C1 $83 $00 $80
	
; 1st entry of Pointer Table from 3887 (indexed by _RAM_C017_)	
; Data from 4B76 to 4CF5 (384 bytes)	
_DATA_4B76_:	
	.db $02 $00 $04 $8C $00 $80 $02 $00 $84 $90 $89 $82 $02 $00 $04 $95
	.db $D2 $85 $02 $00 $84 $99 $C3 $89 $0F $00 $99 $84 $00 $80 $0F $00
	.db $99 $84 $00 $80 $0F $00 $99 $84 $00 $80 $0F $00 $99 $84 $00 $80
	.db $16 $00 $21 $84 $00 $80 $16 $00 $21 $84 $00 $80 $16 $00 $21 $84
	.db $00 $80 $16 $00 $21 $84 $00 $80 $17 $00 $1C $8F $00 $80 $17 $00
	.db $9C $93 $F1 $83 $17 $00 $1C $98 $E2 $87 $17 $00 $9C $9C $33 $8C
	.db $17 $00 $B5 $A2 $1C $A1 $17 $00 $B5 $A2 $1C $A1 $17 $00 $B5 $A2
	.db $1C $A1 $17 $00 $B5 $A2 $1C $A1 $17 $FF $FC $91 $00 $80 $17 $FF
	.db $7C $96 $F1 $83 $17 $FF $FC $9A $E2 $87 $17 $FF $7C $9F $33 $8C
	.db $16 $FF $01 $87 $00 $80 $16 $FF $01 $87 $00 $80 $16 $FF $01 $87
	.db $00 $80 $16 $FF $01 $87 $00 $80 $0F $FF $79 $87 $00 $80 $0F $FF
	.db $79 $87 $00 $80 $0F $FF $79 $87 $00 $80 $0F $FF $79 $87 $00 $80
	.db $02 $FF $E4 $8E $00 $80 $02 $FF $64 $93 $89 $82 $02 $FF $E4 $97
	.db $D2 $85 $02 $FF $64 $9C $C3 $89 $18 $FF $19 $87 $00 $80 $18 $FF
	.db $19 $87 $00 $80 $18 $FF $19 $87 $00 $80 $18 $FF $19 $87 $00 $80
	.db $18 $FF $4A $90 $B9 $88 $18 $FF $4A $90 $B9 $88 $18 $FF $4A $90
	.db $B9 $88 $18 $FF $4A $90 $B9 $88 $18 $FF $0E $A6 $EA $91 $18 $FF
	.db $8E $AA $23 $96 $18 $FF $0E $AF $74 $9A $18 $FF $8E $B3 $9D $9F
	.db $18 $00 $C7 $B6 $2E $B5 $18 $00 $C7 $B6 $2E $B5 $18 $00 $C7 $B6
	.db $2E $B5 $18 $00 $C7 $B6 $2E $B5 $18 $00 $2E $A3 $EA $91 $18 $00
	.db $AE $A7 $23 $96 $18 $00 $2E $AC $74 $9A $18 $00 $AE $B0 $9D $9F
	.db $18 $00 $6A $8D $B9 $88 $18 $00 $6A $8D $B9 $88 $18 $00 $6A $8D
	.db $B9 $88 $18 $00 $6A $8D $B9 $88 $18 $00 $39 $84 $00 $80 $18 $00
	.db $39 $84 $00 $80 $18 $00 $39 $84 $00 $80 $18 $00 $39 $84 $00 $80
	
; 1st entry of Pointer Table from 2395 (indexed by _RAM_C128_)	
; Pointer Table from 4CF6 to 4CF7 (1 entries, indexed by _RAM_C13C_)	
_DATA_4CF6_:	
	.dw _DATA_D_
	
	; Data from 4CF8 to 4EF5 (510 bytes)
	.db $80 $0D $60 $80 $0D $AC $80 $0D $DC $80 $0D $00 $81 $0D $24 $81
	.db $0D $30 $81 $0D $3C $81 $0D $44 $81 $0D $4C $81 $00 $00 $14 $8E
	.db $B1 $14 $EE $B1 $14 $3A $B2 $14 $5E $B2 $14 $82 $B2 $14 $9A $B2
	.db $14 $A6 $B2 $14 $B2 $B2 $14 $BA $B2 $0D $4C $81 $00 $00 $0E $0E
	.db $B4 $0E $76 $B4 $0E $AE $B4 $0E $E6 $B4 $0E $04 $B5 $0E $1C $B5
	.db $0E $34 $B5 $0E $3C $B5 $0E $44 $B5 $0D $4C $81 $00 $00 $0E $74
	.db $8A $0E $D4 $8A $0E $20 $8B $0E $44 $8B $0E $68 $8B $0E $80 $8B
	.db $0E $8C $8B $0E $98 $8B $0E $A0 $8B $0D $4C $81 $00 $00 $0D $2C
	.db $9D $0D $8C $9D $0D $D8 $9D $0D $08 $9E $0D $2C $9E $0D $50 $9E
	.db $0D $5C $9E $0D $68 $9E $0D $70 $9E $0D $4C $81 $00 $00 $14 $BA
	.db $A6 $14 $1A $A7 $14 $66 $A7 $14 $8A $A7 $14 $AE $A7 $14 $C6 $A7
	.db $14 $D2 $A7 $14 $DE $A7 $14 $E6 $A7 $0D $4C $81 $00 $00 $0E $AA
	.db $A9 $0E $12 $AA $0E $4A $AA $0E $82 $AA $0E $A6 $AA $0E $BE $AA
	.db $0E $D6 $AA $0E $DE $AA $0E $E6 $AA $0D $4C $81 $00 $00 $0E $00
	.db $80 $0E $60 $80 $0E $AC $80 $0E $D0 $80 $0E $F4 $80 $0E $0C $81
	.db $0E $18 $81 $0E $24 $81 $0E $2C $81 $0D $4C $81 $00 $00 $0D $80
	.db $93 $0D $E0 $93 $0D $2C $94 $0D $5C $94 $0D $80 $94 $0D $A4 $94
	.db $0D $B0 $94 $0D $BC $94 $0D $C4 $94 $0D $4C $81 $00 $00 $14 $E6
	.db $9B $14 $46 $9C $14 $92 $9C $14 $B6 $9C $14 $DA $9C $14 $F2 $9C
	.db $14 $FE $9C $14 $0A $9D $14 $12 $9D $0D $4C $81 $00 $00 $0E $4C
	.db $9F $0E $B4 $9F $0E $EC $9F $0E $24 $A0 $0E $42 $A0 $0E $5A $A0
	.db $0E $72 $A0 $0E $7A $A0 $0E $82 $A0 $0D $4C $81 $00 $00 $0D $4C
	.db $B1 $0D $AC $B1 $0D $F8 $B1 $0D $1C $B2 $0D $40 $B2 $0D $58 $B2
	.db $0D $64 $B2 $0D $70 $B2 $0D $78 $B2 $0D $4C $81 $00 $00 $0D $D4
	.db $89 $0D $34 $8A $0D $80 $8A $0D $B0 $8A $0D $D4 $8A $0D $F8 $8A
	.db $0D $04 $8B $0D $10 $8B $0D $18 $8B $0D $4C $81 $00 $00 $14 $12
	.db $91 $14 $72 $91 $14 $BE $91 $14 $E2 $91 $14 $06 $92 $14 $1E $92
	.db $14 $2A $92 $14 $36 $92 $14 $3E $92 $0D $4C $81 $00 $00 $0E $E8
	.db $94 $0E $50 $95 $0E $88 $95 $0E $C0 $95 $0E $E4 $95 $0E $FC $95
	.db $0E $14 $96 $0E $1C $96 $0E $24 $96 $0D $4C $81 $00 $00 $0D $D8
	.db $A6 $0D $38 $A7 $0D $84 $A7 $0D $A8 $A7 $0D $CC $A7 $0D $E4 $A7
	.db $0D $F0 $A7 $0D $FC $A7 $0D $04 $A8 $0D $4C $81 $00 $00
	
; 2nd entry of Pointer Table from 2395 (indexed by _RAM_C128_)	
; Pointer Table from 4EF6 to 4EF7 (1 entries, indexed by _RAM_C13C_)	
_DATA_4EF6_:	
	.dw _DATA_3517_
	
	; Data from 4EF8 to 4FFF (264 bytes)
	.db $A7 $17 $81 $A7 $17 $A5 $A7 $17 $C9 $A7 $17 $E1 $A7 $17 $F9 $A7
	.db $17 $05 $A8 $17 $0D $A8 $17 $15 $A8 $17 $1D $A8 $00 $00 $11 $01
	.db $89 $11 $4D $89 $11 $71 $89 $11 $95 $89 $11 $AD $89 $11 $C5 $89
	.db $11 $DD $89 $11 $E5 $89 $11 $ED $89 $17 $1D $A8 $00 $00 $13 $7A
	.db $99 $13 $C6 $99 $13 $FE $99 $13 $22 $9A $13 $3A $9A $13 $52 $9A
	.db $13 $6A $9A $13 $72 $9A $13 $7A $9A $17 $1D $A8 $00 $00 $10 $8C
	.db $B4 $10 $D8 $B4 $10 $10 $B5 $10 $34 $B5 $10 $4C $B5 $10 $64 $B5
	.db $10 $7C $B5 $10 $84 $B5 $10 $8C $B5 $17 $1D $A8 $00 $00 $16 $49
	.db $92 $16 $95 $92 $16 $B9 $92 $16 $DD $92 $16 $F5 $92 $16 $0D $93
	.db $16 $19 $93 $16 $21 $93 $16 $29 $93 $17 $1D $A8 $00 $00 $12 $79
	.db $9C $12 $C5 $9C $12 $E9 $9C $12 $0D $9D $12 $31 $9D $12 $49 $9D
	.db $12 $61 $9D $12 $69 $9D $12 $71 $9D $17 $1D $A8 $00 $00 $13 $D2
	.db $8E $13 $1E $8F $13 $56 $8F $13 $7A $8F $13 $92 $8F $13 $AA $8F
	.db $13 $C2 $8F $13 $CA $8F $13 $D2 $8F $17 $1D $A8 $00 $00 $10 $E4
	.db $A9 $10 $30 $AA $10 $68 $AA $10 $8C $AA $10 $A4 $AA $10 $BC $AA
	.db $10 $D4 $AA $10 $DC $AA $10 $E4 $AA $17 $1D $A8 $00 $00 $16 $A1
	.db $88 $16 $ED $88 $16 $11 $89 $16
	
; 1st entry of Pointer Table from 12DC6 (indexed by unknown)	
; Data from 5000 to 50F5 (246 bytes)	
_DATA_5000_:	
	.db $35 $89 $16 $4D $89 $16 $65 $89 $16 $71 $89 $16 $79 $89 $16 $81
	.db $89 $17 $1D $A8 $00 $00 $12 $99 $92 $12 $E5 $92 $12 $09 $93 $12
	.db $2D $93 $12 $51 $93 $12 $69 $93 $12 $81 $93 $12 $89 $93 $12 $91
	.db $93 $17 $1D $A8 $00 $00 $15 $CC $AC $15 $18 $AD $15 $50 $AD $15
	.db $74 $AD $15 $8C $AD $15 $A4 $AD $15 $BC $AD $15 $C4 $AD $15 $CC
	.db $AD $17 $1D $A8 $00 $00 $10 $3C $9F $10 $88 $9F $10 $C0 $9F $10
	.db $E4 $9F $10 $FC $9F $10 $14 $A0 $10 $2C $A0 $10 $34 $A0 $10 $3C
	.db $A0 $17 $1D $A8 $00 $00 $17 $05 $B1 $17 $51 $B1 $17 $75 $B1 $17
	.db $99 $B1 $17 $B1 $B1 $17 $C9 $B1 $17 $D5 $B1 $17 $DD $B1 $17 $E5
	.db $B1 $17 $1D $A8 $00 $00 $12 $B9 $88 $12 $05 $89 $12 $29 $89 $12
	.db $4D $89 $12 $71 $89 $12 $89 $89 $12 $A1 $89 $12 $A9 $89 $12 $B1
	.db $89 $17 $1D $A8 $00 $00 $15 $24 $A2 $15 $70 $A2 $15 $A8 $A2 $15
	.db $CC $A2 $15 $E4 $A2 $15 $FC $A2 $15 $14 $A3 $15 $1C $A3 $15 $24
	.db $A3 $17 $1D $A8 $00 $00 $16 $F1 $9B $16 $3D $9C $16 $75 $9C $16
	.db $99 $9C $16 $B1 $9C $16 $C9 $9C $16 $E1 $9C $16 $E9 $9C $16 $F1
	.db $9C $17 $1D $A8 $00 $00
	
; 3rd entry of Pointer Table from 2395 (indexed by _RAM_C128_)	
; Data from 50F6 to 51FF (266 bytes)	
_DATA_50F6_:	
	.db $02 $04 $9E $02 $4C $9E $02 $88 $9E $02 $B8 $9E $02 $DC $9E $02
	.db $00 $9F $02 $0C $9F $02 $18 $9F $02 $20 $9F $02 $28 $9F $00 $00
	.db $0C $39 $B0 $0C $99 $B0 $0C $E5 $B0 $0C $15 $B1 $0C $39 $B1 $0C
	.db $5D $B1 $0C $75 $B1 $0C $81 $B1 $0C $89 $B1 $02 $28 $9F $00 $00
	.db $09 $C9 $9B $09 $31 $9C $09 $99 $9C $09 $D1 $9C $09 $09 $9D $09
	.db $21 $9D $09 $39 $9D $09 $41 $9D $09 $49 $9D $02 $28 $9F $00 $00
	.db $0B $44 $A3 $0B $A4 $A3 $0B $F0 $A3 $0B $20 $A4 $0B $44 $A4 $0B
	.db $68 $A4 $0B $80 $A4 $0B $8C $A4 $0B $94 $A4 $02 $28 $9F $00 $00
	.db $06 $B9 $88 $06 $01 $89 $06 $3D $89 $06 $6D $89 $06 $91 $89 $06
	.db $B5 $89 $06 $C1 $89 $06 $CD $89 $06 $D5 $89 $02 $28 $9F $00 $00
	.db $0C $61 $A4 $0C $C1 $A4 $0C $0D $A5 $0C $3D $A5 $0C $61 $A5 $0C
	.db $85 $A5 $0C $9D $A5 $0C $A9 $A5 $0C $B1 $A5 $02 $28 $9F $00 $00
	.db $08 $B9 $AE $08 $21 $AF $08 $89 $AF $08 $C1 $AF $08 $F9 $AF $08
	.db $11 $B0 $08 $29 $B0 $08 $31 $B0 $08 $39 $B0 $02 $28 $9F $00 $00
	.db $0F $31 $95 $0F $91 $95 $0F $DD $95 $0F $0D $96 $0F $31 $96 $0F
	.db $55 $96 $0F $6D $96 $0F $79 $96 $0F $81 $96 $02 $28 $9F $00 $00
	.db $02 $34 $B4 $02 $7C $B4 $02 $B8 $B4 $02
	
; 1st entry of Pointer Table from 72C31 (indexed by unknown)	
; Data from 5200 to 52F5 (246 bytes)	
_DATA_5200_:	
	.db $E8 $B4 $02 $0C $B5 $02 $30 $B5 $02 $3C $B5 $02 $48 $B5 $02 $50
	.db $B5 $02 $28 $9F $00 $00 $09 $C9 $B2 $09 $29 $B3 $09 $75 $B3 $09
	.db $A5 $B3 $09 $C9 $B3 $09 $ED $B3 $09 $05 $B4 $09 $11 $B4 $09 $19
	.db $B4 $02 $28 $9F $00 $00 $08 $91 $A3 $08 $F9 $A3 $08 $61 $A4 $08
	.db $99 $A4 $08 $D1 $A4 $08 $E9 $A4 $08 $01 $A5 $08 $09 $A5 $08 $11
	.db $A5 $02 $28 $9F $00 $00 $0F $19 $89 $0F $79 $89 $0F $C5 $89 $0F
	.db $F5 $89 $0F $19 $8A $0F $3D $8A $0F $55 $8A $0F $61 $8A $0F $69
	.db $8A $02 $28 $9F $00 $00 $02 $30 $A9 $02 $78 $A9 $02 $B4 $A9 $02
	.db $E4 $A9 $02 $08 $AA $02 $2C $AA $02 $38 $AA $02 $44 $AA $02 $4C
	.db $AA $02 $28 $9F $00 $00 $09 $F1 $A6 $09 $51 $A7 $09 $9D $A7 $09
	.db $CD $A7 $09 $F1 $A7 $09 $15 $A8 $09 $2D $A8 $09 $39 $A8 $09 $41
	.db $A8 $02 $28 $9F $00 $00 $0B $5C $AF $0B $C4 $AF $0B $2C $B0 $0B
	.db $64 $B0 $0B $9C $B0 $0B $B4 $B0 $0B $CC $B0 $0B $D4 $B0 $0B $DC
	.db $B0 $02 $28 $9F $00 $00 $06 $BD $93 $06 $1D $94 $06 $69 $94 $06
	.db $99 $94 $06 $BD $94 $06 $E1 $94 $06 $F9 $94 $06 $05 $95 $06 $0D
	.db $95 $02 $28 $9F $00 $00
	
; 4th entry of Pointer Table from 2395 (indexed by _RAM_C128_)	
; Data from 52F6 to 54F5 (512 bytes)	
_DATA_52F6_:	
	.db $07 $44 $A3 $07 $8C $A3 $07 $C8 $A3 $07 $F8 $A3 $07 $08 $A4 $07
	.db $18 $A4 $07 $24 $A4 $07 $30 $A4 $07 $38 $A4 $07 $40 $A4 $00 $00
	.db $0C $81 $87 $0C $E1 $87 $0C $2D $88 $0C $51 $88 $0C $75 $88 $0C
	.db $99 $88 $0C $A5 $88 $0C $B1 $88 $0C $B9 $88 $07 $40 $A4 $00 $00
	.db $08 $B9 $90 $08 $21 $91 $08 $59 $91 $08 $91 $91 $08 $C9 $91 $08
	.db $E1 $91 $08 $F9 $91 $08 $01 $92 $08 $09 $92 $07 $40 $A4 $00 $00
	.db $0A $B9 $88 $0A $19 $89 $0A $65 $89 $0A $89 $89 $0A $AD $89 $0A
	.db $D1 $89 $0A $DD $89 $0A $E9 $89 $0A $F1 $89 $07 $40 $A4 $00 $00
	.db $03 $08 $AB $03 $50 $AB $03 $8C $AB $03 $BC $AB $03 $CC $AB $03
	.db $DC $AB $03 $E8 $AB $03 $F4 $AB $03 $FC $AB $07 $40 $A4 $00 $00
	.db $0C $C1 $9A $0C $21 $9B $0C $6D $9B $0C $91 $9B $0C $B5 $9B $0C
	.db $D9 $9B $0C $E5 $9B $0C $F1 $9B $0C $F9 $9B $07 $40 $A4 $00 $00
	.db $08 $81 $87 $08 $E9 $87 $08 $21 $88 $08 $59 $88 $08 $91 $88 $08
	.db $A9 $88 $08 $C1 $88 $08 $C9 $88 $08 $D1 $88 $07 $40 $A4 $00 $00
	.db $0A $59 $92 $0A $B9 $92 $0A $05 $93 $0A $29 $93 $0A $4D $93 $0A
	.db $71 $93 $0A $7D $93 $0A $89 $93 $0A $91 $93 $07 $40 $A4 $00 $00
	.db $03 $AC $A1 $03 $F4 $A1 $03 $30 $A2 $03 $60 $A2 $03 $70 $A2 $03
	.db $80 $A2 $03 $8C $A2 $03 $98 $A2 $03 $A0 $A2 $07 $40 $A4 $00 $00
	.db $0C $21 $91 $0C $81 $91 $0C $CD $91 $0C $F1 $91 $0C $15 $92 $0C
	.db $39 $92 $0C $45 $92 $0C $51 $92 $0C $59 $92 $07 $40 $A4 $00 $00
	.db $05 $C4 $A9 $05 $2C $AA $05 $64 $AA $05 $9C $AA $05 $D4 $AA $05
	.db $EC $AA $05 $04 $AB $05 $0C $AB $05 $14 $AB $07 $40 $A4 $00 $00
	.db $09 $29 $92 $09 $89 $92 $09 $D5 $92 $09 $F9 $92 $09 $1D $93 $09
	.db $41 $93 $09 $4D $93 $09 $59 $93 $09 $61 $93 $07 $40 $A4 $00 $00
	.db $07 $C8 $AC $07 $10 $AD $07 $4C $AD $07 $7C $AD $07 $8C $AD $07
	.db $9C $AD $07 $A8 $AD $07 $B4 $AD $07 $BC $AD $07 $40 $A4 $00 $00
	.db $08 $F1 $99 $08 $51 $9A $08 $9D $9A $08 $C1 $9A $08 $E5 $9A $08
	.db $09 $9B $08 $15 $9B $08 $21 $9B $08 $29 $9B $07 $40 $A4 $00 $00
	.db $05 $8C $A0 $05 $F4 $A0 $05 $2C $A1 $05 $64 $A1 $05 $9C $A1 $05
	.db $B4 $A1 $05 $CC $A1 $05 $D4 $A1 $05 $DC $A1 $07 $40 $A4 $00 $00
	.db $09 $89 $88 $09 $E9 $88 $09 $35 $89 $09 $59 $89 $09 $7D $89 $09
	.db $A1 $89 $09 $AD $89 $09 $B9 $89 $09 $C1 $89 $07 $40 $A4 $00 $00
	
; Data from 54F6 to 5535 (64 bytes)	
_DATA_54F6_:	
	.db $00 $3F
	.dsb 15, $00
	.db $3F
	.dsb 14, $00
	.db $15 $07 $3F
	.dsb 13, $00
	.db $15 $07 $3F
	.dsb 13, $00
	
; Data from 5536 to 554D (24 bytes)	
_DATA_5536_:	
	.db $25 $0B $3C $0F $03 $08 $06 $38 $00 $00 $3F $03 $03 $2A $0F $0B
	.db $00 $00 $00 $00 $00 $00 $00 $00
	
; Data from 554E to 556D (32 bytes)	
_DATA_554E_:	
	.db $38 $00 $3F $00 $00 $00 $2A $00 $25 $0B $3C $0F $03 $08 $06 $38
	.db $00 $00 $3F $03 $3F $2A $0F $0B $34 $25 $3C $06 $01 $0C $08 $04
	
; Data from 556E to 558D (32 bytes)	
_DATA_556E_:	
	.db $34 $01 $3F $0E $00 $09 $2A $05 $25 $0B $3C $0F $03 $08 $06 $38
	.db $00 $00 $3F $03 $3F $2A $0F $0B $34 $25 $3C $06 $01 $0C $08 $04
	
; Data from 558E to 55AD (32 bytes)	
_DATA_558E_:	
	.db $39 $23 $3F $1B $00 $07 $15 $36 $3F $08 $3C $0F $03 $08 $13 $30
	.db $00 $00 $3F $03 $3F $2A $0F $0B $34 $25 $3C $06 $01 $0C $08 $04
	
; Data from 55AE to 5925 (888 bytes)	
_DATA_55AE_:	
	.db $61 $00 $85 $18 $24 $42 $24 $18 $03 $00 $85 $3C $66 $C3 $66 $3C
	.db $2A $00 $03 $08 $02 $3C $82 $2C $3C $05 $2C $03 $6E $84 $7E $00
	.db $08 $18 $03 $08 $89 $2C $3C $00 $38 $6C $44 $44 $6C $38 $03 $00
	.db $84 $18 $24 $24 $18 $05 $00 $02 $18 $03 $00 $02 $08 $03 $2C $85
	.db $3D $3E $3C $3E $43 $06 $00 $02 $08 $03 $2C $AB $3D $2E $2C $26
	.db $67 $66 $6E $3C $3C $38 $10 $06 $0E $0C $1C $14 $1A $1E $1A $60
	.db $70 $30 $38 $28 $68 $5C $7C $36 $3F $3F $37 $3F $2F $2F $1A $74
	.db $7E $7E $76 $7E $74 $E4 $C8 $02 $08 $03 $2C $81 $18 $02 $34 $03
	.db $66 $93 $76 $3E $3C $38 $18 $07 $0E $0A $0C $1E $16 $1A $1E $60
	.db $50 $78 $78 $68 $5C $02 $7C $04 $1F $02 $0F $82 $0B $06 $03 $7C
	.db $86 $FC $F8 $D8 $B0 $A0 $00 $03 $28 $83 $38 $28 $2C $04 $6C $86
	.db $2C $28 $38 $30 $10 $EE $03 $C6 $81 $E6 $03 $EE $84 $6E $7C $7C
	.db $3C $02 $38 $02 $10 $02 $08 $02 $18 $82 $14 $34 $02 $24 $02 $34
	.db $82 $1C $18 $02 $08 $02 $00 $02 $08 $02 $18 $82 $3C $74 $04 $66
	.db $03 $76 $85 $3E $3C $3C $1C $18 $02 $08 $04 $00 $03 $10 $02 $28
	.db $81 $38 $05 $10 $81 $28 $07 $6C $03 $38 $82 $30 $10 $03 $08 $82
	.db $00 $10 $02 $18 $03 $08 $82 $00 $24 $02 $3C $02 $18 $83 $10 $00
	.db $28 $03 $38 $81 $10 $81 $00 $00 $81 $FC $05 $80 $02 $00 $81 $3F
	.db $05 $01 $04 $00 $05 $80 $81 $FC $02 $00 $05 $01 $81 $3F $03 $00
	.db $81 $FF $04 $00 $08 $10 $8F $01 $02 $04 $08 $10 $20 $40 $80 $80
	.db $40 $20 $10 $08 $04 $02 $03 $01 $02 $02 $02 $04 $02 $08 $02 $80
	.db $02 $40 $02 $20 $02 $10 $04 $00 $88 $03 $0C $30 $C0 $C0 $30 $0C
	.db $03 $14 $00 $89 $F0 $80 $80 $81 $01 $01 $00 $1C $1E $03 $02 $03
	.db $00 $88 $70 $00 $01 $01 $81 $80 $80 $F0 $04 $00 $03 $02 $83 $1E
	.db $00 $E7 $02 $81 $02 $00 $02 $81 $81 $E7 $03 $10 $02 $18 $82 $10
	.db $18 $08 $10 $02 $00 $82 $10 $18 $04 $10 $02 $00 $81 $38 $04 $7C
	.db $81 $38 $03 $00 $84 $18 $3C $3C $18 $05 $00 $02 $18 $03 $00 $05
	.db $10 $84 $C2 $58 $18 $40 $07 $00 $05 $10 $82 $C2 $58 $02 $3C $03
	.db $7E $02 $3C $83 $38 $10 $07 $02 $0F $05 $1F $81 $E0 $02 $F0 $03
	.db $F8 $02 $FC $05 $3F $02 $2F $82 $1A $FC $04 $FE $83 $F4 $E4 $C8
	.db $04 $10 $83 $52 $24 $18 $02 $3C $03 $7E $85 $3E $3C $38 $18 $07
	.db $03 $0F $04 $1F $82 $E0 $F0 $03 $F8 $03 $FC $04 $1F $02 $0F $82
	.db $0B $06 $04 $FC $84 $F8 $D8 $B0 $A0 $03 $10 $84 $54 $10 $38 $78
	.db $04 $7C $85 $3C $38 $38 $30 $10 $08 $FE $84 $7E $7C $7C $3C $02
	.db $38 $04 $10 $83 $24 $18 $38 $05 $3C $82 $1C $18 $02 $08 $02 $00
	.db $02 $10 $84 $24 $18 $3C $7C $07 $7E $85 $3E $3C $3C $1C $18 $02
	.db $08 $06 $00 $81 $28 $03 $38 $02 $10 $02 $00 $82 $28 $38 $07 $7C
	.db $03 $38 $81 $30 $03 $10 $05 $18 $84 $08 $10 $10 $18 $03 $3C $02
	.db $18 $82 $00 $10 $04 $38 $81 $10 $81 $00 $00 $62 $00 $83 $18 $3C
	.db $18 $05 $00 $83 $18 $3C $18 $2E $00 $02 $20 $82 $28 $20 $05 $28
	.db $03 $6C $81 $64 $06 $00 $84 $20 $28 $00 $38 $04 $7C $81 $38 $03
	.db $00 $84 $18 $3C $3C $18 $05 $00 $02 $18 $03 $00 $02 $08 $03 $2C
	.db $85 $25 $02 $00 $26 $C3 $06 $00 $02 $08 $03 $2C $8B $25 $12 $18
	.db $5A $9D $3C $3C $18 $10 $10 $00 $02 $03 $02 $07 $02 $0F $82 $07
	.db $17 $02 $C0 $02 $E0 $03 $F0 $8F $D0 $2B $27 $25 $0B $05 $03 $01
	.db $00 $E8 $DA $EA $DA $F0 $C0 $02 $80 $02 $08 $03 $2C $85 $00 $18
	.db $18 $5A $38 $03 $1C $02 $10 $8A $00 $01 $03 $07 $03 $07 $0F $0F
	.db $07 $C0 $03 $E0 $02 $F0 $93 $D0 $B8 $03 $09 $05 $09 $05 $03 $00
	.db $00 $E8 $D8 $A8 $D0 $A0 $10 $10 $20 $00 $03 $28 $02 $10 $81 $14
	.db $04 $38 $81 $18 $02 $10 $02 $00 $81 $3C $04 $7C $85 $38 $14 $38
	.db $10 $38 $03 $10 $03 $00 $02 $08 $83 $00 $08 $1C $05 $18 $06 $00
	.db $02 $08 $82 $00 $10 $02 $18 $06 $3C $84 $38 $18 $18 $08 $08 $00
	.db $02 $10 $82 $00 $30 $02 $10 $02 $00 $02 $10 $82 $00 $30 $04 $38
	.db $81 $30 $04 $10 $03 $00 $02 $08 $03 $18 $81 $08 $02 $00 $02 $08
	.db $83 $18 $3C $18 $03 $00 $02 $10 $02 $38 $81 $10 $03 $00 $00 $7F
	.db $00 $7F $00 $7F $00 $33 $00 $00
	
; Pointer Table from 5926 to 59A7 (65 entries, indexed by _RAM_C028_)	
_DATA_5926_:	
	.dw _DATA_59A8_ _DATA_59BD_ _DATA_59D2_ _DATA_59E7_ _DATA_59FC_ _DATA_5A11_ _DATA_5A26_ _DATA_5A3B_
	.dw _DATA_5A50_ _DATA_5A56_ _DATA_5A6B_ _DATA_5A71_ _DATA_5A7C_ _DATA_5A82_ _DATA_5A88_ _DATA_5A8E_
	.dw _DATA_5A94_ _DATA_5A9F_ _DATA_5AAA_ _DATA_5AC4_ _DATA_5ACF_ _DATA_5AE9_ _DATA_5AF4_ _DATA_5B04_
	.dw _DATA_5B0F_ _DATA_5B1F_ _DATA_5B25_ _DATA_5B30_ _DATA_5B36_ _DATA_5B3C_ _DATA_5B42_ _DATA_5B61_
	.dw _DATA_5B80_ _DATA_5B9F_ _DATA_5BBE_ _DATA_5BDD_ _DATA_5BFC_ _DATA_5C1B_ _DATA_5C3A_ _DATA_5C59_
	.dw _DATA_5C69_ _DATA_5C88_ _DATA_5CA7_ _DATA_5CD5_ _DATA_5D17_ _DATA_5D63_ _DATA_5DA0_ _DATA_5DDD_
	.dw _DATA_5E10_ _DATA_5E43_ _DATA_5E76_ _DATA_5E9A_ _DATA_5EC3_ _DATA_5EE2_ _DATA_5EED_ _DATA_5EF3_
	.dw _DATA_5EF9_ _DATA_5F45_ _DATA_5F91_ _DATA_5FDD_ _DATA_6029_ _DATA_6070_ _DATA_6099_ _DATA_60B8_
	.dw _DATA_60C3_
	
; 1st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 59A8 to 59BC (21 bytes)	
_DATA_59A8_:	
	.db $04 $18 $00 $D4 $00 $C4 $18 $00 $DC $00 $C4 $18 $00 $E4 $00 $C4
	.db $18 $00 $EC $00 $C4
	
; 2nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 59BD to 59D1 (21 bytes)	
_DATA_59BD_:	
	.db $04 $1C $00 $D4 $00 $CA $18 $00 $DC $00 $CA $14 $00 $E4 $00 $CA
	.db $10 $00 $EC $00 $CA
	
; 3rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 59D2 to 59E6 (21 bytes)	
_DATA_59D2_:	
	.db $04 $24 $00 $D4 $00 $C6 $1C $00 $DC $00 $C6 $14 $00 $E4 $00 $C6
	.db $0C $00 $EC $00 $C6
	
; 4th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 59E7 to 59FB (21 bytes)	
_DATA_59E7_:	
	.db $04 $24 $00 $D8 $00 $C8 $1C $00 $DC $00 $C8 $14 $00 $E0 $00 $C8
	.db $0C $00 $E4 $00 $C8
	
; 5th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 59FC to 5A10 (21 bytes)	
_DATA_59FC_:	
	.db $04 $24 $00 $E0 $00 $C5 $1C $00 $E0 $00 $C5 $14 $00 $E0 $00 $C5
	.db $0C $00 $E0 $00 $C5
	
; 6th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A11 to 5A25 (21 bytes)	
_DATA_5A11_:	
	.db $04 $24 $00 $E8 $00 $C9 $1C $00 $E4 $00 $C9 $14 $00 $E0 $00 $C9
	.db $0C $00 $DC $00 $C9
	
; 7th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A26 to 5A3A (21 bytes)	
_DATA_5A26_:	
	.db $04 $24 $00 $EC $00 $C7 $1C $00 $E4 $00 $C7 $14 $00 $DC $00 $C7
	.db $0C $00 $D4 $00 $C7
	
; 8th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A3B to 5A4F (21 bytes)	
_DATA_5A3B_:	
	.db $04 $20 $00 $EC $00 $CB $1C $00 $E4 $00 $CB $18 $00 $DC $00 $CB
	.db $14 $00 $D4 $00 $CB
	
; 9th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A50 to 5A55 (6 bytes)	
_DATA_5A50_:	
	.db $01 $18 $00 $E0 $00 $CD
	
; 10th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A56 to 5A6A (21 bytes)	
_DATA_5A56_:	
	.db $04 $F8 $FF $F8 $FF $CE $F8 $FF $00 $00 $CF $00 $00 $F8 $FF $D0
	.db $00 $00 $00 $00 $D1
	
; 11th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A6B to 5A70 (6 bytes)	
_DATA_5A6B_:	
	.db $01 $FC $FF $FC $FF $D2
	
; 12th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A71 to 5A7B (11 bytes)	
_DATA_5A71_:	
	.db $02 $00 $00 $00 $00 $D3 $08 $00 $00 $00 $D4
	
; 13th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A7C to 5A81 (6 bytes)	
_DATA_5A7C_:	
	.db $01 $00 $00 $00 $00 $D5
	
; 14th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A82 to 5A87 (6 bytes)	
_DATA_5A82_:	
	.db $01 $FC $FF $FC $FF $D6
	
; 15th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A88 to 5A8D (6 bytes)	
_DATA_5A88_:	
	.db $01 $FC $FF $FC $FF $D7
	
; 16th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A8E to 5A93 (6 bytes)	
_DATA_5A8E_:	
	.db $01 $FC $FF $FC $FF $D8
	
; 17th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A94 to 5A9E (11 bytes)	
_DATA_5A94_:	
	.db $02 $F9 $FF $FC $FF $D9 $01 $00 $FC $FF $DA
	
; 18th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5A9F to 5AA9 (11 bytes)	
_DATA_5A9F_:	
	.db $02 $F9 $FF $FC $FF $DB $01 $00 $FC $FF $DC
	
; 19th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5AAA to 5AC3 (26 bytes)	
_DATA_5AAA_:	
	.db $05 $F9 $FF $FC $FF $DB $01 $00 $F8 $FF $DD $01 $00 $00 $00 $DE
	.db $09 $00 $F8 $FF $DF $08 $00 $00 $00 $E0
	
; 20th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5AC4 to 5ACE (11 bytes)	
_DATA_5AC4_:	
	.db $02 $F9 $FF $FC $FF $E1 $01 $00 $FC $FF $E2
	
; 21st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5ACF to 5AE8 (26 bytes)	
_DATA_5ACF_:	
	.db $05 $F9 $FF $FC $FF $E1 $01 $00 $F8 $FF $E3 $01 $00 $00 $00 $E4
	.db $09 $00 $F8 $FF $E5 $09 $00 $00 $00 $E6
	
; 22nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5AE9 to 5AF3 (11 bytes)	
_DATA_5AE9_:	
	.db $02 $FC $FF $FC $FF $E7 $04 $00 $FC $FF $E8
	
; 23rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5AF4 to 5B03 (16 bytes)	
_DATA_5AF4_:	
	.db $03 $FC $FF $FC $FF $E7 $04 $00 $FC $FF $E9 $0C $00 $FC $FF $EA
	
; 24th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B04 to 5B0E (11 bytes)	
_DATA_5B04_:	
	.db $02 $FC $FF $FC $FF $EB $04 $00 $FC $FF $EC
	
; 25th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B0F to 5B1E (16 bytes)	
_DATA_5B0F_:	
	.db $03 $FD $FF $FC $FF $ED $05 $00 $FC $FF $EE $0D $00 $FC $FF $EF
	
; 26th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B1F to 5B24 (6 bytes)	
_DATA_5B1F_:	
	.db $01 $FD $FF $FC $FF $F0
	
; 27th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B25 to 5B2F (11 bytes)	
_DATA_5B25_:	
	.db $02 $FD $FF $FC $FF $F1 $05 $00 $FC $FF $F2
	
; 28th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B30 to 5B35 (6 bytes)	
_DATA_5B30_:	
	.db $01 $FD $FF $FC $FF $F3
	
; 29th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B36 to 5B3B (6 bytes)	
_DATA_5B36_:	
	.db $01 $FD $FF $FC $FF $F4
	
; 30th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B3C to 5B41 (6 bytes)	
_DATA_5B3C_:	
	.db $01 $FE $FF $FC $FF $F5
	
; 31st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B42 to 5B60 (31 bytes)	
_DATA_5B42_:	
	.db $06 $F6 $FF $F8 $FF $60 $F6 $FF $00 $00 $61 $FE $FF $F0 $FF $62
	.db $FE $FF $F8 $FF $63 $FE $FF $00 $00 $64 $FE $FF $08 $00 $65
	
; 32nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B61 to 5B7F (31 bytes)	
_DATA_5B61_:	
	.db $06 $F8 $FF $F8 $FF $66 $F8 $FF $00 $00 $67 $00 $00 $F0 $FF $68
	.db $00 $00 $F8 $FF $69 $00 $00 $00 $00 $6A $00 $00 $08 $00 $6B
	
; 33rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B80 to 5B9E (31 bytes)	
_DATA_5B80_:	
	.db $06 $F8 $FF $F8 $FF $66 $F8 $FF $00 $00 $67 $00 $00 $F0 $FF $6C
	.db $00 $00 $F8 $FF $6D $00 $00 $00 $00 $6E $00 $00 $08 $00 $6F
	
; 34th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5B9F to 5BBD (31 bytes)	
_DATA_5B9F_:	
	.db $06 $F8 $FF $F8 $FF $70 $F8 $FF $00 $00 $71 $00 $00 $F0 $FF $72
	.db $00 $00 $F8 $FF $73 $00 $00 $00 $00 $74 $00 $00 $08 $00 $75
	
; 35th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5BBE to 5BDC (31 bytes)	
_DATA_5BBE_:	
	.db $06 $F8 $FF $F8 $FF $70 $F8 $FF $00 $00 $71 $00 $00 $F0 $FF $72
	.db $00 $00 $F8 $FF $76 $00 $00 $00 $00 $77 $00 $00 $08 $00 $75
	
; 36th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5BDD to 5BFB (31 bytes)	
_DATA_5BDD_:	
	.db $06 $FE $FF $F0 $FF $78 $FE $FF $08 $00 $79 $FA $FF $F8 $FF $7A
	.db $FA $FF $00 $00 $7B $02 $00 $F8 $FF $7C $02 $00 $00 $00 $7D
	
; 37th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5BFC to 5C1A (31 bytes)	
_DATA_5BFC_:	
	.db $06 $F8 $FF $F8 $FF $7E $F8 $FF $00 $00 $7F $00 $00 $F0 $FF $80
	.db $00 $00 $F8 $FF $81 $00 $00 $00 $00 $82 $00 $00 $08 $00 $83
	
; 38th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5C1B to 5C39 (31 bytes)	
_DATA_5C1B_:	
	.db $06 $FE $FF $F0 $FF $84 $FE $FF $08 $00 $85 $FA $FF $F8 $FF $86
	.db $FA $FF $00 $00 $87 $02 $00 $F8 $FF $88 $02 $00 $00 $00 $89
	
; 39th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5C3A to 5C58 (31 bytes)	
_DATA_5C3A_:	
	.db $06 $F8 $FF $F8 $FF $8A $F8 $FF $00 $00 $8B $00 $00 $F0 $FF $8C
	.db $00 $00 $F8 $FF $8D $00 $00 $00 $00 $8E $00 $00 $08 $00 $8F
	
; 40th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5C59 to 5C68 (16 bytes)	
_DATA_5C59_:	
	.db $03 $FC $FF $F4 $FF $90 $FC $FF $FC $FF $91 $FC $FF $04 $00 $92
	
; 41st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5C69 to 5C87 (31 bytes)	
_DATA_5C69_:	
	.db $06 $F7 $FF $F8 $FF $70 $F7 $FF $00 $00 $71 $FF $FF $F0 $FF $72
	.db $FF $FF $F8 $FF $93 $FF $FF $00 $00 $94 $FF $FF $08 $00 $75
	
; 42nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5C88 to 5CA6 (31 bytes)	
_DATA_5C88_:	
	.db $06 $F7 $FF $F9 $FF $95 $F7 $FF $01 $00 $96 $FF $FF $F0 $FF $97
	.db $FF $FF $F8 $FF $98 $FF $FF $00 $00 $99 $FF $FF $08 $00 $9A
	
; 43rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5CA7 to 5CD4 (46 bytes)	
_DATA_5CA7_:	
	.db $09 $F8 $FF $F0 $FF $9B $F8 $FF $F8 $FF $9C $F8 $FF $00 $00 $9D
	.db $00 $00 $E8 $FF $9E $00 $00 $F0 $FF $9F $00 $00 $F8 $FF $A0 $00
	.db $00 $00 $00 $A1 $00 $00 $08 $00 $A2 $00 $00 $10 $00 $A3
	
; 44th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5CD5 to 5D16 (66 bytes)	
_DATA_5CD5_:	
	.db $0D $F6 $FF $F4 $FF $A4 $F6 $FF $FC $FF $A5 $F6 $FF $04 $00 $A6
	.db $00 $00 $E4 $FF $A7 $00 $00 $EC $FF $A8 $00 $00 $0C $00 $A9 $00
	.db $00 $14 $00 $AA $FE $FF $F4 $FF $AB $FE $FF $FC $FF $AC $FE $FF
	.db $04 $00 $AD $06 $00 $F4 $FF $AE $06 $00 $FC $FF $AF $06 $00 $04
	.db $00 $B0
	
; 45th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5D17 to 5D62 (76 bytes)	
_DATA_5D17_:	
	.db $0F $F4 $FF $F0 $FF $B1 $F4 $FF $FC $FF $B2 $F4 $FF $07 $00 $B3
	.db $01 $00 $E0 $FF $B4 $01 $00 $E8 $FF $B5 $01 $00 $10 $00 $B6 $01
	.db $00 $18 $00 $B7 $FC $FF $F0 $FF $B8 $FC $FF $F8 $FF $B9 $FC $FF
	.db $00 $00 $BA $FC $FF $08 $00 $BB $04 $00 $F0 $FF $BC $04 $00 $F8
	.db $FF $BD $04 $00 $00 $00 $BE $04 $00 $08 $00 $BF
	
; 46th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5D63 to 5D9F (61 bytes)	
_DATA_5D63_:	
	.db $0C $00 $00 $00 $00 $00 $00 $00 $08 $00 $00 $00 $00 $10 $00 $00
	.db $00 $00 $18 $00 $01 $00 $00 $20 $00 $02 $00 $00 $28 $00 $03 $08
	.db $00 $00 $00 $04 $08 $00 $08 $00 $05 $08 $00 $10 $00 $04 $08 $00
	.db $18 $00 $06 $08 $00 $20 $00 $07 $08 $00 $28 $00 $08
	
; 47th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5DA0 to 5DDC (61 bytes)	
_DATA_5DA0_:	
	.db $0C $00 $00 $00 $00 $00 $00 $00 $08 $00 $00 $00 $00 $10 $00 $00
	.db $00 $00 $18 $00 $01 $00 $00 $20 $00 $02 $00 $00 $28 $00 $03 $08
	.db $00 $00 $00 $09 $08 $00 $08 $00 $0A $08 $00 $10 $00 $09 $08 $00
	.db $18 $00 $0B $08 $00 $20 $00 $0C $08 $00 $28 $00 $08
	
; 48th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5DDD to 5E0F (51 bytes)	
_DATA_5DDD_:	
	.db $0A $EC $FF $03 $00 $0D $EC $FF $0B $00 $0E $F4 $FF $FB $FF $0F
	.db $F4 $FF $03 $00 $10 $F4 $FF $0B $00 $11 $F4 $FF $13 $00 $12 $FC
	.db $FF $FB $FF $13 $FC $FF $03 $00 $14 $FC $FF $0B $00 $15 $FC $FF
	.db $13 $00 $16
	
; 49th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5E10 to 5E42 (51 bytes)	
_DATA_5E10_:	
	.db $0A $EC $FF $03 $00 $0D $EC $FF $0B $00 $0E $F4 $FF $FB $FF $17
	.db $F4 $FF $03 $00 $10 $F4 $FF $0B $00 $11 $F4 $FF $13 $00 $12 $FC
	.db $FF $FB $FF $18 $FC $FF $03 $00 $19 $FC $FF $0B $00 $1A $FC $FF
	.db $13 $00 $1B
	
; 50th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5E43 to 5E75 (51 bytes)	
_DATA_5E43_:	
	.db $0A $F0 $FF $00 $00 $1C $F0 $FF $08 $00 $1D $F8 $FF $F8 $FF $1E
	.db $F8 $FF $00 $00 $1F $F8 $FF $08 $00 $20 $F8 $FF $10 $00 $21 $00
	.db $00 $F8 $FF $22 $00 $00 $00 $00 $23 $00 $00 $08 $00 $24 $00 $00
	.db $10 $00 $25
	
; 51st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5E76 to 5E99 (36 bytes)	
_DATA_5E76_:	
	.db $07 $F5 $FF $FF $FF $26 $F5 $FF $07 $00 $27 $FD $FF $F7 $FF $28
	.db $FD $FF $FF $FF $29 $FD $FF $07 $00 $2A $05 $00 $FF $FF $2B $05
	.db $00 $07 $00 $2C
	
; 52nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5E9A to 5EC2 (41 bytes)	
_DATA_5E9A_:	
	.db $07 $EF $FF $FF $FF $2D $F7 $FF $F7 $FF $2E $F7 $FF $FF $FF $2F
	.db $F7 $FF $07 $00 $30 $FF $FF $FF $FF $31 $FF $FF $07 $00 $32 $07
	.db $00 $FF $FF $33 $07 $00 $07 $00 $34
	
; 53rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5EC3 to 5EE1 (31 bytes)	
_DATA_5EC3_:	
	.db $06 $F1 $FF $FA $FF $35 $F1 $FF $02 $00 $36 $F9 $FF $FA $FF $37
	.db $F9 $FF $02 $00 $38 $01 $00 $FA $FF $39 $01 $00 $02 $00 $3A
	
; 54th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5EE2 to 5EEC (11 bytes)	
_DATA_5EE2_:	
	.db $02 $F7 $FF $FF $FF $3B $FF $FF $FF $FF $3C
	
; 55th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5EED to 5EF2 (6 bytes)	
_DATA_5EED_:	
	.db $01 $FD $FF $FB $FF $3D
	
; 56th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5EF3 to 5EF8 (6 bytes)	
_DATA_5EF3_:	
	.db $01 $FC $FF $FA $FF $3E
	
; 57th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5EF9 to 5F44 (76 bytes)	
_DATA_5EF9_:	
	.db $0F $F0 $FF $03 $00 $0D $F0 $FF $0B $00 $0E $F0 $FF $13 $00 $0F
	.db $F8 $FF $F3 $FF $10 $F8 $FF $FB $FF $11 $F8 $FF $03 $00 $12 $F8
	.db $FF $0B $00 $13 $F8 $FF $13 $00 $14 $F8 $FF $1B $00 $15 $00 $00
	.db $F3 $FF $16 $00 $00 $FB $FF $17 $00 $00 $03 $00 $18 $00 $00 $0B
	.db $00 $19 $00 $00 $13 $00 $1A $00 $00 $1B $00 $1B
	
; 58th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5F45 to 5F90 (76 bytes)	
_DATA_5F45_:	
	.db $0F $F0 $FF $03 $00 $0D $F0 $FF $0B $00 $0E $F0 $FF $13 $00 $0F
	.db $F8 $FF $F3 $FF $10 $F8 $FF $FB $FF $11 $F8 $FF $03 $00 $12 $F8
	.db $FF $0B $00 $13 $F8 $FF $13 $00 $14 $F8 $FF $1B $00 $1C $00 $00
	.db $F3 $FF $16 $00 $00 $FB $FF $1D $00 $00 $03 $00 $1E $00 $00 $0B
	.db $00 $19 $00 $00 $13 $00 $1A $00 $00 $1B $00 $1F
	
; 59th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5F91 to 5FDC (76 bytes)	
_DATA_5F91_:	
	.db $0F $F4 $FF $F8 $FF $20 $F4 $FF $00 $00 $21 $F4 $FF $08 $00 $22
	.db $FC $FF $F0 $FF $23 $FC $FF $F8 $FF $24 $FC $FF $00 $00 $25 $FC
	.db $FF $08 $00 $26 $FC $FF $10 $00 $27 $FC $FF $18 $00 $28 $04 $00
	.db $F0 $FF $29 $04 $00 $F8 $FF $2A $04 $00 $00 $00 $2B $04 $00 $08
	.db $00 $2C $04 $00 $10 $00 $2D $04 $00 $18 $00 $2E
	
; 60th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 5FDD to 6028 (76 bytes)	
_DATA_5FDD_:	
	.db $0F $F3 $FF $F4 $FF $2F $F3 $FF $FC $FF $30 $F3 $FF $04 $00 $31
	.db $FB $FF $EC $FF $32 $FB $FF $F4 $FF $33 $FB $FF $FC $FF $34 $FB
	.db $FF $04 $00 $35 $FB $FF $0C $00 $36 $FB $FF $10 $00 $37 $03 $00
	.db $EC $FF $38 $03 $00 $F4 $FF $39 $03 $00 $FC $FF $3A $03 $00 $04
	.db $00 $3B $03 $00 $0C $00 $3C $03 $00 $10 $00 $3D
	
; 61st entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 6029 to 606F (71 bytes)	
_DATA_6029_:	
	.db $0E $F4 $FF $F0 $FF $3E $F4 $FF $F8 $FF $3F $F4 $FF $00 $00 $40
	.db $F4 $FF $08 $00 $41 $FC $FF $F0 $FF $42 $FC $FF $F8 $FF $43 $FC
	.db $FF $00 $00 $44 $FC $FF $08 $00 $45 $FC $FF $10 $00 $46 $04 $00
	.db $F0 $FF $47 $04 $00 $F8 $FF $48 $04 $00 $00 $00 $49 $04 $00 $08
	.db $00 $4A $04 $00 $10 $00 $4B
	
; 62nd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 6070 to 6098 (41 bytes)	
_DATA_6070_:	
	.db $08 $F8 $FF $F0 $FF $4C $F8 $FF $F8 $FF $4D $F8 $FF $00 $00 $4E
	.db $F8 $FF $08 $00 $4F $00 $00 $F0 $FF $50 $00 $00 $F8 $FF $51 $00
	.db $00 $00 $00 $52 $00 $00 $08 $00 $53
	
; 63rd entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 6099 to 60B7 (31 bytes)	
_DATA_6099_:	
	.db $06 $F8 $FF $F4 $FF $54 $F8 $FF $FC $FF $55 $F8 $FF $04 $00 $56
	.db $00 $00 $F4 $FF $57 $00 $00 $FC $FF $58 $00 $00 $04 $00 $59
	
; 64th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 60B8 to 60C2 (11 bytes)	
_DATA_60B8_:	
	.db $02 $FD $FF $F8 $FF $5A $FD $FF $00 $00 $5B
	
; 65th entry of Pointer Table from 5926 (indexed by _RAM_C028_)	
; Data from 60C3 to 60CD (11 bytes)	
_DATA_60C3_:	
	.db $02 $FC $FF $F4 $FF $5C $FC $FF $FC $FF $5D
	
; 14th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_60CE_:	
		ld a, $FF
		out (Port_VDPAddress), a
		ld a, $85
		out (Port_VDPAddress), a
		ld a, $FF
		out (Port_VDPAddress), a
		ld a, $86
		out (Port_VDPAddress), a
		xor a
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld a, $D0
		out (Port_VDPData), a
		ld hl, $0000
		ld de, $4000
		ld bc, $0020
		call _LABEL_988_
		ld de, $7800
		ld bc, $0380
		call _LABEL_988_
		ld hl, _RAM_C020_
		ld de, _RAM_C020_ + 1
		ld (hl), $00
		ld bc, $0020
		ldir
		ld a, $19
		ld (_RAM_FFFF_), a
		ld hl, _DATA_64000_
		ld de, $6C00
		call _LABEL_A75_
		ei
		halt
		ld a, (_RAM_C017_)
		cp $12
		jr nz, +
		ld a, $10
		ld (_RAM_C03D_), a
		ld hl, _DATA_554E_
		ld de, $C000
		ld bc, $0020
		call _LABEL_9CB_
		ld hl, _DATA_64999_
		ld de, $4000
		call _LABEL_A75_
		ld hl, _DATA_66012_
		jr _LABEL_6184_
	
+:	
		ld a, (_RAM_C017_)
		cp $06
		ld hl, _DATA_556E_
		jr z, +
		ld hl, _DATA_558E_
+:	
		ld de, $C000
		ld bc, $0020
		call _LABEL_9CB_
		ld a, $1D
		ld (_RAM_FFFF_), a
		ld hl, _DATA_74000_
		ld de, $4000
		call _LABEL_A75_
		ld hl, _DATA_75D2F_
		ld de, $6000
		call _LABEL_A75_
		ld a, (_RAM_C017_)
		cp $0C
		ld hl, _DATA_754C2_
		jr z, +
		ld hl, _DATA_74F3A_
+:	
		ld de, $61A0
		call _LABEL_A75_
		ld hl, _DATA_74D57_
_LABEL_6184_:	
		ld de, _RAM_C200_
		ld c, $02
		call _LABEL_AA4_
		ld a, $40
		ld (_RAM_C02C_), a
		ld hl, $0140
		ld (_RAM_C02D_), hl
		ld hl, _RAM_FFF0_
		ld (_RAM_C030_), hl
		ld hl, $00B8
		ld (_RAM_C036_), hl
		ld hl, $0110
		ld (_RAM_C038_), hl
		ld a, $39
		ld (_RAM_C03A_), a
		ld hl, $FFD0
		ld (_RAM_C03B_), hl
		ld a, $89
		ld (_RAM_DE04_), a
		ld a, $0E
		ld (_RAM_C001_), a
		ret
	
; 15th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_61BF_:	
		call +
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ret
	
+:	
		call _LABEL_6244_
		ld a, (_RAM_C02B_)
		or a
		jr z, ++
		cp $03
		jr z, +
		ret
	
+:	
		ld a, (_RAM_C022_)
		cp $08
		ret c
		ld hl, _RAM_C02C_
		ld a, (hl)
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ld a, (hl)
		dec (hl)
		and $07
		ret nz
		ld de, (_RAM_C02D_)
		ld hl, $7800
		add hl, de
		ex de, hl
		ld hl, $0000
		ld bc, $0020
		call _LABEL_988_
		ld hl, (_RAM_C02D_)
		ld de, $FFC0
		add hl, de
		ld (_RAM_C02D_), hl
		ret
	
++:	
		ld hl, _RAM_C02C_
		ld a, (hl)
		cp $E0
		ret nc
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ld a, (hl)
		inc (hl)
		inc (hl)
		and $07
		ret nz
		ld de, (_RAM_C02D_)
		ld hl, $7800
		add hl, de
		ex de, hl
		ld bc, _RAM_C200_
		add hl, bc
		ld bc, $0040
		call _LABEL_9B0_
		ld hl, (_RAM_C02D_)
		ld de, $0040
		add hl, de
		ld (_RAM_C02D_), hl
		ret
	
_LABEL_6244_:	
		ld hl, _RAM_C03F_
		ld (_RAM_C0F0_), hl
		ld hl, _RAM_C07A_
		ld (_RAM_C0F2_), hl
		call +
		ld a, $D0
		ld hl, (_RAM_C0F0_)
		ld (hl), a
		jp _LABEL_368F_
	
+:	
		ld a, (_RAM_C02B_)
		or a
		jr z, +
		dec a
		jp z, _LABEL_62E8_
		dec a
		jp z, _LABEL_6312_
		dec a
		jp z, _LABEL_6364_
		ret
	
+:	
		ld hl, _RAM_C032_
		dec (hl)
		call m, +
		ld hl, (_RAM_C033_)
		ld de, (_RAM_C030_)
		add hl, de
		ld (_RAM_C030_), hl
		ld de, $0080
		ld a, (_RAM_C035_)
		jp _LABEL_265F_
	
+:	
		ld hl, _RAM_C02F_
		ld a, (hl)
		add a, a
		add a, a
		inc (hl)
		ld l, a
		ld h, $00
		ld de, _DATA_63AD_
		add hl, de
		ld a, (hl)
		or a
		jr nz, ++
		ld a, (_RAM_C017_)
		cp $12
		jr z, +
		ld hl, _RAM_C02B_
		inc (hl)
		ret
	
+:	
		xor a
		ld (_RAM_C032_), a
		ld hl, _RAM_C02F_
		dec (hl)
		ld hl, _RAM_C03D_
		dec (hl)
		ld a, (hl)
		jp p, +
		ld hl, $0000
		ld (_RAM_C033_), hl
		cp $C0
		ret nc
		ld a, $0F
		ld (_RAM_C001_), a
		ret
	
+:	
		bit 0, a
		ld hl, $FFFF
		ld (_RAM_C033_), hl
		ret z
		ld hl, $0000
		ld (_RAM_C033_), hl
		ret
	
++:	
		ld (_RAM_C032_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C035_), a
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_C033_), hl
		ret
	
_LABEL_62E8_:	
		call _LABEL_63A2_
		ld de, (_RAM_C03B_)
		inc de
		inc de
		inc de
		ld (_RAM_C03B_), de
		ld a, d
		or a
		jr nz, _LABEL_6303_
		ld a, e
		cp $40
		jr c, _LABEL_6303_
		ld hl, _RAM_C02B_
		inc (hl)
_LABEL_6303_:	
		ld hl, $0088
		ld a, $2D
		bit 2, e
		jp z, _LABEL_265F_
		ld a, $2E
		jp _LABEL_265F_
	
_LABEL_6312_:	
		ld a, (_RAM_C03A_)
		cp $3B
		jr c, +
		ld hl, _RAM_C02B_
		inc (hl)
		ld hl, $8000
		ld (_RAM_C024_), hl
		ld a, $8D
		ld (_RAM_DE04_), a
+:	
		call _LABEL_63A2_
		ld de, (_RAM_C038_)
		dec de
		ld (_RAM_C038_), de
		ld a, d
		or a
		jr nz, +
		ld a, e
		cp $BC
		jr nc, +
		ld hl, (_RAM_C03B_)
		dec hl
		ld (_RAM_C03B_), hl
		ld a, l
		and $07
		ld hl, _RAM_C03A_
		ld a, (hl)
		jr nz, ++
		inc (hl)
		jr ++
	
+:	
		ld a, $38
		bit 0, e
		jr z, ++
		ld a, $39
++:	
		ld hl, $00B8
		call ++
		ld de, (_RAM_C03B_)
		jr _LABEL_6303_
	
_LABEL_6364_:	
		call _LABEL_36B4_
		ld de, (_RAM_C03B_)
		dec de
		dec de
		dec de
		ld (_RAM_C03B_), de
		call _LABEL_6303_
		ld de, (_RAM_C038_)
		dec de
		ld (_RAM_C038_), de
		ld a, e
		and $07
		ld hl, _RAM_C03A_
		ld a, (hl)
		jr nz, +
		inc (hl)
+:	
		cp $41
		ret nc
		ld hl, (_RAM_C036_)
		dec hl
		dec hl
		ld (_RAM_C036_), hl
++:	
		ld b, a
		ld a, (_RAM_C017_)
		cp $06
		ld a, $F7
		jr z, +
		xor a
+:	
		add a, b
		jp _LABEL_265F_
	
_LABEL_63A2_:	
		ld hl, $0080
		ld de, $0080
		ld a, $1E
		jp _LABEL_265F_
	
; Data from 63AD to 63C1 (21 bytes)	
_DATA_63AD_:	
	.db $3F $2C $02 $00 $1F $2B $01 $00 $07 $2A $01 $00 $07 $29 $FF $FF
	.db $0F $1E $FF $FF $00
	
; 16th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_63C2_:	
		call _LABEL_23CE_
		ld de, $8006
		rst $10	; _LABEL_10_
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70909_
		ld hl, _RAM_C017_
		ld de, _RAM_C017_ + 1
		ld bc, $01E8
		ld (hl), $00
		ldir
		ld a, $1A
		ld (_RAM_FFFF_), a
		ld hl, _DATA_6836B_
		ld de, $C000
		ld bc, $0020
		call _LABEL_9B0_
		ld hl, _DATA_6838B_
		ld de, $4000
		call _LABEL_A48_
		ld hl, _DATA_68000_
		ld de, $7BCE
		ld bc, $0912
		xor a
		ld (_RAM_C003_), a
		call _LABEL_9DB_
		ld hl, _DATA_68C85_
		ld de, $6000
		call _LABEL_A48_
		ld hl, _DATA_680A2_
		ld de, _RAM_C700_
		ld c, $02
		call _LABEL_AA4_
		ld hl, _RAM_C700_
		ld de, $78CC
		ld bc, $0A2A
		call _LABEL_9FA_
		ld a, $FF
		ld (_RAM_C019_), a
		ld a, $82
		ld (_RAM_DE04_), a
		ld a, $10
		ld (_RAM_C001_), a
		jp _LABEL_23EB_
	
; 17th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_643A_:	
		ld a, $1A
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C017_)
		or a
		ret nz
		ld a, (_RAM_C019_)
		or a
		ret nz
		ld a, $01
		ld (_RAM_C017_), a
		ld a, $34
		ld (_RAM_C01D_), a
		ld a, $FF
		ld (_RAM_C019_), a
		ld hl, _RAM_C01B_
		inc (hl)
		ld a, (hl)
		cp $03
		jr c, +
		ld a, $02
		ld (_RAM_C001_), a
		ret
	
+:	
		ld hl, _DATA_6545_
		call _LABEL_518_
		bit 0, a
		ld de, $5000
		jr nz, +
		ld de, $6000
+:	
		push af
		ld a, $FF
		ld (_RAM_C021_), a
		call _LABEL_A75_
		xor a
		ld (_RAM_C021_), a
		pop af
		ld hl, _DATA_654B_
		call _LABEL_518_
		bit 0, a
		ld de, _RAM_C200_
		jr nz, +
		ld de, _RAM_C700_
+:	
		ld c, $02
		jp _LABEL_AA4_
	
; 17th entry of Jump Table from 186 (indexed by _RAM_C001_)	
_LABEL_649A_:	
		call +
		ld a, (_RAM_FFFF_)
		push af
		ld a, $1C
		ld (_RAM_FFFF_), a
		call _LABEL_70000_
		pop af
		ld (_RAM_FFFF_), a
		ret
	
+:	
		ld a, (_RAM_C021_)
		or a
		ret nz
		ld hl, _RAM_C019_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
+:	
		ld a, (_RAM_C017_)
		or a
		ret z
		ld hl, _RAM_C01D_
		ld a, (hl)
		sub $02
		jr nc, +
		xor a
		ld (_RAM_C017_), a
		ret
	
+:	
		ld (hl), a
		sub $28
		jr c, ++
		ld e, a
		ld d, $00
		ld hl, $78C0
		add hl, de
		ex de, hl
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr nc, +
		ld hl, _RAM_C700_
+:	
		ld bc, $0A2A
		call _LABEL_4FF_
		jp +++
	
++:	
		push af
		neg
		ld (_RAM_C01F_), a
		ld e, a
		ld d, $00
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr nc, +
		ld hl, _RAM_C700_
+:	
		add hl, de
		pop af
		add a, $2A
		ld c, a
		ld b, $0A
		ld de, $78C0
		call _LABEL_4E1_
+++:	
		ld hl, (_RAM_C01D_)
		ld a, l
		cp $0A
		push af
		ld h, $00
		ld de, $78CC
		add hl, de
		ex de, hl
		pop af
		jr nc, +
		ld bc, $0A2A
		xor a
		jr ++
	
+:	
		sub $34
		neg
		ld c, a
		ld b, $0A
		neg
		add a, $2A
++:	
		ld (_RAM_C01F_), a
		ld a, (_RAM_C01B_)
		rrca
		ld hl, _RAM_C200_
		jr c, +
		ld hl, _RAM_C700_
+:	
		jp _LABEL_4E1_
	
; Pointer Table from 6545 to 654A (3 entries, indexed by _RAM_C01B_)	
_DATA_6545_:	
	.dw _DATA_68C85_ _DATA_6977E_ _DATA_6A3D3_
	
; Pointer Table from 654B to 6550 (3 entries, indexed by _RAM_C01B_)	
_DATA_654B_:	
	.dw _DATA_680A2_ _DATA_68197_ _DATA_68269_
	
; 18th entry of Jump Table from F4 (indexed by _RAM_C001_)	
_LABEL_6551_:	
		call _LABEL_23CE_
		xor a
		ld (_RAM_C017_), a
		ld (_RAM_C018_), a
		ld (_RAM_DFF1_), a
		ld hl, _RAM_C000_
		set 1, (hl)
		call _LABEL_656E_
		ld a, $04
		ld (_RAM_C001_), a
		jp _LABEL_23EB_
	
_LABEL_656E_:	
		ld hl, $C00B
		ld de, _RAM_C011_
		ld b, $06
-:	
		ld a, (de)
		cp (hl)
		jr c, +
		ret nz
		inc hl
		inc de
		djnz -
		ret
	
+:	
		ld hl, _RAM_C00B_
		ld de, _RAM_C011_
		ld bc, $0006
		ldir
		ret
	
	; Data from 658C to 6FFF (2676 bytes)
	.dsb 2676, $FF
	
; 5th entry of Pointer Table from 12E16 (indexed by unknown)	
; Data from 7000 to 7A00 (2561 bytes)	
_DATA_7000_:	
	.dsb 2561, $FF
	
; 5th entry of Pointer Table from 72228 (indexed by unknown)	
; Data from 7A01 to 7F3E (1342 bytes)	
_DATA_7A01_:	
	.dsb 1342, $FF
	
; 2nd entry of Pointer Table from 120E9 (indexed by unknown)	
; Data from 7F3F to 7FEF (177 bytes)	
_DATA_7F3F_:	
	.dsb 177, $FF
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 7FF0 to 7FFF (16 bytes)
	.db $54 $4D $52 $20 $53 $45 $47 $41 $19 $87 $96 $3B $01 $90 $00 $40
	
.BANK 2	
.ORG $0000	
	
	; Data from 8000 to BFFF (16384 bytes)
	.incbin "data/File00_08000_0BFFF.dat"
	
.BANK 3	
.ORG $0000	
	
	; Data from C000 to FFFF (16384 bytes)
	.incbin "data/File01_0C000_0FFFF.dat"
	
.BANK 4	
.ORG $0000	
	
; 3rd entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 10000 to 10003 (2 entries, indexed by unknown)	
_DATA_10000_:	
	.dw _DATA_1062A_ _RAM_D8F0_
	
	; Data from 10004 to 1001F (28 bytes)
	.db $04 $0A $00 $00 $00 $00 $00 $00 $01 $00 $01 $01 $01 $02 $01 $03
	.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $04 $01 $05
	
; 4th entry of Pointer Table from 12E16 (indexed by unknown)	
; Data from 10020 to 10055 (54 bytes)	
_DATA_10020_:	
	.db $01 $06 $02 $07 $02 $08 $01 $09 $01 $0A $01 $0B $00 $00 $01 $0C
	.db $01 $0D $01 $0E $02 $0F $02 $10 $02 $11 $02 $12 $01 $13 $01 $14
	.db $01 $15 $00 $00 $01 $16 $01 $17 $01 $18 $01 $19 $01 $1A $01 $1B
	.db $01 $1C $01 $1D $00 $00
	
; 4th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 10056 to 10059 (2 entries, indexed by unknown)	
_DATA_10056_:	
	.dw _DATA_1062A_ _RAM_DBEC_
	
	; Data from 1005A to 1006F (22 bytes)
	.db $05 $09 $00 $00 $00 $00 $00 $00 $01 $1E $01 $1F
	.dsb 10, $00
	
; 1st entry of Pointer Table from 12E20 (indexed by unknown)	
; Data from 10070 to 100B5 (70 bytes)	
_DATA_10070_:	
	.db $00 $00 $01 $20 $01 $21 $01 $22 $01 $23 $01 $24 $00 $00 $00 $00
	.db $01 $25 $01 $26 $01 $27 $02 $28 $02 $29 $01 $2A $01 $2B $01 $2C
	.db $00 $00 $00 $00 $01 $2D $01 $2E $02 $2F $02 $30 $02 $31 $01 $32
	.db $01 $33 $01 $34 $00 $00 $00 $00 $01 $35 $01 $36 $01 $37 $01 $38
	.db $01 $39 $01 $3A $01 $3B
	
; 5th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 100B6 to 100B9 (2 entries, indexed by unknown)	
_DATA_100B6_:	
	.dw _DATA_1062A_ _RAM_DAEA_
	
	; Data from 100BA to 10127 (110 bytes)
	.db $06 $09 $00 $00 $00 $00 $00 $00 $01 $3C $01 $3D
	.dsb 10, $00
	.db $01 $20 $01 $3E $01 $3F $01 $40 $01 $41 $00 $00 $00 $00 $00 $00
	.db $01 $42 $01 $43 $01 $44 $02 $45 $02 $46 $01 $47 $01 $48 $01 $49
	.db $00 $00 $00 $00 $01 $4A $01 $4B $02 $4C $02 $4D $02 $4E $01 $4F
	.db $01 $50 $00 $00 $00 $00 $00 $00 $01 $51 $01 $52 $01 $53 $01 $54
	.db $01 $55 $01 $56 $01 $57
	.dsb 10, $00
	.db $01 $58 $01 $59 $01 $5A $01 $5B
	
; 8th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 10128 to 1012B (2 entries, indexed by unknown)	
_DATA_10128_:	
	.dw _DATA_111AA_ _RAM_D8EF_
	
	; Data from 1012C to 1017D (82 bytes)
	.db $04 $0A $00 $00 $00 $00 $00 $00 $01 $00 $01 $01 $01 $02 $01 $03
	.dsb 12, $00
	.db $01 $04 $01 $05 $01 $06 $01 $07 $00 $00 $00 $00 $00 $00 $01 $08
	.db $01 $09 $01 $0A $01 $0B $02 $0C $02 $0D $01 $0E $01 $0F $01 $10
	.db $01 $11 $00 $00 $01 $12 $01 $13 $01 $14 $01 $15 $01 $16 $01 $17
	.db $01 $18 $01 $12 $00 $00
	
; 9th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 1017E to 10181 (2 entries, indexed by unknown)	
_DATA_1017E_:	
	.dw _DATA_111AA_ _RAM_D8EB_
	
	; Data from 10182 to 101E7 (102 bytes)
	.db $05 $0A $00 $00 $00 $00 $00 $00 $01 $19
	.dsb 12, $00
	.db $01 $1A $01 $1B $01 $1C $01 $1D $01 $1E $01 $1F $00 $00 $01 $20
	.db $00 $00 $00 $00 $01 $21 $01 $22 $01 $23 $01 $24 $02 $25 $01 $26
	.db $01 $27 $01 $28
	.dsb 10, $00
	.db $01 $29 $01 $2A $02 $2B $02 $2C $01 $2D $01 $2E $01 $2F $00 $00
	.db $00 $00 $00 $00 $01 $30 $00 $00 $01 $31 $01 $32 $01 $33 $01 $34
	.db $01 $35
	
; 10th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 101E8 to 101EB (2 entries, indexed by unknown)	
_DATA_101E8_:	
	.dw _DATA_111AA_ _RAM_DCE7_
	
	; Data from 101EC to 10259 (110 bytes)
	.db $06 $09 $00 $00 $00 $00 $00 $00 $01 $36
	.dsb 10, $00
	.db $01 $37 $01 $38 $01 $39 $01 $3A
	.dsb 12, $00
	.db $01 $3B $01 $3C $02 $3D $01 $3E $00 $00 $01 $3F $00 $00 $00 $00
	.db $00 $00 $00 $00 $01 $40 $01 $41 $01 $42 $01 $43 $01 $44
	.dsb 12, $00
	.db $01 $45 $02 $46 $01 $47 $01 $48
	.dsb 10, $00
	.db $01 $49 $01 $4A $01 $4B $01 $4C $01 $4D
	
; 13th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 1025A to 1025D (2 entries, indexed by unknown)	
_DATA_1025A_:	
	.dw _DATA_11B6A_ _RAM_D8E2_
	
	; Data from 1025E to 102C3 (102 bytes)
	.db $05 $0A $00 $00 $00 $00 $00 $00 $01 $00 $00 $00 $00 $00 $01 $01
	.dsb 12, $00
	.db $01 $02 $00 $00 $00 $00 $01 $03 $00 $00 $00 $00 $00 $00 $01 $04
	.db $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $0C
	.db $01 $0D $00 $00 $01 $0E $01 $0F $01 $10 $02 $11 $02 $12 $01 $13
	.db $01 $14 $01 $15 $00 $00 $00 $00 $00 $00 $00 $00 $01 $16 $01 $17
	.db $01 $18 $01 $19 $00 $00 $00 $00 $00 $00
	
; 14th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 102C4 to 102C7 (2 entries, indexed by unknown)	
_DATA_102C4_:	
	.dw _DATA_11B6A_ _RAM_D8E2_
	
	; Data from 102C8 to 1032D (102 bytes)
	.db $05 $0A $00 $00 $00 $00 $00 $00 $01 $1A
	.dsb 12, $00
	.db $01 $1B $01 $1C $00 $00 $01 $1D $00 $00 $00 $00 $01 $1E $01 $1F
	.db $00 $00 $00 $00 $01 $20 $01 $21 $01 $22 $01 $23 $01 $24 $01 $25
	.db $01 $26 $01 $27 $00 $00 $00 $00 $00 $00 $00 $00 $01 $28 $01 $29
	.db $01 $2A $02 $2B $02 $2C $01 $2D $01 $2E $01 $2F $00 $00 $00 $00
	.db $00 $00 $01 $30 $01 $31 $01 $32 $01 $33 $01 $34 $01 $35 $01 $36
	
; 15th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 1032E to 10331 (2 entries, indexed by unknown)	
_DATA_1032E_:	
	.dw _DATA_11B6A_ _RAM_E0E2_
	
	; Data from 10332 to 10334 (3 bytes)
	.db $06 $09 $01
	
	; Pointer Table from 10335 to 10336 (1 entries, indexed by unknown)
	.dw _DATA_37_
	
	; Data from 10337 to 1039F (105 bytes)
	.db $00 $00 $00 $01 $38
	.dsb 10, $00
	.db $01 $39 $01 $3A $01 $3B $01 $3C
	.dsb 12, $00
	.db $01 $3D $01 $3E $01 $3F $01 $40 $00 $00 $01 $41 $01 $42 $00 $00
	.db $00 $00 $00 $00 $01 $43 $02 $44 $02 $45 $01 $46 $01 $47 $00 $00
	.db $00 $00 $00 $00 $00 $00 $01 $48 $01 $49 $02 $4A $02 $4B $01 $4C
	.db $01 $4D $00 $00 $00 $00 $00 $00 $00 $00 $01 $4E $01 $4F $01 $50
	.db $01 $51 $01 $52 $01 $53
	
; 2nd entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 103A0 to 103A3 (2 entries, indexed by unknown)	
_DATA_103A0_:	
	.dw _DATA_125EA_ _RAM_DEEB_
	
	; Data from 103A4 to 103FF (92 bytes)
	.db $05 $09 $00 $00 $00 $00 $00 $00 $00 $00 $01 $00 $01 $01
	.dsb 10, $00
	.db $01 $02 $01 $03 $01 $04 $01 $05 $01 $06 $00 $00 $00 $00 $00 $00
	.db $01 $07 $01 $08 $01 $09 $02 $0A $02 $0B $01 $0C $01 $0D $01 $0E
	.db $01 $0F $01 $10 $01 $11 $02 $12 $02 $13 $02 $14 $01 $15 $01 $16
	.db $00 $00 $01 $17 $01 $18 $01 $19 $01 $1A $01 $1B $01 $1C $01 $1D
	.db $00 $00 $00 $00
	
; 1st entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 10400 to 10403 (2 entries, indexed by unknown)	
_DATA_10400_:	
	.dw _DATA_125EA_ _RAM_DDE7_
	
	; Data from 10404 to 10471 (110 bytes)
	.db $06 $09 $00 $00 $00 $00 $00 $00 $00 $00 $01 $1E $01 $1F
	.dsb 12, $00
	.db $01 $20 $01 $21 $01 $22 $01 $23 $01 $06 $00 $00 $00 $00 $01 $24
	.db $01 $25 $01 $26 $02 $27 $02 $28 $01 $29 $01 $2A $01 $2B $00 $00
	.db $01 $2C $01 $2D $02 $2E $02 $2F $02 $30 $01 $31 $01 $32 $00 $00
	.db $01 $33 $01 $34 $01 $35 $01 $36 $01 $37 $01 $38 $01 $39 $00 $00
	.db $00 $00 $01 $3A $01 $3B $01 $3C $01 $3D
	.dsb 10, $00
	
; 7th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 10472 to 10475 (2 entries, indexed by unknown)	
_DATA_10472_:	
	.dw _DATA_12DAA_ _RAM_DAE9_
	
	; Data from 10476 to 104DB (102 bytes)
	.db $05 $0A
	.dsb 12, $00
	.db $01
	.dsb 11, $00
	.db $01 $01 $00 $00 $01 $02 $01 $03 $01 $04 $01 $05 $01 $06 $01 $07
	.db $00 $00 $00 $00 $01 $08 $01 $09 $01 $0A $02 $0B $01 $0C $01 $0D
	.db $01 $0E $01 $0F $01 $10 $01 $11 $01 $12 $02 $13 $02 $14 $01 $15
	.db $01 $16 $00 $00 $00 $00 $00 $00 $01 $17 $01 $18 $01 $19 $01 $1A
	.db $01 $1B $00 $00 $01 $1C $00 $00 $00 $00 $00 $00
	
; 6th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 104DC to 104DF (2 entries, indexed by unknown)	
_DATA_104DC_:	
	.dw _DATA_12DAA_ _RAM_DAE7_
	
	; Data from 104E0 to 1054D (110 bytes)
	.db $06 $09
	.dsb 10, $00
	.db $01 $1D
	.dsb 16, $00
	.db $01 $1E $01 $1F $01 $20 $01 $21 $00 $00 $00 $00 $01 $22 $00 $00
	.db $01 $23 $02 $24 $01 $25 $01 $26 $00 $00 $00 $00 $00 $00 $01 $27
	.db $01 $28 $01 $29 $01 $2A $01 $2B $00 $00 $00 $00 $00 $00 $01 $2C
	.db $01 $2D $02 $2E $01 $2F $00 $00 $00 $00 $00 $00 $00 $00 $01 $30
	.db $01 $31 $01 $32 $01 $33 $01 $34 $00 $00 $00 $00 $00 $00 $00 $00
	
; 12th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 1054E to 10551 (2 entries, indexed by unknown)	
_DATA_1054E_:	
	.dw _DATA_1344A_ _RAM_D7E5_
	
	; Data from 10552 to 105B7 (102 bytes)
	.db $05 $0A
	.dsb 12, $00
	.db $01
	.dsb 11, $00
	.db $01 $01 $01 $02 $00 $00 $00 $00 $01 $03 $00 $00 $01 $04 $01 $05
	.db $00 $00 $00 $00 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B
	.db $01 $0C $01 $0D $01 $0E $01 $0F $01 $10 $02 $11 $02 $12 $01 $13
	.db $01 $14 $01 $15 $00 $00 $00 $00 $01 $16 $01 $17 $01 $18 $01 $19
	.db $01 $1A $01 $1B $01 $1C $00 $00 $00 $00 $00 $00
	
; 11th entry of Pointer Table from 47B0 (indexed by _RAM_C100_)	
; Pointer Table from 105B8 to 105BB (2 entries, indexed by unknown)	
_DATA_105B8_:	
	.dw _DATA_1344A_ _RAM_D8E0_
	
	; Data from 105BC to 10629 (110 bytes)
	.db $06 $09
	.dsb 10, $00
	.db $01 $1D $00 $00 $00 $00 $01 $1E
	.dsb 10, $00
	.db $01 $1F $01 $20 $01 $21 $01 $22 $00 $00 $01 $23 $01 $24 $00 $00
	.db $01 $25 $01 $26 $01 $27 $01 $28 $00 $00 $00 $00 $00 $00 $01 $29
	.db $01 $2A $02 $2B $02 $2C $01 $2D $00 $00 $00 $00 $00 $00 $01 $2E
	.db $01 $2F $02 $30 $02 $31 $01 $32 $01 $33 $00 $00 $00 $00 $01 $34
	.db $01 $35 $01 $36 $01 $37 $01 $38 $01 $39 $00 $00 $00 $00 $00 $00
	
; 1st entry of Pointer Table from 10000 (indexed by unknown)	
; Data from 1062A to 111A9 (2944 bytes)	
_DATA_1062A_:	
	.incbin "data/File02_1062A_111A9.dat"
	
; 1st entry of Pointer Table from 10128 (indexed by unknown)	
; Data from 111AA to 11B69 (2496 bytes)	
_DATA_111AA_:	
	.incbin "data/File03_111AA_11B69.dat"
	
; 1st entry of Pointer Table from 1025A (indexed by unknown)	
; Data from 11B6A to 120E0 (1399 bytes)	
_DATA_11B6A_:	
	.dsb 13, $00
	.db $40 $40 $80 $00 $40 $40 $80 $00 $60 $60 $80 $00 $60 $60 $80 $00
	.db $20 $20 $40
	.dsb 13, $00
	.db $02 $02 $01 $00 $02 $02 $01 $00 $06 $06 $01 $00 $06 $06 $01 $00
	.db $04 $04 $02 $00 $30 $30 $40 $00 $30 $30 $40 $00 $30 $30 $40 $00
	.db $30 $30 $40 $00 $18 $18 $20 $00 $18 $18 $20 $00 $1C $1C $20 $00
	.db $1C $1C $20 $00 $0C $0C $02 $00 $0C $0C $02 $00 $0C $0C $02 $00
	.db $0C $0C $02 $00 $18 $18 $04 $00 $18 $18 $04 $00 $38 $38 $04 $00
	.db $38 $38 $04
	.dsb 13, $00
	.db $3C $00 $00 $00 $43 $00 $3C $00 $00 $00 $3F $00 $00 $00 $0F $00
	.db $00 $00 $03
	.dsb 17, $00
	.db $C0 $00 $00 $00 $7F $00 $80 $00 $80 $00 $7F $00 $FF $FF
	.dsb 19, $00
	.db $01 $00 $00 $F8 $01 $00 $00 $04 $01 $F8 $00 $FA $F9 $04 $00 $1C
	.db $1C $20 $00 $66 $66 $18 $00 $03 $FB $04 $00 $73 $FF $70 $00 $F9
	.db $FF $F8 $00 $C9 $FE $F8 $00 $85 $FE $F8 $00 $8E $FF $F8 $00 $00
	.db $00 $00 $00 $07 $00 $00 $00 $78 $00 $07 $00 $83 $03 $7C $00 $BB
	.db $3B $44 $00 $7F $7F $80 $00 $7F $7F $80 $00 $78 $FF $00 $00 $00
	.db $00 $00 $00 $E0 $00 $00 $00 $1E $00 $E0 $00 $C1 $C0 $3E $00 $DD
	.db $DC $22 $00 $FE $FE $01 $00 $FE $FE $01 $00 $1E $FF $00 $00 $38
	.db $38 $04 $00 $66 $66 $18 $00 $C0 $DF $20 $00 $CE $FF $0E $00 $9F
	.db $FF $1F $00 $93 $7F $1F $00 $A1 $7F $1F $00 $71 $FF $1F
	.dsb 18, $00
	.db $80 $00 $00 $1F $80 $00 $00 $20 $80 $1F $00 $5F $9F $20
	.dsb 17, $00
	.db $03 $00 $00 $00 $FE $00 $01 $00 $01 $00 $FE $00 $FF $FF
	.dsb 14, $00
	.db $3C $00 $00 $00 $C2 $00 $3C $00 $00 $00 $FC $00 $00 $00 $F0 $00
	.db $00 $00 $C0 $00 $1F $1F $E0 $00 $01 $01 $3E $00 $00 $00 $0F $00
	.db $00 $00 $01
	.dsb 17, $00
	.db $FC $FD $02 $00 $FE $FF $00 $00 $1F $1F $E0 $00 $03 $03 $FC $00
	.db $00 $00 $7F $00 $00 $00 $0F $00 $00 $00 $01 $00 $00 $00 $00 $00
	.db $7A $FE $71 $00 $84 $FE $01 $00 $00 $FE $01 $00 $00 $FC $03 $00
	.db $06 $7E $81 $00 $3E $3E $C1 $00 $0F $0F $F0 $00 $17 $17 $68 $00
	.db $38 $7B $84 $00 $3B $7B $84 $00 $3B $7B $84 $00 $1D $3D $C2 $00
	.db $1F $3F $C0 $00 $1F $3F $C0 $00 $0F $1F $E0 $00 $0F $1F $E0 $00
	.db $1C $DE $21 $00 $DC $DE $21 $00 $DC $DE $21 $00 $B8 $BC $43 $00
	.db $F8 $FC $03 $00 $F8 $FC $03 $00 $F0 $F8 $07 $00 $F0 $F8 $07 $00
	.db $5E $7F $8E $00 $21 $7F $80 $00 $00 $7F $80 $00 $00 $3F $C0 $00
	.db $60 $7E $81 $00 $7C $7C $83 $00 $F0 $F0 $0F $00 $E8 $E8 $16 $00
	.db $3F $BF $40 $00 $7F $FF $00 $00 $F8 $F8 $07 $00 $C0 $C0 $3F $00
	.db $00 $00 $FE $00 $00 $00 $F0 $00 $00 $00 $80 $00 $00 $00 $00 $00
	.db $F8 $F8 $07 $00 $80 $80 $7C $00 $00 $00 $F0 $00 $00 $00 $80
	.dsb 17, $00
	.db $1B $1B $24 $00 $1D $1D $22 $00 $0C $0C $13 $00 $00 $00 $0C
	.dsb 17, $00
	.db $8F $87 $40 $00 $8F $87 $40 $00 $07 $07 $80 $00 $07 $07 $00 $00
	.db $03 $03
	.dsb 14, $00
	.db $F1 $E1 $02 $00 $F1 $E1 $02 $00 $E0 $E0 $01 $00 $E0 $E0 $00 $00
	.db $C0 $C0
	.dsb 14, $00
	.db $D8 $D8 $24 $00 $B8 $B8 $44 $00 $30 $30 $C8 $00 $00 $00 $30
	.dsb 23, $00
	.db $08 $00 $14 $14 $08 $00 $14 $14 $08 $00 $14 $14 $08 $00 $14 $14
	.db $08 $00 $14 $14 $08 $00 $14 $14 $08
	.dsb 17, $00
	.db $0F $00 $00 $00 $10 $00 $0F $00 $00 $00 $0F $00 $00 $00 $07
	.dsb 21, $00
	.db $C0 $00 $00 $00 $30 $00 $C0 $00 $4F $00 $B0 $00 $14 $14 $08 $00
	.db $14 $14 $08 $00 $14 $14 $08 $00 $14 $14 $08 $00 $14 $14 $08 $00
	.db $14 $14 $08 $00 $14 $14 $08 $00 $14 $14 $08
	.dsb 21, $00
	.db $01 $01 $00 $00 $03 $03 $00 $00 $07 $07
	.dsb 10, $00
	.db $60 $60 $00 $00 $E0 $E0 $00 $00 $C0 $C0 $20 $00 $C0 $C0 $20 $00
	.db $80 $80 $40 $00 $80 $80 $40 $00 $00 $00 $01
	.dsb 29, $00
	.db $70 $70 $8F $00 $1F $1F $E0 $00 $0F $0F $70 $00 $03 $03 $3C $00
	.db $00 $00 $0F $00 $00 $00 $07 $00 $00 $00 $01 $00 $00 $00 $00 $00
	.db $F0 $00 $00 $00 $0C $00 $F0 $00 $F2 $F0 $0C $00 $F9 $F8 $06 $00
	.db $FC $FC $03 $00 $3F $3F $C0 $00 $1F $1F $E0 $00 $07 $07 $F8 $00
	.db $00 $3E $00 $00 $1D $7F $1C $00 $3E $7F $3E $00 $37 $FF $3E $00
	.db $22 $FF $3E $00 $63 $FF $3E $00 $00 $FF $1C $00 $22 $7F $80
	.dsb 9, $00
	.db $3D $00 $00 $80 $42 $80 $3D $80 $3D $BD $42 $80 $3D $BD $42 $80
	.db $7F $FF $00 $00 $3C $7F $80
	.dsb 9, $00
	.db $C0 $00 $00 $00 $38 $00 $C0 $00 $C4 $C0 $38 $00 $F3 $F0 $0C $00
	.db $F4 $F4 $0B $00 $EF $EF $10 $00 $07 $07 $00 $00 $0F $0F $00 $00
	.db $1E $1E $01 $00 $3E $3E $01 $00 $7C $7C $02 $00 $FC $FC $02 $00
	.db $F0 $7F $00 $00 $4E $7F $8E $00 $00 $00 $80 $00 $00 $00 $80
	.dsb 22, $00
	.db $80 $00 $00 $01 $01 $3E $00 $00 $00 $1F $00 $00 $00 $07 $00 $00
	.db $00 $03
	.dsb 18, $00
	.db $7F $80 $00 $60 $3C $83 $00 $7C $3C $83 $00 $6C $2C $93 $00 $54
	.db $04 $AB $00 $14 $04 $6B $00 $14 $04 $6B $00 $1A $0A $25 $00 $38
	.db $7B $84 $00 $3A $7B $84 $00 $3B $7B $84 $00 $3B $7B $84 $00 $3F
	.db $7F $80 $00 $3F $7F $80 $00 $3F $7F $80 $00 $3F $7F $00 $00 $3F
	.db $FF $00 $00 $1E $FE $01 $00 $DC $DD $22 $00 $BC $BD $42 $00 $78
	.db $7A $85 $00 $F0 $F4
	
	; Pointer Table from 120E1 to 120E8 (4 entries, indexed by unknown)
	.dw _DATA_B_ _RAM_E8E0_ _DATA_17_ _RAM_D1C1_
	
	; Pointer Table from 120E9 to 120EC (2 entries, indexed by unknown)
	.dw _DATA_2E_ _DATA_7F3F_
	
	; Data from 120ED to 120F0 (4 bytes)
	.db $9F $00 $57 $FF
	
	; Pointer Table from 120F1 to 120F8 (4 entries, indexed by unknown)
	.dw _DATA_1F_ _RAM_FF23_ _DATA_1F_ _RAM_FF43_
	
	; Pointer Table from 120F9 to 12100 (4 entries, indexed by unknown)
	.dw _DATA_1F_ _RAM_FF2A_ _DATA_E_ _RAM_FF40_
	
	; Data from 12101 to 125E9 (1257 bytes)
	.db $00 $00 $00 $7F $80 $00 $81 $FF $00 $00 $00 $80 $00 $00 $00 $80
	.db $00 $00 $00 $80 $00 $00 $3C $80 $00 $00 $43 $80 $3C $00 $3C $3C
	.db $C3 $00 $FF $FF $00 $00 $FF $FF
	.dsb 18, $00
	.db $80 $00 $00 $00 $70 $00 $80 $00 $8C $80 $70 $00 $FB $F9 $04
	.dsb 29, $00
	.db $F0 $00 $00 $00 $18 $08 $26 $00 $08 $00 $14 $00 $00 $00 $18
	.dsb 21, $00
	.db $7F $3F $00 $00 $7F $3F $00 $00 $7E $3E $01 $00 $3C $1C $02 $00
	.db $00 $00 $1C
	.dsb 13, $00
	.db $83 $A3 $5C $00 $07 $06 $B8 $00 $0F $0D $30 $00 $1E $1A $21 $00
	.db $0D $04 $12 $00 $03 $01 $0C $00 $00 $00 $07 $00 $00 $00 $00 $00
	.db $C3 $7F $00 $00 $B0 $B0 $4F $00 $40 $00 $BF $00 $C0 $40 $3F $00
	.db $C0 $C0 $20 $00 $80 $80 $40 $00 $00 $00 $80 $00 $00 $00 $00 $00
	.db $FF $FF $00 $00 $00 $00 $FF $00 $00 $00 $FF $00 $00 $00 $E0
	.dsb 17, $00
	.db $FE $FE $01 $00 $00 $00 $FF $00 $00 $00 $FF
	.dsb 21, $00
	.db $08 $00 $F0 $00 $04 $00 $F8 $00 $00 $00 $F8
	.dsb 41, $00
	.db $1C $00 $00 $00 $02 $00 $1C $00 $01 $00 $1E
	.dsb 15, $00
	.db $02 $00 $05 $05 $02 $00 $05 $05 $02 $00 $0A $0A $04 $00 $0A $0A
	.db $04 $00 $00 $00 $0F $00 $00 $00 $07 $00 $00 $00 $07 $00 $00 $00
	.db $03 $00 $00 $00 $01 $00 $00 $00 $01
	.dsb 9, $00
	.db $80 $00 $00 $00 $40 $00 $80 $00 $E0 $00 $00 $00 $30 $00 $C0 $00
	.db $CC $C0 $30 $00 $73 $70 $8C $00 $3C $3C $C3 $00 $1F $1F $60
	.dsb 25, $00
	.db $80 $00 $00 $00 $40 $01 $80 $00 $0A $0A $04 $00 $14 $14 $08 $00
	.db $14 $14 $08 $00 $14 $14 $08 $00 $2C $2C $10 $00 $28 $28 $10 $00
	.db $68 $68 $10 $00 $08 $F8 $00 $00 $0F $0F $30 $00 $07 $07 $18 $00
	.db $03 $03 $1C $00 $01 $01 $0E $00 $00 $00 $07 $00 $00 $00 $03 $00
	.db $00 $00 $03 $00 $00 $00 $01 $00 $A0 $83 $40 $00 $D3 $C7 $21 $00
	.db $F1 $E7 $01 $00 $EA $E7 $11 $00 $F0 $F7 $09 $00 $70 $77 $88 $00
	.db $31 $37 $C8 $00 $15 $17 $E8 $00 $E0 $F8 $E0 $00 $F0 $F8 $F0 $00
	.db $30 $F8 $F0 $00 $10 $F8 $F0 $00 $13 $F8 $F0 $00 $0C $F8 $E3 $00
	.db $17 $FF $00 $00 $57 $FF
	.dsb 18, $00
	.db $80 $00 $00 $00 $58 $00 $80 $00 $86 $80 $78 $00 $D9 $D8 $26
	.dsb 13, $00
	.db $03 $03 $00 $00 $07 $07 $00 $00 $0E $0E $01 $00 $3C $3C $02 $00
	.db $78 $78 $04
	.dsb 15, $00
	.db $80 $00 $00 $00 $80
	.dsb 13, $00
	.db $04 $07 $F8 $00 $06 $05 $78 $00 $0F $0D $30 $00 $0E $08 $11 $00
	.db $0D $08 $12 $00 $0D $08 $12 $00 $0D $08 $12 $00 $0A $08 $15 $00
	.db $4F $FF $00 $00 $0F $EF $10 $00 $EF $EF $10 $00 $EF $EF $10 $00
	.db $5F $5F $A0 $00 $5E $5E $A1 $00 $5E $5E $A1 $00 $BF $9F $40 $00
	.db $FE $FE $01 $00 $FE $FE $01 $00 $BD $FD $02 $00 $0F $FF $00 $00
	.db $43 $7F $80 $00 $FB $FB $04 $00 $F7 $F7 $08 $00 $EE $EE $11 $00
	.db $01 $01 $00 $00 $C3 $03 $00 $00 $2F $0F $C0 $00 $DF $DF $20 $00
	.db $D8 $DF $20 $00 $80 $9F $60 $00 $0B $3F $C3 $00 $17 $FF $07 $00
	.db $F0 $F0 $08 $00 $E0 $E0 $10 $00 $E0 $E0 $10 $00 $C0 $C0 $20 $00
	.db $00 $80 $40 $00 $00 $C0 $00 $00 $80 $E0 $80 $00 $C0 $E0 $C0 $00
	.db $0A $08 $15 $00 $02 $00 $0D $00 $05 $05 $0A $00 $00 $00 $07
	.dsb 17, $00
	.db $BF $9F $40 $00 $BF $9F $40 $00 $7F $3F $80 $00 $7F $3F $00 $00
	.db $7F $3F $00 $00 $FF $7F $00 $00 $FF $7F $00 $00 $FE $7E $01 $00
	.db $FC $FD $02 $00 $F8 $FA $05 $00 $F0 $F4 $0B $00 $E0 $E8 $17 $00
	.db $C0 $D0 $2F $00 $83 $A0 $5C $00 $0F $40 $B0 $00 $1F $83 $60 $00
	.db $01 $3F $C7 $00 $10 $7F $87 $00 $20 $7F $87 $00 $08 $3F $C3 $00
	.db $D0 $3F $00 $00 $C0 $3F $00 $00 $E1 $FF $00 $00 $11 $11 $EE $00
	.db $C0 $E0 $C0 $00 $C0 $E0 $C0 $00 $C0 $C0 $C0 $00 $9C $C0 $80 $00
	.db $23 $80 $5C $00 $F8 $F8 $07 $00 $FE $FE $01 $00 $FF $FF
	.dsb 22, $00
	.db $80 $00 $00 $00 $60 $00 $80 $00 $98 $80 $60 $00 $FC $7C $02 $00
	.db $38 $38 $44 $00 $00 $00 $38
	.dsb 21, $00
	.db $1C $0C $23 $00 $1B $18 $24 $00 $03 $03 $1C $00 $00 $00 $03
	.dsb 17, $00
	.db $E0 $00 $1F $00 $E0 $E0 $1F $00 $80 $80 $60 $00 $00 $00 $80
	.dsb 17, $00
	.db $1F $1F $E0 $00 $03 $03 $FC $00 $00 $00 $7F $00 $00 $00 $01
	.dsb 17, $00
	.db $E6 $E0 $18 $00 $F9 $F8 $06 $00 $3E $3E $C1 $00 $00 $00 $FF $00
	.db $00 $00 $03
	.dsb 17, $00
	.db $E0 $00 $00 $00 $98 $00 $60 $00 $08 $00 $F0 $00 $00 $00 $F8
	.dsb 12, $00
	
; 1st entry of Pointer Table from 103A0 (indexed by unknown)	
; Data from 125EA to 12DA9 (1984 bytes)	
_DATA_125EA_:	
	.incbin "data/File04_125EA_12DA9.dat"
	
; 1st entry of Pointer Table from 10472 (indexed by unknown)	
; Data from 12DAA to 12DC5 (28 bytes)	
_DATA_12DAA_:	
	.dsb 11, $00
	.db $20 $00 $00 $00 $20 $00 $50 $50 $20 $00 $50 $50 $20 $00 $50 $50
	.db $20
	
	; Pointer Table from 12DC6 to 12DC7 (1 entries, indexed by unknown)
	.dw _DATA_5000_
	
	; Data from 12DC8 to 12E15 (78 bytes)
	.db $50 $20
	.dsb 9, $00
	.db $10 $10 $20 $00 $18 $18 $20 $00 $0C $0C $10 $00 $0E $0E $10 $00
	.db $06 $06 $08 $00 $07 $07 $08
	.dsb 9, $00
	.db $01 $00 $00 $00 $03 $00 $02 $00 $04 $03 $04 $00 $03 $00 $04 $00
	.db $0F $0C $00 $00 $1F $14
	.dsb 10, $00
	.db $80 $00 $00
	
	; Pointer Table from 12E16 to 12E1F (5 entries, indexed by unknown)
	.dw _RAM_C000_ _RAM_C000_ _RAM_E000_ _DATA_10020_ _DATA_7000_
	
	; Pointer Table from 12E20 to 12E2B (6 entries, indexed by unknown)
	.dw _DATA_10070_ _RAM_F800_ _DATA_58_ _RAM_FB00_ _DATA_48_ _DATA_5000_
	
	; Data from 12E2C to 13449 (1566 bytes)
	.incbin "data/File05_12E2C_13449.dat"
	
; 1st entry of Pointer Table from 1054E (indexed by unknown)	
; Data from 1344A to 13805 (956 bytes)	
_DATA_1344A_:	
	.db $00 $00 $00 $00 $00 $00 $00 $10 $00 $28 $28 $10 $00 $28 $28 $10
	.db $00 $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10
	.dsb 9, $00
	.db $06 $06 $00 $00 $07 $07 $00 $00 $03 $03 $04 $00 $03 $03 $04 $00
	.db $01 $01 $02 $00 $01 $01 $02
	.dsb 21, $00
	.db $80 $80 $00 $00 $C0 $C0 $00 $00 $E0 $E0 $00 $00 $28 $28 $10 $00
	.db $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10 $00
	.db $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10
	.dsb 21, $00
	.db $03 $00 $00 $00 $0C $00 $03 $00 $F2 $00 $0D
	.dsb 17, $00
	.db $F0 $00 $00 $00 $08 $00 $F0 $00 $00 $00 $F0 $00 $00 $00 $E0 $00
	.db $00 $00 $01 $00 $00 $00 $01
	.dsb 22, $00
	.db $01 $00 $00 $E0 $E0 $00 $00 $F0 $F0 $00 $00 $78 $78 $80 $00 $7C
	.db $7C $80 $00 $3E $3E $40 $00 $3F $3F $40 $00 $0F $FE $00 $00 $72
	.db $FE $71
	.dsb 9, $00
	.db $03 $00 $00 $00 $1C $00 $03 $00 $23 $03 $1C $00 $CF $0F $30 $00
	.db $2F $2F $D0 $00 $F7 $F7 $08
	.dsb 9, $00
	.db $BC $00 $00 $01 $42 $01 $BC $01 $BC $BD $42 $01 $BC $BD $42 $01
	.db $FE $FF $00 $00 $3C $FE $01 $00 $00 $7C $00 $00 $B8 $FE $38 $00
	.db $7C $FE $7C $00 $EC $FF $7C $00 $44 $FF $7C $00 $C6 $FF $7C $00
	.db $00 $FF $38 $00 $44 $FE $01 $00 $0F $00 $00 $00 $30 $00 $0F $00
	.db $4F $0F $30 $00 $9F $1F $60 $00 $3F $3F $C0 $00 $FC $FC $03 $00
	.db $F8 $F8 $07 $00 $E0 $E0 $1F $00 $0E $0E $F1 $00 $F8 $F8 $07 $00
	.db $F0 $F0 $0E $00 $C0 $C0 $3C $00 $00 $00 $F0 $00 $00 $00 $E0 $00
	.db $00 $00 $80 $00 $00 $00 $00 $00 $00 $00 $80
	.dsb 57, $00
	.db $0F
	.dsb 19, $00
	.db $01 $00 $00 $00 $0E $00 $01 $00 $31 $01 $0E $00 $DF $9F $20 $00
	.db $00 $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $3C $01 $00 $00
	.db $C2 $01 $3C $00 $3C $3C $C3 $00 $FF $FF $00 $00 $FF $FF $00 $00
	.db $FC $FE $F9 $00 $EA $FF $F8 $00 $C4 $FF $F8 $00 $C2 $FF $F8 $00
	.db $54 $FF $70 $00 $02 $FF $00 $00 $00 $FE $01 $00 $81 $FF $00 $00
	.db $FC $FF $00 $00 $78 $7F $80 $00 $3B $BB $44 $00 $3D $BD $42 $00
	.db $1E $5E $A1 $00 $0F $2F $D0 $00 $07 $17 $E8 $00 $83 $8B $74 $00
	.db $1C $DE $21 $00 $5C $DE $21 $00 $DC $DE $21 $00 $DC $DE $21 $00
	.db $FC $FE $01 $00 $FC $FE $01 $00 $FC $FE $01 $00 $FC $FE $00 $00
	.db $00 $FE $01 $00 $06 $3C $C1 $00 $3E $3C $C1 $00 $36 $34 $C9 $00
	.db $2A $20 $D5 $00 $28 $20 $D6 $00 $28 $20 $D6 $00 $58 $50 $A4 $00
	.db $80 $80 $7C $00 $00 $00 $F8 $00 $00 $00 $E0 $00 $00 $00 $C0
	.dsb 17, $00
	.db $10 $00 $0F $00 $20 $00 $1F $00 $00 $00 $1F
	.dsb 21, $00
	.db $7F $7F $80 $00 $00 $00 $FF $00 $00 $00 $FF
	.dsb 21, $00
	.db $FF $FF $00 $00 $00 $00 $FF $00 $00 $00 $FF $00 $00 $00 $07
	.dsb 17, $00
	.db $C3 $FE $00 $00 $0D $0D $F2 $00 $02 $00 $FD $00 $03 $02 $FC $00
	.db $03 $03 $04 $00 $01 $01 $02 $00 $00 $00 $01 $00 $00 $00 $00 $00
	.db $C1 $C5 $3A $00 $E0 $60 $1D $00 $F0 $B0 $0C $00 $78 $58 $84 $00
	.db $B0 $20 $48 $00 $C0 $80 $30 $00 $00 $00 $E0 $00 $00 $00 $00 $00
	.db $FE $FC $00 $00 $FE $FC $00 $00 $7E $7C $80 $00 $3C $38 $40 $00
	.db $00 $00 $38
	.dsb 13, $00
	.db $18 $10 $64 $00 $10 $00 $28 $00 $00 $00 $18
	.dsb 35, $00
	.db $40 $00 $A0 $A0 $40 $00 $A0 $A0 $40 $00 $50 $50 $20
	
	; Pointer Table from 13806 to 13807 (1 entries, indexed by unknown)
	.dw _DATA_5000_
	
	; Data from 13808 to 13FFF (2040 bytes)
	.db $50 $20
	.dsb 21, $00
	.db $38 $00 $00 $00 $40 $00 $38 $00 $80 $00 $78 $00 $50 $50 $20 $00
	.db $28 $28 $10 $00 $28 $28 $10 $00 $28 $28 $10 $00 $34 $34 $08 $00
	.db $14 $14 $08 $00 $16 $16 $08 $00 $10 $1F
	.dsb 26, $00
	.db $01 $00 $00 $00 $02 $80 $01 $00 $01 $00 $00 $00 $02 $00 $01 $00
	.db $07 $00 $00 $00 $0C $00 $03 $00 $33 $03 $0C $00 $CE $0E $31 $00
	.db $3C $3C $C3 $00 $F8 $F8 $06 $00 $00 $00 $F0 $00 $00 $00 $E0 $00
	.db $00 $00 $E0 $00 $00 $00 $C0 $00 $00 $00 $80 $00 $00 $00 $80
	.dsb 23, $00
	.db $01 $00 $00 $00 $01
	.dsb 25, $00
	.db $C0 $C0 $00 $00 $E0 $E0 $00 $00 $70 $70 $80 $00 $3C $3C $40 $00
	.db $1E $1E $20
	.dsb 17, $00
	.db $01 $00 $00 $00 $1A $00 $01 $00 $61 $01 $1E $00 $9B $1B $64 $00
	.db $07 $1F $07 $00 $0F $1F $0F $00 $0C $1F $0F $00 $08 $1F $0F $00
	.db $C8 $1F $0F $00 $30 $1F $C7 $00 $E8 $FF $00 $00 $EA $FF $00 $00
	.db $05 $C1 $02 $00 $CB $E3 $84 $00 $8F $E7 $80 $00 $57 $E7 $88 $00
	.db $0F $EF $90 $00 $0E $EE $11 $00 $8C $EC $13 $00 $A8 $E8 $17 $00
	.db $F0 $F0 $0C $00 $E0 $E0 $18 $00 $C0 $C0 $38 $00 $80 $80 $70 $00
	.db $00 $00 $E0 $00 $00 $00 $C0 $00 $00 $00 $C0 $00 $00 $00 $80 $00
	.db $0F $0F $10 $00 $07 $07 $08 $00 $07 $07 $08 $00 $03 $03 $04 $00
	.db $00 $01 $02 $00 $00 $03 $00 $00 $01 $07 $01 $00 $03 $07 $03 $00
	.db $80 $80 $00 $00 $C3 $C0 $00 $00 $F4 $F0 $03 $00 $FB $FB $04 $00
	.db $1B $FB $04 $00 $01 $F9 $06 $00 $D0 $FC $C3 $00 $E8 $FF $E0 $00
	.db $7F $7F $80 $00 $7F $7F $80 $00 $BD $BF $40 $00 $F0 $FF $00 $00
	.db $C2 $FE $01 $00 $DF $DF $20 $00 $EF $EF $10 $00 $77 $77 $88 $00
	.db $F2 $FF $00 $00 $F0 $F7 $08 $00 $F7 $F7 $08 $00 $F7 $F7 $08 $00
	.db $FA $FA $05 $00 $7A $7A $85 $00 $7A $7A $85 $00 $FD $F9 $02 $00
	.db $20 $E0 $1F $00 $60 $A0 $1E $00 $F0 $B0 $0C $00 $70 $10 $88 $00
	.db $B0 $10 $48 $00 $B0 $10 $48 $00 $B0 $10 $48 $00 $50 $10 $A8
	.dsb 21, $00
	.db $01 $00 $00 $00 $06 $00 $01 $00 $19 $01 $06 $00 $03 $07 $03 $00
	.db $03 $07 $03 $00 $03 $03 $03 $00 $39 $03 $01 $00 $C4 $01 $3A $00
	.db $1F $1F $E0 $00 $7F $7F $80 $00 $FF $FF $00 $00 $80 $FC $E3 $00
	.db $08 $FE $E1 $00 $04 $FE $E1 $00 $10 $FC $C3 $00 $0B $FC $00 $00
	.db $03 $FC $00 $00 $87 $FF $00 $00 $88 $88 $77 $00 $3F $BF $40 $00
	.db $1F $5F $A0 $00 $0F $2F $D0 $00 $07 $17 $E8 $00 $03 $0B $F4 $00
	.db $C1 $05 $3A $00 $F0 $02 $0D $00 $F8 $C1 $06 $00 $FD $F9 $02 $00
	.db $FD $F9 $02 $00 $FE $FC $01 $00 $FE $FC $00 $00 $FE $FC $00 $00
	.db $FF $FE $00 $00 $FF $FE $00 $00 $7F $7E $80 $00 $50 $10 $A8 $00
	.db $40 $00 $B0 $00 $A0 $A0 $50 $00 $00 $00 $E0
	.dsb 21, $00
	.db $07 $00 $00 $00 $19 $00 $06 $00 $10 $00 $0F $00 $00 $00 $1F
	.dsb 13, $00
	.db $67 $07 $18 $00 $9F $1F $60 $00 $7C $7C $83 $00 $00 $00 $FF $00
	.db $00 $00 $C0
	.dsb 13, $00
	.db $F8 $F8 $07 $00 $C0 $C0 $3F $00 $00 $00 $FE $00 $00 $00 $80
	.dsb 17, $00
	.db $07 $00 $F8 $00 $07 $07 $F8 $00 $01 $01 $06 $00 $00 $00 $01
	.dsb 17, $00
	.db $38 $30 $C4 $00 $D8 $18 $24 $00 $C0 $C0 $38 $00 $00 $00 $C0
	.dsb 17, $00
	.db $3F $3E $40 $00 $1C $1C $22 $00 $00 $00 $1C
	.dsb 20, $00
	.dsb 1142, $FF
	
.BANK 5	
.ORG $0000	
	
	; Data from 14000 to 17FFF (16384 bytes)
	.incbin "data/File06_14000_17FFF.dat"
	
.BANK 6	
.ORG $0000	
	
	; Data from 18000 to 19FD4 (8149 bytes)
	.incbin "data/File07_18000_19FD4.dat"
	
; Data from 19FD5 to 1A13E (362 bytes)	
_DATA_19FD5_:	
	.db $4D $A1 $D0 $A0 $07 $18
	.dsb 22, $00
	.db $01 $00 $01 $01
	.dsb 44, $00
	.db $01 $02 $01 $03
	.dsb 44, $00
	.db $01 $04 $01 $05
	.dsb 36, $00
	.db $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $0C $01 $0D
	.db $01 $0E $01 $0F
	.dsb 14, $00
	.db $01 $10 $01 $11 $01 $12 $01 $13 $01 $14 $01 $15 $02 $16 $02 $17
	.db $02 $18 $02 $19 $02 $1A $02 $1B $02 $1C $02 $1D $02 $1E $02 $1F
	.db $02 $20 $02 $21 $01 $22 $01 $23 $01 $24 $01 $25 $01 $26 $01 $27
	.db $01 $28 $01 $29 $01 $2A $01 $2B $01 $2B $01 $2C $01 $2D $02 $2E
	.db $02 $2F $02 $30 $02 $31 $02 $32 $02 $33 $02 $34 $02 $35 $02 $36
	.db $02 $37 $01 $38 $01 $39 $01 $2B $01 $2B $01 $2A $01 $3A $01 $3B
	.dsb 20, $00
	.db $01 $3C $01 $3D $01 $3E $01 $3F
	.dsb 20, $00
	.db $4D $A1 $F8 $F8 $01 $02 $01 $40 $02 $41 $4D $A1 $F8 $F8 $01 $02
	.db $02 $42 $01 $43
	
; Data from 1A13F to 1BFFF (7873 bytes)	
_DATA_1A13F_:	
	.incbin "data/File08_1A13F_1BFFF.dat"
	
.BANK 7	
.ORG $0000	
	
	; Data from 1C000 to 1FFFF (16384 bytes)
	.incbin "data/File09_1C000_1FFFF.dat"
	
.BANK 8	
.ORG $0000	
	
	; Data from 20000 to 23FFF (16384 bytes)
	.incbin "data/File10_20000_23FFF.dat"
	
.BANK 9	
.ORG $0000	
	
	; Data from 24000 to 27FFF (16384 bytes)
	.incbin "data/File11_24000_27FFF.dat"
	
.BANK 10	
.ORG $0000	
	
	; Data from 28000 to 2BFFF (16384 bytes)
	.incbin "data/File12_28000_2BFFF.dat"
	
.BANK 11	
.ORG $0000	
	
	; Data from 2C000 to 2FFFF (16384 bytes)
	.incbin "data/File13_2C000_2FFFF.dat"
	
.BANK 12	
.ORG $0000	
	
	; Data from 30000 to 33FFF (16384 bytes)
	.incbin "data/File14_30000_33FFF.dat"
	
.BANK 13	
.ORG $0000	
	
	; Data from 34000 to 37FFF (16384 bytes)
	.incbin "data/File15_34000_37FFF.dat"
	
.BANK 14	
.ORG $0000	
	
	; Data from 38000 to 3BFFF (16384 bytes)
	.incbin "data/File16_38000_3BFFF.dat"
	
.BANK 15	
.ORG $0000	
	
	; Data from 3C000 to 3FFFF (16384 bytes)
	.incbin "data/File17_3C000_3FFFF.dat"
	
.BANK 16	
.ORG $0000	
	
	; Data from 40000 to 43FFF (16384 bytes)
	.incbin "data/File18_40000_43FFF.dat"
	
.BANK 17	
.ORG $0000	
	
	; Data from 44000 to 452B4 (4789 bytes)
	.incbin "data/File19_44000_452B4.dat"
	
; Data from 452B5 to 45422 (366 bytes)	
_DATA_452B5_:	
	.db $55 $94 $C8 $88 $06 $1E
	.dsb 28, $00
	.db $01 $00 $01 $01
	.dsb 52, $00
	.db $01 $02 $01 $03 $01 $04 $01 $05 $01 $06 $01 $07
	.dsb 24, $00
	.db $01 $08
	.dsb 26, $00
	.db $01 $09 $01 $0A
	.dsb 26, $00
	.db $01 $0B $01 $0C $01 $0D $01 $0E $01 $0F $01 $10 $01 $11 $01 $12
	.db $01 $13 $01 $14 $01 $15 $01 $16 $01 $17 $01 $18 $01 $19 $01 $1A
	.db $01 $1B $01 $1C $01 $1D $01 $1E $01 $1F $01 $20 $01 $21 $01 $22
	.db $01 $23 $01 $24 $01 $25 $01 $26 $01 $27 $01 $28 $01 $29 $00 $00
	.db $00 $00 $00 $00 $00 $00 $01 $2A $01 $2B $01 $2C $01 $2D $01 $2E
	.db $02 $2F $01 $30 $02 $31 $02 $32 $01 $33 $02 $34 $02 $35 $01 $36
	.db $02 $37 $02 $38 $01 $39 $02 $3A $01 $3B $01 $3C $01 $3D $01 $3E
	.db $01 $3F
	.dsb 26, $00
	.db $01 $40 $01 $41 $01 $42 $01 $43 $01 $44 $01 $45 $01 $46 $01 $47
	.db $01 $48 $01 $49 $01 $4A $01 $4B
	.dsb 18, $00
	
; Data from 45423 to 45430 (14 bytes)	
_DATA_45423_:	
	.db $55 $94 $F8 $F8 $02 $02 $01 $4C $01 $4D $01 $4E $01 $4F
	
; Data from 45431 to 45442 (18 bytes)	
_DATA_45431_:	
	.db $55 $94 $F8 $F0 $02 $03 $00 $00 $01 $50 $01 $51 $01 $52 $01 $53
	.db $00 $00
	
; Data from 45443 to 45F54 (2834 bytes)	
_DATA_45443_:	
	.incbin "data/File20_45443_45F54.dat"
	
; 1st entry of Pointer Table from 323F (indexed by _RAM_C11B_)	
; Data from 45F55 to 45FA2 (78 bytes)	
_DATA_45F55_:	
	.db $09 $A1 $E8 $E8 $06 $06 $00 $00 $01 $00 $01 $01 $01 $02 $01 $03
	.db $00 $00 $01 $04 $02 $05 $02 $06 $02 $07 $02 $08 $01 $09 $01 $0A
	.db $02 $0B $02 $0C $02 $0D $02 $0E $01 $0F $01 $10 $02 $11 $02 $12
	.db $02 $13 $02 $14 $01 $15 $01 $16 $02 $17 $02 $18 $02 $19 $02 $1A
	.db $01 $1B $00 $00 $01 $1C $01 $1D $01 $1E $01 $1F $00 $00
	
; 1st entry of Pointer Table from 3241 (indexed by _RAM_C11B_)	
; Data from 45FA3 to 45FF0 (78 bytes)	
_DATA_45FA3_:	
	.db $09 $A1 $E8 $E8 $06 $06 $00 $00 $01 $20 $01 $21 $01 $22 $01 $23
	.db $00 $00 $01 $24 $01 $25 $02 $26 $02 $27 $01 $28 $01 $29 $01 $2A
	.db $02 $2B $02 $2C $02 $2D $02 $2E $01 $2F $01 $30 $02 $31 $02 $32
	.db $02 $33 $02 $34 $01 $35 $01 $36 $01 $37 $02 $38 $02 $39 $01 $3A
	.db $01 $3B $00 $00 $01 $3C $01 $3D $01 $3E $01 $3F $00 $00
	
; 3rd entry of Pointer Table from 2D1E (indexed by _RAM_C0FB_)	
; Data from 45FF1 to 46016 (38 bytes)	
_DATA_45FF1_:	
	.db $09 $A1 $F0 $F0 $04 $04 $01 $40 $02 $41 $01 $42 $01 $43 $01 $44
	.db $02 $45 $02 $46 $01 $47 $01 $48 $02 $49 $02 $4A $01 $4B $01 $4C
	.db $01 $4D $01 $4E $01 $4F
	
; 4th entry of Pointer Table from 4748 (indexed by _RAM_C128_)	
; Data from 46017 to 4603C (38 bytes)	
_DATA_46017_:	
	.db $09 $A1 $F0 $F0 $04 $04 $01 $50 $01 $51 $01 $52 $01 $53 $01 $54
	.db $02 $55 $02 $56 $01 $57 $01 $58 $02 $59 $02 $5A $01 $5B $01 $5C
	.db $01 $5D $01 $5E $01 $5F
	
; 1st entry of Pointer Table from 4748 (indexed by _RAM_C128_)	
; Data from 4603D to 4604A (14 bytes)	
_DATA_4603D_:	
	.db $09 $A1 $F8 $F8 $02 $02 $01 $60 $01 $61 $01 $62 $01 $63
	
; 2nd entry of Pointer Table from 4748 (indexed by _RAM_C128_)	
; Data from 4604B to 46058 (14 bytes)	
_DATA_4604B_:	
	.db $09 $A1 $F8 $F8 $02 $02 $01 $64 $01 $65 $01 $66 $01 $67
	
; 6th entry of Pointer Table from 3241 (indexed by _RAM_C11B_)	
; Data from 46059 to 46060 (8 bytes)	
_DATA_46059_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $68
	
; 7th entry of Pointer Table from 3241 (indexed by _RAM_C11B_)	
; Data from 46061 to 46068 (8 bytes)	
_DATA_46061_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $69
	
; Data from 46069 to 46098 (48 bytes)	
_DATA_46069_:	
	.db $09 $A1 $F4 $F4 $03 $03 $01 $6A $01 $6B $01 $6C $01 $6D $02 $6E
	.db $01 $6F $01 $70 $01 $71 $01 $72 $09 $A1 $F4 $F4 $03 $03 $01 $73
	.db $01 $74 $01 $75 $01 $76 $02 $6E $01 $77 $01 $78 $01 $79 $01 $7A
	
; 1st entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 46099 to 460B0 (24 bytes)	
_DATA_46099_:	
	.db $09 $A1 $F4 $F4 $03 $03 $01 $7B $01 $7C $01 $7D $01 $7E $02 $7F
	.db $01 $80 $01 $81 $01 $82 $01 $83
	
; 2nd entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460B1 to 460C8 (24 bytes)	
_DATA_460B1_:	
	.db $09 $A1 $F4 $F4 $03 $03 $01 $84 $01 $85 $01 $86 $01 $87 $01 $88
	.db $01 $89 $01 $8A $01 $8B $00 $00
	
; 5th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460C9 to 460E0 (24 bytes)	
_DATA_460C9_:	
	.db $09 $A1 $F4 $F4 $03 $03 $01 $84 $01 $8C $01 $86 $01 $8D $02 $8E
	.db $01 $8F $01 $8A $01 $90 $00 $00
	
; 6th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460E1 to 460E8 (8 bytes)	
_DATA_460E1_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $91
	
; 9th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460E9 to 460F0 (8 bytes)	
_DATA_460E9_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $92
	
; 10th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460F1 to 460F8 (8 bytes)	
_DATA_460F1_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $93
	
; 13th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 460F9 to 46100 (8 bytes)	
_DATA_460F9_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $94
	
; 14th entry of Pointer Table from 3253 (indexed by _RAM_C154_)	
; Data from 46101 to 463E7 (743 bytes)	
_DATA_46101_:	
	.db $09 $A1 $FC $FC $01 $01 $01 $95 $00 $00 $00 $00 $00 $0D $0D $0D
	.db $00 $3F $3F $3F $08 $37 $37 $3F $00 $7F $7F $7F $01 $66 $7E $7F
	.db $0A $61 $75 $7F $1C $C3 $E3 $FF $00 $E9 $F9 $F9 $20 $DA $DF $FF
	.db $04 $FB $FB $FF $40 $93 $BF $FF $05 $E2 $FA $FF $00 $CF $FF $FF
	.db $70 $86 $8F $FF $F8 $36 $07 $FF $00 $EC $EC $EC $A0 $5F $5F $FF
	.db $FE $00 $01 $FF $3E $8E $C1 $FF $3F $C7 $C0 $FF $07 $F0 $F8 $FF
	.db $40 $3F $BF $FF $40 $1F $BF $FF $00 $00 $00 $00 $00 $C0 $C0 $C0
	.db $00 $F8 $F8 $F8 $80 $0C $7C $FC $C0 $06 $3E $FE $E0 $06 $1E $FE
	.db $00 $82 $FE $FE $00 $C7 $FF $FF $00 $01 $01 $01 $00 $03 $03 $03
	.db $00 $0F $0F $0F $00 $0F $0F $0F $00 $1F $1F $1F $00 $1E $1F $1F
	.db $04 $1A $1B $1F $02 $1D $1D $1F $1C $C3 $E3 $FF $BC $43 $43 $FF
	.db $68 $93 $97 $FF $C0 $3E $3F $FF $D1 $2C $2E $FF $C3 $38 $3C $FF
	.db $D3 $24 $2C $FF $83 $38 $7C $FF $F0 $E6 $0F $FF $00 $7F $FF $FF
	.db $0F $F0 $F0 $FF $FF $0F $00 $FF $FF $7F $00 $FF $FF $C1 $00 $FF
	.db $E7 $80 $18 $FF $80 $00 $7F $FF $00 $38 $FF $FF $06 $F8 $F9 $FF
	.db $00 $9C $FF $FF $E0 $1E $1F $FF $E0 $8F $1F $FF $F0 $CD $0F $FF
	.db $F8 $04 $07 $FF $73 $04 $8C $FF $02 $FD $FD $FF $00 $3F $FF $FF
	.db $80 $27 $7F $FF $D0 $A1 $2F $FF $44 $30 $BB $FF $05 $B8 $FA $FF
	.db $0C $F2 $F3 $FF $A8 $57 $57 $FF $00 $40 $C0 $C0 $00 $E0 $E0 $E0
	.db $00 $E0 $E0 $E0 $00 $F0 $F0 $F0 $40 $B0 $B0 $F0 $00 $78 $F8 $F8
	.db $00 $28 $F8 $F8 $00 $FC $FC $FC $00 $1F $1F $1F $00 $3F $3F $3F
	.db $08 $31 $37 $3F $00 $78 $7F $7F $27 $50 $58 $7F $37 $C8 $C8 $FF
	.db $3F $C0 $C0 $FF $3E $C0 $C1 $FF $83 $38 $7C $FF $03 $98 $FC $FF
	.db $00 $DC $FF $FF $80 $67 $7F $FF $00 $E3 $FF $FF $0E $41 $F1 $FF
	.db $1E $C8 $E1 $FF $1F $6C $E0 $FF $BF $00 $40 $FF $7F $38 $80 $FF
	.db $7E $30 $81 $FF $FF $04 $00 $FF $FF $2C $00 $FF $7F $CF $80 $FF
	.db $7F $0F $80 $FF $7F $0F $80 $FF $03 $0D $FC $FF $C3 $01 $3C $FF
	.db $E3 $00 $1C $FF $F9 $00 $06 $FF $FC $C0 $03 $FF $FE $C0 $01 $FF
	.db $F6 $C0 $09 $FF $F6 $C0 $09 $FF $C0 $36 $3F $FF $C0 $BA $3F $FF
	.db $C0 $E9 $3F $FF $C2 $69 $3D $FF $C2 $28 $3D $FF $13 $6C $EC $FF
	.db $1B $C4 $E4 $FF $33 $DE $CC $FF $00 $1C $FC $FC $C0 $0C $3C $FC
	.db $60 $1C $9C $FC $E0 $2E $1E $FE $60 $AE $9E $FE $30 $8E $CE $FE
	.db $60 $8E $9E $FE $00 $FE $FE $FE $16 $E0 $E9 $FF $12 $E0 $ED $FF
	.db $00 $FF $FF $FF $01 $7E $7E $7F $00 $7B $7F $7F $12 $68 $6D $7F
	.db $07 $38 $38 $3F $03 $3C $3C $3F $1F $EE $E0 $FF $1F $EC $E0 $FF
	.db $1F $AE $E0 $FF $1F $E6 $E0 $FF $1F $E6 $E0 $FF $0E $30 $F1 $FF
	.db $8E $10 $71 $FF $8D $00 $72 $FF $3F $0F $C0 $FF $9F $07 $60 $FF
	.db $9F $03 $60 $FF $BF $02 $40 $FF $BF $40 $40 $FF $1B $40 $E4 $FF
	.db $9F $60 $60 $FF $C6 $38 $39 $FF $F0 $C3 $0F $FF $F8 $B3 $07 $FF
	.db $F8 $33 $07 $FF $F8 $47 $07 $FF $E8 $46 $17 $FF $E0 $06 $1F $FF
	.db $01 $00 $FE $FF $1F $00 $E0 $FF $33 $9E $CC $FF $7B $B4 $84 $FF
	.db $73 $2E $8C $FF $73 $0C $8C $FF $23 $0C $DC $FF $62 $18 $9D $FF
	.db $E6 $18 $19 $FF $64 $10 $9B $FF $00 $AE $FE $FE $00 $EE $FE $FE
	.db $00 $AC $FC $FC $20 $9C $DC $FC $20 $9C $DC $FC $60 $18 $98 $F8
	.db $20 $38 $D8 $F8 $00 $70 $F0 $F0 $08 $14 $17 $1F $00 $1C $1F $1F
	.db $01 $10 $1E $1F $01 $18 $1E $1F $00 $0C $0F $0F $00 $0F $0F $0F
	.db $00 $07 $07 $07 $00 $01 $01
	
; Data from 463E8 to 47FFF (7192 bytes)	
_DATA_463E8_:	
	.incbin "data/File21_463E8_47FFF.dat"
	
.BANK 18	
.ORG $0000	
	
	; Data from 48000 to 4ACA1 (11426 bytes)
	.incbin "data/File22_48000_4ACA1.dat"
	
; Data from 4ACA2 to 4ACBF (30 bytes)	
_DATA_4ACA2_:	
	.db $2A $AE $F8 $F8 $02 $06 $01 $00 $01 $01 $01 $02 $01 $03 $01 $04
	.db $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B
	
; Data from 4ACC0 to 4ACDD (30 bytes)	
_DATA_4ACC0_:	
	.db $2A $AE $F8 $F8 $02 $06 $01 $0C $01 $0D $01 $0E $01 $0F $01 $10
	.db $01 $11 $01 $12 $01 $13 $01 $14 $01 $15 $01 $16 $01 $17
	
; Data from 4ACDE to 4ACEF (18 bytes)	
_DATA_4ACDE_:	
	.db $2A $AE $F8 $F8 $02 $03 $01 $18 $01 $19 $00 $00 $01 $1A $01 $1B
	.db $01 $1C
	
; Data from 4ACF0 to 4ACFF (16 bytes)	
_DATA_4ACF0_:	
	.db $2A $AE $F8 $F8 $01 $05 $01 $1D $01 $1E $01 $1F $01 $20 $01 $21
	
; Data from 4AD00 to 4AD15 (22 bytes)	
_DATA_4AD00_:	
	.db $2A $AE $F8 $F8 $01 $08 $01 $5D $01 $5E $00 $00 $01 $1D $01 $1E
	.db $01 $1F $01 $20 $01 $21
	
; 1st entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD16 to 4AD1D (8 bytes)	
_DATA_4AD16_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $22
	
; 2nd entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD1E to 4AD25 (8 bytes)	
_DATA_4AD1E_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $23
	
; 3rd entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD26 to 4AD2D (8 bytes)	
_DATA_4AD26_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $24
	
; 4th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD2E to 4AD35 (8 bytes)	
_DATA_4AD2E_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $25
	
; 5th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD36 to 4AD3D (8 bytes)	
_DATA_4AD36_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $26
	
; 6th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD3E to 4AD45 (8 bytes)	
_DATA_4AD3E_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $27
	
; 7th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD46 to 4AD4D (8 bytes)	
_DATA_4AD46_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $28
	
; 8th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD4E to 4AD55 (8 bytes)	
_DATA_4AD4E_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $29
	
; 9th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD56 to 4AD5D (8 bytes)	
_DATA_4AD56_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $2A
	
; 10th entry of Pointer Table from 4355 (indexed by _RAM_C00C_)	
; Data from 4AD5E to 4AD65 (8 bytes)	
_DATA_4AD5E_:	
	.db $2A $AE $F8 $F8 $01 $01 $01 $2B
	
; Data from 4AD66 to 4ADC5 (96 bytes)	
_DATA_4AD66_:	
	.db $2A $AE $F8 $F8 $03 $0F $01 $2C $01 $2D $01 $2E $01 $2F $01 $30
	.db $01 $31 $01 $32 $00 $00 $01 $33 $01 $34 $01 $35 $01 $36 $01 $37
	.db $01 $38 $01 $39 $01 $3A $01 $3B $01 $3C $01 $3D $01 $3E $01 $3F
	.db $01 $40 $00 $00 $01 $41 $01 $42 $01 $43 $01 $44 $01 $45 $01 $46
	.db $01 $47 $00 $00 $01 $48 $01 $49
	.dsb 22, $00
	.db $01 $4A
	
; 1st entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADC6 to 4ADCF (10 bytes)	
_DATA_4ADC6_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $4B $01 $54
	
; 2nd entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADD0 to 4ADD9 (10 bytes)	
_DATA_4ADD0_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $4C $01 $55
	
; 3rd entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADDA to 4ADE3 (10 bytes)	
_DATA_4ADDA_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $4D $01 $56
	
; 4th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADE4 to 4ADED (10 bytes)	
_DATA_4ADE4_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $4E $01 $57
	
; 5th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADEE to 4ADF7 (10 bytes)	
_DATA_4ADEE_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $4F $01 $58
	
; 6th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4ADF8 to 4AE01 (10 bytes)	
_DATA_4ADF8_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $50 $01 $59
	
; 7th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4AE02 to 4AE0B (10 bytes)	
_DATA_4AE02_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $51 $01 $54
	
; 8th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4AE0C to 4AE15 (10 bytes)	
_DATA_4AE0C_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $52 $01 $5A
	
; 9th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4AE16 to 4AE1F (10 bytes)	
_DATA_4AE16_:	
	.db $2A $AE $F8 $F8 $02 $01 $01 $53 $01 $5B
	
; 10th entry of Pointer Table from 4369 (indexed by _RAM_C017_)	
; Data from 4AE20 to 4BFFF (4576 bytes)	
_DATA_4AE20_:	
	.incbin "data/File23_4AE20_4BFFF.dat"
	
.BANK 19	
.ORG $0000	
	
	; Data from 4C000 to 4FFFF (16384 bytes)
	.incbin "data/File24_4C000_4FFFF.dat"
	
.BANK 20	
.ORG $0000	
	
	; Data from 50000 to 53FFF (16384 bytes)
	.incbin "data/File25_50000_53FFF.dat"
	
.BANK 21	
.ORG $0000	
	
	; Data from 54000 to 57773 (14196 bytes)
	.incbin "data/File26_54000_57773.dat"
	
; Data from 57774 to 577AD (58 bytes)	
_DATA_57774_:	
	.db $38 $B8 $F8 $F8 $02 $0D $01 $00 $01 $01 $01 $02 $01 $03 $00 $00
	.db $01 $04 $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B
	.db $01 $0C $01 $0D $01 $0E $01 $0F $00 $00 $01 $10 $01 $11 $01 $12
	.db $01 $13 $01 $14 $01 $15 $01 $16 $01 $17
	
; Data from 577AE to 577D3 (38 bytes)	
_DATA_577AE_:	
	.db $38 $B8 $F8 $F8 $02 $08 $01 $18 $01 $19 $01 $1A $01 $1B $01 $1C
	.db $01 $1D $01 $1E $01 $1F $01 $20 $01 $21 $01 $22 $01 $23 $01 $24
	.db $01 $25 $01 $26 $01 $27
	
; 1st entry of Pointer Table from 437D (indexed by _RAM_C117_)	
; Data from 577D4 to 577DD (10 bytes)	
_DATA_577D4_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $28 $01 $31
	
; 1st entry of Pointer Table from 437F (indexed by unknown)	
; Data from 577DE to 577E7 (10 bytes)	
_DATA_577DE_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $29 $01 $32
	
; 2nd entry of Pointer Table from 437F (indexed by unknown)	
; Data from 577E8 to 577F1 (10 bytes)	
_DATA_577E8_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2A $01 $33
	
; 3rd entry of Pointer Table from 437F (indexed by unknown)	
; Data from 577F2 to 577FB (10 bytes)	
_DATA_577F2_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2B $01 $34
	
; 4th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 577FC to 57805 (10 bytes)	
_DATA_577FC_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2C $01 $35
	
; 5th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 57806 to 5780F (10 bytes)	
_DATA_57806_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2D $01 $36
	
; 6th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 57810 to 57819 (10 bytes)	
_DATA_57810_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2E $01 $31
	
; 7th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 5781A to 57823 (10 bytes)	
_DATA_5781A_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $2F $01 $37
	
; 8th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 57824 to 5782D (10 bytes)	
_DATA_57824_:	
	.db $38 $B8 $F8 $F8 $02 $01 $01 $30 $01 $38
	
; 9th entry of Pointer Table from 437F (indexed by unknown)	
; Data from 5782E to 57FFF (2002 bytes)	
_DATA_5782E_:	
	.incbin "data/File27_5782E_57FFF.dat"
	
.BANK 22	
.ORG $0000	
	
	; Data from 58000 to 5BFFF (16384 bytes)
	.incbin "data/File28_58000_5BFFF.dat"
	
.BANK 23	
.ORG $0000	
	
	; Data from 5C000 to 5FFFF (16384 bytes)
	.incbin "data/File29_5C000_5FFFF.dat"
	
.BANK 24	
.ORG $0000	
	
	; Data from 60000 to 63FFF (16384 bytes)
	.incbin "data/File30_60000_63FFF.dat"
	
.BANK 25	
.ORG $0000	
	
; Data from 64000 to 64998 (2457 bytes)	
_DATA_64000_:	
	.incbin "data/File31_64000_64998.dat"
	
; Data from 64999 to 66011 (5753 bytes)	
_DATA_64999_:	
	.incbin "data/File32_64999_66011.dat"
	
; Data from 66012 to 66194 (387 bytes)	
_DATA_66012_:	
	.db $7F $00 $77 $00 $81 $04 $1D $00 $85 $05 $06 $07 $08 $09 $1B $00
	.db $85 $0A $0B $0C $0D $0E $07 $00 $13 $01 $87 $0F $10 $11 $12 $13
	.db $14 $15 $06 $01 $13 $03 $87 $16 $17 $18 $19 $1A $1B $1C $06 $03
	.db $0C $1D $8E $1E $1F $20 $21 $51 $96 $97 $98 $99 $9A $9B $9C $9D
	.db $9E $06 $1D $BE $22 $23 $22 $23 $22 $23 $24 $25 $26 $27 $28 $29
	.db $2A $2B $2C $2D $51 $2D $9F $A0 $A1 $A2 $A3 $A4 $A5 $A6 $22 $23
	.db $22 $23 $22 $23 $2E $2F $2E $2F $30 $31 $32 $33 $34 $35 $36 $37
	.db $38 $39 $3A $3B $A7 $A8 $A9 $AA $AB $AC $AD $AE $AF $B0 $B1 $B2
	.db $2E $2F $02 $30 $04 $00 $98 $3C $3D $3E $3F $40 $40 $41 $42 $43
	.db $44 $45 $46 $B3 $B4 $B5 $B6 $B7 $B8 $B9 $BA $BB $BC $BD $BE $04
	.db $00 $A0 $47 $48 $49 $4A $4B $4C $4D $4E $4F $50 $51 $51 $52 $53
	.db $54 $55 $BF $C0 $C1 $C2 $C3 $C4 $C5 $C6 $C7 $C8 $C9 $CA $47 $48
	.db $49 $4A $04 $00 $8A $56 $57 $58 $59 $5A $5B $5C $5D $5E $5F $08
	.db $60 $86 $CB $CC $CD $CE $CF $D0 $04 $00 $8D $61 $62 $63 $64 $65
	.db $66 $67 $68 $69 $6A $6B $6C $6D $05 $6E $AE $D1 $D2 $D3 $D4 $D5
	.db $D6 $D7 $D8 $D9 $DA $DB $DC $DD $DE $6F $70 $71 $72 $73 $74 $75
	.db $76 $77 $78 $79 $7A $7B $7C $7D $7E $DF $E0 $E1 $E2 $E3 $E4 $E5
	.db $E6 $E7 $E8 $E9 $EA $EB $EC $ED $EE $09 $00 $90 $7F $80 $81 $82
	.db $83 $84 $85 $EF $F0 $F1 $F2 $F3 $F4 $F5 $F6 $F7 $07 $00 $C0 $86
	.db $87 $88 $89 $8A $8B $8C $8D $86 $87 $88 $89 $8A $8B $8C $8D $86
	.db $87 $88 $89 $8A $8B $8C $8D $86 $87 $88 $89 $8A $8B $8C $8D $8E
	.db $8F $90 $91 $92 $93 $94 $95 $8E $8F $90 $91 $92 $93 $94 $95 $8E
	.db $8F $90 $91 $92 $93 $94 $95 $8E $8F $90 $91 $92 $93 $94 $95 $20
	.db $00 $00 $7F $00 $7F $00 $7F $00 $34 $00 $81 $02 $7F $00 $7F $00
	.db $50 $00 $00
	
; Data from 66195 to 66518 (900 bytes)	
_DATA_66195_:	
	.db $09 $00 $81 $C0 $7F $00 $7F $00 $82 $00 $C0 $7F $00 $77 $00 $00
	.db $03 $00 $F3 $01 $03 $07 $07 $03 $02 $C0 $11 $F3 $F6 $FF $7F $FF
	.db $BE $5F $2A $0F $7F $FF $FB $FF $60 $81 $88 $FF $07 $3F $FF $FB
	.db $01 $10 $00 $FF $07 $27 $FC $FF $01 $00 $00 $FF $87 $43 $FD $FF
	.db $00 $00 $22 $FF $03 $99 $FC $FF $04 $08 $18 $FF $05 $E1 $F3 $FF
	.db $00 $00 $24 $FF $13 $E7 $F1 $F5 $00 $02 $00 $FF $0C $E0 $F7 $FF
	.db $00 $00 $08 $FF $C2 $D0 $FF $7F $00 $00 $40 $FF $23 $FF $BF $FF
	.db $04 $28 $08 $FF $0C $EE $FF $FF $7A $75 $6A $56 $20 $61 $7B $FF
	.db $00 $90 $20 $3F $3F $7F $02 $FF $05 $00 $03 $C0 $08 $00 $81 $7F
	.db $02 $07 $05 $00 $85 $8F $9F $18 $00 $20 $03 $00 $83 $FF $7F $3F
	.db $05 $00 $8D $BF $FD $BC $24 $00 $04 $00 $00 $FF $B2 $07 $00 $80
	.db $03 $00 $02 $FF $82 $0F $23 $04 $00 $03 $FF $81 $F0 $04 $00 $84
	.db $FF $5F $DF $02 $04 $00 $02 $FF $83 $37 $0F $0B $03 $00 $85 $FD
	.db $E3 $FF $FF $6F $03 $00 $02 $FF $82 $FE $F8 $04 $00 $84 $FF $7F
	.db $9F $BF $04 $00 $83 $FF $FE $FF $05 $00 $83 $7F $7C $88 $05 $00
	.db $81 $80 $0A $00 $8A $01 $07 $0F $0F $1F $00 $C0 $D1 $F3 $F6 $03
	.db $FF $90 $BE $5E $2A $05 $70 $FF $FB $FF $60 $80 $80 $FF $02 $3F
	.db $FF $FB $03 $00 $85 $FF $02 $27 $FC $FF $03 $00 $85 $FF $00 $42
	.db $FD $FF $03 $00 $8D $FF $02 $88 $FC $FF $04 $08 $08 $FF $00 $A0
	.db $F3 $FF $03 $00 $85 $FF $00 $00 $50 $F5 $03 $00 $85 $FF $00 $00
	.db $77 $FF $03 $00 $85 $FF $00 $10 $FF $7F $03 $00 $95 $FF $00 $E2
	.db $BE $FF $04 $08 $08 $FF $00 $02 $BF $FF $7A $75 $6A $50 $00 $01
	.db $7B $FF $03 $00 $83 $02 $0F $3F $02 $FF $04 $00 $85 $C0 $F0 $E8
	.db $F8 $07 $07 $00 $02 $FF $81 $5F $05 $00 $85 $8F $FF $7B $0F $24
	.db $03 $00 $85 $FF $7F $3F $FC $6C $03 $00 $03 $FF $83 $25 $00 $04
	.db $02 $00 $03 $FF $82 $FC $BA $03 $00 $02 $FF $82 $0F $20 $04 $00
	.db $04 $FF $81 $07 $03 $00 $03 $FF $83 $E3 $BF $01 $02 $00 $02 $FF
	.db $8C $7F $FF $0F $FF $80 $00 $FD $E3 $FF $FF $6F $D3 $02 $00 $02
	.db $FF $9B $FE $FF $FF $FC $00 $00 $FF $7F $9F $BF $F1 $3F $00 $00
	.db $FF $FE $FF $FE $BF $FF $00 $00 $7F $7D $FF $FF $FC $03 $00 $02
	.db $F0 $82 $A0 $C0 $04 $00 $00 $08 $00 $02 $F8 $83 $2C $0C $08 $03
	.db $00 $83 $BF $5E $0B $05 $00 $84 $FF $EE $E7 $F9 $04 $00 $84 $FE
	.db $EF $FF $FC $04 $00 $84 $FE $FF $FF $7D $04 $00 $02 $FF $82 $DD
	.db $FF $04 $00 $84 $FD $FE $EE $FF $04 $00 $02 $FF $82 $DB $FF $04
	.db $00 $84 $FF $FD $FF $FE $04 $00 $02 $FF $82 $F7 $7F $04 $00 $02
	.db $FF $82 $BF $FD $04 $00 $84 $FD $DE $FE $EF $04 $00 $91 $FA $F5
	.db $CA $50 $03 $02 $00 $00 $34 $2C $54 $80 $C0 $80 $00 $00 $70 $7F
	.db $00 $10 $00 $02 $F8 $83 $2C $0C $08 $03 $00 $84 $BF $5F $2B $05
	.db $04 $00 $84 $FF $EF $EF $FF $04 $00 $04 $FF $04 $00 $04 $FF $04
	.db $00 $04 $FF $04 $00 $84 $FD $FE $FE $FF $04 $00 $04 $FF $04 $00
	.db $04 $FF $04 $00 $04 $FF $04 $00 $04 $FF $04 $00 $84 $FD $FE $FE
	.db $FF $04 $00 $91 $FA $F5 $EA $50 $03 $02 $00 $00 $34 $2C $54 $A4
	.db $C0 $80 $00 $00 $70 $7F $00 $08 $00 $00 $08 $00 $85 $05 $C7 $02
	.db $00 $01 $03 $00 $87 $40 $A0 $D4 $F0 $80 $00 $04 $02 $00 $02 $10
	.db $85 $00 $F8 $C0 $00 $04 $04 $00 $83 $F8 $D8 $03 $05 $00 $83 $78
	.db $BC $02 $05 $00 $8B $FC $66 $03 $00 $02 $01 $01 $00 $FA $1E $0C
	.db $05 $00 $84 $EC $18 $0E $0A $04 $00 $83 $F3 $1F $08 $05 $00 $84
	.db $3D $2F $00 $80 $04 $00 $98 $DC $00 $40 $00 $02 $01 $01 $00 $F3
	.db $11 $00 $00 $05 $0A $15 $A9 $DC $9C $84 $00 $CB $40 $88 $40 $04
	.db $00 $81 $80 $7F $00 $10 $00 $85 $07 $C7 $02 $00 $01 $03 $00 $87
	.db $40 $A0 $D4 $FA $8F $00 $04 $02 $00 $02 $10 $85 $00 $FD $C0 $00
	.db $04 $04 $00 $83 $FD $D8 $03 $05 $00 $83 $FF $BD $02 $05 $00 $8B
	.db $FD $77 $03 $00 $02 $01 $01 $00 $FF $5F $0C $05 $00 $02 $FF $82
	.db $AF $0A $04 $00 $02 $FF $81 $88 $05 $00 $84 $FF $EF $00 $80 $04
	.db $00 $9D $FF $1D $41 $00 $02 $01 $01 $00 $FF $FD $40 $00 $05 $0A
	.db $15 $AF $FC $FC $84 $00 $CB $D0 $A8 $58 $30 $40 $00 $00 $80 $7F
	.db $00 $08 $00 $00
	
; Data from 66519 to 67FFF (6887 bytes)	
_DATA_66519_:	
	.incbin "data/File33_66519_67FFF.dat"
	
.BANK 26	
.ORG $0000	
	
; Data from 68000 to 680A1 (162 bytes)	
_DATA_68000_:	
	.db $00 $00 $01 $02 $03 $04 $05 $06 $05 $07 $04 $08 $09 $01 $02 $04
	.db $00 $00 $00 $00 $0A $0B $0C $0D $0E $0F $0E $10 $11 $12 $13 $14
	.db $15 $16 $00 $00 $00 $00 $17 $18 $19 $1A $1B $1C $1B $1D $19 $1A
	.db $17 $1E $1F $1A $00 $00 $00 $00 $20 $21 $22 $23 $24 $25 $24 $26
	.db $27 $28 $29 $2A $2B $23 $00 $00 $00 $00 $2C $2D $2E $2F $30 $31
	.db $30 $32 $33 $34 $35 $2C $36 $33 $00 $00 $37 $38 $39 $3A $3B $3C
	.db $3D $3E $3F $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $4A $4B $4C
	.db $4D $4E $4F $50 $51 $52 $53 $54 $55 $56 $57 $58 $59 $5A $5B $5C
	.db $5D $5E $5F $60 $61 $62 $63 $64 $65 $66 $67 $00 $68 $69 $6A $00
	.db $6B $6C $6D $6E $6F $70 $71 $72 $73 $74 $75 $76 $77 $78 $70 $79
	.db $7A $7B
	
; 1st entry of Pointer Table from 654B (indexed by _RAM_C01B_)	
; Data from 680A2 to 68196 (245 bytes)	
_DATA_680A2_:	
	.db $81 $00 $08 $01 $84 $02 $03 $04 $05 $06 $01 $02 $00 $81 $06 $08
	.db $07 $85 $08 $09 $09 $0A $0B $05 $07 $88 $06 $00 $0C $0D $0E $0F
	.db $10 $11 $03 $07 $85 $12 $13 $14 $15 $16 $05 $07 $88 $06 $00 $17
	.db $18 $19 $1A $1B $1C $03 $07 $85 $1D $1E $1F $20 $21 $05 $07 $85
	.db $06 $00 $22 $23 $24 $04 $07 $87 $25 $26 $27 $28 $29 $2A $2B $05
	.db $07 $85 $06 $00 $2C $09 $2D $04 $07 $89 $2E $2F $30 $31 $32 $33
	.db $34 $35 $36 $03 $07 $84 $06 $00 $37 $09 $04 $07 $91 $38 $39 $3A
	.db $3B $3C $3D $3E $3F $40 $41 $42 $07 $07 $06 $00 $43 $09 $03 $07
	.db $B9 $44 $45 $46 $47 $48 $49 $4A $4B $4C $4D $4E $4F $50 $07 $06
	.db $00 $51 $0A $07 $07 $52 $53 $54 $55 $56 $57 $58 $59 $5A $5B $5C
	.db $5D $5E $5F $60 $06 $00 $61 $62 $01 $01 $63 $64 $65 $66 $67 $68
	.db $69 $6A $6B $6C $6D $6E $6F $70 $71 $72 $81 $00 $00 $13 $01 $82
	.db $03 $00 $13 $01 $82 $03 $00 $13 $01 $82 $03 $00 $13 $01 $82 $03
	.db $00 $13 $01 $82 $03 $00 $13 $01 $82 $03 $00 $13 $01 $82 $03 $00
	.db $13 $01 $84 $03 $00 $01 $05 $11 $01 $82 $03 $00 $02 $01 $02 $05
	.db $10 $01 $81 $00 $00
	
; 2nd entry of Pointer Table from 654B (indexed by _RAM_C01B_)	
; Data from 68197 to 68268 (210 bytes)	
_DATA_68197_:	
	.db $81 $80 $0E $81 $87 $82 $83 $84 $81 $80 $00 $85 $0D $86 $88 $87
	.db $88 $89 $8A $8B $85 $00 $85 $04 $86 $82 $8C $8D $06 $86 $89 $8E
	.db $8F $90 $91 $92 $93 $85 $00 $85 $04 $86 $83 $94 $95 $96 $05 $86
	.db $89 $97 $98 $99 $9A $9B $9C $85 $00 $85 $04 $86 $DF $9D $9E $9F
	.db $A0 $A1 $86 $86 $A2 $A3 $A4 $A5 $A6 $A7 $86 $85 $00 $A8 $A9 $86
	.db $AA $AB $AC $AD $AE $AF $B0 $B1 $B2 $B3 $B4 $B5 $B6 $B7 $B8 $86
	.db $85 $00 $B9 $BA $BB $BC $BD $BE $BF $C0 $C1 $C2 $C3 $C4 $C5 $C6
	.db $C7 $C8 $C9 $CA $CB $CC $00 $CD $CE $CF $D0 $D1 $D2 $D3 $D4 $D5
	.db $D6 $D7 $D8 $D9 $DA $DB $DC $DD $DE $DF $E0 $00 $E1 $E2 $E3 $E4
	.db $E5 $E6 $E7 $E8 $E9 $EA $EB $EC $ED $EE $EF $F0 $04 $F1 $8A $00
	.db $F2 $F3 $F4 $F5 $F6 $F7 $F8 $F9 $FA $07 $E8 $84 $FB $FC $FD $FE
	.db $81 $00 $00 $13 $00 $81 $02 $14 $00 $81 $02 $14 $00 $81 $02 $14
	.db $00 $81 $02 $14 $00 $81 $02 $14 $00 $81 $02 $49 $00 $07 $04 $05
	.db $00 $00
	
; 3rd entry of Pointer Table from 654B (indexed by _RAM_C01B_)	
; Data from 68269 to 6836A (258 bytes)	
_DATA_68269_:	
	.db $91 $00 $01 $02 $03 $04 $05 $06 $07 $08 $09 $0A $0B $0C $0D $0E
	.db $0F $10 $02 $0C $FF $11 $00 $12 $13 $14 $15 $16 $17 $18 $19 $1A
	.db $1B $1C $1D $1E $1F $20 $21 $22 $23 $24 $25 $00 $26 $27 $28 $29
	.db $2A $2B $2C $2D $2E $2F $30 $31 $32 $33 $34 $35 $36 $37 $38 $39
	.db $00 $3A $3B $3C $3D $3E $3F $40 $41 $42 $43 $44 $45 $46 $47 $48
	.db $49 $4A $4B $4C $4D $00 $4E $4F $50 $51 $52 $53 $54 $55 $56 $57
	.db $58 $59 $5A $5B $5C $5D $5E $5F $60 $61 $00 $62 $63 $64 $65 $66
	.db $67 $68 $69 $6A $6B $6C $6D $6E $6F $70 $71 $72 $73 $74 $75 $00
	.db $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $80 $81 $82 $83 $84 $85
	.db $86 $87 $82 $88 $BF $00 $89 $8A $8B $8C $8D $8E $8F $90 $91 $92
	.db $93 $94 $95 $96 $97 $98 $99 $9A $82 $88 $00 $9B $9C $9D $9E $9F
	.db $A0 $A1 $A2 $A3 $A4 $A5 $A6 $A7 $A8 $A9 $AA $AB $AC $82 $88 $00
	.db $AD $AE $AF $B0 $B1 $B2 $B3 $B4 $B5 $B6 $B7 $B8 $B9 $BA $BB $BC
	.db $BD $BE $BF $AD $81 $00 $00 $14 $01 $81 $00 $14 $01 $81 $00 $14
	.db $01 $81 $00 $14 $01 $81 $00 $14 $01 $81 $00 $14 $01 $81 $00 $14
	.db $01 $81 $00 $14 $01 $81 $00 $14 $01 $81 $00 $13 $01 $81 $03 $81
	.db $00 $00
	
; Data from 6836B to 6838A (32 bytes)	
_DATA_6836B_:	
	.db $20 $01 $3F $30 $3C $03 $2F $25 $2A $0C $04 $2B $06 $08 $0B $38
	.db $20 $01 $3F $30 $3C $03 $2F $25 $2A $0C $04 $2B $06 $08 $0B $38
	
; Data from 6838B to 68C84 (2298 bytes)	
_DATA_6838B_:	
	.incbin "data/File34_6838B_68C84.dat"
	
; 1st entry of Pointer Table from 6545 (indexed by _RAM_C01B_)	
; Data from 68C85 to 6977D (2809 bytes)	
_DATA_68C85_:	
	.incbin "data/File35_68C85_6977D.dat"
	
; 2nd entry of Pointer Table from 6545 (indexed by _RAM_C01B_)	
; Data from 6977E to 6A3D2 (3157 bytes)	
_DATA_6977E_:	
	.incbin "data/File36_6977E_6A3D2.dat"
	
; 3rd entry of Pointer Table from 6545 (indexed by _RAM_C01B_)	
; Data from 6A3D3 to 6BFFF (7213 bytes)	
_DATA_6A3D3_:	
	.incbin "data/File37_6A3D3_6BFFF.dat"
	
.BANK 27	
.ORG $0000	
	
; Data from 6C000 to 6C0FF (256 bytes)	
_DATA_6C000_:	
	.db $C9 $CA $CB $CC $C9 $CA $CB $CC $C9 $CA $CB $CC $C9 $CA $CB $CC
	.db $C9 $CA $CB $CC $C9 $CA $CB $CC $C9 $CA $CB $CC $C9 $CA $CB $CC
	.db $CD $CE $CF $D0 $CD $CE $CF $D0 $CD $CE $CF $D0 $CD $CE $CF $D0
	.db $CD $CE $CF $D0 $CD $CE $CF $D0 $CD $CE $CF $D0 $CD $CE $CF $D0
	.db $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4
	.db $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4
	.db $D5 $D6 $D7 $D8 $D5 $D6 $D7 $D9 $DA $DB $DC $D8 $DD $DE $DF $E0
	.db $F6 $D6 $F7 $F8 $F6 $F9 $FA $FB $D5 $D6 $D7 $D8 $D5 $D6 $D7 $D8
	.db $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4
	.db $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4 $E1 $E2 $E3 $E4
	.db $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8
	.db $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8 $E5 $E6 $E7 $E8
	.db $E9 $EA $EB $EC $E9 $EA $EB $EC $E9 $EA $EB $EC $E9 $EA $EB $EC
	.db $E9 $EA $EB $EC $E9 $EA $EB $EC $E9 $EA $EB $EC $E9 $EA $EB $EC
	.db $ED $EE $EF $F0 $ED $EE $EF $F0 $ED $EE $F1 $F0 $F2 $F3 $F4 $F5
	.db $ED $FC $FD $FE $FF $EE $EF $F0 $ED $EE $EF $F0 $ED $EE $EF $F0
	
; Data from 6C100 to 6C110 (17 bytes)	
_DATA_6C100_:	
	.db $38 $00 $3F $30 $3C $03 $2F $25 $2A $0C $04 $2B $06 $08 $0B $01
	.db $38
	
; Data from 6C111 to 6C24F (319 bytes)	
_DATA_6C111_:	
	.db $03 $00 $93 $01 $02 $03 $04 $05 $06 $07 $08 $09 $0A $0B $0C $06
	.db $0D $0E $0F $10 $11 $12 $05 $00 $94 $13 $14 $15 $16 $17 $18 $19
	.db $1A $1B $1C $1D $1E $1F $20 $21 $22 $23 $24 $25 $26 $05 $00 $94
	.db $27 $28 $29 $2A $2B $18 $2C $2D $00 $2E $2F $00 $30 $31 $32 $33
	.db $34 $35 $36 $37 $05 $00 $93 $27 $28 $38 $39 $2B $18 $3A $3B $00
	.db $2E $2F $00 $30 $3C $3D $33 $3E $3F $40 $06 $00 $94 $41 $28 $42
	.db $43 $2B $18 $44 $00 $00 $2E $2F $00 $30 $45 $46 $47 $3E $48 $49
	.db $4A $06 $00 $93 $4B $4C $4D $4E $4F $50 $00 $00 $51 $52 $00 $53
	.db $54 $55 $56 $57 $58 $59 $5A $03 $00 $E2 $5B $5C $5C $5D $5E $5F
	.db $60 $18 $61 $62 $63 $64 $65 $66 $67 $3E $68 $18 $10 $69 $18 $18
	.db $6A $6B $00 $6C $6D $6E $5C $6F $70 $71 $18 $72 $73 $74 $75 $65
	.db $76 $77 $3E $78 $79 $7A $7B $7C $7D $7E $7F $00 $80 $81 $82 $83
	.db $84 $85 $86 $18 $87 $88 $89 $8A $65 $65 $8B $3E $78 $8C $8D $8E
	.db $34 $8F $90 $91 $00 $92 $93 $94 $95 $96 $97 $98 $18 $87 $99 $9A
	.db $9B $9C $65 $44 $3E $78 $9D $9E $9F $A0 $A1 $A2 $02 $00 $9E $5C
	.db $A3 $A4 $A5 $A6 $A7 $A8 $A9 $AA $AB $AC $AD $AE $AF $B0 $B1 $B2
	.db $B3 $B4 $B5 $3E $B6 $B7 $B8 $00 $B9 $BA $BB $BC $BD $06 $00 $81
	.db $BE $06 $00 $8A $BF $C0 $C1 $C2 $C3 $C4 $00 $C5 $C6 $58 $13 $00
	.db $82 $C7 $C8 $81 $00 $00 $0F $00 $81 $02 $7F $00 $19 $00 $81 $02
	.db $2C $00 $81 $02 $18 $00 $02 $02 $3E $00 $81 $02 $16 $00 $00
	
; Data from 6C250 to 6C33D (238 bytes)	
_DATA_6C250_:	
	.db $1B $00 $81 $01 $09 $02 $82 $03 $04 $03 $02 $81 $05 $03 $02 $81
	.db $01 $05 $00 $81 $06 $09 $07 $86 $08 $09 $07 $07 $0A $0B $03 $07
	.db $81 $06 $05 $00 $86 $0C $0D $0E $0F $0D $10 $03 $0D $8B $11 $12
	.db $13 $14 $15 $16 $17 $18 $0D $0D $0C $05 $00 $94 $19 $1A $1B $1C
	.db $1D $1E $1F $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $2A $2B $2C
	.db $05 $00 $94 $2D $2E $2F $30 $31 $32 $33 $34 $35 $36 $37 $38 $39
	.db $3A $3B $3C $3D $3E $3F $40 $05 $00 $94 $41 $42 $43 $44 $45 $42
	.db $46 $47 $48 $49 $4A $4B $4C $4D $4E $4F $50 $51 $52 $53 $05 $00
	.db $94 $54 $55 $56 $57 $58 $59 $5A $59 $5A $59 $5B $5C $5D $5E $5F
	.db $60 $5A $59 $5A $61 $05 $00 $94 $62 $63 $64 $65 $66 $67 $68 $67
	.db $68 $67 $68 $69 $6A $6B $6C $6D $68 $67 $68 $6E $05 $00 $94 $6F
	.db $70 $71 $70 $71 $70 $71 $70 $71 $70 $71 $70 $72 $73 $74 $70 $71
	.db $70 $71 $75 $05 $00 $94 $76 $77 $78 $77 $78 $77 $78 $77 $78 $77
	.db $78 $77 $78 $77 $78 $77 $78 $77 $78 $79 $35 $00 $00 $2E $01 $81
	.db $03 $18 $01 $81 $03 $18 $01 $81 $03 $7F $01 $65 $01 $00
	
; Data from 6C33E to 6C418 (219 bytes)	
_DATA_6C33E_:	
	.db $1B $00 $86 $01 $02 $03 $04 $05 $06 $0D $05 $81 $07 $05 $00 $86
	.db $08 $09 $0A $0B $00 $0C $09 $00 $85 $0D $0E $0F $00 $10 $05 $00
	.db $86 $11 $12 $13 $14 $00 $15 $08 $00 $86 $16 $17 $18 $19 $1A $10
	.db $05 $00 $94 $1B $1C $1D $1E $1F $20 $21 $22 $23 $24 $25 $26 $27
	.db $28 $29 $2A $2B $2C $2D $10 $05 $00 $94 $2E $2F $30 $31 $32 $33
	.db $34 $35 $36 $37 $38 $39 $3A $3B $3C $3D $3E $3F $40 $41 $05 $00
	.db $94 $42 $43 $44 $45 $46 $33 $47 $48 $49 $4A $4B $4C $4D $4E $4F
	.db $50 $51 $52 $53 $54 $05 $00 $87 $55 $56 $57 $58 $59 $5A $5B $03
	.db $00 $8A $5C $5D $00 $5E $5F $60 $61 $62 $63 $64 $05 $00 $94 $65
	.db $66 $67 $68 $69 $6A $6B $6C $69 $69 $6D $6E $6F $70 $71 $72 $73
	.db $74 $75 $76 $05 $00 $94 $77 $78 $79 $7A $7B $7C $7D $7E $7F $80
	.db $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A $05 $00 $94 $8B $8C $8D
	.db $8E $8F $90 $90 $91 $92 $92 $93 $94 $95 $96 $97 $98 $99 $9A $9B
	.db $9C $35 $00 $00 $7F $01 $7F $01 $47 $01 $00
	
; Data from 6C419 to 6C8D7 (1215 bytes)	
_DATA_6C419_:	
	.incbin "data/File38_6C419_6C8D7.dat"
	
; Data from 6C8D8 to 6D0D5 (2046 bytes)	
_DATA_6C8D8_:	
	.incbin "data/File39_6C8D8_6D0D5.dat"
	
; Data from 6D0D6 to 6DCC6 (3057 bytes)	
_DATA_6D0D6_:	
	.incbin "data/File40_6D0D6_6DCC6.dat"
	
; Data from 6DCC7 to 6FFFF (9017 bytes)	
_DATA_6DCC7_:	
	.incbin "data/File41_6DCC7_6FFFF.dat"
	
.BANK 28	
.ORG $0000	
	
_LABEL_70000_:	
		exx
		ld a, (_RAM_DE00_)
		or a
		ex af, af'
		ld hl, _RAM_DE0C_
		exx
		ld hl, _RAM_DE07_
		ld a, (hl)
		or a
		jr z, _LABEL_7006E_
		xor a
		ld (hl), a
		call _LABEL_700B2_
		call _LABEL_700CB_
		call _LABEL_7010B_
_LABEL_7001C_:	
		call _LABEL_7026C_
		ld a, (_RAM_DE00_)
		or a
		jp z, +++
		ld ix, _RAM_DE0E_
		ld b, $08
-:	
		push bc
		bit 7, (ix+0)
		jr z, +
		call ++
		pop af
		cp $03
		push af
		call z, _LABEL_703A0_
		pop af
		push af
		call c, _LABEL_703F6_
+:	
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
++:	
		bit 3, (ix+7)
		ret z
		res 3, (ix+7)
		jp _LABEL_70501_
	
+++:	
		ld ix, _RAM_DECE_
		ld b, $02
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_70A2E_
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
_LABEL_7006E_:	
		inc (hl)
		ld a, (_RAM_DE00_)
		or a
		jp z, +
		ld ix, _RAM_DE0E_
		ld b, $05
-:	
		push bc
		bit 7, (ix+0)
		call nz, _LABEL_703F6_
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
+:	
		ld ix, _RAM_DE4E_
		ld b, $04
--:	
		push bc
		ld a, $01
		cp b
		jr z, +
		bit 7, (ix+0)
		call nz, _LABEL_70A2E_
-:	
		ld de, $0020
		add ix, de
		pop bc
		djnz --
		ret
	
+:	
		bit 7, (ix+0)
		call nz, _LABEL_70987_
		jr -
	
_LABEL_700B2_:	
		ld hl, _RAM_DE01_
		ld a, (hl)
		or a
		ret z
		dec (hl)
		ret nz
		ld a, (_RAM_DE02_)
		ld (hl), a
		ld hl, _RAM_DE18_
		ld de, $0020
		ld b, $06
-:	
		inc (hl)
		add hl, de
		djnz -
		ret
	
_LABEL_700CB_:	
		ld de, _RAM_DE04_
		call +
		inc de
		call +
		inc de
		call +
		ret
	
+:	
		ld a, (de)
		bit 7, a
		ret z
		and $7F
		ld hl, _DATA_70208_
		dec a
		ld b, $00
		ld c, a
		add hl, bc
		bit 7, (hl)
		jr z, +
		ld a, (de)
		ld (_RAM_DE03_), a
		xor a
		ld (de), a
		pop hl
		pop hl
		jp _LABEL_7001C_
	
	; Data from 700F7 to 700F7 (1 bytes)
	.db $C9
	
+:	
		ld a, (_RAM_DE09_)
		cp (hl)
		jr z, +
		jr nc, ++
+:	
		ld a, (de)
		ld (_RAM_DE03_), a
		ld a, (hl)
		ld (_RAM_DE09_), a
++:	
		xor a
		ld (de), a
		ret
	
_LABEL_7010B_:	
		ld a, (_RAM_DE0A_)
		or a
		ret z
		ld a, (_RAM_DE0B_)
		dec a
		jr z, +
		ld (_RAM_DE0B_), a
		ret
	
+:	
		ld a, $1E
		ld (_RAM_DE0B_), a
		ld a, (_RAM_DE0A_)
		inc a
		cp $0C
		ld (_RAM_DE0A_), a
		jr nz, +
		xor a
		ld (_RAM_DE0A_), a
		jp _LABEL_70909_
	
+:	
		ld hl, _RAM_DE16_
		ld de, $0020
		ld b, $05
-:	
		ld a, (hl)
		inc a
		cp $10
		jr z, +
		ld (hl), a
+:	
		add hl, de
		djnz -
		ex af, af'
		jr nz, +
		ex af, af'
		ret
	
+:	
		ex af, af'
		ld hl, _RAM_DE15_
		ld de, $001F
		ld bc, $0530
-:	
		ld a, c
		out (Port_FMAddress), a
		inc c
		ld a, (hl)
		and $F0
		inc hl
		or (hl)
		add hl, de
		out (Port_FMData), a
		call _LABEL_70984_
		djnz -
		ret
	
; 1st entry of Jump Table from 70266 (indexed by _RAM_DE03_)	
_LABEL_70164_:	
		ld a, $03
		ld (_RAM_DE0A_), a
		ld a, $19
		ld (_RAM_DE0B_), a
		xor a
		ld (_RAM_DEAE_), a
		ld a, $FF
		out (Port_PSG), a
		ld a, (_RAM_DE00_)
		or a
		jp z, _LABEL_70391_
		ld b, $03
		xor a
		ld c, Port_FMAddress
		ld d, $23
-:	
		out (c), d
		inc d
		call _LABEL_70984_
		out (Port_FMData), a
		call _LABEL_70984_
		djnz -
		ld (_RAM_DEAE_), a
		ld (_RAM_DECE_), a
		ld (_RAM_DEEE_), a
		jp _LABEL_70391_
	
; 3rd entry of Jump Table from 70266 (indexed by _RAM_DE03_)	
_LABEL_7019D_:	
		xor a
		ld (_RAM_DE09_), a
		ld (_RAM_DECE_), a
		ld (_RAM_DEEE_), a
		ld hl, _RAM_DE6E_
		res 2, (hl)
		ld hl, _RAM_DE8E_
		res 2, (hl)
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ld hl, _DATA_70981_
		ld c, Port_PSG
		ld b, $03
		otir
		ld a, $24
		call _LABEL_701D5_
		ld hl, _DATA_70981_
		ld c, Port_PSG
		ld b, $03
		otir
		ld a, $25
		call _LABEL_701D5_
		jp _LABEL_70391_
	
_LABEL_701D5_:	
		out (Port_FMAddress), a
		call _LABEL_70984_
		xor a
		out (Port_FMData), a
		ret
	
_LABEL_701DE_:	
		push bc
		ld b, $12
		ld hl, _DATA_701F6_
-:	
		ld c, Port_FMAddress
		outi
		call _LABEL_70984_
		ld c, Port_FMData
		outi
		call _LABEL_70984_
		jr nz, -
		pop bc
		ret
	
; Data from 701F6 to 70207 (18 bytes)	
_DATA_701F6_:	
	.db $16 $20 $17 $B0 $18 $01 $26 $05 $27 $01 $28 $01 $36 $00 $37 $83
	.db $38 $25
	
; Data from 70208 to 7021B (20 bytes)	
_DATA_70208_:	
	.db $80 $80 $80 $80 $80 $80 $80 $80 $00 $20 $30 $70 $00 $00 $10 $50
	.db $40 $80 $80 $80
	
; Data from 7021C to 70221 (6 bytes)	
_DATA_7021C_:	
	.db $00 $02 $02 $0A $06 $02
	
; Pointer Table from 70222 to 70243 (17 entries, indexed by _RAM_DE03_)	
_DATA_70222_:	
	.dw _DATA_7204F_ _DATA_720AB_ _DATA_72107_ _DATA_72163_ _DATA_721BF_ _DATA_7221B_ _DATA_72930_ _DATA_729ED_
	.dw _DATA_72AA9_ _DATA_72ADD_ _DATA_72B0A_ _DATA_72B3D_ _DATA_72B76_ _DATA_72BC7_ _DATA_72C0B_ _DATA_72C24_
	.dw _DATA_72C41_
	
; Pointer Table from 70244 to 70265 (17 entries, indexed by _RAM_DE03_)	
_DATA_70244_:	
	.dw _DATA_72018_ _DATA_72074_ _DATA_720D0_ _DATA_7212C_ _DATA_72188_ _DATA_721E4_ _DATA_72914_ _DATA_729D1_
	.dw _DATA_72A96_ _DATA_72AD3_ _DATA_72B00_ _DATA_72B2A_ _DATA_72B63_ _DATA_72BB4_ _DATA_72C01_ _DATA_72C1A_
	.dw _DATA_72C37_
	
; Jump Table from 70266 to 7026B (3 entries, indexed by _RAM_DE03_)	
_DATA_70266_:	
	.dw _LABEL_70164_ _LABEL_72DD9_ _LABEL_7019D_
	
_LABEL_7026C_:	
		ld a, (_RAM_DE03_)
		bit 7, a
		jp z, _LABEL_70909_
		cp $89
		jp c, +
		cp $92
		jp c, _LABEL_702C3_
		cp $95
		jp nc, _LABEL_70909_
		sub $92
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_70266_
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		sub $81
		ret m
		push af
		call _LABEL_70909_
		call _LABEL_701DE_
		pop af
		ld b, $00
		ld c, a
		ld hl, _DATA_7021C_
		add hl, bc
		push af
		ld a, (hl)
		ld (_RAM_DE01_), a
		ld (_RAM_DE02_), a
		ld de, _RAM_DE4E_
		ld hl, _DATA_70222_
		ex af, af'
		jr z, +
		ld de, _RAM_DE0E_
		ld hl, _DATA_70244_
+:	
		ex af, af'
		pop af
		call _LABEL_70397_
		jp _LABEL_70351_
	
_LABEL_702C3_:	
		sub $81
		ret m
		ld hl, _DATA_70222_
		ex af, af'
		jr z, +
		ld hl, _DATA_70244_
+:	
		ex af, af'
		call _LABEL_70397_
		ld h, b
		ld l, c
		inc hl
		inc hl
		ld a, (hl)
		ex af, af'
		jr z, ++++
		ex af, af'
		cp $10
		jr z, +
		cp $14
		jr z, ++
		ld de, _RAM_DEEE_
		jr +++
	
+:	
		call _LABEL_70909_
		ld de, _RAM_DE0E_
		jr _LABEL_70351_
	
++:	
		ld de, _RAM_DECE_
		ld a, $24
		call _LABEL_701D5_
		ld a, $14
		ld hl, _RAM_DE8E_
		set 2, (hl)
+++:	
		add a, $10
		call _LABEL_701D5_
		jr _LABEL_70351_
	
++++:	
		ex af, af'
		cp $C0
		jr z, ++
		cp $E0
		jr z, +
		cp $A0
		jr z, +++
		ld de, _RAM_DE4E_
		jr _LABEL_70351_
	
+:	
		ld a, $DF
		out (Port_PSG), a
		ld hl, _RAM_DEAE_
		set 2, (hl)
++:	
		ld de, _RAM_DEEE_
		jr ++++
	
+++:	
		ld de, _RAM_DECE_
		ld hl, _RAM_DE6E_
		set 2, (hl)
++++:	
		ld h, b
		ld l, c
		push de
		ld de, _DATA_D_ - 2
		add hl, de
		pop de
		ld a, (hl)
		cp $E0
		jr nz, +
		ld hl, _RAM_DEAE_
		set 2, (hl)
+:	
		ld a, $FF
		out (Port_PSG), a
		ld a, $C0
		out (Port_PSG), a
		xor a
		out (Port_PSG), a
		ld hl, _RAM_DE8E_
		set 2, (hl)
_LABEL_70351_:	
		ld h, b
		ld l, c
		ld b, (hl)
		inc hl
-:	
		push bc
		push hl
		pop ix
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
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
		ld hl, $0013
		add hl, de
		ex de, hl
		pop hl
		ld bc, +	; Overriding return address
		push bc
		ld a, (_RAM_DE00_)
		or a
		jp nz, _LABEL_704EB_
		jp _LABEL_70B35_
	
+:	
		pop bc
		djnz -
_LABEL_70391_:	
		ld a, $80
		ld (_RAM_DE03_), a
		ret
	
_LABEL_70397_:	
		add a, a
		ld b, $00
		ld c, a
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ret
	
_LABEL_703A0_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		jr nz, +
		call ++
		ld a, $0E
		out (Port_FMAddress), a
		ld a, (ix+16)
		or $20
		out (Port_FMData), a
		ret
	
+:	
		cp $02
		ret nz
		ld a, $0E
		out (Port_FMAddress), a
		call _LABEL_70984_
		xor a
		out (Port_FMData), a
		ret
	
++:	
		ld e, (ix+3)
		ld d, (ix+4)
-:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, ++
		cp $7F
		jp c, _LABEL_705D1_
		bit 5, a
		jr z, +
		or $01
+:	
		bit 2, a
		jr z, +
		or $10
+:	
		ld (ix+16), a
		jp _LABEL_705C3_
	
++:	
		ld hl, +	; Overriding return address
		jp _LABEL_70674_
	
+:	
		inc de
		jp -
	
_LABEL_703F6_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		call z, _LABEL_70569_
		ld (_RAM_DE0C_), a
		cp $80
		jp z, _LABEL_7045F_
		bit 5, (ix+0)
		jp z, _LABEL_7045F_
		exx
		ld (hl), $80
		exx
		bit 3, (ix+0)
		jp nz, ++
		ld a, (ix+17)
		bit 7, a
		jr z, +
		add a, (ix+14)
		jr c, ++++
		dec (ix+15)
		dec (ix+15)
		jp +++
	
+:	
		add a, (ix+14)
		jr nc, ++++
		inc (ix+15)
		inc (ix+15)
		jp +++
	
++:	
		ld a, (ix+17)
		bit 7, a
		jr z, +
		add a, (ix+14)
		jr c, ++++
		dec (ix+15)
		jr +++
	
+:	
		add a, (ix+14)
		jr nc, ++++
		inc (ix+15)
+++:	
		set 1, (ix+7)
++++:	
		ld (ix+14), a
_LABEL_7045F_:	
		bit 2, (ix+0)
		ret nz
		bit 0, (ix+0)
		jr z, +
		ld a, $06
		cp (ix+11)
		jp c, _LABEL_70501_
+:	
		ld a, (ix+19)
		cp $1F
		ret z
		ld a, (_RAM_DE0C_)
		bit 0, (ix+7)
		jr nz, +
		cp $02
		jp c, _LABEL_70516_
+:	
		or a
		jp m, +
		bit 7, (ix+20)
		ret nz
		ld a, (ix+6)
		dec a
		jp p, ++
		ret
	
+:	
		ld a, (ix+6)
		dec a
++:	
		ld l, (ix+14)
		ld h, (ix+15)
		jp m, +
		ex de, hl
		ld hl, _DATA_72CED_
		call _LABEL_7051B_
		call _LABEL_70528_
+:	
		bit 3, (ix+0)
		call nz, _LABEL_7061B_
		ld c, Port_FMData
		ld a, (ix+1)
		out (Port_FMAddress), a
		add a, $10
		call _LABEL_70984_
		call _LABEL_70984_
		out (c), l
		call _LABEL_70984_
		exx
		bit 7, (hl)
		exx
		out (Port_FMAddress), a
		jr nz, +
		bit 0, (ix+7)
		jr z, +
		bit 1, (ix+7)
		ret z
		res 1, (ix+7)
+:	
		bit 2, (ix+7)
		jr z, +
		set 5, h
+:	
		out (c), h
		ret
	
_LABEL_704EB_:	
		ld a, (ix+1)
		add a, $20
		out (Port_FMAddress), a
		ld a, (ix+7)
		and $F0
		ld c, a
		ld a, (ix+8)
		and $0F
		or c
		out (Port_FMData), a
		ret
	
_LABEL_70501_:	
		ld (ix+19), $1F
		ld a, (ix+1)
		add a, $10
		out (Port_FMAddress), a
		call _LABEL_70984_
		call _LABEL_70984_
		xor a
		out (Port_FMData), a
		ret
	
_LABEL_70516_:	
		set 3, (ix+7)
		ret
	
_LABEL_7051B_:	
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ret
	
-:	
		ld (ix+13), a
_LABEL_70528_:	
		push hl
		ld c, (ix+13)
		ld b, $00
		add hl, bc
		ld c, l
		ld b, h
		pop hl
		ld a, (bc)
		bit 7, a
		jp z, +++
		cp $83
		jr z, +
		cp $80
		jr z, ++
		ld a, $FF
		ld (ix+20), a
		pop hl
		ret
	
+:	
		inc bc
		ld a, (bc)
		jr -
	
++:	
		xor a
		jr -
	
+++:	
		inc (ix+13)
		ld l, a
		ld h, $00
		add hl, de
		ld a, (_RAM_DE00_)
		or a
		jr z, +
		ld a, h
		cp (ix+16)
		jr z, +
		set 1, (ix+7)
+:	
		ld (ix+16), a
		ret
	
_LABEL_70569_:	
		res 0, (ix+0)
		ld a, (ix+8)
		bit 7, a
		jr z, ++
		inc a
		bit 6, a
		jr nz, +
		inc a
+:	
		and $3F
		ld (ix+8), a
++:	
		ld e, (ix+3)
		ld d, (ix+4)
_LABEL_70585_:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, _LABEL_70671_
		bit 3, (ix+0)
		jp nz, _LABEL_705FA_
		cp $80
		jp c, _LABEL_705D1_
		jr nz, +
+:	
		call _LABEL_7065A_
		ld a, (hl)
		ld (ix+14), a
		inc hl
		ld a, (hl)
		ld (ix+15), a
_LABEL_705A6_:	
		bit 5, (ix+0)
		jp z, _LABEL_705C3_
		ld a, (de)
		inc de
		ld (ix+18), a
		ld (ix+17), a
		bit 3, (ix+0)
		ld a, (de)
		jr nz, +
		ld (ix+17), a
		inc de
		ld a, (de)
		jr +
	
_LABEL_705C3_:	
		ld a, (de)
		or a
		jp p, +
		ld a, (ix+21)
		ld (ix+10), a
		jr _LABEL_705E1_
	
+:	
		inc de
_LABEL_705D1_:	
		ld b, (ix+2)
		dec b
		jr z, +
		ld c, a
-:	
		add a, c
		djnz -
+:	
		ld (ix+10), a
		ld (ix+21), a
_LABEL_705E1_:	
		xor a
		ld (ix+12), a
		ld (ix+13), a
		ld (ix+11), a
		ld (ix+19), a
		ld (ix+20), a
		ld (ix+3), e
		ld (ix+4), d
		ld a, $80
		ret
	
_LABEL_705FA_:	
		ld h, a
		ld a, (de)
		inc de
		ld l, a
		ld a, (ix+5)
		or a
		jr z, +++
		jp p, +
		add a, l
		jr c, ++
		dec h
		jr ++
	
+:	
		add a, l
		jr nc, ++
		inc h
++:	
		ld l, a
+++:	
		ld (ix+14), l
		ld (ix+15), h
		jp _LABEL_705A6_
	
_LABEL_7061B_:	
		push de
		ld a, h
		or a
		jr z, +
		cp $02
		ld a, $12
		jr c, ++
		srl h
		rr l
		ld a, $10
		jr ++
	
+:	
		ld a, l
		or a
		jp z, +++
		ld bc, $0400
-:	
		rlca
		inc c
		jr c, +
		djnz -
+:	
		ld b, c
		ld a, $12
-:	
		inc a
		inc a
		sla l
		rl h
		djnz -
++:	
		ld de, $0757
		ex de, hl
		or a
		sbc hl, de
		bit 1, h
		jr z, +
		set 0, h
+:	
		ld d, a
		ld e, $00
		add hl, de
+++:	
		pop de
		ret
	
_LABEL_7065A_:	
		sub $80
		jr z, +
		add a, (ix+5)
+:	
		ld hl, $8B42
		ex af, af'
		jr z, +
		ld hl, _DATA_70BD4_
+:	
		ex af, af'
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ret
	
_LABEL_70671_:	
		ld hl, +	; Overriding return address
_LABEL_70674_:	
		push hl
		sub $EE
		jp c, _LABEL_7072A_
		ld hl, _DATA_7068B_
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		jp (hl)
	
+:	
		inc de
		jp _LABEL_70585_
	
; Jump Table from 7068B to 706AE (18 entries, indexed by unknown)	
_DATA_7068B_:	
	.dw _LABEL_706AF_ _LABEL_706C1_ _LABEL_706FC_ _LABEL_706F6_ _LABEL_707EF_ _LABEL_70742_ _LABEL_70774_ _LABEL_70756_
	.dw _LABEL_70791_ _LABEL_708F1_ _LABEL_708C3_ _LABEL_708DE_ _LABEL_70725_ _LABEL_70714_ _LABEL_70797_ _LABEL_707E0_
	.dw _LABEL_706E2_ _LABEL_706CD_
	
; 1st entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706AF_:	
		ex af, af'
		jr nz, +
		ex af, af'
		ld a, (de)
		inc de
		jr ++
	
+:	
		ex af, af'
		inc de
		ld a, (de)
++:	
		add a, (ix+2)
		ld (ix+2), a
		ret
	
; 2nd entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706C1_:	
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (de)
		add a, (ix+8)
		jp _LABEL_70731_
	
; 18th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706CD_:	
		ld h, d
		ld l, e
		ld b, $08
		xor a
		ld c, Port_FMData
-:	
		out (Port_FMAddress), a
		inc a
		call _LABEL_70984_
		outi
		jr nz, -
		ld d, h
		ld e, l
		dec de
		ret
	
; 17th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706E2_:	
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, (de)
		add a, (ix+8)
		ld (ix+8), a
		jp _LABEL_70736_
	
; 4th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706F6_:	
		set 0, (ix+0)
		dec de
		ret
	
; 3rd entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_706FC_:	
		dec de
		ld a, (ix+8)
		and $0F
		or a
		ret z
		dec a
		jr nz, +
		or $40
		jr ++
	
+:	
		dec a
++:	
		or $80
		ld (ix+8), a
		jp _LABEL_70736_
	
; 14th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70714_:	
		ex af, af'
		jr nz, +
		ex af, af'
		ld a, (de)
		inc de
		jr ++
	
+:	
		inc de
		ld a, (de)
++:	
		add a, (ix+5)
		ld (ix+5), a
		ret
	
; 13th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70725_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
_LABEL_7072A_:	
		dec de
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (de)
_LABEL_70731_:	
		and $0F
		ld (ix+8), a
_LABEL_70736_:	
		ex af, af'
		jp nz, +
		ex af, af'
		jp _LABEL_70B35_
	
+:	
		ex af, af'
		jp _LABEL_704EB_
	
; 6th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70742_:	
		ld a, (de)
		or $E0
		out (Port_PSG), a
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 8th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70756_:	
		ex af, af'
		jr nz, +
		ex af, af'
		ld a, (de)
		inc de
		cp $80
		ret z
		ld (ix+7), a
		ret
	
+:	
		ex af, af'
		inc de
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (de)
		cp $04
		ret z
		ld (ix+7), a
		jp _LABEL_704EB_
	
; 7th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70774_:	
		ld a, (de)
		ld (ix+6), a
		ret
	
	; Data from 70779 to 70790 (24 bytes)
	.db $06 $00 $0E $1B $DD $E5 $E1 $09 $7E $B7 $20 $06 $1A $3D $77 $13
	.db $13 $C9 $13 $35 $28 $02 $13 $C9
	
; 9th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70791_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 15th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_70797_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 5, (ix+0)
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, (ix+1)
		cp $13
		ret nc
		ld a, (ix+7)
		ld (ix+22), a
		ld (ix+7), $53
		ld a, (ix+5)
		add a, $0C
		ld (ix+5), a
		jp _LABEL_704EB_
	
+:	
		res 5, (ix+0)
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, (ix+1)
		cp $13
		ret nc
		ld a, (ix+22)
		ld (ix+7), a
		ld a, (ix+5)
		sub $0C
		ld (ix+5), a
		jp _LABEL_704EB_
	
; 16th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_707E0_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 3, (ix+0)
		ret
	
+:	
		res 3, (ix+0)
		ret
	
; 5th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_707EF_:	
		xor a
		ld (_RAM_DE09_), a
		ld (ix+0), a
		ex af, af'
		jp nz, _LABEL_7088A_
		ex af, af'
		ld a, (de)
		or a
		jp m, _LABEL_7085C_
		cp $02
		jp nc, ++
		cp $01
		jr z, +
		ld hl, _RAM_DE4E_
		res 2, (hl)
		ld a, $9F
		jr _LABEL_70857_
	
+:	
		ld a, (_RAM_DE6E_)
		and $80
		jr z, +
		ld hl, _RAM_DE7C_
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_DE6F_)
		call _LABEL_70AE8_
		ld hl, _RAM_DE6E_
		res 2, (hl)
+:	
		ld a, $BF
		jr _LABEL_70857_
	
++:	
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ld a, $FF
		out (Port_PSG), a
		ld a, $E4
		out (Port_PSG), a
		ld a, (_RAM_DE8E_)
		and $80
		jr z, +
		ld hl, _RAM_DE9C_
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_DE8F_)
		call _LABEL_70AE8_
		ld hl, _RAM_DE8E_
		res 2, (hl)
+:	
		ld a, $DF
_LABEL_70857_:	
		out (Port_PSG), a
_LABEL_70859_:	
		pop hl
		pop hl
		ret
	
_LABEL_7085C_:	
		inc a
		jr nz, +
-:	
		call _LABEL_70909_
		jr _LABEL_70859_
	
+:	
		call _LABEL_70943_
		ld hl, _RAM_DE4E_
		res 2, (hl)
		ld hl, _RAM_DE6E_
		res 2, (hl)
		ld hl, _RAM_DE8E_
		res 2, (hl)
		ld hl, _RAM_DEAE_
		res 2, (hl)
		xor a
		ld (ix+0), a
		ld a, $E4
		out (Port_PSG), a
		ld a, (ix+1)
		add a, $1F
		jr _LABEL_70857_
	
_LABEL_7088A_:	
		ld a, (de)
		inc a
		jr z, -
		ex af, af'
		ld a, (ix+1)
		add a, $10
		out (Port_FMAddress), a
		call _LABEL_70984_
		ld hl, _RAM_DE8E_
		res 2, (hl)
		xor a
		out (Port_FMData), a
		call _LABEL_70984_
		call _LABEL_70984_
		ld a, (_RAM_DE8E_)
		or a
		jp p, +
		ld a, $34
		out (Port_FMAddress), a
		ld hl, _RAM_DE95_
+:	
		ld a, (hl)
		and $F0
		ld c, a
		inc hl
		ld a, (hl)
		and $0F
		or c
		out (Port_FMData), a
		jp _LABEL_70859_
	
; 11th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_708C3_:	
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
	
; 12th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_708DE_:	
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
	
; 10th entry of Jump Table from 7068B (indexed by unknown)	
_LABEL_708F1_:	
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
		jp nz, _LABEL_70791_
		inc de
		ret
	
_LABEL_70909_:	
		push hl
		push de
		push bc
		ld hl, _RAM_DE03_
		ld de, _RAM_DE04_
		ld (hl), $00
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ld hl, _RAM_DE0E_
		xor a
		ld b, $08
-:	
		ld de, $0017
		ld (hl), a
		add hl, de
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		ld de, $0006
		add hl, de
		djnz -
		pop bc
		pop de
		pop hl
_LABEL_70943_:	
		push hl
		push bc
		ld hl, _DATA_70979_
		ld c, Port_PSG
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
		push de
		ld b, $06
		xor a
		ld c, Port_FMAddress
		ld d, $20
-:	
		out (c), d
		inc d
		call _LABEL_70984_
		out (Port_FMData), a
		call _LABEL_70984_
		djnz -
		pop de
		pop bc
		pop hl
		ret
	
; Data from 70979 to 70980 (8 bytes)	
_DATA_70979_:	
	.db $80 $00 $90 $00 $C0 $00 $E4 $9F
	
; Data from 70981 to 70983 (3 bytes)	
_DATA_70981_:	
	.db $BF $DF $FF
	
_LABEL_70984_:	
		push hl
		pop hl
		ret
	
_LABEL_70987_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		call z, +
		bit 2, (ix+0)
		ret nz
		bit 4, (ix+19)
		ret nz
		ld a, (ix+7)
		dec a
		ret m
		ld hl, _DATA_72C6A_
		call _LABEL_7051B_
		call _LABEL_70AFD_
		or $F0
		out (Port_PSG), a
		ret
	
+:	
		ld e, (ix+3)
		ld d, (ix+4)
-:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, +
		cp $80
		jp c, _LABEL_705D1_
		call ++
		ld a, (de)
		inc de
		cp $80
		jp c, _LABEL_705D1_
		dec de
		ld a, (ix+21)
		ld (ix+10), a
		jp _LABEL_705E1_
	
	; Data from 709D6 to 709D9 (4 bytes)
	.db $1B $C3 $E1 $85
	
+:	
		ld hl, +	; Overriding return address
		jp _LABEL_70674_
	
+:	
		inc de
		jp -
	
++:	
		bit 3, a
		jr nz, +
		bit 5, a
		jr nz, ++
		bit 1, a
		jr nz, ++
		bit 0, a
		jr nz, +++
		bit 2, a
		jr nz, +++
		bit 2, (ix+0)
		ret nz
		ld (ix+7), $00
		ld a, $FF
		out (Port_PSG), a
		ret
	
+:	
		ex af, af'
		ld a, $02
		ld b, $04
		jr ++++
	
++:	
		ld c, $04
		bit 0, a
		jr nz, +
		ld c, $03
+:	
		ex af, af'
		ld a, c
		ld b, $05
		jr ++++
	
+++:	
		ex af, af'
		ld a, $01
		ld b, $06
++++:	
		ld (ix+7), a
		ex af, af'
		bit 2, a
		jr z, +
		dec b
		dec b
+:	
		ld (ix+8), b
		ret
	
_LABEL_70A2E_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		call z, _LABEL_70569_
		ld (_RAM_DE0C_), a
		cp $80
		jp z, +++
		bit 5, (ix+0)
		jp z, +++
		exx
		ld (hl), $80
		exx
		ld a, (ix+18)
		bit 7, a
		jr z, +
		add a, (ix+14)
		jr c, ++
		dec (ix+15)
		jr ++
	
+:	
		add a, (ix+14)
		jr nc, ++
		inc (ix+15)
++:	
		ld (ix+14), a
+++:	
		bit 2, (ix+0)
		ret nz
		ld a, (ix+19)
		cp $1F
		ret z
		bit 0, (ix+0)
		jr z, +
		ld a, (_RAM_DE0C_)
		cp $06
		jr nz, +
		res 0, (ix+0)
_LABEL_70A85_:	
		ld a, $1F
		ld (ix+19), a
		add a, (ix+1)
		out (Port_PSG), a
		ret
	
+:	
		ld a, (ix+19)
		cp $FF
		jp z, +
		ld a, (ix+7)
		dec a
		jp m, +
		ld hl, _DATA_72C6A_
		call _LABEL_7051B_
		call _LABEL_70AFD_
		or (ix+1)
		add a, $10
		out (Port_PSG), a
+:	
		ld a, (_RAM_DE0C_)
		or a
		jp m, +
		bit 7, (ix+20)
		ret nz
		ld a, (ix+6)
		dec a
		jp p, ++
		ret
	
+:	
		ld a, (ix+6)
		dec a
++:	
		ld l, (ix+14)
		ld h, (ix+15)
		jp m, +
		ex de, hl
		ld hl, _DATA_72CED_
		call _LABEL_7051B_
		call _LABEL_70528_
+:	
		bit 6, (ix+0)
		ret nz
		ld a, (ix+1)
		cp $E0
		jr nz, _LABEL_70AE8_
		ld a, $C0
_LABEL_70AE8_:	
		ld c, a
		ld a, l
		and $0F
		or c
		out (Port_PSG), a
		ld a, l
		and $F0
		or h
		rrca
		rrca
		rrca
		rrca
		out (Port_PSG), a
		ret
	
-:	
		ld (ix+12), a
_LABEL_70AFD_:	
		push hl
		ld c, (ix+12)
		ld b, $00
		add hl, bc
		ld c, l
		ld b, h
		pop hl
		ld a, (bc)
		bit 7, a
		jr z, ++++
		cp $82
		jr z, +
		cp $81
		jr z, +++
		cp $80
		jr z, ++
		inc bc
		ld a, (bc)
		jr -
	
+:	
		pop hl
		jp _LABEL_70A85_
	
++:	
		xor a
		jr -
	
+++:	
		ld (ix+19), $FF
		pop hl
		ret
	
++++:	
		inc (ix+12)
		add a, (ix+8)
		bit 4, a
		ret z
		ld a, $0F
		ret
	
_LABEL_70B35_:	
		ld a, (ix+8)
		and $0F
		or (ix+1)
		add a, $10
		out (Port_PSG), a
		ret
	
	; Data from 70B42 to 70BD3 (146 bytes)
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
	
; Data from 70BD4 to 70C68 (149 bytes)	
_DATA_70BD4_:	
	.db $00 $00 $57 $11 $6B $11 $81 $11 $98 $11 $B0 $11 $CA $11 $E5 $11
	.db $01 $13 $10 $13 $20 $13 $31 $13 $43 $13 $57 $13 $6B $13 $81 $13
	.db $98 $13 $B0 $13 $CA $13 $E5 $13 $01 $15 $10 $15 $20 $15 $31 $15
	.db $43 $15 $57 $15 $6B $15 $81 $15 $98 $15 $B0 $15 $CA $15 $E5 $15
	.db $01 $17 $10 $17 $20 $17 $31 $17 $43 $17 $57 $17 $6B $17 $81 $17
	.db $98 $17 $B0 $17 $CA $17 $E5 $17 $01 $19 $10 $19 $20 $19 $31 $19
	.db $43 $19 $57 $19 $6B $19 $81 $19 $98 $19 $B0 $19 $CA $19 $E5 $19
	.db $01 $1B $10 $1B $20 $1B $31 $1B $43 $1B $57 $1B $6B $1B $81 $1B
	.db $98 $1B $B0 $1B $CA $1B $E5 $1B $01 $1D $10 $1D $20 $1D $31 $1D
	.db $43 $1D $FF $FF $02
	
; 1st entry of Pointer Table from 72053 (indexed by unknown)	
; Data from 70C69 to 70D4D (229 bytes)	
_DATA_70C69_:	
	.db $80 $12 $B6 $06 $B6 $2A $F8 $2A $8D $BA $36 $80 $2A $B6 $30 $F8
	.db $2A $8D $BA $30 $80 $30 $B2 $24 $B3 $06 $B5 $F7 $00 $02 $7F $8C
	.db $B5 $18 $B3 $12 $AE $06 $B3 $12 $B2 $06 $AE $0C $B0 $0C $B2 $24
	.db $B3 $06 $B5 $F7 $00 $02 $97 $8C $B5 $12 $B3 $06 $BA $12 $B9 $06
	.db $BA $0C $B9 $0C $B7 $0C $B9 $BA $36 $80 $18 $F8 $3A $8D $1E $B2
	.db $06 $B5 $BA $24 $B2 $06 $B5 $06 $BA $1E $F8 $3A $8D $80 $30 $80
	.db $36 $F8 $45 $8D $B8 $06 $06 $06 $09 $B7 $BA $3C $F8 $45 $8D $B3
	.db $0C $B2 $06 $B3 $0C $B5 $06 $B2 $0C $AE $2A $80 $1E $B0 $06 $B1
	.db $AE $B5 $12 $B3 $18 $AC $06 $06 $B1 $B0 $AE $18 $AC $03 $AA $A9
	.db $12 $A7 $0C $A9 $06 $AC $AE $24 $B0 $06 $B1 $AE $B3 $0C $AE $06
	.db $B5 $0C $AE $B6 $06 $B8 $B5 $06 $06 $BA $0C $BC $06 $BD $BA $0C
	.db $06 $C1 $0C $BF $BD $06 $BA $36 $C1 $12 $BF $42 $80 $0C $F6 $6D
	.db $8C $B8 $30 $BA $BE $03 $BF $BE $06 $BA $0C $B5 $18 $B6 $30 $B8
	.db $F9 $BC $0C $BE $06 $BC $0C $BA $06 $80 $24 $F9 $B8 $06 $06 $06
	.db $09 $B7 $B5 $3C $F9
	
; 1st entry of Pointer Table from 7205C (indexed by unknown)	
; Data from 70D4E to 71164 (1047 bytes)	
_DATA_70D4E_:	
	.incbin "data/File42_70D4E_71164.dat"
	
; 1st entry of Pointer Table from 720AF (indexed by unknown)	
; Data from 71165 to 711B7 (83 bytes)	
_DATA_71165_:	
	.db $80 $0E $9D $04 $F8 $9A $91 $9D $04 $F8 $9A $91 $A2 $04 $96 $02
	.db $91 $93 $94 $80 $93 $80 $96 $80 $04 $93 $02 $94 $99 $9A $96 $04
	.db $96 $02 $91 $93 $94 $93 $80 $94 $0E $80 $02 $9D $04 $F8 $9A $91
	.db $9D $04 $F6 $69 $91 $9D $02 $98 $9A $9B $80 $9A $80 $9D $80 $04
	.db $9A $02 $9B $A0 $A1 $9D $04 $9D $02 $98 $9A $9B $9A $80 $9B $0E
	.db $80 $02 $F9
	
; 1st entry of Pointer Table from 720B8 (indexed by unknown)	
; Data from 711B8 to 71228 (113 bytes)	
_DATA_711B8_:	
	.db $80 $0E $9D $04 $F8 $F8 $91 $9D $02 $80 $A7 $A6 $A4 $9D $04 $F8
	.db $F8 $91 $9F $02 $9F $A0 $A0 $A1 $AE $04 $F8 $16 $92 $AE $02 $80
	.db $A2 $AC $AB $A9 $A2 $04 $F8 $16 $92 $A1 $02 $A2 $80 $AC $AB $A9
	.db $9D $04 $F8 $F8 $91 $9F $02 $9F $A0 $A0 $9F $9D $04 $F6 $BC $91
	.db $9D $02 $9D $80 $9D $9D $9D $9D $04 $A9 $02 $80 $9D $A7 $A6 $A4
	.db $9D $04 $9D $02 $9D $80 $9D $9D $9D $9D $04 $9D $02 $F9 $AE $02
	.db $A2 $80 $AE $A2 $A2 $A2 $04 $F9 $80 $0E $A9 $06 $A9 $04 $F6 $24
	.db $92
	
; 1st entry of Pointer Table from 7210B (indexed by unknown)	
; Data from 71229 to 7132D (261 bytes)	
_DATA_71229_:	
	.db $F5 $0D $C0 $AE $02 $B8 $BA $AE $B5 $B8 $AE $B3 $B5 $AE $B1 $B3
	.db $AE $B1 $B0 $AC $F7 $00 $04 $2C $92 $F5 $0E $A0 $B5 $04 $80 $14
	.db $F8 $E4 $92 $B5 $04 $80 $16 $F8 $E4 $92 $80 $02 $F5 $80 $B0 $E6
	.db $B0 $02 $80 $0A $B0 $02 $B0 $80 $12 $E4 $B0 $02 $80 $04 $B0 $02
	.db $80 $06 $E2 $B0 $04 $80 $02 $B0 $06 $80 $04 $F5 $06 $04 $F8 $FD
	.db $92 $B0 $12 $F8 $FD $92 $B0 $04 $B0 $02 $B1 $B3 $B5 $B3 $B1 $AE
	.db $0C $AC $02 $A9 $B0 $0C $B1 $03 $B3 $B1 $0A $B0 $04 $A9 $10 $AE
	.db $0C $AC $02 $A9 $B0 $0C $B1 $02 $B3 $B1 $04 $B0 $AE $14 $B1 $02
	.db $B5 $02 $BA $12 $80 $0E $F8 $18 $93 $BA $02 $B5 $10 $F8 $18 $93
	.db $B8 $02 $BA $0C $BC $02 $BD $BC $08 $BA $04 $BC $02 $BD $BF $0C
	.db $02 $BC $C1 $12 $80 $0A $BF $02 $BD $BC $08 $BA $04 $BC $02 $BD
	.db $BC $0C $B8 $04 $BA $12 $80 $10 $F6 $29 $92 $B3 $03 $03 $B5 $04
	.db $80 $16 $B5 $03 $03 $B3 $04 $80 $16 $B1 $03 $03 $B3 $04 $80 $16
	.db $B3 $03 $03 $F9 $B5 $10 $80 $0C $A9 $02 $AC $B5 $06 $B3 $0A $80
	.db $10 $B5 $06 $B3 $B6 $0E $B8 $02 $B6 $B5 $0C $B3 $02 $B1 $F9 $B3
	.db $04 $AE $02 $B5 $AE $B6 $AE $B8 $B3 $BA $B3 $BC $B3 $BD $BF $04
	.db $BD $0C $BC $02 $F9
	
; 1st entry of Pointer Table from 72114 (indexed by unknown)	
; Data from 7132E to 71947 (1562 bytes)	
_DATA_7132E_:	
	.incbin "data/File43_7132E_71947.dat"
	
; 1st entry of Pointer Table from 72167 (indexed by unknown)	
; Data from 71948 to 71A05 (190 bytes)	
_DATA_71948_:	
	.db $80 $30 $F5 $0B $10 $F8 $D2 $99 $B5 $03 $B3 $80 $B5 $B8 $80 $BB
	.db $80 $06 $BB $03 $80 $B8 $B3 $B4 $B5 $F8 $D2 $99 $B5 $03 $B3 $80
	.db $B5 $B7 $80 $B8 $80 $06 $B7 $03 $80 $B8 $80 $B9 $80 $E2 $F5 $05
	.db $A0 $B5 $09 $B3 $39 $B2 $06 $B3 $B2 $B3 $03 $B5 $06 $B3 $06 $B2
	.db $03 $AC $27 $AB $03 $AC $AB $A7 $2A $B5 $09 $B3 $39 $B2 $06 $B3
	.db $B2 $B3 $03 $B5 $80 $BA $33 $80 $30 $F7 $00 $02 $75 $99 $F5 $05
	.db $B0 $B6 $2A $B5 $03 $B3 $B5 $1E $B6 $0C $B8 $06 $B6 $03 $B5 $B3
	.db $2A $80 $30 $B6 $24 $80 $06 $B5 $03 $B3 $B8 $24 $BA $06 $BD $BF
	.db $30 $80 $F7 $01 $02 $75 $99 $F6 $4A $99 $80 $03 $B5 $B3 $80 $B5
	.db $80 $B3 $80 $B5 $80 $B7 $B8 $80 $06 $B5 $09 $B5 $03 $B3 $80 $B5
	.db $B8 $80 $BB $80 $06 $BB $03 $80 $B8 $B3 $80 $B5 $06 $B5 $03 $B3
	.db $80 $B5 $80 $B3 $80 $B5 $80 $B7 $B8 $80 $06 $B5 $09 $F9
	
; 1st entry of Pointer Table from 72170 (indexed by unknown)	
; Data from 71A06 to 71C49 (580 bytes)	
_DATA_71A06_:	
	.db $80 $30 $F8 $EA $9A $9D $03 $9D $06 $9D $03 $9D $06 $A9 $03 $AB
	.db $03 $F8 $EA $9A $9D $03 $AE $AC $AA $AC $AB $A9 $A7 $F8 $EA $9A
	.db $F8 $EA $9A $9D $03 $9D $06 $9D $03 $9D $9D $A7 $A9 $9D $A7 $A4
	.db $A7 $A4 $A2 $A4 $A2 $F8 $EA $9A $9D $03 $9D $06 $9D $03 $9D $06
	.db $A9 $03 $AB $03 $F8 $EA $9A $9D $03 $AE $AC $AA $AC $AB $A9 $A7
	.db $F8 $EA $9A $F8 $EA $9A $F8 $EA $9A $F8 $EA $9A $F8 $EA $9A $F7
	.db $00 $03 $62 $9A $9D $03 $AE $9D $9D $AC $9D $9D $AB $A2 $03 $A2
	.db $06 $A2 $03 $A2 $06 $AC $03 $AE $F7 $00 $02 $73 $9A $A2 $03 $A2
	.db $06 $A2 $03 $A2 $AC $A2 $AE $A2 $A2 $AE $A2 $A2 $AC $AE $AE $F7
	.db $01 $04 $62 $9A $A3 $03 $A3 $AF $A3 $AF $A3 $A3 $A3 $AF $A3 $AF
	.db $A3 $AF $A3 $A3 $AF $A2 $A2 $AE $A2 $AE $A2 $A2 $AE $06 $A2 $03
	.db $AE $A2 $AE $AF $B1 $9D $80 $9D $A9 $9D $A9 $9D $9D $A9 $06 $9D
	.db $03 $A7 $9D $A8 $A9 $9D $A9 $80 $9D $A9 $9D $A7 $9D $9D $A6 $9D
	.db $9D $A7 $9D $A9 $9D $AC $AB $F7 $00 $02 $9A $9A $F7 $02 $02 $62
	.db $9A $F6 $08 $9A $9D $03 $9D $06 $9D $03 $9D $06 $A7 $03 $A9 $F9
	.db $80 $30 $F5 $80 $A0 $80 $03 $AB $AB $80 $AB $AB $80 $AB $80 $AC
	.db $AC $80 $AC $AC $80 $AC $80 $AE $AE $80 $AE $AE $80 $AE $80 $AC
	.db $AC $80 $AC $AC $80 $AC $F7 $00 $04 $F8 $9A $F5 $80 $A0 $B0 $09
	.db $AE $39 $AD $06 $AE $AD $AE $03 $B0 $06 $AE $06 $AD $03 $A7 $27
	.db $A6 $03 $A7 $A6 $A2 $2A $B0 $09 $AE $39 $AD $06 $AE $AD $AE $03
	.db $B0 $80 $B3 $33 $80 $30 $F7 $00 $02 $21 $9B $80 $30 $80 $80 $80
	.db $80 $30 $80 $80 $80 $F7 $01 $02 $21 $9B $F6 $F8 $9A $80 $30 $F5
	.db $08 $A0 $A9 $03 $B0 $B0 $A9 $B0 $B0 $A9 $B0 $A9 $B1 $B1 $A9 $B1
	.db $B1 $A9 $B1 $A9 $B3 $B3 $A9 $B3 $B3 $A9 $B3 $A9 $B1 $B1 $A9 $B1
	.db $B1 $A9 $B1 $F7 $00 $04 $65 $9B $F5 $06 $04 $E5 $80 $18 $B3 $09
	.db $03 $80 $0C $06 $B1 $B3 $09 $03 $80 $18 $80 $B2 $09 $03 $80 $0C
	.db $06 $B0 $B2 $09 $03 $80 $18 $F7 $00 $03 $8E $9B $80 $18 $B3 $09
	.db $03 $80 $0C $06 $B1 $B3 $09 $03 $80 $18 $80 $B2 $09 $03 $80 $0C
	.db $06 $B0 $B2 $09 $03 $80 $0C $FB $09 $00 $FC $01 $A0 $0A $DF $02
	.db $A0 $0A $DF $02 $9D $0A $DC $02 $9D $0A $DC $02 $9A $0A $F6 $02
	.db $9A $0A $F6 $02 $FC $00 $FB $F7 $00 $E3 $AF $2A $AE $03 $AC $AE
	.db $1E $AF $0C $B1 $06 $AF $03 $AE $AC $2A $80 $30 $AF $24 $80 $06
	.db $AE $03 $AC $B1 $24 $B3 $06 $B6 $06 $B8 $30 $80 $12 $E5 $FB $09
	.db $00 $FC $01 $A0 $0A $DF $03 $A0 $0A $DF $03 $A0 $0A $DF $03 $A0
	.db $0A $DF $03 $9D $0A $DC $03 $9D $0A $DC $03 $9A $0A $F6 $03 $9A
	.db $0A $F6 $03 $FC $00 $FB $F7 $00 $80 $06 $F7 $01 $02 $8E $9B $F6
	.db $65 $9B $01 $02
	
; 1st entry of Pointer Table from 721C3 (indexed by unknown)	
; Data from 71C4A to 71CE7 (158 bytes)	
_DATA_71C4A_:	
	.db $A2 $30 $30 $F5 $05 $A0 $A2 $30 $F7 $00 $08 $4D $9C $F5 $80 $10
	.db $B8 $30 $B7 $B5 $AE $F7 $00 $04 $5A $9C $A2 $48 $80 $0C $A0 $09
	.db $A2 $4B $80 $0C $A5 $09 $A7 $4B $80 $0C $A5 $09 $A7 $4B $80 $0C
	.db $A0 $09 $A2 $4B $80 $0C $A0 $09 $A2 $4B $80 $0C $A5 $09 $A7 $4B
	.db $80 $0C $A5 $09 $A7 $4B $80 $0C $A7 $0C $F5 $0E $A0 $80 $0C $B8
	.db $09 $B8 $03 $80 $06 $B8 $03 $B8 $80 $0C $80 $B7 $06 $80 $12 $B5
	.db $06 $80 $80 $0F $B5 $09 $80 $0F $B7 $09 $80 $0F $BA $09 $80 $0C
	.db $BD $03 $BF $09 $80 $0C $B8 $09 $B8 $03 $80 $06 $B8 $03 $B8 $80
	.db $0C $80 $B7 $06 $80 $12 $B5 $06 $80 $80 $0F $B5 $09 $80 $0F $B7
	.db $09 $80 $0F $BA $09 $80 $0C $BD $03 $BF $09 $F6 $4D $9C
	
; 1st entry of Pointer Table from 721CC (indexed by unknown)	
; Data from 71CE8 to 71F0C (549 bytes)	
_DATA_71CE8_:	
	.db $80 $30 $30 $E5 $F8 $43 $9D $F7 $00 $03 $EB $9C $F8 $43 $9D $F7
	.db $00 $03 $F4 $9C $F5 $05 $04 $E4 $A2 $48 $80 $0C $A0 $09 $A2 $4B
	.db $80 $0C $99 $09 $9B $4B $80 $0C $99 $09 $9B $4B $80 $0C $A0 $09
	.db $A2 $4B $80 $0C $A0 $09 $A2 $4B $80 $0C $99 $09 $9B $4B $80 $0C
	.db $99 $09 $9B $4B $80 $0C $9B $09 $A9 $09 $A9 $03 $A9 $F8 $8B $9D
	.db $A9 $06 $A9 $03 $A9 $F8 $8B $9D $F6 $EB $9C $A2 $06 $A2 $03 $A2
	.db $AE $A2 $80 $A2 $A2 $06 $A2 $03 $A2 $AC $A2 $80 $A2 $A2 $06 $A2
	.db $03 $A2 $AE $A2 $80 $A2 $06 $AC $03 $A2 $A2 $A9 $A2 $A0 $A2 $A2
	.db $06 $A2 $03 $A2 $AE $A2 $80 $A2 $A2 $06 $A2 $03 $A2 $AC $A2 $80
	.db $A2 $A2 $06 $A2 $03 $A2 $B8 $BA $A2 $A2 $B6 $B8 $A2 $A2 $B5 $B6
	.db $A0 $06 $F9 $B5 $03 $A9 $80 $A9 $A9 $A9 $A9 $A9 $B5 $A9 $80 $A9
	.db $A7 $06 $A7 $03 $A7 $B3 $A7 $80 $A7 $A5 $B1 $A5 $A5 $B1 $A5 $80
	.db $A5 $A2 $06 $A2 $03 $A2 $A5 $A2 $80 $A2 $A2 $B6 $A2 $A2 $A7 $A2
	.db $80 $A2 $A2 $06 $A2 $03 $A2 $A9 $A2 $80 $A2 $80 $A2 $A2 $A2 $AC
	.db $AE $09 $F9 $80 $30 $80 $15 $E5 $FB $0B $00 $FC $01 $A3 $0A $DF
	.db $03 $80 $00 $00 $03 $A3 $0A $DF $03 $80 $00 $00 $0C $9D $0A $F6
	.db $03 $9D $0A $F6 $03 $FC $00 $FB $F5 $00 $80 $30 $F7 $00 $07 $F2
	.db $9D $E5 $FB $0B $00 $FC $01 $A3 $0A $DF $02 $A3 $0A $DF $02 $A3
	.db $0A $DF $02 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3
	.db $0A $DF $03 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3
	.db $0A $DF $03 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3 $0A $DF $03 $A3
	.db $0A $DF $03 $9D $0A $F6 $03 $9D $0A $F6 $03 $FC $00 $FB $F5 $00
	.db $F5 $80 $80 $E3 $B1 $30 $B0 $AE $2A $F5 $80 $10 $E2 $B8 $06 $BA
	.db $30 $F7 $00 $04 $48 $9E $F5 $0C $B0 $F8 $8F $9E $F8 $B4 $9E $80
	.db $0C $F8 $B4 $9E $80 $0C $F8 $8F $9E $F8 $B4 $9E $80 $0C $F8 $B4
	.db $9E $F5 $80 $70 $BF $09 $E3 $C1 $0F $F8 $D4 $9E $F5 $80 $70 $C1
	.db $0C $F8 $D4 $9E $F6 $F2 $9D $BD $06 $C1 $03 $BC $06 $BF $06 $BA
	.db $06 $BD $06 $BA $03 $BC $06 $BA $03 $B8 $BD $06 $C1 $03 $BC $06
	.db $BF $06 $BD $03 $80 $18 $F7 $00 $02 $8F $9E $F9 $BF $06 $C2 $03
	.db $BD $06 $C1 $06 $BC $06 $BF $06 $BA $03 $BD $06 $BC $03 $BA $BF
	.db $06 $C2 $03 $BD $06 $C1 $06 $BF $03 $80 $0C $F9 $F5 $80 $80 $C1
	.db $09 $C1 $03 $80 $06 $C1 $03 $C1 $80 $0C $F5 $80 $70 $BF $0C $F5
	.db $80 $80 $BF $06 $80 $BD $0C $BD $06 $80 $F5 $80 $70 $BA $0F $F5
	.db $80 $80 $BD $09 $80 $0F $BF $09 $80 $0F $C1 $09 $80 $0C $C4 $03
	.db $C6 $09 $F9 $01 $01
	
; 1st entry of Pointer Table from 7221F (indexed by unknown)	
; Data from 71F0D to 71F48 (60 bytes)	
_DATA_71F0D_:	
	.db $80 $1E $A9 $04 $A9 $02 $A9 $A9 $B0 $08 $A9 $02 $A9 $A9 $B0 $A9
	.db $B0 $04 $F8 $38 $9F $A9 $04 $A9 $02 $A9 $A9 $B2 $08 $A9 $02 $A9
	.db $A9 $B2 $A9 $B2 $04 $F8 $38 $9F $F6 $0F $9F $A9 $04 $A9 $02 $A9
	.db $A9 $B1 $08 $A9 $02 $A9 $A9 $B1 $A9 $B1 $04 $F9
	
; 1st entry of Pointer Table from 72228 (indexed by unknown)	
; Data from 71F49 to 72017 (207 bytes)	
_DATA_71F49_:	
	.db $80 $20 $85 $06 $8C $91 $04 $85 $06 $8C $06 $91 $04 $85 $06 $8D
	.db $91 $04 $85 $06 $8D $06 $91 $04 $85 $06 $8E $91 $04 $85 $06 $8E
	.db $06 $91 $04 $85 $06 $8D $91 $04 $85 $06 $8D $06 $91 $04 $F6 $4B
	.db $9F $FB $0F $08 $FC $01 $9D $0A $DC $02 $80 $00 $00 $02 $FC $00
	.db $F7 $00 $05 $7D $9F $FB $F1 $F8 $80 $0A $B5 $04 $B7 $02 $BC $F6
	.db $9F $9F $B5 $02 $B7 $BC $B5 $02 $B7 $BC $B5 $B7 $BC $B5 $B7 $BC
	.db $B5 $B7 $BC $B5 $B7 $BD $F8 $FD $9F $B5 $B7 $BE $F8 $06 $A0 $B5
	.db $B7 $BE $F8 $FD $9F $B5 $B7 $BD $B5 $B7 $BC $F8 $0F $A0 $B5 $B7
	.db $BD $F8 $FD $9F $B5 $B7 $BD $F8 $06 $A0 $B5 $B7 $BE $B5 $B7 $BD
	.db $F8 $FD $9F $B5 $B7 $BC $F8 $0F $A0 $B5 $B7 $BC $F8 $FD $9F $B5
	.db $B7 $BD $B5 $B7 $BE $F8 $06 $A0 $B5 $B7 $BD $F8 $FD $9F $B5 $B7
	.db $BD $F6 $9B $9F $B5 $B7 $BD $F7 $00 $04 $FD $9F $F9 $B5 $B7 $BE
	.db $F7 $00 $04 $06 $A0 $F9 $B5 $B7 $BC $F7 $00 $04 $0F $A0 $F9
	
; 1st entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72018 to 7201B (4 bytes)	
_DATA_72018_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 7201C to 7201F (2 entries, indexed by unknown)
	.dw _DATA_70C69_ _DATA_F4_
	
	; Data from 72020 to 7204E (47 bytes)
	.db $70 $03 $80 $11 $01 $4E $8D $F4 $00 $F0 $05 $80 $12 $01 $0D $8F
	.db $F4 $00 $70 $04 $80 $13 $01 $CE $90 $F4 $00 $A0 $04 $80 $14 $01
	.db $68 $8C $F4 $00 $B0 $06 $80 $00 $01 $41 $A2 $00 $00 $00 $00
	
; 1st entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 7204F to 72052 (4 bytes)	
_DATA_7204F_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 72053 to 72054 (1 entries, indexed by unknown)
	.dw _DATA_70C69_
	
	; Data from 72055 to 7205B (7 bytes)
	.db $EB $00 $05 $02 $80 $A0 $01
	
	; Pointer Table from 7205C to 7205D (1 entries, indexed by unknown)
	.dw _DATA_70D4E_
	
	; Data from 7205E to 72073 (22 bytes)
	.db $EB $00 $08 $06 $80 $C0 $01 $0D $8F $EB $00 $05 $05 $80 $E0 $01
	.db $41 $A2 $00 $00 $00 $00
	
; 2nd entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72074 to 72077 (4 bytes)	
_DATA_72074_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 72078 to 7207D (3 entries, indexed by unknown)
	.dw _DATA_71165_ _DATA_C_ $0110
	
	; Data from 7207E to 720AA (45 bytes)
	.db $80 $11 $01 $B8 $91 $F4 $00 $F0 $05 $80 $12 $01 $20 $92 $00 $00
	.db $20 $06 $80 $13 $01 $63 $91 $00 $00 $10 $04 $80 $14 $01 $64 $91
	.db $00 $00 $10 $05 $80 $00 $01 $DD $A4 $00 $00 $00 $00
	
; 2nd entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 720AB to 720AE (4 bytes)	
_DATA_720AB_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 720AF to 720B2 (2 entries, indexed by unknown)
	.dw _DATA_71165_ $00FD
	
	; Data from 720B3 to 720B7 (5 bytes)
	.db $06 $02 $80 $A0 $01
	
	; Pointer Table from 720B8 to 720BB (2 entries, indexed by unknown)
	.dw _DATA_711B8_ $00FD
	
	; Data from 720BC to 720CF (20 bytes)
	.db $0D $05 $80 $C0 $01 $20 $92 $FD $00 $0C $05 $80 $E0 $01 $DD $A4
	.db $00 $00 $00 $00
	
; 3rd entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 720D0 to 720D3 (4 bytes)	
_DATA_720D0_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 720D4 to 720D9 (3 entries, indexed by unknown)
	.dw _DATA_71229_ $00F8 _DATA_2C0_
	
	; Data from 720DA to 72106 (45 bytes)
	.db $80 $11 $01 $2E $93 $F8 $00 $F0 $04 $80 $12 $01 $2C $96 $F8 $00
	.db $B0 $04 $80 $13 $01 $D3 $94 $F8 $00 $A0 $04 $80 $14 $01 $85 $98
	.db $F8 $00 $B0 $04 $80 $00 $01 $12 $A5 $00 $00 $00 $00
	
; 3rd entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72107 to 7210A (4 bytes)	
_DATA_72107_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 7210B to 7210C (1 entries, indexed by unknown)
	.dw _DATA_71229_
	
	; Data from 7210D to 72113 (7 bytes)
	.db $F0 $00 $0D $02 $80 $A0 $01
	
	; Pointer Table from 72114 to 72115 (1 entries, indexed by unknown)
	.dw _DATA_7132E_
	
	; Data from 72116 to 7212B (22 bytes)
	.db $F0 $00 $0D $05 $80 $C0 $01 $2C $96 $F0 $00 $0D $04 $80 $E0 $01
	.db $12 $A5 $00 $00 $00 $00
	
; 4th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 7212C to 7212F (4 bytes)	
_DATA_7212C_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 72130 to 72133 (2 entries, indexed by unknown)
	.dw _DATA_71948_ $00FC
	
	; Data from 72134 to 72162 (47 bytes)
	.db $10 $02 $80 $11 $01 $06 $9A $F0 $00 $F0 $05 $80 $12 $01 $63 $9B
	.db $FC $00 $A0 $04 $80 $13 $01 $F6 $9A $FC $00 $A0 $05 $80 $14 $01
	.db $48 $99 $FC $00 $10 $06 $80 $00 $01 $64 $A6 $00 $00 $00 $00
	
; 4th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72163 to 72166 (4 bytes)	
_DATA_72163_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 72167 to 72168 (1 entries, indexed by unknown)
	.dw _DATA_71948_
	
	; Data from 72169 to 7216F (7 bytes)
	.db $EC $00 $0B $02 $80 $A0 $01
	
	; Pointer Table from 72170 to 72171 (1 entries, indexed by unknown)
	.dw _DATA_71A06_
	
	; Data from 72172 to 72187 (22 bytes)
	.db $EC $00 $0E $05 $80 $C0 $01 $63 $9B $EC $00 $08 $05 $80 $E0 $01
	.db $4D $A6 $00 $00 $00 $00
	
; 5th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72188 to 7218B (4 bytes)	
_DATA_72188_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 7218C to 72191 (3 entries, indexed by unknown)
	.dw _DATA_71C4A_ $00FC _DATA_2A0_
	
	; Data from 72192 to 721BE (45 bytes)
	.db $80 $11 $01 $E8 $9C $F0 $00 $F0 $05 $80 $12 $01 $CB $9D $FC $00
	.db $A0 $03 $80 $13 $01 $48 $9C $FC $00 $10 $04 $80 $14 $01 $49 $9C
	.db $FC $00 $10 $05 $80 $00 $01 $0F $A7 $00 $00 $00 $00
	
; 5th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 721BF to 721C2 (4 bytes)	
_DATA_721BF_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 721C3 to 721C4 (1 entries, indexed by unknown)
	.dw _DATA_71C4A_
	
	; Data from 721C5 to 721CB (7 bytes)
	.db $EA $00 $05 $01 $80 $A0 $01
	
	; Pointer Table from 721CC to 721CD (1 entries, indexed by unknown)
	.dw _DATA_71CE8_
	
	; Data from 721CE to 721E3 (22 bytes)
	.db $EA $00 $0E $04 $80 $C0 $01 $CB $9D $EA $00 $05 $03 $80 $E0 $01
	.db $0F $A7 $00 $00 $00 $00
	
; 6th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 721E4 to 721E7 (4 bytes)	
_DATA_721E4_:	
	.db $06 $80 $10 $01
	
	; Pointer Table from 721E8 to 721EB (2 entries, indexed by unknown)
	.dw _DATA_71F0D_ _DATA_F4_
	
	; Data from 721EC to 7221A (47 bytes)
	.db $10 $02 $80 $11 $01 $49 $9F $00 $00 $E0 $03 $80 $12 $01 $7A $9F
	.db $F4 $00 $70 $05 $80 $13 $01 $0B $9F $F4 $00 $60 $07 $80 $14 $01
	.db $0C $9F $F4 $00 $80 $08 $80 $00 $01 $DC $A8 $00 $00 $00 $00
	
; 6th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 7221B to 7221E (4 bytes)	
_DATA_7221B_:	
	.db $04 $80 $80 $01
	
	; Pointer Table from 7221F to 72220 (1 entries, indexed by unknown)
	.dw _DATA_71F0D_
	
	; Data from 72221 to 72227 (7 bytes)
	.db $E4 $00 $05 $02 $80 $A0 $01
	
	; Pointer Table from 72228 to 72233 (6 entries, indexed by unknown)
	.dw _DATA_71F49_ $00FC _DATA_30E_ _RAM_C080_ _DATA_7A01_ _RAM_E49F_
	
	; Data from 72234 to 72913 (1760 bytes)
	.incbin "data/File44_72234_72913.dat"
	
; 7th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72914 to 72917 (4 bytes)	
_DATA_72914_:	
	.db $03 $A8 $10 $01
	
	; Pointer Table from 72918 to 72919 (1 entries, indexed by unknown)
	.dw _DATA_7294C_
	
	; Data from 7291A to 7292F (22 bytes)
	.db $00 $00 $D3 $00 $A8 $11 $01 $5F $A9 $00 $00 $C3 $01 $A8 $12 $01
	.db $72 $A9 $00 $00 $03 $00
	
; 7th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72930 to 72933 (4 bytes)	
_DATA_72930_:	
	.db $03 $A8 $80 $01
	
	; Pointer Table from 72934 to 72935 (1 entries, indexed by unknown)
	.dw _DATA_7298D_
	
	; Data from 72936 to 7293C (7 bytes)
	.db $00 $00 $00 $01 $A8 $A0 $01
	
	; Pointer Table from 7293D to 7293E (1 entries, indexed by unknown)
	.dw _DATA_729A1_
	
	; Data from 7293F to 7294B (13 bytes)
	.db $D0 $00 $00 $01 $A0 $E0 $01 $B7 $A9 $F6 $00 $00 $00
	
; Data from 7294C to 7298C (65 bytes)	
_DATA_7294C_:	
	.db $05 $50 $08 $0F $FB $05 $02 $FE $03 $06 $E0 $95 $01 $04 $50 $0D
	.db $02 $F2 $00 $03 $80 $10 $03 $01 $60 $10 $02 $F7 $00 $03 $5F $A9
	.db $03 $50 $51 $03 $F2 $01 $FF $33 $32 $06 $07 $91 $F4 $A1 $04 $05
	.db $82 $10 $02 $05 $02 $50 $03 $F7 $00 $03 $72 $A9 $05 $80 $10 $05
	.db $F2
	
; 1st entry of Pointer Table from 72934 (indexed by unknown)	
; Data from 7298D to 729A0 (20 bytes)	
_DATA_7298D_:	
	.db $01 $90 $04 $05 $F7 $00 $03 $8D $A9 $FB $01 $02 $FE $03 $01 $E0
	.db $05 $02 $F2 $00
	
; 1st entry of Pointer Table from 7293D (indexed by unknown)	
; Data from 729A1 to 729D0 (48 bytes)	
_DATA_729A1_:	
	.db $02 $00 $50 $04 $01 $80 $10 $05 $02 $00 $30 $03 $02 $50 $50 $02
	.db $02 $80 $30 $02 $F2 $01 $F3 $07 $C0 $FE $03 $03 $BF $09 $FD $02
	.db $F7 $00 $03 $B7 $A9 $FB $01 $03 $FE $01 $AC $03 $F3 $09 $F2 $03
	
; 8th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 729D1 to 729D4 (4 bytes)	
_DATA_729D1_:	
	.db $03 $A8 $10 $01
	
	; Pointer Table from 729D5 to 729D6 (1 entries, indexed by unknown)
	.dw _DATA_72A09_
	
	; Data from 729D7 to 729EC (22 bytes)
	.db $00 $00 $D3 $00 $A8 $11 $01 $2A $AA $14 $00 $F3 $00 $A8 $12 $01
	.db $40 $AA $00 $00 $03 $00
	
; 8th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 729ED to 729F0 (4 bytes)	
_DATA_729ED_:	
	.db $03 $A8 $80 $01
	
	; Pointer Table from 729F1 to 729F2 (1 entries, indexed by unknown)
	.dw _DATA_72A5B_
	
	; Data from 729F3 to 729F9 (7 bytes)
	.db $00 $00 $00 $00 $A8 $A0 $01
	
	; Pointer Table from 729FA to 729FB (1 entries, indexed by unknown)
	.dw _DATA_72A78_
	
	; Data from 729FC to 72A08 (13 bytes)
	.db $00 $00 $09 $00 $A8 $E0 $01 $82 $AA $00 $00 $00 $00
	
; Data from 72A09 to 72A5A (82 bytes)	
_DATA_72A09_:	
	.db $04 $C0 $12 $10 $03 $40 $53 $09 $04 $20 $10 $03 $04 $80 $F2 $0E
	.db $F7 $00 $02 $0D $AA $FE $02 $02 $92 $6E $02 $02 $03 $FD $02 $F2
	.db $00 $04 $F0 $60 $07 $05 $F0 $E0 $05 $04 $0F $F0 $03 $05 $40 $20
	.db $05 $05 $00 $20 $0A $F2 $01 $FF $30 $32 $08 $07 $F6 $20 $02 $86
	.db $02 $00 $15 $0A $02 $80 $25 $16 $03 $1D $35 $04 $F7 $00 $07 $51
	.db $AA $F2
	
; 1st entry of Pointer Table from 729F1 (indexed by unknown)	
; Data from 72A5B to 72A77 (29 bytes)	
_DATA_72A5B_:	
	.db $02 $C0 $12 $10 $02 $88 $6C $04 $02 $79 $0D $06 $F7 $00 $03 $5F
	.db $AA $FE $02 $02 $92 $6E $02 $02 $03 $FD $02 $F2 $00
	
; 1st entry of Pointer Table from 729FA (indexed by unknown)	
; Data from 72A78 to 72A95 (30 bytes)	
_DATA_72A78_:	
	.db $02 $40 $FD $35 $02 $10 $FF $05 $F2 $01 $F3 $07 $00 $30 $25 $05
	.db $00 $20 $15 $16 $00 $1D $35 $03 $00 $10 $02 $25 $F2 $03
	
; 9th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72A96 to 72A99 (4 bytes)	
_DATA_72A96_:	
	.db $02 $A8 $14 $01
	
	; Pointer Table from 72A9A to 72A9D (2 entries, indexed by unknown)
	.dw _DATA_72ABC_ $00FF
	
	; Data from 72A9E to 72AA8 (11 bytes)
	.db $73 $00 $A8 $15 $01 $C2 $AA $FF $00 $03 $00
	
; 9th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72AA9 to 72AAC (4 bytes)	
_DATA_72AA9_:	
	.db $02 $A8 $A0 $01
	
	; Pointer Table from 72AAD to 72AAE (1 entries, indexed by unknown)
	.dw _DATA_72ABC_
	
	; Data from 72AAF to 72AB5 (7 bytes)
	.db $00 $00 $07 $04 $A8 $E0 $01
	
	; Pointer Table from 72AB6 to 72AB7 (1 entries, indexed by unknown)
	.dw _DATA_72ACB_
	
	; Data from 72AB8 to 72ABB (4 bytes)
	.db $00 $00 $00 $00
	
; 1st entry of Pointer Table from 72AAD (indexed by unknown)	
; Data from 72ABC to 72ACA (15 bytes)	
_DATA_72ABC_:	
	.db $00 $0F $01 $50 $F2 $01 $FF $69 $65 $0B $07 $D0 $F0 $02 $FF
	
; 1st entry of Pointer Table from 72AB6 (indexed by unknown)	
; Data from 72ACB to 72AD2 (8 bytes)	
_DATA_72ACB_:	
	.db $F3 $07 $00 $20 $06 $50 $F2 $03
	
; 10th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72AD3 to 72AD6 (4 bytes)	
_DATA_72AD3_:	
	.db $01 $A8 $15 $01
	
	; Pointer Table from 72AD7 to 72AD8 (1 entries, indexed by unknown)
	.dw _DATA_72AE7_
	
	; Data from 72AD9 to 72ADC (4 bytes)
	.db $00 $00 $03 $00
	
; 10th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72ADD to 72AE0 (4 bytes)	
_DATA_72ADD_:	
	.db $01 $88 $C0 $01
	
	; Pointer Table from 72AE1 to 72AE2 (1 entries, indexed by unknown)
	.dw _DATA_72AF5_
	
	; Data from 72AE3 to 72AE6 (4 bytes)
	.db $00 $00 $00 $00
	
; Data from 72AE7 to 72AF4 (14 bytes)	
_DATA_72AE7_:	
	.db $FF $32 $42 $03 $06 $43 $F3 $6F $37 $05 $F3 $80 $04 $F2
	
; 1st entry of Pointer Table from 72AE1 (indexed by unknown)	
; Data from 72AF5 to 72AFF (11 bytes)	
_DATA_72AF5_:	
	.db $03 $7F $01 $03 $05 $01 $03 $FF $01 $F2 $03
	
; 11th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72B00 to 72B03 (4 bytes)	
_DATA_72B00_:	
	.db $01 $A8 $15 $01
	
	; Pointer Table from 72B04 to 72B05 (1 entries, indexed by unknown)
	.dw _DATA_72B14_
	
	; Data from 72B06 to 72B09 (4 bytes)
	.db $CB $00 $03 $00
	
; 11th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72B0A to 72B0D (4 bytes)	
_DATA_72B0A_:	
	.db $01 $A8 $E0 $01
	
	; Pointer Table from 72B0E to 72B11 (2 entries, indexed by unknown)
	.dw _DATA_72B22_ _DATA_D_
	
	; Data from 72B12 to 72B13 (2 bytes)
	.db $00 $00
	
; Data from 72B14 to 72B21 (14 bytes)	
_DATA_72B14_:	
	.db $FF $70 $31 $0B $07 $D0 $F0 $02 $FF $02 $C7 $F0 $1C $F2
	
; 1st entry of Pointer Table from 72B0E (indexed by unknown)	
; Data from 72B22 to 72B29 (8 bytes)	
_DATA_72B22_:	
	.db $F3 $07 $00 $06 $01 $1C $F2 $03
	
; 12th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72B2A to 72B2D (4 bytes)	
_DATA_72B2A_:	
	.db $02 $88 $14 $01
	
	; Pointer Table from 72B2E to 72B2F (1 entries, indexed by unknown)
	.dw _DATA_72B50_
	
	; Data from 72B30 to 72B3C (13 bytes)
	.db $01 $00 $30 $00 $88 $15 $01 $50 $AB $00 $00 $30 $00
	
; 12th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72B3D to 72B40 (4 bytes)	
_DATA_72B3D_:	
	.db $02 $88 $A0 $01
	
	; Pointer Table from 72B41 to 72B44 (2 entries, indexed by unknown)
	.dw _DATA_72B59_ $0100
	
	; Data from 72B45 to 72B49 (5 bytes)
	.db $02 $00 $88 $C0 $01
	
	; Pointer Table from 72B4A to 72B4B (1 entries, indexed by unknown)
	.dw _DATA_72B59_
	
	; Data from 72B4C to 72B4F (4 bytes)
	.db $00 $00 $02 $00
	
; Data from 72B50 to 72B58 (9 bytes)	
_DATA_72B50_:	
	.db $00 $9C $05 $F7 $00 $06 $50 $AB $F2
	
; 1st entry of Pointer Table from 72B4A (indexed by unknown)	
; Data from 72B59 to 72B62 (10 bytes)	
_DATA_72B59_:	
	.db $00 $40 $05 $F7 $00 $06 $59 $AB $F2 $80
	
; 13th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72B63 to 72B66 (4 bytes)	
_DATA_72B63_:	
	.db $02 $A8 $14 $01
	
	; Pointer Table from 72B67 to 72B6A (2 entries, indexed by unknown)
	.dw _DATA_72B89_ $00F6
	
	; Data from 72B6B to 72B75 (11 bytes)
	.db $13 $00 $A8 $15 $01 $9B $AB $29 $00 $03 $00
	
; 13th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72B76 to 72B79 (4 bytes)	
_DATA_72B76_:	
	.db $02 $A8 $A0 $01
	
	; Pointer Table from 72B7A to 72B7B (1 entries, indexed by unknown)
	.dw _DATA_72B89_
	
	; Data from 72B7C to 72B82 (7 bytes)
	.db $00 $00 $07 $04 $A8 $E0 $01
	
	; Pointer Table from 72B83 to 72B84 (1 entries, indexed by unknown)
	.dw _DATA_72BA4_
	
	; Data from 72B85 to 72B88 (4 bytes)
	.db $00 $00 $00 $00
	
; 1st entry of Pointer Table from 72B7A (indexed by unknown)	
; Data from 72B89 to 72BA3 (27 bytes)	
_DATA_72B89_:	
	.db $01 $B0 $FF $08 $00 $20 $00 $40 $00 $13 $00 $18 $00 $11 $00 $18
	.db $F2 $FF $FF $75 $34 $0B $07 $D0 $F0 $02 $FF
	
; 1st entry of Pointer Table from 72B83 (indexed by unknown)	
; Data from 72BA4 to 72BB3 (16 bytes)	
_DATA_72BA4_:	
	.db $F3 $07 $00 $F4 $FD $20 $00 $8B $FF $40 $00 $39 $FD $18 $F2 $03
	
; 14th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72BB4 to 72BB7 (4 bytes)	
_DATA_72BB4_:	
	.db $02 $88 $14 $01
	
	; Pointer Table from 72BB8 to 72BB9 (1 entries, indexed by unknown)
	.dw _DATA_72BDA_
	
	; Data from 72BBA to 72BC6 (13 bytes)
	.db $00 $00 $03 $03 $88 $15 $01 $E9 $AB $00 $00 $03 $03
	
; 14th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72BC7 to 72BCA (4 bytes)	
_DATA_72BC7_:	
	.db $02 $88 $A0 $01
	
	; Pointer Table from 72BCB to 72BCC (1 entries, indexed by unknown)
	.dw _DATA_72BE1_
	
	; Data from 72BCD to 72BD3 (7 bytes)
	.db $00 $00 $05 $00 $88 $C0 $01
	
	; Pointer Table from 72BD4 to 72BD5 (1 entries, indexed by unknown)
	.dw _DATA_72BF9_
	
	; Data from 72BD6 to 72BD9 (4 bytes)
	.db $00 $00 $05 $00
	
; Data from 72BDA to 72BE0 (7 bytes)	
_DATA_72BDA_:	
	.db $03 $30 $03 $04 $20 $0A $F2
	
; 1st entry of Pointer Table from 72BCB (indexed by unknown)	
; Data from 72BE1 to 72BF8 (24 bytes)	
_DATA_72BE1_:	
	.db $00 $33 $03 $00 $2D $08 $F2 $01 $FF $32 $47 $05 $05 $F1 $84 $A8
	.db $FF $03 $00 $0C $05 $20 $0B $F2
	
; 1st entry of Pointer Table from 72BD4 (indexed by unknown)	
; Data from 72BF9 to 72C00 (8 bytes)	
_DATA_72BF9_:	
	.db $00 $34 $03 $00 $2B $08 $F2 $02
	
; 15th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72C01 to 72C04 (4 bytes)	
_DATA_72C01_:	
	.db $01 $88 $15 $02
	
	; Pointer Table from 72C05 to 72C06 (1 entries, indexed by unknown)
	.dw _DATA_72C15_
	
	; Data from 72C07 to 72C0A (4 bytes)
	.db $05 $00 $30 $02
	
; 15th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72C0B to 72C0E (4 bytes)	
_DATA_72C0B_:	
	.db $01 $88 $C0 $02
	
	; Pointer Table from 72C0F to 72C10 (1 entries, indexed by unknown)
	.dw _DATA_72C15_
	
	; Data from 72C11 to 72C14 (4 bytes)
	.db $00 $00 $01 $02
	
; Data from 72C15 to 72C17 (3 bytes)	
_DATA_72C15_:	
	.db $00 $40 $01
	
	; Pointer Table from 72C18 to 72C19 (1 entries, indexed by unknown)
	.dw _DATA_2F2_
	
; 16th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72C1A to 72C1D (4 bytes)	
_DATA_72C1A_:	
	.db $01 $88 $15 $01
	
	; Pointer Table from 72C1E to 72C1F (1 entries, indexed by unknown)
	.dw _DATA_72C2E_
	
	; Data from 72C20 to 72C23 (4 bytes)
	.db $F3 $00 $B0 $00
	
; 16th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72C24 to 72C27 (4 bytes)	
_DATA_72C24_:	
	.db $01 $88 $C0 $01
	
	; Pointer Table from 72C28 to 72C29 (1 entries, indexed by unknown)
	.dw _DATA_72C2E_
	
	; Data from 72C2A to 72C2D (4 bytes)
	.db $00 $00 $01 $00
	
; Data from 72C2E to 72C30 (3 bytes)	
_DATA_72C2E_:	
	.db $00 $60 $02
	
	; Pointer Table from 72C31 to 72C36 (3 entries, indexed by unknown)
	.dw _DATA_5200_ _RAM_F602_ _DATA_72C2E_
	
; 17th entry of Pointer Table from 70244 (indexed by _RAM_DE03_)	
; Data from 72C37 to 72C3A (4 bytes)	
_DATA_72C37_:	
	.db $01 $A8 $15 $01
	
	; Pointer Table from 72C3B to 72C3E (2 entries, indexed by unknown)
	.dw _DATA_72C4B_ _DATA_35_
	
	; Data from 72C3F to 72C40 (2 bytes)
	.db $03 $00
	
; 17th entry of Pointer Table from 70222 (indexed by _RAM_DE03_)	
; Data from 72C41 to 72C44 (4 bytes)	
_DATA_72C41_:	
	.db $01 $A8 $E0 $01
	
	; Pointer Table from 72C45 to 72C46 (1 entries, indexed by unknown)
	.dw _DATA_72C5E_
	
	; Data from 72C47 to 72C4A (4 bytes)
	.db $00 $00 $00 $00
	
; Data from 72C4B to 72C5D (19 bytes)	
_DATA_72C4B_:	
	.db $FF $37 $39 $0B $07 $F0 $B0 $03 $FF $05 $00 $40 $03 $06 $00 $08
	.db $10 $F2 $03
	
; 1st entry of Pointer Table from 72C45 (indexed by unknown)	
; Data from 72C5E to 72C69 (12 bytes)	
_DATA_72C5E_:	
	.db $F3 $07 $00 $10 $20 $03 $00 $8C $08 $10 $F2 $03
	
; Pointer Table from 72C6A to 72C87 (15 entries, indexed by _RAM_DE55_)	
_DATA_72C6A_:	
	.dw _DATA_72C88_ _DATA_72C8B_ _DATA_72C90_ _DATA_72C93_ _DATA_72C96_ _DATA_72C9C_ _DATA_72CAC_ _DATA_72CB2_
	.dw _DATA_72CBB_ _DATA_72CC2_ _DATA_72CC7_ _DATA_72CCE_ _DATA_72CD6_ _DATA_72CDC_ _DATA_72CE1_
	
; 1st entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C88 to 72C8A (3 bytes)	
_DATA_72C88_:	
	.db $00 $0B $82
	
; 2nd entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C8B to 72C8F (5 bytes)	
_DATA_72C8B_:	
	.db $00 $01 $03 $05 $82
	
; 3rd entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C90 to 72C92 (3 bytes)	
_DATA_72C90_:	
	.db $00 $01 $82
	
; 4th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C93 to 72C95 (3 bytes)	
_DATA_72C93_:	
	.db $00 $03 $82
	
; 5th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C96 to 72C9B (6 bytes)	
_DATA_72C96_:	
	.db $02 $00 $02 $03 $04 $81
	
; 6th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72C9C to 72CAB (16 bytes)	
_DATA_72C9C_:	
	.db $06 $00 $01 $02 $02 $03 $03 $04 $04 $05 $05 $06 $06 $07 $08 $81
	
; 7th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CAC to 72CB1 (6 bytes)	
_DATA_72CAC_:	
	.db $04 $03 $02 $01 $02 $81
	
; 8th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CB2 to 72CBA (9 bytes)	
_DATA_72CB2_:	
	.db $00 $00 $00 $04 $06 $08 $0A $0E $82
	
; 9th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CBB to 72CC1 (7 bytes)	
_DATA_72CBB_:	
	.db $00 $01 $03 $04 $05 $83 $04
	
; 10th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CC2 to 72CC6 (5 bytes)	
_DATA_72CC2_:	
	.db $02 $03 $02 $01 $00
	
; 11th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CC7 to 72CCD (7 bytes)	
_DATA_72CC7_:	
	.db $02 $01 $00 $01 $02 $04 $81
	
; 12th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CCE to 72CD5 (8 bytes)	
_DATA_72CCE_:	
	.db $00 $01 $02 $03 $04 $05 $06 $82
	
; 13th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CD6 to 72CDB (6 bytes)	
_DATA_72CD6_:	
	.db $01 $00 $01 $04 $0A $82
	
; 14th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CDC to 72CE0 (5 bytes)	
_DATA_72CDC_:	
	.db $01 $00 $00 $01 $82
	
; 15th entry of Pointer Table from 72C6A (indexed by _RAM_DE55_)	
; Data from 72CE1 to 72CEC (12 bytes)	
_DATA_72CE1_:	
	.db $00 $00 $01 $01 $02 $02 $03 $03 $04 $04 $05 $82
	
; Pointer Table from 72CED to 72D08 (14 entries, indexed by _RAM_DE74_)	
_DATA_72CED_:	
	.dw _DATA_72D09_ _DATA_72D1F_ _DATA_72D3B_ _DATA_72D52_ _DATA_72D57_ _DATA_72D76_ _DATA_72D85_ _DATA_72D8C_
	.dw _DATA_72D9A_ _DATA_72D9F_ _DATA_72DAB_ _DATA_72DB4_ _DATA_72DC0_ _DATA_72DD1_
	
; 1st entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D09 to 72D1E (22 bytes)	
_DATA_72D09_:	
	.dsb 10, $01
	.db $00 $00 $01 $01 $02 $02 $01 $00 $01 $01 $02 $02
	
; 2nd entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D1F to 72D3A (28 bytes)	
_DATA_72D1F_:	
	.db $01 $00 $00 $01 $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $03 $02
	.db $02 $01 $00 $00 $00 $01 $02 $03 $04 $03 $02 $01
	
; 3rd entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D3B to 72D51 (23 bytes)	
_DATA_72D3B_:	
	.db $00 $01 $02 $04 $05 $04 $03 $02 $01 $00 $01 $02 $03 $04 $05 $04
	.db $03 $02 $01 $00 $01 $01 $81
	
; 4th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D52 to 72D56 (5 bytes)	
_DATA_72D52_:	
	.db $01 $00 $00 $00 $81
	
; 5th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D57 to 72D75 (31 bytes)	
_DATA_72D57_:	
	.db $03 $02 $02 $02 $02 $02 $02 $01 $00 $01 $02 $01 $00 $01 $02 $01
	.db $00 $01 $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $03 $02 $80
	
; 6th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D76 to 72D84 (15 bytes)	
_DATA_72D76_:	
	.db $01 $00 $00 $01 $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $80
	
; 7th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D85 to 72D8B (7 bytes)	
_DATA_72D85_:	
	.db $03 $02 $01 $00 $00 $01 $80
	
; 8th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D8C to 72D99 (14 bytes)	
_DATA_72D8C_:	
	.db $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $03 $02 $01 $00
	
; 9th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D9A to 72D9E (5 bytes)	
_DATA_72D9A_:	
	.db $00 $01 $02 $03 $80
	
; 10th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72D9F to 72DAA (12 bytes)	
_DATA_72D9F_:	
	.db $03 $02 $01 $00 $00 $01 $02 $03 $03 $02 $83 $04
	
; 11th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72DAB to 72DB3 (9 bytes)	
_DATA_72DAB_:	
	.db $01 $00 $00 $01 $02 $03 $03 $02 $81
	
; 12th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72DB4 to 72DBF (12 bytes)	
_DATA_72DB4_:	
	.db $01 $00 $00 $01 $02 $03 $03 $02 $01 $00 $83 $03
	
; 13th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72DC0 to 72DD0 (17 bytes)	
_DATA_72DC0_:	
	.db $00 $01 $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $03 $02 $01 $01
	.db $81
	
; 14th entry of Pointer Table from 72CED (indexed by _RAM_DE74_)	
; Data from 72DD1 to 72DD8 (8 bytes)	
_DATA_72DD1_:	
	.db $0F $00 $00 $00 $81 $01 $0F $80
	
; 2nd entry of Jump Table from 70266 (indexed by _RAM_DE03_)	
_LABEL_72DD9_:	
		ld hl, _DATA_72E1B_
		ld bc, $0801
		ld a, $02
		ld (_RAM_DE19_), a
		call _LABEL_70943_
		ld a, $81
		out (Port_PSG), a
		xor a
		out (Port_AudioControl), a
		ld a, (_RAM_DE19_)
		ld e, a
---:	
		push bc
		ld b, $08
		ld a, (hl)
--:	
		push bc
		ld b, e
-:	
		djnz -
		pop bc
		rlca
		ld d, a
		ld a, $90
		jr c, +
		or $0F
		jp +
	
+:	
		out (Port_PSG), a
		ld a, d
		djnz --
		inc hl
		pop bc
		dec bc
		ld a, c
		or b
		jp nz, ---
		ld a, (_RAM_DE00_)
		out (Port_AudioControl), a
		jp _LABEL_70909_
	
; Data from 72E1B to 73FFF (4581 bytes)	
_DATA_72E1B_:	
	.incbin "data/File45_72E1B_73FFF.dat"
	
.BANK 29	
.ORG $0000	
	
; Data from 74000 to 74D56 (3415 bytes)	
_DATA_74000_:	
	.incbin "data/File46_74000_74D56.dat"
	
; Data from 74D57 to 74F39 (483 bytes)	
_DATA_74D57_:	
	.db $7F $00 $41 $00 $20 $01 $20 $00 $20 $02 $20 $03 $EB $04 $05 $06
	.db $07 $08 $09 $0A $0B $0C $0D $0E $0F $10 $11 $12 $13 $13 $12 $11
	.db $10 $0F $0E $0D $0C $0B $0A $09 $08 $07 $06 $24 $25 $14 $15 $16
	.db $17 $18 $19 $1A $1B $1C $1D $1E $1F $20 $21 $22 $23 $23 $22 $21
	.db $20 $1F $1E $1D $1C $1B $1A $19 $18 $26 $27 $28 $29 $2A $2B $2C
	.db $2D $2E $2F $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $39 $38 $37
	.db $36 $35 $34 $33 $32 $31 $30 $8D $8E $8F $90 $8F $90 $3A $3B $3C
	.db $3D $3E $3F $40 $41 $42 $43 $44 $02 $45 $B0 $46 $47 $48 $48 $47
	.db $46 $45 $45 $44 $43 $42 $41 $40 $91 $92 $93 $94 $93 $94 $49 $4A
	.db $4B $4C $4D $4E $4F $50 $51 $52 $53 $54 $55 $56 $57 $58 $58 $57
	.db $56 $55 $54 $53 $52 $51 $50 $4F $91 $92 $94 $03 $95 $9D $59 $5A
	.db $5B $5C $5D $5E $5F $60 $61 $62 $63 $64 $65 $57 $66 $67 $67 $66
	.db $57 $65 $64 $63 $62 $61 $60 $5F $92 $91 $93 $03 $95 $86 $68 $29
	.db $29 $69 $6A $6B $04 $45 $8C $6C $6D $57 $57 $6E $57 $57 $6E $57
	.db $57 $6D $6C $04 $45 $83 $91 $92 $93 $03 $96 $03 $29 $82 $6F $70
	.db $04 $29 $82 $71 $72 $03 $57 $84 $73 $57 $57 $73 $03 $57 $82 $72
	.db $71 $03 $29 $90 $92 $91 $94 $93 $94 $94 $74 $75 $76 $77 $78 $76
	.db $76 $79 $7A $7B $04 $57 $84 $7C $57 $57 $7C $04 $57 $87 $7B $7A
	.db $79 $76 $91 $91 $93 $03 $95 $07 $29 $82 $7D $7E $0E $57 $86 $7E
	.db $7D $97 $98 $92 $94 $03 $96 $06 $29 $82 $7F $80 $05 $57 $86 $81
	.db $82 $57 $57 $82 $81 $05 $57 $90 $80 $7F $99 $9A $93 $94 $94 $93
	.db $83 $83 $84 $85 $86 $7F $87 $88 $05 $57 $81 $89 $04 $57 $81 $89
	.db $05 $57 $83 $88 $87 $7F $09 $29 $82 $8A $8B $14 $57 $82 $8B $8A
	.db $07 $29 $82 $8A $8C $16 $57 $82 $8C $8A $03 $29 $00 $7F $00 $7F
	.db $00 $52 $00 $0E $02 $12 $00 $0C $02 $14 $00 $0A $02 $16 $00 $03
	.db $02 $02 $00 $05 $02 $16 $00 $82 $02 $00 $04 $02 $81 $00 $03 $02
	.db $16 $00 $02 $02 $81 $00 $03 $02 $81 $00 $03 $02 $17 $00 $81 $02
	.db $02 $00 $02 $02 $1B $00 $81 $02 $03 $00 $02 $02 $1A $00 $81 $02
	.db $04 $00 $04 $02 $1D $00 $02 $02 $18 $00 $02 $02 $05 $00 $02 $02
	.db $18 $00 $81 $02 $05 $00 $03 $02 $1F $00 $02 $02 $1F $00 $02 $02
	.db $03 $00 $00
	
; Data from 74F3A to 754C1 (1416 bytes)	
_DATA_74F3A_:	
	.incbin "data/File47_74F3A_754C1.dat"
	
; Data from 754C2 to 75D2E (2157 bytes)	
_DATA_754C2_:	
	.incbin "data/File48_754C2_75D2E.dat"
	
; Data from 75D2F to 77FFF (8913 bytes)	
_DATA_75D2F_:	
	.db $02 $00 $8E $FF $00 $FF $00 $00 $FF $00 $00 $FE $00 $FE $00 $00
	.db $FC $03 $00 $85 $08 $FA $01 $FF $FA $07 $00 $81 $F0 $05 $FF $82
	.db $EF $DE $06 $FF $81 $7F $05 $FF $95 $E1 $FF $7F $FF $FF $F9 $FF
	.db $FF $F3 $EE $DB $FD $FF $08 $F8 $F8 $F0 $18 $F8 $F8 $F0 $05 $FF
	.db $82 $DE $EF $07 $FF $81 $7F $04 $FF $8D $E1 $FF $FF $7F $FF $F9
	.db $FF $FF $F3 $EE $DD $FB $FF $00 $85 $00 $FF $00 $FF $00 $03 $FF
	.db $88 $00 $FC $00 $FE $00 $FE $FE $FC $03 $00 $85 $F4 $06 $FF $FF
	.db $6F $06 $00 $82 $F0 $08 $05 $00 $82 $10 $21 $06 $00 $81 $80 $05
	.db $00 $02 $1E $90 $80 $00 $00 $0B $6F $60 $CC $19 $34 $02 $00 $F8
	.db $F0 $F0 $08 $E0 $08 $00 $82 $21 $10 $07 $00 $81 $80 $04 $00 $02
	.db $1E $8B $00 $80 $00 $0B $6F $60 $CC $19 $32 $04 $00 $00 $84 $00
	.db $FF $FF $00 $04 $FF $84 $00 $FC $FE $00 $03 $FE $81 $FC $03 $00
	.db $85 $FC $FE $FD $FF $EA $06 $00 $82 $F0 $F8 $05 $00 $82 $21 $10
	.db $07 $00 $81 $80 $04 $00 $02 $1E $90 $00 $80 $00 $09 $EF $E0 $DF
	.db $19 $32 $04 $00 $F8 $F0 $F0 $08 $F8 $08 $00 $82 $10 $21 $06 $00
	.db $81 $80 $05 $00 $02 $1E $8B $80 $00 $00 $09 $EF $E0 $DF $19 $34
	.db $02 $00 $00 $84 $00 $FF $FF $00 $04 $FF $84 $00 $FC $FE $00 $03
	.db $FE $81 $FC $03 $00 $85 $FC $FE $FF $FF $EF $06 $00 $82 $F0 $F8
	.db $04 $00 $84 $84 $00 $00 $84 $04 $00 $84 $20 $1F $11 $20 $03 $00
	.db $95 $1E $3F $01 $1E $20 $0F $EF $E0 $DF $19 $F0 $20 $10 $F8 $F0
	.db $F0 $08 $F8 $40 $40 $80 $04 $00 $84 $84 $00 $00 $84 $04 $00 $84
	.db $20 $1F $11 $20 $03 $00 $8D $1E $3F $01 $1E $20 $0F $EF $E0 $DF
	.db $19 $F0 $20 $10 $00
	.dsb 8556, $FF
	
.BANK 30	
.ORG $0000	
	
; Data from 78000 to 78DD3 (3540 bytes)	
_DATA_78000_:	
	.incbin "data/File49_78000_78DD3.dat"
	
; Pointer Table from 78DD4 to 78E1F (38 entries, indexed by _RAM_C116_)	
_DATA_78DD4_:	
	.dw _DATA_78E20_ _DATA_78E4D_ _DATA_78E72_ _DATA_78E91_ _DATA_78EB0_ _DATA_78ED1_ _DATA_78EF1_ _DATA_78F11_
	.dw _DATA_78F31_ _DATA_78F57_ _DATA_78F7D_ _DATA_78F9E_ _DATA_78FBF_ _DATA_78FE0_ _DATA_79000_ _DATA_79020_
	.dw _DATA_79040_ _DATA_79080_ _DATA_79060_ _DATA_790A0_ _DATA_790BF_ _DATA_790E1_ _DATA_79105_ _DATA_79129_
	.dw _DATA_7914D_ _DATA_79178_ _DATA_791A3_ _DATA_791DB_ _DATA_7920E_ _DATA_79246_ _DATA_79279_ _DATA_792B7_
	.dw _DATA_792F5_ _DATA_7932D_ _DATA_79365_ _DATA_79385_ _DATA_793A5_ _DATA_793C5_
	
; 1st entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78E20 to 78E4C (45 bytes)	
_DATA_78E20_:	
	.db $18 $18 $18 $10 $10 $10 $00 $10 $10 $10 $00 $10 $10 $10 $00 $10
	.db $14 $14 $14 $00 $14 $14 $14 $00 $10 $10 $10 $00 $10 $14 $14 $00
	.db $10 $10 $10 $00 $10 $10 $10 $10 $10 $10 $10 $10 $90
	
; 2nd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78E4D to 78E71 (37 bytes)	
_DATA_78E4D_:	
	.db $14 $14 $14 $10 $10 $10 $00 $10 $10 $10 $00 $10 $10 $10 $00 $10
	.db $18 $18 $18 $00 $18 $18 $18 $00 $10 $10 $10 $00 $10 $10 $10 $10
	.db $10 $10 $10 $10 $90
	
; 3rd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78E72 to 78E90 (31 bytes)	
_DATA_78E72_:	
	.db $18
	.dsb 29, $10
	.db $90
	
; 4th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78E91 to 78EAF (31 bytes)	
_DATA_78E91_:	
	.db $14
	.dsb 29, $10
	.db $90
	
; 5th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78EB0 to 78ED0 (33 bytes)	
_DATA_78EB0_:	
	.dsb 18, $20
	.dsb 14, $21
	.db $A1
	
; 6th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78ED1 to 78EF0 (32 bytes)	
_DATA_78ED1_:	
	.dsb 16, $22
	.dsb 15, $21
	.db $A1
	
; 7th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78EF1 to 78F10 (32 bytes)	
_DATA_78EF1_:	
	.dsb 16, $68
	.db $20 $20
	.dsb 13, $64
	.db $E4
	
; 8th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78F11 to 78F30 (32 bytes)	
_DATA_78F11_:	
	.dsb 16, $64
	.db $20 $20
	.dsb 13, $68
	.db $E8
	
; 9th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78F31 to 78F56 (38 bytes)	
_DATA_78F31_:	
	.db $10 $01 $14 $05 $10 $05 $14 $01 $10 $01 $10 $01 $10 $01 $11 $19
	.db $19 $19 $09 $19 $09 $19 $01 $11 $01 $11 $01 $11 $01 $10 $10 $10
	.db $10 $59 $10 $59 $10 $D9
	
; 10th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78F57 to 78F7C (38 bytes)	
_DATA_78F57_:	
	.db $10 $01 $18 $09 $10 $09 $18 $01 $10 $01 $10 $01 $10 $01 $11 $15
	.db $15 $15 $05 $15 $05 $15 $01 $11 $01 $11 $01 $11 $01 $10 $10 $10
	.db $10 $55 $10 $55 $10 $D5
	
; 11th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78F7D to 78F9D (33 bytes)	
_DATA_78F7D_:	
	.db $22 $22 $22 $22 $22 $22 $22 $22
	.dsb 12, $20
	.db $21 $20 $21 $20 $21 $20 $21 $20 $21 $20 $21 $21 $A1
	
; 12th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78F9E to 78FBE (33 bytes)	
_DATA_78F9E_:	
	.db $22 $22 $22 $22 $22 $22 $22 $22
	.dsb 12, $20
	.db $21 $20 $21 $20 $21 $20 $21 $20 $21 $20 $21 $21 $A1
	
; 13th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78FBF to 78FDF (33 bytes)	
_DATA_78FBF_:	
	.db $66 $66 $66 $66 $66 $66 $66 $66
	.dsb 12, $64
	.db $65 $64 $65 $64 $65 $64 $65 $64 $65 $64 $65 $65 $E5
	
; 14th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 78FE0 to 78FFF (32 bytes)	
_DATA_78FE0_:	
	.db $6A $6A $6A $6A $6A $6A $6A $6A
	.dsb 11, $68
	.db $69 $68 $69 $68 $69 $68 $69 $68 $69 $68 $69 $69 $E9
	
; 15th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79000 to 7901F (32 bytes)	
_DATA_79000_:	
	.dsb 31, $20
	.db $A0
	
; 16th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79020 to 7903F (32 bytes)	
_DATA_79020_:	
	.db $28 $28 $28 $2A $20 $20 $20 $22 $20 $20 $20 $22 $20 $20 $26 $24
	.db $26 $24 $26 $24 $26 $24 $66 $64 $66 $64 $66 $64 $66 $64 $66 $E4
	
; 17th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79040 to 7905F (32 bytes)	
_DATA_79040_:	
	.db $24 $24 $24 $26 $20 $20 $20 $22 $20 $20 $20 $22 $20 $20 $2A $28
	.db $2A $28 $2A $28 $2A $28 $6A $68 $6A $68 $6A $68 $6A $68 $6A $E8
	
; 19th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79060 to 7907F (32 bytes)	
_DATA_79060_:	
	.db $6A $68 $6A $68 $68 $6A $68 $68 $6A $68 $68 $6A $68 $68 $6A $68
	.db $68 $6A $68 $68 $68 $6A $68 $68 $68 $6A $68 $68 $68 $68 $6A $E8
	
; 18th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79080 to 7909F (32 bytes)	
_DATA_79080_:	
	.db $66 $64 $66 $64 $64 $66 $64 $64 $66 $64 $64 $66 $64 $64 $66 $64
	.db $64 $66 $64 $64 $64 $66 $64 $64 $64 $66 $64 $64 $64 $64 $66 $E4
	
; 20th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 790A0 to 790BE (31 bytes)	
_DATA_790A0_:	
	.dsb 15, $20
	.dsb 15, $21
	.db $A1
	
; 21st entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 790BF to 790E0 (34 bytes)	
_DATA_790BF_:	
	.db $28
	.dsb 15, $20
	.db $04 $22 $04 $20 $20 $22
	.dsb 11, $20
	.db $A0
	
; 22nd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 790E1 to 79104 (36 bytes)	
_DATA_790E1_:	
	.db $28 $28
	.dsb 16, $20
	.db $04 $22 $04 $20 $20 $04 $22 $04 $20 $24 $20 $24 $20 $20 $20 $20
	.db $20 $A0
	
; 23rd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79105 to 79128 (36 bytes)	
_DATA_79105_:	
	.db $24 $24
	.dsb 16, $20
	.db $08 $22 $08 $20 $20 $08 $22 $08 $20 $28 $20 $28 $20 $20 $20 $20
	.db $20 $A0
	
; 24th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79129 to 7914C (36 bytes)	
_DATA_79129_:	
	.db $24 $24
	.dsb 16, $20
	.db $08 $22 $08 $20 $20 $08 $22 $08 $20 $28 $20 $28 $20 $20 $20 $20
	.db $20 $A0
	
; 25th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 7914D to 79177 (43 bytes)	
_DATA_7914D_:	
	.db $20 $20 $21 $28 $21 $20 $21 $20 $21 $20 $21 $20 $21 $20 $20 $02
	.db $04 $04 $02 $02 $02 $02 $02 $08 $08 $02 $20 $20 $21 $20 $21 $20
	.db $20 $20 $21 $20 $21 $20 $20 $20 $21 $20 $A0
	
; 26th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79178 to 791A2 (43 bytes)	
_DATA_79178_:	
	.db $20 $20 $21 $24 $21 $20 $21 $20 $21 $20 $21 $20 $21 $20 $20 $02
	.db $08 $08 $02 $02 $02 $02 $02 $04 $04 $02 $20 $20 $21 $20 $21 $20
	.db $20 $20 $21 $20 $21 $20 $20 $20 $21 $20 $A0
	
; 27th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 791A3 to 791DA (56 bytes)	
_DATA_791A3_:	
	.db $20 $20 $20 $20 $02 $20 $02 $20 $02 $20 $02 $20 $02 $20 $02 $20
	.db $02 $20 $02 $20 $02 $20 $02 $20 $02 $20 $20 $02 $25 $21 $25 $20
	.db $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21
	.db $01 $21 $01 $21 $01 $21 $01 $A0
	
; 28th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 791DB to 7920D (51 bytes)	
_DATA_791DB_:	
	.db $20 $20 $20 $20 $02 $20 $20 $02 $20 $20 $02 $20 $20 $02 $20 $20
	.db $02 $20 $20 $02 $20 $20 $02 $25 $21 $25 $20 $01 $20 $01 $20 $01
	.db $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01
	.db $20 $01 $A0
	
; 29th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 7920E to 79245 (56 bytes)	
_DATA_7920E_:	
	.db $20 $20 $20 $20 $02 $20 $02 $20 $02 $20 $02 $20 $02 $20 $02 $20
	.db $02 $20 $02 $20 $02 $20 $02 $20 $02 $20 $20 $02 $29 $21 $29 $20
	.db $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21
	.db $01 $21 $01 $21 $01 $21 $01 $A0
	
; 30th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79246 to 79278 (51 bytes)	
_DATA_79246_:	
	.db $20 $20 $20 $20 $02 $20 $20 $02 $20 $20 $02 $20 $20 $02 $20 $20
	.db $02 $20 $20 $02 $20 $20 $02 $29 $21 $29 $20 $01 $20 $01 $20 $01
	.db $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $20 $01
	.db $20 $01 $A0
	
; 31st entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79279 to 792B6 (62 bytes)	
_DATA_79279_:	
	.db $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $22 $02 $22 $02 $22 $02
	.db $22 $02 $22 $02 $22 $02 $22 $02 $22 $02 $20 $05 $21 $01 $21 $01
	.db $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01
	.db $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $A1
	
; 32nd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 792B7 to 792F4 (62 bytes)	
_DATA_792B7_:	
	.db $20 $01 $20 $01 $20 $01 $20 $01 $20 $01 $22 $02 $22 $02 $22 $02
	.db $22 $02 $22 $02 $22 $02 $22 $02 $22 $02 $20 $09 $21 $01 $21 $01
	.db $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01
	.db $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $01 $21 $A1
	
; 33rd entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 792F5 to 7932C (56 bytes)	
_DATA_792F5_:	
	.db $24 $02 $22 $02 $22 $02 $22 $02 $22 $02 $22 $02 $22 $24 $22 $20
	.db $22 $08 $08 $08 $08 $20 $21 $20 $21 $20 $21 $20 $21 $21 $01 $20
	.db $20 $01 $20 $20 $04 $04 $04 $05 $01 $21 $01 $21 $01 $21 $01 $21
	.db $01 $21 $01 $21 $01 $21 $01 $A1
	
; 34th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 7932D to 79364 (56 bytes)	
_DATA_7932D_:	
	.db $28 $02 $22 $02 $22 $02 $22 $02 $22 $02 $22 $02 $22 $28 $22 $20
	.db $22 $04 $04 $04 $04 $20 $21 $20 $21 $20 $21 $20 $21 $21 $01 $20
	.db $20 $01 $20 $20 $08 $08 $08 $09 $01 $21 $01 $21 $01 $21 $01 $21
	.db $01 $21 $01 $21 $01 $21 $01 $A1
	
; 35th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79365 to 79384 (32 bytes)	
_DATA_79365_:	
	.db $14 $14 $10 $10 $10 $10 $10 $10 $10 $11 $10 $10 $11 $10 $11 $10
	.db $11 $10 $19 $19 $19 $19
	.dsb 9, $11
	.db $91
	
; 36th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 79385 to 793A4 (32 bytes)	
_DATA_79385_:	
	.db $18 $18 $10 $10 $10 $10 $10 $10 $10 $11 $10 $10 $11 $10 $11 $10
	.db $11 $10 $15 $15 $15 $15
	.dsb 9, $11
	.db $91
	
; 37th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 793A5 to 793C4 (32 bytes)	
_DATA_793A5_:	
	.db $28 $20 $20 $20 $20 $20 $20 $20 $20 $24 $24 $20 $20 $20 $20 $20
	.db $20 $20 $20 $28 $20 $28
	.dsb 9, $20
	.db $A0
	
; 38th entry of Pointer Table from 78DD4 (indexed by _RAM_C116_)	
; Data from 793C5 to 7BFFF (11323 bytes)	
_DATA_793C5_:	
	.db $24 $20 $20 $20 $20 $20 $20 $20 $20 $28 $28 $20 $20 $20 $20 $20
	.db $20 $20 $20 $24 $20 $24
	.dsb 9, $20
	.db $A0
	.dsb 11291, $FF
	
.BANK 31	
.ORG $0000	
	
	; Data from 7C000 to 7FFFF (16384 bytes)
	.dsb 16384, $FF
	
