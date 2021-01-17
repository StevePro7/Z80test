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
_RAM_C001_ dw	
_RAM_C003_ db	
_RAM_C004_ db	
_RAM_C005_ db	
_RAM_C006_ db	
_RAM_C007_ db	
.ende	
	
.enum $C009 export	
_RAM_C009_ db	
.ende	
	
.enum $C00B export	
_RAM_C00B_ dsb $5	
.ende	
	
.enum $C011 export	
_RAM_C011_ db	
_RAM_C012_ db	
_RAM_C013_ dsb $3	
.ende	
	
.enum $C017 export	
_RAM_C017_ db	
_RAM_C018_ db	
_RAM_C019_ db	
.ende	
	
.enum $C028 export	
_RAM_C028_ dsb $10	
_RAM_C038_ db	
.ende	
	
.enum $C040 export	
_RAM_C040_ dw	
_RAM_C042_ db	
.ende	
	
.enum $C044 export	
_RAM_C044_ db	
.ende	
	
.enum $C046 export	
_RAM_C046_ db	
.ende	
	
.enum $C048 export	
_RAM_C048_ db	
_RAM_C049_ dsb $10	
_RAM_C059_ db	
_RAM_C05A_ dsb $f	
.ende	
	
.enum $C06B export	
_RAM_C06B_ db	
_RAM_C06C_ db	
_RAM_C06D_ db	
_RAM_C06E_ db	
_RAM_C06F_ db	
.ende	
	
.enum $C078 export	
_RAM_C078_ db	
_RAM_C079_ db	
_RAM_C07A_ db	
_RAM_C07B_ db	
_RAM_C07C_ db	
_RAM_C07D_ db	
_RAM_C07E_ db	
_RAM_C07F_ db	
_RAM_C080_ db	
_RAM_C081_ db	
_RAM_C082_ dw	
_RAM_C084_ dw	
_RAM_C086_ dw	
_RAM_C088_ dw	
_RAM_C08A_ dw	
_RAM_C08C_ dw	
_RAM_C08E_ dw	
_RAM_C090_ dw	
_RAM_C092_ db	
_RAM_C093_ dsb $9	
_RAM_C09C_ dw	
_RAM_C09E_ dw	
_RAM_C0A0_ dw	
_RAM_C0A2_ dw	
_RAM_C0A4_ dw	
_RAM_C0A6_ db	
_RAM_C0A7_ db	
_RAM_C0A8_ db	
_RAM_C0A9_ db	
.ende	
	
.enum $C0C0 export	
_RAM_C0C0_ db	
.ende	
	
.enum $C100 export	
_RAM_C100_ dw	
_RAM_C102_ db	
.ende	
	
.enum $C140 export	
_RAM_C140_ db	
.ende	
	
.enum $C1C0 export	
_RAM_C1C0_ db	
_RAM_C1C1_ db	
_RAM_C1C2_ db	
_RAM_C1C3_ db	
.ende	
	
.enum $C1C5 export	
_RAM_C1C5_ db	
_RAM_C1C6_ db	
.ende	
	
.enum $C1C8 export	
_RAM_C1C8_ dw	
_RAM_C1CA_ dw	
.ende	
	
.enum $C1CD export	
_RAM_C1CD_ db	
_RAM_C1CE_ db	
.ende	
	
.enum $C1D0 export	
_RAM_C1D0_ db	
_RAM_C1D1_ db	
_RAM_C1D2_ db	
_RAM_C1D3_ db	
.ende	
	
.enum $C1DF export	
_RAM_C1DF_ db	
.ende	
	
.enum $C1F0 export	
_RAM_C1F0_ db	
.ende	
	
.enum $C202 export	
_RAM_C202_ db	
.ende	
	
.enum $C220 export	
_RAM_C220_ db	
.ende	
	
.enum $C250 export	
_RAM_C250_ db	
.ende	
	
.enum $C280 export	
_RAM_C280_ dsb $30	
_RAM_C2B0_ db	
.ende	
	
.enum $C2E0 export	
_RAM_C2E0_ db	
.ende	
	
.enum $C310 export	
_RAM_C310_ db	
_RAM_C311_ db	
.ende	
	
.enum $C313 export	
_RAM_C313_ db	
_RAM_C314_ db	
.ende	
	
.enum $C316 export	
_RAM_C316_ db	
.ende	
	
.enum $C318 export	
_RAM_C318_ dw	
_RAM_C31A_ dw	
.ende	
	
.enum $C340 export	
_RAM_C340_ db	
_RAM_C341_ db	
.ende	
	
.enum $C343 export	
_RAM_C343_ db	
_RAM_C344_ db	
.ende	
	
.enum $C346 export	
_RAM_C346_ db	
.ende	
	
.enum $C348 export	
_RAM_C348_ dw	
_RAM_C34A_ dw	
.ende	
	
.enum $C370 export	
_RAM_C370_ db	
.ende	
	
.enum $C373 export	
_RAM_C373_ db	
.ende	
	
.enum $C376 export	
_RAM_C376_ db	
.ende	
	
.enum $C378 export	
_RAM_C378_ dw	
_RAM_C37A_ dw	
.ende	
	
.enum $C3A0 export	
_RAM_C3A0_ db	
.ende	
	
.enum $C3A3 export	
_RAM_C3A3_ db	
.ende	
	
.enum $C3A6 export	
_RAM_C3A6_ db	
.ende	
	
.enum $C3A8 export	
_RAM_C3A8_ dw	
_RAM_C3AA_ dw	
.ende	
	
.enum $C3D0 export	
_RAM_C3D0_ db	
.ende	
	
.enum $C3D3 export	
_RAM_C3D3_ db	
.ende	
	
.enum $C3D6 export	
_RAM_C3D6_ db	
.ende	
	
.enum $C3D8 export	
_RAM_C3D8_ dw	
_RAM_C3DA_ dw	
.ende	
	
.enum $C400 export	
_RAM_C400_ db	
.ende	
	
.enum $C403 export	
_RAM_C403_ db	
.ende	
	
.enum $C406 export	
_RAM_C406_ db	
.ende	
	
.enum $C408 export	
_RAM_C408_ dw	
_RAM_C40A_ dw	
.ende	
	
.enum $C430 export	
_RAM_C430_ db	
.ende	
	
.enum $C460 export	
_RAM_C460_ db	
.ende	
	
.enum $C463 export	
_RAM_C463_ db	
.ende	
	
.enum $C466 export	
_RAM_C466_ db	
_RAM_C467_ db	
.ende	
	
.enum $C490 export	
_RAM_C490_ db	
.ende	
	
.enum $C493 export	
_RAM_C493_ db	
.ende	
	
.enum $C496 export	
_RAM_C496_ db	
_RAM_C497_ db	
.ende	
	
.enum $C4C0 export	
_RAM_C4C0_ db	
.ende	
	
.enum $C4F0 export	
_RAM_C4F0_ db	
.ende	
	
.enum $C600 export	
_RAM_C600_ dw	
_RAM_C602_ db	
_RAM_C603_ db	
_RAM_C604_ db	
_RAM_C605_ db	
_RAM_C606_ db	
_RAM_C607_ db	
_RAM_C608_ db	
_RAM_C609_ dw	
_RAM_C60B_ dw	
_RAM_C60D_ db	
_RAM_C60E_ db	
_RAM_C60F_ db	
_RAM_C610_ db	
_RAM_C611_ db	
.ende	
	
.enum $C614 export	
_RAM_C614_ db	
_RAM_C615_ dw	
.ende	
	
.enum $C619 export	
_RAM_C619_ db	
_RAM_C61A_ db	
_RAM_C61B_ dw	
_RAM_C61D_ db	
_RAM_C61E_ db	
_RAM_C61F_ db	
_RAM_C620_ db	
_RAM_C621_ db	
_RAM_C622_ dw	
_RAM_C624_ dw	
_RAM_C626_ dw	
_RAM_C628_ dw	
_RAM_C62A_ dw	
_RAM_C62C_ dw	
_RAM_C62E_ dw	
_RAM_C630_ dw	
_RAM_C632_ db	
_RAM_C633_ db	
_RAM_C634_ db	
_RAM_C635_ db	
_RAM_C636_ db	
.ende	
	
.enum $C639 export	
_RAM_C639_ db	
_RAM_C63A_ db	
_RAM_C63B_ db	
_RAM_C63C_ dw	
_RAM_C63E_ db	
_RAM_C63F_ db	
.ende	
	
.enum $C641 export	
_RAM_C641_ db	
_RAM_C642_ db	
_RAM_C643_ db	
_RAM_C644_ dsb $3	
_RAM_C647_ db	
.ende	
	
.enum $C649 export	
_RAM_C649_ db	
_RAM_C64A_ db	
.ende	
	
.enum $C64C export	
_RAM_C64C_ dw	
_RAM_C64E_ dw	
_RAM_C650_ db	
_RAM_C651_ db	
_RAM_C652_ db	
_RAM_C653_ db	
_RAM_C654_ db	
_RAM_C655_ dw	
_RAM_C657_ dw	
_RAM_C659_ dw	
_RAM_C65B_ db	
_RAM_C65C_ db	
_RAM_C65D_ dw	
_RAM_C65F_ db	
_RAM_C660_ db	
_RAM_C661_ dw	
_RAM_C663_ db	
.ende	
	
.enum $C66C export	
_RAM_C66C_ db	
_RAM_C66D_ db	
_RAM_C66E_ db	
_RAM_C66F_ db	
_RAM_C670_ db	
_RAM_C671_ db	
_RAM_C672_ db	
_RAM_C673_ dw	
_RAM_C675_ db	
_RAM_C676_ db	
_RAM_C677_ db	
_RAM_C678_ db	
.ende	
	
.enum $C690 export	
_RAM_C690_ db	
_RAM_C691_ db	
.ende	
	
.enum $C6B0 export	
_RAM_C6B0_ db	
.ende	
	
.enum $C6B3 export	
_RAM_C6B3_ db	
_RAM_C6B4_ db	
_RAM_C6B5_ db	
_RAM_C6B6_ dw	
_RAM_C6B8_ db	
_RAM_C6B9_ db	
_RAM_C6BA_ dsb $3a	
.ende	
	
.enum $C700 export	
_RAM_C700_ db	
_RAM_C701_ db	
_RAM_C702_ dw	
_RAM_C704_ dw	
_RAM_C706_ dw	
_RAM_C708_ db	
_RAM_C709_ db	
_RAM_C70A_ db	
_RAM_C70B_ db	
_RAM_C70C_ dw	
_RAM_C70E_ db	
_RAM_C70F_ db	
_RAM_C710_ db	
_RAM_C711_ db	
_RAM_C712_ db	
_RAM_C713_ db	
_RAM_C714_ db	
_RAM_C715_ dw	
_RAM_C717_ db	
_RAM_C718_ db	
_RAM_C719_ dw	
_RAM_C71B_ db	
_RAM_C71C_ db	
_RAM_C71D_ db	
_RAM_C71E_ db	
_RAM_C71F_ db	
_RAM_C720_ dw	
_RAM_C722_ db	
_RAM_C723_ dw	
_RAM_C725_ db	
_RAM_C726_ dw	
_RAM_C728_ dw	
_RAM_C72A_ dw	
_RAM_C72C_ dw	
_RAM_C72E_ dw	
_RAM_C730_ dw	
_RAM_C732_ db	
_RAM_C733_ db	
_RAM_C734_ dw	
_RAM_C736_ dw	
_RAM_C738_ db	
_RAM_C739_ db	
.ende	
	
.enum $C769 export	
_RAM_C769_ db	
.ende	
	
.enum $C7AD export	
_RAM_C7AD_ db	
.ende	
	
.enum $C7F1 export	
_RAM_C7F1_ dw	
.ende	
	
.enum $C800 export	
_RAM_C800_ db	
.ende	
	
.enum $C81D export	
_RAM_C81D_ db	
.ende	
	
.enum $C820 export	
_RAM_C820_ db	
.ende	
	
.enum $C83D export	
_RAM_C83D_ db	
.ende	
	
.enum $C840 export	
_RAM_C840_ db	
.ende	
	
.enum $C85D export	
_RAM_C85D_ db	
.ende	
	
.enum $C880 export	
_RAM_C880_ db	
_RAM_C881_ db	
.ende	
	
.enum $C8C0 export	
_RAM_C8C0_ db	
.ende	
	
.enum $C900 export	
_RAM_C900_ db	
.ende	
	
.enum $CDEF export	
_RAM_CDEF_ db	
.ende	
	
.enum $CE00 export	
_RAM_CE00_ db	
.ende	
	
.enum $D000 export	
_RAM_D000_ db	
.ende	
	
.enum $D200 export	
_RAM_D200_ db	
.ende	
	
.enum $D500 export	
_RAM_D500_ dsb $20	
_RAM_D520_ dsb $f0	
_RAM_D610_ db	
.ende	
	
.enum $D640 export	
_RAM_D640_ db	
.ende	
	
.enum $D66D export	
_RAM_D66D_ db	
.ende	
	
.enum $D800 export	
_RAM_D800_ db	
.ende	
	
.enum $DB76 export	
_RAM_DB76_ db	
.ende	
	
.enum $DE00 export	
_RAM_DE00_ db	
_RAM_DE01_ db	
_RAM_DE02_ db	
_RAM_DE03_ db	
_RAM_DE04_ db	
.ende	
	
.enum $DE07 export	
_RAM_DE07_ db	
_RAM_DE08_ db	
.ende	
	
.enum $DE0A export	
_RAM_DE0A_ db	
_RAM_DE0B_ db	
_RAM_DE0C_ db	
_RAM_DE0D_ db	
_RAM_DE0E_ db	
.ende	
	
.enum $DE15 export	
_RAM_DE15_ db	
_RAM_DE16_ db	
.ende	
	
.enum $DE18 export	
_RAM_DE18_ db	
.ende	
	
.enum $DE6E export	
_RAM_DE6E_ db	
.ende	
	
.enum $DE81 export	
_RAM_DE81_ db	
.ende	
	
.enum $DE8E export	
_RAM_DE8E_ db	
.ende	
	
.enum $DE95 export	
_RAM_DE95_ db	
.ende	
	
.enum $DEA1 export	
_RAM_DEA1_ db	
.ende	
	
.enum $DEAE export	
_RAM_DEAE_ db	
.ende	
	
.enum $DEB5 export	
_RAM_DEB5_ db	
.ende	
	
.enum $DEC1 export	
_RAM_DEC1_ db	
.ende	
	
.enum $DECE export	
_RAM_DECE_ db	
.ende	
	
.enum $DEEE export	
_RAM_DEEE_ db	
.ende	
	
.enum $DF0E export	
_RAM_DF0E_ db	
.ende	
	
.enum $DF2E export	
_RAM_DF2E_ db	
.ende	
	
.enum $DF35 export	
_RAM_DF35_ db	
.ende	
	
.enum $E000 export	
_RAM_E000_ db	
.ende	
	
.enum $E0E0 export	
_RAM_E0E0_ db	
.ende	
	
.enum $ED12 export	
_RAM_ED12_ db	
.ende	
	
.enum $F000 export	
_RAM_F000_ db	
.ende	
	
.enum $F080 export	
_RAM_F080_ db	
.ende	
	
.enum $F0F0 export	
_RAM_F0F0_ db	
.ende	
	
.enum $F76C export	
_RAM_F76C_ db	
.ende	
	
.enum $F878 export	
_RAM_F878_ db	
.ende	
	
.enum $FBC6 export	
_RAM_FBC6_ db	
.ende	
	
.enum $FCF3 export	
_RAM_FCF3_ db	
.ende	
	
.enum $FF3F export	
_RAM_FF3F_ db	
.ende	
	
.enum $FF60 export	
_RAM_FF60_ db	
.ende	
	
.enum $FFB8 export	
_RAM_FFB8_ db	
.ende	
	
.enum $FFBE export	
_RAM_FFBE_ db	
.ende	
	
.enum $FFC2 export	
_RAM_FFC2_ db	
.ende	
	
.enum $FFF8 export	
_RAM_FFF8_ db	
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
.define _PORT_DF_ $DF	
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
		jp _LABEL_85_
	
_LABEL_3_:	
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
	
	; Data from 21 to 23 (3 bytes)
	.db $FF $FF $FF
	
; Data from 24 to 2A (7 bytes)	
_DATA_24_:	
	.db $FF $FF $FF $FF $FF $FF $FF
	
; 1st entry of Pointer Table from 1A3BB (indexed by unknown)	
; Data from 2B to 2F (5 bytes)	
_DATA_2B_:	
	.db $FF $FF $FF $FF $FF
	
; Data from 30 to 34 (5 bytes)	
_DATA_30_:	
	.db $FF $FF $FF $FF $FF
	
; 1st entry of Pointer Table from 1A956 (indexed by unknown)	
; Data from 35 to 37 (3 bytes)	
_DATA_35_:	
	.db $FF $FF $FF
	
_LABEL_38_:	
		jp _LABEL_D16_
	
; Data from 3B to 3F (5 bytes)	
_DATA_3B_:	
	.db $06 $80 $A2 $81 $FF
	
; 1st entry of Pointer Table from 1A390 (indexed by unknown)	
; Data from 40 to 41 (2 bytes)	
_DATA_40_:	
	.db $82 $FF
	
; Data from 42 to 65 (36 bytes)	
_DATA_42_:	
	.db $83 $FF $84 $FF $85 $FB $86 $00 $87 $00 $88 $00 $89 $00 $8A $00
	.db $00 $18 $00 $E0
	.dsb 15, $FF
	.db $00
	
_LABEL_66_:	
		push af
		ld a, (_RAM_C000_)
		and $0C
		cp $04
		jr nz, +
		ld a, (_RAM_C005_)
		cp $0F
		jr c, +
		xor a
		ld (_RAM_C005_), a
		ld a, (_RAM_C004_)
		cpl
		ld (_RAM_C004_), a
+:	
		pop af
		retn
	
_LABEL_85_:	
		di
		ld sp, $DFFE
		im 1
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18A68_
		ld hl, _RAM_C001_
		ld de, _RAM_C001_ + 1
		ld bc, $00FE
		ld (hl), $00
		ldir
		ld a, $92
		out (_PORT_DF_), a
		ld b, $0A
		ld de, $FFFF
--:	
		ld hl, $39DE
-:	
		add hl, de
		jr c, -
		djnz --
		call _LABEL_3_
		ld (_RAM_C011_), a
		call _LABEL_174_
_LABEL_BA_:	
		di
		ld sp, $DFFE
		in a, (Port_VDPStatus)
		ld b, $16
		ld c, Port_VDPAddress
		ld hl, _DATA_3B_
		otir
		xor a
		ld (_RAM_C000_), a
		ld (_RAM_C004_), a
		ld hl, _RAM_C040_
		ld de, _RAM_C040_ + 1
		ld bc, $1DBF
		ld (hl), $00
		ldir
		ld hl, $0000
		ld de, _RAM_C049_
		ld b, $20
		call _LABEL_1077_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		call _LABEL_C05_
		ld a, $80
		ld (_RAM_C006_), a
		ld a, $E2
		out (Port_VDPAddress), a
		ld a, $81
		out (Port_VDPAddress), a
		ei
-:	
		call _LABEL_BD4_
		ld hl, -	; Overriding return address
		push hl
		ld a, (_RAM_C006_)
		and $0F
		ld hl, _DATA_120_
_LABEL_116_:	
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
; Jump Table from 120 to 131 (9 entries, indexed by _RAM_C006_)	
_DATA_120_:	
	.dw _LABEL_1DA_ _LABEL_2A8_ _LABEL_464_ _LABEL_52A_ _LABEL_5F8_ _LABEL_71F_ _LABEL_4D2_ _LABEL_A1B_
	.dw _LABEL_AA1_
	
_LABEL_132_:	
		ld a, (_RAM_C006_)
		bit 7, a
		ret z
		call _LABEL_3A9_
		ld hl, _LABEL_1A7_	; Overriding return address
		push hl
		ld a, (_RAM_C605_)
		ld (_RAM_C606_), a
		call _LABEL_C96_
		ld (_RAM_C605_), a
		and $30
		jr nz, +
		ld (_RAM_C009_), a
		ret
	
+:	
		ld hl, $C009
		cp (hl)
		ret z
		ld (_RAM_C009_), a
		ld hl, _RAM_C006_
		ld a, $4F
		and (hl)
		cp $41
		jr nz, +
		ld a, $03
		jr ++
	
+:	
		res 6, a
		cp $01
		ret z
		ld a, $86
++:	
		ld (_RAM_C006_), a
		ret
	
_LABEL_174_:	
		ld a, (_RAM_C000_)
		ld (_RAM_C012_), a
		ld a, (_RAM_C012_)
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
		ld a, (_RAM_C012_)
		out (Port_MemoryControl), a
		ret
	
_LABEL_1A7_:	
		ld hl, _RAM_C019_
		bit 7, (hl)
		ret z
		bit 0, (hl)
		ret nz
		exx
		ld hl, _RAM_C605_
		ld a, (hl)
		inc hl
		cp (hl)
		ret z
		or a
		ret z
		ex af, af'
		exx
		set 1, (hl)
		inc hl
		ld a, (hl)
		cp $06
		ret nc
		inc (hl)
		ld e, a
		ld d, $00
		ld hl, _DATA_1D4_
		add hl, de
		ex af, af'
		and (hl)
		ret nz
		ld hl, _RAM_C019_
		set 0, (hl)
		ret
	
; Data from 1D4 to 1D9 (6 bytes)	
_DATA_1D4_:	
	.db $02 $02 $04 $08 $01 $01
	
; 1st entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_1DA_:	
		ld a, (_RAM_C011_)
		or a
		jr nz, _LABEL_225_
		ld hl, _RAM_C006_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		di
		call _LABEL_C05_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $0000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		ld de, $6C20
		ld hl, _DATA_8000_
		ld b, $23
		call _LABEL_257_
		ld de, $7A16
		ld hl, _DATA_8230_
		ld bc, $040A
		ld a, $01
		call ++
		ei
		ld hl, $00F0
		ld (_RAM_C615_), hl
		ld hl, _DATA_22D_
		call _LABEL_11A7_
+:	
		call _LABEL_C1D_
		ret nz
_LABEL_225_:	
		ld hl, _RAM_C006_
		ld (hl), $81
		jp _LABEL_11E9_
	
; Data from 22D to 230 (4 bytes)	
_DATA_22D_:	
	.db $03 $00 $3F $30
	
---:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ret
	
++:	
		ld (_RAM_C100_), a
--:	
		push bc
		call ---
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		ld a, (_RAM_C100_)
		nop
		out (c), a
		nop
		jr nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz --
		ret
	
_LABEL_257_:	
		call ---
		ld c, Port_VDPData
		ld e, b
-:	
		ld d, $08
		call _LABEL_266_
		dec e
		jr nz, -
		ret
	
_LABEL_266_:	
		xor a
		ex (sp), hl
		ex (sp), hl
		outi
		ex (sp), hl
		ex (sp), hl
		outi
		ex (sp), hl
		ex (sp), hl
		out (Port_VDPData), a
		ex (sp), hl
		ex (sp), hl
		out (Port_VDPData), a
		dec d
		jr nz, _LABEL_266_
		ret
	
; Data from 27B to 27F (5 bytes)	
_DATA_27B_:	
	.db $20 $2A $00 $00 $00
	
; 1st entry of Pointer Table from 144F (indexed by unknown)	
; Data from 280 to 29B (28 bytes)	
_DATA_280_:	
	.dsb 14, $00
	.db $03
	.dsb 13, $00
	
; Data from 29C to 2A7 (12 bytes)	
_DATA_29C_:	
	.db $00 $00 $00 $10 $00 $01 $09 $08 $9B $09 $D8 $9B
	
; 2nd entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_2A8_:	
		ld hl, _RAM_C006_
		bit 6, (hl)
		jp nz, _LABEL_305_
		set 6, (hl)
		inc hl
		ld (hl), $00
		call _LABEL_11E9_
		di
		ld a, $26
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		call _LABEL_C05_
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1CFF
		ld (hl), $00
		ldir
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		ld a, $09
		ld (_RAM_FFFF_), a
		ld de, $0000
		ld hl, _DATA_24C1E_
		call _LABEL_10AB_
		ld hl, _DATA_29C_
		ld de, _RAM_C71C_
		ld bc, $000C
		ldir
		ld hl, $3800
		ld (_RAM_C0A2_), hl
		ei
		ld hl, _DATA_27B_
		jp _LABEL_11A7_
	
_LABEL_305_:	
		inc hl
		ld a, (hl)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_37D_
		ld hl, $0600
		ld (_RAM_C70C_), hl
		call _LABEL_18A5_
		ld a, (_RAM_C701_)
		bit 3, a
		ret z
		ld hl, _RAM_C007_
		inc (hl)
		ld hl, _RAM_C63F_
		ld (hl), $10
		inc hl
		ld (hl), $00
		ld hl, _RAM_C019_
		ld (hl), $80
		inc hl
		ld (hl), $00
		ret
	
+:	
		ld hl, _RAM_C63F_
		dec (hl)
		ret nz
		ld (hl), $06
		inc hl
		ld a, (hl)
		cp $0D
		jr z, +
		inc (hl)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_38A_
		add hl, de
		ld a, (hl)
		ld (_RAM_C642_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C643_), a
		ld a, $80
		ld (_RAM_C641_), a
		ret
	
+:	
		ld hl, $0010
		ld (_RAM_C615_), hl
-:	
		call _LABEL_BD4_
		call _LABEL_C1D_
		jr nz, -
		ld hl, _RAM_C007_
		inc (hl)
		ld hl, _DATA_3A4_
		ld de, _RAM_C644_
		ld bc, $0005
		ldir
		ld a, $02
		ld (_RAM_FFFF_), a
		jp _LABEL_B2E1_
	
_LABEL_37D_:	
		ld a, (_RAM_C644_)
		rlca
		ret c
		ld hl, _RAM_C006_
		ld (hl), $82
		jp _LABEL_11E9_
	
; Data from 38A to 3A3 (26 bytes)	
_DATA_38A_:	
	.db $14 $3F $1C $15 $1D $24 $17 $07 $18 $06 $19 $02 $1A $01 $1B $26
	.db $16 $2B $15 $00 $1E $3F $1F $00 $10 $2A
	
; Data from 3A4 to 3A8 (5 bytes)	
_DATA_3A4_:	
	.db $80 $08 $00 $3C $FF
	
_LABEL_3A9_:	
		ld hl, _RAM_C644_
		bit 7, (hl)
		ret z
		ld a, $09
		ld (_RAM_FFFF_), a
		bit 6, (hl)
		jr z, _LABEL_402_
		inc hl
		dec (hl)
		jr nz, ++
		ld (hl), $18
		inc hl
		ld de, _DATA_26018_
		ld a, (hl)
		cpl
		ld (hl), a
		or a
		jr z, +
		ld de, _DATA_26050_
+:	
		ld hl, $3CCE
		ld bc, $0022
		call _LABEL_1025_
++:	
		ld hl, _RAM_C647_
		dec (hl)
		ret nz
		ld (hl), $B4
		inc hl
		inc (hl)
		ld a, (hl)
		cp $03
		jr z, +
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3FC_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $3B56
		ld bc, $020A
		jp _LABEL_105A_
	
+:	
		ld hl, _RAM_C644_
		res 7, (hl)
		ret
	
; 1st entry of Pointer Table from 1AFB2 (indexed by unknown)	
; Pointer Table from 3FC to 401 (3 entries, indexed by _RAM_C648_)	
_DATA_3FC_:	
	.dw _DATA_25FC8_ _DATA_25FF0_ _DATA_25FA0_
	
_LABEL_402_:	
		set 6, (hl)
		ld hl, $3CCE
		ld de, _DATA_26018_
		ld bc, $0022
		call _LABEL_1025_
		ld hl, $3D94
		ld de, _DATA_2603A_
		ld bc, $0016
		call _LABEL_1025_
		ld hl, $3802
		ld de, _DATA_44A_
		ld bc, $000A
		call _LABEL_1025_
		ld hl, $381E
		ld de, _DATA_454_
		ld bc, $0010
		call _LABEL_1025_
		ld hl, $380E
		ld de, _RAM_C040_
		ld b, $03
		call _LABEL_5356_
		ld hl, $3830
		ld de, _RAM_C013_
		ld b, $03
		jp _LABEL_5356_
	
; Data from 44A to 453 (10 bytes)	
_DATA_44A_:	
	.db $1D $01 $0D $01 $19 $01 $1C $01 $0F $01
	
; Data from 454 to 463 (16 bytes)	
_DATA_454_:	
	.db $12 $01 $13 $01 $26 $01 $1D $01 $0D $01 $19 $01 $1C $01 $0F $01
	
; 3rd entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_464_:	
		ld hl, _RAM_C006_
		bit 6, (hl)
		jp nz, _LABEL_4B5_
		set 6, (hl)
		di
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2160
		ld hl, _DATA_8395_
		call _LABEL_10AB_
		ei
		ld a, (_RAM_C018_)
		and $01
		ld e, a
		ld d, $00
		inc a
		ld (_RAM_C018_), a
		ld a, $04
		ld (_RAM_FFFF_), a
		ld hl, _DATA_4C2_
		add hl, de
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld a, (hl)
		ld (_RAM_C092_), a
		inc hl
		ld de, _RAM_C00B_
		ld bc, $0005
		ldir
		call _LABEL_5D6_
		ld hl, _RAM_C000_
		ld (hl), $08
		push hl
		call _LABEL_71F_
		pop hl
		set 4, (hl)
		ret
	
_LABEL_4B5_:	
		ld a, (_RAM_C00B_)
		rlca
		jp nc, _LABEL_603_
		ld hl, _RAM_C006_
		ld (hl), $06
		ret
	
; Pointer Table from 4C2 to 4C5 (2 entries, indexed by _RAM_C018_)	
_DATA_4C2_:	
	.dw _DATA_4C6_ _DATA_4CC_
	
; 1st entry of Pointer Table from 4C2 (indexed by _RAM_C018_)	
; Data from 4C6 to 4C9 (4 bytes)	
_DATA_4C6_:	
	.db $00 $02 $00 $00
	
	; Pointer Table from 4CA to 4CB (1 entries, indexed by unknown)
	.dw _DATA_133DC_
	
; 2nd entry of Pointer Table from 4C2 (indexed by _RAM_C018_)	
; Data from 4CC to 4CF (4 bytes)	
_DATA_4CC_:	
	.db $01 $02 $00 $00
	
	; Pointer Table from 4D0 to 4D1 (1 entries, indexed by unknown)
	.dw _DATA_134C2_
	
; 7th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_4D2_:	
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18A68_
		call _LABEL_11E9_
		di
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $0000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		call _LABEL_C05_
		xor a
		ld (_RAM_C000_), a
		ld hl, _RAM_C040_
		ld de, _RAM_C040_ + 1
		ld bc, $1DBF
		ld (hl), a
		ldir
		ld hl, _RAM_C006_
		ld (hl), $81
		inc hl
		ld (hl), $00
		ei
		ret
	
; Data from 509 to 529 (33 bytes)	
_DATA_509_:	
	.db $20 $00 $00 $3F
	.dsb 29, $00
	
; 4th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_52A_:	
		ld hl, _RAM_C006_
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		inc hl
		ld (hl), $01
		call _LABEL_11E9_
		ld hl, _RAM_C028_
		ld de, _RAM_C028_ + 1
		ld bc, $1DD7
		ld (hl), $00
		ldir
		ld a, $00
		ld (_RAM_C092_), a
		ld a, (_RAM_C019_)
		and $03
		cp $02
		jp nz, _LABEL_5BE_
		di
		ld a, $05
		ld (_RAM_FFFF_), a
		ld hl, $3B1A
		ld de, _DATA_17E00_
		ld bc, $0010
		call _LABEL_1025_
		ei
		ld hl, _DATA_509_
		call _LABEL_11A7_
+:	
		ld hl, _RAM_C007_
		dec (hl)
		ret nz
		ld (hl), $01
		call _LABEL_C96_
		ld hl, _RAM_C009_
		cp (hl)
		ret z
		ld (hl), a
		bit 4, a
		jr nz, _LABEL_5BE_
		and $03
		ret z
		and $01
		jr z, ++
		ld a, (_RAM_C092_)
		add a, $FF
		jr c, +
		ld a, $12
+:	
		jr +++
	
++:	
		ld a, (_RAM_C092_)
		inc a
		cp $13
		jr c, +++
		ld a, $00
+++:	
		ld (_RAM_C092_), a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, _DATA_17E00_
		add hl, de
		ex de, hl
		ld hl, $3B1A
		ld bc, $0010
		di
		ld a, $05
		ld (_RAM_FFFF_), a
		call _LABEL_1025_
		ei
		ret
	
_LABEL_5BE_:	
		di
		call _LABEL_C05_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2160
		ld hl, _DATA_8395_
		call _LABEL_10AB_
		ei
		ld a, $08
		ld (_RAM_C006_), a
_LABEL_5D6_:	
		ld a, $02
		ld (_RAM_C07A_), a
		ld a, $01
		ld (_RAM_C044_), a
_LABEL_5E0_:	
		ld a, $00
		ld (_RAM_C0A6_), a
		ld a, $00
		ld (_RAM_C0A7_), a
		ld a, $01
		ld (_RAM_C0A8_), a
		ld a, $06
		ld (_RAM_C06C_), a
		ld (_RAM_C06D_), a
		ret
	
; 5th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_5F8_:	
		ld a, (_RAM_C000_)
		rrca
		jp c, +
		rrca
		jp c, _LABEL_65E_
_LABEL_603_:	
		call _LABEL_19A1_
		call _LABEL_18A5_
		call _LABEL_12B9_
		call _LABEL_557B_
		ld a, $02
		ld (_RAM_FFFF_), a
		call _LABEL_ADAF_
		ld a, (_RAM_C633_)
		or a
		ret z
		dec a
		ld (_RAM_C633_), a
		ret
	
+:	
		ld a, $86
		ld (_RAM_DE03_), a
		ld hl, _RAM_C07C_
		res 6, (hl)
		set 7, (hl)
		ld a, $01
		ld (_RAM_C654_), a
		ld hl, $00F0
		ld (_RAM_C615_), hl
-:	
		call _LABEL_BD4_
		call _LABEL_C1D_
		jr nz, -
		ld a, $09
		call _LABEL_1252_
		ld hl, _RAM_C000_
		res 0, (hl)
		res 2, (hl)
		ld e, $05
		ld hl, _RAM_C07A_
		dec (hl)
		jp p, +
		ld e, $07
+:	
		ld a, e
		ld (_RAM_C006_), a
		jp _LABEL_5E0_
	
_LABEL_65E_:	
		ld a, $88
		ld (_RAM_DE03_), a
		ld a, (_RAM_C652_)
		bit 2, a
		jr z, +
		ld a, $D0
		ld (_RAM_C100_), a
+:	
		ld a, $80
		ld (_RAM_C614_), a
		ld hl, _RAM_C07C_
		res 6, (hl)
		set 7, (hl)
		ld a, $01
		ld (_RAM_C654_), a
		ld hl, $00F0
		ld (_RAM_C615_), hl
-:	
		call _LABEL_BD4_
		call _LABEL_C1D_
		jr nz, -
		ld a, $09
		call _LABEL_1252_
		ld hl, _RAM_C093_
		ld de, _RAM_C093_ + 1
		ld bc, $0008
		ld (hl), $00
		ldir
		ld hl, _RAM_C000_
		res 1, (hl)
		bit 7, (hl)
		jr z, ++
		res 7, (hl)
		call _LABEL_58C4_
		ld a, $82
		ld (_RAM_DE03_), a
		ld a, $08
		ld (_RAM_C61F_), a
-:	
		call _LABEL_BD4_
		ld a, (_RAM_C66C_)
		and $01
		jp nz, +
		call _LABEL_5AB3_
		call _LABEL_5B51_
		call _LABEL_12B9_
		ld a, $02
		ld (_RAM_FFFF_), a
		call _LABEL_AFAE_
		jp -
	
+:	
		ld hl, _DATA_5888_ + 1
		ld a, $02
		ld (_RAM_C66E_), hl
		call _LABEL_1252_
		call _LABEL_60C2_
++:	
		ld a, (_RAM_C652_)
		bit 2, a
		jr z, +
		ld a, $01
		ld (_RAM_C017_), a
-:	
		call _LABEL_BD4_
		call _LABEL_AA1_
		ld a, (_RAM_C1C0_)
		or a
		jr nz, -
+:	
		ld e, $08
		ld hl, _RAM_C092_
		inc (hl)
		ld a, $12
		cp (hl)
		jr nc, +
		ld e, $07
+:	
		ld hl, _RAM_C006_
		ld (hl), e
		ld a, (_RAM_C652_)
		bit 2, a
		jp z, _LABEL_11E9_
		ld a, (_RAM_C06D_)
		ld (_RAM_C06C_), a
		jp _LABEL_11E9_
	
; 6th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_71F_:	
		xor a
		ld (_RAM_C06B_), a
		call _LABEL_11E9_
		di
		ld a, $66
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $16FF
		ld (hl), $00
		ldir
		call _LABEL_C05_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		ld de, $2160
		ld hl, _DATA_8395_
		call _LABEL_10AB_
		ld a, $04
		ld (_RAM_FFFF_), a
		ld hl, _DATA_11780_
		ld de, $02C0
		call _LABEL_10AB_
		call _LABEL_990_
		ld a, $0F
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld d, $00
		ld hl, _DATA_3F2B7_
		add hl, de
		ld a, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld (_RAM_FFFF_), a
		ld de, $2800
		call _LABEL_10AB_
		call _LABEL_86E_
		call _LABEL_16AF_
		call _LABEL_9E0_
		call _LABEL_56C7_
		ld hl, _DATA_855_
		call _LABEL_C27_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $00
		call _LABEL_B314_
		ld a, $80
		ld (_RAM_C079_), a
		ld (_RAM_C078_), a
		ld (_RAM_C614_), a
		ld hl, _RAM_C07C_
		set 7, (hl)
		ld a, $D0
		ld (_RAM_C100_), a
		ei
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_86B0_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_C0A4_), hl
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, $01
		ld (_RAM_C1C0_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26DB0_
		add hl, de
		ld a, (hl)
		ld (_RAM_C1C3_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C1C6_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26F1B_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (_RAM_C09C_), de
		ld a, (_RAM_C092_)
		ld e, a
		ld d, $00
		ld hl, _DATA_26F41_
		add hl, de
		ld a, (hl)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_A13_
		add hl, de
		ld de, _RAM_C09E_
		ld bc, $0004
		ldir
		ld e, $81
		ld a, (_RAM_C652_)
		bit 2, a
		jr z, +
		ld e, $87
+:	
		ld a, e
		ld (_RAM_DE03_), a
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26AF0_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		inc hl
		ex de, hl
		ld a, $09
		call _LABEL_1232_
		ld hl, _RAM_C000_
		set 2, (hl)
		bit 3, (hl)
		ret nz
		ld hl, _RAM_C006_
		ld (hl), $04
		ret
	
; Data from 855 to 86D (25 bytes)	
_DATA_855_:	
	.db $02 $08 $38 $0A $00 $0B $09 $0C $09 $0D $09 $0E $09 $0F $09 $44
	.db $38 $06 $00 $2D $09 $2E $09 $2F $09
	
_LABEL_86E_:	
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26DD6_
		add hl, de
		ld de, _RAM_C64C_
		ld bc, $0007
		ldir
		ld a, $0F
		ld (_RAM_FFFF_), a
		ld hl, $3880
		ld (_RAM_C0A2_), hl
		ld (_RAM_C702_), hl
		ld hl, $C900
		ld (_RAM_C704_), hl
		ld a, $01
		ld (_RAM_C700_), a
		ld a, $06
		ld (_RAM_C701_), a
		ld a, (_RAM_C092_)
		cp $0E
		jr nz, +
		ld hl, $38A8
		ld (_RAM_C702_), hl
		ld hl, $C928
		ld (_RAM_C704_), hl
		ld hl, $00A1
		ld (_RAM_C713_), hl
		ld hl, $005F
		ld (_RAM_C70F_), hl
		ld hl, $0700
		ld (_RAM_C710_), hl
		ld a, $02
		ld (_RAM_C701_), a
+:	
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3F2F0_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, _RAM_C71C_
		ld bc, $0010
		ldir
		ld a, (_RAM_C700_)
		bit 4, a
		jr z, +
		ld a, (_RAM_C718_)
		neg
		and $08
		rrca
		ld (_RAM_C708_), a
		ld de, (_RAM_C719_)
		ld hl, (_RAM_C71B_)
		ld a, (_RAM_C71D_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
		jr ++
	
+:	
		ld a, (_RAM_C718_)
		and $08
		rrca
		ld (_RAM_C708_), a
		ld hl, (_RAM_C71C_)
++:	
		ld a, l
		srl h
		rra
		srl h
		rra
		srl h
		rra
		srl h
		rra
		ld (_RAM_C709_), a
		jp +
	
_LABEL_929_:	
		ld hl, _RAM_C701_
		res 1, (hl)
		ld hl, _RAM_C71E_
		inc (hl)
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26A72_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_C71E_)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld (_RAM_C72A_), hl
		ld (_RAM_C728_), hl
		ret
	
_LABEL_95A_:	
		ld hl, _RAM_C701_
		res 0, (hl)
		ld hl, _RAM_C71E_
		dec (hl)
+:	
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26A72_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_C71E_)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_C72A_), hl
		ld (_RAM_C728_), de
		ret
	
_LABEL_990_:	
		ld a, $0F
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3EF88_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld de, _RAM_D520_
		push de
		ld bc, $004E
		ldir
		pop hl
		ld b, (hl)
		inc hl
-:	
		push bc
		ld a, (hl)
		ld (_RAM_FFFF_), a
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		push hl
		push bc
		pop hl
		call _LABEL_10AB_
		pop hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld a, b
		or c
		jr z, +
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		push hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		call _LABEL_115B_
		pop hl
		inc hl
		inc hl
+:	
		pop bc
		djnz -
		ret
	
_LABEL_9E0_:	
		ld b, $09
		ld hl, $C092
-:	
		inc hl
		ld a, (hl)
		or a
		jr nz, _LABEL_9EE_
		djnz -
		jr +
	
_LABEL_9EE_:	
		and $4F
		ld (hl), a
		inc hl
		ld a, (hl)
		djnz _LABEL_9EE_
		ret
	
+:	
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_26E6E_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, _RAM_C093_
		ld bc, $0009
		ldir
		ret
	
; Data from A13 to A1A (8 bytes)	
_DATA_A13_:	
	.db $A0 $89 $28 $90 $E2 $8A $B6 $91
	
; 8th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_A1B_:	
		ld hl, _RAM_C006_
		bit 6, (hl)
		jp nz, _LABEL_A68_
		set 6, (hl)
		call _LABEL_11E9_
		di
		ld a, $26
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		call _LABEL_C05_
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1CFF
		xor a
		ld (hl), a
		ldir
		ld (_RAM_C018_), a
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		ld hl, _DATA_A86_
		call _LABEL_C27_
		ld hl, $012C
		ld (_RAM_C615_), hl
		ei
		ld hl, _DATA_A9D_
		jp _LABEL_11A7_
	
	; Data from A65 to A67 (3 bytes)
	.db $23 $7E $3D
	
_LABEL_A68_:	
		call _LABEL_C96_
		and $30
		jr nz, +
		call _LABEL_C9C_
		and $30
		jr nz, +
		call _LABEL_C1D_
		ret nz
+:	
		ld (_RAM_C009_), a
		call _LABEL_11E9_
		ld hl, _RAM_C006_
		ld (hl), $81
		ret
	
; Data from A86 to A9C (23 bytes)	
_DATA_A86_:	
	.db $01 $56 $3A $12 $00 $11 $01 $0B $01 $17 $01 $0F $01 $00 $01 $19
	.db $01 $20 $01 $0F $01 $1C $01
	
; Data from A9D to AA0 (4 bytes)	
_DATA_A9D_:	
	.db $03 $00 $00 $3F
	
; 9th entry of Jump Table from 120 (indexed by _RAM_C006_)	
_LABEL_AA1_:	
		ld hl, _RAM_C000_
		set 2, (hl)
		ld hl, _RAM_C006_
		bit 6, (hl)
		jp nz, _LABEL_B42_
		set 6, (hl)
		call _LABEL_11E9_
		di
		call _LABEL_C05_
		xor a
		ld (_RAM_C63A_), a
		ld (_RAM_C70F_), a
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $041F
		ld (hl), $00
		ldir
		ld a, $92
		ld (_RAM_C1C0_), a
		ld hl, _DATA_91B6_
		ld de, _DATA_8AE2_
		ld (_RAM_C0A0_), hl
		ld (_RAM_C09E_), de
		ld hl, _DATA_91B6_
		ld de, _DATA_8AE2_
		ld (_RAM_C0A0_), hl
		ld (_RAM_C09E_), de
		ld a, $02
		ld (_RAM_FFFF_), a
		ld hl, (_DATA_86B0_)
		ld (_RAM_C0A4_), hl
		ld a, $0F
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		push de
		ld hl, _DATA_BAE_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ex de, hl
		ld hl, $7810
		ld bc, $1810
		call _LABEL_105A_
		ld a, $05
		ld (_RAM_FFFF_), a
		ld hl, _DATA_17C61_
		ld de, $4000
		call _LABEL_10AB_
		pop de
		ld hl, _DATA_B62_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		push de
		ld de, $6000
		call _LABEL_10AB_
		pop de
		ld hl, _DATA_B88_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ex de, hl
		ei
		ld a, $05
		jp _LABEL_1232_
	
_LABEL_B42_:	
		call _LABEL_12B9_
		ld a, (_RAM_C1C0_)
		or a
		ret nz
		ld a, $05
		ld (_RAM_C006_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_B62_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, $05
		jp _LABEL_1252_
	
; Pointer Table from B62 to B87 (19 entries, indexed by _RAM_C092_)	
_DATA_B62_:	
	.dw _DATA_14020_ _DATA_14020_ _DATA_14020_ _DATA_14D92_ _DATA_14D92_ _DATA_14D92_ _DATA_14D92_ _DATA_158AF_
	.dw _DATA_158AF_ _DATA_158AF_ _DATA_158AF_ _DATA_166BE_ _DATA_166BE_ _DATA_166BE_ _DATA_166BE_ _DATA_1706C_
	.dw _DATA_1706C_ _DATA_1706C_ _DATA_1706C_
	
; Pointer Table from B88 to BAD (19 entries, indexed by _RAM_C092_)	
_DATA_B88_:	
	.dw _DATA_24000_ _DATA_24000_ _DATA_24000_ _DATA_24D72_ _DATA_24D72_ _DATA_24D72_ _DATA_24D72_ _DATA_2588F_
	.dw _DATA_2588F_ _DATA_2588F_ _DATA_2588F_ _DATA_2669E_ _DATA_2669E_ _DATA_2669E_ _DATA_2669E_ _DATA_2704C_
	.dw _DATA_2704C_ _DATA_2704C_ _DATA_2704C_
	
; Pointer Table from BAE to BD3 (19 entries, indexed by _RAM_C092_)	
_DATA_BAE_:	
	.dw _DATA_3E087_ _DATA_3E087_ _DATA_3E087_ _DATA_3E387_ _DATA_3E387_ _DATA_3E387_ _DATA_3E387_ _DATA_3E687_
	.dw _DATA_3E687_ _DATA_3E687_ _DATA_3E687_ _DATA_3E987_ _DATA_3E987_ _DATA_3E987_ _DATA_3E987_ _DATA_3EC87_
	.dw _DATA_3EC87_ _DATA_3EC87_ _DATA_3EC87_
	
_LABEL_BD4_:	
		xor a
		ld (_RAM_C001_), a
-:	
		ld a, (_RAM_C004_)
		or a
		call nz, +
		ld hl, _RAM_C001_
		ld a, (hl)
		or a
		jr z, -
		ret
	
+:	
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18AA7_
-:	
		ld hl, _RAM_C001_
		ld a, (hl)
		or a
		jr z, -
		ld (hl), $00
		call _LABEL_12B9_
		ld a, (_RAM_C004_)
		or a
		jr nz, -
		ret
	
; Data from C02 to C04 (3 bytes)	
_DATA_C02_:	
	.db $00 $09 $E0
	
_LABEL_C05_:	
		ld hl, $3800
		ld de, _DATA_C02_
		ld bc, $0380
		call _LABEL_1046_
		ld hl, $7F00
		ld de, _DATA_C02_ + 2
		ld bc, $0040
		jp _LABEL_1036_
	
_LABEL_C1D_:	
		ld hl, (_RAM_C615_)
		dec hl
		ld (_RAM_C615_), hl
		ld a, l
		or h
		ret
	
_LABEL_C27_:	
		ld b, (hl)
		inc hl
-:	
		push bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ex de, hl
		call _LABEL_1025_
		ex de, hl
		add hl, bc
		pop bc
		djnz -
		ret
	
_LABEL_C3C_:	
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
	
	; Data from C48 to C5B (20 bytes)
	.db $21 $00 $00 $3E $10 $29 $EB $ED $6A $EB $30 $04 $09 $30 $01 $13
	.db $3D $20 $F2 $C9
	
_LABEL_C5C_:	
		ld a, $10
-:	
		sla e
		rl d
		adc hl, hl
		jr c, +
		sbc hl, bc
		jr nc, ++
		add hl, bc
		dec a
		jr nz, -
		ret
	
+:	
		or a
		sbc hl, bc
++:	
		inc e
		dec a
		jr nz, -
		ret
	
_LABEL_C77_:	
		ld a, (_RAM_C000_)
		bit 2, a
		ret z
		bit 4, a
		jp nz, +
		ld a, (_RAM_C603_)
		ld (_RAM_C604_), a
		call _LABEL_C96_
		ld (_RAM_C603_), a
		ret
	
	; Data from C8F to C95 (7 bytes)
	.db $CD $9C $0C $32 $03 $C6 $C9
	
_LABEL_C96_:	
		in a, (Port_IOPort1)
		cpl
		and $3F
		ret
	
_LABEL_C9C_:	
		in a, (Port_IOPort1)
		ld c, a
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		cpl
		and $3F
		ret
	
+:	
		ld a, $04
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C603_)
		ld (_RAM_C604_), a
		ld ix, _RAM_C00B_
		ld l, (ix+3)
		ld h, (ix+4)
_LABEL_CC0_:	
		ld a, (hl)
		or a
		jr z, _LABEL_D10_
		bit 7, a
		jr nz, ++
		cp (ix+1)
		jr z, +
		inc hl
		ld a, (hl)
		ld (_RAM_C603_), a
		ld (_RAM_C605_), a
		inc (ix+1)
		ret
	
+:	
		inc hl
		inc hl
		ld (ix+3), l
		ld (ix+4), h
		ld (ix+1), $00
		jr _LABEL_CC0_
	
++:	
		and $7F
		cp (ix+1)
		jr z, +
		inc hl
		ld e, (ix+1)
		ld d, $00
		add hl, de
		ld a, (hl)
		ld (_RAM_C603_), a
		inc (ix+1)
		ret
	
+:	
		inc hl
		ld e, (ix+1)
		ld d, $00
		add hl, de
		ld (ix+3), l
		ld (ix+4), h
		ld (ix+1), $00
		jr _LABEL_CC0_
	
_LABEL_D10_:	
		ld hl, _RAM_C00B_
		set 7, (hl)
		ret
	
_LABEL_D16_:	
		push af
		in a, (Port_VDPStatus)
		rlca
		jp nc, _LABEL_FFD_
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
		ld a, (_RAM_FFFF_)
		push af
		ld hl, _RAM_C003_
		in a, (Port_IOPort2)
		and $10
		ld c, (hl)
		ld (hl), a
		xor c
		and c
		jr z, +
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18A68_
		jp _LABEL_BA_
	
+:	
		ld c, Port_VDPData
		ld a, (_RAM_C614_)
		rlca
		jp nc, _LABEL_F84_
		rlca
		jp nc, _LABEL_DEE_
		ld a, (_RAM_C63B_)
		ld (_RAM_FFFF_), a
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $00
		or $40
		out (Port_VDPAddress), a
		ld hl, (_RAM_C600_)
		ld a, (_RAM_C634_)
_LABEL_D6A_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		dec a
		jp nz, _LABEL_D6A_
_LABEL_DEE_:	
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld hl, _RAM_C100_
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		ld a, $80
		out (Port_VDPAddress), a
		ld a, $7F
		out (Port_VDPAddress), a
		ld hl, _RAM_C140_
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
_LABEL_F84_:	
		ld a, (_RAM_C005_)
		inc a
		cp $0F
		jr c, +
		ld a, $0F
+:	
		ld (_RAM_C005_), a
		ld a, (_RAM_C004_)
		or a
		jp nz, _LABEL_1011_
		call _LABEL_1AD4_
		ld a, (_RAM_C614_)
		and $C0
		cp $C0
		jr z, +
		ld a, (_RAM_C001_)
		or a
		jp nz, +
		call _LABEL_5346_
		call _LABEL_5381_
		call _LABEL_53A3_
		call _LABEL_53DF_
		call _LABEL_6052_
		call _LABEL_5046_
		call _LABEL_1205_
		call _LABEL_1219_
		call _LABEL_7693_
		call _LABEL_132_
		call _LABEL_C77_
		call _LABEL_59D7_
+:	
		call _LABEL_5156_
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18000_
_LABEL_FDA_:	
		ld a, (_RAM_C614_)
		rlca
		jr nc, +
		xor a
		ld (_RAM_C614_), a
+:	
		ld hl, _RAM_C001_
		inc (hl)
		pop af
		ld (_RAM_FFFF_), a
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
	
_LABEL_FFD_:	
		ld a, (_RAM_C63A_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, $8F
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		pop af
		ei
		ret
	
_LABEL_1011_:	
		ld a, (_RAM_C70F_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		jr _LABEL_FDA_
	
_LABEL_101C_:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, $40
		or h
		out (Port_VDPAddress), a
		ret
	
_LABEL_1025_:	
		call _LABEL_101C_
		push de
		push bc
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		ret
	
_LABEL_1036_:	
		call _LABEL_101C_
		push bc
		push de
-:	
		ld a, (de)
		out (Port_VDPData), a
		dec bc
		ld a, c
		or b
		jr nz, -
		pop de
		pop bc
		ret
	
_LABEL_1046_:	
		call _LABEL_101C_
		ex (sp), hl
		ex (sp), hl
-:	
		ld a, (de)
		out (Port_VDPData), a
		push de
		inc de
		ld a, (de)
		out (Port_VDPData), a
		pop de
		dec bc
		ld a, c
		or b
		jr nz, -
		ret
	
_LABEL_105A_:	
		push bc
		ld b, $00
		call _LABEL_101C_
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ex (sp), hl
		ex (sp), hl
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jr nz, -
		ld bc, $0040
		add hl, bc
		pop bc
		djnz _LABEL_105A_
		ret
	
_LABEL_1077_:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, $C0
		or h
		out (Port_VDPAddress), a
-:	
		ex (sp), hl
		ex (sp), hl
		ld a, (de)
		out (Port_VDPData), a
		inc de
		djnz -
		ret
	
	; Data from 1088 to 10AA (35 bytes)
	.db $32 $13 $C6 $CD $1C $10 $EB $7E $D9 $0E $BE $06 $04 $67 $3A $13
	.db $C6 $1F $54 $38 $02 $16 $00 $ED $51 $10 $F6 $D9 $23 $0B $78 $B1
	.db $20 $E5 $C9
	
_LABEL_10AB_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_10B8_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_10B8_:	
		ld a, (hl)
		inc hl
		or a
		ret z
		ld b, a
		and $80
		ld c, a
		ld a, b
		and $7F
		ld b, a
-:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		or $40
		out (Port_VDPAddress), a
		ex (sp), hl
		ex (sp), hl
		ld a, (hl)
		out (Port_VDPData), a
		xor a
		or c
		jr z, +
		inc hl
+:	
		inc de
		inc de
		inc de
		inc de
		djnz -
		jp nz, _LABEL_10B8_
		inc hl
		jp _LABEL_10B8_
	
_LABEL_10E3_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_10F0_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_10F0_:	
		ld a, (hl)
		inc hl
		or a
		ret z
		ld b, a
		and $80
		ld c, a
		ld a, b
		and $7F
		ld b, a
-:	
		di
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		or $40
		out (Port_VDPAddress), a
		ex (sp), hl
		ex (sp), hl
		ld a, (hl)
		out (Port_VDPData), a
		ei
		xor a
		or c
		jr z, +
		inc hl
+:	
		inc de
		inc de
		inc de
		inc de
		djnz -
		jp nz, _LABEL_10F0_
		inc hl
		jp _LABEL_10F0_
	
	; Data from 111D to 1147 (43 bytes)
	.db $06 $02 $C5 $D5 $CD $2A $11 $D1 $13 $C1 $10 $F6 $C9 $7E $23 $B7
	.db $C8 $47 $E6 $80 $4F $78 $E6 $7F $47 $7E $12 $AF $B1 $28 $01 $23
	.db $13 $13 $10 $F5 $C2 $2A $11 $23 $C3 $2A $11
	
_LABEL_1148_:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		push bc
		pop bc
-:	
		in a, (Port_VDPData)
		ld (hl), a
		inc hl
		dec bc
		ld a, c
		or b
		jp nz, -
		ret
	
_LABEL_115B_:	
		push hl
		push bc
		ld hl, _RAM_D800_
		call _LABEL_1148_
		pop bc
		pop hl
		call _LABEL_101C_
		ld hl, _RAM_D800_
--:	
		ld e, $08
		ld d, (hl)
-:	
		sla d
		rra
		dec e
		jr nz, -
		push af
		pop af
		out (Port_VDPData), a
		inc hl
		dec bc
		ld a, b
		or c
		jr nz, --
		ret
	
	; Data from 117F to 11A6 (40 bytes)
	.db $E5 $C5 $21 $00 $D8 $CD $48 $11 $C1 $E1 $F3 $CD $1C $10 $FB $21
	.db $00 $D8 $1E $08 $56 $CB $22 $1F $1D $20 $FA $F5 $F1 $F3 $D3 $BE
	.db $FB $23 $0B $78 $B1 $20 $EB $C9
	
_LABEL_11A7_:	
		exx
		ld hl, _RAM_C049_
		ld de, _RAM_C049_ + 1
		ld bc, $000F
		ld (hl), $00
		ldir
		ld hl, _DATA_11D9_
		ld de, _RAM_C059_
		ld bc, $0010
		ldir
		exx
		ld c, (hl)
		inc hl
		ld b, $00
		ld de, _RAM_C049_
		ldir
		ld hl, _RAM_C048_
		ld (hl), $80
-:	
		call _LABEL_BD4_
		ld a, (_RAM_C048_)
		rlca
		jr c, -
		ret
	
; Data from 11D9 to 11E8 (16 bytes)	
_DATA_11D9_:	
	.db $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04 $0E
	
_LABEL_11E9_:	
		ld hl, _RAM_C049_
		ld de, _RAM_C049_ + 1
		ld bc, $001F
		ld (hl), $00
		ldir
		ld hl, _RAM_C048_
		ld (hl), $80
-:	
		call _LABEL_BD4_
		ld a, (_RAM_C048_)
		rlca
		jr c, -
		ret
	
_LABEL_1205_:	
		ld hl, _RAM_C048_
		bit 7, (hl)
		ret z
-:	
		dec (hl)
		jr nz, -
		ld de, _RAM_C049_
		ld hl, $0000
		ld b, $20
		jp _LABEL_1077_
	
_LABEL_1219_:	
		ld hl, _RAM_C641_
		bit 7, (hl)
		ret z
-:	
		dec (hl)
		jr nz, -
		inc hl
		ld e, (hl)
		ld d, $00
		ld hl, $0000
		add hl, de
		ld de, _RAM_C643_
		ld b, $01
		jp _LABEL_1077_
	
_LABEL_1232_:	
		ld (_RAM_C670_), a
		ld (_RAM_C66E_), de
		ld a, $04
--:	
		ld b, $08
-:	
		push af
		push bc
		call _LABEL_BD4_
		pop bc
		pop af
		djnz -
		dec a
		cp $FF
		ret z
		push af
		call +
		pop af
		jp --
	
_LABEL_1252_:	
		ld (_RAM_C670_), a
		ld de, (_RAM_C66E_)
		ld a, $FF
--:	
		ld b, $08
-:	
		push af
		push bc
		call _LABEL_BD4_
		pop bc
		pop af
		djnz -
		inc a
		cp $04
		ret z
		push af
		call +
		pop af
		jp --
	
+:	
		push af
		ld a, (_RAM_C670_)
		ld (_RAM_FFFF_), a
		ld hl, (_RAM_C66E_)
		ld de, _RAM_C049_
		ld bc, $0020
		ldir
		ld a, $02
		ld (_RAM_FFFF_), a
		pop af
		ld hl, $C049
		ld b, $20
		ld c, a
-:	
		rld
		and $03
		sub c
		jr nc, +
		xor a
+:	
		rld
		ld e, a
		rrca
		rrca
		and $03
		sub c
		jr nc, +
		xor a
+:	
		rlca
		rlca
		ld d, a
		ld a, e
		and $03
		sub c
		jr nc, +
		xor a
+:	
		or d
		rld
		inc hl
		djnz -
		ld a, $80
		ld (_RAM_C048_), a
		ret
	
_LABEL_12B9_:	
		ld hl, _RAM_C619_
		ld a, (_RAM_C611_)
		cp $05
		jp c, ++
		sub (hl)
		jp z, +
		jp nc, ++
+:	
		neg
		add a, $05
++:	
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_1371_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (de)
		or a
		jp z, _LABEL_133B_
		ld c, a
		push de
		pop ix
		ld c, a
		ld a, (_RAM_C004_)
		or a
		jp nz, +
		ld a, c
		ld hl, +	; Overriding return address
		push hl
		ld de, _DATA_5453_ - 2
		ld l, a
		ld h, $00
		add hl, hl
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, (ix+1)
		or a
		jp z, _LABEL_133B_
		call _LABEL_1395_
		ld a, $02
		ld (_RAM_FFFF_), a
		call _LABEL_AD00_
		bit 0, (ix+25)
		jp nz, _LABEL_133B_
		ld a, (ix+4)
		or (ix+7)
		jp nz, _LABEL_133B_
		ld a, (ix+3)
		cp $C8
		jp nc, _LABEL_133B_
		cp $10
		jp c, _LABEL_133B_
		call _LABEL_2848_
		call _LABEL_27F9_
		set 0, (ix+25)
_LABEL_133B_:	
		ld hl, _RAM_C611_
		inc (hl)
		ld a, (hl)
		sub $12
		jp nz, _LABEL_12B9_
		ld (hl), a
		ld a, (_RAM_C619_)
		sub $11
		jp nc, +
		neg
+:	
		ld (_RAM_C619_), a
		ld a, (_RAM_C607_)
		cp $40
		jp nc, +
		ld e, a
		ld d, $00
		ld hl, $C100
		add hl, de
		ld (hl), $D0
+:	
		ld (_RAM_C608_), a
		xor a
		ld (_RAM_C607_), a
		ld hl, _RAM_C614_
		set 7, (hl)
		ret
	
; Pointer Table from 1371 to 1394 (18 entries, indexed by _RAM_C611_)	
_DATA_1371_:	
	.dw _RAM_C1C0_ _RAM_C460_ _RAM_C490_ _RAM_C4C0_ _RAM_C4F0_ _RAM_C1F0_ _RAM_C220_ _RAM_C250_
	.dw _RAM_C280_ _RAM_C2B0_ _RAM_C2E0_ _RAM_C310_ _RAM_C340_ _RAM_C370_ _RAM_C3A0_ _RAM_C3D0_
	.dw _RAM_C400_ _RAM_C430_
	
_LABEL_1395_:	
		ld l, a
		ld h, $00
		add hl, hl
		ld de, (_RAM_C09E_)
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		inc hl
		or a
		jr z, ++
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (ix+14)
		ld d, $00
		add hl, de
		ld a, (_RAM_C004_)
		or a
		jp nz, ++
		dec (ix+13)
		jp p, ++
		ld (ix+13), c
		inc e
		ld a, e
		cp b
		jp c, +
		xor a
+:	
		ld (ix+14), a
++:	
		bit 7, (ix+25)
		ret nz
		ld a, (hl)
		push af
		ld l, a
		ld h, $00
		add hl, hl
		ld de, (_RAM_C0A0_)
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (de)
		ld (_RAM_C61A_), a
		inc de
		ld a, (de)
		ld (ix+21), a
		inc de
		ld (_RAM_C61B_), de
		pop af
		cp $4F
		ret nc
		ld hl, _RAM_C602_
		cp (hl)
		ret z
		ld (hl), a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld de, _DATA_1445_
		add hl, de
		ld a, (hl)
		ld (_RAM_C63B_), a
		ld (_RAM_FFFF_), a
		inc hl
		ld a, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		or a
		jr z, +
		ld a, (_RAM_C61A_)
		ld b, a
		ld a, $00
		srl b
		rra
		srl b
		rra
		ld c, a
		ld hl, _RAM_D200_
		push hl
		ex de, hl
--:	
		push de
		ld e, $08
		ld d, (hl)
-:	
		sla d
		rra
		dec e
		jr nz, -
		pop de
		ld (de), a
		inc de
		inc hl
		dec bc
		ld a, b
		or c
		jr nz, --
		pop de
+:	
		ld (_RAM_C600_), de
		ld a, (_RAM_C61A_)
		ld (_RAM_C634_), a
		ld hl, _RAM_C614_
		set 6, (hl)
		ret
	
; Data from 1445 to 144E (10 bytes)	
_DATA_1445_:	
	.db $03 $00 $00 $80 $03 $00 $40 $81 $03 $00
	
; Pointer Table from 144F to 1450 (1 entries, indexed by unknown)	
_DATA_144F_:	
	.dw $8280
	
	; Data from 1451 to 1580 (304 bytes)
	.db $03 $00 $40 $85 $03 $00 $40 $86 $03 $00 $80 $87 $03 $00 $40 $8C
	.db $03 $00 $C0 $8A $03 $00 $80 $89 $03 $00 $40 $8D $03 $00 $C0 $8E
	.db $03 $00 $40 $90 $03 $01 $80 $A0 $03 $00 $80 $91 $03 $01 $00 $A2
	.db $03 $00 $80 $93 $03 $00 $40 $95 $03 $01 $80 $A3 $03 $00 $C0 $96
	.db $03 $00 $C0 $83 $03 $00 $40 $A6 $03 $00 $C0 $A7 $03 $00 $40 $A9
	.db $03 $00 $C0 $AA $03 $00 $40 $AC $03 $00 $40 $AD $03 $00 $80 $AE
	.db $03 $00 $C0 $AF $04 $01 $40 $8D $04 $00 $00 $80 $04 $01 $00 $8F
	.db $04 $00 $80 $82 $04 $01 $C0 $90 $04 $00 $C0 $84 $04 $01 $80 $92
	.db $04 $00 $80 $87 $04 $01 $40 $94 $04 $00 $00 $8A $04 $01 $00 $96
	.db $04 $00 $C0 $8B $03 $00 $00 $98 $03 $00 $40 $99 $03 $00 $80 $9A
	.db $03 $00 $C0 $9B $03 $00 $C0 $9C $03 $01 $80 $87 $03 $00 $00 $9E
	.db $03 $01 $C0 $8A $03 $01 $80 $89 $03 $00 $00 $9F $03 $01 $C0 $8E
	.db $03 $01 $40 $90 $03 $00 $80 $A0 $03 $01 $80 $91 $03 $00 $00 $A2
	.db $03 $01 $80 $93 $03 $01 $40 $95 $03 $00 $80 $A3 $03 $00 $00 $A5
	.db $03 $00 $C0 $B0 $03 $00 $40 $B2 $03 $00 $C0 $B3 $03 $00 $40 $B5
	.db $03 $00 $C0 $B6 $03 $00 $C0 $B7 $03 $00 $00 $B9 $03 $00 $40 $BA
	.db $04 $00 $40 $8D $04 $01 $00 $80 $04 $00 $00 $8F $04 $01 $80 $82
	.db $04 $00 $C0 $90 $04 $01 $C0 $84 $04 $00 $80 $92 $04 $01 $80 $87
	.db $04 $00 $40 $94 $04 $01 $00 $8A $04 $00 $00 $96 $04 $01 $C0 $8B
	
_LABEL_1581_:	
		ld c, a
		bit 5, c
		jr z, +
		ld de, (_RAM_C710_)
		ld hl, (_RAM_C70E_)
		xor a
		sbc hl, de
		ld a, h
		jr ++
	
+:	
		ld a, (_RAM_C70F_)
++:	
		neg
		and $F8
		rrca
		rrca
		ld e, a
		ld d, $00
		ld hl, (_RAM_C0A2_)
		add hl, de
		ld (_RAM_C702_), hl
		ld hl, $C900
		add hl, de
		ld (_RAM_C704_), hl
		bit 0, c
		jp nz, _LABEL_16B3_
_LABEL_15B2_:	
		bit 5, c
		jr z, +
		ld a, (_RAM_C70F_)
		and $08
		rrca
		rrca
		ld (_RAM_C732_), a
		ld de, (_RAM_C710_)
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
		jr ++
	
+:	
		ld a, (_RAM_C70F_)
		neg
		and $08
		rrca
		rrca
		ld (_RAM_C732_), a
		ld hl, (_RAM_C713_)
		inc h
++:	
		ld a, l
		srl h
		rra
		srl h
		rra
		srl h
		rra
		srl h
		rra
		ld l, a
		push hl
		bit 4, c
		jr z, +
		ld a, (_RAM_C718_)
		neg
		and $08
		rrca
		ld (_RAM_C733_), a
		ld de, (_RAM_C719_)
		ld hl, (_RAM_C71B_)
		ld a, (_RAM_C71D_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
		jr ++
	
+:	
		ld a, (_RAM_C718_)
		and $08
		rrca
		ld (_RAM_C733_), a
		ld hl, (_RAM_C71C_)
++:	
		ld a, l
		srl h
		rra
		srl h
		rra
		srl h
		rra
		srl h
		rra
		ld e, a
		ld a, (_RAM_C71F_)
		ld h, a
		call _LABEL_C3C_
		pop de
		add hl, de
		ld de, (_RAM_C723_)
		add hl, de
		ld (_RAM_C72C_), hl
		ld hl, _RAM_C739_
		ld (_RAM_C72E_), hl
		ld b, $0D
		ld hl, (_RAM_C72C_)
-:	
		ld a, (_RAM_C722_)
		ld (_RAM_FFFF_), a
		push bc
		push hl
		ld a, (hl)
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, (_RAM_C726_)
		add hl, de
		ld a, (_RAM_C732_)
		ld e, a
		ld d, $00
		add hl, de
		ld a, (_RAM_C725_)
		ld (_RAM_FFFF_), a
		ld de, (_RAM_C72E_)
		ldi
		ldi
		inc hl
		inc hl
		ldi
		ldi
		ld (_RAM_C72E_), de
		pop hl
		ld a, (_RAM_C71F_)
		ld e, a
		ld d, $00
		add hl, de
		pop bc
		djnz -
		ld a, (_RAM_C733_)
		rrca
		ld e, a
		ld d, $00
		ld hl, $C739
		add hl, de
		ld (_RAM_C706_), hl
		ld a, (_RAM_C652_)
		bit 1, a
		jp z, +
		ld de, $0028
		add hl, de
		ld (hl), $48
		inc hl
		ld (hl), $31
		inc hl
		ld (hl), $48
		inc hl
		ld (hl), $31
+:	
		ld hl, _RAM_C700_
		set 7, (hl)
		ret
	
_LABEL_16AF_:	
		ld a, (_RAM_C700_)
		ld c, a
_LABEL_16B3_:	
		bit 5, c
		jr z, +
		ld a, (_RAM_C70F_)
		and $08
		rrca
		rrca
		ld (_RAM_C732_), a
		ld de, (_RAM_C710_)
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
		jr ++
	
+:	
		ld a, (_RAM_C70F_)
		neg
		and $08
		rrca
		rrca
		ld (_RAM_C732_), a
		ld hl, (_RAM_C713_)
		ld de, (_RAM_C710_)
		ld a, d
		or a
		jr nz, ++
		ld a, h
		ld hl, (_RAM_C712_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
++:	
		ld a, l
		srl h
		rra
		srl h
		rra
		srl h
		rra
		srl h
		rra
		ld l, a
		push hl
		bit 4, c
		jr z, +
		ld a, (_RAM_C718_)
		neg
		and $08
		rrca
		ld (_RAM_C733_), a
		ld (_RAM_C70A_), a
		ld de, (_RAM_C719_)
		ld hl, (_RAM_C71B_)
		ld a, (_RAM_C71D_)
		add hl, de
		adc a, $00
		ld l, h
		ld h, a
		jr ++
	
+:	
		ld a, (_RAM_C718_)
		and $08
		rrca
		ld (_RAM_C733_), a
		ld (_RAM_C70A_), a
		ld hl, (_RAM_C71C_)
++:	
		ld a, l
		srl h
		rra
		srl h
		rra
		srl h
		rra
		srl h
		rra
		ld (_RAM_C70B_), a
		ld e, a
		ld a, (_RAM_C71F_)
		ld h, a
		call _LABEL_C3C_
		pop de
		add hl, de
		ld de, (_RAM_C723_)
		add hl, de
		ld (_RAM_C72C_), hl
		ld hl, _RAM_C900_
		ld a, (_RAM_C733_)
		cp $04
		jr nz, +
		ld hl, _RAM_C8C0_
+:	
		ld a, (_RAM_C702_)
		sub $80
		ld e, a
		ld d, $00
		ld (_RAM_C736_), hl
		add hl, de
		ld (_RAM_C734_), hl
		sub $40
		neg
		ld (_RAM_C738_), a
		ld b, $0D
_LABEL_177A_:	
		push bc
		ld hl, _RAM_C769_
		ld (_RAM_C72E_), hl
		ld hl, _RAM_C7AD_
		ld (_RAM_C730_), hl
		ld b, $11
		ld hl, (_RAM_C72C_)
-:	
		push bc
		push hl
		ld a, (_RAM_C722_)
		ld (_RAM_FFFF_), a
		ld a, (hl)
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, (_RAM_C726_)
		add hl, de
		ld a, (_RAM_C725_)
		ld (_RAM_FFFF_), a
		ld de, (_RAM_C72E_)
		ldi
		ldi
		ldi
		ldi
		ld (_RAM_C72E_), de
		ld de, (_RAM_C730_)
		ldi
		ldi
		ldi
		ldi
		ld (_RAM_C730_), de
		pop hl
		inc hl
		pop bc
		djnz -
		ld hl, _RAM_C769_
		ld a, (_RAM_C732_)
		ld e, a
		ld d, $00
		add hl, de
		ld de, (_RAM_C734_)
		ld a, (_RAM_C738_)
		push af
		ld c, a
		ld b, $00
		ldir
		pop af
		sub $40
		jr z, +
		neg
		ld c, a
		ld b, $00
		ld de, (_RAM_C736_)
		ldir
+:	
		ld e, $40
		ld d, $00
		ld hl, (_RAM_C734_)
		add hl, de
		ld (_RAM_C734_), hl
		ld hl, (_RAM_C736_)
		add hl, de
		ld (_RAM_C736_), hl
		ld hl, _RAM_C7AD_
		ld a, (_RAM_C732_)
		ld e, a
		ld d, $00
		add hl, de
		ld de, (_RAM_C734_)
		ld a, (_RAM_C738_)
		push af
		ld c, a
		ld b, $00
		ldir
		pop af
		sub $40
		jr z, +
		neg
		ld c, a
		ld b, $00
		ld de, (_RAM_C736_)
		ldir
+:	
		ld e, $40
		ld d, $00
		ld hl, (_RAM_C734_)
		add hl, de
		ld (_RAM_C734_), hl
		ld hl, (_RAM_C736_)
		add hl, de
		ld (_RAM_C736_), hl
		ld a, (_RAM_C71F_)
		ld e, a
		ld d, $00
		ld hl, (_RAM_C72C_)
		add hl, de
		ld (_RAM_C72C_), hl
		pop bc
		dec b
		jp nz, _LABEL_177A_
		ld a, (_RAM_C700_)
		ld hl, (_RAM_C708_)
		ld de, (_RAM_C70A_)
		sbc hl, de
		jr z, +
		set 2, a
+:	
		set 7, a
		ld (_RAM_C700_), a
		ld (_RAM_C708_), de
		ld a, (_RAM_C652_)
		bit 1, a
		ret z
		ld b, $80
		ld hl, _RAM_CE00_
-:	
		ld (hl), $48
		inc hl
		ld (hl), $31
		inc hl
		djnz -
		ret
	
_LABEL_187C_:	
		and $B8
		ld (_RAM_C700_), a
		bit 5, a
		ret nz
		ld c, a
		ld a, (_RAM_C701_)
		bit 3, a
		ret nz
		ld a, (_RAM_C711_)
		or a
		ret z
		ld a, (_RAM_C718_)
		and $07
		jp z, _LABEL_15B2_
		ld hl, (_RAM_C704_)
		ld de, $0040
		add hl, de
		ld (_RAM_C704_), hl
		jp _LABEL_15B2_
	
_LABEL_18A5_:	
		ld a, (_RAM_C700_)
		and $FD
		ld (_RAM_C700_), a
		ld hl, $0000
		ld (_RAM_C7F1_), hl
		ld de, (_RAM_C70C_)
		ld a, e
		or d
		jp z, _LABEL_1992_
		bit 7, d
		jp z, _LABEL_1928_
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $FF
		jr c, +
		ld a, (_RAM_C701_)
		or $04
		ld (_RAM_C701_), a
		ld a, (_RAM_C700_)
		res 5, a
		ld (_RAM_C700_), a
		xor a
		ex de, hl
		sbc hl, de
		ex de, hl
		ld a, $00
		ld hl, $0000
+:	
		ld (_RAM_C712_), hl
		ld (_RAM_C714_), a
		ld a, d
		or e
		ld (_RAM_C7F1_), de
		jp z, _LABEL_1992_
		ld a, (_RAM_C701_)
		and $F3
		ld (_RAM_C701_), a
		xor a
		ld hl, (_RAM_C70E_)
		sbc hl, de
		ld (_RAM_C70E_), hl
		xor a
		ld hl, (_RAM_C710_)
		sbc hl, de
		ld (_RAM_C710_), hl
		ld a, h
		cp $08
		jp c, _LABEL_1992_
		and $07
		ld h, a
		ld (_RAM_C710_), hl
		ld a, (_RAM_C700_)
		set 5, a
		set 1, a
		ld (_RAM_C700_), a
		jp _LABEL_1992_
	
_LABEL_1928_:	
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $00
		ld (_RAM_C712_), hl
		ld (_RAM_C714_), a
		ld l, h
		ld h, a
		ld bc, (_RAM_C720_)
		xor a
		sbc hl, bc
		jr c, +
		ld a, (_RAM_C701_)
		or $08
		ld (_RAM_C701_), a
		ld (_RAM_C713_), bc
		ld a, (_RAM_C712_)
		ld h, l
		ld l, a
		ex de, hl
		xor a
		sbc hl, de
		ex de, hl
		ld (_RAM_C712_), a
+:	
		ld a, d
		or e
		ld (_RAM_C7F1_), de
		jp z, _LABEL_1992_
		ld a, (_RAM_C701_)
		and $F3
		ld (_RAM_C701_), a
		xor a
		ld hl, (_RAM_C70E_)
		sbc hl, de
		ld (_RAM_C70E_), hl
		xor a
		ld hl, (_RAM_C710_)
		sbc hl, de
		ld (_RAM_C710_), hl
		jp nc, _LABEL_1992_
		ld a, h
		and $07
		ld h, a
		ld (_RAM_C710_), hl
		ld a, (_RAM_C700_)
		res 5, a
		set 1, a
		ld (_RAM_C700_), a
_LABEL_1992_:	
		ld hl, $0000
		ld (_RAM_C70C_), hl
		ld a, (_RAM_C700_)
		bit 1, a
		ret z
		jp _LABEL_1581_
	
_LABEL_19A1_:	
		ld a, (_RAM_C700_)
		bit 6, a
		jp nz, _LABEL_187C_
		and $FA
		ld (_RAM_C700_), a
		ld de, (_RAM_C715_)
		ld a, e
		or d
		jp z, _LABEL_1AC5_
		bit 7, d
		jp z, _LABEL_1A49_
		ld hl, (_RAM_C71B_)
		ld a, (_RAM_C71D_)
		add hl, de
		adc a, $FF
		jr c, +
		xor a
		ex de, hl
		sbc hl, de
		ex de, hl
		ld a, $00
		ld hl, $0000
+:	
		ld (_RAM_C71B_), hl
		ld (_RAM_C71D_), a
		ld l, h
		ld h, a
		ld bc, (_RAM_C728_)
		xor a
		sbc hl, bc
		jr z, +
		jr nc, ++
+:	
		ld a, (_RAM_C701_)
		bit 0, a
		jp nz, _LABEL_1AC5_
		or $01
		ld (_RAM_C701_), a
		ld a, (_RAM_C700_)
		set 4, a
		set 0, a
		ld (_RAM_C700_), a
		ld (_RAM_C71C_), bc
		ld a, (_RAM_C71B_)
		ld h, l
		ld l, a
		ex de, hl
		xor a
		sbc hl, de
		ex de, hl
		ld (_RAM_C71B_), a
++:	
		ld a, d
		or e
		jp z, _LABEL_1AC5_
		ld a, (_RAM_C701_)
		and $FC
		ld (_RAM_C701_), a
		xor a
		ld hl, (_RAM_C717_)
		add hl, de
		jr c, +
		ld a, h
		add a, $E0
		ld h, a
+:	
		ld (_RAM_C717_), hl
		xor a
		ld hl, (_RAM_C719_)
		sbc hl, de
		ld (_RAM_C719_), hl
		ld a, h
		cp $08
		jp c, _LABEL_1AC5_
		and $07
		ld h, a
		ld (_RAM_C719_), hl
		ld a, (_RAM_C700_)
		set 4, a
		set 0, a
		ld (_RAM_C700_), a
		jp _LABEL_1AC5_
	
_LABEL_1A49_:	
		ld hl, (_RAM_C71B_)
		ld a, (_RAM_C71D_)
		add hl, de
		adc a, $00
		ld (_RAM_C71B_), hl
		ld (_RAM_C71D_), a
		ld l, h
		ld h, a
		ld bc, (_RAM_C72A_)
		xor a
		sbc hl, bc
		jr c, +
		ld a, (_RAM_C701_)
		bit 1, a
		jp nz, _LABEL_1AC5_
		or $02
		ld (_RAM_C701_), a
		ld a, (_RAM_C700_)
		res 4, a
		set 0, a
		ld (_RAM_C700_), a
		ld (_RAM_C71C_), bc
		ld a, (_RAM_C71B_)
		ld h, l
		ld l, a
		ex de, hl
		xor a
		sbc hl, de
		ex de, hl
		ld (_RAM_C71B_), a
+:	
		ld a, d
		or e
		jp z, _LABEL_1AC5_
		ld a, (_RAM_C701_)
		and $FC
		ld (_RAM_C701_), a
		xor a
		ld hl, (_RAM_C717_)
		add hl, de
		ld a, h
		cp $E0
		jr c, +
		sub $E0
		ld h, a
+:	
		ld (_RAM_C717_), hl
		xor a
		ld hl, (_RAM_C719_)
		sbc hl, de
		ld (_RAM_C719_), hl
		jp nc, _LABEL_1AC5_
		ld a, h
		and $07
		ld h, a
		ld (_RAM_C719_), hl
		ld a, (_RAM_C700_)
		res 4, a
		set 0, a
		ld (_RAM_C700_), a
_LABEL_1AC5_:	
		ld hl, $0000
		ld (_RAM_C715_), hl
		ld a, (_RAM_C700_)
		bit 0, a
		ret z
		jp _LABEL_1581_
	
_LABEL_1AD4_:	
		ld a, (_RAM_C70F_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld hl, _RAM_C700_
		bit 7, (hl)
		ret z
		res 7, (hl)
		ld a, (hl)
		res 0, (hl)
		bit 0, a
		jp nz, +
		ld hl, (_RAM_C704_)
		ld de, $003F
		exx
		ld hl, (_RAM_C702_)
		ld de, (_RAM_C706_)
		ld b, $18
-:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, $40
		or h
		out (Port_VDPAddress), a
		push bc
		push hl
		ld a, (de)
		out (Port_VDPData), a
		exx
		ld (hl), a
		inc hl
		exx
		inc de
		ld a, (de)
		out (Port_VDPData), a
		exx
		ld (hl), a
		add hl, de
		exx
		inc de
		pop hl
		ld bc, $0040
		add hl, bc
		pop bc
		djnz -
		ret
	
+:	
		ld hl, $3880
		call _LABEL_101C_
		ld de, _RAM_C900_
		ld bc, $02C0
-:	
		ld a, (de)
		out (Port_VDPData), a
		nop
		inc de
		ld a, (de)
		out (Port_VDPData), a
		inc de
		dec bc
		ld a, c
		or b
		jp nz, -
		ret
	
; 1st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1B3C_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		bit 7, (ix+20)
		jp nz, _LABEL_1DCC_
		call _LABEL_2848_
		jp z, _LABEL_1D9B_
		ld a, (_RAM_C603_)
		ld c, a
		bit 5, c
		jp nz, _LABEL_1CBD_
_LABEL_1B56_:	
		bit 4, c
		jp nz, _LABEL_1D81_
_LABEL_1B5B_:	
		bit 1, c
		jp nz, _LABEL_1C1F_
		bit 2, c
		jp nz, _LABEL_1BDC_
		bit 3, c
		jp nz, ++
		bit 0, c
		jp nz, +
_LABEL_1B6F_:	
		ld a, $00
		ld (_RAM_C1D1_), a
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1B80_
		jp _LABEL_28E9_
	
; Data from 1B80 to 1B89 (10 bytes)	
_DATA_1B80_:	
	.db $01 $11 $01 $11 $01 $11 $01 $11 $22 $29
	
+:	
		ld a, $02
		ld (_RAM_C1D1_), a
		ld a, $02
		bit 5, (ix+18)
		jr z, +
		ld a, $12
+:	
		ld (_RAM_C1C1_), a
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ret
	
++:	
		ld a, $00
		ld (_RAM_C1D1_), a
		ld hl, $0100
		ld (_RAM_C1CA_), hl
		bit 5, (ix+18)
		jp z, +
		res 0, (ix+18)
		res 5, (ix+18)
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1C15_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
+:	
		bit 3, (ix+18)
		jp nz, _LABEL_1B6F_
		ld hl, _DATA_1C15_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
_LABEL_1BDC_:	
		ld a, $00
		ld (_RAM_C1D1_), a
		ld hl, $FF00
		ld (_RAM_C1CA_), hl
		bit 5, (ix+18)
		jp nz, +
		set 0, (ix+18)
		set 5, (ix+18)
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1C15_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
+:	
		bit 2, (ix+18)
		jp nz, _LABEL_1B6F_
		ld hl, _DATA_1C15_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
; Data from 1C15 to 1C1E (10 bytes)	
_DATA_1C15_:	
	.db $04 $14 $04 $14 $04 $14 $04 $14 $24 $2B
	
_LABEL_1C1F_:	
		ld a, (_RAM_C1D1_)
		ld (ix+17), $01
		cp $01
		jp nz, _LABEL_1C35_
		bit 2, c
		jp nz, _LABEL_1C7F_
		bit 3, c
		jp nz, +
_LABEL_1C35_:	
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1C41_
		jp _LABEL_28E9_
	
; Data from 1C41 to 1C4A (10 bytes)	
_DATA_1C41_:	
	.db $03 $13 $03 $13 $03 $13 $03 $13 $23 $2A
	
+:	
		ld hl, $0080
		ld (_RAM_C1CA_), hl
		bit 5, (ix+18)
		jp z, +
		res 0, (ix+18)
		res 5, (ix+18)
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1CB3_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
+:	
		bit 3, (ix+18)
		jp nz, _LABEL_1C35_
		ld hl, _DATA_1CB3_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
_LABEL_1C7F_:	
		ld hl, $FF80
		ld (_RAM_C1CA_), hl
		bit 5, (ix+18)
		jp nz, +
		set 0, (ix+18)
		set 5, (ix+18)
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1CB3_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
+:	
		bit 2, (ix+18)
		jp nz, _LABEL_1C35_
		ld hl, _DATA_1CB3_
		call _LABEL_28E9_
		jp _LABEL_2690_
	
; Data from 1CB3 to 1CBC (10 bytes)	
_DATA_1CB3_:	
	.db $05 $15 $05 $15 $05 $15 $05 $15 $25 $2C
	
_LABEL_1CBD_:	
		ld a, (_RAM_C604_)
		bit 5, a
		jp nz, _LABEL_1D63_
		call _LABEL_27DA_
		ld (ix+19), $30
		ld hl, $0000
		ld (_RAM_C1CA_), hl
		ld (_RAM_C1CD_), hl
		ld a, (ix+17)
		ld (ix+17), $03
		cp $02
		jr z, ++
		cp $01
		jr z, _LABEL_1D3B_
_LABEL_1CE4_:	
		ld hl, (_RAM_C09C_)
		ld (_RAM_C1C8_), hl
		ld a, $06
		bit 5, (ix+18)
		jr z, +
		ld a, $16
+:	
		ld (_RAM_C1C1_), a
		ld (ix+0), $04
		ld (ix+16), $00
		ld hl, _RAM_C07C_
		set 5, (hl)
		ld a, $90
		ld (_RAM_DE03_), a
		ret
	
++:	
		call _LABEL_2818_
		jr c, _LABEL_1CE4_
		ld hl, _RAM_C700_
		set 3, (hl)
		ld (ix+19), $00
		ld hl, $FA00
		ld (_RAM_C1C8_), hl
		ld a, $08
		bit 5, (ix+18)
		jr z, +
		ld a, $18
+:	
		ld (_RAM_C1C1_), a
		ld a, $AC
		ld (_RAM_DE03_), a
		ld (ix+0), $06
		ld (ix+16), $00
		jp _LABEL_95A_
	
_LABEL_1D3B_:	
		call _LABEL_2830_
		jr c, _LABEL_1CE4_
		ld hl, _RAM_C700_
		set 3, (hl)
		ld hl, $FD38
		ld (_RAM_C1C8_), hl
		ld a, $07
		bit 5, (ix+18)
		jr z, +
		ld a, $17
+:	
		ld (_RAM_C1C1_), a
		ld (ix+0), $07
		ld (ix+16), $00
		jp _LABEL_929_
	
_LABEL_1D63_:	
		ld hl, _RAM_C07C_
		ld a, (hl)
		and $60
		cp $60
		jp nz, _LABEL_1B56_
		res 5, (hl)
		ld (ix+0), $08
		ld (ix+16), $00
		ld (ix+1), $21
		ld (ix+40), $80
		ret
	
_LABEL_1D81_:	
		ld a, (_RAM_C604_)
		bit 4, a
		jp nz, _LABEL_1B5B_
		ld e, $02
		ld a, (_RAM_C632_)
		or a
		jr nz, +
		ld e, $03
+:	
		ld (ix+0), e
		ld (ix+16), $00
		ret
	
_LABEL_1D9B_:	
		ld (ix+17), $04
		ld a, (_RAM_C1D2_)
		and $2F
		or $C0
		ld (_RAM_C1D2_), a
		ld hl, $0100
		bit 5, a
		jr z, +
		ld hl, $FF00
+:	
		ld (_RAM_C1CA_), hl
		ld hl, $0000
		ld (_RAM_C1C8_), hl
		ld (_RAM_C1CD_), hl
		ld (ix+19), $40
		ld (ix+0), $05
		ld (ix+16), $00
		ret
	
_LABEL_1DCC_:	
		ld (ix+0), $0A
		ld (ix+16), $00
		ld de, $0E81
		ld hl, $FF00
		bit 5, (ix+20)
		jr z, +
		ld de, $1EA0
		ld hl, $0100
+:	
		ld (_RAM_C1CA_), hl
		ld (ix+1), d
		ld a, (ix+18)
		and $1E
		or e
		ld (ix+18), a
		ld (ix+19), $30
		ld hl, $FE00
		ld (_RAM_C1C8_), hl
		ld (ix+15), $30
		ld a, $93
		ld (_RAM_DE03_), a
		ret
	
; 2nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1E09_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		bit 7, (ix+20)
		jp nz, _LABEL_1DCC_
		ld a, (_RAM_C1D0_)
		dec a
		jp z, _LABEL_1EAA_
		ld (ix+16), $01
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld a, (_RAM_C0A6_)
		ld e, a
		ld d, $00
		ld hl, _DATA_1E5E_
		add hl, de
		ld a, (hl)
		ld (_RAM_DE03_), a
		ld a, (_RAM_C1D1_)
		ld (_RAM_C1DF_), a
		ld c, a
		ld a, $05
		ld (_RAM_C1D1_), a
		ld hl, _DATA_1E4E_
		ld a, c
		cp $01
		jp nz, _LABEL_28E4_
		ld hl, _DATA_1E56_
		jp _LABEL_28E4_
	
; Data from 1E4E to 1E55 (8 bytes)	
_DATA_1E4E_:	
	.db $09 $19 $30 $32 $34 $36 $38 $3A
	
; Data from 1E56 to 1E5D (8 bytes)	
_DATA_1E56_:	
	.db $0A $1A $31 $33 $35 $37 $39 $3B
	
; Data from 1E5E to 1E61 (4 bytes)	
_DATA_1E5E_:	
	.db $92 $A7 $AF $B0
	
; 3rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1E62_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		bit 7, (ix+20)
		jp nz, _LABEL_1DCC_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_1EAA_
		call _LABEL_28FD_
		ld (ix+16), $01
		ld hl, _DATA_1E96_
		ld a, (ix+17)
		ld (_RAM_C1DF_), a
		cp $01
		jr nz, +
		ld hl, _DATA_1EA0_
+:	
		call _LABEL_28E9_
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ret
	
; Data from 1E96 to 1E9F (10 bytes)	
_DATA_1E96_:	
	.db $0B $1B $0B $1B $0B $1B $0B $1B $26 $2D
	
; Data from 1EA0 to 1EA9 (10 bytes)	
_DATA_1EA0_:	
	.db $0C $1C $0C $1C $0C $1C $0C $1C $27 $2E
	
_LABEL_1EAA_:	
		ld hl, (_RAM_C603_)
		bit 5, l
		jr z, +
		bit 5, h
		jr z, +++
+:	
		ld a, (ix+31)
		cp $01
		jr nz, +
		bit 1, l
		jr z, +++
		jr ++
	
+:	
		bit 1, l
		jr nz, +++
++:	
		ld a, (ix+14)
		or a
		ret nz
+++:	
		xor a
		ld (ix+13), a
		ld (ix+16), a
		ld (ix+0), $01
		ld a, (_RAM_C603_)
		and $1F
		ld (_RAM_C603_), a
		ret
	
; 4th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1EDF_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		bit 7, (ix+20)
		jp nz, _LABEL_1DCC_
		call _LABEL_2733_
		bit 7, (ix+18)
		jr nz, +
		ld (ix+0), $01
		ret
	
+:	
		call _LABEL_23E9_
		ret c
		ld a, (_RAM_C604_)
		ld b, a
		ld a, (_RAM_C603_)
		ld c, a
		bit 5, c
		jr nz, +
		ld hl, _RAM_C07C_
		res 5, (hl)
+:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_1F58_
		bit 4, c
		jr z, _LABEL_1F2F_
		bit 4, b
		jr nz, _LABEL_1F2F_
		ld (ix+16), $01
_LABEL_1F20_:	
		call _LABEL_28FD_
		ld hl, $0000
		ld (_RAM_C1CD_), hl
		ld hl, _DATA_1F90_
		jp _LABEL_28E9_
	
_LABEL_1F2F_:	
		ld a, $0C
		and c
		ret z
		ld de, $0600
		ld hl, $0100
		bit 3, a
		jr nz, +
		ld hl, $FF00
		ld de, $1621
+:	
		ld (ix+1), d
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		jp _LABEL_26C5_
	
_LABEL_1F58_:	
		ld a, (ix+14)
		or a
		jp z, ++
		ld a, $0C
		and c
		ret z
		ld d, $00
		ld hl, $0100
		bit 3, a
		jr nz, +
		ld hl, $FF00
		ld d, $21
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+18)
		and $DE
		or d
		ld (ix+18), a
		ld hl, _DATA_1F90_
		call _LABEL_28E9_
		jp _LABEL_26C5_
	
++:	
		ld (ix+16), $00
		jp _LABEL_1F2F_
	
; Data from 1F90 to 1F99 (10 bytes)	
_DATA_1F90_:	
	.db $0D $1D $0D $1D $0D $1D $0D $1D $28 $2F
	
; 5th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1F9A_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		call _LABEL_26C5_
		call _LABEL_2733_
		bit 7, (ix+18)
		jr nz, +
		ld (ix+0), $01
		ret
	
+:	
		call _LABEL_23E9_
		ret c
		ld a, (_RAM_C603_)
		bit 4, a
		ret z
		ld a, (_RAM_C604_)
		bit 4, a
		ret nz
		call _LABEL_28FD_
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld hl, _DATA_1F90_
		jp _LABEL_28E9_
	
; 6th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_1FCF_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		call _LABEL_27A7_
		ld a, (_RAM_C1D0_)
		dec a
		jp z, ++
		ld a, (_RAM_C701_)
		bit 0, a
		jr nz, +
		ld hl, (_RAM_C1C8_)
		ld (_RAM_C715_), hl
		ret
	
+:	
		ld a, $30
		ld (_RAM_C1D3_), a
		ld hl, $FA00
		ld a, (_RAM_C1C3_)
		cp $A1
		jr nc, +
		ld hl, $FC00
+:	
		ld (_RAM_C1C8_), hl
		ld a, $01
		ld (_RAM_C1D0_), a
		ret
	
++:	
		ld a, (_RAM_C635_)
		and $60
		cp $60
		jr z, +
		ld a, (_RAM_C636_)
		and $60
		cp $60
		jp nz, _LABEL_2079_
+:	
		ld a, (_RAM_C1C3_)
		and $F8
		ld (_RAM_C1C3_), a
		jp _LABEL_20B0_
	
; 7th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2024_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		call _LABEL_23E9_
		ret c
		call _LABEL_27A7_
		ld a, (_RAM_C1D0_)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_2093_
		bit 6, (ix+18)
		jp z, _LABEL_2079_
		xor a
		ld (_RAM_C1D3_), a
		ld hl, $0400
		ld (_RAM_C1C8_), hl
		ld a, $01
		ld (_RAM_C1D0_), a
		jp _LABEL_2079_
	
+:	
		ld a, (_RAM_C635_)
		and $60
		cp $40
		jr z, +
		ld a, (_RAM_C636_)
		and $60
		cp $40
		jr z, +
		ld a, (_RAM_C701_)
		bit 1, a
		jr nz, _LABEL_2079_
		bit 6, (ix+18)
		jr z, _LABEL_2079_
		ld hl, (_RAM_C1C8_)
		ld (_RAM_C715_), hl
		ret
	
_LABEL_2079_:	
		ld hl, (_RAM_C1C2_)
		ld de, (_RAM_C1C8_)
		add hl, de
		ld (_RAM_C1C2_), hl
		ret
	
+:	
		ld a, $02
		ld (_RAM_C1D0_), a
		ld a, (_RAM_C1C3_)
		and $F8
		ld (_RAM_C1C3_), a
		ret
	
_LABEL_2093_:	
		ld a, (_RAM_C701_)
		bit 1, a
		jr nz, _LABEL_20B0_
		ld a, (_RAM_C700_)
		bit 2, a
		jr z, +
		ld a, (_RAM_C1C3_)
		add a, $F8
		ld (_RAM_C1C3_), a
+:	
		ld hl, (_RAM_C1C8_)
		ld (_RAM_C715_), hl
		ret
	
_LABEL_20B0_:	
		ld hl, _RAM_C700_
		set 6, (hl)
		res 3, (hl)
		xor a
		ld (_RAM_C1C2_), a
		ld (_RAM_C1D0_), a
		ld a, $01
		ld (_RAM_C1C0_), a
		res 7, (ix+20)
		jp _LABEL_27F9_
	
; 8th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_20CA_:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_214F_
		dec (ix+40)
		jr z, +
		ld a, (_RAM_C603_)
		bit 5, a
		jr z, +
		bit 4, a
		ret z
		ld a, (_RAM_C604_)
		bit 4, a
		jp z, ++
		ret
	
+:	
		ld (ix+0), $01
		ret
	
++:	
		ld a, $B4
		ld (_RAM_DE03_), a
		ld a, $80
		ld (_RAM_C65C_), a
		xor a
		ld (_RAM_C65D_), a
		ld (_RAM_C65F_), a
		ld hl, _RAM_C310_
		ld de, _RAM_D520_
		ld bc, $0210
		ldir
		ld hl, _RAM_C280_
		ld de, _RAM_C280_ + 1
		ld bc, $029F
		ld (hl), $00
		ldir
		ld hl, _RAM_C049_
		ld de, _RAM_D500_
		ld bc, $0020
		ldir
		ld (ix+16), $01
		ld hl, $B401
		push hl
		ld a, (_RAM_C07E_)
		ld (_RAM_C663_), a
		ld hl, _DATA_11959_
		cp $03
		jp z, +
		ld hl, _DATA_11BD6_
		cp $04
		jp z, +
		ld hl, _DATA_1215C_
		cp $06
		ret nz
+:	
		ld (_RAM_C661_), hl
		ld hl, _RAM_C65C_
		set 6, (hl)
		ret
	
_LABEL_214F_:	
		ld a, (_RAM_C65C_)
		bit 6, a
		jr z, +
		ld a, $04
		ld (_RAM_FFFF_), a
		ld de, $06C0
		ld hl, (_RAM_C661_)
		call _LABEL_10E3_
		ld a, (_RAM_C65C_)
		res 6, a
		ld (_RAM_C65C_), a
+:	
		or a
		ret nz
		ld hl, _DATA_2177_ - 2
		ld a, (_RAM_C663_)
		jp _LABEL_116_
	
; Jump Table from 2177 to 2182 (6 entries, indexed by _RAM_C663_)	
_DATA_2177_:	
	.dw _LABEL_2183_ _LABEL_21AC_ _LABEL_21C2_ _LABEL_2231_ _LABEL_2286_ _LABEL_229C_
	
; 1st entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_2183_:	
		ld hl, _RAM_C65C_
		ld (hl), $81
		ld hl, $0708
		ld (_RAM_C65D_), hl
		ld (ix+0), $01
		ld b, $0B
		ld de, $0030
		ld iy, _RAM_D520_
-:	
		ld a, (iy+0)
		or a
		jr z, +
		set 2, (iy+20)
+:	
		add iy, de
		djnz -
		jp _LABEL_2338_
	
; 2nd entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_21AC_:	
		ld hl, _RAM_C65C_
		ld (hl), $82
		ld hl, $0708
		ld (_RAM_C65D_), hl
		ld (ix+0), $01
		ld (ix+16), $00
		jp _LABEL_2338_
	
; 3rd entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_21C2_:	
		ld hl, _RAM_C65C_
		ld (hl), $83
		ld hl, $00B4
		ld (_RAM_C65D_), hl
		ld (ix+0), $0D
		ld (ix+16), $00
		ld a, $17
		ld (_RAM_C310_), a
		ld (_RAM_C340_), a
		ld (_RAM_C370_), a
		ld (_RAM_C3A0_), a
		ld a, (_RAM_C1C3_)
		add a, $E8
		ld (_RAM_C313_), a
		ld (_RAM_C343_), a
		ld (_RAM_C373_), a
		ld (_RAM_C3A3_), a
		ld a, (_RAM_C1C6_)
		ld (_RAM_C316_), a
		ld (_RAM_C346_), a
		ld (_RAM_C376_), a
		ld (_RAM_C3A6_), a
		ld hl, $FA00
		ld (_RAM_C318_), hl
		ld (_RAM_C31A_), hl
		ld (_RAM_C34A_), hl
		ld hl, $0600
		ld (_RAM_C348_), hl
		ld (_RAM_C37A_), hl
		ld hl, $FA00
		ld (_RAM_C378_), hl
		ld hl, $0600
		ld (_RAM_C3A8_), hl
		ld (_RAM_C3AA_), hl
		ld (ix+40), $08
		ld a, $96
		ld (_RAM_DE03_), a
		ret
	
; 4th entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_2231_:	
		ld hl, _RAM_C65C_
		ld (hl), $84
		ld hl, $00B4
		ld (_RAM_C65D_), hl
		ld (ix+0), $0F
		ld (ix+16), $00
		ld a, $10
		ld (_RAM_C310_), a
		ld (_RAM_C340_), a
		ld a, (ix+3)
		add a, $88
		ld (_RAM_C313_), a
		jr c, +
		ld a, $FF
		ld (_RAM_C314_), a
+:	
		ld a, (ix+6)
		ld (_RAM_C316_), a
		ld a, $45
		ld (_RAM_C311_), a
		ld a, (ix+3)
		add a, $D8
		ld (_RAM_C343_), a
		jr c, +
		ld a, $FF
		ld (_RAM_C344_), a
+:	
		ld a, (ix+6)
		ld (_RAM_C346_), a
		ld a, $46
		ld (_RAM_C341_), a
		ld a, $96
		ld (_RAM_DE03_), a
		ret
	
; 5th entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_2286_:	
		ld hl, _RAM_C65C_
		ld (hl), $85
		ld hl, $0708
		ld (_RAM_C65D_), hl
		ld (ix+0), $0C
		ld (ix+16), $00
		jp _LABEL_2338_
	
; 6th entry of Jump Table from 2177 (indexed by _RAM_C663_)	
_LABEL_229C_:	
		ld hl, _RAM_C65C_
		ld (hl), $86
		ld hl, $00B4
		ld (_RAM_C65D_), hl
		ld (ix+0), $0E
		ld (ix+16), $00
		ld a, (ix+3)
		add a, $A0
		ld (_RAM_C313_), a
		jr c, +
		ld a, $FF
		ld (_RAM_C314_), a
+:	
		ld a, (ix+6)
		ld (_RAM_C316_), a
		ld a, $47
		ld (_RAM_C311_), a
		ld a, $10
		ld (_RAM_C310_), a
		ld a, $18
		ld (_RAM_C340_), a
		ld (_RAM_C370_), a
		ld (_RAM_C3A0_), a
		ld (_RAM_C3D0_), a
		ld (_RAM_C400_), a
		ld a, $18
		ld (_RAM_C343_), a
		ld a, $60
		ld (_RAM_C373_), a
		ld a, $A8
		ld (_RAM_C3A3_), a
		ld a, $3C
		ld (_RAM_C3D3_), a
		ld a, $84
		ld (_RAM_C403_), a
		ld a, (_RAM_C1C6_)
		ld (_RAM_C346_), a
		ld (_RAM_C406_), a
		add a, $FC
		ld (_RAM_C376_), a
		ld (_RAM_C3A6_), a
		add a, $F5
		ld (_RAM_C3D6_), a
		ld hl, $FC00
		ld (_RAM_C34A_), hl
		ld (_RAM_C37A_), hl
		ld (_RAM_C3AA_), hl
		ld (_RAM_C3DA_), hl
		ld (_RAM_C40A_), hl
		ld hl, $0040
		ld (_RAM_C348_), hl
		ld (_RAM_C378_), hl
		ld (_RAM_C3A8_), hl
		ld (_RAM_C3D8_), hl
		ld (_RAM_C408_), hl
		ld a, $96
		ld (_RAM_DE03_), a
		ret
	
_LABEL_2338_:	
		ld hl, _RAM_D520_
		ld de, _RAM_C310_
		ld bc, $0210
		ldir
		ret
	
; 9th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2344_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		ld a, (ix+16)
		dec a
		jp z, +++
		ld a, (_RAM_C652_)
		bit 0, a
		jr z, ++
		ld (ix+16), $01
		ld e, $02
		bit 5, (ix+18)
		jr z, +
		ld e, $12
+:	
		ld (ix+1), e
		jr ++++
	
++:	
		ld (ix+16), $01
		ld (ix+1), $04
		ld (ix+10), $00
		ld (ix+11), $01
+++:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		ret z
		ld a, (ix+6)
		cp $20
		ret c
++++:	
		ld hl, _RAM_C000_
		set 1, (hl)
		ret
	
; 10th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_238D_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		call _LABEL_23E9_
		ret c
		ld a, (ix+16)
		dec a
		jp z, ++
		call _LABEL_26C5_
		call _LABEL_2733_
		bit 7, (ix+18)
		ret nz
		ld a, (ix+18)
		ld e, $21
		bit 5, a
		jr nz, +
		ld e, $00
+:	
		and $DE
		or e
		ld (ix+18), a
		ld (ix+16), $01
		ld (ix+40), $08
		ret
	
++:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ld e, $01
		ld a, (_RAM_C06B_)
		bit 0, a
		jr z, +
		ld e, $0B
+:	
		ld (ix+0), e
		res 7, (ix+20)
		bit 0, a
		ret nz
		ld a, (_RAM_C65C_)
		bit 3, a
		ret z
		ld (ix+0), $0C
		ret
	
_LABEL_23E9_:	
		ld a, (ix+4)
		or a
		jr nz, +
		ld a, (ix+3)
		cp $E8
		jp c, +
		cp $F8
		jp nc, +
		ld (ix+0), $0B
		ld (ix+16), $00
		scf
		ret
	
+:	
		xor a
		ret
	
; 11th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2408_:	
		ld hl, _LABEL_2663_	; Overriding return address
		push hl
		ld a, (ix+16)
		dec a
		jr z, ++
		dec a
		jr z, +++
		ld e, $0F
		bit 5, (ix+18)
		jr z, +
		ld e, $1F
+:	
		ld (ix+1), e
		ld (ix+40), $10
		ld (ix+16), $01
		ld a, $95
		ld (_RAM_DE03_), a
		ret
	
++:	
		dec (ix+40)
		ret nz
		ld e, $10
		bit 5, (ix+18)
		jr z, +
		ld e, $20
+:	
		ld (ix+1), e
		ld (ix+40), $3C
		ld (ix+16), $02
		ret
	
+++:	
		dec (ix+40)
		ret nz
		ld hl, _RAM_C000_
		set 0, (hl)
		ret
	
; 12th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2454_:	
		bit 7, (ix+20)
		jp nz, _LABEL_1DCC_
		ld a, (_RAM_C660_)
		inc a
		cp $18
		jr c, +
		ld a, $00
+:	
		ld (_RAM_C660_), a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_2566_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, (_RAM_C1C2_)
		add hl, de
		ld (_RAM_C1C2_), hl
		res 7, (ix+18)
		call _LABEL_2848_
		bit 7, (ix+18)
		jr nz, +
		ld a, (_RAM_C1C3_)
		and $F8
		ld (_RAM_C1C3_), a
+:	
		ld a, (_RAM_C603_)
		or a
		jp z, +
		ld (_RAM_C65F_), a
		and $10
		jp z, ++
		ld a, (_RAM_C604_)
		and $10
		jp nz, ++
		jp _LABEL_1F20_
	
+:	
		ld hl, $0000
		ld (_RAM_C1C8_), hl
		ld (_RAM_C1CA_), hl
++:	
		ld hl, _LABEL_2546_	; Overriding return address
		push hl
		ld a, (_RAM_C65F_)
		or a
		ret z
		rrca
		call c, _LABEL_2517_
		rrca
		call c, +++
		rrca
		call c, ++
		rrca
		ret nc
		ld hl, $0100
		and $03
		jr z, +
		ld hl, $00B5
+:	
		ld (_RAM_C1CA_), hl
		res 5, (ix+18)
		res 0, (ix+18)
		jp _LABEL_2690_
	
++:	
		push af
		ld hl, $FF00
		and $03
		jr z, +
		ld hl, $FF4B
+:	
		ld (_RAM_C1CA_), hl
		set 5, (ix+18)
		set 0, (ix+18)
		call _LABEL_2690_
		pop af
		ret
	
+++:	
		push af
		ld hl, $0100
		and $0C
		jr z, +
		ld hl, $00B5
+:	
		ld (_RAM_C1C8_), hl
		ld (ix+19), $00
		set 6, (ix+18)
		call _LABEL_2733_
		pop af
		ret
	
_LABEL_2517_:	
		push af
		ld hl, $0100
		and $0C
		jr z, +
		ld hl, $00B5
+:	
		ex af, af'
		ld a, (ix+3)
		cp $30
		jp c, +
		ld (ix+19), $00
		ex af, af'
		ld hl, $FF00
		and $0C
		jr z, +
		ld hl, $FF4B
+:	
		ld (_RAM_C1C8_), hl
		res 6, (ix+18)
		call _LABEL_2733_
		pop af
		ret
	
_LABEL_2546_:	
		ld a, (_RAM_C65C_)
		bit 7, a
		jr z, ++
		ld a, (_RAM_C1CE_)
		or a
		ret nz
		ld a, $16
		bit 5, (ix+18)
		jr nz, +
		ld a, $06
+:	
		ld (_RAM_C1C1_), a
		ret
	
++:	
		ld a, $01
		ld (_RAM_C1C0_), a
		ret
	
; Data from 2566 to 2595 (48 bytes)	
_DATA_2566_:	
	.db $F1 $FE $21 $FF $51 $FF $81 $FF $B1 $FF $E1 $FF $11 $00 $41 $00
	.db $71 $00 $A1 $00 $D1 $00 $01 $01 $0F $01 $DF $00 $AF $00 $7F $00
	.db $4F $00 $1F $00 $EF $FF $BF $FF $8F $FF $5F $FF $2F $FF $FF $FE
	
; 13th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2596_:	
		ld a, (_RAM_C65C_)
		bit 7, a
		jr nz, +
		ld hl, _RAM_C280_
		ld de, $0030
		ld b, $0E
-:	
		ld a, (hl)
		or a
		ret nz
		add hl, de
		djnz -
		jp _LABEL_2634_
	
+:	
		dec (ix+40)
		ret nz
		ld (ix+40), $10
		ld iy, _RAM_C3D0_
		ld de, $0030
		ld b, $05
-:	
		ld a, (iy+0)
		or a
		jr z, +
		add iy, de
		djnz -
		ret
	
+:	
		ld (iy+0), $17
		ld hl, $0600
		ld a, r
		rrca
		jr nc, +
		ld hl, $FA00
+:	
		ld (iy+8), l
		ld (iy+9), h
		ld hl, $0600
		ld a, r
		rlca
		jr nc, +
		ld hl, $FA00
+:	
		ld (iy+10), l
		ld (iy+11), h
		ld a, (ix+6)
		ld (iy+6), a
		ld a, (ix+3)
		ld (iy+3), a
		ret
	
; 14th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_25FD_:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2634_
		ld a, (_RAM_C65C_)
		bit 7, a
		ret nz
		set 6, (ix+20)
		ld (ix+16), $01
		jp +
	
; 15th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2615_:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2634_
		ld a, (_RAM_C65C_)
		bit 7, a
		ret nz
		ld (ix+16), $01
+:	
		ld hl, _RAM_C280_
		ld de, _RAM_C280_ + 1
		ld bc, $029F
		ld (hl), $00
		ldir
		ret
	
_LABEL_2634_:	
		ld iy, _RAM_D610_
		ld a, (iy+0)
		or a
		jr nz, +
		ld iy, _RAM_D640_
		ld a, (iy+0)
		or a
		jr z, ++
+:	
		ld e, (iy+32)
		ld d, $00
		ld hl, _RAM_C093_
		add hl, de
		set 7, (hl)
		res 5, (hl)
++:	
		di
		call _LABEL_990_
		ei
		ld (ix+0), $01
		ld (ix+16), $00
; 16th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2662_:	
		ret
	
_LABEL_2663_:	
		ld hl, _RAM_C65C_
		ld a, (hl)
		rrca
		jp c, +
		rrca
		jp c, ++
		res 7, (ix+25)
		bit 6, (ix+20)
		ret z
		dec (ix+15)
		ret nz
		res 6, (ix+20)
		ret
	
+:	
		ret
	
++:	
		inc hl
		res 7, (ix+25)
		ld a, (hl)
		and $01
		ret z
		set 7, (ix+25)
		ret
	
_LABEL_2690_:	
		xor a
		ld hl, (_RAM_C713_)
		ld de, (_RAM_C64E_)
		sbc hl, de
		jp nz, _LABEL_26C5_
		xor a
		ld hl, (_RAM_C71C_)
		ld de, (_RAM_C64C_)
		sbc hl, de
		jp nz, _LABEL_26C5_
		ld a, (_RAM_C651_)
		cp (ix+6)
		jp nz, _LABEL_26C5_
		ld a, (_RAM_C650_)
		cp (ix+3)
		jp nz, _LABEL_26C5_
		ld (ix+0), $09
		ld (ix+16), $00
		ret
	
_LABEL_26C5_:	
		ld de, (_RAM_C1CA_)
		call _LABEL_2894_
		ld hl, (_RAM_C1C5_)
		add hl, de
		ld a, (_RAM_C652_)
		bit 4, a
		jp nz, _LABEL_271C_
		ld a, (_RAM_C701_)
		ld c, a
		bit 7, d
		jr z, ++
		ld a, $60
		cp h
		jr z, +
		jr c, _LABEL_2718_
		ld a, $10
		cp h
		jr nc, _LABEL_2700_
+:	
		bit 2, c
		jr nz, _LABEL_2718_
		jr +++
	
++:	
		ld a, $60
		cp h
		jr z, +
		jr nc, _LABEL_2718_
		ld a, $F0
		cp h
		jr z, _LABEL_2700_
		jr nc, +
_LABEL_2700_:	
		ld h, a
		ld l, $00
		ld (ix+14), $00
		ld (ix+13), $7F
		jr _LABEL_2718_
	
+:	
		bit 3, c
		jr nz, _LABEL_2718_
+++:	
		ld (_RAM_C70C_), de
		ld hl, $6000
_LABEL_2718_:	
		ld (_RAM_C1C5_), hl
		ret
	
_LABEL_271C_:	
		bit 7, d
		jp z, +
		ld a, $10
		cp h
		jp nc, _LABEL_2700_
		jp _LABEL_2718_
	
+:	
		ld a, $F0
		cp h
		jp c, _LABEL_2700_
		jp _LABEL_2718_
	
_LABEL_2733_:	
		ld de, (_RAM_C1C8_)
		ld hl, (_RAM_C1C2_)
		add hl, de
		ld (_RAM_C1C2_), hl
		bit 7, d
		jr nz, +
		jr nc, ++
		inc (ix+4)
		jr ++
	
+:	
		jr c, ++
		dec (ix+4)
++:	
		ld h, $00
		ld l, (ix+19)
		add hl, de
		ld (_RAM_C1C8_), hl
		bit 6, (ix+18)
		jr nz, +
		ret nc
		set 6, (ix+18)
		ret
	
+:	
		ld c, $00
		ld b, $FC
		call _LABEL_3B8E_
		and $E0
		jr z, ++
		bit 1, (ix+18)
		jr nz, +
		and $80
		ret nz
		jr +++
	
+:	
		and $80
		ret z
		jr +++
	
++:	
		ld c, $00
		ld b, $03
		call _LABEL_3B8E_
		and $E0
		ret z
		bit 1, (ix+18)
		jr nz, +
		and $80
		ret nz
		jr +++
	
+:	
		and $80
		ret z
+++:	
		xor a
		ld (_RAM_C1C2_), a
		ld a, (_RAM_C1C3_)
		and $F8
		ld (_RAM_C1C3_), a
		res 7, (ix+18)
		ret
	
_LABEL_27A7_:	
		xor a
		ld (_RAM_C635_), a
		ld (_RAM_C636_), a
		ld hl, (_RAM_C1C8_)
		ld d, $00
		ld a, (_RAM_C1D3_)
		ld e, a
		add hl, de
		ld (_RAM_C1C8_), hl
		bit 6, (ix+18)
		jr nz, +
		ret nc
		set 6, (ix+18)
		ret
	
+:	
		ld c, $00
		ld b, $FC
		call _LABEL_3B8E_
		ld (_RAM_C635_), a
		ld b, $03
		call _LABEL_3B8E_
		ld (_RAM_C636_), a
		ret
	
_LABEL_27DA_:	
		ld a, (_RAM_C635_)
		and $E0
		jr nz, +
		ld a, (_RAM_C636_)
		and $E0
		ret z
+:	
		and $80
		ld c, $80
		jr z, +
		ld c, $82
+:	
		ld a, (ix+18)
		and $21
		or c
		ld (ix+18), a
		ret
	
_LABEL_27F9_:	
		ld a, (_RAM_C635_)
		and $E0
		jr nz, +
		ld a, (_RAM_C636_)
		and $E0
		ret z
+:	
		and $80
		ld c, $00
		jr z, +
		ld c, $02
+:	
		ld a, (ix+18)
		and $21
		or c
		ld (ix+18), a
		ret
	
_LABEL_2818_:	
		ld a, (_RAM_C635_)
		and $60
		jr z, +
		cp $40
		scf
		ret nz
+:	
		ld a, (_RAM_C636_)
		and $60
		jr z, +
		cp $40
		scf
		ret nz
+:	
		xor a
		ret
	
_LABEL_2830_:	
		ld a, (_RAM_C635_)
		and $60
		jr z, +
		cp $60
		scf
		ret nz
+:	
		ld a, (_RAM_C636_)
		and $60
		jr z, +
		cp $60
		scf
		ret nz
+:	
		xor a
		ret
	
_LABEL_2848_:	
		ld c, $00
		ld b, $FC
		call _LABEL_3B8E_
		ld (_RAM_C635_), a
		ld c, $00
		ld b, $03
		call _LABEL_3B8E_
		ld (_RAM_C636_), a
		and $E0
		jr z, ++
		and $80
		jr nz, +
		bit 1, (ix+18)
		jr nz, ++
		jr +++
	
+:	
		bit 1, (ix+18)
		jr z, ++
		jr +++
	
++:	
		ld a, (_RAM_C635_)
		and $E0
		jr z, ++
		and $80
		jr nz, +
		bit 1, (ix+18)
		jr z, +++
		jr ++
	
+:	
		bit 1, (ix+18)
		jr nz, +++
++:	
		set 7, (ix+18)
		ret
	
+++:	
		dec c
		ret
	
_LABEL_2894_:	
		ld a, (_RAM_C1D2_)
		and $F3
		ld c, a
		exx
		ld c, $FF
		ld b, $07
		rrca
		jr nc, +
		ld b, $F8
+:	
		call _LABEL_3B8E_
		exx
		and $E0
		jr z, +++
		and $80
		jr nz, +
		bit 1, c
		jr nz, +++
		jr ++
	
+:	
		bit 1, c
		jr z, +++
++:	
		bit 0, c
		jr z, ++
		set 2, c
		ld a, (_RAM_C70F_)
		and $07
		jr z, +
		sub $01
+:	
		ld d, a
		ld e, $00
		jr +++
	
++:	
		set 3, c
		ld a, (_RAM_C70F_)
		neg
		and $07
		jr z, +
		sub $01
		neg
+:	
		ld d, a
		ld e, $00
+++:	
		ld (ix+18), c
		ret
	
_LABEL_28E4_:	
		ld a, (_RAM_C0A6_)
		jr +
	
_LABEL_28E9_:	
		ld a, (_RAM_C0A7_)
+:	
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		bit 5, (ix+18)
		jr z, +
		inc hl
+:	
		ld a, (hl)
		ld (_RAM_C1C1_), a
		ret
	
_LABEL_28FD_:	
		ld a, (_RAM_C633_)
		or a
		ret nz
		ld a, (_RAM_C0A8_)
		ld b, a
		ld hl, _RAM_C280_
		ld de, $0030
-:	
		ld a, (hl)
		or a
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		push hl
		pop iy
		xor a
		ld (iy+4), a
		ld (iy+7), a
		ld hl, _DATA_29E7_
		ld a, (_RAM_C1D1_)
		cp $00
		jr z, +
		ld hl, $29FB
		cp $01
		jr z, +
		ld hl, $2A0F
+:	
		ld (iy+17), a
		ld a, (_RAM_C1D2_)
		and $23
		ld (iy+18), a
		bit 5, a
		jr z, +
		inc hl
		inc hl
+:	
		ld a, (_RAM_C0A7_)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (_RAM_C1C3_)
		add a, (hl)
		ld (iy+3), a
		ld a, $00
		bit 7, (hl)
		jr z, +
		ld a, $FF
+:	
		dec (iy+4)
		adc a, (ix+4)
		ld (iy+4), a
		inc hl
		ld a, (_RAM_C1C6_)
		add a, (hl)
		ld (iy+6), a
		ld a, $00
		bit 7, (hl)
		jr z, +
		ld a, $FF
+:	
		adc a, (ix+7)
		ld (iy+7), a
		push iy
		pop ix
		ld bc, $0000
		call _LABEL_3B8E_
		ld ix, _RAM_C1C0_
		and $E0
		jr z, ++
		and $80
		jr z, +
		bit 1, (ix+18)
		ret nz
		jr ++
	
+:	
		bit 1, (ix+18)
		ret z
++:	
		ld a, (_RAM_C0A7_)
		ld e, a
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_2A23_
		add hl, de
		ld a, (hl)
		ld (_RAM_DE03_), a
		inc hl
		ld a, (hl)
		ld (iy+0), a
		inc hl
		bit 5, (iy+18)
		jr z, +
		inc hl
		inc hl
		inc hl
+:	
		ld a, (hl)
		ld (iy+1), a
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (iy+10), e
		ld (iy+11), d
		xor a
		ld (iy+13), a
		ld (iy+14), a
		set 0, (iy+25)
		ld a, (_RAM_C0A7_)
		ld (iy+32), a
		ld a, $0C
		ld (_RAM_C633_), a
		ld a, $91
		ld (_RAM_DE03_), a
		ret
	
; Data from 29E7 to 2A22 (60 bytes)	
_DATA_29E7_:	
	.db $E2 $12 $E2 $EE $E2 $12 $E2 $EE $E2 $12 $E2 $EE $E2 $12 $E2 $EE
	.db $E2 $0A $E2 $F6 $F0 $0E $F0 $F2 $F0 $0E $F0 $F2 $F0 $0E $F0 $F2
	.db $F0 $0E $F0 $F2 $F2 $0A $F2 $F6 $E8 $10 $E8 $F0 $E8 $10 $E8 $F0
	.db $E8 $10 $E8 $F0 $E8 $10 $E8 $F0 $EA $0A $EA $F6
	
; Data from 2A23 to 2A4A (40 bytes)	
_DATA_2A23_:	
	.db $91 $11 $3C $80 $02 $3C $80 $FD $91 $11 $3C $80 $02 $3C $80 $FD
	.db $91 $11 $40 $00 $03 $41 $00 $FD $AA $13 $42 $80 $01 $42 $80 $FE
	.db $91 $12 $3D $00 $03 $3E $00 $FD
	
; 25th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2A4B_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2B05_
		dec a
		jp z, _LABEL_2B38_
		bit 0, (ix+18)
		jp z, +
		ld a, (ix+7)
		cp $FF
		jp nz, ++
		ld a, (ix+6)
		cp $F0
		jp c, _LABEL_2ACF_
		jp +++
	
+:	
		ld a, (ix+7)
		cp $01
		jp nz, ++
		ld a, (ix+6)
		cp $10
		jp nc, _LABEL_2ACF_
		jp +++
	
++:	
		call _LABEL_2848_
		call _LABEL_3838_
		dec a
		jr z, _LABEL_2ACF_
		dec a
		jr z, _LABEL_2AF2_
+++:	
		ld hl, $FF40
		ld c, $61
		bit 0, (ix+18)
		jr nz, +
		ld hl, $00C0
		ld c, $5F
+:	
		ld (ix+1), c
		ld (ix+10), l
		ld (ix+11), h
		bit 7, (ix+18)
		ret z
		ld a, (ix+18)
		and $3F
		or $C0
		ld (ix+18), a
		ld (ix+8), $00
		ld (ix+9), $00
		ld (ix+19), $40
		ld (ix+16), $01
		ret
	
_LABEL_2ACF_:	
		ld a, (ix+18)
		xor $21
		ld (ix+18), a
		ld c, $60
		bit 0, a
		jr nz, +
		ld c, $5E
+:	
		ld (ix+1), c
		ld (ix+16), $02
		ld (ix+40), $08
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_2AF2_:	
		ld (ix+16), $01
		ld (ix+19), $40
		ld (ix+8), $00
		ld (ix+9), $FC
		jp _LABEL_27DA_
	
_LABEL_2B05_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $FF40
		bit 0, (ix+18)
		jr nz, +
		ld hl, $00C0
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+40), $08
		ld (ix+16), $02
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_2B38_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; 26th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2B41_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		bit 4, (ix+18)
		jp nz, _LABEL_2B94_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2B94_
		dec a
		jp z, _LABEL_2BA7_
		ld e, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $21
		neg
+:	
		cp $08
		jr c, +
		ld a, (ix+18)
		and $12
		or e
		ld (ix+18), a
		ld hl, $2CBF
		call _LABEL_3AE8_
+:	
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $28
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+16), $01
		ld hl, _DATA_2CC5_
		jp _LABEL_3AE8_
	
_LABEL_2B94_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+40), $40
		ld (ix+16), $02
		ld hl, $2CBF
		jp _LABEL_3AE8_
	
_LABEL_2BA7_:	
		ld e, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $21
		neg
+:	
		cp $08
		jr c, +
		ld a, (ix+18)
		and $12
		or e
		ld (ix+18), a
		ld hl, $2CBF
		call _LABEL_3AE8_
+:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; 27th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2BD1_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		bit 4, (ix+18)
		jp nz, _LABEL_2C23_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2C23_
		dec a
		jp z, _LABEL_2C36_
		ld e, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $21
		neg
+:	
		cp $08
		jr c, ++
		bit 0, (ix+18)
		jr z, +
		bit 0, e
		ret z
		jr ++
	
+:	
		bit 0, e
		ret nz
++:	
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $28
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+16), $01
		ld hl, _DATA_2CC5_
		jp _LABEL_3AE8_
	
_LABEL_2C23_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+40), $40
		ld (ix+16), $02
		ld hl, $2CBF
		jp _LABEL_3AE8_
	
_LABEL_2C36_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; 28th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2C3F_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		bit 4, (ix+18)
		jp nz, _LABEL_2C93_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_2C93_
		dec a
		jp z, _LABEL_2CA6_
		ld e, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $21
		neg
+:	
		cp $08
		jr c, ++
		bit 0, (ix+18)
		jr z, +
		bit 0, e
		jr z, +++
		jr ++
	
+:	
		bit 0, e
		jr nz, +++
++:	
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $28
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+16), $01
		ld hl, _DATA_2CC5_
		jp _LABEL_3AE8_
	
_LABEL_2C93_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+40), $40
		ld (ix+16), $02
		ld hl, $2CBF
		jp _LABEL_3AE8_
	
_LABEL_2CA6_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
+++:	
		ld e, $1D
		bit 5, (ix+18)
		jr nz, +
		ld e, $1E
+:	
		ld (ix+0), e
		ld (ix+16), $00
		ret
	
	; Data from 2CC1 to 2CC4 (4 bytes)
	.db $54 $52 $58 $56
	
; Data from 2CC5 to 2CCC (8 bytes)	
_DATA_2CC5_:	
	.db $5C $5A $55 $53 $59 $57 $5D $5B
	
; 29th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2CCD_:	
		ld (ix+12), $03
		ld (ix+18), $21
		ld (ix+1), $5C
		ld (ix+0), $1A
		jp _LABEL_2D9B_
	
; 30th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2CE0_:	
		ld (ix+12), $03
		ld (ix+18), $00
		ld (ix+1), $5A
		ld (ix+0), $1A
		jp _LABEL_2D9B_
	
; 31st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2CF3_:	
		ld (ix+12), $02
		ld (ix+18), $21
		ld (ix+1), $58
		ld (ix+0), $1A
		jp _LABEL_2D9B_
	
; 32nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D06_:	
		ld (ix+12), $02
		ld (ix+18), $00
		ld (ix+1), $56
		ld (ix+0), $1A
		jp _LABEL_2D9B_
	
; 33rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D19_:	
		ld (ix+12), $01
		ld (ix+18), $21
		ld (ix+1), $54
		ld (ix+0), $1C
		jp _LABEL_2D9B_
	
; 34th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D2C_:	
		ld (ix+12), $01
		ld (ix+18), $00
		ld (ix+1), $52
		ld (ix+0), $1C
		jp _LABEL_2D9B_
	
; 35th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D3F_:	
		ld (ix+12), $01
		ld (ix+18), $21
		ld (ix+1), $54
		ld (ix+0), $1B
		jp _LABEL_2D9B_
	
; 36th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D52_:	
		ld (ix+12), $01
		ld (ix+18), $00
		ld (ix+1), $52
		ld (ix+0), $1B
		jp _LABEL_2D9B_
	
; 37th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D65_:	
		ld (ix+12), $03
		ld (ix+18), $21
		ld (ix+1), $5C
		ld (ix+0), $1B
		jp _LABEL_2D9B_
	
; 38th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D78_:	
		ld (ix+12), $03
		ld (ix+18), $00
		ld (ix+1), $5A
		ld (ix+0), $1B
		jp _LABEL_2D9B_
	
; 39th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2D8B_:	
		ld (ix+12), $02
		ld (ix+18), $00
		ld (ix+1), $56
		ld (ix+0), $1B
_LABEL_2D9B_:	
		res 0, (ix+25)
		ret
	
; 41st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2DA0_:	
		ld a, (_RAM_C700_)
		bit 3, a
		jp z, +
		call _LABEL_3942_
		jr nc, +
		ld a, (ix+0)
		cp $62
		jr nz, +
		ld (ix+0), $29
+:	
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, ++
		dec a
		jp z, _LABEL_2E5D_
		ld (ix+12), $14
		ld hl, $0300
		bit 0, (ix+18)
		jr z, +
		ld hl, $FD00
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+1), $68
		ld (ix+28), $00
		ld (ix+29), $00
		ld (ix+16), $01
		ld a, $B3
		ld (_RAM_DE03_), a
++:	
		ld a, (ix+32)
		and $3F
		ld e, a
		ld d, $00
		ld hl, _RAM_C093_
		add hl, de
		bit 5, (hl)
		jr z, +
		bit 7, (hl)
		jp z, ++
+:	
		ld (ix+16), $02
		ret
	
++:	
		ld de, $0300
		ld l, (ix+28)
		ld h, (ix+29)
		bit 3, (ix+18)
		jr nz, ++
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		cp $80
		jr nc, +
		call _LABEL_3838_
		or a
		ret z
+:	
		ld a, (ix+18)
		xor $29
		ld (ix+18), a
		ld e, (ix+10)
		ld d, (ix+11)
		xor a
		ld l, a
		ld h, a
		sbc hl, de
		ld (ix+10), l
		ld (ix+11), h
		ret
	
++:	
		xor a
		sbc hl, de
		ld (ix+28), l
		ld (ix+29), h
		ret nc
		ld l, (ix+30)
		ld h, (ix+31)
		ld de, $0014
		add hl, de
		set 3, (hl)
		jr +
	
_LABEL_2E5D_:	
		call _LABEL_3838_
		or a
		jr nz, +
		ld a, (ix+7)
		or a
		ret z
+:	
		ld a, $B7
		ld (_RAM_DE03_), a
		jp _LABEL_39BB_
	
; 42nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2E70_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_2ECA_
		dec a
		jp z, _LABEL_2F06_
		dec a
		jp z, _LABEL_2EEE_
		ld (ix+12), $08
		ld (ix+1), $6D
		ld (ix+16), $01
		xor a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+18), $21
		set 0, (ix+25)
		ret
	
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		cp $20
		ret nc
		ld (ix+19), $30
		ld a, (ix+18)
		or $C0
		ld (ix+18), a
		ld (ix+16), $04
		ret
	
_LABEL_2ECA_:	
		ld a, (ix+7)
		or a
		jr nz, +
		call _LABEL_3838_
+:	
		ld hl, $0000
		bit 2, (ix+18)
		jr nz, +
		ld hl, $0280
		bit 0, (ix+18)
		jr z, +
		ld hl, $FD80
+:	
		ld (ix+10), l
		ld (ix+11), h
_LABEL_2EEE_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $03
		ld (ix+40), $10
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_2F06_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $02
		ld (ix+8), $00
		ld (ix+9), $FC
		ld e, $6F
		ld d, $00
		ld a, (ix+7)
		cp $FF
		jr z, ++
		ld e, $6E
		ld d, $21
		cp $01
		jr z, ++
		ld e, $6F
		ld d, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $6E
		ld d, $21
		neg
+:	
		cp $08
		jr c, +++
++:	
		ld (ix+1), e
		ld a, (ix+18)
		and $DE
		or d
		ld (ix+18), a
+++:	
		call _LABEL_2848_
		jp _LABEL_27DA_
	
; 43rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_2F51_:	
		call _LABEL_3942_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_2FD9_
		dec a
		jp z, _LABEL_3035_
		dec a
		jp z, _LABEL_3068_
		ld (ix+12), $07
		ld (ix+1), $69
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+18), $21
		set 0, (ix+25)
		ld (ix+16), $01
+:	
		ld e, $6B
		ld d, $80
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld e, $69
		ld d, $A1
		neg
+:	
		cp $28
		jr c, +
		ld a, (ix+3)
		cp $E0
		ret nc
+:	
		ld (ix+1), e
		ld a, (ix+18)
		and $1E
		or d
		ld (ix+18), a
		ld (ix+19), $28
		ld (ix+16), $02
		ld hl, $FA80
		ld a, (ix+3)
		cp $E0
		jr nc, +
		ld hl, $FE00
+:	
		ld (ix+8), l
		ld (ix+9), h
		ex af, af'
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ex af, af'
		ret c
		ld a, $AD
		ld (_RAM_DE03_), a
		ret
	
_LABEL_2FD9_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld a, (ix+3)
		cp $C0
		jr nc, +
		ld hl, $0040
		bit 0, (ix+18)
		jr z, +
		ld hl, $FFC0
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		ld a, (ix+18)
		bit 6, a
		ret z
		ld e, $6A
		bit 0, a
		jr nz, +
		ld e, $6C
+:	
		ld (ix+1), e
		bit 7, a
		ret nz
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld e, $03
		ld d, $08
		ld a, (ix+3)
		cp $B8
		jr z, +
		ld e, $04
		ld d, $3C
+:	
		ld (ix+16), e
		ld (ix+40), d
		ret nz
		ld a, $AD
		ld (_RAM_DE03_), a
		ret
	
_LABEL_3035_:	
		ld e, (ix+8)
		ld d, (ix+9)
		ld l, (ix+2)
		ld h, (ix+3)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld a, h
		ld h, $00
		ld l, (ix+19)
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		ld a, (ix+3)
		cp $E0
		ret c
		ld (ix+3), $E0
		ld (ix+2), $00
		ld (ix+16), $04
		ret
	
_LABEL_3068_:	
		ld e, $69
		bit 0, (ix+18)
		jr nz, +
		ld e, $6B
+:	
		ld (ix+1), e
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
; 44th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_307E_:	
		call _LABEL_390A_
		ret c
		ld hl, $37A9
		push hl
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_315F_
		dec a
		jp z, _LABEL_317E_
		dec a
		jp z, _LABEL_31B1_
		dec a
		jp z, _LABEL_31BE_
		ld (ix+16), $01
		xor a
		ld (ix+28), a
		ld (ix+29), a
		ld (ix+12), $0A
		ld (ix+1), $75
		ld (ix+19), $40
		ld (ix+18), $21
		res 0, (ix+25)
		pop af
		ret
	
+:	
		ld (ix+1), $75
		ld a, (ix+7)
		cp $FF
		jr z, _LABEL_3120_
		cp $01
		jr z, _LABEL_3119_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+1), $74
		ld (ix+8), $00
		ld (ix+9), $00
		set 6, (ix+18)
		ld (ix+16), $03
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+1), $74
		ld (ix+8), $00
		ld (ix+9), $FB
		ld (ix+16), $03
		jp _LABEL_27DA_
	
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, _LABEL_3120_
		neg
		cp $18
		jr c, _LABEL_3120_
		ld hl, $0000
		ld e, $01
		jr z, +
_LABEL_3119_:	
		ld hl, $FF80
		ld e, $01
		jr +
	
_LABEL_3120_:	
		ld hl, $0080
		ld e, $00
+:	
		ld a, (ix+18)
		and $FE
		or e
		ld (ix+18), a
		ld (ix+10), l
		ld (ix+11), h
		ld de, $0080
		ld l, (ix+28)
		ld h, (ix+29)
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		cp $10
		ret c
		xor a
		ld (ix+28), a
		ld (ix+29), a
		bit 0, (ix+18)
		ret z
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $02
		ret
	
_LABEL_315F_:	
		call _LABEL_3A1A_
		jr nc, +
		ld (iy+0), $31
		ld (ix+41), $3C
		ld (ix+1), $74
		ld (ix+16), $04
		ret
	
+:	
		ld (ix+16), $05
		ld (ix+40), $08
		ret
	
_LABEL_317E_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0080
		bit 0, (ix+18)
		jr z, +
		ld hl, $FF80
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+40), $08
		ld (ix+16), $05
		ret
	
_LABEL_31B1_:	
		dec (ix+41)
		ret nz
		ld (ix+40), $3C
		ld (ix+16), $05
		ret
	
_LABEL_31BE_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
; 45th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_31C7_:	
		call _LABEL_390A_
		ret c
		ld hl, $37A9
		push hl
		ld a, (ix+16)
		dec a
		jp z, +
		ld (ix+16), $01
		ld (ix+40), $10
		ld (ix+12), $0A
		ld (ix+1), $74
		ld (ix+18), $21
		res 0, (ix+25)
		pop af
		ret
	
+:	
		ld a, (ix+7)
		or a
		ret nz
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ret nc
		dec (ix+40)
		ret nz
		call _LABEL_3A1A_
		jr nc, +
		ld (iy+0), $31
+:	
		ld (ix+40), $50
		ret
	
; 46th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_320E_:	
		call _LABEL_390A_
		ret c
		ld hl, $37A9
		push hl
		ld a, (ix+16)
		dec a
		jp z, +
		ld (ix+16), $01
		ld (ix+40), $10
		ld (ix+12), $0A
		ld (ix+1), $77
		ld (ix+18), $00
		res 0, (ix+25)
		pop af
		ret
	
+:	
		ld a, (ix+7)
		or a
		ret nz
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ret c
		dec (ix+40)
		ret nz
		call _LABEL_3A1A_
		jr nc, +
		ld (iy+0), $31
+:	
		ld (ix+40), $50
		ret
	
; 47th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3255_:	
		call _LABEL_390A_
		ret c
		ld hl, $37A9
		push hl
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_3311_
		dec a
		jp z, _LABEL_3330_
		dec a
		jp z, _LABEL_333D_
		dec a
		jp z, _LABEL_334A_
		ld (ix+16), $01
		ld (ix+12), $0A
		ld (ix+1), $75
		ld (ix+19), $40
		ld (ix+18), $21
		res 0, (ix+25)
		pop af
		ret
	
+:	
		ld (ix+1), $75
		ld a, (ix+7)
		cp $FF
		jr z, _LABEL_32E4_
		cp $01
		jr z, _LABEL_32DD_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $05
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $05
		ld (ix+8), $00
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, _LABEL_32E4_
		neg
		cp $40
		jr c, _LABEL_32E4_
		cp $48
		jr c, ++
_LABEL_32DD_:	
		ld hl, $FF80
		ld d, $01
		jr +
	
_LABEL_32E4_:	
		ld hl, $0080
		ld d, $00
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+18)
		and $FE
		or d
		ld (ix+18), a
		ret
	
++:	
		ld (ix+16), $02
		ld (ix+1), $76
		set 0, (ix+18)
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+41), $10
		ret
	
_LABEL_3311_:	
		dec (ix+41)
		ret nz
		call _LABEL_3A1A_
		jr nc, +
		ld (iy+0), $32
		ld (ix+16), $03
		ld (ix+41), $3C
		ret
	
+:	
		ld (ix+40), $78
		ld (ix+16), $04
		ret
	
_LABEL_3330_:	
		dec (ix+41)
		ret nz
		ld (ix+40), $3C
		ld (ix+16), $04
		ret
	
_LABEL_333D_:	
		ld (ix+1), $74
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
_LABEL_334A_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0080
		bit 0, (ix+18)
		jr z, +
		ld hl, $FF80
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $04
		ld (ix+40), $08
		ret
	
; 48th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3376_:	
		call _LABEL_390A_
		ret c
		ld hl, $37A9
		push hl
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_3430_
		dec a
		jp z, _LABEL_344F_
		dec a
		jp z, _LABEL_345C_
		dec a
		jp z, _LABEL_3469_
		ld (ix+16), $01
		ld (ix+12), $0A
		ld (ix+1), $78
		ld (ix+19), $40
		ld (ix+18), $00
		res 0, (ix+25)
		pop af
		ret
	
+:	
		ld (ix+1), $78
		ld a, (ix+7)
		cp $FF
		jr z, _LABEL_33FC_
		cp $01
		jr z, _LABEL_3403_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $05
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $05
		ld (ix+8), $00
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr c, _LABEL_3403_
		cp $40
		jr c, _LABEL_3403_
		cp $48
		jr c, ++
_LABEL_33FC_:	
		ld hl, $0080
		ld d, $00
		jr +
	
_LABEL_3403_:	
		ld hl, $FF80
		ld d, $01
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+18)
		and $FE
		or d
		ld (ix+18), a
		ret
	
++:	
		ld (ix+16), $02
		ld (ix+1), $79
		res 0, (ix+18)
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+41), $10
		ret
	
_LABEL_3430_:	
		dec (ix+41)
		ret nz
		call _LABEL_3A1A_
		jr nc, +
		ld (iy+0), $32
		ld (ix+16), $03
		ld (ix+41), $3C
		ret
	
+:	
		ld (ix+40), $78
		ld (ix+16), $04
		ret
	
_LABEL_344F_:	
		dec (ix+41)
		ret nz
		ld (ix+40), $3C
		ld (ix+16), $04
		ret
	
_LABEL_345C_:	
		ld (ix+1), $77
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
_LABEL_3469_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0080
		bit 0, (ix+18)
		jr z, +
		ld hl, $FF80
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $04
		ld (ix+40), $08
		ret
	
; 51st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3495_:	
		ld (ix+12), $06
		jr +
	
; 52nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_349B_:	
		ld (ix+12), $17
+:	
		ld (ix+0), $35
		ld (ix+1), $62
		ld (ix+19), $40
		ld (ix+18), $21
		ld (ix+41), $00
		res 0, (ix+25)
		ret
	
; 53rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_34B8_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_3554_
		dec a
		jp z, _LABEL_356A_
		dec a
		jp z, _LABEL_35AA_
		dec a
		jp z, _LABEL_3607_
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+1), $62
		ld a, (ix+7)
		or a
		ret nz
		bit 4, (ix+18)
		ret nz
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, ++
		set 0, (ix+18)
		neg
		cp $A0
		ret nc
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $29
		push ix
		pop hl
		ld (iy+30), l
		ld (iy+31), h
		ld a, (ix+32)
		or $C0
		ld (iy+32), a
		ld (ix+16), $01
		ld (ix+1), $64
		ld a, (ix+41)
		inc a
		cp $04
		jr c, +
		xor a
+:	
		ld (ix+41), a
		ret
	
++:	
		cp $20
		ret nc
		call _LABEL_2848_
		ld a, (_RAM_C636_)
		and $E0
		jp z, +
		call _LABEL_3838_
		or a
		jp nz, +
		ld (ix+1), $63
		res 0, (ix+18)
		ld (ix+10), $80
		ld (ix+11), $00
		ret
	
+:	
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_3554_:	
		bit 3, (ix+20)
		ret z
		res 3, (ix+20)
		ld (ix+16), $02
		ld (ix+1), $62
		ld (ix+40), $1E
		ret
	
_LABEL_356A_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $03
		ld a, (ix+41)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3610_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (ix+28), e
		ld (ix+29), d
		ld (ix+10), c
		ld (ix+11), b
		ld d, $00
		bit 0, b
		jr z, +
		ld d, $01
+:	
		ld a, (ix+18)
		and $FE
		or d
		ld (ix+18), a
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ret
	
_LABEL_35AA_:	
		ld (ix+1), $63
		call _LABEL_2848_
		ld a, (_RAM_C635_)
		bit 0, (ix+18)
		jr z, +
		ld a, (_RAM_C636_)
+:	
		and $E0
		jr z, +
		call _LABEL_3838_
		or a
		jr z, ++
+:	
		ld a, (ix+18)
		xor $01
		ld (ix+18), a
		ld hl, $0000
		ld e, (ix+10)
		ld d, (ix+11)
		sbc hl, de
		ld (ix+10), l
		ld (ix+11), h
++:	
		ld l, (ix+28)
		ld h, (ix+29)
		ld de, $FF80
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		or a
		ret nz
		ld (ix+16), $04
		ld (ix+1), $62
		ld (ix+40), $1E
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_3607_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; Data from 3610 to 361F (16 bytes)	
_DATA_3610_:	
	.db $00 $08 $80 $00 $00 $08 $80 $00 $00 $08 $80 $00 $00 $18 $80 $FF
	
; 54th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3620_:	
		ld (ix+12), $06
		jr +
	
; 55th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3626_:	
		ld (ix+12), $17
+:	
		ld (ix+0), $38
		ld (ix+1), $65
		ld (ix+19), $40
		ld (ix+18), $00
		ld (ix+41), $00
		res 0, (ix+25)
		ret
	
; 56th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3643_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_36DD_
		dec a
		jp z, _LABEL_36F3_
		dec a
		jp z, _LABEL_3733_
		dec a
		jp z, _LABEL_3790_
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+1), $65
		ld a, (ix+7)
		or a
		ret nz
		bit 4, (ix+18)
		ret nz
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr c, ++
		res 0, (ix+18)
		cp $A0
		ret nc
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $29
		push ix
		pop hl
		ld (iy+30), l
		ld (iy+31), h
		ld a, (ix+32)
		or $C0
		ld (iy+32), a
		ld (ix+16), $01
		ld (ix+1), $67
		ld a, (ix+41)
		inc a
		cp $04
		jr c, +
		xor a
+:	
		ld (ix+41), a
		ret
	
++:	
		neg
		cp $20
		ret nc
		call _LABEL_2848_
		ld a, (_RAM_C635_)
		and $E0
		jr z, +
		call _LABEL_3838_
		or a
		jr nz, +
		ld (ix+1), $66
		set 0, (ix+18)
		ld (ix+10), $80
		ld (ix+11), $FF
		ret
	
+:	
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_36DD_:	
		bit 3, (ix+20)
		ret z
		res 3, (ix+20)
		ld (ix+16), $02
		ld (ix+1), $65
		ld (ix+40), $1E
		ret
	
_LABEL_36F3_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $03
		ld a, (ix+41)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3799_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (ix+28), e
		ld (ix+29), d
		ld (ix+10), c
		ld (ix+11), b
		ld d, $00
		bit 0, b
		jr z, +
		ld d, $01
+:	
		ld a, (ix+18)
		and $FE
		or d
		ld (ix+18), a
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ret
	
_LABEL_3733_:	
		ld (ix+1), $66
		call _LABEL_2848_
		ld a, (_RAM_C635_)
		bit 0, (ix+18)
		jr nz, +
		ld a, (_RAM_C636_)
+:	
		and $E0
		jr z, +
		call _LABEL_3838_
		or a
		jr z, ++
+:	
		ld a, (ix+18)
		xor $01
		ld (ix+18), a
		ld hl, $0000
		ld e, (ix+10)
		ld d, (ix+11)
		sbc hl, de
		ld (ix+10), l
		ld (ix+11), h
++:	
		ld l, (ix+28)
		ld h, (ix+29)
		ld de, $FF80
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		or a
		ret nz
		ld (ix+16), $04
		ld (ix+1), $65
		ld (ix+40), $1E
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_3790_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; Data from 3799 to 37A8 (16 bytes)	
_DATA_3799_:	
	.db $00 $08 $80 $FF $00 $08 $80 $FF $00 $08 $80 $FF $00 $18 $80 $00
	
_LABEL_37A9_:	
		ld hl, $0000
		ld a, (_RAM_C652_)
		bit 1, a
		jp nz, +
		ld de, (_RAM_C7F1_)
		xor a
		sbc hl, de
+:	
		ld e, (ix+10)
		ld d, (ix+11)
		add hl, de
		ex de, hl
_LABEL_37C3_:	
		ld l, (ix+5)
		ld h, (ix+6)
		add hl, de
		ld (ix+5), l
		ld (ix+6), h
		bit 7, d
		jr nz, +
		jr nc, +++
		inc (ix+7)
		jr ++
	
+:	
		jr c, +++
		dec (ix+7)
++:	
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		jr ++++
	
+++:	
		ld a, (ix+7)
		or a
		jr z, +++++
		ld a, $00
		bit 7, d
		jr z, +
		dec a
+:	
		ld l, (ix+22)
		ld h, (ix+23)
		add hl, de
		adc a, (ix+24)
++++:	
		ld (ix+22), l
		ld (ix+23), h
		ld (ix+24), a
+++++:	
		ld a, (_RAM_C652_)
		bit 2, a
		jr z, +
		ld a, (ix+12)
		cp $19
		ret nz
+:	
		ld a, (_RAM_C700_)
		bit 2, a
		ret z
		ld e, $08
		bit 4, a
		jr nz, +
		ld e, $F8
+:	
		ld a, (ix+3)
		add a, e
		ld (ix+3), a
		bit 7, e
		jr nz, +
		ret nc
		inc (ix+4)
		ret
	
+:	
		ret c
		dec (ix+4)
		ret
	
_LABEL_3838_:	
		ld a, (ix+18)
		and $FB
		ld (ix+18), a
		ld b, $F8
		bit 0, a
		jr nz, +
		ld b, $07
+:	
		ld a, (ix+6)
		add a, b
		bit 7, a
		jr z, +
		neg
+:	
		cp $0C
		jp c, _LABEL_3894_
		ld c, $FF
		call _LABEL_3B8E_
		and $E0
		jr z, _LABEL_3894_
		and $80
		jr nz, +
		bit 1, (ix+18)
		jr nz, _LABEL_3894_
		jr ++
	
+:	
		bit 1, (ix+18)
		jr z, _LABEL_3894_
++:	
		ld de, $FF40
		add hl, de
		ld a, (hl)
		and $E0
		jr z, +++
		and $80
		jr nz, +
		bit 1, (ix+18)
		jr nz, +++
		jr ++
	
+:	
		bit 1, (ix+18)
		jr z, +++
++:	
		set 2, (ix+18)
		ld a, $01
		ret
	
_LABEL_3894_:	
		xor a
		ret
	
+++:	
		set 2, (ix+18)
		ld a, $02
		ret
	
_LABEL_389D_:	
		ld e, (ix+8)
		ld d, (ix+9)
		ld l, (ix+2)
		ld h, (ix+3)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld h, $00
		ld l, (ix+19)
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		bit 6, (ix+18)
		jr nz, +
		ret nc
		set 6, (ix+18)
		ret
	
+:	
		ld c, $00
		ld b, $FC
		call _LABEL_3B8E_
		and $E0
		jr z, ++
		bit 1, (ix+18)
		jr nz, +
		and $80
		ret nz
		jr +++
	
+:	
		and $80
		ret z
		jr +++
	
++:	
		ld b, $03
		call _LABEL_3B8E_
		and $E0
		ret z
		bit 1, (ix+18)
		jr nz, +
		and $80
		ret nz
		jr +++
	
+:	
		and $80
		ret z
+++:	
		ld (ix+2), $00
		ld a, (ix+3)
		and $F8
		ld (ix+3), a
		res 7, (ix+18)
		ret
	
_LABEL_390A_:	
		ld a, (ix+4)
		or a
		jp nz, _LABEL_3986_
		ld a, (ix+3)
		cp $10
		jp c, _LABEL_3968_
		cp $D0
		jp c, _LABEL_3942_
		bit 7, (ix+18)
		jp z, _LABEL_3968_
		cp $E0
		jp c, _LABEL_3942_
		cp $F0
		jp nc, +
		ld a, (_RAM_C700_)
		bit 3, a
		jp z, _LABEL_3986_
		jp _LABEL_39F6_
	
+:	
		ld a, (_RAM_C700_)
		bit 3, a
		jp nz, _LABEL_39F6_
_LABEL_3942_:	
		ld a, (ix+7)
		or a
		jp z, _LABEL_39E4_
		ld hl, (_RAM_C713_)
		ld e, (ix+23)
		ld d, (ix+24)
		sbc hl, de
		ld a, l
		bit 7, h
		jr z, +
		neg
+:	
		cp $40
		jp c, _LABEL_39E4_
		cp $80
		jp c, _LABEL_39F6_
		jp _LABEL_3986_
	
_LABEL_3968_:	
		ld a, (ix+7)
		or a
		jp z, _LABEL_39F6_
		ld hl, (_RAM_C713_)
		ld e, (ix+23)
		ld d, (ix+24)
		sbc hl, de
		ld a, l
		bit 7, h
		jr z, +
		neg
+:	
		cp $80
		jp c, _LABEL_39F6_
_LABEL_3986_:	
		ld (ix+0), $62
		ld a, (ix+32)
		and $3F
		ld e, a
		ld d, $00
		ld a, (ix+32)
		and $C0
		jr z, ++
		cp $C0
		jr z, +++
		cp $80
		jr z, +
		ld hl, _RAM_C093_
		add hl, de
		res 4, (hl)
		jr +++
	
+:	
		ld hl, _RAM_C093_
		add hl, de
		res 5, (hl)
		jr +++
	
++:	
		ld hl, _RAM_D000_
		add hl, de
		res 7, (hl)
+++:	
		scf
		jp +
	
; 98th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_39BB_:	
		xor a
		ld (ix+0), a
		ld (ix+16), a
		ld (ix+1), a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+20), a
		ld (ix+25), a
		ld (ix+26), a
		scf
		jp +
	
_LABEL_39E4_:	
		xor a
+:	
		push af
		ld a, (_RAM_C65C_)
		bit 0, a
		jr nz, +
		pop af
		ret
	
+:	
		pop af
		bit 2, (ix+20)
		ret z
		ret c
_LABEL_39F6_:	
		ld (ix+13), $08
		ld de, (_RAM_C7F1_)
		ld hl, $0000
		xor a
		sbc hl, de
		ex de, hl
		call _LABEL_37C3_
		scf
		ret
	
	; Data from 3A0A to 3A19 (16 bytes)
	.db $ED $5B $F1 $C7 $21 $00 $00 $AF $ED $52 $EB $CD $C3 $37 $AF $C9
	
_LABEL_3A1A_:	
		ld b, $04
		ld hl, $C430
		ld de, $0030
-:	
		add hl, de
		ld a, (hl)
		or a
		jr z, +
		djnz -
		xor a
		ret
	
+:	
		push hl
		pop iy
		ld a, (ix+18)
		and $23
		ld (iy+18), a
		set 0, (iy+25)
		ld a, (ix+12)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_3A88_
		add hl, de
		ld a, (ix+18)
		and $23
		ld (iy+18), a
		bit 0, a
		jr nz, +
		inc hl
		inc hl
+:	
		ld a, (ix+3)
		add a, (hl)
		ld (iy+3), a
		ld a, $00
		bit 7, (hl)
		jr z, +
		ld a, $FF
+:	
		adc a, (ix+4)
		ld (iy+4), a
		inc hl
		ld a, (ix+6)
		add a, (hl)
		ld (iy+6), a
		ld a, $00
		bit 7, (hl)
		jr z, +
		ld a, $FF
+:	
		adc a, (ix+7)
		ld (iy+7), a
		xor a
		ld (iy+2), a
		ld (iy+5), a
		scf
		ret
	
; Data from 3A88 to 3AE7 (96 bytes)	
_DATA_3A88_:	
	.db $00 $00 $00 $00 $F7 $E4 $F7 $1C $EF $ED $EF $13 $E5 $EC $E5 $14
	.db $00 $00 $00 $00 $00 $00 $00 $00 $E0 $E8 $E0 $18
	.dsb 12, $00
	.db $E4 $F0 $E4 $10 $E4 $F0 $E4 $10
	.dsb 24, $00
	.db $F0 $00 $F0
	.dsb 17, $00
	.db $EE $E8 $EE $18
	
_LABEL_3AE8_:	
		ld a, (ix+12)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		bit 5, (ix+18)
		jr nz, +
		inc hl
+:	
		ld a, (hl)
		ld (ix+1), a
		ret
	
_LABEL_3AFC_:	
		ld a, (_RAM_C635_)
		ld c, a
		ld a, (_RAM_C636_)
		and $60
		jr z, ++
		cp $40
		jr z, +
		cp $60
		ret nz
		ld a, $60
		and c
		jr z, ++++
		cp $60
		jr z, ++++
		ret
	
+:	
		ld a, $60
		and c
		jr z, +++
		cp $40
		jr z, +++
		ret
	
++:	
		ld a, $60
		and c
		jr z, +
		cp $40
		jr z, +++
		cp $60
		jr z, ++++
+:	
		xor a
		ret
	
+++:	
		ld a, $01
		ret
	
++++:	
		ld a, $02
		ret
	
_LABEL_3B37_:	
		push hl
		ld l, $00
		ld a, e
		sub (ix+3)
		jr nc, +
		neg
		set 0, l
+:	
		ld b, a
		ld a, d
		sub (ix+6)
		jr nc, +
		neg
		set 2, l
		jr ++
	
+:	
		set 3, l
++:	
		ld c, a
		push hl
		sub b
		push af
		jr c, +
		ld d, b
		jr ++
	
+:	
		ld d, c
		ld c, b
++:	
		srl c
		srl c
		ld b, $00
		ld e, b
		ld l, e
		ld h, l
		call _LABEL_C5C_
		pop af
		pop bc
		pop hl
		jr nc, +
		ex de, hl
+:	
		push hl
		xor a
		ld l, a
		ld h, a
		sbc hl, de
		ld (ix+8), l
		ld (ix+9), h
		pop hl
		bit 3, c
		jr nz, +
		xor a
		ld e, a
		ld d, a
		ex de, hl
		sbc hl, de
+:	
		ld (ix+10), l
		ld (ix+11), h
		ret
	
_LABEL_3B8E_:	
		ld a, (_RAM_C70F_)
		neg
		add a, (ix+6)
		add a, b
		and $F8
		rrca
		rrca
		ld e, a
		ld d, $00
		ld a, (ix+3)
		add a, c
		and $F8
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ld de, _RAM_C881_
		add hl, de
		ld a, (hl)
		ret
	
; 57th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3BB1_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		bit 4, (ix+18)
		ret nz
		ld a, (ix+16)
		dec a
		jp z, _LABEL_3C8C_
		dec a
		jp z, _LABEL_3D16_
		dec a
		jp z, _LABEL_3D40_
		ld a, (ix+7)
		cp $FF
		jp z, _LABEL_3C3C_
		cp $01
		jp z, _LABEL_3C77_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $03
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, ++
		bit 0, (ix+18)
		jr z, +
		ld (ix+1), $71
		ld a, (ix+18)
		or $21
		ld (ix+18), a
		ld (ix+10), $80
		ld (ix+11), $FE
		ret
	
+:	
		ld (ix+16), $01
		xor a
		ld (ix+28), a
		ld (ix+29), a
_LABEL_3C3C_:	
		ld (ix+1), $73
		ld a, (ix+18)
		and $DE
		ld (ix+18), a
		ld (ix+10), $80
		ld (ix+11), $01
		ret
	
++:	
		bit 0, (ix+18)
		jr nz, +
		ld (ix+1), $73
		ld a, (ix+18)
		and $DE
		ld (ix+18), a
		ld (ix+10), $80
		ld (ix+11), $01
		ret
	
+:	
		ld (ix+16), $01
		xor a
		ld (ix+28), a
		ld (ix+29), a
_LABEL_3C77_:	
		ld (ix+1), $71
		ld a, (ix+18)
		or $21
		ld (ix+18), a
		ld (ix+10), $80
		ld (ix+11), $FE
		ret
	
_LABEL_3C8C_:	
		ld hl, $0000
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $10
		jr c, _LABEL_3D06_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $03
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, ++++
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		bit 0, (ix+18)
		jr z, +++
		jr ++
	
+:	
		bit 0, (ix+18)
		jr nz, +++
++:	
		ld (ix+16), $03
		ld (ix+8), $00
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+++:	
		ld (ix+16), $02
		ld (ix+40), $1E
		jp _LABEL_27DA_
	
++++:	
		ld e, (ix+28)
		ld d, (ix+29)
		ld hl, $0180
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		cp $20
		ret c
_LABEL_3D06_:	
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+40), $0F
		ld (ix+16), $02
		ret
	
_LABEL_3D16_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld de, $7300
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld de, $7121
+:	
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		ret
	
_LABEL_3D40_:	
		ld hl, $0000
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $10
		jr c, +
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0180
		bit 0, (ix+18)
		jr z, +
		ld hl, $FE80
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+40), $0F
		ld (ix+16), $02
		ret
	
; 58th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3D83_:	
		ld (ix+18), $21
		ld (ix+1), $92
		jr +
	
; 59th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3D8D_:	
		ld (ix+18), $00
		ld (ix+1), $95
+:	
		ld (ix+12), $10
		ld (ix+19), $30
		ld (ix+0), $3C
		res 0, (ix+25)
		ret
	
; 60th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3DA6_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_3E9D_
		dec a
		jp z, _LABEL_3EED_
		dec a
		jp z, _LABEL_3F03_
		dec a
		jp z, _LABEL_3F1F_
		dec a
		jp z, _LABEL_3F6F_
		ld a, (ix+7)
		cp $FF
		jp z, _LABEL_3E8C_
		cp $01
		jp z, _LABEL_3E7B_
		ld a, (ix+6)
		cp $08
		jp c, _LABEL_3E8C_
		ld d, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
		ld d, $21
+:	
		ex af, af'
		ld a, (ix+18)
		and $DE
		or d
		ld (ix+18), a
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $01
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $01
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ex af, af'
		cp $18
		jr c, _LABEL_3E4D_
		cp $40
		jr c, +
		cp $44
		jr c, ++
+:	
		ld hl, $0140
		ld e, $96
		bit 5, (ix+18)
		jr z, +
		ld hl, $FEC0
		ld e, $93
+:	
		ld (ix+1), e
		ld (ix+10), l
		ld (ix+11), h
		ret
	
_LABEL_3E4D_:	
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+14), a
		ld (ix+13), a
		ld e, $94
		bit 5, (ix+18)
		jr nz, +
		ld e, $97
+:	
		ld (ix+1), e
		ret
	
++:	
		ld (ix+16), $04
		ld (ix+8), $00
		ld (ix+9), $FC
		jp _LABEL_27DA_
	
_LABEL_3E7B_:	
		ld (ix+10), $C0
		ld (ix+11), $FE
		ld (ix+1), $93
		ld (ix+18), $21
		ret
	
_LABEL_3E8C_:	
		ld (ix+10), $40
		ld (ix+11), $01
		ld (ix+1), $96
		ld (ix+18), $00
		ret
	
_LABEL_3E9D_:	
		ld e, $9A
		bit 5, (ix+18)
		jr nz, +
		ld e, $9B
+:	
		ld (ix+1), e
		ld hl, $0000
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $10
		jr c, +
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $FEC0
		bit 0, (ix+18)
		jr nz, +
		ld hl, $0140
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+40), $1E
		ld (ix+16), $02
		ret
	
_LABEL_3EED_:	
		ld e, $92
		bit 5, (ix+18)
		jr nz, +
		ld e, $95
+:	
		ld (ix+1), e
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
_LABEL_3F03_:	
		ld a, (ix+14)
		or a
		ret nz
		ld a, (ix+18)
		xor $01
		ld (ix+18), a
		ld (ix+8), $00
		ld (ix+9), $FB
		ld (ix+16), $01
		jp _LABEL_27DA_
	
_LABEL_3F1F_:	
		ld e, $9A
		bit 5, (ix+18)
		jr nz, +
		ld e, $9B
+:	
		ld (ix+1), e
		ld hl, $0000
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $08
		jr c, +
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $FF00
		bit 0, (ix+18)
		jr nz, +
		ld hl, $0100
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+40), $08
		ld (ix+16), $05
		ret
	
_LABEL_3F6F_:	
		ld e, $92
		bit 5, (ix+18)
		jr nz, +
		ld e, $95
+:	
		ld (ix+1), e
		dec (ix+40)
		ret nz
		jp _LABEL_3E4D_
	
; 61st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3F83_:	
		ld de, $6021
		ld hl, $FF40
		jr +
	
; 62nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3F8B_:	
		ld de, $5E00
		ld hl, $00C0
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+0), $19
		ld (ix+12), $05
		res 0, (ix+25)
		ret
	
; 63rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3FAA_:	
		ld de, $7021
		jr +
	
; 64th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3FAF_:	
		ld de, $7200
+:	
		ld (ix+1), d
		ld (ix+18), e
		ld (ix+12), $09
		ld (ix+19), $40
		ld (ix+0), $39
		res 0, (ix+25)
		ret
	
; 65th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3FC9_:	
		ld de, $88E3
		jr z, +
; 66th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3FCE_:	
		ld de, $8BC2
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0E
		ld (ix+19), $40
		ld (ix+0), $43
		res 0, (ix+25)
		ret
	
; 67th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_3FE8_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, $F8
		bit 0, (ix+18)
		jr nz, +
		ld a, $07
+:	
		add a, (ix+6)
		cp $08
		jp c, _LABEL_4100_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_40DC_
		dec a
		jp z, _LABEL_40F7_
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $03
		ld (ix+40), $08
		ret
	
+:	
		bit 4, (ix+18)
		jp nz, _LABEL_406A_
		ld hl, $0180
		ld de, $8C00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
		ld hl, $FE80
		ld de, $8921
+:	
		push af
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		pop af
		cp $20
		jr nc, ++
		ld (ix+16), $02
		ld d, $8A
		bit 5, e
		jr nz, +
		ld d, $8D
+:	
		ld (ix+1), d
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_406A_:	
		ld hl, $0180
		ld de, $8C00
		bit 0, (ix+18)
		jr z, ++
		ld hl, $FE80
		ld de, $8921
++:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		call _LABEL_3838_
		or a
		ret z
		call _LABEL_2848_
		call _LABEL_3AFC_
		dec a
		jr z, +
		dec a
		jp nz, _LABEL_4100_
		ld (ix+16), $00
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $80
		ld (ix+9), $FE
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
+:	
		ld (ix+16), $00
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $40
		ld (ix+9), $F9
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
_LABEL_40DC_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+16), $03
		ld (ix+40), $08
		ld e, $88
		bit 5, (ix+18)
		jr nz, +
		ld e, $8B
+:	
		ld (ix+1), e
		ret
	
_LABEL_40F7_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
_LABEL_4100_:	
		ld hl, $0180
		ld de, $8C00
		bit 0, (ix+18)
		jr nz, +
		ld hl, $FE80
		ld de, $8921
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		ret
	
; 68th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4125_:	
		ld de, $84E1
		jr z, +
; 69th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_412A_:	
		ld de, $86C0
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0D
		ld (ix+19), $40
		ld (ix+0), $46
		ld (ix+40), $08
		res 0, (ix+25)
		ret
	
; 70th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4148_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, ++
		dec (ix+40)
		ret nz
		ld d, $85
		bit 5, (ix+18)
		jr nz, +
		ld d, $87
+:	
		ld (ix+1), d
		ld (ix+8), $00
		ld (ix+9), $FC
		ld a, (ix+18)
		and $3F
		or $80
		ld (ix+18), a
		ld (ix+16), $01
		ret
	
++:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $FE80
		bit 5, (ix+18)
		jr nz, +
		ld hl, $0180
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld d, $84
		bit 5, (ix+18)
		jr nz, +
		ld d, $86
+:	
		ld (ix+1), d
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+40), $1E
		ld (ix+16), $00
		ret
	
; 71st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_41BE_:	
		ld de, $84E1
		jr z, +
; 72nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_41C3_:	
		ld de, $86C0
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0D
		ld (ix+19), $40
		ld (ix+0), $49
		ld (ix+8), $00
		ld (ix+9), $FC
		res 0, (ix+25)
		ret
	
; 73rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_41E5_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		cp $30
		ret nc
		ld (ix+0), $46
		ld (ix+40), $01
		ld (ix+16), $01
		ret
	
; 74th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4206_:	
		ld de, $84E1
		jr z, +
; 75th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_420B_:	
		ld de, $86C0
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0D
		ld (ix+19), $40
		ld (ix+0), $4C
		res 0, (ix+25)
		ret
	
; 76th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4225_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, ++
		dec a
		jp z, _LABEL_4275_
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		cp $30
		ret nc
		ld (ix+40), $01
		ld (ix+16), $01
		ret
	
++:	
		dec (ix+40)
		ret nz
		ld d, $85
		bit 5, (ix+18)
		jr nz, +
		ld d, $87
+:	
		ld (ix+1), d
		ld (ix+8), $00
		ld (ix+9), $FC
		ld a, (ix+18)
		and $3F
		or $80
		ld (ix+18), a
		ld (ix+16), $02
		ret
	
_LABEL_4275_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld d, $84
		bit 5, (ix+18)
		jr nz, +
		ld d, $87
+:	
		ld (ix+1), d
		ld (ix+40), $1E
		ld (ix+16), $01
		ret
	
; 77th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4293_:	
		ld de, $7B21
		jr z, +
; 78th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4298_:	
		ld de, $7E00
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0B
		ld (ix+19), $30
		ld (ix+0), $4F
		ret
	
; 79th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_42AE_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_434B_
		dec a
		jp z, _LABEL_4366_
		dec a
		jp z, _LABEL_436F_
		ld de, $7E00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld de, $7B21
+:	
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		bit 4, a
		jp nz, ++
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $58
		ld d, $7D
		bit 5, (ix+18)
		jr nz, +
		ld d, $80
+:	
		ld (ix+1), d
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ld (ix+16), $01
		ret
	
++:	
		call _LABEL_2848_
		call _LABEL_3AFC_
		dec a
		jr z, +
		dec a
		ret nz
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $80
		ld (ix+9), $FE
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
+:	
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FA
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
_LABEL_434B_:	
		ld a, (ix+14)
		or a
		ret nz
		ld d, $7B
		bit 5, (ix+18)
		jr nz, +
		ld d, $7E
+:	
		ld (ix+1), d
		ld (ix+40), $1E
		ld (ix+16), $02
		ret
	
_LABEL_4366_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
_LABEL_436F_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+40), $1E
		ld (ix+16), $02
		ret
	
; 80th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4380_:	
		ld de, $7B21
		jr z, +
; 81st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4385_:	
		ld de, $7E00
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0B
		ld (ix+19), $30
		ld (ix+0), $52
		ld (ix+41), $00
		ret
	
; 82nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_439F_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_448B_
		dec a
		jp z, _LABEL_44A6_
		dec a
		jp z, _LABEL_44B6_
		dec a
		jp z, _LABEL_4518_
		dec a
		jp z, _LABEL_4533_
		bit 4, (ix+18)
		jp nz, _LABEL_4443_
		ld a, (ix+41)
		cp $03
		jp z, _LABEL_4410_
		ld de, $7E00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld de, $7B21
+:	
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $58
		ld d, $7D
		bit 5, (ix+18)
		jr nz, +
		ld d, $80
+:	
		ld (ix+1), d
		inc (ix+41)
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $01
		ret
	
_LABEL_4410_:	
		ld (ix+16), $03
		ld (ix+28), $00
		ld (ix+29), $00
-:	
		ld de, $7F00
		ld hl, $0110
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		ld de, $7C21
		ld hl, $FEF0
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		ret
	
_LABEL_4443_:	
		call _LABEL_2848_
		call _LABEL_3AFC_
		dec a
		jr z, +
		dec a
		jr nz, -
		ld (ix+16), $05
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $80
		ld (ix+9), $FE
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
+:	
		ld (ix+16), $05
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FA
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
_LABEL_448B_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+16), $02
		ld (ix+40), $1E
		ld d, $7B
		bit 5, (ix+18)
		jr nz, +
		ld d, $7E
+:	
		ld (ix+1), d
		ret
	
_LABEL_44A6_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ret
	
_LABEL_44B6_:	
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $04
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $04
		ld (ix+8), $70
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld l, (ix+28)
		ld h, (ix+29)
		ld de, $0110
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		cp $18
		ret c
		ld d, $7B
		bit 5, (ix+18)
		jr nz, +
		ld d, $7E
+:	
		ld (ix+1), d
		ld (ix+40), $1E
		xor a
		ld (ix+41), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $02
		ret
	
_LABEL_4518_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0110
		bit 0, (ix+18)
		jr z, +
		ld hl, $FEF0
+:	
		ld (ix+10), l
		ld (ix+11), h
_LABEL_4533_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld d, $7B
		bit 5, (ix+18)
		jr nz, +
		ld d, $7E
+:	
		ld (ix+1), d
		ld (ix+40), $1E
		ld (ix+16), $02
		ret
	
; 83rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4551_:	
		ld de, $7B21
		jr z, +
; 84th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4556_:	
		ld de, $7E00
+:	
		ld (ix+18), e
		ld (ix+1), d
		ld (ix+12), $0B
		ld (ix+19), $30
		ld (ix+0), $55
		ret
	
; 85th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_456C_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_45E3_
		dec a
		jp z, _LABEL_4616_
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $01
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $01
		ld (ix+8), $70
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld de, $7F00
		ld hl, $0110
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
		ld de, $7C21
		ld hl, $FEF0
+:	
		cp $20
		jr nc, ++
		xor a
		bit 7, h
		jr z, +
		scf
+:	
		rr h
		rr l
++:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+1), d
		ld a, (ix+18)
		and $DE
		or e
		ld (ix+18), a
		ret
	
_LABEL_45E3_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, +
		ld hl, $0110
		bit 0, (ix+18)
		jr z, +
		ld hl, $FEF0
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $02
		ld (ix+40), $08
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_4616_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
; 86th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_461F_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_4671_
		dec a
		jp z, _LABEL_468C_
		ld (ix+18), $21
		ld (ix+1), $7B
		ld (ix+12), $0B
		ld (ix+19), $30
		ld (ix+16), $01
+:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		ret nc
		ld (ix+1), $7B
		bit 4, (ix+18)
		ret nz
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $58
		ld (ix+1), $7D
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+16), $02
		ret
	
_LABEL_4671_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+40), $1E
		ld (ix+16), $03
		ld d, $7B
		bit 5, (ix+18)
		jr nz, +
		ld d, $7E
+:	
		ld (ix+1), d
		ret
	
_LABEL_468C_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
; 87th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4695_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_4724_
		dec a
		jp z, _LABEL_4736_
		dec a
		jp z, _LABEL_473F_
		dec a
		jp z, _LABEL_4798_
		ld (ix+18), $21
		ld (ix+1), $7B
		ld (ix+12), $0B
		ld (ix+19), $30
		ld (ix+41), $00
		ld (ix+16), $01
+:	
		bit 4, (ix+18)
		ret nz
		ld a, (ix+41)
		cp $03
		jp z, +
		ld (ix+1), $7B
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		ret nc
		call _LABEL_3A1A_
		ret nc
		ld (iy+0), $58
		ld (ix+1), $7D
		inc (ix+41)
		xor a
		ld (ix+14), a
		ld (ix+13), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $02
		ret
	
+:	
		ld (ix+16), $04
		ld (ix+28), $00
		ld (ix+29), $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		ret nc
		ld (ix+10), $F0
		ld (ix+11), $FE
		ld (ix+1), $7C
		ret
	
_LABEL_4724_:	
		ld a, (ix+14)
		or a
		ret nz
		ld (ix+16), $03
		ld (ix+40), $1E
		ld (ix+1), $7B
		ret
	
_LABEL_4736_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $01
		ret
	
_LABEL_473F_:	
		call _LABEL_2848_
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $05
		xor a
		ld (ix+8), a
		ld (ix+9), a
		set 6, (ix+18)
		ret
	
+:	
		call _LABEL_3838_
		or a
		jr z, +
		ld (ix+16), $05
		ld (ix+8), $70
		ld (ix+9), $FB
		jp _LABEL_27DA_
	
+:	
		ld l, (ix+28)
		ld h, (ix+29)
		ld de, $0110
		add hl, de
		ld (ix+28), l
		ld (ix+29), h
		ld a, h
		cp $18
		ret c
		ld (ix+1), $7B
		ld (ix+40), $1E
		xor a
		ld (ix+41), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $03
		ret
	
_LABEL_4798_:	
		call _LABEL_3838_
		ld hl, $0010
		or a
		jr nz, +
		ld hl, $FEF0
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+1), $7B
		ld (ix+40), $1E
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $03
		ret
	
; 17th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_47C6_:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		ret z
		jr ++
	
+:	
		bit 1, (ix+18)
		ret nz
++:	
		ld a, $A8
		ld (_RAM_DE03_), a
		jp _LABEL_39BB_
	
; 18th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_47F7_:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jr nz, ++
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
++:	
		ld a, $FC
		bit 0, (ix+18)
		jr z, +
		neg
+:	
		add a, (ix+6)
		ld (ix+6), a
		ld (ix+0), $16
		ld (ix+16), $00
		ret
	
; 19th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4839_:	
		ld (ix+19), $30
		xor a
		ld (ix+40), a
		ld (ix+41), a
		ld (ix+28), $A0
		ld hl, $FF00
		ld e, $15
		ld a, (ix+17)
		cp $01
		jr z, +
		ld hl, $FE00
		ld e, $14
+:	
		ld (ix+0), e
		ld (ix+8), l
		ld (ix+9), h
		set 7, (ix+18)
		ret
	
; 20th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4867_:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		bit 6, (ix+20)
		jp nz, _LABEL_495E_
		call _LABEL_389D_
		bit 7, (ix+18)
		jp z, _LABEL_495E_
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jp nz, _LABEL_495E_
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
		jp _LABEL_495E_
	
; 21st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_48A5_:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		dec (ix+28)
		jp z, _LABEL_495E_
		bit 6, (ix+20)
		jp nz, _LABEL_495E_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_4907_
		call _LABEL_389D_
		bit 7, (ix+18)
		jp z, ++
		ld b, $FA
		bit 0, (ix+18)
		jr nz, +
		ld b, $05
+:	
		ld c, $00
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jr nz, _LABEL_495E_
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
		jr _LABEL_495E_
	
++:	
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+16), $01
		ld (ix+40), $08
		ret
	
_LABEL_4907_:	
		dec (ix+40)
		ret nz
		ld a, (ix+41)
		cp $03
		jr c, +
		ld a, $02
+:	
		add a, a
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld d, $00
		ld hl, _DATA_494C_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (ix+8), e
		ld (ix+9), d
		inc hl
		bit 0, (ix+18)
		jr z, +
		inc hl
		inc hl
+:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (ix+10), e
		ld (ix+11), d
		ld a, (ix+18)
		and $3F
		or $80
		ld (ix+18), a
		ld (ix+16), $00
		inc (ix+41)
		ret
	
; Data from 494C to 495D (18 bytes)	
_DATA_494C_:	
	.db $80 $FE $40 $01 $C0 $FE $00 $FF $20 $01 $E0 $FE $80 $FF $00 $01
	.db $00 $FF
	
_LABEL_495E_:	
		ld (ix+16), $00
		ld (ix+0), $16
		ret
	
; 22nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4967_:	
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, ++
		ld (ix+16), $01
		xor a
		ld (ix+13), a
		ld (ix+14), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+1), $3F
		ld c, $A8
		ld a, (ix+32)
		cp $03
		jr nz, +
		ld c, $AB
+:	
		ld c, a
		ld (_RAM_DE03_), a
		ret
	
++:	
		ld a, (ix+14)
		or a
		ret nz
		jp _LABEL_39BB_
	
; 40th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_499E_:	
		ld a, (ix+16)
		dec a
		jp z, ++
		ld (ix+12), $04
		ld e, $51
		ld hl, $0240
		bit 5, (ix+18)
		jr z, +
		ld e, $50
		ld hl, $FDC0
+:	
		ld (ix+1), e
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+16), $01
		ld a, $97
		ld (_RAM_DE03_), a
		ret
	
++:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jr nz, ++
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
++:	
		jp _LABEL_39BB_
	
; 49th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_49F8_:	
		ld a, (ix+16)
		dec a
		jp z, ++
		ld (ix+12), $16
		ld hl, $01C0
		bit 0, (ix+18)
		jr z, +
		ld hl, $FE40
+:	
		ld (ix+1), $7A
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+16), $01
		ld a, $98
		ld (_RAM_DE03_), a
		ret
	
++:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jr nz, ++
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
++:	
		jp _LABEL_39BB_
	
; 50th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4A4F_:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_4AAA_
		ld (ix+16), $01
		ld (ix+12), $16
		ld (ix+1), $7A
		ld hl, _DATA_4AEA_
		ld e, $FE
		bit 0, (ix+18)
		jr z, +
		ld e, $02
		ld hl, $4AF0
+:	
		ld a, (ix+6)
		add a, e
		ld (ix+6), a
		ld a, (ix+3)
		add a, $1C
		ld c, a
		ld a, (_RAM_C1C3_)
		cp c
		jr z, +
		inc hl
		inc hl
		jr nc, +
		inc hl
		inc hl
+:	
		ld a, (hl)
		ld (ix+10), a
		inc hl
		ld a, (hl)
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FD
		ld (ix+19), $20
		set 7, (ix+18)
		ld a, $98
		ld (_RAM_DE03_), a
		ret
	
_LABEL_4AAA_:	
		call _LABEL_37A9_
		call _LABEL_389D_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		bit 7, (ix+18)
		jp z, _LABEL_39BB_
		ld a, (ix+3)
		cp $D0
		jp nc, _LABEL_39BB_
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		ret z
		jp _LABEL_39BB_
	
	; Data from 4AE1 to 4AE1 (1 bytes)
	.db $C9
	
+:	
		bit 1, (ix+18)
		ret nz
		jp _LABEL_39BB_
	
; Data from 4AEA to 4AF5 (12 bytes)	
_DATA_4AEA_:	
	.db $00 $01 $F0 $00 $40 $01 $00 $FF $10 $FF $C0 $FE
	
; 88th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4AF6_:	
		ld a, (ix+16)
		dec a
		jp z, ++
		ld (ix+12), $15
		ld a, $B2
		ld (_RAM_DE03_), a
		ld hl, $0140
		bit 5, (ix+18)
		jr z, +
		ld hl, $FEC0
+:	
		ld (ix+1), $81
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+16), $01
		ret
	
++:	
		call _LABEL_37A9_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+6)
		cp $08
		ret c
		ld bc, $0000
		call _LABEL_3B8E_
		and $E0
		ret z
		and $80
		jr z, +
		bit 1, (ix+18)
		jr nz, ++
		ret
	
+:	
		bit 1, (ix+18)
		ret nz
++:	
		jp _LABEL_39BB_
	
; 107th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4B4D_:	
		call _LABEL_4BDF_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		ret z
		ld (ix+16), $01
		ld (ix+12), $1C
		ld (ix+8), $00
		ld (ix+9), $02
		ld (ix+10), $00
		ld (ix+11), $FE
		xor a
		ld (ix+40), a
		ld (ix+41), a
		ld (ix+1), $55
		ret
	
+:	
		ld a, (ix+3)
		cp $90
		ret c
		xor a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+16), $02
		ret
	
; 108th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4B96_:	
		call _LABEL_4BDF_
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		ret z
		ld (ix+16), $01
		ld (ix+12), $1C
		ld (ix+8), $00
		ld (ix+9), $03
		ld (ix+10), $00
		ld (ix+11), $FE
		xor a
		ld (ix+40), a
		ld (ix+41), a
		ld (ix+1), $55
		ret
	
+:	
		ld a, (ix+3)
		cp $A8
		ret c
		xor a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+16), $02
		ret
	
_LABEL_4BDF_:	
		xor a
		ld de, (_RAM_C7F1_)
		ld hl, $0000
		sbc hl, de
		ld e, (ix+10)
		ld d, (ix+11)
		add hl, de
		ex de, hl
		ld l, (ix+5)
		ld h, (ix+6)
		add hl, de
		ld (ix+5), l
		ld (ix+6), h
		bit 7, d
		jr nz, +
		jr nc, ++
		inc (ix+7)
		jr ++
	
+:	
		jr c, ++
		dec (ix+7)
++:	
		ld e, (ix+8)
		ld d, (ix+9)
		ld l, (ix+2)
		ld h, (ix+3)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		bit 7, d
		jr nz, +
		ret nc
		inc (ix+4)
		ret
	
+:	
		ret c
		dec (ix+4)
		ret
	
; 91st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4C2F_:	
		call _LABEL_3942_
		jr c, +
		call _LABEL_4BDF_
		ld a, (ix+16)
		dec a
		jp z, +
		ld (ix+16), $01
		ld (ix+1), $98
		ld (ix+12), $12
		ld (ix+18), $21
		ld (ix+10), $00
		ld (ix+11), $FB
		set 0, (ix+25)
		ld a, $AE
		ld (_RAM_DE03_), a
		ret
	
+:	
		ld a, (ix+7)
		cp $FF
		ret nz
		ld a, (ix+6)
		cp $F0
		ret nc
		jp _LABEL_39BB_
	
; 92nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4C6F_:	
		call _LABEL_3942_
		ret c
		call _LABEL_4BDF_
		ld a, (ix+16)
		dec a
		jp z, +
		call _LABEL_3838_
		or a
		ret z
		ld e, (ix+8)
		ld d, (ix+9)
		ld hl, $0000
		sbc hl, de
		ld (ix+8), l
		ld (ix+9), h
		ld (ix+16), $01
		ld a, $AE
		ld (_RAM_DE03_), a
		ret
	
+:	
		ld a, (ix+7)
		or a
		ret z
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $10
		ret c
		jp _LABEL_39BB_
	
; 93rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4CB1_:	
		call _LABEL_3942_
		ret c
		call _LABEL_4BDF_
		ld a, (ix+16)
		dec a
		jp z, +
		call _LABEL_3838_
		or a
		ret z
		ld e, (ix+8)
		ld d, (ix+9)
		ld hl, $0000
		sbc hl, de
		ld (ix+8), l
		ld (ix+9), h
		xor a
		ld e, (ix+10)
		ld d, (ix+11)
		ld hl, $0000
		sbc hl, de
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+16), $01
		ld a, $AE
		ld (_RAM_DE03_), a
		ret
	
+:	
		ld a, (ix+7)
		or a
		ret z
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $10
		ret c
		jp _LABEL_39BB_
	
; 94th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D05_:	
		ld hl, $FD40
		jr +
	
; 95th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D0A_:	
		ld hl, $02C0
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+8), $C0
		ld (ix+9), $03
		ld (ix+12), $12
		ld (ix+1), $98
		ld (ix+18), $21
		ld (ix+0), $5C
		set 0, (ix+25)
		ret
	
; 96th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D30_:	
		ld hl, $FD40
		jr +
	
; 97th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D35_:	
		ld hl, $02C0
+:	
		ld (ix+10), l
		ld (ix+11), h
		ld (ix+8), $C0
		ld (ix+9), $03
		ld (ix+12), $12
		ld (ix+1), $98
		ld (ix+18), $21
		ld (ix+0), $5D
		set 0, (ix+25)
		ret
	
; 99th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D5B_:	
		ld de, $4E21
		jr +
	
; 100th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D60_:	
		ld de, $4F00
+:	
		ld (ix+1), d
		ld (ix+18), e
		ld (ix+12), $11
		ld (ix+0), $65
		ld (ix+19), $30
		ret
	
; 110th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D76_:	
		ld (ix+1), $4D
		ld (ix+18), $C0
		ld (ix+12), $11
		ld (ix+0), $65
		ld (ix+19), $30
		set 0, (ix+25)
		ld (ix+16), $01
		ret
	
; 101st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4D93_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, +
		dec a
		jp z, _LABEL_4DF6_
		ld (ix+16), $01
		call _LABEL_4DFF_
		ld (ix+8), $00
		ld (ix+9), $FA
		set 7, (ix+18)
		ret
	
+:	
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		call _LABEL_389D_
		bit 6, (ix+18)
		jr z, +
		ld (ix+1), $4D
+:	
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $02
		ld de, $4E21
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr c, +
		ld de, $4F00
+:	
		ld (ix+1), d
		ld (ix+18), e
		ld (ix+40), $10
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ret
	
_LABEL_4DF6_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
_LABEL_4DFF_:	
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		push af
		jr nc, +
		neg
+:	
		ld d, a
		xor a
		ld e, a
		ld l, a
		ld h, a
		ld b, $00
		ld c, $82
		call _LABEL_C5C_
		pop af
		jr nc, +
		xor a
		ld l, a
		ld h, a
		sbc hl, de
		ex de, hl
+:	
		ld l, e
		ld h, d
		add hl, de
		ld (ix+10), l
		ld (ix+11), h
		ret
	
; 103rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4E29_:	
		ld de, $8E21
		jr +
	
; 104th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4E2E_:	
		ld de, $9000
+:	
		ld (ix+1), d
		ld (ix+18), e
		ld (ix+12), $0F
		ld (ix+0), $69
		ld (ix+19), $40
		ret
	
; 105th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4E44_:	
		call _LABEL_390A_
		ret c
		call _LABEL_37A9_
		ld a, (ix+16)
		dec a
		jp z, _LABEL_4EE5_
		dec a
		jp z, _LABEL_4F1B_
		dec a
		jp z, _LABEL_4F51_
		ld a, (ix+7)
		cp $FF
		jp z, _LABEL_4F48_
		cp $01
		jp z, _LABEL_4F48_
		bit 5, (ix+18)
		jp z, +
		set 0, (ix+18)
		ld a, (ix+6)
		cp $18
		jp c, _LABEL_4F24_
		ld (ix+1), $8F
		ld (ix+10), $E0
		ld (ix+11), $FE
		jp ++
	
+:	
		res 0, (ix+18)
		ld a, (ix+6)
		cp $E8
		jp nc, _LABEL_4F24_
		ld (ix+1), $91
		ld (ix+10), $20
		ld (ix+11), $01
++:	
		call _LABEL_2848_
		bit 4, (ix+18)
		jr z, +
		call _LABEL_3AFC_
		dec a
		jp z, _LABEL_4F80_
		dec a
		jp z, _LABEL_4F62_
+:	
		bit 7, (ix+18)
		jp z, +
		set 6, (ix+18)
		ld (ix+8), $00
		ld (ix+9), $00
		ld (ix+16), $01
		ret
	
+:	
		call _LABEL_3838_
		or a
		ret z
		dec a
		jp z, _LABEL_4F24_
		ld (ix+8), $00
		ld (ix+9), $FB
		ld (ix+16), $01
		jp _LABEL_27DA_
	
_LABEL_4EE5_:	
		call _LABEL_3838_
		ld hl, $0000
		or a
		jp nz, +
		ld hl, $FEE0
		bit 5, (ix+18)
		jp nz, +
		ld hl, $0078
+:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+40), $08
		ld (ix+10), $00
		ld (ix+11), $00
		ld (ix+16), $02
		ret
	
_LABEL_4F1B_:	
		dec (ix+40)
		ret nz
		ld (ix+16), $00
		ret
	
_LABEL_4F24_:	
		ld a, (ix+18)
		xor $21
		ld (ix+18), a
		ld e, $8E
		bit 5, a
		jr nz, +
		ld e, $90
+:	
		ld (ix+1), e
		ld (ix+10), $00
		ld (ix+11), $00
		ld (ix+40), $08
		ld (ix+16), $02
		ret
	
_LABEL_4F48_:	
		ld (ix+10), $00
		ld (ix+11), $00
		ret
	
_LABEL_4F51_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+40), $08
		ld (ix+16), $02
		ret
	
_LABEL_4F62_:	
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $80
		ld (ix+9), $FE
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
_LABEL_4F80_:	
		ld (ix+16), $03
		xor a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+8), $00
		ld (ix+9), $FA
		ld a, (ix+18)
		and $3F
		xor $82
		ld (ix+18), a
		ret
	
; 89th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4F9E_:	
		bit 7, (ix+20)
		jp nz, +
		ld a, (ix+16)
		dec a
		jp z, ++
		ld (ix+16), $01
		ld (ix+12), $18
		ld (ix+1), $43
		call _LABEL_2848_
		jp _LABEL_27DA_
	
+:	
		ld a, (ix+32)
		and $3F
		ld e, a
		ld d, $00
		ld hl, _RAM_C093_
		add hl, de
		set 6, (hl)
		ld (ix+0), $5A
		ld (ix+16), $00
		ld a, $9D
		ld (_RAM_DE03_), a
		ret
	
++:	
		call _LABEL_390A_
		ret c
		jp _LABEL_37A9_
	
; 90th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_4FE1_:	
		ld a, (ix+16)
		dec a
		jp z, +
		ld (ix+16), $01
		ld (ix+1), $44
		ld hl, $0400
		ld e, $08
		ld d, $E4
		jp _LABEL_3B37_
	
+:	
		ld l, (ix+8)
		ld h, (ix+9)
		ld e, (ix+2)
		ld d, (ix+3)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld l, (ix+10)
		ld h, (ix+11)
		ld e, (ix+5)
		ld d, (ix+6)
		add hl, de
		ld (ix+5), l
		ld (ix+6), h
		ld a, (ix+3)
		cp $10
		ret nc
		ld a, (ix+6)
		cp $DC
		ret c
		cp $EC
		ret nc
		ld a, (ix+32)
		and $0F
		ld e, a
		ld d, $00
		ld hl, _RAM_C093_
		add hl, de
		ld a, (hl)
		and $0F
		set 7, a
		ld (_RAM_C653_), a
		jp _LABEL_39BB_
	
_LABEL_5046_:	
		ld hl, _RAM_C653_
		bit 7, (hl)
		ret z
		ld a, (_RAM_C079_)
		res 7, a
		ld (_RAM_C079_), a
		bit 6, (hl)
		jr nz, +
		set 6, (hl)
		ld a, $09
		ld (_RAM_FFFF_), a
		ld a, $30
		ld (_RAM_C654_), a
		ld a, (hl)
		and $0F
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_511E_ - 2
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, $2660
		ld bc, $0140
		call _LABEL_1025_
		ld hl, $3834
		ld de, _DATA_512E_
		ld bc, $0205
		jp _LABEL_105A_
	
+:	
		inc hl
		dec (hl)
		ret nz
		ld hl, _RAM_C079_
		set 7, (hl)
		ld hl, $3834
		ld de, _DATA_5142_
		ld bc, $0205
		call _LABEL_105A_
		ld hl, _RAM_C653_
		ld a, (hl)
		ld (hl), $00
		and $0F
		cp $01
		jp z, _LABEL_5119_
		cp $02
		jp z, _LABEL_5113_
		cp $03
		jp z, _LABEL_50F3_
		cp $04
		jp z, ++++
		cp $05
		jp z, +++
		cp $06
		jp z, ++
		cp $07
		jp z, +
		ld a, $9C
		ld (_RAM_DE03_), a
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $02
		jp _LABEL_B307_
	
+:	
		ld a, $9B
		ld (_RAM_DE03_), a
		ld a, (_RAM_C06D_)
		ld (_RAM_C06C_), a
		ld a, $00
		jp _LABEL_B314_
	
++:	
		ld a, $03
		jr +++++
	
+++:	
		ld a, $02
		jr +++++
	
++++:	
		ld a, $01
+++++:	
		ld (_RAM_C0A6_), a
		ret
	
_LABEL_50F3_:	
		ld a, (_RAM_C0A7_)
		inc a
		cp $05
		ret nc
		ld (_RAM_C0A7_), a
		ld e, a
		ld d, $00
		ld hl, _DATA_510E_
		add hl, de
		ld a, (hl)
		ld (_RAM_C0A8_), a
		ld a, $9A
		ld (_RAM_DE03_), a
		ret
	
; Data from 510E to 5112 (5 bytes)	
_DATA_510E_:	
	.db $01 $03 $03 $01 $02
	
_LABEL_5113_:	
		ld hl, _RAM_C000_
		set 7, (hl)
		ret
	
_LABEL_5119_:	
		ld a, $01
		jp _LABEL_B28B_
	
; Pointer Table from 511E to 512D (8 entries, indexed by _RAM_C653_)	
_DATA_511E_:	
	.dw _DATA_26932_ _DATA_26432_ _DATA_26072_ _DATA_26572_ _DATA_267F2_ _DATA_266B2_ _DATA_262F2_ _DATA_261B2_
	
; Data from 512E to 513C (15 bytes)	
_DATA_512E_:	
	.db $33 $09 $34 $09 $35 $09 $36 $09 $37 $09 $38 $09 $39 $09 $3A
	
; 1st entry of Pointer Table from 3B243 (indexed by unknown)	
; Data from 513D to 5141 (5 bytes)	
_DATA_513D_:	
	.db $09 $3B $09 $3C $09
	
; Data from 5142 to 5150 (15 bytes)	
_DATA_5142_:	
	.db $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
	
; 2nd entry of Pointer Table from 3B243 (indexed by unknown)	
; Data from 5151 to 5155 (5 bytes)	
_DATA_5151_:	
	.db $09 $00 $09 $00 $09
	
_LABEL_5156_:	
		ld hl, _RAM_C65C_
		bit 7, (hl)
		ret z
		ld a, $0F
		and (hl)
		jp z, +
		ld hl, (_RAM_C65D_)
		dec hl
		ld (_RAM_C65D_), hl
		ld a, h
		or l
		jp z, _LABEL_51AF_
		ret
	
+:	
		inc hl
		dec (hl)
		ret p
		ld (hl), $01
		inc hl
		inc hl
		ld a, (hl)
		cp $06
		jp nc, _LABEL_51AF_
		inc (hl)
		cp $05
		jp nz, +
		ld hl, _RAM_D500_
		ld de, _RAM_C049_
		ld bc, $0020
		ldir
		jp ++
	
+:	
		ld e, a
		ld d, $00
		ld hl, _DATA_51B5_
		add hl, de
		ld a, (hl)
		ld hl, _RAM_C049_
		ld de, _RAM_C049_ + 1
		ld bc, $001F
		ld (hl), a
		ldir
++:	
		ld hl, $0000
		ld de, _RAM_C049_
		ld b, $20
		jp _LABEL_1077_
	
_LABEL_51AF_:	
		ld hl, _RAM_C65C_
		ld (hl), $00
		ret
	
; Data from 51B5 to 51BA (6 bytes)	
_DATA_51B5_:	
	.db $3B $3B $2B $1B $0B $00
	
; 23rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_51BB_:	
		call _LABEL_4BDF_
		ld a, (_RAM_C65C_)
		bit 7, a
		jp z, _LABEL_528D_
		bit 7, (ix+9)
		jp nz, +++
		ld bc, $000C
		call _LABEL_3B8E_
		and $E0
		jr z, +
		and $80
		jr z, ++
+:	
		set 0, (ix+18)
		ld a, (ix+3)
		cp $B0
		jp c, +++++
++:	
		res 0, (ix+18)
		jp ++++
	
+++:	
		ld bc, $00F4
		call _LABEL_3B8E_
		and $E0
		jr z, +
		and $80
		jr z, ++
+:	
		res 0, (ix+18)
		ld a, (ix+3)
		cp $20
		jp nc, +++++
++:	
		set 0, (ix+18)
++++:	
		xor a
		ld hl, $0000
		ld e, (ix+8)
		ld d, (ix+9)
		sbc hl, de
		ld a, r
		add a, l
		ld (ix+8), a
		ld (ix+9), h
+++++:	
		bit 7, (ix+11)
		jp nz, +++
		ld bc, $0C00
		call _LABEL_3B8E_
		and $E0
		jr z, +
		and $80
		jr z, ++
+:	
		set 1, (ix+18)
		ld a, (ix+6)
		cp $F0
		jp c, +++++
++:	
		res 1, (ix+18)
		jp ++++
	
+++:	
		ld bc, $F400
		call _LABEL_3B8E_
		and $E0
		jr z, +
		and $80
		jr z, ++
+:	
		res 1, (ix+18)
		ld a, (ix+6)
		cp $18
		jp nc, +++++
++:	
		set 1, (ix+18)
++++:	
		xor a
		ld hl, $0000
		ld e, (ix+10)
		ld d, (ix+11)
		sbc hl, de
		ld a, r
		add a, l
		ld (ix+10), a
		ld (ix+11), h
+++++:	
		ld a, (ix+18)
		and $0F
		ld e, a
		ld d, $00
		ld hl, _DATA_5297_
		add hl, de
		ld a, (hl)
		ld (ix+1), a
		ret
	
_LABEL_528D_:	
		ld a, (ix+4)
		or (ix+7)
		ret z
		jp _LABEL_39BB_
	
; Data from 5297 to 529A (4 bytes)	
_DATA_5297_:	
	.db $49 $4C $4A $4B
	
; 24th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_529B_:	
		ld (ix+1), $48
		call _LABEL_4BDF_
		ld e, (ix+10)
		ld d, (ix+11)
		ld hl, $0020
		add hl, de
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+7)
		cp $02
		jp z, _LABEL_39BB_
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ret c
		xor a
		ld (ix+8), a
		ld (ix+9), a
		ret
	
; 102nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_52C9_:	
		ld (ix+13), $01
		res 7, (ix+25)
		ld a, (ix+26)
		inc a
		ld (ix+26), a
		cp $20
		jp nc, _LABEL_39BB_
		and $01
		jp nz, +
		set 7, (ix+25)
+:	
		xor a
		ld (ix+10), a
		ld (ix+11), a
		call _LABEL_390A_
		ret c
		jp _LABEL_37A9_
	
; 111th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_52F4_:	
		ld hl, $0000
		ld a, (ix+7)
		or a
		jr nz, ++
		ld a, (ix+6)
		bit 7, a
		jr z, +
		neg
+:	
		cp $09
		jr c, ++
		call _LABEL_3838_
		ld hl, $0000
		or a
		jr nz, ++
		ld hl, $0100
		bit 5, (ix+20)
		jr nz, ++
		ld hl, $FF00
++:	
		ld (ix+10), l
		ld (ix+11), h
		call _LABEL_37A9_
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		xor a
		ld (ix+10), a
		ld (ix+11), a
		res 7, (ix+20)
		ld a, (ix+27)
		ld (ix+0), a
		ld (ix+16), $00
		ret
	
_LABEL_5346_:	
		ld hl, _RAM_C078_
		bit 7, (hl)
		ret z
		res 7, (hl)
		ld hl, $3814
		ld de, _RAM_C040_
		ld b, $03
_LABEL_5356_:	
		call _LABEL_101C_
		ld hl, $0001
-:	
		ld a, (de)
		and $F0
		jr z, +
		ld h, l
+:	
		rrca
		rrca
		rrca
		rrca
		add a, h
		call ++
		ld a, (de)
		and $0F
		jr z, +
		ld h, l
+:	
		add a, h
		call ++
		inc de
		djnz -
		ld a, l
++:	
		out (Port_VDPData), a
		push af
		pop af
		ld a, $09
		out (Port_VDPData), a
		ret
	
_LABEL_5381_:	
		ld hl, _RAM_C06B_
		bit 7, (hl)
		ret z
		res 7, (hl)
		ld a, (_RAM_C06E_)
		ld b, a
		ld hl, $384A
		call _LABEL_101C_
		ld hl, _RAM_C06F_
-:	
		ld a, (hl)
		out (Port_VDPData), a
		push af
		pop af
		ld a, $09
		out (Port_VDPData), a
		inc hl
		djnz -
		ret
	
_LABEL_53A3_:	
		ld hl, _RAM_C079_
		bit 7, (hl)
		ret z
		res 7, (hl)
		ld hl, $3838
		call _LABEL_101C_
		ld a, (_RAM_C07A_)
		push af
		or a
		jr z, ++
		cp $04
		jr c, +
		ld a, $04
+:	
		ld b, a
-:	
		ld a, $2C
		out (Port_VDPData), a
		push af
		pop af
		ld a, $09
		out (Port_VDPData), a
		djnz -
++:	
		pop af
		sub $04
		ret nc
		neg
		ld b, a
-:	
		ld a, $00
		out (Port_VDPData), a
		push af
		pop af
		ld a, $09
		out (Port_VDPData), a
		djnz -
		ret
	
_LABEL_53DF_:	
		ld hl, _RAM_C07C_
		bit 7, (hl)
		ret z
		bit 6, (hl)
		jr nz, +
		res 7, (hl)
		ld de, _RAM_C082_
		ld hl, $3824
		push hl
		call _LABEL_101C_
		ld b, $08
-:	
		push af
		pop af
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, $09
		out (Port_VDPData), a
		djnz -
		ld bc, $0040
		pop hl
		add hl, bc
		call _LABEL_101C_
		ld b, $08
-:	
		push af
		pop af
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, $09
		out (Port_VDPData), a
		djnz -
		ret
	
+:	
		ld hl, _RAM_C64A_
		dec (hl)
		ret p
		ld (hl), $10
		inc hl
		ld a, (hl)
		cpl
		ld (hl), a
		ld e, $01
		or a
		jr nz, +
		ld e, $09
+:	
		ld hl, $3824
		call _LABEL_101C_
		ld b, $02
-:	
		push af
		pop af
		in a, (Port_VDPData)
		ex (sp), hl
		ex (sp), hl
		ld a, e
		out (Port_VDPData), a
		djnz -
		ld hl, $3864
		call _LABEL_101C_
		ld b, $02
-:	
		push af
		pop af
		in a, (Port_VDPData)
		ex (sp), hl
		ex (sp), hl
		ld a, e
		out (Port_VDPData), a
		djnz -
		ret
	
; Jump Table from 5453 to 557A (148 entries, indexed by unknown)	
_DATA_5453_:	
	.dw _LABEL_1B3C_ _LABEL_1E09_ _LABEL_1E62_ _LABEL_1EDF_ _LABEL_1F9A_ _LABEL_1FCF_ _LABEL_2024_ _LABEL_20CA_
	.dw _LABEL_2344_ _LABEL_238D_ _LABEL_2408_ _LABEL_2454_ _LABEL_2596_ _LABEL_25FD_ _LABEL_2615_ _LABEL_2662_
	.dw _LABEL_47C6_ _LABEL_47F7_ _LABEL_4839_ _LABEL_4867_ _LABEL_48A5_ _LABEL_4967_ _LABEL_51BB_ _LABEL_529B_
	.dw _LABEL_2A4B_ _LABEL_2B41_ _LABEL_2BD1_ _LABEL_2C3F_ _LABEL_2CCD_ _LABEL_2CE0_ _LABEL_2CF3_ _LABEL_2D06_
	.dw _LABEL_2D19_ _LABEL_2D2C_ _LABEL_2D3F_ _LABEL_2D52_ _LABEL_2D65_ _LABEL_2D78_ _LABEL_2D8B_ _LABEL_499E_
	.dw _LABEL_2DA0_ _LABEL_2E70_ _LABEL_2F51_ _LABEL_307E_ _LABEL_31C7_ _LABEL_320E_ _LABEL_3255_ _LABEL_3376_
	.dw _LABEL_49F8_ _LABEL_4A4F_ _LABEL_3495_ _LABEL_349B_ _LABEL_34B8_ _LABEL_3620_ _LABEL_3626_ _LABEL_3643_
	.dw _LABEL_3BB1_ _LABEL_3D83_ _LABEL_3D8D_ _LABEL_3DA6_ _LABEL_3F83_ _LABEL_3F8B_ _LABEL_3FAA_ _LABEL_3FAF_
	.dw _LABEL_3FC9_ _LABEL_3FCE_ _LABEL_3FE8_ _LABEL_4125_ _LABEL_412A_ _LABEL_4148_ _LABEL_41BE_ _LABEL_41C3_
	.dw _LABEL_41E5_ _LABEL_4206_ _LABEL_420B_ _LABEL_4225_ _LABEL_4293_ _LABEL_4298_ _LABEL_42AE_ _LABEL_4380_
	.dw _LABEL_4385_ _LABEL_439F_ _LABEL_4551_ _LABEL_4556_ _LABEL_456C_ _LABEL_461F_ _LABEL_4695_ _LABEL_4AF6_
	.dw _LABEL_4F9E_ _LABEL_4FE1_ _LABEL_4C2F_ _LABEL_4C6F_ _LABEL_4CB1_ _LABEL_4D05_ _LABEL_4D0A_ _LABEL_4D30_
	.dw _LABEL_4D35_ _LABEL_39BB_ _LABEL_4D5B_ _LABEL_4D60_ _LABEL_4D93_ _LABEL_52C9_ _LABEL_4E29_ _LABEL_4E2E_
	.dw _LABEL_4E44_ _LABEL_7861_ _LABEL_4B4D_ _LABEL_4B96_ _LABEL_7888_ _LABEL_4D76_ _LABEL_52F4_ _LABEL_5C65_
	.dw _LABEL_5D28_ _LABEL_5D28_ _LABEL_5D4B_ _LABEL_5D4B_ _LABEL_5D4B_ _LABEL_5DA1_ _LABEL_5DA1_ _LABEL_5E62_
	.dw _LABEL_5E62_ _LABEL_5EC5_ _LABEL_5F6C_ _LABEL_5FB8_ _LABEL_6052_ _LABEL_6052_ _LABEL_6052_ _LABEL_6052_
	.dw _LABEL_6052_ _LABEL_6052_ _LABEL_6052_ _LABEL_63CC_ _LABEL_64E5_ _LABEL_6767_ _LABEL_67B1_ _LABEL_697C_
	.dw _LABEL_6AC6_ _LABEL_6B4B_ _LABEL_6CD4_ _LABEL_6D90_ _LABEL_6F0B_ _LABEL_6F53_ _LABEL_7202_ _LABEL_72A0_
	.dw _LABEL_74E2_ _LABEL_7BE8_ _LABEL_7B28_ _LABEL_7BB5_
	
_LABEL_557B_:	
		ld a, $04
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C700_)
		and $0C
		cp $0C
		jp z, _LABEL_56DE_
		ld hl, (_RAM_C659_)
		ld a, (_RAM_C71E_)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (_RAM_C63E_)
		ld l, a
		ld h, $00
		add hl, hl
		ld c, l
		ld b, h
		add hl, hl
		add hl, bc
		add hl, de
_LABEL_55A4_:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C63C_), hl
		ld a, (_RAM_C700_)
		bit 5, a
		jp z, +
		xor a
		ld hl, (_RAM_C713_)
		ld bc, $0008
		add hl, bc
		ret c
		xor a
		sbc hl, de
		jp z, ++
		ret nc
		ld hl, _RAM_C63E_
		dec (hl)
		ld hl, (_RAM_C63C_)
		ld de, _RAM_FFF8_
		add hl, de
		jp _LABEL_55A4_
	
+:	
		xor a
		ld hl, (_RAM_C720_)
		inc h
		sbc hl, de
		ret z
		ret c
		xor a
		ld hl, (_RAM_C713_)
		inc h
		sbc hl, de
		jp z, ++
		ret c
		ld hl, _RAM_C63E_
		inc (hl)
		ld hl, (_RAM_C63C_)
		ld de, $0004
		add hl, de
		jp _LABEL_55A4_
	
++:	
		ld hl, (_RAM_C63C_)
		ld c, (hl)
		inc hl
		ld a, (hl)
		or a
		ret z
		ld (_RAM_C63C_), hl
		ld a, $C0
		and c
		jp z, _LABEL_565A_
		and $80
		jp nz, +
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $C093
		add hl, de
		bit 6, (hl)
		ret nz
		bit 4, (hl)
		ret nz
		set 4, (hl)
		exx
		ld hl, $C1C0
		ld de, $0030
		ld b, $03
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_5681_
		djnz -
		exx
		res 4, (hl)
		ret
	
+:	
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $C093
		add hl, de
		bit 7, (hl)
		ret nz
		bit 6, (hl)
		ret nz
		bit 5, (hl)
		ret nz
		set 5, (hl)
		exx
		ld hl, $C3D0
		ld de, $0030
		ld b, $02
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_5681_
		djnz -
		exx
		res 5, (hl)
		ret
	
_LABEL_565A_:	
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $D000
		add hl, de
		bit 6, (hl)
		ret nz
		bit 7, (hl)
		ret nz
		set 7, (hl)
		exx
		ld hl, $C2E0
		ld de, $0030
		ld b, $05
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_5681_
		djnz -
		exx
		res 7, (hl)
		ret
	
_LABEL_5681_:	
		push hl
		pop iy
		exx
		ld (iy+32), c
		jr +
	
	; Data from 568A to 568C (3 bytes)
	.db $E5 $FD $E1
	
+:	
		ld hl, (_RAM_C63C_)
		ld a, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (iy+0), a
		ld (iy+3), c
		ld a, (_RAM_C700_)
		bit 5, a
		jp z, +
		ld a, $00
		cp b
		jp z, ++
		ld b, $08
		jp ++
	
+:	
		ld a, $FF
		cp b
		jp nz, ++
		ld b, $FF
++:	
		ld (iy+6), b
		xor a
		ld (iy+2), a
		ld (iy+4), a
		ld (iy+5), a
		ld (iy+7), a
		ret
	
_LABEL_56C7_:	
		ld a, $04
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C092_)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_12570_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (_RAM_C659_), de
_LABEL_56DE_:	
		ld hl, (_RAM_C713_)
		ld (_RAM_C655_), hl
		inc h
		ld (_RAM_C657_), hl
		ld hl, (_RAM_C659_)
		ld a, (_RAM_C71E_)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (_RAM_C63E_)
		ld l, a
		ld h, $00
		add hl, hl
		ld c, l
		ld b, h
		add hl, hl
		add hl, bc
		add hl, de
_LABEL_5702_:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C63C_), hl
		ld a, (_RAM_C700_)
		bit 5, a
		jp z, +
		xor a
		ld hl, (_RAM_C655_)
		sbc hl, de
		jp z, ++
		jp c, ++
		ld hl, _RAM_C63E_
		inc (hl)
		ld hl, (_RAM_C63C_)
		ld de, $0004
		add hl, de
		jp _LABEL_5702_
	
+:	
		xor a
		ld hl, (_RAM_C655_)
		sbc hl, de
		jp z, ++
		jp nc, ++
		ld hl, _RAM_C63E_
		dec (hl)
		ld hl, (_RAM_C63C_)
		ld de, _RAM_FFF8_
		add hl, de
		jp _LABEL_5702_
	
++:	
		ld hl, (_RAM_C63C_)
		dec hl
		dec hl
--:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C63C_), hl
		xor a
		ld hl, (_RAM_C655_)
		sbc hl, de
		jp z, ++
		jp nc, +
		ld (_RAM_C655_), de
		ld hl, (_RAM_C657_)
		xor a
		sbc hl, de
		ret c
		jp ++
	
+:	
		ld hl, (_RAM_C63C_)
		inc hl
		inc hl
		inc hl
		inc hl
		jp --
	
-:	
		ld hl, (_RAM_C63C_)
		inc hl
		inc hl
		inc hl
		jp --
	
++:	
		ld hl, -	; Overriding return address
		push hl
		ld hl, (_RAM_C63C_)
		ld a, (hl)
		ex af, af'
		inc hl
		ld (_RAM_C63C_), hl
		ld a, (hl)
		or a
		ret z
		inc hl
		ld c, (hl)
		ld b, $00
		ld hl, (_RAM_C71C_)
		ld de, (_RAM_C728_)
		xor a
		sbc hl, de
		jp nc, +
		ex de, hl
		ld hl, $0000
		xor a
		sbc hl, de
		add hl, bc
		jp ++
	
+:	
		xor a
		sbc hl, bc
		ex de, hl
		ld hl, $0000
		xor a
		sbc hl, de
++:	
		ld a, h
		or a
		ret nz
		ld a, (_RAM_C71C_)
		and $07
		add a, l
		cp $18
		ret c
		cp $B9
		ret nc
		ld (_RAM_C65B_), a
		ex af, af'
		ld c, a
		ld a, $C0
		and c
		jp z, _LABEL_5824_
		and $80
		jp nz, +
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $C093
		add hl, de
		bit 6, (hl)
		ret nz
		bit 4, (hl)
		ret nz
		set 4, (hl)
		exx
		ld hl, $C1C0
		ld de, $0030
		ld b, $03
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_584B_
		djnz -
		exx
		res 4, (hl)
		ret
	
+:	
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $C093
		add hl, de
		bit 7, (hl)
		ret nz
		bit 6, (hl)
		ret nz
		bit 5, (hl)
		ret nz
		set 5, (hl)
		exx
		ld hl, $C3D0
		ld de, $0030
		ld b, $02
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_584B_
		djnz -
		exx
		res 5, (hl)
		ret
	
_LABEL_5824_:	
		ld a, $3F
		and c
		ld e, a
		ld d, $00
		ld hl, $D000
		add hl, de
		bit 6, (hl)
		ret nz
		bit 7, (hl)
		ret nz
		set 7, (hl)
		exx
		ld hl, $C2E0
		ld de, $0030
		ld b, $05
-:	
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_584B_
		djnz -
		exx
		res 7, (hl)
		ret
	
_LABEL_584B_:	
		push hl
		pop iy
		exx
		ld (iy+32), c
		jr +
	
	; Data from 5854 to 5856 (3 bytes)
	.db $E5 $FD $E1
	
+:	
		ld hl, (_RAM_C63C_)
		ld a, (hl)
		inc hl
		inc hl
		ld b, (hl)
		ld (iy+0), a
		ld hl, (_RAM_C713_)
		ld de, (_RAM_C655_)
		xor a
		sbc hl, de
		ld a, b
		sub l
		ld (iy+6), a
		ld a, (_RAM_C65B_)
		ld (iy+3), a
		xor a
		ld (iy+2), a
		ld (iy+4), a
		ld (iy+5), a
		ld (iy+7), a
		ld hl, _RAM_C63E_
		inc (hl)
		ret
	
; Data from 5888 to 58A8 (33 bytes)	
_DATA_5888_:	
	.db $20 $10 $2B $3F $06 $0A $01 $05 $2F $2A $30 $38 $0B $04 $08 $0C
	.db $20 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $38 $03 $08 $04
	.db $0E
	
; Data from 58A9 to 58B7 (15 bytes)	
_DATA_58A9_:	
	.db $00 $3F $05 $2A $20 $2F $2B $06 $0A $01 $38 $03 $19 $08 $0C
	
; Data from 58B8 to 58C3 (12 bytes)	
_DATA_58B8_:	
	.db $00 $00 $00 $10 $00 $00 $0F $90 $9D $0D $90 $B9
	
_LABEL_58C4_:	
		di
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $1CFF
		ld (hl), $00
		ldir
		ld hl, _DATA_58B8_
		ld de, _RAM_C71C_
		ld bc, $000C
		ldir
		ld de, $3800
		ld hl, _RAM_C880_
		ld bc, $0080
		call _LABEL_1148_
		call _LABEL_C05_
		ld a, $56
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		ld a, $0C
		ld (_RAM_FFFF_), a
		ld de, $2800
		ld hl, _DATA_331C4_
		call _LABEL_10AB_
		ld a, $09
		ld (_RAM_FFFF_), a
		ld de, $06C0
		ld hl, _DATA_24000_
		call _LABEL_10AB_
		ld hl, $3880
		ld (_RAM_C702_), hl
		ld hl, $C900
		ld (_RAM_C704_), hl
		call _LABEL_16AF_
		xor a
		ld (_RAM_C700_), a
		ei
		ld hl, _DATA_91B6_
		ld de, _DATA_8AE2_
		ld (_RAM_C0A0_), hl
		ld (_RAM_C09E_), de
		ld hl, _DATA_5888_
		call _LABEL_11A7_
		ld hl, $6000
		ld (_RAM_C712_), hl
		xor a
		ld (_RAM_C714_), a
		ld (_RAM_C603_), a
		ld a, $10
		ld (_RAM_C61F_), a
_LABEL_5949_:	
		call _LABEL_BD4_
		ld hl, _RAM_C61F_
		dec (hl)
		jp nz, _LABEL_5949_
		ld (hl), $04
		ld bc, $0000
		inc hl
		ld a, (hl)
		cp $1B
		ret nc
		cp $0B
		jr c, +
		sub $0B
		add a, a
		ld c, a
		ld a, $0B
+:	
		ld d, a
		ld e, $00
		srl d
		rr e
		srl d
		rr e
		push de
		push bc
		ex de, hl
		add hl, bc
		ex de, hl
		ld hl, $3ADE
		xor a
		sbc hl, de
		ld (_RAM_C622_), hl
		ld hl, $CB5E
		xor a
		sbc hl, de
		ld (_RAM_C624_), hl
		ld hl, $3B20
		add hl, de
		ld (_RAM_C62E_), hl
		ld hl, $CBA0
		add hl, de
		ld (_RAM_C630_), hl
		ld a, (_RAM_C620_)
		ld e, a
		ld d, $00
		inc a
		ld (_RAM_C620_), a
		ld hl, _DATA_5A69_
		add hl, de
		ld a, (hl)
		ld (_RAM_C621_), a
		pop bc
		pop hl
		xor a
		sbc hl, bc
		ex de, hl
		ld hl, $3AE0
		xor a
		sbc hl, de
		ld (_RAM_C62A_), hl
		ld hl, $CB60
		xor a
		sbc hl, de
		ld (_RAM_C62C_), hl
		ld hl, $3B1E
		add hl, de
		ld (_RAM_C626_), hl
		ld hl, $CB9E
		add hl, de
		ld (_RAM_C628_), hl
		ld hl, _RAM_C61E_
		set 7, (hl)
		jp _LABEL_5949_
	
_LABEL_59D7_:	
		ld hl, _RAM_C61E_
		bit 7, (hl)
		ret z
		res 7, (hl)
		bit 6, (hl)
		jp nz, _LABEL_5A84_
		ld hl, (_RAM_C622_)
		ld de, (_RAM_C624_)
		ld a, (_RAM_C621_)
		ld b, a
-:	
		push bc
		call _LABEL_101C_
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, (de)
		out (Port_VDPData), a
		ld bc, _DATA_40_ - 2
		add hl, bc
		dec de
		ex de, hl
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ld hl, (_RAM_C626_)
		ld de, (_RAM_C628_)
		ld a, (_RAM_C621_)
		ld b, a
-:	
		push bc
		call _LABEL_101C_
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, (de)
		out (Port_VDPData), a
		ld bc, _RAM_FFBE_
		add hl, bc
		dec de
		ex de, hl
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ld hl, (_RAM_C62A_)
		ld de, (_RAM_C62C_)
		ld a, (_RAM_C621_)
		ld b, a
-:	
		push bc
		call _LABEL_101C_
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, (de)
		out (Port_VDPData), a
		ld bc, _DATA_42_
		add hl, bc
		dec de
		ex de, hl
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ld hl, (_RAM_C62E_)
		ld de, (_RAM_C630_)
		ld a, (_RAM_C621_)
		ld b, a
-:	
		push bc
		call _LABEL_101C_
		ld a, (de)
		out (Port_VDPData), a
		inc de
		ld a, (de)
		out (Port_VDPData), a
		ld bc, _RAM_FFC2_
		add hl, bc
		dec de
		ex de, hl
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ret
	
; Data from 5A69 to 5A83 (27 bytes)	
_DATA_5A69_:	
	.db $01 $02 $03 $04 $05 $06 $07 $08 $09 $0A $0B $0C $0C $0C $0C $0C
	.db $0B $0A $09 $08 $07 $06 $05 $04 $03 $02 $01
	
_LABEL_5A84_:	
		ld a, $0C
		ld (_RAM_FFFF_), a
		ld de, _DATA_33717_
		bit 0, (hl)
		jr z, +
		ld de, _DATA_3373B_
+:	
		ld bc, $0606
		ld hl, $3CA0
--:	
		push bc
		push hl
		call _LABEL_101C_
-:	
		ld a, (de)
		out (Port_VDPData), a
		inc de
		nop
		ld a, $11
		out (Port_VDPData), a
		dec c
		jr nz, -
		pop hl
		ld bc, $0040
		add hl, bc
		pop bc
		djnz --
		ret
	
_LABEL_5AB3_:	
		ld a, (_RAM_C603_)
		ld c, a
		ld hl, _RAM_C61F_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		jr z, +
		ld a, $04
		cp (hl)
		jr nz, ++
		ld hl, _RAM_C61E_
		ld (hl), $C0
		jr ++
	
+:	
		ld a, (_RAM_C66D_)
		and a
		ret nz
		ld a, c
		and $30
		jr z, ++
		ld a, (_RAM_C604_)
		and $30
		jr nz, ++
		push bc
		call _LABEL_5C2F_
		pop bc
		ld hl, _RAM_C61E_
		ld (hl), $C1
		inc hl
		ld (hl), $0E
++:	
		ld a, c
		and $0C
		ret z
		ld de, $0200
		bit 3, a
		jp nz, ++
		xor a
		ld hl, $0000
		sbc hl, de
		ex de, hl
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $FF
		jr c, +
		xor a
		ex de, hl
		sbc hl, de
		ex de, hl
		ld a, $00
		ld hl, $0000
+:	
		ld (_RAM_C712_), hl
		ld (_RAM_C714_), a
		jp +++
	
++:	
		ld hl, (_RAM_C712_)
		ld a, (_RAM_C714_)
		add hl, de
		adc a, $00
		ld (_RAM_C712_), hl
		ld (_RAM_C714_), a
		ld l, h
		ld h, a
		ld bc, $00B8
		xor a
		sbc hl, bc
		jr c, +++
		ld (_RAM_C713_), bc
		ld a, (_RAM_C712_)
		ld h, l
		ld l, a
		ex de, hl
		xor a
		sbc hl, de
		ex de, hl
		ld (_RAM_C712_), a
+++:	
		ld a, d
		or e
		ret z
		ld hl, (_RAM_C639_)
		add hl, de
		ld (_RAM_C639_), hl
		ret
	
_LABEL_5B51_:	
		ld a, (_RAM_C66D_)
		and a
		ret nz
		ld hl, _RAM_C66C_
		bit 7, (hl)
		jp nz, +
		set 7, (hl)
		ld a, $03
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C0A9_)
		inc a
		ld (_RAM_C0A9_), a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_FB40_ - 2
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		ld (_RAM_C66E_), a
		ld (_RAM_C676_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C66F_), a
		ld (_RAM_C670_), a
		inc hl
		ld (_RAM_C671_), hl
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $82
		ld (_RAM_DE03_), a
		ret
	
+:	
		bit 0, (hl)
		ret nz
		bit 4, (hl)
		jp nz, _LABEL_5C14_
		bit 5, (hl)
		jp nz, _LABEL_5BFA_
		bit 6, (hl)
		jr nz, +
		ld a, (_RAM_C670_)
		dec a
		ld (_RAM_C670_), a
		ret nz
+:	
		push hl
		ld b, $08
		ld de, $0030
		ld hl, _RAM_C2E0_
-:	
		xor a
		or (hl)
		jr z, +
		add hl, de
		djnz -
		pop hl
		set 6, (hl)
		ret
	
+:	
		ex de, hl
		pop hl
		res 6, (hl)
		ld a, (_RAM_C66E_)
		dec a
		ld (_RAM_C66E_), a
		jr z, +
		ld a, (_RAM_C66F_)
		ld (_RAM_C670_), a
		ld a, $03
		ld (_RAM_FFFF_), a
		ld hl, (_RAM_C671_)
		ld a, (hl)
		inc hl
		ld (_RAM_C671_), hl
		ex de, hl
		ld (hl), $70
		ld de, $0026
		add hl, de
		ld (hl), a
		ld a, $02
		ld (_RAM_FFFF_), a
		ret
	
+:	
		set 5, (hl)
		ld hl, $0100
		ld (_RAM_C673_), hl
		ret
	
_LABEL_5BFA_:	
		ex de, hl
		ld hl, (_RAM_C673_)
		dec hl
		ld (_RAM_C673_), hl
		ld a, l
		or h
		ret nz
		ex de, hl
		set 4, (hl)
		ld hl, $0080
		ld (_RAM_C673_), hl
		ld a, $B5
		ld (_RAM_DE03_), a
		ret
	
_LABEL_5C14_:	
		ex de, hl
		ld hl, (_RAM_C673_)
		dec hl
		ld (_RAM_C673_), hl
		ld a, l
		or h
		ret nz
		ex de, hl
		ld a, (_RAM_C676_)
		and a
		ld a, $04
		jr nz, +
		ld a, $08
+:	
		or (hl)
		ld (hl), a
		set 0, (hl)
		ret
	
_LABEL_5C2F_:	
		ld a, (_RAM_C66D_)
		and a
		ret nz
		ld hl, _RAM_C675_
		bit 7, (hl)
		jp nz, +
		set 7, (hl)
+:	
		ld b, $04
		ld de, $0030
		ld hl, _RAM_C460_
-:	
		xor a
		or (hl)
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		ld (hl), $7A
		ld de, $0005
		add hl, de
		ex de, hl
		ld hl, (_RAM_C712_)
		ex de, hl
		ld (hl), e
		inc hl
		ld a, $20
		add a, d
		ld (hl), a
		ld a, $91
		ld (_RAM_DE03_), a
		ret
	
; 112th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5C65_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld a, $03
		ld (_RAM_FFFF_), a
		ld a, (ix+38)
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_FD2A_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		ld (ix+33), a
		inc hl
		ld a, (hl)
		ld (ix+7), a
		inc hl
		ld a, (hl)
		ld (ix+5), a
		inc hl
		ld a, (hl)
		ld (ix+6), a
		inc hl
		ld (ix+34), l
		ld (ix+35), h
		ld a, $02
		ld (_RAM_FFFF_), a
+:	
		ld (ix+16), $00
		ld a, (ix+33)
		sub $01
		ld (ix+33), a
		jp c, _LABEL_39BB_
		ld a, $03
		ld (_RAM_FFFF_), a
		ld l, (ix+34)
		ld h, (ix+35)
		ld a, (hl)
		ld (ix+0), a
		inc hl
		ld a, (hl)
		ld (ix+36), a
		inc hl
		ld a, (hl)
		ld (ix+37), a
		inc hl
		ld (ix+34), l
		ld (ix+35), h
		ld a, $02
		ld (_RAM_FFFF_), a
		ret
	
_LABEL_5CDA_:	
		ld hl, _DATA_5CED_
_LABEL_5CDD_:	
		ld a, (ix+0)
		and $7F
		sub $71
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ld (ix+1), a
		ret
	
; Data from 5CED to 5CF5 (9 bytes)	
_DATA_5CED_:	
	.db $8F $90 $94 $95 $9B $92 $93 $97 $97
	
; Data from 5CF6 to 5CFA (5 bytes)	
_DATA_5CF6_:	
	.db $91 $91 $96 $96 $9C
	
_LABEL_5CFB_:	
		ld a, $03
		ld (_RAM_FFFF_), a
		ld a, (ix+0)
		sub $71
		add a, a
		add a, a
		add a, a
		add a, a
		add a, a
		and $E0
		ld e, a
		ld a, (_RAM_C0A9_)
		add a, a
		or e
		ld e, a
		ld d, $00
		ld hl, _DATA_FC88_
		add hl, de
		ld a, (hl)
		ld (ix+10), a
		inc hl
		ld a, (hl)
		ld (ix+11), a
		ld a, $02
		ld (_RAM_FFFF_), a
		ret
	
; 113th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5D28_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld (ix+16), $01
		ld (ix+4), $00
		ld (ix+2), $00
		ld (ix+3), $30
-:	
		call _LABEL_5CFB_
		jp _LABEL_5CDA_
	
; 115th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5D4B_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld (ix+16), $01
		ld (ix+4), $00
		ld (ix+2), $00
		ld (ix+3), $60
		jp -
	
+:	
		bit 7, (ix+20)
		jr z, +
		ld hl, _DATA_5CF6_
		call _LABEL_5CDD_
		ld (ix+0), $7B
		ret
	
+:	
		ld a, (ix+7)
		or a
		jp nz, _LABEL_39BB_
		ld l, (ix+5)
		ld h, (ix+6)
		ld e, (ix+36)
		ld d, (ix+37)
		bit 7, (ix+11)
		jr nz, +
		ex de, hl
+:	
		or a
		sbc hl, de
		jp nc, _LABEL_37A9_
		ld (ix+0), $70
		ret
	
; 118th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5DA1_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld (ix+16), $01
		ld (ix+39), $20
		jp _LABEL_5CDA_
	
+:	
		ld a, (ix+16)
		ld hl, _DATA_5DC2_ - 2
		jp _LABEL_116_
	
; Jump Table from 5DC2 to 5DC9 (4 entries, indexed by unknown)	
_DATA_5DC2_:	
	.dw _LABEL_5DCA_ _LABEL_5DF2_ _LABEL_5E00_ _LABEL_5E4A_
	
; 1st entry of Jump Table from 5DC2 (indexed by unknown)	
_LABEL_5DCA_:	
		bit 7, (ix+20)
		jr z, +
		ld (ix+1), $91
		ld (ix+0), $7B
		ret
	
+:	
		dec (ix+39)
		ret nz
		ld (ix+16), $02
		ld (ix+1), $91
		ld (ix+8), $00
		ld (ix+9), $FA
		ld (ix+19), $00
		ret
	
; 2nd entry of Jump Table from 5DC2 (indexed by unknown)	
_LABEL_5DF2_:	
		bit 7, (ix+9)
		jr nz, _LABEL_5E00_
		ld (ix+16), $02
		ld (ix+1), $98
; 3rd entry of Jump Table from 5DC2 (indexed by unknown)	
_LABEL_5E00_:	
		ld a, (ix+19)
		ld b, $20
		add a, b
		ld (ix+19), a
		ld e, a
		ld d, $00
		ld l, (ix+8)
		ld h, (ix+9)
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		ld l, (ix+2)
		ld h, (ix+3)
		ld e, (ix+8)
		ld d, (ix+9)
		add hl, de
		ld de, $0180
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld l, (ix+2)
		ld h, (ix+3)
		ld de, $6000
		or a
		sbc hl, de
		ret c
		ld (ix+16), $04
		ld (ix+1), $97
		ld (ix+39), $18
		ret
	
; 4th entry of Jump Table from 5DC2 (indexed by unknown)	
_LABEL_5E4A_:	
		bit 7, (ix+20)
		jr z, +
		ld (ix+1), $96
		ld (ix+0), $7B
		ret
	
+:	
		dec (ix+39)
		ret nz
		ld (ix+0), $70
		ret
	
; 120th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5E62_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld (ix+16), $01
		ld (ix+39), $18
		jp _LABEL_5CDA_
	
+:	
		ld a, (ix+16)
		ld hl, _DATA_5E83_ - 2
		jp _LABEL_116_
	
; Jump Table from 5E83 to 5E86 (2 entries, indexed by unknown)	
_DATA_5E83_:	
	.dw _LABEL_5E87_ _LABEL_5EAB_
	
; 1st entry of Jump Table from 5E83 (indexed by unknown)	
_LABEL_5E87_:	
		bit 7, (ix+20)
		jr z, +
		ld (ix+1), $96
		ld (ix+0), $7B
		ret
	
+:	
		dec (ix+39)
		ret nz
		ld (ix+16), $02
		ld (ix+1), $98
		ld (ix+8), $00
		ld (ix+9), $FA
		ret
	
; 2nd entry of Jump Table from 5E83 (indexed by unknown)	
_LABEL_5EAB_:	
		ld l, (ix+2)
		ld h, (ix+3)
		ld e, (ix+8)
		ld d, (ix+9)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ret c
		ld a, $01
		ld (_RAM_C66D_), a
		ret
	
; 122nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5EC5_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, (ix+16)
		and a
		jr nz, +
		ld (ix+16), $01
		ld (ix+4), $00
		ld (ix+2), $00
		ld (ix+3), $A0
		ld (ix+8), $00
		ld (ix+9), $FA
		ld (ix+1), $9D
		ld (ix+34), $03
		ret
	
+:	
		bit 7, (ix+20)
		jp nz, _LABEL_39BB_
		dec (ix+34)
		jr nz, _LABEL_5F3D_
		ld (ix+34), $03
		inc (ix+33)
		ld a, (ix+3)
		ld b, $00
		cp $90
		jr nc, +
		ld b, $01
		cp $80
		jr nc, +
		ld b, $02
		cp $70
		jr nc, +
		ld b, $03
		cp $60
		jr nc, +
		ld b, $04
		cp $50
		jr nc, +
		ld b, $05
+:	
		ld a, b
		add a, a
		ld e, a
		ld a, (ix+33)
		and $01
		add a, e
		ld e, a
		ld d, $00
		ld hl, _DATA_5F60_
		add hl, de
		ld a, (hl)
		ld (ix+1), a
_LABEL_5F3D_:	
		ld l, (ix+2)
		ld h, (ix+3)
		ld e, (ix+8)
		ld d, (ix+9)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld l, (ix+2)
		ld h, (ix+3)
		ld de, $2000
		or a
		sbc hl, de
		ret nc
		jp _LABEL_39BB_
	
; Data from 5F60 to 5F6B (12 bytes)	
_DATA_5F60_:	
	.db $9D $9E $9F $A0 $A1 $A2 $A3 $A4 $A5 $A6 $A7 $A8
	
; 123rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5F6C_:	
		ld a, (_RAM_C66D_)
		and a
		jp nz, _LABEL_39BB_
		ld a, $FF
		cp (ix+16)
		jr z, +
		ld (ix+16), a
		xor a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+10), a
		ld (ix+11), a
		ld (ix+34), $10
		ld hl, _RAM_C676_
		dec (hl)
		ld hl, _RAM_C677_
		inc (hl)
		ld a, $99
		ld (_RAM_DE03_), a
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $02
		call _LABEL_B28B_
		ld a, (ix+38)
		cp $2E
		ret nz
		ld a, $01
		ld (_RAM_C678_), a
		ret
	
+:	
		dec (ix+34)
		ret nz
		jp _LABEL_39BB_
	
; 124th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_5FB8_:	
		ld hl, _RAM_C66C_
		bit 0, (hl)
		ret nz
		ld a, (ix+16)
		and a
		jr nz, +
		set 1, (hl)
		ld (ix+16), $01
		ld (ix+1), $A9
		ld (ix+4), $00
		ld (ix+2), $00
		ld (ix+3), $20
		ld (ix+7), $00
		ld (ix+5), $00
		ld (ix+6), $80
		ld (ix+8), $00
		ld (ix+9), $0A
		ld a, $A6
		ld (_RAM_DE03_), a
		ret
	
+:	
		ld a, (ix+16)
		ld hl, _DATA_5FFD_ - 2
		jp _LABEL_116_
	
; Jump Table from 5FFD to 6000 (2 entries, indexed by unknown)	
_DATA_5FFD_:	
	.dw _LABEL_6001_ _LABEL_602F_
	
; 1st entry of Jump Table from 5FFD (indexed by unknown)	
_LABEL_6001_:	
		ld l, (ix+2)
		ld h, (ix+3)
		ld e, (ix+8)
		ld d, (ix+9)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		ld de, $C000
		sbc hl, de
		ret c
		ld (ix+16), $02
		ld (ix+8), $00
		ld (ix+9), $00
		ld (ix+33), $2C
		ld (ix+34), $01
		ret
	
; 2nd entry of Jump Table from 5FFD (indexed by unknown)	
_LABEL_602F_:	
		ld l, (ix+33)
		ld h, (ix+34)
		dec hl
		ld (ix+33), l
		ld (ix+34), h
		ld a, l
		or h
		ret nz
		ld hl, _RAM_C66C_
		set 0, (hl)
		ld a, $06
		ld (_RAM_FFFF_), a
		call _LABEL_18AA7_
		ld a, $02
		ld (_RAM_FFFF_), a
		ret
	
; 125th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6052_:	
		ld hl, _RAM_C66D_
		ld a, (hl)
		and a
		ret z
		cp $02
		jr z, _LABEL_60A7_
		cp $03
		ret z
		bit 7, a
		jr nz, +
		set 7, (hl)
		ld hl, $0000
		ld (_RAM_C670_), hl
		ld hl, _DATA_26F54_
		ld (_RAM_C672_), hl
		ret
	
+:	
		ld hl, (_RAM_C672_)
		ex de, hl
		ld hl, (_RAM_C670_)
		ld bc, $0100
		ld a, $09
		ld (_RAM_FFFF_), a
		call _LABEL_1025_
		ld a, $02
		ld (_RAM_FFFF_), a
		ld hl, (_RAM_C670_)
		ld de, $0100
		add hl, de
		ld (_RAM_C670_), hl
		ld hl, (_RAM_C672_)
		add hl, de
		ld (_RAM_C672_), hl
		ld de, $BE54
		or a
		sbc hl, de
		ret c
		ld a, $02
		ld (_RAM_C66D_), a
		ret
	
_LABEL_60A7_:	
		ld hl, _DATA_58A9_
		ld de, _RAM_C05A_
		ld bc, $000F
		ldir
		ld a, $80
		ld (_RAM_C048_), a
		ld a, $03
		ld (_RAM_C66D_), a
		ld a, $7C
		ld (_RAM_C310_), a
		ret
	
_LABEL_60C2_:	
		call _LABEL_11E9_
		di
		call _LABEL_C05_
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, $26
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		ld hl, _RAM_C100_
		ld de, _RAM_C100_ + 1
		ld bc, $041F
		ld (hl), $00
		ldir
		ld a, $02
		ld (_RAM_FFFF_), a
		ld de, $2000
		ld hl, _DATA_8258_
		call _LABEL_10AB_
		ld hl, _DATA_636C_
		ld de, $27E0
		call _LABEL_10AB_
		ld de, $2800
		ld hl, _DATA_8395_
		call _LABEL_10AB_
		ld a, (_RAM_C66C_)
		bit 3, a
		jp nz, _LABEL_61C7_
		bit 2, a
		jr nz, +
		ld de, _DATA_6294_
		ld hl, $3A56
		ld bc, $0014
		call _LABEL_1025_
		jp _LABEL_6258_
	
+:	
		ld de, _DATA_62A8_
		ld hl, $3910
		ld bc, $0022
		call _LABEL_1025_
		ld de, _DATA_62CA_
		ld hl, $3A52
		ld bc, $000E
		call _LABEL_1025_
		ld de, _DATA_62D8_
		ld hl, $3B8A
		ld bc, $002E
		call _LABEL_1025_
		ld de, _DATA_6342_
		ld hl, $3808
		ld bc, $000A
		call _LABEL_1025_
		ld a, (_RAM_C677_)
		ld b, $00
-:	
		sub $0A
		jr nc, +
		add a, $0A
		jr ++
	
+:	
		inc b
		jr -
	
++:	
		push af
		ld a, b
		ld de, $3B9C
		call _LABEL_61B8_
		pop af
		ld de, $3B9E
		call _LABEL_61B8_
		ld a, (_RAM_C677_)
		ld b, a
		add a, a
		add a, a
		add a, b
		ld b, a
		push af
-:	
		push bc
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $03
		call _LABEL_B28B_
		pop bc
		djnz -
		pop af
		ld b, $00
-:	
		sub $0A
		jr nc, +
		add a, $0A
		jr ++
	
+:	
		inc b
		jr -
	
++:	
		push af
		ld a, b
		sub $0A
		jr nc, +
		add a, $0A
		jr ++
	
+:	
		push af
		ld a, $01
		ld de, $3BA6
		call _LABEL_61B8_
		pop af
++:	
		ld de, $3BA8
		call _LABEL_61B8_
		pop af
		ld de, $3BAA
		call _LABEL_61B8_
		jr _LABEL_620C_
	
_LABEL_61B8_:	
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_637E_
		add hl, bc
		ex de, hl
		ld bc, $0002
		jp _LABEL_1025_
	
_LABEL_61C7_:	
		ld de, _DATA_6306_
		ld hl, $391A
		ld bc, $000E
		call _LABEL_1025_
		ld de, _DATA_62CA_
		ld hl, $3A52
		ld bc, $000E
		call _LABEL_1025_
		ld de, _DATA_6314_
		ld hl, $3B88
		ld bc, $002E
		call _LABEL_1025_
		ld de, _DATA_6342_
		ld hl, $3808
		ld bc, $000A
		call _LABEL_1025_
		ld b, $05
-:	
		push bc
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, $01
		call _LABEL_B28B_
		pop bc
		djnz -
		ld a, $85
		ld (_RAM_DE03_), a
_LABEL_620C_:	
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, (_RAM_C0A9_)
		ld e, a
		ld d, $00
		ld hl, _DATA_6391_
		add hl, de
		ld a, (hl)
		push af
		call _LABEL_B369_
		pop af
		push af
		ld hl, _DATA_6394_
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ex de, hl
		ld hl, $3A24
		ld bc, $0202
		call _LABEL_105A_
		pop af
		ld e, a
		ld a, (_RAM_C678_)
		and a
		jr z, _LABEL_6258_
		ld a, e
		push af
		call _LABEL_B369_
		pop af
		ld hl, _DATA_6394_
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ex de, hl
		ld hl, $3A2A
		ld bc, $0202
		call _LABEL_105A_
_LABEL_6258_:	
		ld hl, $0100
		ld (_RAM_C673_), hl
		ei
		ld hl, _DATA_634C_
		ex de, hl
		ld a, $02
		call _LABEL_1232_
-:	
		call _LABEL_BD4_
		ld a, (_RAM_C603_)
		and $30
		jr z, +
		ld b, a
		ld a, (_RAM_C604_)
		and $30
		cp b
		jr nz, ++
+:	
		ld hl, (_RAM_C673_)
		dec hl
		ld (_RAM_C673_), hl
		ld a, l
		or h
		jr nz, -
++:	
		ld a, $02
		call _LABEL_1252_
		ld a, $06
		out (Port_VDPAddress), a
		ld a, $80
		out (Port_VDPAddress), a
		ret
	
; Data from 6294 to 62A7 (20 bytes)	
_DATA_6294_:	
	.db $23 $01 $19 $01 $1F $01 $00 $01 $10 $01 $0B $01 $13 $01 $16 $01
	.db $0F $01 $0E $01
	
; Data from 62A8 to 62C9 (34 bytes)	
_DATA_62A8_:	
	.db $0C $01 $19 $01 $18 $01 $1F $01 $1D $01 $00 $01 $1D $01 $1E $01
	.db $0B $01 $11 $01 $0F $01 $00 $01 $0D $01 $16 $01 $0F $01 $0B $01
	.db $1C $01
	
; Data from 62CA to 62D7 (14 bytes)	
_DATA_62CA_:	
	.db $23 $01 $19 $01 $1F $01 $00 $01 $11 $01 $0F $01 $1E $01
	
; Data from 62D8 to 6305 (46 bytes)	
_DATA_62D8_:	
	.db $06 $01 $01 $01 $01 $01 $1A $01 $1E $01 $1D $01 $28 $01 $22 $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $3F $01 $00 $01 $00 $01 $00 $01
	.db $00 $01 $01 $01 $01 $01 $1A $01 $1E $01 $1D $01 $28 $01
	
; Data from 6306 to 6313 (14 bytes)	
_DATA_6306_:	
	.db $1A $01 $0F $01 $1C $01 $10 $01 $0F $01 $0D $01 $1E $01
	
; Data from 6314 to 6336 (35 bytes)	
_DATA_6314_:	
	.db $1D $01 $1A $01 $0F $01 $0D $01 $13 $01 $0B $01 $16 $01 $00 $01
	.db $0C $01 $19 $01 $18 $01 $1F $01 $1D $01 $00 $01 $06 $01 $01 $01
	.db $01 $01 $01
	
; 1st entry of Pointer Table from 2B285 (indexed by unknown)	
; Data from 6337 to 6341 (11 bytes)	
_DATA_6337_:	
	.db $01 $01 $01 $1A $01 $1E $01 $1D $01 $28 $01
	
; Data from 6342 to 634B (10 bytes)	
_DATA_6342_:	
	.db $1D $01 $0D $01 $19 $01 $1C $01 $0F $01
	
; Data from 634C to 636B (32 bytes)	
_DATA_634C_:	
	.db $00 $3F $3F $00 $2F $0F $0A $06 $01 $07 $36 $20 $30 $3A $3C $00
	.db $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $38 $03 $08 $04 $0E
	
; Data from 636C to 637D (18 bytes)	
_DATA_636C_:	
	.db $02 $00 $83 $7C $00 $7C $03 $00 $00 $08 $00 $00 $08 $00 $00 $08
	.db $00 $00
	
; Data from 637E to 6390 (19 bytes)	
_DATA_637E_:	
	.db $01 $01 $02 $01 $03 $01 $04 $01 $05 $01 $06 $01 $07 $01 $08 $01
	.db $09 $01 $0A
	
; Data from 6391 to 6393 (3 bytes)	
_DATA_6391_:	
	.db $01 $01 $03
	
; Data from 6394 to 63CB (56 bytes)	
_DATA_6394_:	
	.db $05 $04 $02 $06 $05 $01 $03 $04 $4D $09 $4E $09 $4F $09 $50 $09
	.db $49 $09 $4A $09 $4B $09 $4C $09 $51 $09 $52 $09 $53 $09 $54 $09
	.db $55 $09 $56 $09 $57 $09 $58 $09 $59 $09 $5A $09 $5B $09 $5C $09
	.db $5D $09 $5E $09 $5F $09 $60 $09
	
; 132nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_63CC_:	
		call _LABEL_4BDF_
		ld a, (ix+16)
		ld hl, _DATA_64DD_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 64DD (indexed by unknown)	
_LABEL_63D9_:	
		ld (ix+12), $1A
		ld (ix+3), $A8
		ld (ix+6), $C8
		ld (ix+16), $01
		ld (ix+1), $50
		ld (ix+21), $5E
		ld (ix+36), $10
		ld (ix+37), $00
		ret
	
; 2nd entry of Jump Table from 64DD (indexed by unknown)	
_LABEL_63FA_:	
		bit 7, (ix+20)
		jr z, ++
		res 7, (ix+20)
		call _LABEL_7BE2_
		inc (ix+42)
		ld a, (_RAM_C011_)
		or a
		ld c, $08
		jr z, +
		ld c, $05
+:	
		ld a, (ix+42)
		cp c
		jr c, ++
		ld (ix+16), $02
		ld (ix+36), $08
		ld (ix+37), $00
		ld hl, _RAM_C340_
		ld de, _RAM_C340_ + 1
		ld bc, $011F
		ld (hl), $00
		ldir
		ld a, $A2
		ld (_RAM_DE03_), a
		ld c, $06
		jp _LABEL_7BD9_
	
++:	
		dec (ix+36)
		jr nz, +++
		inc (ix+37)
		ld a, (ix+37)
		and $01
		jr z, +
		ld hl, _RAM_C340_
		ld de, $0090
		ld b, $02
-:	
		ld a, (hl)
		or a
		jr z, ++
		add hl, de
		djnz -
+:	
		ld (ix+1), $50
		ld (ix+36), $20
		ret
	
++:	
		ld (ix+1), $51
		ld (ix+36), $10
		ret
	
+++:	
		ld a, (ix+1)
		cp $51
		ret nz
		ld a, (ix+36)
		cp $08
		ret nz
		ld hl, _RAM_C340_
		ld de, $0030
		ld b, $02
-:	
		ld a, (hl)
		or a
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		ld (hl), $85
		ld de, $0028
		add hl, de
		dec b
		ld (hl), b
		ret
	
; 3rd entry of Jump Table from 64DD (indexed by unknown)	
_LABEL_6492_:	
		dec (ix+36)
		ret nz
		ld (ix+36), $10
		ld (ix+1), $00
		call +
		ld a, (ix+37)
		cp $05
		jr c, +
		ld (ix+16), $03
		ret
	
+:	
		ld a, $0D
		ld (_RAM_FFFF_), a
		ld a, (ix+37)
		add a, a
		ld e, a
		add a, a
		add a, e
		ld e, a
		ld d, $00
		ld hl, _DATA_74C4_
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
		di
		call _LABEL_105A_
		ei
		inc (ix+37)
		ret
	
; 4th entry of Jump Table from 64DD (indexed by unknown)	
_LABEL_64D5_:	
		ld hl, _RAM_C000_
		set 1, (hl)
		jp _LABEL_733E_
	
; Jump Table from 64DD to 64E4 (4 entries, indexed by unknown)	
_DATA_64DD_:	
	.dw _LABEL_63D9_ _LABEL_63FA_ _LABEL_6492_ _LABEL_64D5_
	
; 133rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_64E5_:	
		call _LABEL_66F8_
		ld a, (ix+16)
		ld hl, _DATA_674D_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 674D (indexed by unknown)	
_LABEL_64F2_:	
		ld a, (ix+40)
		ld hl, _DATA_675B_
		call _LABEL_734C_
		ld e, l
		ld d, h
		inc de
		ld bc, $0020
		ld (hl), $00
		ldir
		ld a, (ix+40)
		ld hl, _DATA_6755_
		call _LABEL_734C_
		push hl
		pop iy
		ld a, (ix+40)
		ld (iy+0), $86
		ld (iy+40), a
		ld de, _DATA_30_
		add iy, de
		ld (iy+0), $86
		ld (iy+40), a
		ld (iy+43), $01
		ld a, (_RAM_C313_)
		sub $3B
		ld (ix+3), a
		ld a, (_RAM_C316_)
		sub $17
		ld (ix+6), a
		ld (ix+39), $00
		ld (ix+16), $01
		ld (ix+1), $54
		ld (ix+12), $1C
		ld a, $A1
		ld (_RAM_DE03_), a
		jp _LABEL_736A_
	
; 2nd entry of Jump Table from 674D (indexed by unknown)	
_LABEL_6553_:	
		ld a, (ix+43)
		ld (ix+44), a
		call _LABEL_736A_
		ld a, (ix+43)
		sub (ix+44)
		jr nz, _LABEL_65C2_
		ld a, (ix+3)
		cp $10
		jr c, +
		cp $A0
		jr c, +++
+:	
		ld a, (ix+8)
		cpl
		ld l, a
		ld a, (ix+9)
		cpl
		ld h, a
		inc hl
		ld (ix+8), l
		ld (ix+9), h
		ld a, (ix+43)
		ld c, a
		and $0F
		jr nz, +
		ld a, c
		xor $10
		jr ++
	
+:	
		ld a, c
		and $20
		ld b, a
		ld a, c
		and $1F
		neg
		and $1F
		or b
++:	
		ld (ix+43), a
+++:	
		ld a, (ix+6)
		cp $10
		jr c, +
		cp $E0
		ret c
+:	
		ld a, (ix+10)
		cpl
		ld l, a
		ld a, (ix+11)
		cpl
		ld h, a
		inc hl
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+43)
		neg
		and $3F
		ld (ix+43), a
		ret
	
_LABEL_65C2_:	
		ld (ix+16), $02
		ld (ix+38), $01
		ld (ix+36), $20
		ld c, $00
		jr nc, +
		ld c, $01
		neg
+:	
		ld (ix+37), c
		cp $20
		ret c
		ld a, c
		xor $01
		ld (ix+37), a
		ret
	
; 3rd entry of Jump Table from 674D (indexed by unknown)	
_LABEL_65E3_:	
		dec (ix+36)
		jr nz, +
		ld a, (ix+44)
		ld (ix+43), a
		ld (ix+16), $01
		ret
	
+:	
		ld a, (ix+3)
		cp $10
		jr c, +
		cp $A0
		jr c, _LABEL_6647_
+:	
		ld a, (ix+8)
		cpl
		ld l, a
		ld a, (ix+9)
		cpl
		ld h, a
		inc hl
		ld (ix+8), l
		ld (ix+9), h
		ld a, (ix+43)
		ld c, a
		and $0F
		jr nz, +
		ld a, c
		xor $10
		jr ++
	
+:	
		ld a, c
		and $20
		ld b, a
		ld a, c
		and $1F
		neg
		and $1F
		or b
++:	
		ld (ix+43), a
		ld a, (ix+44)
		ld c, a
		and $0F
		jr nz, +
		ld a, c
		xor $10
		jr ++
	
+:	
		ld a, c
		and $20
		ld b, a
		ld a, c
		and $1F
		neg
		and $1F
		or b
++:	
		ld (ix+44), a
_LABEL_6647_:	
		ld a, (ix+6)
		cp $10
		jr c, +
		cp $E0
		jr c, ++
+:	
		ld a, (ix+10)
		cpl
		ld l, a
		ld a, (ix+11)
		cpl
		ld h, a
		inc hl
		ld (ix+10), l
		ld (ix+11), h
		ld a, (ix+43)
		neg
		and $3F
		ld (ix+43), a
		ld a, (ix+44)
		neg
		and $3F
		ld (ix+44), a
		ret
	
++:	
		dec (ix+38)
		ret nz
		ld (ix+38), $04
		ld a, (ix+44)
		cp (ix+43)
		jr nz, +
		ld (ix+16), $01
		ld (ix+36), $01
		ret
	
+:	
		inc a
		bit 0, (ix+37)
		jr z, +
		sub $02
+:	
		and $3F
		ld (ix+44), a
		and $0F
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_7484_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		bit 4, (ix+44)
		jr z, +
		push de
		push bc
		pop de
		pop bc
+:	
		push de
		ld a, (ix+44)
		and $30
		rrca
		rrca
		rrca
		rrca
		ld e, a
		ld d, $00
		ld hl, _DATA_7480_
		add hl, de
		pop de
		ld a, (hl)
		bit 1, a
		jr z, +
		ld hl, $0000
		or a
		sbc hl, de
		ex de, hl
+:	
		ld (ix+8), e
		ld (ix+9), d
		bit 0, a
		jr z, +
		ld a, c
		cpl
		ld c, a
		ld a, b
		cpl
		ld b, a
		inc bc
+:	
		ld (ix+10), c
		ld (ix+11), b
		ret
	
; 4th entry of Jump Table from 674D (indexed by unknown)	
_LABEL_66F1_:	
		dec (ix+36)
		ret nz
		jp _LABEL_733E_
	
_LABEL_66F8_:	
		call _LABEL_4BDF_
		ld a, (ix+40)
		ld hl, _DATA_6761_
		call _LABEL_734C_
		ld e, l
		ld d, h
		inc de
		inc de
		ld bc, $001E
		lddr
		ld e, (ix+3)
		ld d, (ix+6)
		inc hl
		ld (hl), e
		inc hl
		ld (hl), d
		dec (ix+39)
		ret nz
		ld (ix+1), $00
		ld (ix+36), $20
		ld (ix+16), $03
		ld a, (ix+40)
		ld hl, _DATA_6755_
		call _LABEL_734C_
		ld de, _DATA_24_
		add hl, de
		ld (hl), $04
		ld de, $0030
		add hl, de
		ld (hl), $08
		ld (ix+8), $00
		ld (ix+9), $00
		ld (ix+10), $00
		ld (ix+11), $00
		ret
	
; Jump Table from 674D to 6754 (4 entries, indexed by unknown)	
_DATA_674D_:	
	.dw _LABEL_64F2_ _LABEL_6553_ _LABEL_65E3_ _LABEL_66F1_
	
; Pointer Table from 6755 to 675A (3 entries, indexed by unknown)	
_DATA_6755_:	
	.dw _RAM_C3D0_ _RAM_C430_ _RAM_C490_
	
; Pointer Table from 675B to 6760 (3 entries, indexed by unknown)	
_DATA_675B_:	
	.dw _RAM_C800_ _RAM_C820_ _RAM_C840_
	
; Pointer Table from 6761 to 6766 (3 entries, indexed by unknown)	
_DATA_6761_:	
	.dw _RAM_C81D_ _RAM_C83D_ _RAM_C85D_
	
; 134th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6767_:	
		call _LABEL_4BDF_
		ld a, (ix+16)
		ld hl, _DATA_67AD_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 67AD (indexed by unknown)	
_LABEL_6774_:	
		ld a, $53
		sub (ix+43)
		ld (ix+1), a
		ld (ix+16), $01
		ret
	
; 2nd entry of Jump Table from 67AD (indexed by unknown)	
_LABEL_6781_:	
		ld a, (ix+36)
		or a
		jr z, +
		dec (ix+36)
		jp z, _LABEL_733E_
+:	
		ld a, (ix+40)
		ld hl, _DATA_675B_
		call _LABEL_734C_
		bit 0, (ix+43)
		ld de, $000E
		jr z, +
		ld de, $001C
+:	
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (ix+3), e
		ld (ix+6), d
		ret
	
; Jump Table from 67AD to 67B0 (2 entries, indexed by unknown)	
_DATA_67AD_:	
	.dw _LABEL_6774_ _LABEL_6781_
	
; 135th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_67B1_:	
		call _LABEL_695C_
		ld a, (ix+16)
		ld hl, _DATA_694A_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 694A (indexed by unknown)	
_LABEL_67BE_:	
		ld (ix+12), $1A
		ld (ix+1), $60
		ld (ix+3), $A8
		ld (ix+6), $E0
		ld (ix+13), $00
		ld (ix+14), $00
		ld (ix+11), $FE
		ld (ix+16), $01
		ld hl, _DATA_20000_
		ld de, $06C0
		ld a, $08
		ld (_RAM_FFFF_), a
		jp _LABEL_10AB_
	
; 2nd entry of Jump Table from 694A (indexed by unknown)	
_LABEL_67EC_:	
		res 7, (ix+20)
		ld a, (ix+6)
		cp $C0
		ret nc
		ld (ix+16), $02
		ret
	
; 3rd entry of Jump Table from 694A (indexed by unknown)	
_LABEL_67FB_:	
		res 7, (ix+20)
		ld (ix+16), $03
		ld (ix+8), $80
		ld (ix+9), $FB
		ld (ix+19), $30
		ld (ix+18), $80
		ld (ix+13), $00
		ld (ix+14), $00
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+11), $01
		ld (ix+1), $68
		ret nc
		ld (ix+11), $FF
		ld (ix+1), $62
		ret
	
; 4th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_6833_:	
		call _LABEL_389D_
		res 7, (ix+20)
		bit 4, (ix+20)
		jr nz, _LABEL_6855_
		bit 6, (ix+18)
		ret z
		ld (ix+13), $00
		ld (ix+14), $00
		inc (ix+1)
		ld (ix+16), $04
		ret
	
_LABEL_6855_:	
		ld (ix+16), $07
		ld (ix+13), $00
		ld (ix+14), $00
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $61
		ld (ix+11), $02
		ret c
		ld (ix+1), $67
		ld (ix+11), $FE
		ret
	
; 5th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_6879_:	
		call _LABEL_389D_
		res 7, (ix+20)
		bit 4, (ix+20)
		jr nz, _LABEL_6855_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $05
		ld (ix+36), $10
		ld (ix+37), $03
		ld (ix+11), $00
		ld (ix+13), $00
		ld (ix+14), $00
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $66
		ret c
		ld (ix+1), $6C
		ret
	
; 6th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_68B3_:	
		dec (ix+36)
		jr nz, ++
		ld (ix+36), $10
		dec (ix+37)
		jr nz, +
		ld (ix+16), $02
		ret
	
+:	
		ld (ix+13), $00
		ld (ix+14), $00
		dec (ix+1)
++:	
		ld a, (ix+37)
		cp $01
		ret nz
		bit 7, (ix+20)
		ret z
		call _LABEL_7BE2_
		res 7, (ix+20)
		inc (ix+42)
		ld (ix+36), $10
		ld (ix+16), $06
		ld (ix+13), $00
		ld (ix+14), $00
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $61
		ld (ix+11), $02
		ret c
		ld (ix+1), $67
		ld (ix+11), $FE
		ret
	
; 7th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_690E_:	
		dec (ix+36)
		ret nz
		ld a, (ix+42)
		cp $03
		ld (ix+16), $02
		ret c
		ld (ix+1), $00
		ld (ix+36), $40
		ld (ix+16), $08
		ret
	
; 8th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_6929_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		res 4, (ix+20)
		ld (ix+16), $02
		ret
	
; 9th entry of Jump Table from 694A (indexed by unknown)	
_LABEL_693A_:	
		dec (ix+36)
		ret nz
		call _LABEL_733E_
		ld (ix+0), $88
		ld c, $01
		jp _LABEL_7BD9_
	
; Jump Table from 694A to 695B (9 entries, indexed by unknown)	
_DATA_694A_:	
	.dw _LABEL_67BE_ _LABEL_67EC_ _LABEL_67FB_ _LABEL_6833_ _LABEL_6879_ _LABEL_68B3_ _LABEL_690E_ _LABEL_6929_
	.dw _LABEL_693A_
	
_LABEL_695C_:	
		call _LABEL_37A9_
		ld a, (ix+6)
		cp $08
		jr nc, +
		ld (ix+6), $08
		jr ++
	
+:	
		cp $F8
		ret c
		ld (ix+6), $F8
++:	
		ld (ix+10), $00
		ld (ix+11), $00
		ret
	
; 136th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_697C_:	
		call _LABEL_695C_
		ld a, (ix+16)
		ld hl, _DATA_6AB8_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_6989_:	
		ld hl, _DATA_20E45_
		ld de, $06C0
		ld a, $08
		ld (_RAM_FFFF_), a
		call _LABEL_10AB_
		ld (ix+12), $1A
		ld (ix+13), $00
		ld (ix+14), $00
		ld (ix+1), $00
		ld (ix+16), $01
		ld (ix+3), $A8
		ld (ix+7), $00
		ld a, (_RAM_C1C6_)
		cp $80
		ld (ix+6), $E0
		ret c
		ld (ix+6), $20
		ret
	
; 2nd entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_69C2_:	
		ld (ix+1), $6D
		ld (ix+36), $10
		ld (ix+37), $03
		ld (ix+16), $02
		ret
	
; 3rd entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_69D3_:	
		dec (ix+36)
		ret nz
		ld (ix+36), $10
		dec (ix+37)
		jr z, +
		inc (ix+1)
		ret
	
+:	
		ld (ix+16), $03
		ld (ix+36), $04
		ld (ix+38), $01
		ret
	
; 4th entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_69F1_:	
		bit 7, (ix+20)
		jr z, +
		call _LABEL_7BE2_
		ld (ix+16), $04
		ld (ix+36), $10
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $70
		ld (ix+11), $02
		ret c
		ld (ix+1), $71
		ld (ix+11), $FE
		ret
	
+:	
		res 7, (ix+20)
		dec (ix+38)
		jr nz, +
		ld (ix+38), $10
		inc (ix+37)
		bit 0, (ix+37)
		ld (ix+11), $00
		jr z, +
		ld (ix+38), $20
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+11), $FE
		jr c, +
		ld (ix+11), $02
+:	
		dec (ix+36)
		ret nz
		ld (ix+36), $08
		ld hl, _RAM_C340_
		ld de, $0030
		ld b, $03
-:	
		ld a, (hl)
		or a
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		ld (hl), $89
		ld a, (ix+6)
		ld de, $0006
		add hl, de
		ld (hl), a
		ret
	
; 5th entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_6A6B_:	
		dec (ix+36)
		ret nz
		res 7, (ix+20)
		inc (ix+42)
		ld a, (ix+42)
		cp $03
		ld (ix+16), $01
		ret c
		ld (ix+1), $00
		ld (ix+36), $40
		ld (ix+16), $05
		ret
	
; 6th entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_6A8D_:	
		dec (ix+36)
		ret nz
		ld (ix+1), $00
		set 7, (ix+20)
		ld (ix+16), $06
		ld c, $01
		jp _LABEL_7BD9_
	
; 7th entry of Jump Table from 6AB8 (indexed by unknown)	
_LABEL_6AA2_:	
		ld hl, $C310
		ld de, $0030
		ld b, $03
-:	
		add hl, de
		ld a, (hl)
		or a
		ret nz
		djnz -
		call _LABEL_733E_
		ld (ix+0), $8A
		ret
	
; Jump Table from 6AB8 to 6AC5 (7 entries, indexed by unknown)	
_DATA_6AB8_:	
	.dw _LABEL_6989_ _LABEL_69C2_ _LABEL_69D3_ _LABEL_69F1_ _LABEL_6A6B_ _LABEL_6A8D_ _LABEL_6AA2_
	
; 137th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6AC6_:	
		call _LABEL_7329_
		ld a, (ix+16)
		ld hl, _DATA_6B3F_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6B3F (indexed by unknown)	
_LABEL_6AD3_:	
		ld (ix+12), $1C
		ld (ix+1), $72
		ld (ix+13), $00
		ld (ix+14), $00
		ld a, r
		and $03
		ld e, a
		ld d, $00
		ld hl, _DATA_6B47_
		add hl, de
		ld a, (hl)
		ld (ix+3), a
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+11), $03
		ld (ix+16), $01
		ret c
		ld (ix+11), $FD
		ld (ix+16), $02
		ret
	
; 2nd entry of Jump Table from 6B3F (indexed by unknown)	
_LABEL_6B0A_:	
		ld l, (ix+10)
		ld h, (ix+11)
		ld de, $0040
		or a
		sbc hl, de
		ld (ix+10), l
		ld (ix+11), h
		ld a, h
		cp $FD
		ret nz
		ld (ix+16), $03
		ret
	
; 3rd entry of Jump Table from 6B3F (indexed by unknown)	
_LABEL_6B25_:	
		ld l, (ix+10)
		ld h, (ix+11)
		ld de, $0040
		add hl, de
		ld (ix+10), l
		ld (ix+11), h
		ld a, h
		cp $03
		ret nz
		ld (ix+16), $03
		ret
	
; 4th entry of Jump Table from 6B3F (indexed by unknown)	
_LABEL_6B3E_:	
		ret
	
; Jump Table from 6B3F to 6B46 (4 entries, indexed by unknown)	
_DATA_6B3F_:	
	.dw _LABEL_6AD3_ _LABEL_6B0A_ _LABEL_6B25_ _LABEL_6B3E_
	
; Data from 6B47 to 6B4A (4 bytes)	
_DATA_6B47_:	
	.db $98 $88 $70 $88
	
; 138th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6B4B_:	
		call _LABEL_695C_
		ld a, (ix+16)
		ld hl, _DATA_6CC2_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6B58_:	
		ld hl, _DATA_21805_
		ld de, $06C0
		ld a, $08
		ld (_RAM_FFFF_), a
		call _LABEL_10AB_
		ld (ix+12), $1A
		ld (ix+13), $00
		ld (ix+14), $00
		ld (ix+1), $73
		ld (ix+16), $01
		ld (ix+3), $A8
		ld (ix+7), $00
		ld a, (_RAM_C1C6_)
		cp $80
		ld (ix+6), $E0
		ret c
		ld (ix+6), $20
		ret
	
; 2nd entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6B91_:	
		ld (ix+36), $10
		ld (ix+10), $00
		ld (ix+11), $00
		ld (ix+16), $02
		ret
	
; 3rd entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6BA2_:	
		call _LABEL_6C88_
		dec (ix+36)
		ret nz
		ld (ix+16), $03
		ld (ix+8), $80
		ld (ix+9), $FA
		ld (ix+19), $30
		ld (ix+18), $80
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		push af
		ld h, a
		ld l, $00
		ld e, $3A
		call _LABEL_7356_
		ld (ix+11), h
		ld (ix+10), l
		ld (ix+1), $7A
		pop af
		ret nc
		ld a, l
		cpl
		ld l, a
		ld a, h
		cpl
		ld h, a
		inc hl
		ld (ix+11), h
		ld (ix+10), l
		ld (ix+1), $76
		ret
	
; 4th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6BEE_:	
		call _LABEL_6C88_
		call _LABEL_389D_
		bit 6, (ix+18)
		ret z
		inc (ix+1)
		ld (ix+16), $04
		ret
	
; 5th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6C01_:	
		call _LABEL_6C88_
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld (ix+16), $01
		dec (ix+1)
		dec (ix+1)
		ld hl, _RAM_C340_
		ld de, $0030
		ld bc, $0340
-:	
		ld a, (hl)
		or a
		jr z, +
		ld a, c
		add a, $20
		ld c, a
		add hl, de
		djnz -
		ret
	
+:	
		ld (hl), $8B
		ld a, (ix+6)
		ld de, $0006
		add hl, de
		ld (hl), a
		ld de, $001E
		add hl, de
		ld (hl), c
		ret
	
; 6th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6C3B_:	
		dec (ix+36)
		ret nz
-:	
		ld a, (ix+42)
		cp $03
		ld (ix+1), $73
		ld (ix+16), $01
		ret c
		ld (ix+1), $00
		ld (ix+16), $07
		ret
	
; 7th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6C56_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		jp -
	
; 8th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6C61_:	
		ld hl, _RAM_C340_
		ld de, $0030
		ld b, $03
-:	
		ld a, (hl)
		or a
		ret nz
		add hl, de
		djnz -
		ld (ix+36), $40
		ld (ix+16), $08
		ret
	
; 9th entry of Jump Table from 6CC2 (indexed by unknown)	
_LABEL_6C78_:	
		dec (ix+36)
		ret nz
		call _LABEL_733E_
		ld (ix+0), $8C
		ld c, $01
		jp _LABEL_7BD9_
	
_LABEL_6C88_:	
		bit 7, (ix+20)
		ret z
		call _LABEL_7BE2_
		res 7, (ix+20)
		inc (ix+42)
		ld (ix+16), $05
		bit 7, (ix+18)
		jr z, +
		ld (ix+16), $06
+:	
		pop hl
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+10), $00
		ld (ix+11), $02
		ld (ix+1), $74
		ret c
		ld (ix+11), $FE
		ld (ix+1), $78
		ret
	
; Jump Table from 6CC2 to 6CD3 (9 entries, indexed by unknown)	
_DATA_6CC2_:	
	.dw _LABEL_6B58_ _LABEL_6B91_ _LABEL_6BA2_ _LABEL_6BEE_ _LABEL_6C01_ _LABEL_6C3B_ _LABEL_6C56_ _LABEL_6C61_
	.dw _LABEL_6C78_
	
; 139th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6CD4_:	
		call _LABEL_695C_
		bit 7, (ix+20)
		jp nz, _LABEL_733E_
		ld a, (ix+16)
		ld hl, _DATA_6D88_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6D88 (indexed by unknown)	
_LABEL_6CE8_:	
		ld (ix+12), $1C
		ld (ix+13), $00
		ld (ix+14), $00
		ld (ix+1), $00
		ld (ix+3), $A8
		ld (ix+16), $01
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $7C
		ret c
		ld (ix+1), $7F
		ret
	
; 2nd entry of Jump Table from 6D88 (indexed by unknown)	
_LABEL_6D10_:	
		dec (ix+36)
		ret nz
		ld (ix+16), $02
		ld (ix+8), $80
		ld (ix+9), $FA
		ld (ix+19), $30
		ld (ix+18), $80
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		push af
		ld h, a
		ld l, $00
		ld e, $3A
		call _LABEL_7356_
		ld (ix+11), h
		ld (ix+10), l
		ld (ix+1), $80
		pop af
		ret nc
		ld a, l
		cpl
		ld l, a
		ld a, h
		cpl
		ld h, a
		inc hl
		ld (ix+11), h
		ld (ix+10), l
		ld (ix+1), $7D
		ret
	
; 3rd entry of Jump Table from 6D88 (indexed by unknown)	
_LABEL_6D59_:	
		call _LABEL_389D_
		bit 6, (ix+18)
		ret z
		inc (ix+1)
		ld (ix+16), $03
		ret
	
; 4th entry of Jump Table from 6D88 (indexed by unknown)	
_LABEL_6D69_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		dec (ix+1)
		dec (ix+1)
		ld (ix+36), $80
		ld (ix+10), $00
		ld (ix+11), $00
		ld (ix+16), $01
		ret
	
; Jump Table from 6D88 to 6D8F (4 entries, indexed by unknown)	
_DATA_6D88_:	
	.dw _LABEL_6CE8_ _LABEL_6D10_ _LABEL_6D59_ _LABEL_6D69_
	
; 140th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6D90_:	
		call _LABEL_695C_
		ld a, (ix+16)
		ld hl, _DATA_6EF9_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6D9D_:	
		ld hl, _DATA_224BE_
		ld de, $06C0
		ld a, $08
		ld (_RAM_FFFF_), a
		call _LABEL_10AB_
		ld (ix+12), $1A
		ld (ix+13), $00
		ld (ix+14), $00
		ld (ix+1), $00
		ld (ix+16), $01
		ld (ix+3), $A8
		ld (ix+7), $00
		ld a, (_RAM_C1C6_)
		cp $80
		ld (ix+6), $E0
		ret c
		ld (ix+6), $20
		ret
	
; 2nd entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6DD6_:	
		ld (ix+1), $82
		ld (ix+36), $20
		ld (ix+11), $00
		ld (ix+16), $02
		ret
	
; 3rd entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6DE7_:	
		call _LABEL_6EC9_
		dec (ix+36)
		ret nz
		ld a, r
		rrca
		ld (ix+16), $03
		jr c, +
		ld (ix+16), $04
+:	
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $84
		ld (ix+11), $FC
		ret c
		ld (ix+1), $87
		ld (ix+11), $04
		ret
	
; 4th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6E13_:	
		res 7, (ix+20)
		ld a, (ix+6)
		bit 7, (ix+11)
		jr z, +
		cp $10
		ret nc
		jr ++
	
+:	
		cp $F0
		ret c
++:	
		ld (ix+16), $01
		ret
	
; 5th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6E2D_:	
		res 7, (ix+20)
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nc, +
		neg
+:	
		cp $10
		ret nc
		ld (ix+11), $00
		ld (ix+36), $20
		ld (ix+16), $05
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $85
		ret c
		ld (ix+1), $88
		ret
	
; 6th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6E5A_:	
		call _LABEL_6EC9_
		dec (ix+36)
		ret nz
		ld (ix+16), $01
		ret
	
; 7th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6E66_:	
		dec (ix+36)
		ret nz
		ld a, (ix+42)
		cp $08
		ld (ix+16), $01
		ret c
		ld a, (ix+1)
		add a, $06
		ld (ix+1), a
		ld (ix+36), $01
		ld (ix+37), $03
		ld (ix+16), $07
		ld a, $08
		ld (_RAM_FFFF_), a
		ld hl, _DATA_23669_
		ld de, $0C00
		call _LABEL_10AB_
		ld a, $A2
		ld (_RAM_DE03_), a
		ret
	
; 8th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6E9C_:	
		dec (ix+36)
		ret nz
		ld (ix+36), $08
		inc (ix+1)
		dec (ix+37)
		ret nz
		ld (ix+1), $00
		ld (ix+36), $40
		ld (ix+16), $08
		ret
	
; 9th entry of Jump Table from 6EF9 (indexed by unknown)	
_LABEL_6EB8_:	
		dec (ix+36)
		ret nz
		ld c, $01
		call _LABEL_7BD9_
		ld hl, _RAM_C000_
		set 1, (hl)
		jp _LABEL_733E_
	
_LABEL_6EC9_:	
		bit 7, (ix+20)
		ret z
		res 7, (ix+20)
		call _LABEL_7BE2_
		pop hl
		inc (ix+42)
		ld (ix+36), $20
		ld (ix+16), $06
		ld a, (_RAM_C1C6_)
		cp (ix+6)
		ld (ix+1), $83
		ld (ix+11), $02
		ret c
		ld (ix+1), $86
		ld (ix+11), $FE
		ret
	
; Jump Table from 6EF9 to 6F0A (9 entries, indexed by unknown)	
_DATA_6EF9_:	
	.dw _LABEL_6D9D_ _LABEL_6DD6_ _LABEL_6DE7_ _LABEL_6E13_ _LABEL_6E2D_ _LABEL_6E5A_ _LABEL_6E66_ _LABEL_6E9C_
	.dw _LABEL_6EB8_
	
; 141st entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6F0B_:	
		call _LABEL_4BDF_
		ld a, (ix+16)
		ld hl, _DATA_6F4F_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 6F4F (indexed by unknown)	
_LABEL_6F18_:	
		ld (ix+12), $1B
		ld (ix+1), $59
		ld (ix+3), $50
		ld (ix+6), $18
		ld (ix+16), $01
		ld hl, _RAM_C340_
		ld de, $0030
		ld b, $06
-:	
		ld (hl), $8E
		add hl, de
		djnz -
		ret
	
; 2nd entry of Jump Table from 6F4F (indexed by unknown)	
_LABEL_6F3A_:	
		ld a, (_RAM_C701_)
		bit 3, a
		jr nz, +
		ld a, $20
		ld (_RAM_C70C_), a
		ld (ix+10), a
		ret
	
+:	
		ld (ix+10), $00
		ret
	
; Jump Table from 6F4F to 6F52 (2 entries, indexed by unknown)	
_DATA_6F4F_:	
	.dw _LABEL_6F18_ _LABEL_6F3A_
	
; 142nd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_6F53_:	
		call _LABEL_715F_
		ld a, (ix+16)
		ld hl, _DATA_71C0_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 71C0 (indexed by unknown)	
_LABEL_6F60_:	
		ld (ix+1), $AA
		ld hl, _RAM_C800_
		ld b, $10
-:	
		bit 0, (hl)
		jr z, +
		inc hl
		djnz -
		call _LABEL_733E_
		ld hl, _RAM_C800_
		ld b, $10
-:	
		bit 7, (hl)
		ret z
		inc hl
		djnz -
		ld (ix+0), $8F
		ret
	
+:	
		set 0, (hl)
		ld (ix+43), l
		ld (ix+16), $01
_LABEL_6F8C_:	
		ld a, l
		and $03
		add a, a
		add a, a
		add a, a
		add a, a
		ld c, a
		add a, a
		add a, c
		add a, $20
		ld (ix+3), a
_LABEL_6F9B_:	
		ld a, (ix+43)
		and $0C
		add a, a
		add a, a
		add a, a
		ld l, a
		ld h, $00
		ld de, $00C0
		add hl, de
		ld (ix+6), l
		ld (ix+7), h
		ld (ix+12), $1A
		ret
	
; 2nd entry of Jump Table from 71C0 (indexed by unknown)	
_LABEL_6FB5_:	
		call _LABEL_71BB_
		jr z, +
		ld (ix+16), $03
		inc (ix+43)
		ld (ix+37), $00
		ld (ix+38), $01
		ret
	
+:	
		bit 7, (ix+20)
		ret z
		res 7, (ix+20)
		call _LABEL_7BE2_
		inc (ix+42)
		ld a, (ix+42)
		cp $04
		jr nc, +
		ld (ix+38), $01
		ld (ix+37), $00
		ld (ix+44), $04
		ld (ix+16), $02
		ret
	
+:	
		call _LABEL_717D_
		ld de, _DATA_71D2_
		ld bc, $0604
		di
		call _LABEL_105A_
		ei
		ld a, (ix+43)
		and $0C
		ld l, a
		ld h, $C8
-:	
		bit 7, (hl)
		jr z, +
		inc hl
		jr -
	
+:	
		set 7, (hl)
		ld (ix+1), $00
		ld a, (ix+43)
		and $0C
		ld c, a
		ld b, $06
		ld iy, _RAM_C340_
-:	
		ld a, (iy+43)
		and $0C
		cp c
		jr nz, +
		ld a, (ix+43)
		and $03
		ld e, a
		ld a, (iy+43)
		and $03
		cp e
		jr nc, +
		inc (iy+40)
+:	
		ld de, $0030
		add iy, de
		djnz -
		ld (ix+16), $00
		ld (ix+42), $00
		res 7, (ix+20)
		ld c, $07
		jp _LABEL_7BD9_
	
; 3rd entry of Jump Table from 71C0 (indexed by unknown)	
_LABEL_7051_:	
		call _LABEL_71BB_
		jr nz, +
		dec (ix+38)
		ret nz
		ld (ix+38), $06
		ld a, (ix+44)
		ld hl, _DATA_71C8_
		call _LABEL_734C_
		ex de, hl
		call _LABEL_717D_
		ld bc, $0604
		ld a, $0D
		ld (_RAM_FFFF_), a
		di
		call _LABEL_105A_
		ei
		dec (ix+44)
		ret nz
		ld (ix+16), $01
		res 7, (ix+20)
		ret
	
+:	
		inc (ix+43)
		ld (ix+16), $03
		ret
	
; 4th entry of Jump Table from 71C0 (indexed by unknown)	
_LABEL_708D_:	
		dec (ix+38)
		ret nz
		ld (ix+38), $04
		inc (ix+37)
		ld a, (ix+37)
		cp $07
		jr c, +
		ld (ix+16), $01
		res 7, (ix+20)
		dec (ix+40)
		ld l, (ix+43)
		jp _LABEL_6F8C_
	
+:	
		ld b, a
		ld hl, $0000
		ld de, $0040
-:	
		add hl, de
		djnz -
		ex de, hl
		call _LABEL_7176_
		add hl, de
		push hl
		ld a, (ix+44)
		or a
		jr z, +
		dec (ix+44)
+:	
		ld hl, _DATA_71C8_
		call _LABEL_734C_
		ex de, hl
		pop hl
		ld a, (ix+43)
		and $03
		cp $01
		jr z, ++
		ld bc, $0604
		ld a, $0D
		ld (_RAM_FFFF_), a
		di
		call _LABEL_105A_
		ei
		ld a, (ix+3)
		add a, $08
		ld (ix+3), a
		ex de, hl
		ld l, (ix+43)
		ld h, $C8
		ld a, l
		and $03
		jr z, +
		dec hl
		bit 7, (hl)
		ret z
+:	
		ex de, hl
		ld de, $01C0
		or a
		sbc hl, de
		ld de, _DATA_71D2_
		ld bc, $0104
		di
		call _LABEL_105A_
		ei
		ret
	
++:	
		call _LABEL_71A4_
		ld a, (ix+37)
		sub $05
		jr c, +
		push de
		ex de, hl
		rrca
		rrca
		ld l, a
		ld h, $00
		add hl, de
		ld de, _DATA_71D2_
		ld bc, $0104
		di
		call _LABEL_105A_
		ei
		pop de
+:	
		push hl
		ld a, (ix+37)
		cp $04
		jr c, +
		ld a, $04
+:	
		sub $04
		neg
		add a, a
		add a, a
		add a, a
		ld l, a
		ld h, $00
		add hl, de
		ex de, hl
		pop hl
		ld a, (ix+37)
		cp $04
		jr c, +
		ld a, $04
+:	
		add a, $02
		ld b, a
		ld c, $04
		ld a, $0D
		ld (_RAM_FFFF_), a
		di
		call _LABEL_105A_
		ei
		ret
	
_LABEL_715F_:	
		call _LABEL_6F9B_
		ld a, (_RAM_C70F_)
		neg
		ld e, a
		ld d, $00
		or a
		sbc hl, de
		ld (ix+6), l
		ld (ix+7), h
		jp _LABEL_4BDF_
	
_LABEL_7176_:	
		ld a, (ix+43)
		sub $02
		jr +
	
_LABEL_717D_:	
		ld a, (ix+43)
		dec a
+:	
		and $03
		ld h, a
		ld l, $00
		rr h
		rr l
		add a, h
		ld h, a
		ld a, (ix+43)
		and $04
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		bit 3, (ix+43)
		ld bc, $7930
		jr z, +
		ld bc, $7900
+:	
		add hl, bc
		ret
	
_LABEL_71A4_:	
		ld a, (ix+43)
		and $04
		add a, a
		ld c, a
		ld b, $00
		bit 3, (ix+43)
		ld hl, $78B0
		jr z, +
		ld hl, $7880
+:	
		add hl, bc
		ret
	
_LABEL_71BB_:	
		ld a, (ix+40)
		or a
		ret
	
; Jump Table from 71C0 to 71C7 (4 entries, indexed by unknown)	
_DATA_71C0_:	
	.dw _LABEL_6F60_ _LABEL_6FB5_ _LABEL_7051_ _LABEL_708D_
	
; Pointer Table from 71C8 to 71D1 (5 entries, indexed by unknown)	
_DATA_71C8_:	
	.dw _DATA_37490_ _DATA_37490_ _DATA_374C0_ _DATA_374F0_ _DATA_37520_
	
; Data from 71D2 to 7201 (48 bytes)	
_DATA_71D2_:	
	.db $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01
	.db $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01
	.db $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01 $56 $01
	
; 143rd entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7202_:	
		bit 7, (ix+20)
		jr z, +
		res 7, (ix+20)
		call _LABEL_7BE2_
		inc (ix+42)
		ld a, (ix+42)
		cp $08
		jr c, +
		ld c, $01
		call _LABEL_7BD9_
		ld hl, _RAM_C000_
		set 1, (hl)
		jp _LABEL_733E_
	
+:	
		call _LABEL_4BDF_
		ld a, (ix+16)
		ld hl, _DATA_729A_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 729A (indexed by unknown)	
_LABEL_7233_:	
		ld hl, (_RAM_C70E_)
		ld a, h
		or l
		ret nz
		ld (ix+12), $1A
		ld (ix+1), $57
		ld (ix+3), $B0
		ld (ix+6), $E8
		ld (ix+7), $00
		ld (ix+9), $FF
		ld (ix+16), $01
		ret
	
; 2nd entry of Jump Table from 729A (indexed by unknown)	
_LABEL_7256_:	
		ld a, (ix+3)
		cp $50
		ret nc
		ld (ix+9), $01
		ld (ix+16), $02
		jp +
	
; 3rd entry of Jump Table from 729A (indexed by unknown)	
_LABEL_7267_:	
		ld a, (ix+3)
		cp $B0
		ret c
		ld (ix+9), $FF
		ld (ix+16), $01
+:	
		ld hl, _RAM_C340_
		ld de, $0030
		ld b, $06
-:	
		ld a, (hl)
		or a
		jr z, +
		add hl, de
		djnz -
		ret
	
+:	
		ld a, $90
		ld (hl), a
		ld de, $0003
		add hl, de
		ld a, (ix+3)
		sub $10
		ld (hl), a
		inc hl
		inc hl
		inc hl
		ld a, (ix+6)
		ld (hl), a
		ret
	
; Jump Table from 729A to 729F (3 entries, indexed by unknown)	
_DATA_729A_:	
	.dw _LABEL_7233_ _LABEL_7256_ _LABEL_7267_
	
; 144th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_72A0_:	
		call _LABEL_7329_
		ld a, (ix+16)
		ld hl, _DATA_7323_
		call _LABEL_734C_
		jp (hl)
	
; 1st entry of Jump Table from 7323 (indexed by unknown)	
_LABEL_72AD_:	
		ld a, $A1
		ld (_RAM_DE03_), a
		ld (ix+12), $1C
		ld (ix+1), $58
		ld (ix+10), $00
		ld (ix+11), $FD
		ld (ix+39), $40
		ld (ix+16), $01
		ld a, (ix+3)
		cp $80
		ret nc
		ld (ix+39), $60
		ret
	
; 2nd entry of Jump Table from 7323 (indexed by unknown)	
_LABEL_72D5_:	
		ld a, (ix+3)
		cp $B0
		jr nc, +
		ld l, (ix+8)
		ld h, (ix+9)
		ld e, (ix+39)
		ld d, $00
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		ret
	
+:	
		ld (ix+3), $B0
		ld (ix+16), $02
		ld a, (ix+8)
		cpl
		ld l, a
		ld a, (ix+9)
		cpl
		ld h, a
		inc hl
		ld (ix+8), l
		ld (ix+9), h
		ret
	
; 3rd entry of Jump Table from 7323 (indexed by unknown)	
_LABEL_7309_:	
		ld l, (ix+8)
		ld h, (ix+9)
		ld e, (ix+39)
		ld d, $00
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		ld a, h
		or l
		ret nz
		ld (ix+16), $01
		ret
	
; Jump Table from 7323 to 7328 (3 entries, indexed by unknown)	
_DATA_7323_:	
	.dw _LABEL_72AD_ _LABEL_72D5_ _LABEL_7309_
	
_LABEL_7329_:	
		call _LABEL_4BDF_
		ld a, (ix+3)
		cp $D0
		jr nc, +
		ld a, (ix+6)
		cp $08
		jr c, +
		cp $F8
		ret c
+:	
		pop hl
_LABEL_733E_:	
		push ix
		pop hl
		ld e, l
		ld d, h
		inc de
		ld bc, $002F
		ld (hl), $00
		ldir
		ret
	
_LABEL_734C_:	
		add a, a
		ld c, a
		ld b, $00
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ret
	
_LABEL_7356_:	
		ld b, $11
		xor a
		jp +++
	
-:	
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
+++:	
		adc hl, hl
		djnz -
		ret
	
_LABEL_736A_:	
		ld c, $00
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		jr nz, +
		inc a
		jr ++
	
+:	
		jr nc, ++
		neg
		ld c, $02
++:	
		ld h, a
		ld a, (_RAM_C1C3_)
		sub $20
		sub (ix+3)
		jr nz, +
		inc a
		jr ++
	
+:	
		jr nc, ++
		neg
		set 0, c
++:	
		ld e, a
		cp h
		jr c, +++
		jr nz, +
		ld e, $1E
		ld a, $08
		jr ++
	
+:	
		ld l, $00
		call _LABEL_7424_
		and $F0
		rrca
		rrca
		rrca
		ld e, a
		srl a
		srl a
++:	
		push af
		ld d, $00
		ld hl, $745C
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld a, c
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		jr ++++
	
+++:	
		ld l, h
		ld h, e
		ld e, l
		ld l, $00
		call _LABEL_7424_
		and $F0
		rrca
		rrca
		rrca
		ld e, a
		srl a
		srl a
		neg
		and $07
		jr nz, +
		add a, $10
+:	
		push af
		ld d, $00
		ld hl, $745C
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld a, c
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
++++:	
		bit 1, a
		jr z, +
		ld hl, $0000
		or a
		sbc hl, bc
		ld (ix+10), l
		ld (ix+11), h
		jr ++
	
+:	
		ld (ix+10), c
		ld (ix+11), b
++:	
		bit 0, a
		jr z, +
		ld hl, $0000
		or a
		sbc hl, de
		ex de, hl
+:	
		ld (ix+8), e
		ld (ix+9), d
		ld e, a
		ld d, $00
		ld hl, _DATA_747C_
		add hl, de
		pop af
		or (hl)
		ld (ix+43), a
		ret
	
_LABEL_7424_:	
		ld b, $08
		or a
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
	
	; Data from 7438 to 747B (68 bytes)
	.db $00 $01 $00 $00 $FE $00 $18 $00 $FB $00 $32 $00 $F4 $00 $4A $00
	.db $EC $00 $62 $00 $E1 $00 $78 $00 $D4 $00 $8E $00 $C5 $00 $A2 $00
	.db $B5 $00 $B5 $00 $38 $74 $3C $74 $3C $74 $40 $74 $40 $74 $44 $74
	.db $44 $74 $48 $74 $48 $74 $4C $74 $4C $74 $50 $74 $50 $74 $54 $74
	.db $54 $74 $58 $74
	
; Data from 747C to 747F (4 bytes)	
_DATA_747C_:	
	.db $00 $10 $30 $20
	
; Data from 7480 to 7483 (4 bytes)	
_DATA_7480_:	
	.db $00 $02 $03 $01
	
; Data from 7484 to 74C3 (64 bytes)	
_DATA_7484_:	
	.db $00 $01 $00 $00 $FE $00 $19 $00 $FB $00 $31 $00 $F4 $00 $4A $00
	.db $EC $00 $61 $00 $E1 $00 $78 $00 $D4 $00 $8E $00 $C5 $00 $A2 $00
	.db $B5 $00 $B5 $00 $A2 $00 $C5 $00 $8E $00 $D4 $00 $78 $00 $E1 $00
	.db $61 $00 $EC $00 $4A $00 $F4 $00 $31 $00 $FB $00 $19 $00 $FE $00
	
; Data from 74C4 to 74C5 (2 bytes)	
_DATA_74C4_:	
	.db $06 $0A
	
	; Pointer Table from 74C6 to 74C7 (1 entries, indexed by unknown)
	.dw _DATA_37078_
	
	; Data from 74C8 to 74E1 (26 bytes)
	.db $EC $7A $04 $0A $E8 $AF $EE $7A $04 $0A $F0 $B0 $EE $7A $08 $04
	.db $38 $B0 $68 $7C $08 $04 $40 $B1 $68 $7C
	
; 145th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_74E2_:	
		call _LABEL_37A9_
		ld a, (ix+16)
		ld hl, _DATA_75C4_
		call _LABEL_7689_
		jp (hl)
	
; 1st entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_74EF_:	
		call _LABEL_764D_
		ld (ix+12), $1A
		ld (ix+3), $A0
		ld (ix+6), $C0
		ld (ix+41), $08
		ld (ix+43), $20
		ret
	
; 2nd entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7507_:	
		call _LABEL_75D6_
		call _LABEL_7608_
		call _LABEL_762F_
		ret
	
; 3rd entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7511_:	
		call _LABEL_389D_
		bit 7, (ix+18)
		ret nz
		ld a, (ix+3)
		cp $A0
		jr c, +
; 9th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7520_:	
		ld (ix+20), $00
		dec (ix+41)
		jp nz, _LABEL_7650_
		ld (ix+16), $05
		ld (ix+40), $1E
		call _LABEL_7662_
		xor a
		ld (_RAM_C1C0_), a
		ld a, $5E
		jp _LABEL_7656_
	
+:	
		ld (ix+16), $07
		ret
	
; 4th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7543_:	
		call _LABEL_75D6_
		dec (ix+40)
		ret nz
		ld a, $A0
		ld (_RAM_DE03_), a
		ld (ix+16), $04
		ld a, $5C
		jp _LABEL_7656_
	
; 5th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7558_:	
		call _LABEL_75D6_
		ld a, (ix+14)
		or a
		ret nz
		jp _LABEL_7650_
	
; 6th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7563_:	
		ld (ix+20), $00
		dec (ix+40)
		ret nz
		ld a, $A2
		ld (_RAM_DE03_), a
		ld (ix+16), $06
		ld (ix+40), $1E
		ld a, $5F
		jp _LABEL_7656_
	
; 7th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_757D_:	
		ld (ix+20), $00
		dec (ix+40)
		ret nz
		ld hl, _RAM_C000_
		set 1, (hl)
		ld c, $06
		call _LABEL_7BD9_
		jp _LABEL_39BB_
	
; 8th entry of Jump Table from 75C4 (indexed by unknown)	
_LABEL_7592_:	
		ld e, (ix+8)
		ld d, (ix+9)
		ld l, (ix+2)
		ld h, (ix+3)
		add hl, de
		ld (ix+2), l
		ld (ix+3), h
		push hl
		ld h, $00
		ld l, (ix+19)
		add hl, de
		ld (ix+8), l
		ld (ix+9), h
		pop hl
		ld a, h
		cp $A0
		ret c
		ld (ix+2), $00
		ld (ix+3), $A0
		ld (ix+16), $08
		ret
	
; Jump Table from 75C4 to 75D5 (9 entries, indexed by unknown)	
_DATA_75C4_:	
	.dw _LABEL_74EF_ _LABEL_7507_ _LABEL_7511_ _LABEL_7543_ _LABEL_7558_ _LABEL_7563_ _LABEL_757D_ _LABEL_7592_
	.dw _LABEL_7520_
	
_LABEL_75D6_:	
		ld a, (ix+20)
		ld (ix+20), $00
		and $A0
		cp $A0
		ret nz
		ld a, $5D
		call _LABEL_7656_
		call _LABEL_7BE2_
		ld (ix+18), $A0
		ld (ix+10), $80
		ld (ix+11), $00
		ld (ix+8), $00
		ld (ix+9), $FD
		ld (ix+19), $20
		ld (ix+16), $02
		pop af
		ret
	
_LABEL_7608_:	
		dec (ix+43)
		ret nz
		ld (ix+43), $20
		ld a, (ix+7)
		cp $01
		jp z, _LABEL_767C_
		cp $FF
		jp z, _LABEL_766F_
		ld a, (_RAM_C1C6_)
		add a, $28
		jr nc, +
		ld a, $FF
+:	
		cp (ix+6)
		jp c, _LABEL_767C_
		jp _LABEL_766F_
	
_LABEL_762F_:	
		ld a, (_RAM_C1C6_)
		add a, $28
		jr nc, +
		ld a, $FF
+:	
		cp (ix+6)
		ret nz
		ld a, $5A
		call _LABEL_7656_
		call _LABEL_7662_
		ld (ix+16), $03
		ld (ix+40), $28
		ret
	
_LABEL_764D_:	
		call _LABEL_767C_
_LABEL_7650_:	
		ld (ix+16), $01
		ld a, $5B
_LABEL_7656_:	
		ld (ix+1), a
		ld (ix+13), $00
		ld (ix+14), $00
		ret
	
_LABEL_7662_:	
		ld (ix+18), $20
		ld (ix+10), $00
		ld (ix+11), $00
		ret
	
_LABEL_766F_:	
		ld (ix+18), $20
		ld (ix+10), $80
		ld (ix+11), $00
		ret
	
_LABEL_767C_:	
		ld (ix+18), $21
		ld (ix+10), $80
		ld (ix+11), $FF
		ret
	
_LABEL_7689_:	
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ret
	
_LABEL_7693_:	
		ld hl, _LABEL_772E_	; Overriding return address
		push hl
		ld hl, _RAM_C6B0_
		bit 7, (hl)
		ret z
		inc hl
		dec (hl)
		ret p
		ld (hl), $02
		inc hl
		ld a, (hl)
		inc a
		cp $03
		jr c, +
		xor a
+:	
		ld (hl), a
		ex af, af'
		ld a, (_RAM_C6B0_)
		bit 6, a
		ret nz
		ex af, af'
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_775D_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		ld de, _RAM_C6BA_
		ld bc, $003A
		ldir
		xor a
		ld (_RAM_C6B3_), a
		ld hl, (_RAM_C713_)
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		ld a, $40
		cp l
		ret c
		ld de, _DATA_7811_
		add hl, de
		ld a, (hl)
		sub $1D
		jp c, +
		jp z, +
		ld (_RAM_C6B3_), a
		sub $1D
		ret nc
		neg
		ld (_RAM_C6B4_), a
		jp ++
	
+:	
		ld a, (hl)
		or a
		ret z
		ld (_RAM_C6B4_), a
++:	
		ld a, (_RAM_C6B5_)
		ld h, a
		ld l, $00
		srl h
		rr l
		srl h
		rr l
		ld de, $3880
		add hl, de
		ld a, (_RAM_C6B3_)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		call _LABEL_101C_
		ld hl, _RAM_C6BA_
		add hl, de
		ld a, (_RAM_C6B4_)
		add a, a
		ld b, a
		ld c, Port_VDPData
-:	
		outi
		ex (sp), hl
		ex (sp), hl
		jr nz, -
		ret
	
_LABEL_772E_:	
		ld a, (_RAM_C6B0_)
		bit 0, a
		ret z
		ld hl, _RAM_C6B9_
		dec (hl)
		ret nz
		ld (hl), $04
		dec hl
		ld a, (hl)
		cp $02
		jp z, +
		inc (hl)
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_7851_
		add hl, de
		ex de, hl
		ld hl, (_RAM_C6B6_)
		ld bc, $0202
		jp _LABEL_105A_
	
+:	
		ld hl, _RAM_C6B0_
		res 0, (hl)
		ret
	
; Pointer Table from 775D to 7762 (3 entries, indexed by _RAM_C6B2_)	
_DATA_775D_:	
	.dw _DATA_7763_ _DATA_779D_ _DATA_77D7_
	
; 1st entry of Pointer Table from 775D (indexed by _RAM_C6B2_)	
; Data from 7763 to 779C (58 bytes)	
_DATA_7763_:	
	.db $80 $00 $81 $00 $82 $00 $83 $00 $84 $00 $85 $00 $86 $00 $87 $00
	.db $88 $00 $89 $00 $8A $00 $8B $00 $8C $00 $8D $00 $8E $00 $8D $02
	.db $8C $02 $8B $02 $8A $02 $89 $02 $88 $02 $87 $02 $86 $02 $85 $02
	.db $84 $02 $83 $02 $82 $02 $81 $02 $80 $02
	
; 2nd entry of Pointer Table from 775D (indexed by _RAM_C6B2_)	
; Data from 779D to 77D6 (58 bytes)	
_DATA_779D_:	
	.db $8F $00 $90 $00 $91 $00 $92 $00 $93 $00 $94 $00 $95 $00 $96 $00
	.db $97 $00 $98 $00 $99 $00 $9A $00 $9B $00 $9C $00 $9D $00 $9C $02
	.db $9B $02 $9A $02 $99 $02 $98 $02 $97 $02 $96 $02 $95 $02 $94 $02
	.db $93 $02 $92 $02 $91 $02 $90 $02 $8F $02
	
; 3rd entry of Pointer Table from 775D (indexed by _RAM_C6B2_)	
; Data from 77D7 to 7810 (58 bytes)	
_DATA_77D7_:	
	.db $9E $00 $9F $00 $A0 $00 $A1 $00 $A2 $00 $A3 $00 $A4 $00 $A5 $00
	.db $A6 $00 $A7 $00 $A8 $00 $A9 $00 $AA $00 $AB $00 $AC $00 $AB $02
	.db $AA $02 $A9 $02 $A8 $02 $A7 $02 $A6 $02 $A5 $02 $A4 $02 $A3 $02
	.db $A2 $02 $A1 $02 $A0 $02 $9F $02 $9E $02
	
; Data from 7811 to 7850 (64 bytes)	
_DATA_7811_:	
	.db $00 $01 $02 $03 $04 $05 $06 $07 $08 $09 $0A $0B $0C $0D $0E $0F
	.db $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $1A $1B $1C $1D $1D $1D
	.db $1E $1F $20 $21 $22 $23 $24 $25 $26 $27 $28 $29 $2A $2B $2C $2D
	.db $2E $2F $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $3A $3B $3C $3D
	
; Data from 7851 to 7860 (16 bytes)	
_DATA_7851_:	
	.db $AD $00 $AE $00 $AF $00 $B0 $00 $74 $01 $75 $01 $79 $01 $7A $01
	
; 106th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7861_:	
		ld (ix+7), $01
		ld (ix+12), $19
		ld a, $80
		ld (_RAM_C6B0_), a
		ld a, $01
		ld (_RAM_C6B5_), a
		ld (ix+0), $6D
		ld (ix+40), $84
		ld (ix+41), $03
		ld (ix+45), $08
		ld (ix+21), $60
		ret
	
; 109th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7888_:	
		bit 7, (ix+20)
		jp nz, _LABEL_79ED_
		call _LABEL_37A9_
		call _LABEL_7A3E_
		ld (ix+10), $00
		ld (ix+11), $00
		ld l, (ix+40)
		ld h, (ix+41)
		dec hl
		ld (ix+40), l
		ld (ix+41), h
		ld a, h
		or l
		jp nz, +
		ld (ix+40), $84
		ld (ix+41), $03
		ld (ix+44), $10
		ld (ix+16), $02
		jp _LABEL_7A85_
	
+:	
		ld a, (ix+16)
		dec a
		jp z, _LABEL_7953_
		dec a
		jp z, _LABEL_79E4_
		dec a
		jp z, _LABEL_7926_
		ld a, (ix+7)
		cp $01
		jp z, +++
		cp $FF
		jp z, +
		ld a, (ix+6)
		cp $B0
		jp nc, ++++
		jp ++
	
+:	
		ld a, (ix+6)
		cp $D0
		jp c, +++
++:	
		call _LABEL_7A70_
		jp nc, +++
		ld (ix+16), $01
+++:	
		ld a, (ix+7)
		cp $01
		jp z, +++++
		cp $FF
		jp z, ++++++
		ld a, (_RAM_C1C6_)
		sub (ix+6)
		push af
		jr nc, +
		neg
+:	
		cp $10
		jp c, +
		pop af
		jp c, +++++
		jp ++++++
	
+:	
		pop af
		ret
	
++++:	
		ld (ix+16), $03
		ret
	
_LABEL_7926_:	
		ld a, (ix+6)
		cp $70
		jp nc, +++++
		ld (ix+16), $00
		ret
	
+++++:	
		ld hl, $0080
		ld (_RAM_C70C_), hl
		ld hl, $FF80
		ld (ix+10), l
		ld (ix+11), h
		ret
	
++++++:	
		ld hl, $FF80
		ld (_RAM_C70C_), hl
		ld hl, $0080
		ld (ix+10), l
		ld (ix+11), h
		ret
	
_LABEL_7953_:	
		ld e, (ix+43)
		ld d, $00
		ld hl, $7B25
		add hl, de
		ld a, (ix+3)
		cp (hl)
		jp nz, _LABEL_79D4_
		ld a, (ix+42)
		or a
		jp nz, ++
		ld a, e
		cp $00
		jr nz, +
		ld e, $02
		ld a, (ix+42)
		cpl
		ld (ix+42), a
+:	
		dec e
		ld (ix+43), e
		jp +++
	
++:	
		ld a, e
		cp $02
		jr nz, +
		ld e, $00
		ld a, (ix+42)
		cpl
		ld (ix+42), a
+:	
		inc e
		ld (ix+43), e
+++:	
		call _LABEL_7A70_
		ret nc
		ld h, (ix+4)
		ld l, (ix+3)
		ld de, $0050
		add hl, de
		xor a
		ld de, $00B0
		sbc hl, de
		push hl
		ld h, (ix+7)
		ld l, (ix+6)
		ld de, $0050
		add hl, de
		ld (iy+6), l
		pop hl
		ld a, $18
		add a, l
		ld (iy+3), a
		ld (iy+4), $00
		ld (iy+7), $00
		ld (iy+0), $6E
		ld hl, _RAM_C700_
		set 6, (hl)
		ld (ix+16), $02
		ld (ix+44), $10
		ret
	
_LABEL_79D4_:	
		ld hl, $0100
		ld a, (ix+42)
		or a
		jr z, +
		ld hl, $FF00
+:	
		ld (_RAM_C715_), hl
		ret
	
_LABEL_79E4_:	
		dec (ix+44)
		ret nz
		ld (ix+16), $00
		ret
	
_LABEL_79ED_:	
		ld a, $A5
		ld (_RAM_DE03_), a
		res 7, (ix+20)
		dec (ix+45)
		ret nz
		ld (ix+0), $93
		xor a
		ld (_RAM_C1C0_), a
		ld (ix+8), a
		ld (ix+9), a
		ld (ix+10), a
		ld (ix+11), a
		push ix
		ld ix, _RAM_C340_
		ld b, $03
-:	
		push bc
		ld a, (ix+0)
		or a
		jr z, +
		ld a, (ix+20)
		and $83
		cp $83
		jr z, +
		ld (ix+0), $66
		ld c, $04
		call _LABEL_7BD9_
+:	
		pop bc
		ld de, $0030
		add ix, de
		djnz -
		pop ix
		ld c, $06
		jp _LABEL_7BD9_
	
_LABEL_7A3E_:	
		ld a, (ix+4)
		cp $FF
		ret z
		ld h, a
		ld l, (ix+3)
		ld de, $00B0
		xor a
		sbc hl, de
		jr c, +
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		ld a, l
		cp $14
		jr nc, +
		ld (_RAM_C6B5_), a
		ld hl, _RAM_C6B0_
		res 6, (hl)
		ret
	
+:	
		ld hl, _RAM_C6B0_
		set 6, (hl)
		ret
	
_LABEL_7A70_:	
		ld iy, _RAM_C340_
		ld de, $0030
		ld b, $03
-:	
		ld a, (iy+0)
		or a
		scf
		ret z
		add iy, de
		djnz -
		xor a
		ret
	
_LABEL_7A85_:	
		ld a, (_RAM_C460_)
		or a
		ret nz
		ld a, (_RAM_C490_)
		or a
		ret nz
		ld h, (ix+4)
		ld l, (ix+3)
		ld de, $0060
		add hl, de
		xor a
		ld de, $00B0
		sbc hl, de
		ld a, l
		ld (ix+28), a
		ret c
		srl h
		rr l
		srl h
		rr l
		srl h
		rr l
		ld a, l
		cp $13
		ret nc
		ld c, a
		ld h, (ix+7)
		ld l, (ix+6)
		ld de, $0070
		add hl, de
		ld a, h
		or a
		ret nz
		ld a, l
		ld (ix+29), a
		cp $08
		ret c
		cp $F8
		ret nc
		ld a, (_RAM_C70F_)
		neg
		add a, l
		and $F8
		rrca
		rrca
		ld e, a
		ld d, $00
		ld h, c
		ld l, $00
		srl h
		rr l
		srl h
		rr l
		add hl, de
		ld de, $3880
		add hl, de
		ld (_RAM_C6B6_), hl
		ld a, (ix+28)
		add a, $18
		ld (_RAM_C463_), a
		add a, $08
		ld (_RAM_C493_), a
		ld a, (ix+29)
		add a, $F8
		ld (_RAM_C466_), a
		ld (_RAM_C496_), a
		ld a, $6B
		ld (_RAM_C460_), a
		ld a, $6C
		ld (_RAM_C490_), a
		xor a
		ld (_RAM_C467_), a
		ld (_RAM_C497_), a
		ld hl, _RAM_C6B0_
		set 0, (hl)
		ld a, $00
		ld (_RAM_C6B8_), a
		ld a, $01
		ld (_RAM_C6B9_), a
		ret
	
	; Data from 7B25 to 7B27 (3 bytes)
	.db $80 $B0 $D8
	
; 147th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7B28_:	
		call +
		ld hl, $FF80
		ld (_RAM_C715_), hl
		call _LABEL_37A9_
		call _LABEL_7A3E_
		ld a, (ix+4)
		cp $01
		ret nz
		ld a, (ix+3)
		cp $58
		ret c
		xor a
		ld (_RAM_C6B0_), a
		ld hl, _RAM_C000_
		set 1, (hl)
		ret
	
+:	
		ld hl, _RAM_C691_
		dec (hl)
		ret p
		ld (hl), $04
		exx
		ld hl, $C1C0
		ld de, $0030
		ld b, $03
-:	
		add hl, de
		ld a, (hl)
		or a
		jr z, +
		djnz -
		ret
	
+:	
		push hl
		pop iy
		exx
		inc hl
		inc (hl)
		ld a, (hl)
		cp $08
		jr c, +
		xor a
		ld (hl), a
+:	
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_7BA5_
		add hl, de
		ld d, (hl)
		inc hl
		ld e, (hl)
		xor a
		ld a, (ix+3)
		add a, d
		ld (iy+3), a
		cp $F0
		ret nc
		ld a, (ix+4)
		adc a, $FF
		ld (iy+4), a
		xor a
		ld a, (ix+6)
		add a, e
		ld (iy+6), a
		ld a, (ix+7)
		adc a, $00
		ld (iy+7), a
		ld (iy+0), $94
		ret
	
; Data from 7BA5 to 7BB4 (16 bytes)	
_DATA_7BA5_:	
	.db $B8 $10 $98 $30 $A0 $78 $78 $70 $78 $A8 $98 $C0 $B0 $50 $C8 $88
	
; 148th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7BB5_:	
		ld a, (ix+16)
		dec a
		jp z, +
		ld (ix+16), $01
		ld (ix+12), $19
		ld (ix+1), $56
		ld a, $A3
		ld (_RAM_DE03_), a
		ret
	
+:	
		call _LABEL_37A9_
		ld a, (ix+14)
		or a
		ret nz
		jp _LABEL_39BB_
	
_LABEL_7BD9_:	
		ld a, $02
		ld (_RAM_FFFF_), a
		ld a, c
		jp _LABEL_B28B_
	
_LABEL_7BE2_:	
		ld a, $B1
		ld (_RAM_DE03_), a
		ret
	
; 146th entry of Jump Table from 5453 (indexed by unknown)	
_LABEL_7BE8_:	
		bit 0, (ix+16)
		jp nz, ++
		set 0, (ix+16)
		ld hl, $004C
		ld a, (_RAM_C017_)
		or a
		jr nz, +
		ld hl, (_RAM_C092_)
		ld h, $00
		add hl, hl
		add hl, hl
+:	
		ld de, _DATA_7C55_
		add hl, de
		ld a, (hl)
		ld (ix+1), a
		inc hl
		ld a, (hl)
		ld (ix+6), a
		inc hl
		ld a, (hl)
		ld (ix+3), a
		xor a
		ld (ix+5), a
		ld (ix+7), a
		ld (ix+2), a
		ld (ix+4), a
		ld (ix+26), a
++:	
		ld a, (_RAM_C604_)
		cpl
		ld d, a
		ld a, (_RAM_C603_)
		and d
		and $20
		jr nz, +
		res 7, (ix+25)
		ld a, (ix+26)
		inc a
		ld (ix+26), a
		cp $00
		jr z, +
		and $01
		ret nz
		ld a, (_RAM_C017_)
		or a
		ret nz
		set 7, (ix+25)
		ret
	
+:	
		xor a
		ld (_RAM_C017_), a
		jp _LABEL_39BB_
	
; Data from 7C55 to 7CBB (103 bytes)	
_DATA_7C55_:	
	.db $AC $68 $80 $00 $AC $88 $80 $00 $AB $A0 $98 $00 $AC $48 $90 $00
	.db $AB $6C $88 $00 $AC $84 $88 $00 $AB $A4 $88 $00 $AD $50 $88 $00
	.db $AE $70 $90 $00 $AC $8C $A0 $00 $AB $A8 $A0 $00 $AD $4C $88 $00
	.db $AC $70 $8C $00 $AC $88 $8C $00 $AC $A0 $88 $00 $AF $50 $6C $00
	.db $AD $64 $9C $00 $B0 $80 $8C $00 $B1 $90 $70 $00 $B2 $78 $30 $00
	.dsb 23, $FF
	
; 1st entry of Pointer Table from 233A4 (indexed by unknown)	
; Data from 7CBC to 7F29 (622 bytes)	
_DATA_7CBC_:	
	.dsb 622, $FF
	
; 1st entry of Pointer Table from 27384 (indexed by unknown)	
; Data from 7F2A to 7FEF (198 bytes)	
_DATA_7F2A_:	
	.dsb 198, $FF
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 7FF0 to 7FFE (15 bytes)
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $4D $D2 $09 $70 $01
	
; 2nd entry of Pointer Table from 273E4 (indexed by unknown)	
; Data from 7FFF to 7FFF (1 bytes)	
_DATA_7FFF_:	
	.db $40
	
.BANK 2	
.ORG $0000	
	
; Data from 8000 to 822F (560 bytes)	
_DATA_8000_:	
	.db $07 $00 $1C $03 $30 $0F $60 $1F $41 $3E $C6 $39 $84 $7B $88 $77
	.db $FF $00 $00 $FF $00 $FF $00 $FF $FF $00 $00 $FF $00 $FF $00 $FF
	.db $E1 $00 $26 $C1 $2C $C3 $30 $CF $F0 $0F $21 $DE $21 $DE $22 $DD
	.db $FF $00 $00 $FF $00 $FF $00 $FF $7F $80 $80 $7F $00 $FF $00 $FF
	.db $F8 $00 $09 $F0 $0B $F0 $0E $F1 $FC $03 $0C $F3 $08 $F7 $08 $F7
	.db $7F $00 $C0 $3F $00 $FF $00 $FF $1F $E0 $60 $9F $40 $BF $80 $7F
	.db $FE $00 $02 $FC $02 $FC $02 $FC $FE $00 $02 $FC $02 $FC $02 $FC
	.db $03 $00 $0E $01 $08 $07 $18 $07 $11 $0E $31 $0E $22 $1D $22 $1D
	.db $F0 $00 $3D $C0 $0F $F0 $0E $F1 $C6 $39 $46 $B9 $22 $DD $23 $DC
	.db $78 $00 $86 $78 $7B $84 $8D $72 $B5 $4A $8D $72 $B5 $4A $7A $84
	.db $88 $77 $88 $77 $84 $7B $C6 $39 $41 $3E $60 $1F $30 $0F $0C $03
	.db $FF $00 $07 $F8 $01 $FE $00 $FF $F0 $0F $0C $F3 $04 $FB $02 $FD
	.db $E2 $1D $E2 $1D $E2 $1D $E2 $1D $63 $9C $62 $9D $22 $DD $22 $DD
	.db $1F $E0 $00 $FF $00 $FF $00 $FF $FF $00 $00 $FF $00 $FF $00 $FF
	.db $F8 $07 $18 $E7 $18 $E7 $18 $E7 $F8 $07 $18 $E7 $18 $E7 $18 $E7
	.db $8F $70 $88 $77 $88 $77 $88 $77 $8F $70 $88 $77 $88 $77 $88 $77
	.db $FE $00 $02 $FC $02 $FC $02 $FC $E2 $1C $22 $DC $23 $DC $23 $DC
	.db $62 $1D $44 $3B $44 $3B $C4 $3B $88 $77 $88 $77 $88 $77 $11 $EE
	.db $23 $DC $11 $EE $11 $EE $11 $EE $88 $77 $88 $77 $88 $77 $C4 $3B
	.db $86 $78 $78 $00 $00 $00 $80 $00 $80 $00 $80 $00 $C0 $00 $40 $80
	.db $FF $00 $80 $7F $80 $7F $80 $7F $FF $00 $80 $7F $80 $7F $80 $7F
	.db $F2 $0D $02 $FD $04 $FB $0C $F3 $F0 $0F $00 $FF $01 $FE $07 $F8
	.db $22 $DD $22 $DD $21 $DE $71 $8E $70 $8F $D8 $07 $8C $03 $07 $00
	.db $1F $E0 $00 $FF $00 $FF $80 $7F $7F $80 $00 $FF $00 $FF $00 $FF
	.db $F8 $07 $08 $F7 $08 $F7 $0C $F3 $FC $03 $0E $F1 $0B $F0 $09 $F0
	.db $8E $71 $80 $7F $40 $BF $60 $9F $1F $E0 $00 $FF $00 $FF $C0 $3F
	.db $23 $DC $23 $DC $22 $DD $22 $DD $E0 $1F $00 $FF $00 $FF $00 $FF
	.db $11 $EE $10 $EF $20 $DF $20 $DF $3F $C0 $60 $9F $60 $9F $60 $9F
	.db $C4 $3B $04 $FB $02 $FD $02 $FD $FE $01 $00 $FF $00 $FF $00 $FF
	.db $40 $80 $40 $80 $60 $80 $20 $C0 $20 $C0 $20 $C0 $20 $C0 $20 $C0
	.db $FF
	.dsb 15, $00
	.db $F8
	.dsb 15, $00
	.db $01
	.dsb 15, $00
	.db $7F
	.dsb 15, $00
	.db $E0
	.dsb 15, $00
	
; Data from 8230 to 8257 (40 bytes)	
_DATA_8230_:	
	.db $61 $62 $63 $64 $65 $66 $67 $68 $69 $6A $6B $6C $6D $6E $6F $70
	.db $71 $72 $73 $74 $75 $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $80
	.db $81 $7F $80 $82 $7F $7F $7F $83
	
; Data from 8258 to 8394 (317 bytes)	
_DATA_8258_:	
	.db $7F $00 $7F $00 $4A $00 $00 $09 $00 $81 $3C $05 $66 $84 $3C $00
	.db $18 $38 $04 $18 $AC $3C $00 $3C $66 $06 $0C $18 $30 $7E $00 $3C
	.db $66 $06 $1C $06 $66 $3C $00 $0C $1C $34 $64 $64 $7E $04 $00 $7E
	.db $60 $7C $66 $06 $66 $3C $00 $3C $66 $60 $7C $66 $66 $3C $00 $7E
	.db $66 $02 $0C $03 $18 $AA $00 $3C $66 $66 $3C $66 $66 $3C $00 $3C
	.db $66 $66 $3E $06 $66 $3C $00 $18 $3C $66 $66 $7E $66 $66 $00 $7C
	.db $66 $66 $7C $66 $66 $7C $00 $3C $66 $66 $60 $66 $66 $3C $00 $7C
	.db $05 $66 $8E $7C $00 $7E $60 $60 $7C $60 $60 $7E $00 $7E $60 $60
	.db $7C $03 $60 $89 $00 $3C $66 $60 $6E $66 $66 $3C $00 $03 $66 $81
	.db $7E $03 $66 $82 $00 $3C $05 $18 $83 $3C $00 $3E $04 $0C $8B $6C
	.db $38 $00 $66 $6C $78 $78 $7C $6E $66 $00 $06 $60 $86 $7E $00 $C6
	.db $EE $FE $D6 $03 $C6 $84 $00 $66 $66 $76 $02 $6E $02 $66 $82 $00
	.db $3C $05 $66 $86 $3C $00 $7C $66 $66 $7C $03 $60 $82 $00 $3C $03
	.db $66 $88 $6E $66 $3F $00 $7C $66 $66 $7C $03 $66 $8A $00 $3C $66
	.db $60 $3C $06 $66 $3C $00 $7E $06 $18 $81 $00 $06 $66 $82 $3C $00
	.db $04 $62 $84 $76 $3C $18 $00 $03 $C6 $02 $D6 $02 $6C $8C $00 $66
	.db $66 $3C $18 $3C $66 $66 $00 $66 $66 $3C $04 $18 $88 $00 $7E $06
	.db $0C $18 $30 $60 $7E $02 $00 $02 $18 $81 $7E $03 $18 $04 $00 $81
	.db $7C $07 $00 $02 $60 $82 $20 $40 $05 $00 $02 $60 $81 $00 $00 $7F
	.db $00 $7F $00 $4A $00 $00 $7F $00 $7F $00 $4A $00 $00
	
; Data from 8395 to 86AF (795 bytes)	
_DATA_8395_:	
	.db $29 $00 $E2 $3F $40 $40 $42 $40 $42 $40 $00 $FC $02 $82 $42 $82
	.db $42 $82 $42 $40 $42 $40 $42 $40 $3F $00 $42 $82 $42 $82 $C2 $02
	.db $FC $00 $00 $3F $40 $41 $40 $42 $40 $42 $00 $FC $02 $82 $02 $42
	.db $02 $42 $44 $40 $48 $40 $48 $40 $3F $00 $22 $02 $12 $02 $12 $02
	.db $FC $00 $00 $3F $40 $40 $41 $42 $48 $59 $00 $FC $02 $02 $82 $72
	.db $02 $82 $54 $52 $51 $48 $47 $40 $3F $00 $62 $02 $8A $72 $02 $02
	.db $FC $00 $00 $3F $40 $02 $43 $9E $47 $4F $53 $00 $FC $02 $C2 $D2
	.db $E2 $F2 $EA $47 $4F $4F $4A $5E $40 $3F $00 $E2 $F2 $F2 $52 $7A
	.db $02 $FC $00 $00 $3F $40 $02 $41 $02 $43 $94 $47 $00 $FC $02 $E2
	.db $C2 $82 $02 $F2 $40 $40 $41 $43 $42 $40 $3F $00 $E2 $C2 $82 $03
	.db $02 $86 $FC $00 $00 $3F $40 $47 $02 $4C $02 $5A $8B $00 $FC $02
	.db $02 $82 $42 $22 $A2 $5E $4F $43 $03 $40 $B4 $3F $00 $92 $D2 $EA
	.db $7A $02 $02 $FC $00 $00 $3F $40 $4F $4E $47 $46 $43 $00 $FC $02
	.db $32 $72 $22 $E2 $42 $42 $43 $42 $47 $46 $40 $3F $00 $C2 $42 $C2
	.db $22 $62 $02 $FC $00 $18 $3C $2C $04 $08 $24 $56 $6A $1F $67 $04
	.db $E7 $86 $61 $1F $FF $21 $27 $21 $03 $27 $89 $FF $F0 $0C $3E $0E
	.db $3E $3E $0C $F0 $20 $00 $00 $92 $00 $3C $66 $60 $3C $06 $66 $3C
	.db $00 $3C $66 $66 $60 $66 $66 $3C $00 $3C $05 $66 $86 $3C $00 $7C
	.db $66 $66 $7C $03 $66 $EB $00 $7E $60 $60 $7C $60 $60 $7E $7F $C0
	.db $BF $BD $BA $BD $BA $BD $FE $03 $FD $BD $1D $BD $1D $BD $BA $BD
	.db $BA $BD $BB $BF $C0 $7F $1D $BD $1D $BD $9D $FD $03 $FE $7F $C0
	.db $BF $BE $BF $BD $BF $BD $FE $03 $FD $7D $FD $BD $FD $BD $BB $BF
	.db $B7 $BF $B7 $BF $C0 $7F $DD $FD $ED $FD $ED $FD $03 $FE $7F $C0
	.db $BF $BC $B8 $B9 $B0 $A2 $FE $03 $FD $7D $0D $8D $3D $0D $A1 $A4
	.db $A6 $B3 $B8 $BF $C0 $7F $85 $65 $05 $8D $FD $FD $03 $FE $7F $C0
	.db $BF $02 $BC $9D $B8 $B0 $AC $FE $03 $FD $3D $2D $1D $0D $15 $B8
	.db $B0 $B0 $B5 $A1 $BF $C0 $7F $1D $0D $0D $AD $85 $FD $03 $FE $7F
	.db $C0 $03 $BF $02 $BE $89 $BC $FE $03 $FD $9D $3D $7D $FD $6D $03
	.db $BF $88 $BE $BD $BF $C0 $7F $5D $BD $7D $03 $FD $86 $03 $FE $7F
	.db $C0 $BF $B8 $02 $B3 $02 $A5 $8B $FE $03 $FD $FD $7D $BD $DD $5D
	.db $A1 $B0 $BC $03 $BF $AB $C0 $7F $6D $2D $15 $85 $FD $FD $03 $FE
	.db $7F $C0 $BF $B0 $B1 $B8 $B9 $BC $FE $03 $FD $CD $8D $DD $1D $BD
	.db $BD $BC $BD $B8 $B9 $BF $C0 $7F $3D $BD $3D $DD $9D $FD $03 $FE
	.db $18 $03 $3C $85 $18 $24 $56 $6E $00 $05 $18 $86 $1E $00 $00 $DE
	.db $D8 $DE $03 $D8 $02 $00 $86 $F0 $C0 $F0 $C0 $C0 $F0 $0A $00 $06
	.db $0E $02 $00 $06 $EE $09 $00 $00 $2B $00 $85 $02 $07 $02 $07 $02
	.db $03 $00 $8A $C0 $A0 $C0 $A0 $C0 $07 $02 $07 $02 $06 $03 $00 $85
	.db $A0 $C0 $A0 $C0 $A0 $4E $00 $8A $C0 $90 $60 $30 $C8 $00 $00 $03
	.db $02 $06 $03 $00 $85 $60 $30 $30 $10 $18 $06 $00 $02 $01 $02 $02
	.db $81 $04 $03 $00 $81 $80 $03 $00 $85 $60 $00 $00 $01 $02 $04 $00
	.db $82 $40 $80 $0A $00 $02 $04 $02 $0A $07 $00 $83 $80 $0A $01 $06
	.db $00 $83 $80 $40 $20 $08 $00 $85 $07 $00 $03 $00 $01 $03 $00 $81
	.db $20 $05 $00 $84 $01 $00 $03 $02 $0D $00 $88 $08 $04 $08 $18 $28
	.db $12 $1F $67 $04 $E7 $86 $61 $1F $FF $21 $27 $21 $03 $27 $8A $FF
	.db $F0 $0C $3E $0E $3E $3E $0C $F0 $00 $06 $EE $02 $00 $06 $E0 $11
	.db $00 $00 $2B $00 $85 $02 $05 $02 $05 $02 $03 $00 $8A $40 $A0 $40
	.db $A0 $40 $05 $02 $05 $02 $04 $03 $00 $85 $A0 $40 $A0 $40 $20 $26
	.db $00 $85 $03 $06 $04 $07 $04 $03 $00 $89 $80 $70 $00 $C0 $70 $0A
	.db $09 $08 $04 $04 $00 $83 $18 $98 $70 $7F $00 $0B $00 $82 $18 $08
	.db $1A $00 $06 $EE $02 $00 $06 $E0 $11 $00 $00
	
; Pointer Table from 86B0 to 86D5 (19 entries, indexed by _RAM_C092_)	
_DATA_86B0_:	
	.dw _DATA_86D6_ _DATA_8710_ _DATA_86D6_ _DATA_8742_ _DATA_8774_ _DATA_87A6_ _DATA_87D8_ _DATA_87D8_
	.dw _DATA_8812_ _DATA_8844_ _DATA_86D6_ _DATA_8876_ _DATA_88A8_ _DATA_88DA_ _DATA_86D6_ _DATA_890C_
	.dw _DATA_893E_ _DATA_8970_ _DATA_86D6_
	
; 1st entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 86D6 to 870F (58 bytes)	
_DATA_86D6_:	
	.db $00 $00 $00 $00 $00 $00 $3E $4C $36 $3A $5A $72 $92 $92
	.dsb 26, $00
	.db $8A $8A $00 $00 $00 $00 $92 $92
	.dsb 10, $00
	
; 2nd entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8710 to 8741 (50 bytes)	
_DATA_8710_:	
	.db $00 $00 $00 $00 $5A $6C $3E $4C $36 $3A $7E $96 $B6 $B6 $00 $00
	.db $DA $DA
	.dsb 22, $00
	.db $AE $AE $00 $00 $00 $00 $B6 $B6 $00 $00
	
; 4th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8742 to 8773 (50 bytes)	
_DATA_8742_:	
	.db $00 $00 $5A $68 $00 $00 $3E $4C $36 $3A $00 $00 $7E $7E $00 $00
	.db $00 $00 $A2 $B6
	.dsb 20, $00
	.db $76 $76 $00 $00 $00 $00 $7E $7E $00 $00
	
; 5th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8774 to 87A5 (50 bytes)	
_DATA_8774_:	
	.db $00 $00 $00 $4C $00 $00 $3E $00 $36 $3A $00 $00 $8A $AE $00 $00
	.db $00 $00 $5A $6E
	.dsb 10, $00
	.db $D2 $E6 $00 $00 $00 $00 $00 $00 $00 $00 $82 $82 $00 $00 $00 $00
	.db $8A $AE $00 $00
	
; 6th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 87A6 to 87D7 (50 bytes)	
_DATA_87A6_:	
	.db $00 $00 $00 $00 $3E $50 $00 $00 $36 $3A $00 $00 $6A $6A $8E $A6
	.dsb 24, $00
	.db $62 $62 $00 $00 $00 $00 $6A $6A $00 $00
	
; 7th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 87D8 to 8811 (58 bytes)	
_DATA_87D8_:	
	.db $00 $00 $5A $68 $00 $00 $3E $4C $36 $3A $00 $00 $7E $7E $00 $00
	.db $00 $00 $00 $00 $A4 $A4 $00 $00 $00 $00 $00 $00 $00 $00 $BE $D2
	.db $00 $00 $E6 $E6 $00 $00 $00 $00 $76 $76 $00 $00 $A2 $A2 $7E $7E
	.dsb 10, $00
	
; 9th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8812 to 8843 (50 bytes)	
_DATA_8812_:	
	.db $00 $00 $4C $00 $00 $00 $00 $3E $36 $3A $00 $00 $62 $86 $00 $00
	.db $C6 $C6 $00 $00 $AC $AC
	.dsb 18, $00
	.db $5A $5A $00 $00 $AA $AA $62 $86 $00 $00
	
; 10th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8844 to 8875 (50 bytes)	
_DATA_8844_:	
	.dsb 12, $00
	.db $3E $62
	.dsb 16, $00
	.db $BE $D2 $86 $A2 $E6 $E6 $00 $00 $00 $00 $36 $36 $00 $00 $00 $00
	.db $3E $62 $00 $00
	
; 12th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8876 to 88A7 (50 bytes)	
_DATA_8876_:	
	.dsb 12, $00
	.db $3E $3E $00 $00 $00 $00 $00 $00 $00 $00 $8E $A4 $00 $00 $62 $76
	.db $00 $00 $BA $CE $00 $00 $E2 $E2 $00 $00 $00 $00 $36 $36 $8A $8A
	.db $00 $00 $3E $3E $00 $00
	
; 13th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 88A8 to 88D9 (50 bytes)	
_DATA_88A8_:	
	.db $00 $00 $74 $00 $00 $00 $66 $00 $62 $00 $00 $00 $3E $3E
	.dsb 12, $00
	.db $82 $96 $00 $00 $00 $00 $AA $C6 $E2 $E2 $00 $00 $00 $00 $36 $36
	.db $00 $00 $00 $00 $3E $3E $00 $00
	
; 14th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 88DA to 890B (50 bytes)	
_DATA_88DA_:	
	.dsb 12, $00
	.db $3E $3E
	.dsb 10, $00
	.db $62 $6C $76 $8A $00 $00 $00 $00 $00 $00 $9E $9E $00 $00 $00 $00
	.db $36 $36 $00 $00 $00 $00 $3E $3E $00 $00
	
; 16th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 890C to 893D (50 bytes)	
_DATA_890C_:	
	.dsb 12, $00
	.db $3E $3E $00 $00 $00 $00 $00 $00 $00 $00 $66 $7C $00 $00 $00 $00
	.db $00 $00 $CA $DE $92 $AE $00 $00 $00 $00 $00 $00 $36 $36 $62 $62
	.db $00 $00 $3E $3E $00 $00
	
; 17th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 893E to 896F (50 bytes)	
_DATA_893E_:	
	.dsb 12, $00
	.db $3E $3E $00 $00 $00 $00 $00 $00 $00 $00 $66 $7C $00 $00 $00 $00
	.db $00 $00 $92 $A6 $00 $00 $BA $BA $D4 $D4 $EC $EC $36 $36 $62 $62
	.db $00 $00 $3E $3E $00 $00
	
; 18th entry of Pointer Table from 86B0 (indexed by _RAM_C092_)	
; Data from 8970 to 8AE1 (370 bytes)	
_DATA_8970_:	
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $62 $00 $00 $3E $3E $00 $00
	.db $00 $00 $00 $00 $00 $00 $7C $00 $00 $00 $00 $00 $92 $B2 $D2 $E6
	.db $00 $00 $00 $00 $00 $00 $00 $00 $36 $36 $78 $78 $00 $00 $3E $3E
	.db $00 $00 $48 $8C $4A $8C $4C $8C $4E $8C $55 $8C $5A $8C $5C $8C
	.db $5E $8C $60 $8C $68 $8C $70 $8C $78 $8C $80 $8C $88 $8C $8A $8C
	.db $8C $8C $8E $8C $90 $8C $92 $8C $94 $8C $9B $8C $A0 $8C $A2 $8C
	.db $A4 $8C $A6 $8C $AE $8C $B6 $8C $BE $8C $C6 $8C $CE $8C $D0 $8C
	.db $D2 $8C $D4 $8C $D6 $8C $D8 $8C $DA $8C $E1 $8C $E6 $8C $EE $8C
	.db $F6 $8C $FE $8C $00 $8D $02 $8D $09 $8D $0E $8D $16 $8D $1E $8D
	.db $26 $8D $2E $8D $36 $8D $3E $8D $46 $8D $4E $8D $56 $8D $5E $8D
	.db $66 $8D $6E $8D $76 $8D $7E $8D $86 $8D $8B $8D $90 $8D $95 $8D
	.db $9C $8D $9E $8D $A0 $8D $A5 $8D $A7 $8D $A9 $8D $AE $8D $B3 $8D
	.db $B8 $8D $BF $8D $C1 $8D $C3 $8D $C5 $8D $EB $8E $ED $8E $EF $8E
	.db $C7 $8D $CC $8D $D1 $8D $D3 $8D $D8 $8D $DA $8D $DF $8D $E1 $8D
	.db $E6 $8D $E8 $8D $ED $8D $EF $8D $F4 $8D $F6 $8D $FB $8D $FD $8D
	.db $02 $8E $04 $8E $09 $8E $0B $8E $10 $8E $12 $8E $14 $8E $19 $8E
	.db $1B $8E $20 $8E $22 $8E $24 $8E $26 $8E $28 $8E $2A $8E $2C $8E
	.db $2E $8E $30 $8E $35 $8E $37 $8E $3E $8E $40 $8E $45 $8E $47 $8E
	.db $49 $8E $4E $8E $3C $8E $55 $8E $57 $8E $5C $8E $71 $8E $73 $8E
	.db $78 $8E $50 $8E $8D $8E $92 $8E $97 $8E $99 $8E $9B $8E $9D $8E
	.db $9F $8E $A1 $8E $A6 $8E $AE $8E $B0 $8E $B5 $8E $BD $8E $BF $8E
	.db $C4 $8E $C6 $8E $CB $8E $CD $8E $D2 $8E $DB $8E $DD $8E $E2 $8E
	.db $F1 $8E $F7 $8E $D9 $8E $E9 $8E $63 $8E $65 $8E $6B $8E $7F $8E
	.db $81 $8E
	
; Data from 8AE2 to 91B5 (1748 bytes)	
_DATA_8AE2_:	
	.incbin "data/File00_08AE2_091B5.dat"
	
; Data from 91B6 to ACFF (6986 bytes)	
_DATA_91B6_:	
	.incbin "data/File01_091B6_0ACFF.dat"
	
_LABEL_AD00_:	
		bit 7, (ix+25)
		ret nz
		ld hl, (_RAM_C0A4_)
		ld d, $00
		ld e, (ix+12)
		add hl, de
		add hl, de
		bit 5, (ix+18)
		jr nz, +
		inc hl
+:	
		ld a, (hl)
		ld (_RAM_C61D_), a
		ld a, (_RAM_C607_)
		ld e, a
		ld d, $00
		ld a, (_RAM_C61A_)
		ld b, a
		add a, e
		cp $41
		ret nc
		ld (_RAM_C607_), a
		ld hl, $C140
		add hl, de
		add hl, de
		ld (_RAM_C609_), hl
		ld hl, $C100
		add hl, de
		ld de, (_RAM_C61B_)
		ex de, hl
_LABEL_AD3C_:	
		push de
		ld c, (ix+4)
		ld a, (ix+3)
		add a, (hl)
		bit 7, (hl)
		jr nz, +
		jr nc, ++
		inc c
		jr nz, ++++
		jr +++
	
+:	
		jr c, ++
		dec c
		jr nz, ++++
		cp $F0
		jr nc, ++++
		jr +++
	
++:	
		ex af, af'
		ld a, c
		or a
		jr nz, ++++
		ex af, af'
+++:	
		cp $D0
		jr nz, +++++
++++:	
		ld a, $D1
+++++:	
		ld (de), a
		ld (_RAM_C60B_), de
		inc hl
		ld c, (ix+7)
		ld a, (ix+6)
		add a, (hl)
		bit 7, (hl)
		jr z, +
		jr c, ++
		dec c
		jr z, +++++
		jp +++
	
+:	
		jr nc, ++
		inc c
		jr z, +++++
		jp +++
	
++:	
		ex af, af'
		ld a, c
		or a
		jr z, ++++
+++:	
		ld de, (_RAM_C60B_)
		ld a, $D1
		ld (de), a
++++:	
		ex af, af'
+++++:	
		ld de, (_RAM_C609_)
		ld (de), a
		inc hl
		inc de
		ld a, (_RAM_C61D_)
		add a, (hl)
		ld (de), a
		inc de
		ld (_RAM_C609_), de
		inc hl
		pop de
		inc de
		djnz _LABEL_AD3C_
		ret
	
; Data from ADAB to ADAE (4 bytes)	
_DATA_ADAB_:	
	.db $80 $A0 $A0 $80
	
_LABEL_ADAF_:	
		ld a, (_RAM_C700_)
		bit 3, a
		ret nz
		ld hl, _RAM_C649_
		ld a, (hl)
		inc a
		cp $04
		jr c, +
		xor a
+:	
		ld (hl), a
		dec a
		jp z, _LABEL_AE2E_
		dec a
		jp z, _LABEL_AF4E_
		dec a
		jp z, _LABEL_AE9E_
		ld ix, _RAM_C1C0_
		bit 7, (ix+20)
		ret nz
		ld a, $00
		ld (_RAM_C632_), a
		ld a, (ix+17)
		cp $03
		ret z
		ld hl, _DATA_B0D3_
		cp $01
		jr z, +
		ld hl, $B0F3
+:	
		ld e, $00
		ld d, e
		ld a, (_RAM_C0A6_)
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		bit 5, (ix+18)
		jr nz, +
		inc hl
		inc hl
		inc hl
		inc hl
+:	
		call _LABEL_B00B_
		ld hl, _DATA_B113_
		ld b, $07
-:	
		push hl
		push bc
		ld de, _DATA_B64E_
		call _LABEL_B029_
		pop bc
		pop hl
		or a
		jr nz, +
		inc hl
		inc hl
		djnz -
		ret
	
+:	
		ld a, (_RAM_C652_)
		bit 3, a
		jr z, +
		ld a, (iy+12)
		cp $11
		ret nz
+:	
		ld a, $01
		ld (_RAM_C632_), a
		ret
	
_LABEL_AE2E_:	
		ld ix, _RAM_C1C0_
		bit 7, (ix+20)
		ret nz
		ld a, (ix+21)
		or a
		ret z
		ld de, $B64E
		call _LABEL_B001_
		ld hl, _DATA_B121_
		ld b, $0E
--:	
		push hl
		push bc
		ld de, _DATA_B469_
		call _LABEL_B029_
		res 4, (iy+20)
		pop bc
		pop hl
		or a
		jr nz, +
-:	
		inc hl
		inc hl
		djnz --
		ret
	
+:	
		ex af, af'
		set 4, (iy+20)
		ld a, (iy+12)
		cp $18
		jr z, +
		ex af, af'
		bit 6, (ix+20)
		jp nz, -
		ld e, a
		ld d, $00
		ld hl, _DATA_ADAB_ - 1
		add hl, de
		ld a, (ix+20)
		and $41
		set 6, a
		or (hl)
		ld (ix+20), a
		ld hl, _DATA_B24E_
		ld e, (iy+12)
		ld d, $00
		add hl, de
		ld a, (hl)
		jp _LABEL_B314_
	
+:	
		ld a, (ix+0)
		cp $0A
		ret z
		cp $0B
		ret z
		set 7, (iy+20)
		ret
	
_LABEL_AE9E_:	
		ld ix, _RAM_C280_
		call +
		ld ix, _RAM_C2B0_
		call +
		ld ix, _RAM_C2E0_
+:	
		bit 7, (ix+20)
		ret nz
		ld a, (ix+0)
		or a
		ret z
		ld a, (ix+21)
		or a
		ret z
		ld de, $B469
		call _LABEL_B001_
		ld hl, _DATA_B113_
		ld b, $07
-:	
		push hl
		push bc
		ld de, _DATA_B64E_
		call _LABEL_B029_
		pop bc
		pop hl
		or a
		jr nz, +
		inc hl
		inc hl
		djnz -
		ret
	
+:	
		set 7, (ix+20)
		ld hl, _DATA_AF49_
		ld e, (ix+32)
		ld d, $00
		add hl, de
		ld a, (hl)
		ld (ix+0), a
		ld (ix+16), $00
		cp $16
		jr nz, +
		ld a, (iy+12)
		or a
		jr z, +
		cp $19
		jr z, +
		cp $1A
		jr z, +
		cp $1B
		jr z, +
		cp $1C
		jr nz, ++
+:	
		ld de, _DATA_B833_
		call _LABEL_B05D_
		or a
		jr nz, +++
++:	
		ld hl, _DATA_ADAB_ + 2
		bit 0, (ix+18)
		jr z, +
		inc hl
+:	
		ld a, (iy+20)
		and $43
		or (hl)
		ld (iy+20), a
		ld a, (ix+0)
		cp $16
		jp nz, _LABEL_B171_
		ld a, (iy+12)
		or a
		ret z
		cp $19
		ret z
		cp $1A
		ret z
		cp $1B
		ret z
		cp $1C
		ret z
		jp _LABEL_B1C5_
	
+++:	
		ld a, $A5
		ld (_RAM_DE03_), a
		ret
	
; Data from AF49 to AF4D (5 bytes)	
_DATA_AF49_:	
	.db $62 $62 $62 $16 $16
	
_LABEL_AF4E_:	
		ld ix, _RAM_C1C0_
		bit 7, (ix+20)
		ret nz
		ld a, (ix+17)
		cp $05
		ret nz
		ld a, (ix+21)
		or a
		ret z
		ld de, $B469
		call _LABEL_B001_
		ld hl, _DATA_B113_
		ld b, $07
-:	
		push hl
		push bc
		ld de, _DATA_B64E_
		call _LABEL_B029_
		pop bc
		pop hl
		or a
		jr nz, +
		inc hl
		inc hl
		djnz -
		ret
	
+:	
		ld hl, _DATA_ADAB_ + 2
		bit 0, (ix+18)
		jr z, +
		inc hl
+:	
		ld a, (iy+20)
		and $43
		or (hl)
		ld (iy+20), a
		ld a, (_RAM_C0A6_)
		cp $02
		jp c, _LABEL_B171_
		ld a, (iy+12)
		or a
		ret z
		cp $19
		ret z
		cp $1A
		ret z
		cp $1B
		ret z
		cp $1C
		ret z
		jp _LABEL_B1C5_
	
_LABEL_AFAE_:	
		ld hl, _RAM_C649_
		ld a, (hl)
		inc a
		cp $04
		jr c, +
		xor a
+:	
		ld (hl), a
		ld ix, _RAM_C460_
		dec a
		jp z, +
		ld ix, _RAM_C490_
		dec a
		jp z, +
		ld ix, _RAM_C4C0_
		dec a
		jp z, +
		ld ix, _RAM_C4F0_
+:	
		ld a, (ix+0)
		or a
		ret z
		ld a, (ix+21)
		or a
		ret z
		ld de, $B469
		call _LABEL_B001_
		ld hl, _DATA_B161_
		ld b, $08
-:	
		push hl
		push bc
		ld de, _DATA_B64E_
		call _LABEL_B029_
		pop bc
		pop hl
		or a
		jr nz, +
		inc hl
		inc hl
		djnz -
		ret
	
+:	
		set 7, (iy+20)
		ret
	
_LABEL_B001_:	
		ld l, a
		ld h, $00
		ld c, a
		ld b, h
		add hl, hl
		add hl, hl
		add hl, bc
		add hl, de
		inc hl
_LABEL_B00B_:	
		ld a, (ix+3)
		add a, (hl)
		ld (_RAM_C60D_), a
		inc hl
		add a, (hl)
		ld (_RAM_C60E_), a
		inc hl
		ld a, (ix+6)
		add a, (hl)
		ld (_RAM_C60F_), a
		inc hl
		add a, (hl)
		jr nc, +
		ld a, $FF
+:	
		ld (_RAM_C610_), a
		ret
	
_LABEL_B029_:	
		ld c, (hl)
		inc hl
		ld b, (hl)
		push bc
		pop iy
		set 4, (iy+18)
		ld a, $02
		and (ix+18)
		ld c, a
		ld a, $02
		and (iy+18)
		xor c
		jp nz, _LABEL_B0C8_
		res 4, (iy+18)
		ld a, (iy+7)
		or (iy+4)
		jp nz, _LABEL_B0C8_
		ld a, (iy+0)
		or a
		jp z, _LABEL_B0C8_
		bit 7, (iy+20)
		jp nz, _LABEL_B0C8_
_LABEL_B05D_:	
		ld a, (iy+21)
		or a
		jp z, _LABEL_B0C8_
		ld l, a
		ld h, $00
		ld c, a
		ld b, h
		add hl, hl
		add hl, hl
		add hl, bc
		add hl, de
		ld a, (hl)
		or a
		jp z, _LABEL_B0C8_
		inc hl
		ld a, (iy+3)
		add a, (hl)
		ld c, a
		inc hl
		add a, (hl)
		ld b, a
		inc hl
		ld a, (iy+6)
		add a, (hl)
		jr nc, +
		bit 7, (hl)
		jr nz, ++
		ld a, $FF
		jr ++
	
+:	
		bit 7, (hl)
		jr z, ++
		ld a, $00
++:	
		ld e, a
		inc hl
		add a, (hl)
		jr nc, +
		ld a, $FF
+:	
		ld d, a
		ld a, (_RAM_C60D_)
		cp c
		jr z, ++
		jr c, +
		cp b
		jr z, ++
		jr c, ++
		jp _LABEL_B0C8_
	
+:	
		ld a, (_RAM_C60E_)
		cp c
		jr c, _LABEL_B0C8_
++:	
		ld a, (_RAM_C60F_)
		cp e
		jr z, ++
		jr c, +
		cp d
		jr z, ++++
		jr c, ++++
		jp _LABEL_B0C8_
	
+:	
		ld a, (_RAM_C610_)
		cp e
		jr z, +++
		jr nc, +++
		jr _LABEL_B0C8_
	
_LABEL_B0C8_:	
		xor a
		ret
	
++:	
		ld a, $01
		ret
	
+++:	
		ld a, $01
		ret
	
++++:	
		ld a, $02
		ret
	
; Data from B0D3 to B112 (64 bytes)	
_DATA_B0D3_:	
	.db $E8 $18 $E0 $18 $E8 $18 $08 $18 $F0 $10 $D8 $20 $F0 $10 $08 $20
	.db $E8 $10 $D0 $28 $E8 $10 $08 $28 $E8 $10 $C8 $30 $E8 $10 $08 $30
	.db $D8 $18 $E0 $18 $D8 $18 $08 $18 $E0 $10 $D8 $20 $E0 $10 $08 $18
	.db $D8 $10 $D0 $28 $D8 $10 $08 $28 $DC $10 $C8 $30 $E0 $10 $08 $30
	
; Data from B113 to B120 (14 bytes)	
_DATA_B113_:	
	.db $10 $C3 $40 $C3 $70 $C3 $A0 $C3 $D0 $C3 $00 $C4 $30 $C4
	
; Data from B121 to B160 (64 bytes)	
_DATA_B121_:	
	.db $10 $C3 $40 $C3 $70 $C3 $A0 $C3 $D0 $C3 $00 $C4 $30 $C4 $60 $C4
	.db $90 $C4 $C0 $C4 $F0 $C4 $F0 $C1 $20 $C2 $50 $C2 $C0 $C1 $60 $C4
	.db $90 $C4 $C0 $C4 $F0 $C4 $F0 $C1 $20 $C2 $50 $C2 $80 $C2 $B0 $C2
	.db $E0 $C2 $10 $C3 $40 $C3 $70 $C3 $A0 $C3 $D0 $C3 $00 $C4 $30 $C4
	
; Data from B161 to B170 (16 bytes)	
_DATA_B161_:	
	.db $E0 $C2 $10 $C3 $40 $C3 $70 $C3 $A0 $C3 $D0 $C3 $00 $C4 $30 $C4
	
_LABEL_B171_:	
		ld a, (iy+12)
		or a
		ret z
		cp $19
		ret z
		cp $1A
		ret z
		cp $1B
		ret z
		cp $1C
		ret z
		ld e, a
		ld d, $00
		ld hl, _DATA_B214_
		add hl, de
		ld a, (hl)
		dec a
		jp z, _LABEL_B1C5_
		inc (iy+20)
		ld a, $03
		and (iy+20)
		cp $02
		jp z, _LABEL_B1C5_
		ld a, (iy+0)
		ld (iy+27), a
		ld e, $81
		bit 5, (iy+20)
		jr z, +
		ld e, $80
+:	
		ld a, (iy+18)
		and $3E
		or e
		ld (iy+18), a
		ld (iy+19), $30
		ld (iy+8), $00
		ld (iy+9), $FE
		ld (iy+0), $6F
		ret
	
_LABEL_B1C5_:	
		ld e, (iy+12)
		ld d, $00
		ld hl, _DATA_B231_
		add hl, de
		ld a, (hl)
		call _LABEL_B28B_
		ld a, $A4
		ld (_RAM_DE03_), a
		ld (iy+0), $66
		ld a, (iy+12)
		cp $06
		jr z, +
		cp $17
		jr nz, ++
+:	
		ld a, (iy+32)
		and $3F
		ld e, a
		ld d, $00
		ld hl, _RAM_C093_
		add hl, de
		set 7, (hl)
++:	
		ld a, (_RAM_C652_)
		bit 2, a
		ret nz
		ld hl, _RAM_C07C_
		bit 0, (hl)
		ret z
		bit 6, (hl)
		ret nz
		ld a, (_RAM_C690_)
		inc a
		cp $0A
		jr c, +
		set 6, (hl)
		set 7, (hl)
		xor a
+:	
		ld (_RAM_C690_), a
		ret
	
; Data from B214 to B230 (29 bytes)	
_DATA_B214_:	
	.db $00 $01 $01 $01 $00 $01 $01 $01 $01 $01 $02 $01 $01 $01 $02 $02
	.db $02 $02 $01 $00 $00 $00 $00 $01 $00 $00 $00 $00 $00
	
; Data from B231 to B24D (29 bytes)	
_DATA_B231_:	
	.db $00 $03 $03 $03 $00 $03 $05 $05 $03 $03 $03 $03 $03 $03 $05 $04
	.db $04 $04 $04 $00 $00 $00 $00 $05 $00 $00 $00 $00 $00
	
; Data from B24E to B26A (29 bytes)	
_DATA_B24E_:	
	.db $00 $FF $FF $FF $FE
	.dsb 14, $FF
	.db $FE $FE $FE $FE $FF $00 $00 $FE $ED $FF
	
; Data from B26B to B28A (32 bytes)	
_DATA_B26B_:	
	.db $00 $00 $00 $00 $00 $10 $00 $00 $05 $00 $00 $00 $10 $00 $00 $00
	.db $20 $00 $00 $00 $30 $00 $00 $00 $00 $20 $00 $00 $00 $01 $00 $00
	
_LABEL_B28B_:	
		ld hl, _RAM_C000_
		bit 3, (hl)
		ret nz
		ld de, _RAM_C042_
		ld b, $03
		push de
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_B26B_
		add hl, de
		pop de
		xor a
-:	
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		inc hl
		djnz -
		ld a, (_RAM_C078_)
		set 7, a
		ld (_RAM_C078_), a
		inc de
		ex de, hl
		ld de, _RAM_C044_
		call ++
		ret nc
		xor a
		ld hl, _RAM_C046_
		ld a, $00
		adc a, (hl)
		daa
		ld (hl), a
		dec hl
		ld a, $00
		adc a, (hl)
		daa
		ld (hl), a
		dec hl
		ld a, $01
		adc a, (hl)
		daa
		ld (hl), a
		ld a, (_RAM_C07A_)
		inc a
		jr nz, +
		ld a, $FF
+:	
		ld (_RAM_C07A_), a
		ld hl, _RAM_C079_
		set 7, (hl)
		ret
	
_LABEL_B2E1_:	
		ld hl, _RAM_C040_
		ld de, _RAM_C013_
		call ++
		ret nc
		ld bc, $0003
		ldir
		ret
	
++:	
		ld b, $03
		push hl
		push de
-:	
		ld a, (de)
		cp (hl)
		jr c, +
		jr nz, ++
		inc hl
		inc de
		djnz -
+:	
		pop de
		pop hl
		scf
		ret
	
++:	
		pop de
		pop hl
		and a
		ret
	
_LABEL_B307_:	
		ld hl, _RAM_C06D_
		add a, (hl)
		cp $13
		jr c, +
		ld a, $12
+:	
		ld (hl), a
		ld a, $00
_LABEL_B314_:	
		ld c, a
		ld hl, _RAM_C06C_
		bit 7, a
		jr nz, +
		add a, (hl)
		ld (hl), a
		inc hl
		cp (hl)
		jr c, ++
		jr z, ++
		ld a, (hl)
		add a, c
		ld (hl), a
		cp $12
		jr c, ++
		ld a, $12
		ld (hl), a
		dec hl
		ld (hl), a
		jr ++
	
+:	
		add a, (hl)
		ld (hl), a
		jr c, ++
		ld (hl), $00
		ld hl, _RAM_C06B_
		set 0, (hl)
++:	
		ld a, (_RAM_C06D_)
		inc a
		srl a
		ld (_RAM_C06E_), a
		ld hl, _RAM_C06F_
		push hl
-:	
		ld (hl), $32
		inc hl
		dec a
		jr nz, -
		pop hl
		ld a, (_RAM_C06C_)
-:	
		sub $02
		jr c, +
		ld (hl), $30
		inc hl
		jr -
	
+:	
		bit 0, a
		jr z, +
		ld (hl), $31
+:	
		ld hl, _RAM_C06B_
		set 7, (hl)
		ret
	
_LABEL_B369_:	
		ld (_RAM_C07B_), a
		ld hl, _RAM_C07D_
		ld a, (hl)
		cp $04
		jp z, +
		inc (hl)
		inc hl
		ld e, a
		ld d, $00
		add hl, de
		ld a, (_RAM_C07B_)
		ld (hl), a
		add a, a
		add a, a
		ld c, a
		ld b, d
		ld hl, _DATA_B452_
		add hl, bc
		push hl
		ld hl, $C082
		add hl, de
		add hl, de
		push hl
		ld de, $0008
		add hl, de
		pop de
		pop bc
		ld a, (bc)
		ld (de), a
		inc bc
		inc de
		ld a, (bc)
		ld (de), a
		inc bc
		ld a, (bc)
		ld (hl), a
		inc bc
		inc hl
		ld a, (bc)
		ld (hl), a
		jp _LABEL_B3FB_
	
+:	
		ld a, (_RAM_C07F_)
		ld (_RAM_C07E_), a
		ld a, (_RAM_C080_)
		ld (_RAM_C07F_), a
		ld a, (_RAM_C081_)
		ld (_RAM_C080_), a
		ld a, (_RAM_C07B_)
		ld (_RAM_C081_), a
		ld hl, (_RAM_C084_)
		ld (_RAM_C082_), hl
		ld hl, (_RAM_C086_)
		ld (_RAM_C084_), hl
		ld hl, (_RAM_C088_)
		ld (_RAM_C086_), hl
		ld hl, (_RAM_C08C_)
		ld (_RAM_C08A_), hl
		ld hl, (_RAM_C08E_)
		ld (_RAM_C08C_), hl
		ld hl, (_RAM_C090_)
		ld (_RAM_C08E_), hl
		ld a, (_RAM_C081_)
		add a, a
		add a, a
		ld e, a
		ld d, $00
		ld hl, _DATA_B452_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (_RAM_C088_), de
		ld (_RAM_C090_), bc
_LABEL_B3FB_:	
		ld hl, _RAM_C07C_
		set 0, (hl)
		ret
	
	; Data from B401 to B451 (81 bytes)
	.db $3A $7F $C0 $32 $7E $C0 $3A $80 $C0 $32 $7F $C0 $3A $81 $C0 $32
	.db $80 $C0 $AF $32 $81 $C0 $2A $84 $C0 $22 $82 $C0 $2A $86 $C0 $22
	.db $84 $C0 $2A $88 $C0 $22 $86 $C0 $2A $8C $C0 $22 $8A $C0 $2A $8E
	.db $C0 $22 $8C $C0 $2A $90 $C0 $22 $8E $C0 $21 $00 $00 $22 $88 $C0
	.db $22 $90 $C0 $21 $7C $C0 $CB $FE $CB $B6 $3A $7D $C0 $3D $32 $7D
	.db $C0
	
; Data from B452 to B468 (23 bytes)	
_DATA_B452_:	
	.db $C0 $CB $86 $C9 $18 $19 $1A $1B $14 $15 $16 $17 $1C $1D $1E $1F
	.db $20 $21 $22 $23 $24 $25 $26
	
; Data from B469 to B64D (485 bytes)	
_DATA_B469_:	
	.db $27 $28 $29 $2A $2B $FF $F8 $08 $E8 $30 $FF $E8 $18 $F8 $10 $FF
	.db $E0 $20 $F8 $10 $FF $00 $04 $FC $08 $FF $D8 $28 $F8 $10 $FF $D8
	.db $28 $F8 $10 $FF $D8 $28 $F8 $10 $FF $D8 $28 $F8 $10 $FF $D8 $28
	.db $F8 $10 $FF $04 $04 $F8 $10 $FF $FC $08 $FC $08 $FF $D8 $28 $F8
	.db $10 $FF $E8 $08 $F0 $08 $FF $18 $08 $F0 $08 $FF $E0 $20 $FC $08
	.db $FF $E8 $18 $F8 $10 $FF $E0 $20 $F8 $10 $FF $E0 $20 $F8 $10 $FF
	.db $E8 $18 $F8 $10 $FF $FD $06 $FD $06 $FF $E0 $20 $F8 $10 $FF $FD
	.db $06 $FD $06 $FF $EA $16 $F8 $10 $FF $E8 $18 $F8 $10 $FF $E0 $20
	.db $F8 $10 $FF $D8 $28 $F8 $10 $FF $E4 $04 $DC $14 $FF $E4 $04 $24
	.db $14 $FF $D8 $28 $F8 $10 $FF $E8 $04 $EA $06 $FF $E8 $04 $16 $06
	.db $FF $E0 $20 $F8 $10 $FF $F0 $10 $F8 $08 $FF $E0 $20 $F4 $18 $FF
	.db $FE $04 $FE $04 $FF $F8 $10 $F8 $10 $FF $F9 $0E $F9 $0E $FF $FC
	.db $08 $FC $08 $FF $FF $02 $F8 $10 $FF $FC $08 $FC $08 $FF $F8 $10
	.db $F8 $10 $FF $F4 $18 $F4 $18 $FF $C0 $40 $F8 $10 $FF $F9 $0E $F9
	.db $0E $FF $B0 $50 $E8 $20 $FF $B0 $50 $E8 $20 $FF $C8 $38 $D8 $18
	.db $FF $B8 $48 $E8 $30 $FF $E0 $20 $E8 $40 $FF $D0 $30 $F8 $10 $FF
	.db $D0 $28 $F8 $10 $FF $E0 $20 $F8 $10 $FF $D0 $30 $E4 $38 $FF $FA
	.db $0C $FA $0C $FF $D8 $28 $F4 $18 $FF $D8 $28 $F8 $10 $FF $D8 $10
	.db $18 $10 $FF $D8 $28 $F4 $10 $FF $E8 $10 $E8 $10 $FF $E0 $20 $F0
	.db $20 $FF $F0 $10 $F0 $20 $FF $F8 $08 $E8 $30 $FF $F0 $10 $FC $08
	.db $FF $E0 $20 $F8 $10 $FF $F0 $10 $F8 $10 $FF $F0 $10 $FC $08 $FF
	.db $D8 $28 $FC $0C $FF $EA $16 $F9 $0E $FF $E0 $20 $FB $0A $FF $E0
	.db $20 $F8 $10 $FF $F8 $08 $EC $28 $FF $D8 $18 $08 $18 $FF $E8 $18
	.db $08 $18 $FF $D8 $10 $08 $28 $FF $E8 $10 $08 $28 $FF $E8 $10 $08
	.db $30 $FF $E0 $10 $08 $20 $FF $F0 $10 $08 $20 $FF $D8 $18 $E0 $18
	.db $FF $E8 $18 $E0 $18 $FF $D8 $10 $D0 $28 $FF $E8 $10 $D0 $28 $FF
	.db $DC $10 $C8 $30 $FF $E8 $10 $C8 $30 $FF $E0 $10 $D8 $20 $FF $F0
	.db $10 $D8 $20 $FF $FC $08 $FC $08 $FF $F8 $10 $F8 $10 $FF $FC $08
	.db $F8 $10 $FF $FA $0C $FA $0C $FF $F8 $10 $F8 $10 $FF $FE $04 $FE
	.db $04 $FF $E0 $10 $08 $30 $FF $B0 $50 $F8 $10 $FF $D0 $30 $04 $18
	.db $00 $00 $00 $00 $00
	
; Data from B64E to B832 (485 bytes)	
_DATA_B64E_:	
	.db $FF $C0 $A0 $FC $08 $FF $F8 $08 $E8 $30 $FF $E8 $18 $F8 $10 $FF
	.db $E0 $20 $F8 $10 $FF $00 $04 $FC $08 $FF $D8 $28 $F8 $10 $FF $D8
	.db $28 $F8 $10 $FF $D8 $28 $F8 $10 $FF $D8 $28 $F8 $10 $FF $D8 $28
	.db $F8 $10 $FF $FC $04 $F8 $10 $FF $FC $08 $FC $08 $FF $D8 $28 $F8
	.db $10 $FF $E0 $20 $F8 $10 $FF $E0 $20 $F8 $10 $FF $E0 $20 $FC $08
	.db $FF $E8 $18 $F8 $10 $FF $E0 $20 $F8 $10 $FF $E0 $20 $F8 $10 $FF
	.db $E8 $18 $F8 $10 $FF $FD $06 $FD $06 $FF $E0 $20 $F8 $10 $FF $FD
	.db $06 $FD $06 $FF $EA $16 $F8 $10 $FF $E8 $18 $F8 $10 $FF $E0 $20
	.db $F8 $10 $FF $D8 $28 $F8 $10 $FF $D8 $28 $F0 $10 $FF $D8 $28 $10
	.db $10 $FF $D8 $28 $F8 $10 $FF $D8 $28 $F0 $10 $FF $D8 $28 $10 $10
	.db $FF $E0 $20 $F8 $10 $FF $E0 $20 $F8 $10 $FF $E0 $20 $F4 $18 $FF
	.db $FE $04 $FE $04 $FF $F8 $10 $F8 $10 $FF $F9 $0E $F9 $0E $FF $FC
	.db $08 $FC $08 $FF $FF $02 $F8 $10 $FF $FC $08 $FC $08 $FF $F8 $10
	.db $F8 $10 $FF $F4 $18 $F4 $18 $FF $CD $09 $F8 $10 $FF $F9 $0E $F9
	.db $0E $FF $B8 $48 $E8 $20 $FF $B8 $48 $E8 $20 $FF $B8 $48 $E8 $20
	.db $FF $B8 $48 $E8 $30 $FF $E0 $20 $E8 $40 $FF $D0 $30 $F8 $10 $FF
	.db $D0 $28 $F8 $10 $FF $E0 $20 $F8 $10 $FF $D0 $30 $F2 $1C $FF $FA
	.db $0C $FA $0C $FF $D8 $28 $F4 $18 $FF $D8 $28 $F8 $10 $FF $D8 $28
	.db $F8 $18 $FF $D8 $28 $F4 $10 $FF $D8 $28 $F4 $10 $FF $E0 $20 $F0
	.db $20 $FF $F0 $10 $F0 $20 $FF $F8 $08 $E8 $30 $FF $F0 $10 $FC $08
	.db $FF $E0 $20 $F8 $10 $FF $F0 $10 $F8 $10 $FF $F0 $10 $FC $08 $FF
	.db $D8 $28 $FC $0C $FF $EA $16 $F9 $0E $FF $E0 $20 $FB $0A $FF $E0
	.db $20 $F8 $10 $FF $F8 $08 $EC $28 $FF $E0 $20 $FC $10 $FF $E8 $18
	.db $FE $0A $FF $E0 $20 $FE $0C $FF $E8 $18 $F8 $10 $FF $E8 $18 $F8
	.db $10 $FF $D8 $28 $FC $0C $FF $E8 $18 $F8 $10 $FF $E0 $20 $F8 $10
	.db $FF $E8 $18 $FE $0A $FF $E0 $20 $FE $0C $FF $E8 $18 $F8 $10 $FF
	.db $E0 $20 $F8 $10 $FF $E8 $18 $F8 $10 $FF $D8 $28 $FC $0C $FF $E8
	.db $18 $FC $0C $FF $FC $08 $FC $08 $FF $F8 $10 $F8 $10 $FF $FC $08
	.db $FC $08 $FF $FA $0C $FA $0C $FF $F8 $10 $F8 $10 $FF $FE $04 $FE
	.db $04 $FF $E0 $20 $FE $0C $FF $B8 $48 $F8 $10 $FF $D0 $30 $04 $18
	.db $FF $B0 $10 $08 $10
	
; Data from B833 to BFFF (1997 bytes)	
_DATA_B833_:	
	.dsb 20, $00
	.db $FF $00 $04 $FC $08 $00 $00 $00 $00 $00 $FF $D8 $20 $F0 $08 $00
	.db $00 $00 $00 $00 $FF $D8 $20 $10 $08 $00 $00 $00 $00 $00 $FF $04
	.db $04 $F8 $10 $FF $FC $08 $FC $08
	.dsb 40, $00
	.db $FF $FD $06 $FD $06 $00 $00 $00 $00 $00 $FF $FD $06 $FD $06
	.dsb 30, $00
	.db $FF $D4 $0C $F8 $10
	.dsb 25, $00
	.db $FF $FE $04 $FE $04 $FF $F8 $10 $F8 $10 $FF $F9 $0E $F9 $0E $FF
	.db $FC $08 $FC $08 $FF $FF $02 $F8 $10 $FF $FC $08 $FC $08 $FF $F8
	.db $10 $F8 $10 $FF $F4 $18 $F4 $18 $00 $00 $00 $00 $00 $FF $F9 $0E
	.db $F9 $0E $FF $C4 $3C $E8 $20 $FF $B0 $50 $E8 $20 $FF $C8 $38 $E8
	.db $20
	.dsb 10, $00
	.db $FF $D0 $30 $F8 $10
	.dsb 10, $00
	.db $FF $D0 $30 $E4 $38 $FF $FA $0C $FA $0C
	.dsb 160, $00
	.db $FF $FC $08 $FC $08 $FF $F8 $10 $F8 $10 $FF $FC $08 $FC $08 $FF
	.db $FA $0C $FA $0C $FF $F8 $10 $F8 $10 $FF $FE $04 $FE $04 $00 $00
	.db $00 $00 $00 $FF $C0 $40 $F8 $10
	.dsb 15, $00
	.dsb 1507, $FF
	
.BANK 3	
.ORG $0000	
	
	; Data from C000 to FB3F (15168 bytes)
	.incbin "data/File02_0C000_0FB3F.dat"
	
; Pointer Table from FB40 to FB53 (10 entries, indexed by _RAM_C0A9_)	
_DATA_FB40_:	
	.dw _DATA_FB54_ _DATA_FB6A_ _DATA_FB82_ _DATA_FB9C_ _DATA_FBB8_ _DATA_FBD6_ _DATA_FBF6_ _DATA_FC18_
	.dw _DATA_FC3C_ _DATA_FC62_
	
; 1st entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FB54 to FB69 (22 bytes)	
_DATA_FB54_:	
	.db $14 $30 $00 $08 $00 $10 $01 $0A $15 $00 $03 $09 $10 $0A $2E $00
	.db $11 $06 $01 $1A $0B $01
	
; 2nd entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FB6A to FB81 (24 bytes)	
_DATA_FB6A_:	
	.db $16 $30 $00 $07 $03 $05 $1A $0A $13 $18 $07 $00 $2E $1E $0B $10
	.db $0A $01 $00 $14 $1D $04 $13 $0D
	
; 3rd entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FB82 to FB9B (26 bytes)	
_DATA_FB82_:	
	.db $18 $30 $03 $04 $14 $07 $13 $28 $00 $0F $03 $01 $1A $08 $0A $11
	.db $07 $0B $2E $13 $0D $22 $15 $08 $1D $06
	
; 4th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FB9C to FBB7 (28 bytes)	
_DATA_FB9C_:	
	.db $1A $30 $04 $0A $18 $00 $2E $13 $1D $0C $14 $20 $06 $19 $02 $1C
	.db $2A $0F $00 $14 $11 $04 $25 $18 $2B $00 $14 $07
	
; 5th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FBB8 to FBD5 (30 bytes)	
_DATA_FBB8_:	
	.db $1C $30 $0F $08 $00 $11 $2D $03 $14 $2E $10 $22 $0A $19 $2A $1C
	.db $0C $23 $01 $14 $2C $1A $1E $03 $04 $09 $10 $1A $25 $15
	
; 6th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FBD6 to FBF5 (32 bytes)	
_DATA_FBD6_:	
	.db $1E $30 $01 $18 $17 $00 $2B $11 $0B $1C $25 $11 $07 $28 $2E $04
	.db $1A $2C $0E $00 $12 $0B $2A $29 $03 $09 $1B $06 $1D $19 $17 $00
	
; 7th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FBF6 to FC17 (34 bytes)	
_DATA_FBF6_:	
	.db $20 $30 $00 $0E $2C $08 $1E $11 $22 $08 $1D $06 $12 $23 $0B $19
	.db $05 $1D $0A $1C $03 $14 $19 $01 $17 $1A $01 $10 $25 $09 $2E $03
	.db $1B $0D
	
; 8th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FC18 to FC3B (36 bytes)	
_DATA_FC18_:	
	.db $22 $30 $0E $0F $10 $0A $1E $22 $01 $11 $08 $1A $26 $04 $13 $06
	.db $19 $0C $0D $1A $28 $2E $25 $0F $00 $03 $18 $09 $1F $01 $1A $21
	.db $1C $20 $01 $08
	
; 9th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FC3C to FC61 (38 bytes)	
_DATA_FC3C_:	
	.db $24 $30 $10 $0F $19 $1A $1C $14 $2E $25 $00 $00 $08 $06 $2C $1D
	.db $10 $11 $17 $1E $2A $08 $07 $25 $04 $03 $0B $08 $22 $0D $24 $1A
	.db $1C $13 $10 $1E $22 $20
	
; 10th entry of Pointer Table from FB40 (indexed by _RAM_C0A9_)	
; Data from FC62 to FC87 (38 bytes)	
_DATA_FC62_:	
	.db $26 $30 $19 $18 $1B $10 $13 $05 $1A $1D $0E $14 $00 $11 $12 $1F
	.db $13 $14 $0D $17 $11 $00 $07 $07 $09 $03 $01 $21 $2C $01 $22 $2A
	.db $0B $28 $29 $2E $25 $20
	
; Data from FC88 to FD29 (162 bytes)	
_DATA_FC88_:	
	.db $01 $08 $40 $FD $30 $FD $20 $FD $10 $FD $00 $FD $F0 $FC $E0 $FC
	.db $D0 $FC $C0 $FC $B0 $FC
	.dsb 12, $00
	.db $C0 $02 $D0 $02 $E0 $02 $F0 $02 $00 $03 $10 $03 $20 $03 $30 $03
	.db $40 $03 $50 $03
	.dsb 12, $00
	.db $C0 $FC $B0 $FC $A0 $FC $90 $FC $80 $FC $70 $FC $60 $FC $50 $FC
	.db $40 $FC $30 $FC
	.dsb 12, $00
	.db $40 $03 $50 $03 $60 $03 $70 $03 $80 $03 $90 $03 $A0 $03 $B0 $03
	.db $C0 $03 $D0 $03
	.dsb 12, $00
	.db $40 $FB $20 $FB $00 $FB $E0 $FA $C0 $FA $A0 $FA $80 $FA $40 $FA
	.db $20 $FA $00 $FA
	.dsb 12, $00
	
; Pointer Table from FD2A to FD87 (47 entries, indexed by unknown)	
_DATA_FD2A_:	
	.dw _DATA_FD88_ _DATA_FD8F_ _DATA_FD9C_ _DATA_FDA9_ _DATA_FDB6_ _DATA_FDC3_ _DATA_FDD0_ _DATA_FDDD_
	.dw _DATA_FDE4_ _DATA_FDF1_ _DATA_FDFE_ _DATA_FE0B_ _DATA_FE18_ _DATA_FE25_ _DATA_FE32_ _DATA_FE3F_
	.dw _DATA_FE4F_ _DATA_FE5F_ _DATA_FE6F_ _DATA_FE7C_ _DATA_FE8C_ _DATA_FE9C_ _DATA_FEAC_ _DATA_FEB9_
	.dw _DATA_FEC6_ _DATA_FED6_ _DATA_FEE6_ _DATA_FEF6_ _DATA_FF03_ _DATA_FF13_ _DATA_FF23_ _DATA_FF33_
	.dw _DATA_FF40_ _DATA_FF47_ _DATA_FF4E_ _DATA_FF58_ _DATA_FF62_ _DATA_FF6C_ _DATA_FF76_ _DATA_FF80_
	.dw _DATA_FF8A_ _DATA_FF94_ _DATA_FF9E_ _DATA_FFAB_ _DATA_FFB8_ _DATA_FFC5_ _DATA_FFD2_
	
; 1st entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FD88 to FD8E (7 bytes)	
_DATA_FD88_:	
	.db $01 $00 $00 $00 $72 $00 $FF
	
; 2nd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FD8F to FD9B (13 bytes)	
_DATA_FD8F_:	
	.db $03 $00 $00 $00 $72 $00 $C0 $77 $00 $00 $74 $00 $FF
	
; 3rd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FD9C to FDA8 (13 bytes)	
_DATA_FD9C_:	
	.db $03 $00 $00 $00 $72 $00 $80 $77 $00 $00 $74 $00 $FF
	
; 4th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDA9 to FDB5 (13 bytes)	
_DATA_FDA9_:	
	.db $03 $00 $00 $00 $72 $00 $40 $77 $00 $00 $74 $00 $FF
	
; 5th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDB6 to FDC2 (13 bytes)	
_DATA_FDB6_:	
	.db $03 $00 $00 $00 $72 $00 $C0 $77 $00 $00 $73 $00 $00
	
; 6th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDC3 to FDCF (13 bytes)	
_DATA_FDC3_:	
	.db $03 $00 $00 $00 $72 $00 $80 $77 $00 $00 $73 $00 $00
	
; 7th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDD0 to FDDC (13 bytes)	
_DATA_FDD0_:	
	.db $03 $00 $00 $00 $72 $00 $40 $77 $00 $00 $73 $00 $00
	
; 8th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDDD to FDE3 (7 bytes)	
_DATA_FDDD_:	
	.db $01 $00 $00 $FF $71 $00 $00
	
; 9th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDE4 to FDF0 (13 bytes)	
_DATA_FDE4_:	
	.db $03 $00 $00 $FF $71 $00 $40 $76 $00 $00 $73 $00 $00
	
; 10th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDF1 to FDFD (13 bytes)	
_DATA_FDF1_:	
	.db $03 $00 $00 $FF $71 $00 $80 $76 $00 $00 $73 $00 $00
	
; 11th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FDFE to FE0A (13 bytes)	
_DATA_FDFE_:	
	.db $03 $00 $00 $FF $71 $00 $C0 $76 $00 $00 $73 $00 $00
	
; 12th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE0B to FE17 (13 bytes)	
_DATA_FE0B_:	
	.db $03 $00 $00 $FF $71 $00 $40 $76 $00 $00 $74 $00 $FF
	
; 13th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE18 to FE24 (13 bytes)	
_DATA_FE18_:	
	.db $03 $00 $00 $FF $71 $00 $80 $76 $00 $00 $74 $00 $FF
	
; 14th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE25 to FE31 (13 bytes)	
_DATA_FE25_:	
	.db $03 $00 $00 $FF $71 $00 $C0 $76 $00 $00 $74 $00 $FF
	
; 15th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE32 to FE3E (13 bytes)	
_DATA_FE32_:	
	.db $03 $00 $00 $00 $72 $00 $C0 $77 $00 $00 $78 $00 $00
	
; 16th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE3F to FE4E (16 bytes)	
_DATA_FE3F_:	
	.db $04 $00 $00 $00 $72 $00 $C0 $77 $00 $00 $73 $00 $80 $78 $00 $00
	
; 17th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE4F to FE5E (16 bytes)	
_DATA_FE4F_:	
	.db $04 $00 $00 $00 $72 $00 $C0 $77 $00 $00 $73 $00 $40 $78 $00 $00
	
; 18th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE5F to FE6E (16 bytes)	
_DATA_FE5F_:	
	.db $04 $00 $00 $00 $72 $00 $80 $77 $00 $00 $74 $00 $C0 $79 $00 $00
	
; 19th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE6F to FE7B (13 bytes)	
_DATA_FE6F_:	
	.db $03 $00 $00 $00 $72 $00 $80 $77 $00 $00 $79 $00 $00
	
; 20th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE7C to FE8B (16 bytes)	
_DATA_FE7C_:	
	.db $04 $00 $00 $00 $72 $00 $80 $77 $00 $00 $73 $00 $40 $78 $00 $00
	
; 21st entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE8C to FE9B (16 bytes)	
_DATA_FE8C_:	
	.db $04 $00 $00 $00 $72 $00 $40 $77 $00 $00 $74 $00 $C0 $79 $00 $00
	
; 22nd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FE9C to FEAB (16 bytes)	
_DATA_FE9C_:	
	.db $04 $00 $00 $00 $72 $00 $40 $77 $00 $00 $74 $00 $80 $79 $00 $00
	
; 23rd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FEAC to FEB8 (13 bytes)	
_DATA_FEAC_:	
	.db $03 $00 $00 $00 $72 $00 $40 $77 $00 $00 $79 $00 $00
	
; 24th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FEB9 to FEC5 (13 bytes)	
_DATA_FEB9_:	
	.db $03 $00 $00 $FF $71 $00 $40 $76 $00 $00 $78 $00 $00
	
; 25th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FEC6 to FED5 (16 bytes)	
_DATA_FEC6_:	
	.db $04 $00 $00 $FF $71 $00 $40 $76 $00 $00 $74 $00 $80 $79 $00 $00
	
; 26th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FED6 to FEE5 (16 bytes)	
_DATA_FED6_:	
	.db $04 $00 $00 $FF $71 $00 $40 $76 $00 $00 $74 $00 $C0 $79 $00 $00
	
; 27th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FEE6 to FEF5 (16 bytes)	
_DATA_FEE6_:	
	.db $04 $00 $00 $FF $71 $00 $80 $76 $00 $00 $73 $00 $C0 $78 $00 $00
	
; 28th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FEF6 to FF02 (13 bytes)	
_DATA_FEF6_:	
	.db $03 $00 $00 $FF $71 $00 $80 $76 $00 $00 $78 $00 $00
	
; 29th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF03 to FF12 (16 bytes)	
_DATA_FF03_:	
	.db $04 $00 $00 $FF $71 $00 $80 $76 $00 $00 $74 $00 $C0 $79 $00 $00
	
; 30th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF13 to FF22 (16 bytes)	
_DATA_FF13_:	
	.db $04 $00 $00 $FF $71 $00 $C0 $76 $00 $00 $73 $00 $40 $78 $00 $00
	
; 31st entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF23 to FF32 (16 bytes)	
_DATA_FF23_:	
	.db $04 $00 $00 $FF $71 $00 $C0 $76 $00 $00 $73 $00 $80 $78 $00 $00
	
; 32nd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF33 to FF3F (13 bytes)	
_DATA_FF33_:	
	.db $03 $00 $00 $FF $71 $00 $C0 $76 $00 $00 $78 $00 $00
	
; 33rd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF40 to FF46 (7 bytes)	
_DATA_FF40_:	
	.db $01 $00 $00 $00 $74 $00 $FF
	
; 34th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF47 to FF4D (7 bytes)	
_DATA_FF47_:	
	.db $01 $00 $00 $FF $73 $00 $00
	
; 35th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF4E to FF57 (10 bytes)	
_DATA_FF4E_:	
	.db $02 $00 $00 $00 $74 $00 $C0 $79 $00 $00
	
; 36th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF58 to FF61 (10 bytes)	
_DATA_FF58_:	
	.db $02 $00 $00 $00 $74 $00 $80 $79 $00 $00
	
; 37th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF62 to FF6B (10 bytes)	
_DATA_FF62_:	
	.db $02 $00 $00 $00 $74 $00 $40 $79 $00 $00
	
; 38th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF6C to FF75 (10 bytes)	
_DATA_FF6C_:	
	.db $02 $00 $00 $FF $73 $00 $40 $78 $00 $00
	
; 39th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF76 to FF7F (10 bytes)	
_DATA_FF76_:	
	.db $02 $00 $00 $FF $73 $00 $80 $78 $00 $00
	
; 40th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF80 to FF89 (10 bytes)	
_DATA_FF80_:	
	.db $02 $00 $00 $FF $73 $00 $C0 $78 $00 $00
	
; 41st entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF8A to FF93 (10 bytes)	
_DATA_FF8A_:	
	.db $02 $00 $00 $00 $74 $00 $C0 $73 $00 $00
	
; 42nd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF94 to FF9D (10 bytes)	
_DATA_FF94_:	
	.db $02 $00 $00 $FF $73 $00 $40 $74 $00 $FF
	
; 43rd entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FF9E to FFAA (13 bytes)	
_DATA_FF9E_:	
	.db $03 $00 $00 $00 $74 $00 $C0 $73 $00 $40 $78 $00 $00
	
; 44th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FFAB to FFB7 (13 bytes)	
_DATA_FFAB_:	
	.db $03 $00 $00 $00 $74 $00 $C0 $73 $00 $80 $78 $00 $00
	
; 45th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FFB8 to FFC4 (13 bytes)	
_DATA_FFB8_:	
	.db $03 $00 $00 $FF $73 $00 $40 $74 $00 $C0 $79 $00 $00
	
; 46th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FFC5 to FFD1 (13 bytes)	
_DATA_FFC5_:	
	.db $03 $00 $00 $FF $73 $00 $40 $74 $00 $80 $79 $00 $00
	
; 47th entry of Pointer Table from FD2A (indexed by unknown)	
; Data from FFD2 to FFFF (46 bytes)	
_DATA_FFD2_:	
	.db $01 $00 $00 $FF $75 $00 $00
	.dsb 39, $FF
	
.BANK 4	
.ORG $0000	
	
	; Data from 10000 to 1177F (6016 bytes)
	.incbin "data/File03_10000_1177F.dat"
	
; Data from 11780 to 11958 (473 bytes)	
_DATA_11780_:	
	.db $0C $00 $84 $10 $E6 $10 $08 $03 $00 $85 $84 $50 $00 $38 $46 $13
	.db $00 $83 $10 $1E $1C $05 $00 $83 $10 $1E $1C $45 $00 $83 $08 $78
	.db $38 $05 $00 $83 $08 $78 $38 $15 $00 $02 $20 $0E $00 $02 $04 $0D
	.db $00 $81 $48 $02 $68 $02 $78 $88 $00 $0C $0E $02 $01 $3E $30 $1C
	.db $0A $00 $8E $07 $01 $02 $07 $05 $02 $00 $0F $00 $13 $00 $01 $00
	.db $02 $03 $00 $89 $80 $D0 $80 $10 $10 $00 $80 $00 $20 $02 $80 $03
	.db $00 $85 $41 $1C $0A $1C $08 $0B $00 $00 $0A $00 $85 $20 $30 $EE
	.db $18 $08 $03 $00 $85 $C4 $78 $28 $3C $46 $14 $00 $83 $24 $6E $20
	.db $04 $00 $85 $30 $64 $EE $60 $30 $11 $00 $8C $18 $66 $5A $BD $BD
	.db $5A $66 $18 $03 $0C $13 $2F $02 $5F $04 $BF $02 $5F $88 $2F $13
	.db $0C $03 $C0 $30 $C8 $F4 $02 $FA $04 $FD $02 $FA $84 $F4 $C8 $30
	.db $C0 $0B $00 $83 $24 $76 $04 $04 $00 $85 $0C $26 $77 $06 $0C $14
	.db $00 $82 $23 $FE $0E $00 $82 $C4 $7F $0D $00 $8D $04 $2A $22 $30
	.db $10 $00 $00 $06 $0E $03 $04 $30 $1C $0C $00 $03 $07 $8A $0F $0B
	.db $00 $36 $58 $4F $26 $16 $1F $28 $03 $00 $98 $C0 $B0 $E0 $A0 $50
	.db $70 $98 $28 $18 $38 $78 $F0 $80 $41 $00 $1E $1C $08 $18 $30 $0A
	.db $08 $08 $0A $02 $08 $03 $00 $00 $2B $00 $83 $28 $40 $20 $04 $00
	.db $85 $30 $48 $80 $40 $30 $11 $00 $8C $18 $7E $66 $C3 $C3 $66 $7E
	.db $18 $03 $0F $1C $30 $02 $60 $04 $C0 $02 $60 $88 $30 $1C $0F $03
	.db $C0 $F0 $38 $0C $02 $06 $04 $03 $02 $06 $84 $0C $38 $F0 $C0 $0B
	.db $00 $83 $14 $02 $04 $04 $00 $85 $0C $12 $01 $02 $0C $14 $00 $81
	.db $1C $0F $00 $81 $38 $0E $00 $85 $10 $14 $14 $06 $04 $03 $00 $84
	.db $10 $3C $00 $0E $0D $00 $8D $02 $07 $05 $02 $04 $00 $01 $30 $30
	.db $10 $00 $02 $17 $03 $00 $89 $D0 $B0 $20 $40 $A0 $00 $60 $F0 $60
	.db $04 $00 $02 $41 $8E $4B $7D $2A $26 $04 $10 $32 $06 $04 $14 $10
	.db $00 $0C $08 $00 $7F $00 $1C $00 $02 $C0 $0E $00 $02 $03 $10 $00
	.db $85 $40 $60 $00 $0C $08 $0E $00 $9B $07 $0F $0F $05 $00 $02 $0D
	.db $0F $00 $37 $68 $7F $3F $1F $1D $3F $80 $C0 $C0 $00 $40 $D0 $F0
	.db $F0 $70 $F8 $D8 $03 $F8 $87 $F0 $80 $1C $7F $75 $63 $77 $05 $3E
	.db $81 $1E $02 $1C $02 $0C $81 $08 $00
	
; Data from 11959 to 11BD5 (637 bytes)	
_DATA_11959_:	
	.db $03 $00 $8A $0B $1B $0F $1E $1D $1E $1B $17 $1F $0F $0E $00 $91
	.db $F0 $C8 $B8 $F8 $F8 $B8 $2C $EF $DA $F6 $6F $3F $1B $0D $07 $02
	.db $01 $06 $00 $8E $80 $C0 $40 $C0 $60 $60 $B0 $68 $38 $A0 $D0 $58
	.db $34 $1C $0B $00 $85 $0F $1B $1D $1F $1E $03 $00 $8A $D0 $F8 $E0
	.db $78 $B8 $F8 $D8 $E8 $E8 $F0 $07 $00 $97 $01 $03 $06 $0B $19 $32
	.db $4F $F5 $A6 $C0 $00 $00 $1D $3C $77 $D9 $EF $76 $FC $E4 $2C $F8
	.db $C0 $05 $00 $8E $38 $2C $1A $0B $05 $1C $16 $0D $06 $06 $03 $02
	.db $03 $01 $0E $00 $91 $80 $40 $E0 $B0 $D8 $FC $F6 $6F $5B $F7 $34
	.db $1D $1F $1F $1D $13 $0F $06 $00 $8A $F0 $F8 $E8 $D8 $78 $B8 $78
	.db $F0 $D8 $D0 $10 $00 $8F $03 $1F $34 $00 $00 $03 $65 $AF $F2 $4C
	.db $98 $D0 $60 $C0 $80 $07 $00 $8A $0F $17 $17 $1B $1F $1D $1E $07
	.db $1F $0B $03 $00 $8D $27 $3F $6E $F7 $9B $EE $3C $B8 $78 $F8 $B8
	.db $D8 $F0 $03 $00 $00 $84 $80 $40 $20 $10 $03 $00 $85 $01 $00 $00
	.db $0E $0D $10 $00 $8E $20 $30 $20 $90 $D0 $E8 $68 $DC $7C $19 $0C
	.db $0A $05 $03 $09 $00 $87 $80 $00 $80 $00 $00 $60 $20 $03 $00 $82
	.db $30 $10 $0D $00 $02 $0C $86 $04 $08 $01 $02 $04 $08 $03 $00 $02
	.db $80 $83 $00 $70 $A0 $09 $00 $87 $01 $02 $03 $00 $01 $23 $60 $04
	.db $00 $89 $0B $1F $16 $39 $FE $58 $80 $20 $28 $08 $00 $82 $08 $0C
	.db $03 $00 $87 $04 $06 $00 $00 $01 $00 $01 $11 $00 $8E $C0 $A0 $50
	.db $30 $98 $3E $3B $16 $17 $0B $09 $04 $0C $04 $08 $00 $85 $B0 $70
	.db $00 $00 $80 $03 $00 $84 $08 $04 $02 $01 $0F $00 $81 $14 $04 $00
	.db $87 $06 $C4 $80 $00 $C0 $40 $80 $09 $00 $83 $05 $0E $00 $02 $01
	.db $03 $00 $8E $10 $20 $40 $80 $04 $01 $1A $7F $9C $68 $F8 $D0 $10
	.db $20 $02 $30 $04 $00 $00 $07 $00 $84 $01 $00 $00 $08 $11 $00 $8D
	.db $30 $00 $00 $80 $C0 $D0 $10 $25 $09 $10 $00 $04 $02 $0B $00 $81
	.db $80 $03 $00 $82 $40 $10 $03 $00 $82 $20 $08 $0D $00 $81 $04 $0A
	.db $00 $02 $80 $81 $00 $02 $10 $0A $00 $87 $01 $00 $00 $01 $20 $02
	.db $40 $03 $00 $02 $03 $87 $08 $26 $10 $88 $00 $18 $10 $08 $00 $82
	.db $10 $04 $03 $00 $82 $08 $02 $03 $00 $81 $01 $13 $00 $8D $40 $20
	.db $00 $08 $90 $A4 $08 $0B $03 $01 $00 $00 $0C $09 $00 $84 $10 $00
	.db $00 $80 $16 $00 $81 $08 $03 $00 $87 $02 $40 $04 $80 $00 $00 $80
	.db $0A $00 $02 $08 $81 $00 $02 $01 $07 $00 $86 $18 $00 $11 $08 $64
	.db $10 $02 $C0 $03 $00 $81 $20 $04 $00 $00 $03 $00 $87 $0E $1D $10
	.db $09 $0A $09 $08 $12 $00 $81 $C0 $0D $00 $81 $01 $0B $00 $02 $C0
	.db $85 $00 $80 $C0 $C0 $60 $0F $00 $84 $03 $00 $00 $01 $03 $00 $85
	.db $30 $D8 $18 $88 $50 $02 $10 $0D $00 $84 $04 $0E $1C $10 $0D $00
	.db $02 $C0 $09 $00 $85 $06 $03 $03 $01 $00 $02 $03 $13 $00 $81 $80
	.db $0D $00 $81 $03 $0A $00 $87 $10 $90 $50 $90 $08 $B8 $70 $11 $00
	.db $02 $03 $05 $00 $84 $08 $38 $70 $20 $0D $00 $02 $08 $85 $0A $11
	.db $18 $1B $0C $0B $00 $84 $80 $00 $00 $C0 $04 $00 $00
	
; Data from 11BD6 to 1215B (1414 bytes)	
_DATA_11BD6_:	
	.incbin "data/File04_11BD6_1215B.dat"
	
; Data from 1215C to 1256F (1044 bytes)	
_DATA_1215C_:	
	.incbin "data/File05_1215C_1256F.dat"
	
; Pointer Table from 12570 to 12595 (19 entries, indexed by _RAM_C092_)	
_DATA_12570_:	
	.dw _DATA_12596_ _DATA_1259A_ _DATA_1259C_ _DATA_1259E_ _DATA_125A2_ _DATA_125AC_ _DATA_125AE_ _DATA_125B0_
	.dw _DATA_125B4_ _DATA_125BE_ _DATA_125C2_ _DATA_125C4_ _DATA_125C6_ _DATA_125C8_ _DATA_125CA_ _DATA_125CC_
	.dw _DATA_125D0_ _DATA_125D2_ _DATA_125D6_
	
; 1st entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 12596 to 12599 (2 entries, indexed by _RAM_C71E_)	
_DATA_12596_:	
	.dw _DATA_125D8_ _DATA_12674_
	
; 2nd entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 1259A to 1259B (1 entries, indexed by _RAM_C71E_)	
_DATA_1259A_:	
	.dw _DATA_12710_
	
; 3rd entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 1259C to 1259D (1 entries, indexed by _RAM_C71E_)	
_DATA_1259C_:	
	.dw _DATA_127A6_
	
; 4th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 1259E to 125A1 (2 entries, indexed by _RAM_C71E_)	
_DATA_1259E_:	
	.dw _DATA_127B2_ _DATA_12848_
	
; 5th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125A2 to 125AB (5 entries, indexed by _RAM_C71E_)	
_DATA_125A2_:	
	.dw _DATA_128DE_ _DATA_1292C_ _DATA_1297A_ _DATA_129C8_ _DATA_12A16_
	
; 6th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125AC to 125AD (1 entries, indexed by _RAM_C71E_)	
_DATA_125AC_:	
	.dw _DATA_12A64_
	
; 7th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125AE to 125AF (1 entries, indexed by _RAM_C71E_)	
_DATA_125AE_:	
	.dw _DATA_12AE8_
	
; 8th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125B0 to 125B3 (2 entries, indexed by _RAM_C71E_)	
_DATA_125B0_:	
	.dw _DATA_12AFA_ _DATA_12BA2_
	
; 9th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125B4 to 125BD (5 entries, indexed by _RAM_C71E_)	
_DATA_125B4_:	
	.dw _DATA_12C4A_ _DATA_12C80_ _DATA_12CB6_ _DATA_12CEC_ _DATA_12D22_
	
; 10th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125BE to 125C1 (2 entries, indexed by _RAM_C71E_)	
_DATA_125BE_:	
	.dw _DATA_12D58_ _DATA_12DF4_
	
; 11th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125C2 to 125C3 (1 entries, indexed by _RAM_C71E_)	
_DATA_125C2_:	
	.dw _DATA_12E90_
	
; 12th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125C4 to 125C5 (1 entries, indexed by _RAM_C71E_)	
_DATA_125C4_:	
	.dw _DATA_12E9C_
	
; 13th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125C6 to 125C7 (1 entries, indexed by _RAM_C71E_)	
_DATA_125C6_:	
	.dw _DATA_12F32_
	
; 14th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125C8 to 125C9 (1 entries, indexed by _RAM_C71E_)	
_DATA_125C8_:	
	.dw _DATA_12FCE_
	
; 15th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125CA to 125CB (1 entries, indexed by _RAM_C71E_)	
_DATA_125CA_:	
	.dw _DATA_13052_
	
; 16th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125CC to 125CF (2 entries, indexed by _RAM_C71E_)	
_DATA_125CC_:	
	.dw _DATA_13064_ _DATA_13106_
	
; 17th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125D0 to 125D1 (1 entries, indexed by _RAM_C71E_)	
_DATA_125D0_:	
	.dw _DATA_131A8_
	
; 18th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125D2 to 125D5 (2 entries, indexed by _RAM_C71E_)	
_DATA_125D2_:	
	.dw _DATA_13274_ _DATA_13322_
	
; 19th entry of Pointer Table from 12570 (indexed by _RAM_C092_)	
; Pointer Table from 125D6 to 125D7 (1 entries, indexed by _RAM_C71E_)	
_DATA_125D6_:	
	.dw _DATA_133D0_
	
; 1st entry of Pointer Table from 12596 (indexed by _RAM_C71E_)	
; Data from 125D8 to 12673 (156 bytes)	
_DATA_125D8_:	
	.db $00 $00 $00 $00 $FF $FF $10 $01 $40 $59 $90 $FF $40 $01 $01 $1D
	.db $90 $FF $50 $01 $0B $3D $E8 $FF $80 $01 $0C $3D $E8 $FF $C0 $01
	.db $41 $59 $E8 $FF $E0 $01 $02 $1D $E8 $FF $40 $02 $42 $59 $90 $FF
	.db $B0 $02 $83 $33 $90 $FF $D0 $02 $43 $59 $90 $FF $20 $03 $0D $3D
	.db $E8 $FF $70 $03 $0E $3D $E8 $FF $F8 $03 $84 $33 $90 $FF $10 $04
	.db $44 $59 $90 $FF $40 $04 $03 $1D $E8 $FF $70 $04 $0F $3D $E8 $FF
	.db $C0 $04 $10 $3D $E8 $FF $10 $05 $45 $59 $78 $FF $60 $05 $85 $33
	.db $90 $FF $80 $05 $04 $1D $D0 $FF $10 $06 $05 $1D $E8 $FF $D0 $06
	.db $06 $1D $E8 $FF $FC $06 $46 $59 $E8 $FF $10 $07 $87 $33 $90 $FF
	.db $40 $07 $47 $59 $90 $FF $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 12596 (indexed by _RAM_C71E_)	
; Data from 12674 to 1270F (156 bytes)	
_DATA_12674_:	
	.db $00 $00 $00 $00 $FF $FF $10 $01 $40 $59 $60 $FF $40 $01 $01 $1D
	.db $60 $FF $50 $01 $0B $3D $B8 $FF $80 $01 $0C $3D $B8 $FF $C0 $01
	.db $41 $59 $B8 $FF $E0 $01 $02 $1D $B8 $FF $40 $02 $42 $59 $60 $FF
	.db $B0 $02 $83 $33 $60 $FF $D0 $02 $43 $59 $60 $FF $20 $03 $0D $3D
	.db $B8 $FF $70 $03 $0E $3D $B8 $FF $F8 $03 $84 $33 $60 $FF $10 $04
	.db $44 $59 $60 $FF $40 $04 $03 $1D $B8 $FF $70 $04 $0F $3D $B8 $FF
	.db $C0 $04 $10 $3D $B8 $FF $10 $05 $45 $59 $48 $FF $60 $05 $85 $33
	.db $60 $FF $80 $05 $04 $1D $A0 $FF $10 $06 $05 $1D $B8 $FF $D0 $06
	.db $06 $1D $B8 $FF $FC $06 $46 $59 $B8 $FF $10 $07 $87 $33 $60 $FF
	.db $40 $07 $47 $59 $60 $FF $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 1259A (indexed by _RAM_C71E_)	
; Data from 12710 to 127A5 (150 bytes)	
_DATA_12710_:	
	.db $00 $00 $00 $00 $FF $FF $A8 $00 $0B $3D $B8 $FF $D0 $00 $80 $33
	.db $B8 $FF $34 $01 $01 $1F $B8 $FF $4D $01 $02 $1D $B8 $FF $50 $01
	.db $03 $2A $48 $FF $6A $01 $40 $59 $88 $FF $A0 $01 $41 $59 $B8 $FF
	.db $CE $01 $04 $2A $48 $FF $D0 $01 $05 $1D $B8 $FF $C0 $02 $82 $33
	.db $B8 $FF $E0 $02 $06 $2A $40 $FF $F0 $02 $42 $59 $B8 $FF $08 $03
	.db $07 $1F $A0 $FF $90 $03 $0D $3D $70 $FF $B0 $03 $0E $3D $58 $FF
	.db $D0 $03 $08 $1D $70 $FF $D0 $04 $0F $3D $B8 $FF $F0 $04 $10 $3D
	.db $B8 $FF $24 $05 $09 $1D $70 $FF $38 $05 $43 $59 $88 $FF $44 $05
	.db $83 $33 $88 $FF $90 $05 $44 $59 $B8 $FF $C0 $05 $0A $2A $50 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 1259C (indexed by _RAM_C71E_)	
; Data from 127A6 to 127B1 (12 bytes)	
_DATA_127A6_:	
	.db $00 $00 $00 $84 $A8 $C8 $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 1259E (indexed by _RAM_C71E_)	
; Data from 127B2 to 12847 (150 bytes)	
_DATA_127B2_:	
	.db $00 $00 $00 $00 $FF $FF $B0 $00 $06 $3F $F0 $FF $10 $01 $07 $3F
	.db $F0 $FF $60 $01 $40 $59 $E0 $FF $78 $01 $80 $34 $E0 $FF $F0 $01
	.db $81 $33 $B0 $FF $F8 $01 $08 $3F $FF $FF $00 $02 $41 $59 $B0 $FF
	.db $60 $02 $42 $59 $C0 $FF $80 $02 $82 $33 $C0 $FF $D8 $02 $83 $33
	.db $80 $FF $E8 $02 $01 $21 $C0 $FF $F8 $02 $43 $59 $80 $FF $80 $03
	.db $02 $1D $E0 $FF $B0 $03 $03 $1D $C0 $FF $10 $04 $44 $59 $B0 $FF
	.db $58 $04 $04 $1D $F0 $FF $90 $04 $09 $3F $D0 $FF $A0 $04 $45 $59
	.db $D0 $FF $C0 $04 $0A $3F $D0 $FF $08 $05 $85 $00 $D0 $FF $40 $05
	.db $05 $00 $D0 $FF $80 $05 $0B $3F $D0 $FF $A0 $05 $0A $3F $D0 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 1259E (indexed by _RAM_C71E_)	
; Data from 12848 to 128DD (150 bytes)	
_DATA_12848_:	
	.db $00 $00 $00 $00 $FF $FF $D0 $00 $06 $3F $90 $FF $F0 $00 $07 $3F
	.db $90 $FF $60 $01 $40 $59 $80 $FF $78 $01 $80 $34 $80 $FF $F0 $01
	.db $81 $33 $50 $FF $F8 $01 $08 $3F $A0 $FF $00 $02 $41 $59 $50 $FF
	.db $60 $02 $42 $59 $60 $FF $80 $02 $82 $33 $60 $FF $D8 $02 $83 $33
	.db $20 $FF $E8 $02 $01 $21 $60 $FF $F8 $02 $43 $59 $20 $FF $80 $03
	.db $02 $1D $80 $FF $B0 $03 $03 $1D $60 $FF $10 $04 $44 $59 $50 $FF
	.db $58 $04 $04 $1D $90 $FF $90 $04 $09 $3F $70 $FF $A0 $04 $45 $59
	.db $70 $FF $C0 $04 $0A $3F $70 $FF $08 $05 $85 $34 $70 $FF $40 $05
	.db $05 $1D $70 $FF $80 $05 $0B $3F $70 $FF $A0 $05 $0A $3F $70 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125A2 (indexed by _RAM_C71E_)	
; Data from 128DE to 1292B (78 bytes)	
_DATA_128DE_:	
	.db $00 $00 $00 $00 $FF $FF $20 $00 $41 $59 $D8 $FF $70 $00 $81 $37
	.db $D8 $FF $B8 $00 $01 $67 $A0 $FF $18 $01 $04 $00 $00 $FF $48 $01
	.db $82 $00 $00 $FF $70 $01 $42 $00 $00 $FF $78 $01 $02 $67 $A0 $FF
	.db $C6 $01 $05 $00 $00 $FF $CA $01 $06 $00 $00 $FF $E0 $01 $03 $67
	.db $A0 $FF $28 $02 $40 $59 $A0 $FF $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 125A2 (indexed by _RAM_C71E_)	
; Data from 1292C to 12979 (78 bytes)	
_DATA_1292C_:	
	.db $00 $00 $00 $00 $FF $FF $20 $00 $41 $59 $58 $FF $70 $00 $81 $37
	.db $58 $FF $B8 $00 $01 $67 $20 $FF $1A $01 $04 $68 $A0 $FF $48 $01
	.db $82 $36 $A0 $FF $70 $01 $42 $59 $A0 $FF $78 $01 $02 $00 $20 $FF
	.db $C0 $01 $05 $67 $A0 $FF $E0 $01 $03 $00 $20 $FF $F0 $01 $06 $24
	.db $A0 $FF $28 $02 $40 $59 $20 $FF $00 $10 $00 $00 $D0 $FF
	
; 3rd entry of Pointer Table from 125A2 (indexed by _RAM_C71E_)	
; Data from 1297A to 129C7 (78 bytes)	
_DATA_1297A_:	
	.db $00 $00 $00 $00 $FF $FF $60 $00 $07 $25 $A0 $FF $70 $00 $81 $37
	.db $00 $FF $1A $01 $04 $68 $00 $FF $48 $01 $82 $33 $00 $FF $70 $01
	.db $42 $59 $00 $FF $C8 $01 $84 $34 $88 $FF $CA $01 $06 $00 $00 $FF
	.db $E8 $01 $44 $59 $88 $FF $28 $02 $40 $00 $00 $FF $70 $02 $09 $67
	.db $88 $FF $B8 $02 $45 $59 $58 $FF $00 $10 $00 $00 $D0 $FF
	
; 4th entry of Pointer Table from 125A2 (indexed by _RAM_C71E_)	
; Data from 129C8 to 12A15 (78 bytes)	
_DATA_129C8_:	
	.db $00 $00 $00 $00 $FF $FF $60 $00 $07 $25 $18 $FF $18 $01 $0A $24
	.db $70 $FF $30 $01 $83 $33 $18 $FF $48 $01 $82 $00 $00 $FF $58 $01
	.db $43 $59 $18 $FF $7A $01 $08 $67 $18 $FF $A0 $01 $0B $68 $A0 $FF
	.db $C8 $01 $84 $34 $00 $FF $E8 $01 $44 $59 $00 $FF $70 $02 $09 $67
	.db $00 $FF $B8 $02 $45 $59 $00 $FF $00 $10 $00 $00 $D0 $FF
	
; 5th entry of Pointer Table from 125A2 (indexed by _RAM_C71E_)	
; Data from 12A16 to 12A63 (78 bytes)	
_DATA_12A16_:	
	.db $00 $00 $00 $00 $FF $FF $60 $00 $07 $00 $00 $FF $18 $01 $0A $00
	.db $00 $FF $30 $01 $86 $33 $B0 $FF $58 $01 $46 $59 $B0 $FF $79 $01
	.db $0C $67 $B0 $FF $A0 $01 $0B $00 $18 $FF $C6 $01 $05 $00 $00 $FF
	.db $18 $02 $87 $36 $18 $FF $40 $02 $47 $59 $18 $FF $80 $02 $0D $67
	.db $68 $FF $E0 $02 $48 $59 $98 $FF $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125AC (indexed by _RAM_C71E_)	
; Data from 12A64 to 12AE7 (132 bytes)	
_DATA_12A64_:	
	.db $00 $00 $00 $00 $FF $FF $D0 $00 $01 $2B $C0 $FF $1A $01 $02 $2B
	.db $E0 $FF $64 $01 $03 $2B $E0 $FF $A2 $01 $04 $2B $E0 $FF $B0 $01
	.db $05 $2B $E0 $FF $F4 $01 $06 $2B $E0 $FF $38 $02 $07 $2B $E0 $FF
	.db $A8 $02 $08 $1F $70 $FF $D0 $02 $80 $34 $70 $FF $E8 $02 $81 $33
	.db $70 $FF $14 $03 $40 $59 $70 $FF $34 $03 $41 $59 $70 $FF $70 $03
	.db $09 $2B $E0 $FF $B0 $03 $0A $2B $E0 $FF $C0 $03 $0B $2B $E0 $FF
	.db $30 $04 $0C $2B $E0 $FF $90 $04 $0D $2B $E0 $FF $D0 $04 $0E $2B
	.db $E0 $FF $E0 $04 $0F $2B $E0 $FF $50 $05 $10 $2B $E0 $FF $00 $10
	.db $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125AE (indexed by _RAM_C71E_)	
; Data from 12AE8 to 12AF9 (18 bytes)	
_DATA_12AE8_:	
	.db $00 $00 $00 $00 $D0 $FF $00 $01 $00 $6A $B8 $00 $00 $10 $00 $00
	.db $D0 $FF
	
; 1st entry of Pointer Table from 125B0 (indexed by _RAM_C71E_)	
; Data from 12AFA to 12BA1 (168 bytes)	
_DATA_12AFA_:	
	.db $00 $00 $00 $00 $FF $FF $90 $00 $09 $67 $E8 $FF $C0 $00 $0A $67
	.db $E8 $FF $C8 $00 $40 $59 $90 $FF $E0 $00 $80 $33 $90 $FF $28 $01
	.db $01 $2C $D0 $FF $60 $01 $41 $59 $D0 $FF $90 $01 $81 $33 $E8 $FF
	.db $18 $02 $02 $2F $E8 $FF $48 $02 $42 $59 $90 $FF $68 $02 $82 $33
	.db $90 $FF $90 $02 $03 $2F $90 $FF $30 $03 $83 $34 $E8 $FF $80 $03
	.db $43 $59 $E8 $FF $98 $03 $04 $1D $E8 $FF $E0 $03 $44 $59 $90 $FF
	.db $20 $04 $05 $21 $90 $FF $50 $04 $06 $1D $90 $FF $68 $04 $07 $2F
	.db $E8 $FF $90 $04 $0B $67 $E8 $FF $A0 $04 $85 $33 $90 $FF $C0 $04
	.db $45 $59 $90 $FF $D8 $04 $08 $1D $E8 $FF $40 $05 $0C $63 $B8 $FF
	.db $70 $05 $0D $63 $E8 $FF $90 $05 $0E $63 $E8 $FF $C0 $05 $0F $67
	.db $E8 $FF $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 125B0 (indexed by _RAM_C71E_)	
; Data from 12BA2 to 12C49 (168 bytes)	
_DATA_12BA2_:	
	.db $00 $00 $00 $00 $FF $FF $90 $00 $09 $67 $B8 $FF $C0 $00 $0A $67
	.db $B8 $FF $C8 $00 $40 $59 $60 $FF $E0 $00 $80 $33 $60 $FF $28 $01
	.db $01 $2C $A0 $FF $60 $01 $41 $59 $A0 $FF $90 $01 $81 $33 $B8 $FF
	.db $18 $02 $02 $2F $B8 $FF $48 $02 $42 $59 $60 $FF $68 $02 $82 $33
	.db $60 $FF $90 $02 $03 $2F $60 $FF $30 $03 $83 $34 $B8 $FF $80 $03
	.db $43 $59 $B8 $FF $98 $03 $04 $1D $B8 $FF $E0 $03 $44 $59 $60 $FF
	.db $20 $04 $05 $21 $60 $FF $50 $04 $06 $1D $60 $FF $68 $04 $07 $2F
	.db $B8 $FF $90 $04 $0B $67 $B8 $FF $A0 $04 $85 $33 $60 $FF $C0 $04
	.db $45 $59 $60 $FF $D8 $04 $08 $1D $B8 $FF $40 $05 $0C $63 $88 $FF
	.db $70 $05 $0D $63 $B8 $FF $90 $05 $0E $63 $B8 $FF $C0 $05 $0F $67
	.db $B8 $FF $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125B4 (indexed by _RAM_C71E_)	
; Data from 12C4A to 12C7F (54 bytes)	
_DATA_12C4A_:	
	.db $00 $00 $00 $00 $FF $FF $38 $01 $01 $23 $50 $FF $D8 $01 $02 $23
	.db $50 $FF $20 $02 $81 $33 $80 $FF $48 $02 $41 $59 $80 $FF $A0 $02
	.db $11 $00 $78 $FF $C8 $02 $82 $34 $B0 $FF $E8 $02 $42 $59 $B0 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 125B4 (indexed by _RAM_C71E_)	
; Data from 12C80 to 12CB5 (54 bytes)	
_DATA_12C80_:	
	.db $00 $00 $00 $00 $FF $FF $50 $01 $03 $30 $A0 $FF $98 $01 $04 $2E
	.db $70 $FF $C0 $01 $40 $59 $70 $FF $E0 $01 $80 $36 $70 $FF $A0 $02
	.db $11 $00 $78 $FF $C8 $02 $82 $00 $00 $FF $E8 $02 $42 $00 $00 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 3rd entry of Pointer Table from 125B4 (indexed by _RAM_C71E_)	
; Data from 12CB6 to 12CEB (54 bytes)	
_DATA_12CB6_:	
	.db $00 $00 $00 $00 $FF $FF $F0 $00 $43 $59 $59 $FF $E0 $01 $05 $23
	.db $58 $FF $14 $02 $06 $00 $78 $FF $60 $02 $84 $33 $98 $FF $98 $02
	.db $44 $59 $A8 $FF $A0 $02 $11 $00 $78 $FF $C0 $02 $07 $23 $A8 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 4th entry of Pointer Table from 125B4 (indexed by _RAM_C71E_)	
; Data from 12CEC to 12D21 (54 bytes)	
_DATA_12CEC_:	
	.db $00 $00 $00 $00 $FF $FF $C0 $00 $08 $2E $78 $FF $E0 $00 $09 $00
	.db $A8 $FF $00 $01 $0A $00 $A8 $FF $40 $01 $12 $2E $78 $FF $80 $01
	.db $0B $00 $A8 $FF $C8 $01 $0C $2E $78 $FF $12 $02 $46 $59 $A8 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 5th entry of Pointer Table from 125B4 (indexed by _RAM_C71E_)	
; Data from 12D22 to 12D57 (54 bytes)	
_DATA_12D22_:	
	.db $00 $00 $00 $00 $FF $FF $70 $01 $0D $2A $58 $FF $A0 $01 $85 $33
	.db $B8 $FF $B8 $01 $45 $59 $B8 $FF $E0 $01 $0E $2A $58 $FF $08 $02
	.db $0F $00 $B8 $FF $60 $02 $10 $00 $B8 $FF $A0 $02 $11 $00 $78 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125BE (indexed by _RAM_C71E_)	
; Data from 12D58 to 12DF3 (156 bytes)	
_DATA_12D58_:	
	.db $00 $00 $00 $00 $FF $FF $40 $00 $10 $67 $90 $FF $B0 $00 $11 $67
	.db $90 $FF $38 $01 $01 $00 $FF $FF $68 $01 $02 $00 $FF $FF $D0 $01
	.db $03 $67 $90 $FF $E0 $01 $80 $00 $FF $FF $90 $02 $04 $3A $D8 $FF
	.db $F0 $02 $05 $63 $D8 $FF $08 $03 $40 $59 $90 $FF $10 $03 $06 $00
	.db $FF $FF $68 $03 $41 $59 $F0 $FF $70 $03 $42 $59 $B0 $FF $A0 $03
	.db $81 $34 $F0 $FF $B0 $03 $82 $34 $A0 $FF $E8 $03 $07 $63 $90 $FF
	.db $F0 $03 $08 $67 $C0 $FF $38 $04 $09 $3A $C0 $FF $68 $04 $0A $63
	.db $C0 $FF $A0 $04 $43 $00 $D8 $FF $D0 $04 $0B $67 $90 $FF $E8 $04
	.db $0C $63 $D8 $FF $50 $05 $0D $67 $B0 $FF $78 $05 $0E $67 $B0 $FF
	.db $80 $05 $0F $00 $FF $FF $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 125BE (indexed by _RAM_C71E_)	
; Data from 12DF4 to 12E8F (156 bytes)	
_DATA_12DF4_:	
	.db $00 $00 $00 $00 $FF $FF $40 $00 $10 $67 $40 $FF $B0 $00 $11 $67
	.db $40 $FF $38 $01 $01 $3A $B8 $FF $68 $01 $02 $3A $B8 $FF $D0 $01
	.db $03 $67 $40 $FF $E0 $01 $80 $33 $B8 $FF $90 $02 $04 $3A $88 $FF
	.db $F0 $02 $05 $63 $88 $FF $08 $03 $40 $59 $40 $FF $10 $03 $06 $63
	.db $B8 $FF $68 $03 $41 $59 $A0 $FF $70 $03 $42 $59 $60 $FF $A0 $03
	.db $81 $34 $A0 $FF $B0 $03 $82 $34 $50 $FF $E8 $03 $07 $63 $40 $FF
	.db $F0 $03 $08 $67 $70 $FF $38 $04 $09 $3A $70 $FF $68 $04 $0A $63
	.db $70 $FF $A0 $04 $43 $59 $88 $FF $D0 $04 $0B $67 $40 $FF $E8 $04
	.db $0C $63 $88 $FF $50 $05 $0D $67 $60 $FF $78 $05 $0E $67 $60 $FF
	.db $80 $05 $0F $63 $B8 $FF $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125C2 (indexed by _RAM_C71E_)	
; Data from 12E90 to 12E9B (12 bytes)	
_DATA_12E90_:	
	.db $00 $00 $00 $8D $50 $10 $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125C4 (indexed by _RAM_C71E_)	
; Data from 12E9C to 12F31 (150 bytes)	
_DATA_12E9C_:	
	.db $00 $00 $00 $00 $FF $FF $B8 $00 $08 $67 $88 $FF $BC $00 $09 $63
	.db $88 $FF $48 $01 $01 $67 $88 $FF $4C $01 $0A $63 $88 $FF $70 $01
	.db $0B $63 $B8 $FF $A8 $01 $80 $33 $B8 $FF $E0 $01 $40 $59 $B8 $FF
	.db $78 $02 $02 $67 $B8 $FF $C0 $02 $81 $33 $B8 $FF $E8 $02 $03 $63
	.db $88 $FF $10 $03 $41 $59 $B8 $FF $78 $03 $04 $63 $88 $FF $98 $03
	.db $82 $33 $B8 $FF $B0 $03 $42 $59 $B8 $FF $C8 $03 $05 $63 $88 $FF
	.db $10 $04 $43 $59 $88 $FF $30 $04 $83 $33 $B8 $FF $70 $04 $06 $4D
	.db $B8 $FF $98 $04 $84 $34 $A0 $FF $B4 $04 $44 $59 $A0 $FF $08 $05
	.db $85 $33 $A0 $FF $38 $05 $45 $59 $B8 $FF $88 $05 $07 $4D $B8 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125C6 (indexed by _RAM_C71E_)	
; Data from 12F32 to 12FCD (156 bytes)	
_DATA_12F32_:	
	.db $00 $00 $00 $00 $FF $FF $A8 $00 $0C $63 $B0 $FF $E8 $00 $80 $34
	.db $68 $FF $18 $01 $40 $59 $50 $FF $38 $01 $01 $63 $50 $FF $60 $01
	.db $02 $23 $50 $FF $A0 $01 $03 $25 $68 $FF $C8 $01 $81 $33 $68 $FF
	.db $18 $02 $41 $59 $80 $FF $78 $02 $04 $63 $98 $FF $90 $02 $05 $63
	.db $80 $FF $B8 $02 $82 $34 $68 $FF $D8 $02 $42 $59 $68 $FF $30 $03
	.db $83 $33 $68 $FF $50 $03 $43 $59 $68 $FF $A8 $03 $06 $44 $68 $FF
	.db $D8 $03 $07 $44 $68 $FF $60 $04 $84 $34 $98 $FF $A0 $04 $85 $33
	.db $B0 $FF $D0 $04 $44 $59 $B0 $FF $D8 $04 $08 $45 $68 $00 $E8 $04
	.db $45 $59 $B0 $FF $48 $05 $09 $3A $98 $FF $98 $05 $0A $63 $80 $FF
	.db $F0 $05 $0B $3A $80 $FF $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125C8 (indexed by _RAM_C71E_)	
; Data from 12FCE to 13051 (132 bytes)	
_DATA_12FCE_:	
	.db $00 $00 $00 $00 $FF $FF $00 $01 $40 $59 $80 $FF $20 $01 $80 $33
	.db $80 $FF $50 $01 $01 $44 $80 $FF $A0 $01 $02 $47 $68 $FF $A2 $01
	.db $03 $4A $80 $FF $68 $02 $81 $33 $80 $FF $A0 $02 $04 $45 $80 $10
	.db $C0 $02 $41 $59 $80 $FF $04 $03 $05 $44 $60 $FF $1A $03 $82 $33
	.db $B0 $FF $30 $03 $06 $45 $70 $00 $38 $03 $42 $59 $B0 $FF $20 $04
	.db $83 $33 $68 $FF $48 $04 $43 $59 $68 $FF $5E $04 $08 $45 $78 $10
	.db $E8 $04 $84 $33 $98 $FF $08 $05 $44 $59 $B0 $FF $44 $05 $0A $45
	.db $50 $10 $88 $05 $0B $44 $60 $FF $F0 $05 $0C $63 $98 $FF $00 $10
	.db $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125CA (indexed by _RAM_C71E_)	
; Data from 13052 to 13063 (18 bytes)	
_DATA_13052_:	
	.db $00 $00 $00 $00 $D0 $FF $A1 $01 $00 $91 $A0 $C0 $00 $10 $00 $00
	.db $D0 $FF
	
; 1st entry of Pointer Table from 125CC (indexed by _RAM_C71E_)	
; Data from 13064 to 13105 (162 bytes)	
_DATA_13064_:	
	.db $00 $00 $00 $00 $FF $FF $28 $00 $0E $68 $60 $FF $B0 $00 $0F $3A
	.db $B8 $FF $E8 $00 $10 $4D $B8 $FF $28 $01 $01 $4D $B8 $FF $88 $01
	.db $80 $33 $60 $FF $B0 $01 $40 $59 $60 $FF $B8 $01 $02 $4D $B8 $FF
	.db $28 $02 $03 $67 $60 $FF $38 $03 $81 $33 $B8 $FF $50 $03 $41 $59
	.db $B8 $FF $68 $03 $04 $4D $60 $FF $90 $03 $83 $34 $60 $FF $A0 $03
	.db $42 $59 $B8 $FF $C0 $03 $43 $59 $60 $FF $50 $04 $05 $67 $B8 $FF
	.db $78 $04 $84 $34 $60 $FF $98 $04 $44 $59 $60 $FF $C0 $04 $06 $4D
	.db $60 $FF $F0 $04 $07 $67 $60 $FF $50 $05 $08 $67 $60 $FF $58 $05
	.db $09 $50 $B8 $FF $70 $05 $0A $3A $B8 $FF $A8 $05 $0B $67 $B8 $FF
	.db $C0 $05 $0C $3A $B8 $FF $D8 $05 $0D $4D $B8 $FF $00 $10 $00 $00
	.db $D0 $FF
	
; 2nd entry of Pointer Table from 125CC (indexed by _RAM_C71E_)	
; Data from 13106 to 131A7 (162 bytes)	
_DATA_13106_:	
	.db $00 $00 $00 $00 $FF $FF $28 $00 $0E $68 $60 $FF $B0 $00 $0F $3A
	.db $B8 $FF $E8 $00 $10 $4D $B8 $FF $28 $01 $01 $4D $B8 $FF $88 $01
	.db $80 $33 $60 $FF $B0 $01 $40 $59 $60 $FF $B8 $01 $02 $4D $B8 $FF
	.db $28 $02 $03 $67 $60 $FF $38 $03 $81 $33 $B8 $FF $50 $03 $41 $59
	.db $B8 $FF $68 $03 $04 $00 $60 $FF $90 $03 $83 $34 $60 $FF $A0 $03
	.db $42 $59 $B8 $FF $C0 $03 $43 $59 $60 $FF $50 $04 $05 $67 $B8 $FF
	.db $78 $04 $84 $34 $60 $FF $98 $04 $44 $59 $60 $FF $C0 $04 $06 $00
	.db $60 $FF $F0 $04 $07 $67 $60 $FF $50 $05 $08 $67 $60 $FF $58 $05
	.db $09 $50 $B8 $FF $70 $05 $0A $3A $B8 $FF $A8 $05 $0B $67 $B8 $FF
	.db $C0 $05 $0C $3A $B8 $FF $D8 $05 $0D $4D $B8 $FF $00 $10 $00 $00
	.db $D0 $FF
	
; 1st entry of Pointer Table from 125D0 (indexed by _RAM_C71E_)	
; Data from 131A8 to 13273 (204 bytes)	
_DATA_131A8_:	
	.db $00 $00 $00 $00 $FF $FF $30 $01 $01 $5E $10 $FF $B0 $01 $02 $5F
	.db $00 $00 $D8 $01 $14 $63 $B8 $FF $40 $02 $03 $5F $10 $00 $A8 $02
	.db $04 $5B $50 $FF $C8 $02 $05 $61 $00 $20 $E0 $02 $06 $4D $B8 $FF
	.db $00 $03 $07 $5F $00 $10 $30 $03 $80 $34 $50 $FF $38 $03 $08 $5E
	.db $00 $FF $50 $03 $40 $59 $50 $FF $58 $03 $09 $5E $00 $FF $90 $03
	.db $81 $33 $B8 $FF $B0 $03 $15 $67 $B8 $FF $B8 $03 $0A $5E $00 $C0
	.db $C8 $03 $82 $33 $B8 $FF $E0 $03 $0B $5E $00 $C0 $E8 $03 $41 $59
	.db $B0 $FF $10 $04 $42 $59 $80 $FF $C8 $04 $16 $63 $80 $FF $E8 $04
	.db $0C $61 $20 $00 $0C $05 $0D $5E $00 $E0 $18 $05 $0E $4D $B8 $FF
	.db $28 $05 $17 $63 $80 $FF $5C $05 $18 $4D $B8 $FF $64 $05 $0F $5B
	.db $50 $FF $78 $05 $10 $4D $90 $FF $A0 $05 $83 $33 $90 $FF $B8 $05
	.db $43 $59 $90 $FF $D8 $05 $11 $60 $00 $E0 $F0 $05 $12 $5E $00 $FF
	.db $FF $05 $13 $5F $00 $00 $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125D2 (indexed by _RAM_C71E_)	
; Data from 13274 to 13321 (174 bytes)	
_DATA_13274_:	
	.db $00 $00 $00 $00 $FF $FF $B8 $00 $01 $57 $C8 $FF $10 $01 $02 $56
	.db $C8 $FF $40 $01 $03 $67 $C8 $FF $80 $01 $04 $67 $70 $FF $98 $01
	.db $05 $41 $70 $FF $18 $02 $06 $67 $C8 $FF $40 $02 $80 $33 $C8 $FF
	.db $68 $02 $40 $59 $C8 $FF $80 $02 $81 $34 $C8 $FF $A0 $02 $07 $56
	.db $70 $FF $B0 $02 $41 $59 $C8 $FF $00 $03 $08 $00 $6F $FF $10 $03
	.db $09 $56 $C8 $FF $30 $03 $42 $59 $C8 $FF $48 $03 $0A $56 $C8 $FF
	.db $90 $03 $0B $27 $70 $FF $1C $04 $0E $27 $C8 $FF $20 $04 $0C $67
	.db $70 $FF $30 $04 $0D $41 $70 $FF $B8 $04 $0F $67 $70 $FF $E0 $04
	.db $10 $41 $70 $FF $20 $05 $83 $33 $70 $FF $3C $05 $11 $27 $C8 $FF
	.db $40 $05 $84 $34 $70 $FF $60 $05 $43 $59 $70 $FF $90 $05 $44 $59
	.db $C8 $FF $A8 $05 $12 $56 $C8 $FF $00 $10 $00 $00 $D0 $FF
	
; 2nd entry of Pointer Table from 125D2 (indexed by _RAM_C71E_)	
; Data from 13322 to 13343 (34 bytes)	
_DATA_13322_:	
	.db $00 $00 $00 $00 $FF $FF $B8 $00 $01 $57 $B8 $FF $10 $01 $02 $56
	.db $B8 $FF $40 $01 $03 $67 $B8 $FF $80 $01 $04 $67 $60 $FF $98 $01
	.db $05 $41
	
	; Pointer Table from 13344 to 13345 (1 entries, indexed by unknown)
	.dw _RAM_FF60_
	
	; Data from 13346 to 13373 (46 bytes)
	.db $18 $02 $06 $67 $B8 $FF $40 $02 $80 $33 $B8 $FF $68 $02 $40 $59
	.db $B8 $FF $80 $02 $81 $34 $B8 $FF $A0 $02 $07 $56 $60 $FF $B0 $02
	.db $41 $59 $B8 $FF $00 $03 $08 $56 $60 $FF $10 $03 $09 $56
	
	; Pointer Table from 13374 to 13375 (1 entries, indexed by unknown)
	.dw _RAM_FFB8_
	
	; Data from 13376 to 1338B (22 bytes)
	.db $30 $03 $42 $59 $B8 $FF $48 $03 $0A $56 $B8 $FF $90 $03 $0B $27
	.db $60 $FF $1C $04 $0E $27
	
	; Pointer Table from 1338C to 1338D (1 entries, indexed by unknown)
	.dw _RAM_FFB8_
	
	; Data from 1338E to 13397 (10 bytes)
	.db $20 $04 $0C $67 $60 $FF $30 $04 $0D $41
	
	; Pointer Table from 13398 to 13399 (1 entries, indexed by unknown)
	.dw _RAM_FF60_
	
	; Data from 1339A to 133CF (54 bytes)
	.db $B8 $04 $0F $67 $60 $FF $E0 $04 $10 $41 $60 $FF $20 $05 $83 $33
	.db $60 $FF $3C $05 $11 $27 $B8 $FF $40 $05 $84 $34 $60 $FF $60 $05
	.db $43 $59 $60 $FF $90 $05 $44 $59 $B8 $FF $A8 $05 $12 $56 $B8 $FF
	.db $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 125D6 (indexed by _RAM_C71E_)	
; Data from 133D0 to 133DB (12 bytes)	
_DATA_133D0_:	
	.db $00 $00 $00 $87 $A8 $E0 $00 $10 $00 $00 $D0 $FF
	
; 1st entry of Pointer Table from 4CA (indexed by unknown)	
; Data from 133DC to 134C1 (230 bytes)	
_DATA_133DC_:	
	.db $04 $00 $7F $08 $30 $08 $08 $18 $3D $08 $0B $18 $43 $08 $81 $0A
	.db $12 $02 $03 $0A $82 $08 $00 $0B $10 $04 $00 $30 $02 $02 $0A $06
	.db $08 $10 $28 $3F $08 $81 $00 $10 $01 $24 $21 $03 $01 $1F $00 $36
	.db $04 $26 $06 $09 $16 $09 $06 $58 $04 $05 $00 $70 $08 $03 $18 $06
	.db $08 $04 $18 $05 $08 $02 $18 $03 $08 $02 $18 $04 $08 $02 $18 $05
	.db $08 $02 $18 $05 $08 $81 $18 $02 $08 $03 $18 $03 $08 $05 $18 $4F
	.db $08 $07 $28 $41 $08 $81 $0A $07 $02 $03 $12 $04 $02 $04 $12 $04
	.db $02 $03 $12 $04 $02 $02 $12 $02 $02 $02 $12 $05 $02 $03 $12 $0D
	.db $02 $81 $0A $7F $08 $34 $08 $13 $02 $0D $22 $04 $02 $1A $00 $09
	.db $02 $19 $12 $81 $02 $0C $00 $14 $08 $02 $18 $05 $10 $19 $00 $7F
	.db $08 $23 $08 $81 $0A $09 $02 $06 $12 $10 $02 $19 $08 $81 $0A $1B
	.db $02 $81 $12 $03 $10 $0F $00 $78 $08 $0B $18 $7F $08 $31 $08 $07
	.db $28 $07 $08 $16 $00 $0A $10 $09 $00 $16 $08 $10 $28 $3B $08 $05
	.db $01 $0A $21 $27 $00 $15 $04 $02 $14 $09 $10 $16 $00 $2A $04 $0E
	.db $24 $24 $04 $5F $00 $00
	
; 1st entry of Pointer Table from 4D0 (indexed by unknown)	
; Data from 134C2 to 13FFF (2878 bytes)	
_DATA_134C2_:	
	.db $81 $00 $1D $08 $81 $0A $0A $02 $08 $12 $14 $02 $04 $0A $44 $08
	.db $02 $0A $0B $02 $14 $12 $1E $02 $04 $0A $26 $08 $0A $28 $14 $08
	.db $0F $00 $03 $04 $09 $24 $1C $04 $35 $02 $31 $0A $0B $00 $07 $10
	.db $04 $12 $31 $02 $81 $22 $06 $2A $05 $28 $07 $08 $27 $00 $1A $08
	.db $03 $0A $06 $02 $0C $12 $14 $02 $02 $0A $23 $08 $18 $00 $0D $10
	.db $21 $00 $05 $08 $05 $00 $07 $04 $06 $14 $1B $00 $26 $08 $1E $28
	.db $05 $08 $06 $00 $14 $20 $0B $30 $08 $10 $30 $00 $17 $08 $07 $00
	.db $0D $02 $25 $12 $82 $02 $0A $2F $08 $0E $28 $20 $08 $14 $28 $50
	.db $08 $15 $28 $09 $08 $11 $00 $07 $08 $0E $28 $09 $08 $0F $00 $02
	.db $08 $0A $0A $03 $02 $13 $12 $18 $02 $09 $12 $41 $02 $5E $0A $81
	.db $08 $09 $00 $03 $10 $0B $12 $0C $02 $07 $12 $0E $02 $02 $0A $25
	.db $08 $0C $28 $1D $08 $12 $28 $02 $38 $0B $18 $0C $08 $07 $28 $18
	.db $08 $0E $18 $0B $08 $07 $00 $07 $10 $0B $00 $08 $10 $09 $00 $19
	.db $02 $02 $0A $0A $08 $07 $28 $81 $2A $02 $0A $0C $02 $16 $0A $21
	.db $08 $5D $0A $0A $2A $3B $0A $03 $1A $0D $00 $1A $02 $06 $00 $07
	.db $10 $04 $12 $23 $02 $82 $0A $2A $0A $28 $1F $08 $0D $28 $7F $08
	.db $25 $08 $05 $0A $02 $1A $81 $12 $06 $1A $0D $0A $0E $08 $02 $0A
	.db $81 $02 $0B $12 $0E $02 $10 $0A $0F $08 $81 $00 $06 $20 $81 $FF
	.db $07 $00 $00
	.dsb 2587, $FF
	
.BANK 5	
.ORG $0000	
	
	; Data from 14000 to 1401F (32 bytes)
	.db $22 $3F $2F $2A $00 $15 $0A $06 $01 $1E $36 $20 $30 $3A $3C $0C
	.dsb 12, $00
	.db $03 $00 $00 $00
	
; 1st entry of Pointer Table from B62 (indexed by _RAM_C092_)	
; Data from 14020 to 14D91 (3442 bytes)	
_DATA_14020_:	
	.incbin "data/File06_14020_14D91.dat"
	
; 4th entry of Pointer Table from B62 (indexed by _RAM_C092_)	
; Data from 14D92 to 158AE (2845 bytes)	
_DATA_14D92_:	
	.incbin "data/File07_14D92_158AE.dat"
	
; 8th entry of Pointer Table from B62 (indexed by _RAM_C092_)	
; Data from 158AF to 159DC (302 bytes)	
_DATA_158AF_:	
	.db $08 $00 $08 $FF $81 $00 $07 $7F $85 $00 $3E $B7 $F6 $F9 $03 $FA
	.db $81 $00 $03 $7F $85 $3F $BF $BE $B0 $00 $05 $FF $86 $00 $7E $87
	.db $BD $BF $85 $03 $BD $90 $FF $7F $7F $67 $57 $4F $5B $67 $FF $6F
	.db $6F $2C $6B $4B $6B $6C $04 $FF $02 $7E $92 $7F $DF $FF $DE $9C
	.db $5A $D6 $00 $DE $DE $FF $CC $B3 $BF $8E $37 $B3 $CC $02 $FF $02
	.db $7F $81 $FF $02 $7F $02 $FF $08 $7F $03 $FA $8B $F9 $F5 $E2 $C5
	.db $C5 $81 $8C $81 $02 $42 $80 $02 $44 $04 $00 $81 $3C $03 $81 $05
	.db $7F $02 $7E $8D $7C $85 $85 $05 $25 $25 $05 $45 $15 $45 $45 $4E
	.db $44 $02 $50 $02 $40 $06 $00 $82 $18 $66 $04 $7C $91 $7A $7B $78
	.db $79 $32 $65 $C5 $90 $75 $02 $02 $B2 $80 $40 $40 $01 $43 $03 $A3
	.db $A2 $99 $3C $A5 $A5 $7E $99 $18 $7E $4C $A6 $A3 $09 $AE $50 $48
	.db $45 $77 $26 $56 $75 $74 $75 $75 $FF $77 $B3 $B5 $D5 $15 $D6 $D7
	.db $FF $47 $5B $03 $5D $92 $5B $47 $FF $DC $AD $AD $74 $05 $75 $75
	.db $FF $3D $DA $DA $37 $70 $B7 $D7 $04 $FF $04 $7F $82 $FF $F3 $03
	.db $E1 $81 $F3 $03 $FF $08 $78 $A0 $D1 $D9 $6D $36 $36 $1A $0D $07
	.db $53 $50 $50 $A8 $88 $E2 $0F $21 $E7 $7E $E7 $7E $3C $5A $E7 $00
	.db $8F $BF $B2 $6B $7A $5A $B4 $60 $08 $1E $08 $78 $81 $06 $02 $00
	.db $02 $01 $02 $02 $A1 $05 $5E $9E $9F $1F $1C $DB $C4 $F4 $E7 $FF
	.db $FF $E7 $00 $FF $18 $42 $7A $79 $F8 $F9 $3B $D9 $22 $25
	
; 2nd entry of Pointer Table from 171C2 (indexed by unknown)	
; Data from 159DD to 166BD (3297 bytes)	
_DATA_159DD_:	
	.incbin "data/File08_159DD_166BD.dat"
	
; 12th entry of Pointer Table from B62 (indexed by _RAM_C092_)	
; Data from 166BE to 1706B (2478 bytes)	
_DATA_166BE_:	
	.incbin "data/File09_166BE_1706B.dat"
	
; 16th entry of Pointer Table from B62 (indexed by _RAM_C092_)	
; Data from 1706C to 171C1 (342 bytes)	
_DATA_1706C_:	
	.db $08 $00 $08 $FF $12 $00 $81 $20 $03 $10 $86 $18 $08 $87 $BD $BF
	.db $85 $03 $BD $90 $FF $7F $7F $67 $57 $4F $5B $67 $FF $6F $6F $2C
	.db $6B $4B $6B $6C $04 $FF $03 $7F $91 $DF $FF $EC $CB $AB $68 $03
	.db $EB $EC $FF $CC $33 $BF $8C $37 $33 $8C $02 $FF $02 $7F $81 $FF
	.db $02 $7F $02 $FF $04 $00 $04 $02 $10 $00 $02 $28 $83 $40 $50 $90
	.db $02 $A0 $09 $00 $84 $01 $02 $00 $01 $05 $00 $95 $80 $41 $22 $96
	.db $42 $27 $0C $1E $67 $8C $18 $10 $21 $E3 $E6 $00 $E0 $70 $70 $C0
	.db $80 $0A $00 $83 $08 $0C $0F $05 $00 $83 $1C $40 $C8 $03 $04 $89
	.db $25 $A0 $00 $00 $0F $31 $63 $1E $80 $11 $00 $A2 $77 $26 $56 $75
	.db $74 $75 $75 $FF $78 $B7 $B7 $D8 $1F $D7 $D8 $FF $DD $5B $D7 $C7
	.db $5B $5D $DD $FF $04 $7D $7D $05 $7D $7D $04 $FF $7F $BF $03 $DF
	.db $84 $BF $7F $FF $F3 $03 $E1 $81 $F3 $03 $FF $85 $01 $02 $04 $05
	.db $02 $03 $00 $8B $60 $20 $80 $11 $30 $20 $40 $41 $00 $06 $61 $03
	.db $01 $82 $05 $8D $10 $00 $83 $FF $75 $35 $03 $55 $92 $65 $75 $FF
	.db $76 $37 $57 $57 $55 $65 $76 $FF $1B $B5 $B5 $AE $A0 $AE $6E $08
	.db $00 $90 $40 $01 $2C $36 $10 $18 $0E $03 $61 $01 $01 $03 $06 $7C
	.db $00 $80 $38 $00 $C0 $E0 $07 $4F $D8 $81 $99 $B9 $3B $3F $3F $7F
	.db $DE $9F $37 $00 $89 $FF $E3 $CB $D6 $86 $9A $36 $70 $FF $EF $2D
	.db $19 $99 $31 $75 $0E $E7 $E7 $CF $CB $C0 $89 $01 $FF $FF $C7 $E7
	.db $2F $6E $60 $1F $FF $F9 $F9 $F3 $E7 $CF $9F $06 $79 $FF $FF $FC
	.db $B8 $09 $4A $68 $F3 $03 $FF $94 $DB $1F $1B $93 $C7 $FF $FF $EC
	.db $C9 $D9 $94 $0C $FF $FF
	
	; Pointer Table from 171C2 to 171C5 (2 entries, indexed by unknown)
	.dw _RAM_CDEF_ _DATA_159DD_
	
	; Data from 171C6 to 17C60 (2715 bytes)
	.incbin "data/File10_171C6_17C60.dat"
	
; Data from 17C61 to 17DFF (415 bytes)	
_DATA_17C61_:	
	.db $7F $00 $7F $00 $72 $00 $00 $7F $00 $7F $00 $72 $00 $00 $10 $00
	.db $81 $FF $0E $80 $02 $FF $0E $01 $02 $FF $0E $00 $02 $FF $0F $80
	.db $81 $FF $0F $00 $81 $FF $0F $01 $0F $80 $81 $FF $0F $00 $81 $FF
	.db $0F $01 $81 $FF $08 $00 $81 $FF $07 $80 $08 $00 $81 $FF $07 $01
	.db $10 $80 $10 $01 $08 $00 $81 $FF $0A $00 $84 $01 $02 $04 $08 $02
	.db $10 $02 $20 $81 $41 $02 $40 $02 $80 $A0 $03 $1C $60 $80 $00 $00
	.db $C0 $67 $61 $01 $00 $80 $C0 $C0 $03 $0C $C0 $38 $06 $01 $40 $60
	.db $63 $FF $08 $0C $98 $F0 $70 $FE $1F $03 $03 $00 $86 $80 $40 $20
	.db $10 $88 $08 $02 $04 $03 $02 $82 $C1 $01 $02 $80 $03 $40 $88 $21
	.db $20 $10 $10 $08 $04 $02 $01 $03 $00 $03 $23 $03 $43 $8F $C3 $C7
	.db $C6 $C6 $08 $00 $80 $60 $1C $03 $04 $FE $06 $06 $FE $05 $06 $86
	.db $02 $00 $01 $06 $38 $C0 $02 $01 $03 $02 $02 $04 $02 $08 $84 $10
	.db $20 $40 $80 $03 $00 $00 $10 $00 $81 $FF $0E $80 $02 $FF $0E $01
	.db $02 $FF $0E $00 $02 $FF $0F $80 $81 $FF $0F $00 $81 $FF $0F $01
	.db $0F $80 $81 $FF $0F $00 $81 $FF $0F $01 $81 $FF $08 $00 $81 $FF
	.db $07 $80 $08 $00 $81 $FF $07 $01 $10 $80 $10 $01 $08 $00 $81 $FF
	.db $0A $00 $84 $01 $02 $04 $08 $02 $10 $02 $20 $81 $41 $02 $40 $02
	.db $80 $A0 $03 $1C $60 $80 $00 $00 $C0 $67 $61 $01 $00 $80 $C0 $C0
	.db $03 $0C $C0 $38 $06 $01 $40 $60 $63 $FF $08 $0C $98 $F0 $70 $FE
	.db $1F $03 $03 $00 $86 $80 $40 $20 $10 $88 $08 $02 $04 $03 $02 $82
	.db $C1 $01 $02 $80 $03 $40 $88 $21 $20 $10 $10 $08 $04 $02 $01 $03
	.db $00 $03 $23 $03 $43 $8F $C3 $C7 $C6 $C6 $08 $00 $80 $60 $1C $03
	.db $04 $FE $06 $06 $FE $05 $06 $86 $02 $00 $01 $06 $38 $C0 $02 $01
	.db $03 $02 $02 $04 $02 $08 $84 $10 $20 $40 $80 $03 $00 $00
	.dsb 33, $FF
	
; Data from 17E00 to 17FFF (512 bytes)	
_DATA_17E00_:	
	.db $17 $01 $00 $01 $02 $01 $00 $01 $1D $01 $00 $01 $02 $01 $00 $01
	.db $17 $01 $00 $01 $02 $01 $00 $01 $1D $01 $00 $01 $03 $01 $00 $01
	.db $17 $01 $00 $01 $02 $01 $00 $01 $1D $01 $00 $01 $04 $01 $00 $01
	.db $17 $01 $00 $01 $03 $01 $00 $01 $1D $01 $00 $01 $02 $01 $00 $01
	.db $17 $01 $00 $01 $03 $01 $00 $01 $1D $01 $00 $01 $03 $01 $00 $01
	.db $17 $01 $00 $01 $03 $01 $00 $01 $1D $01 $00 $01 $04 $01 $00 $01
	.db $17 $01 $00 $01 $03 $01 $00 $01 $1D $01 $00 $01 $05 $01 $00 $01
	.db $17 $01 $00 $01 $04 $01 $00 $01 $1D $01 $00 $01 $02 $01 $00 $01
	.db $17 $01 $00 $01 $04 $01 $00 $01 $1D $01 $00 $01 $03 $01 $00 $01
	.db $17 $01 $00 $01 $04 $01 $00 $01 $1D $01 $00 $01 $04 $01 $00 $01
	.db $17 $01 $00 $01 $04 $01 $00 $01 $1D $01 $00 $01 $05 $01 $00 $01
	.db $17 $01 $00 $01 $05 $01 $00 $01 $1D $01 $00 $01 $02 $01 $00 $01
	.db $17 $01 $00 $01 $05 $01 $00 $01 $1D $01 $00 $01 $03 $01 $00 $01
	.db $17 $01 $00 $01 $05 $01 $00 $01 $1D $01 $00 $01 $04 $01 $00 $01
	.db $17 $01 $00 $01 $05 $01 $00 $01 $1D $01 $00 $01 $05 $01 $00 $01
	.db $17 $01 $00 $01 $06 $01 $00 $01 $1D $01 $00 $01 $02 $01 $00 $01
	.db $17 $01 $00 $01 $06 $01 $00 $01 $1D $01 $00 $01 $03 $01 $00 $01
	.db $17 $01 $00 $01 $06 $01 $00 $01 $1D $01 $00 $01 $04 $01 $00 $01
	.db $17 $01 $00 $01 $06 $01 $00 $01 $1D $01 $00 $01 $05 $01 $00 $01
	.dsb 208, $FF
	
.BANK 6	
.ORG $0000	
	
_LABEL_18000_:	
		exx
		ld a, (_RAM_DE00_)
		or a
		ex af, af'
		ld hl, _RAM_DE0C_
		exx
		call _LABEL_18099_
		call _LABEL_180B2_
		call _LABEL_180F2_
_LABEL_18013_:	
		call _LABEL_18381_
		call _LABEL_1806A_
		ld a, (_RAM_DE00_)
		or a
		jp z, ++
		ld ix, _RAM_DE0E_
		ld b, $0A
--:	
		push bc
		ld a, $04
		cp b
		jr z, +
		bit 7, (ix+0)
		call nz, _LABEL_18542_
-:	
		ld de, $0020
		add ix, de
		pop bc
		djnz --
		ret
	
+:	
		bit 7, (ix+0)
		call nz, _LABEL_184EC_
		jr -
	
++:	
		ld ix, _RAM_DE6E_
		ld b, $07
--:	
		push bc
		ld a, $04
		cp b
		jr z, +
		bit 7, (ix+0)
		call nz, _LABEL_18BA9_
-:	
		ld de, $0020
		add ix, de
		pop bc
		djnz --
		ret
	
+:	
		bit 7, (ix+0)
		call nz, _LABEL_18AEB_
		jr -
	
_LABEL_1806A_:	
		ld hl, _RAM_DF2E_
		bit 7, (hl)
		ret z
		ld a, (_RAM_DF0E_)
		or a
		jp m, ++
		bit 6, (hl)
		jr z, +
		inc hl
		ld a, (hl)
		cp $E0
		jr nz, +
		ld hl, _RAM_DE6E_
		set 2, (hl)
+:	
		ld hl, _RAM_DEAE_
		set 2, (hl)
		ld a, (_RAM_DE00_)
		or a
		ret nz
		ld hl, _RAM_DECE_
		set 2, (hl)
		ret
	
++:	
		set 2, (hl)
		ret
	
_LABEL_18099_:	
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
		ld b, $07
-:	
		inc (hl)
		add hl, de
		djnz -
		ret
	
_LABEL_180B2_:	
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
		ld hl, _DATA_18267_
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
		jp _LABEL_18013_
	
	; Data from 180DE to 180DE (1 bytes)
	.db $C9
	
+:	
		ld a, (_RAM_DE07_)
		cp (hl)
		jr z, +
		jr nc, ++
+:	
		ld a, (de)
		ld (_RAM_DE03_), a
		ld a, (hl)
		ld (_RAM_DE07_), a
++:	
		xor a
		ld (de), a
		ret
	
_LABEL_180F2_:	
		ld a, (_RAM_DE0A_)
		or a
		ret z
		ld a, (_RAM_DE0B_)
		dec a
		jr z, +
		ld (_RAM_DE0B_), a
		ret
	
+:	
		ld a, $12
		ld (_RAM_DE0B_), a
		ld a, (_RAM_DE0A_)
		dec a
		ld (_RAM_DE0A_), a
		jp z, _LABEL_18A68_
		ld hl, _RAM_DE16_
		ld de, $0020
		ld b, $06
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
		call _LABEL_18AE8_
		djnz -
		ret
	
; 2nd entry of Jump Table from 18379 (indexed by _RAM_DE03_)	
_LABEL_18143_:	
		ld a, (_RAM_DF0E_)
		or a
		jp nz, +
		ld a, (_RAM_DF2E_)
		or a
		jp z, ++
+:	
		xor a
		ld (_RAM_DF0E_), a
		ld (_RAM_DF2E_), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $25
		out (Port_FMAddress), a
		call _LABEL_18AE8_
		xor a
		out (Port_FMData), a
		ld hl, _RAM_DEAE_
		res 2, (hl)
++:	
		ld a, $0C
		ld (_RAM_DE0A_), a
		ld a, $12
		ld (_RAM_DE0B_), a
		xor a
		ld (_RAM_DECE_), a
		ld a, $FF
		out (Port_PSG), a
		ld a, (_RAM_DE00_)
		or a
		jp z, _LABEL_184DD_
		ld b, $03
		xor a
		ld c, Port_FMAddress
		ld d, $23
-:	
		out (c), d
		inc d
		call _LABEL_18AE8_
		out (Port_FMData), a
		call _LABEL_18AE8_
		djnz -
		ld (_RAM_DEAE_), a
		ld (_RAM_DECE_), a
		ld (_RAM_DEEE_), a
		ld (_RAM_DF0E_), a
		jp _LABEL_184DD_
	
; 4th entry of Jump Table from 18379 (indexed by _RAM_DE03_)	
_LABEL_181A7_:	
		xor a
		ld (_RAM_DF2E_), a
		ld hl, _RAM_DECE_
		res 2, (hl)
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ex af, af'
		ld a, $25
		call _LABEL_18234_
		ld a, $35
		out (Port_FMAddress), a
		ld hl, _RAM_DEB5_
		ld a, (hl)
		and $F0
		ld c, a
		inc hl
		ld a, (hl)
		and $0F
		or c
		out (Port_FMData), a
; 3rd entry of Jump Table from 18379 (indexed by _RAM_DE03_)	
_LABEL_181CD_:	
		xor a
		ld (_RAM_DE07_), a
		ld (_RAM_DEEE_), a
		ld (_RAM_DF0E_), a
		ld hl, _RAM_DE8E_
		res 2, (hl)
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ld hl, _RAM_DECE_
		res 2, (hl)
		ld hl, _DATA_18AE5_
		ld c, Port_PSG
		ld b, $03
		otir
		ld a, $24
		call _LABEL_18234_
		ld hl, _DATA_18AE5_
		ld c, Port_PSG
		ld b, $03
		otir
		ld a, $25
		call _LABEL_18234_
		ld a, (_RAM_DF2E_)
		or a
		jp z, ++
		ld hl, _RAM_DF2E_
		res 2, (hl)
		ld a, (_RAM_DE00_)
		or a
		jp nz, +
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
		jr ++
	
+:	
		ld a, $35
		out (Port_FMAddress), a
		ld hl, _RAM_DF35_
		ld a, (hl)
		and $F0
		ld c, a
		inc hl
		ld a, (hl)
		and $0F
		or c
		out (Port_FMData), a
++:	
		jp _LABEL_184DD_
	
_LABEL_18234_:	
		out (Port_FMAddress), a
		call _LABEL_18AE8_
		xor a
		out (Port_FMData), a
		ret
	
_LABEL_1823D_:	
		push bc
		ld b, $12
		ld hl, _DATA_18255_
		ld c, Port_FMData
-:	
		dec c
		outi
		inc c
		call _LABEL_18AE8_
		outi
		call _LABEL_18AE8_
		jr nz, -
		pop bc
		ret
	
; Data from 18255 to 18266 (18 bytes)	
_DATA_18255_:	
	.db $16 $20 $17 $B0 $18 $01 $26 $05 $27 $01 $28 $01 $36 $01 $37 $81
	.db $38 $36
	
; Data from 18267 to 1829D (55 bytes)	
_DATA_18267_:	
	.db $80 $80 $80 $80 $80 $80 $80 $80 $00 $00 $00 $00 $00 $00 $00 $20
	.db $25 $30 $60 $20 $50 $65 $20 $20 $40 $65 $65 $65 $65 $65 $30 $35
	.db $35 $60 $40 $20 $30 $70 $25 $20 $20 $35 $35 $30 $20 $30 $25 $25
	.db $65 $20 $80 $80 $80 $80 $80
	
; Data from 1829E to 182AC (15 bytes)	
_DATA_1829E_:	
	.db $08 $07 $06 $08 $00 $03
	.dsb 9, $00
	
; Pointer Table from 182AD to 182CA (15 entries, indexed by _RAM_DE03_)	
_DATA_182AD_:	
	.dw _DATA_19D64_ _DATA_19DC9_ _DATA_19E2E_ _DATA_19E93_ _DATA_19EF8_ _DATA_19F5D_ _DATA_19FC2_ _DATA_1A027_
	.dw _DATA_19D64_ _DATA_19D64_ _DATA_19D64_ _DATA_19D64_ _DATA_19D64_ _DATA_19D64_ _DATA_19D64_
	
; Pointer Table from 182CB to 18310 (35 entries, indexed by _RAM_DE03_)	
_DATA_182CB_:	
	.dw _DATA_1A346_ _DATA_1A35F_ _DATA_1A38A_ _DATA_1A3B5_ _DATA_1A412_ _DATA_1A439_ _DATA_1A493_ _DATA_1A4DA_
	.dw _DATA_1A509_ _DATA_1A538_ _DATA_1A570_ _DATA_1A5AE_ _DATA_1A610_ _DATA_1A65A_ _DATA_1A698_ _DATA_1A6FB_
	.dw _DATA_1A72C_ _DATA_1A757_ _DATA_1A78B_ _DATA_1A7CC_ _DATA_1A80F_ _DATA_1A84E_ _DATA_1A882_ _DATA_1A8CF_
	.dw _DATA_1A8FE_ _DATA_1A926_ _DATA_1A950_ _DATA_1A98B_ _DATA_1A9B6_ _DATA_1A9E4_ _DATA_1AA12_ _DATA_1AA43_
	.dw _DATA_1AA6E_ _DATA_1AAA6_ _DATA_1AAF0_
	
	; Pointer Table from 18311 to 18312 (1 entries, indexed by _RAM_DE03_)
	.dw _DATA_1A926_
	
; Pointer Table from 18313 to 18330 (15 entries, indexed by _RAM_DE03_)	
_DATA_18313_:	
	.dw _DATA_19D24_ _DATA_19D89_ _DATA_19DEE_ _DATA_19E53_ _DATA_19EB8_ _DATA_19F1D_ _DATA_19F82_ _DATA_19FE7_
	.dw _DATA_19D24_ _DATA_19D24_ _DATA_19D24_ _DATA_19D24_ _DATA_19D24_ _DATA_19D24_ _DATA_19D24_
	
; Pointer Table from 18331 to 18376 (35 entries, indexed by _RAM_DE03_)	
_DATA_18331_:	
	.dw _DATA_1A33C_ _DATA_1A355_ _DATA_1A380_ _DATA_1A3A2_ _DATA_1A408_ _DATA_1A426_ _DATA_1A480_ _DATA_1A4D0_
	.dw _DATA_1A4FF_ _DATA_1A52E_ _DATA_1A55D_ _DATA_1A59B_ _DATA_1A5FD_ _DATA_1A647_ _DATA_1A685_ _DATA_1A6F1_
	.dw _DATA_1A722_ _DATA_1A74D_ _DATA_1A778_ _DATA_1A7C2_ _DATA_1A805_ _DATA_1A83B_ _DATA_1A866_ _DATA_1A8C5_
	.dw _DATA_1A8F4_ _DATA_1A91C_ _DATA_1A946_ _DATA_1A981_ _DATA_1A9AC_ _DATA_1A9DA_ _DATA_1AA08_ _DATA_1AA39_
	.dw _DATA_1AA64_ _DATA_1AA93_ _DATA_1AAE6_
	
	; Pointer Table from 18377 to 18378 (1 entries, indexed by _RAM_DE03_)
	.dw _DATA_1A91C_
	
; Jump Table from 18379 to 18380 (4 entries, indexed by _RAM_DE03_)	
_DATA_18379_:	
	.dw _LABEL_1AC4B_ _LABEL_18143_ _LABEL_181CD_ _LABEL_181A7_
	
_LABEL_18381_:	
		ld a, (_RAM_DE03_)
		bit 7, a
		ret z
		cp $90
		jp c, _LABEL_183CB_
		cp $B3
		jp c, _LABEL_183FC_
		cp $B4
		jp c, +
		cp $B9
		jp nc, _LABEL_18A68_
		sub $B4
		add a, a
		ld c, a
		ld b, $00
		ld hl, _DATA_18379_
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
+:	
		ld hl, _DATA_18379_ - 2
		sub $B3
		ex af, af'
		jr nz, +
		ld hl, _DATA_18313_ - 2
+:	
		ex af, af'
		call _LABEL_184E3_
		ld de, _RAM_DF2E_
		ld a, $FF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
		jp _LABEL_1849D_
	
_LABEL_183CB_:	
		sub $81
		ret m
		push af
		call _LABEL_18A68_
		call _LABEL_1823D_
		pop af
		ld b, $00
		ld c, a
		ld hl, _DATA_1829E_
		add hl, bc
		push af
		ld a, (hl)
		ld (_RAM_DE01_), a
		ld (_RAM_DE02_), a
		ld de, _RAM_DE6E_
		ld hl, _DATA_182AD_
		ex af, af'
		jr z, +
		ld de, _RAM_DE0E_
		ld hl, _DATA_18313_
+:	
		ex af, af'
		pop af
		call _LABEL_184E3_
		jp _LABEL_1849D_
	
_LABEL_183FC_:	
		sub $90
		ld hl, _DATA_182CB_
		ex af, af'
		jr z, +
		ld hl, _DATA_18331_
+:	
		ex af, af'
		call _LABEL_184E3_
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
		ld de, _RAM_DF0E_
		jr +++
	
+:	
		call _LABEL_18A68_
		ld de, _RAM_DE0E_
		jr _LABEL_1849D_
	
++:	
		ld de, _RAM_DEEE_
		ld a, $24
		call _LABEL_18234_
		ld a, $14
		ld hl, _RAM_DE8E_
		set 2, (hl)
+++:	
		ld hl, _RAM_DEAE_
		set 2, (hl)
		add a, $10
		call _LABEL_18234_
		jr _LABEL_1849D_
	
++++:	
		ex af, af'
		cp $C0
		jr z, ++
		cp $E0
		jr z, +
		cp $A0
		jr z, +++
		call _LABEL_18A68_
		ld de, _RAM_DE6E_
		jr _LABEL_1849D_
	
+:	
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
		ld hl, _RAM_DECE_
		set 2, (hl)
++:	
		ld de, _RAM_DF0E_
		jr ++++
	
+++:	
		ld de, _RAM_DEEE_
		ld hl, _RAM_DE8E_
		set 2, (hl)
++++:	
		ld h, b
		ld l, c
		push de
		ld de, $000B
		add hl, de
		pop de
		ld a, (hl)
		cp $E0
		jr nz, +
		ld hl, _RAM_DECE_
		set 2, (hl)
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
+:	
		ld a, $FF
		out (Port_PSG), a
		ld a, $C0
		out (Port_PSG), a
		xor a
		out (Port_PSG), a
		ld hl, _RAM_DEAE_
		set 2, (hl)
_LABEL_1849D_:	
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
		jp nz, _LABEL_18637_
		jp _LABEL_18CB0_
	
+:	
		pop bc
		djnz -
_LABEL_184DD_:	
		ld a, $80
		ld (_RAM_DE03_), a
		ret
	
_LABEL_184E3_:	
		add a, a
		ld b, $00
		ld c, a
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ret
	
_LABEL_184EC_:	
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
		call _LABEL_18AE8_
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
		jp c, _LABEL_18718_
		bit 5, a
		jr z, +
		or $01
+:	
		bit 2, a
		jr z, +
		or $10
+:	
		ld (ix+16), a
		jp _LABEL_1870A_
	
++:	
		ld hl, +	; Overriding return address
		jp _LABEL_187BE_
	
+:	
		inc de
		jp -
	
_LABEL_18542_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		call z, _LABEL_186B0_
		ld (_RAM_DE0C_), a
		cp $80
		jp z, _LABEL_185AB_
		bit 5, (ix+0)
		jp z, _LABEL_185AB_
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
_LABEL_185AB_:	
		bit 2, (ix+0)
		ret nz
		bit 0, (ix+0)
		jr z, +
		ld a, $03
		cp (ix+11)
		jp c, _LABEL_1864D_
+:	
		ld a, (ix+19)
		cp $1F
		ret z
		ld a, (_RAM_DE0C_)
		bit 0, (ix+7)
		jr nz, +
		cp $02
		jp c, _LABEL_1864D_
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
		ld hl, _DATA_1ABD8_
		call _LABEL_18662_
		call _LABEL_1866F_
+:	
		bit 3, (ix+0)
		call nz, _LABEL_18765_
		ld c, Port_FMData
		ld a, (ix+1)
		out (Port_FMAddress), a
		add a, $10
		call _LABEL_18AE8_
		call _LABEL_18AE8_
		out (c), l
		call _LABEL_18AE8_
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
	
_LABEL_18637_:	
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
	
_LABEL_1864D_:	
		ld (ix+19), $1F
		ld a, (ix+1)
		add a, $10
		out (Port_FMAddress), a
		call _LABEL_18AE8_
		call _LABEL_18AE8_
		xor a
		out (Port_FMData), a
		ret
	
_LABEL_18662_:	
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
_LABEL_1866F_:	
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
	
_LABEL_186B0_:	
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
_LABEL_186CC_:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, _LABEL_187BB_
		bit 3, (ix+0)
		jp nz, _LABEL_18741_
		cp $80
		jp c, _LABEL_18718_
		jr nz, +
+:	
		call _LABEL_187A4_
		ld a, (hl)
		ld (ix+14), a
		inc hl
		ld a, (hl)
		ld (ix+15), a
_LABEL_186ED_:	
		bit 5, (ix+0)
		jp z, _LABEL_1870A_
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
	
_LABEL_1870A_:	
		ld a, (de)
		or a
		jp p, +
		ld a, (ix+21)
		ld (ix+10), a
		jr _LABEL_18728_
	
+:	
		inc de
_LABEL_18718_:	
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
_LABEL_18728_:	
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
	
_LABEL_18741_:	
		ld h, a
		ld a, (de)
		inc de
		ld l, a
		or h
		jr z, +++
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
		jp _LABEL_186ED_
	
_LABEL_18765_:	
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
	
_LABEL_187A4_:	
		sub $80
		jr z, +
		add a, (ix+5)
+:	
		ld hl, $8CBD
		ex af, af'
		jr z, +
		ld hl, _DATA_18D4F_
+:	
		ex af, af'
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ret
	
_LABEL_187BB_:	
		ld hl, +	; Overriding return address
_LABEL_187BE_:	
		push hl
		sub $EC
		jp c, _LABEL_18885_
		ld hl, _DATA_187D5_
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
		jp _LABEL_186CC_
	
; Jump Table from 187D5 to 187FC (20 entries, indexed by unknown)	
_DATA_187D5_:	
	.dw _LABEL_18886_ _LABEL_188FC_ _LABEL_187FD_ _LABEL_1880F_ _LABEL_1895C_ _LABEL_18850_ _LABEL_18968_ _LABEL_188A2_
	.dw _LABEL_188D9_ _LABEL_188BB_ _LABEL_188F6_ _LABEL_18A50_ _LABEL_18A22_ _LABEL_18A3D_ _LABEL_18880_ _LABEL_1886E_
	.dw _LABEL_1893E_ _LABEL_1894D_ _LABEL_1883C_ _LABEL_1881B_
	
; 3rd entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_187FD_:	
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
	
; 4th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1880F_:	
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (de)
		add a, (ix+8)
		jp _LABEL_1888C_
	
; 20th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1881B_:	
		ld a, (ix+1)
		add a, $10
		out (Port_FMAddress), a
		ld h, d
		ld l, e
		ld b, $08
		xor a
		ld c, Port_FMData
		out (c), a
-:	
		call _LABEL_18AE8_
		out (Port_FMAddress), a
		inc a
		call _LABEL_18AE8_
		outi
		jr nz, -
		ld d, h
		ld e, l
		dec de
		ret
	
; 19th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1883C_:	
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, (de)
		add a, (ix+8)
		ld (ix+8), a
		jp _LABEL_18896_
	
; 6th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18850_:	
		set 0, (ix+0)
		dec de
		ret
	
	; Data from 18856 to 1886D (24 bytes)
	.db $1B $DD $7E $08 $E6 $0F $B7 $C8 $3D $20 $04 $F6 $40 $18 $01 $3D
	.db $F6 $80 $DD $77 $08 $C3 $96 $88
	
; 16th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1886E_:	
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
		add a, (ix+5)
		ld (ix+5), a
		ret
	
; 15th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18880_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
_LABEL_18885_:	
		dec de
; 1st entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18886_:	
		ld a, (_RAM_DE0A_)
		or a
		ret nz
		ld a, (de)
_LABEL_1888C_:	
		and $0F
		ld (ix+8), a
		bit 2, (ix+0)
		ret nz
_LABEL_18896_:	
		ex af, af'
		jp nz, +
		ex af, af'
		jp _LABEL_18CB0_
	
+:	
		ex af, af'
		jp _LABEL_18637_
	
; 8th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_188A2_:	
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
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ret
	
; 10th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_188BB_:	
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
		jp _LABEL_18637_
	
; 9th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_188D9_:	
		ld a, (de)
		ld (ix+6), a
		ret
	
	; Data from 188DE to 188F5 (24 bytes)
	.db $06 $00 $0E $1C $DD $E5 $E1 $09 $7E $B7 $20 $06 $1A $3D $77 $13
	.db $13 $C9 $13 $35 $28 $02 $13 $C9
	
; 11th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_188F6_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 2nd entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_188FC_:	
		ld a, (de)
		cp $01
		jr z, +
		ld a, (ix+23)
		ld (ix+5), a
		res 5, (ix+0)
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, (ix+22)
		ld (ix+7), a
		jp _LABEL_18637_
	
+:	
		set 5, (ix+0)
		ld a, (ix+5)
		ld (ix+23), a
		xor a
		ld (ix+5), a
		ld a, (_RAM_DE00_)
		or a
		ret z
		ld a, $12
		ld (ix+5), a
		ld a, (ix+7)
		ld (ix+22), a
		ld (ix+7), $53
		jp _LABEL_18637_
	
; 17th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1893E_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 5, (ix+0)
		ret
	
+:	
		res 5, (ix+0)
		ret
	
; 18th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1894D_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 3, (ix+0)
		ret
	
+:	
		res 3, (ix+0)
		ret
	
; 5th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_1895C_:	
		ld a, (_RAM_DE00_)
		or a
		jp z, +
		inc de
		ret
	
+:	
		jp _LABEL_188F6_
	
; 7th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18968_:	
		ld hl, _RAM_DF2E_
		res 2, (hl)
		xor a
		ld (_RAM_DE07_), a
		ld (ix+0), a
		ex af, af'
		jp nz, _LABEL_189CE_
		ex af, af'
		ld a, (ix+1)
		add a, $1F
		out (Port_PSG), a
		cp $DF
		jp nc, ++
		cp $9F
		jp nz, +
		ld hl, _RAM_DE6E_
		res 2, (hl)
		ld hl, _RAM_DE81_
		jr +++
	
+:	
		ld hl, _RAM_DE8E_
		res 2, (hl)
		ld hl, _RAM_DEA1_
		jr +++
	
++:	
		ld hl, _RAM_DF2E_
		bit 7, (hl)
		jr z, +
		res 2, (hl)
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
		jp _LABEL_189CB_
	
+:	
		ld hl, _RAM_DECE_
		res 2, (hl)
		ld a, $DF
		out (Port_PSG), a
		ld a, (_RAM_DE08_)
		out (Port_PSG), a
		ld hl, _RAM_DEAE_
		res 2, (hl)
		ld hl, _RAM_DEC1_
+++:	
		ld a, $1F
		ld (hl), a
_LABEL_189CB_:	
		pop hl
		pop hl
		ret
	
_LABEL_189CE_:	
		ex af, af'
		ld a, (ix+1)
		add a, $10
		call _LABEL_18234_
		ld a, (ix+1)
		cp $14
		jr nz, +
		ld hl, _RAM_DE8E_
		ld a, (hl)
		or a
		jp p, _LABEL_189CB_
		res 2, (hl)
		ld a, $34
		out (Port_FMAddress), a
		ld hl, _RAM_DE95_
-:	
		ld a, (hl)
		and $F0
		ld c, a
		inc hl
		ld a, (hl)
		and $0F
		or c
		out (Port_FMData), a
		jp _LABEL_189CB_
	
+:	
		ld a, (_RAM_DF2E_)
		or a
		jp p, +
		ld a, $35
		out (Port_FMAddress), a
		ld hl, _RAM_DF35_
		jp -
	
+:	
		ld hl, _RAM_DEAE_
		ld a, (hl)
		or a
		jp p, _LABEL_189CB_
		res 2, (hl)
		ld a, $35
		out (Port_FMAddress), a
		ld hl, _RAM_DEB5_
		jp -
	
; 13th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18A22_:	
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
	
; 14th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18A3D_:	
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
	
; 12th entry of Jump Table from 187D5 (indexed by unknown)	
_LABEL_18A50_:	
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
		jp nz, _LABEL_188F6_
		inc de
		ret
	
_LABEL_18A68_:	
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
		ld b, $0A
-:	
		ld de, $0018
		ld (hl), a
		add hl, de
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		ld de, $0005
		add hl, de
		djnz -
		ld a, $E4
		ld (_RAM_DE08_), a
		pop bc
		pop de
		pop hl
_LABEL_18AA7_:	
		push hl
		push bc
		ld hl, _DATA_18ADD_
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
		call _LABEL_18AE8_
		out (Port_FMData), a
		call _LABEL_18AE8_
		djnz -
		pop de
		pop bc
		pop hl
		ret
	
; Data from 18ADD to 18AE4 (8 bytes)	
_DATA_18ADD_:	
	.db $80 $00 $A0 $00 $C0 $00 $E4 $9F
	
; Data from 18AE5 to 18AE7 (3 bytes)	
_DATA_18AE5_:	
	.db $BF $DF $FF
	
_LABEL_18AE8_:	
		push hl
		pop hl
		ret
	
_LABEL_18AEB_:	
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
		ld hl, _DATA_1AB1F_
		call _LABEL_18662_
		call _LABEL_18C78_
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
		jp c, _LABEL_18718_
		call ++
		ld a, (de)
		inc de
		cp $80
		jp c, _LABEL_18718_
		dec de
		ld a, (ix+21)
		ld (ix+10), a
		jp _LABEL_18728_
	
	; Data from 18B3A to 18B3D (4 bytes)
	.db $1B $C3 $28 $87
	
+:	
		ld hl, +	; Overriding return address
		jp _LABEL_187BE_
	
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
		ld b, $02
		ld c, $E5
		jr ++++
	
++:	
		ld c, $04
		bit 0, a
		jr nz, +
		ld c, $03
+:	
		ex af, af'
		ld a, c
		ld b, $03
		ld c, $E4
		jr ++++
	
+++:	
		ld c, $E4
		bit 2, a
		jr z, +
		ld c, $E6
+:	
		ex af, af'
		ld a, $01
		ld b, $04
++++:	
		ld (ix+7), a
		ex af, af'
		bit 2, a
		jr z, +
		dec b
		dec b
+:	
		ld (ix+8), b
		ld a, c
		ld (_RAM_DE08_), a
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
_LABEL_18BA9_:	
		inc (ix+11)
		ld a, (ix+10)
		sub (ix+11)
		call z, _LABEL_186B0_
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
_LABEL_18C00_:	
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
		ld hl, _DATA_1AB1F_
		call _LABEL_18662_
		call _LABEL_18C78_
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
		ld hl, _DATA_1ABD8_
		call _LABEL_18662_
		call _LABEL_1866F_
+:	
		bit 6, (ix+0)
		ret nz
		ld a, (ix+1)
		cp $E0
		jr nz, +
		ld a, $C0
+:	
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
_LABEL_18C78_:	
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
		jp _LABEL_18C00_
	
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
	
_LABEL_18CB0_:	
		ld a, (ix+8)
		and $0F
		or (ix+1)
		add a, $10
		out (Port_PSG), a
		ret
	
	; Data from 18CBD to 18D4E (146 bytes)
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
	
; Data from 18D4F to 18DE2 (148 bytes)	
_DATA_18D4F_:	
	.db $00 $00 $57 $11 $6B $11 $81 $11 $98 $11 $B0 $11 $CA $11 $E5 $11
	.db $01 $13 $10 $13 $20 $13 $31 $13 $43 $13 $57 $13 $6B $13 $81 $13
	.db $98 $13 $B0 $13 $CA $13 $E5 $13 $01 $15 $10 $15 $20 $15 $31 $15
	.db $43 $15 $57 $15 $6B $15 $81 $15 $98 $15 $B0 $15 $CA $15 $E5 $15
	.db $01 $17 $10 $17 $20 $17 $31 $17 $43 $17 $57 $17 $6B $17 $81 $17
	.db $98 $17 $B0 $17 $CA $17 $E5 $17 $01 $19 $10 $19 $20 $19 $31 $19
	.db $43 $19 $57 $19 $6B $19 $81 $19 $98 $19 $B0 $19 $CA $19 $E5 $19
	.db $01 $1B $10 $1B $20 $1B $31 $1B $43 $1B $57 $1B $6B $1B $81 $1B
	.db $98 $1B $B0 $1B $CA $1B $E5 $1B $01 $1D $10 $1D $20 $1D $31 $1D
	.db $43 $1D $FF $FF
	
; Data from 18DE3 to 18E84 (162 bytes)	
_DATA_18DE3_:	
	.db $80 $30 $30 $30 $30 $C1 $03 $BF $BD $BA $B8 $BA $BD $BA $BD $BD
	.db $BF $BD $BF $BF $C1 $C1 $80 $30 $C1 $03 $C1 $C1 $C1 $C1 $BF $BD
	.db $BA $B8 $BA $B8 $BA $BD $BA $B8 $BA $80 $30 $F7 $00 $02 $E8 $8D
	.db $C6 $03 $C4 $C1 $80 $BF $80 $BD $80 $B8 $09 $BA $03 $80 $0C $C6
	.db $03 $C4 $C1 $80 $BF $80 $BD $C1 $80 $18 $C6 $03 $C4 $C1 $80 $BF
	.db $80 $BD $80 $B8 $09 $BA $03 $80 $0C $C6 $03 $C4 $C1 $80 $C4 $80
	.db $C6 $C6 $F5 $06 $80 $80 $0C $BC $03 $B8 $B5 $B1 $B0 $4E $B0 $03
	.db $B1 $B0 $AE $AC $A9 $AE $42 $A9 $03 $AC $AE $B0 $AE $B3 $BC $03
	.db $B8 $B5 $B1 $B0 $4E $B5 $03 $B1 $B0 $B1 $B5 $B8 $BA $3C $B0 $03
	.db $B1 $B5 $B8 $BC $03 $B8 $B5 $B1 $B0 $B1 $B5 $B8 $F5 $05 $70 $F6
	.db $E8 $8D
	
; Data from 18E85 to 19127 (675 bytes)	
_DATA_18E85_:	
	.db $F8 $F8 $8E $A2 $03 $80 $A2 $A2 $A0 $A7 $A5 $A2 $F8 $F8 $8E $A2
	.db $03 $80 $A2 $A2 $A0 $A2 $A5 $A5 $F7 $00 $06 $85 $8E $F8 $02 $8F
	.db $A2 $03 $A2 $AE $80 $A2 $80 $A1 $A2 $80 $09 $A2 $03 $99 $99 $9A
	.db $9B $F8 $02 $8F $A2 $03 $AE $A2 $80 $A2 $80 $A5 $A2 $80 $18 $F8
	.db $F8 $8E $A2 $03 $80 $A2 $A2 $A0 $A7 $A5 $A2 $F8 $F8 $8E $A2 $03
	.db $80 $03 $A2 $A2 $A0 $A2 $A5 $A5 $F8 $F8 $8E $A2 $03 $80 $A2 $A2
	.db $A0 $A7 $A5 $A2 $F8 $F8 $8E $A2 $03 $80 $A2 $A2 $A0 $A2 $A5 $A5
	.db $F6 $85 $8E $A2 $03 $80 $A2 $A2 $9D $A0 $9B $A0 $F9 $A2 $03 $AE
	.db $A2 $80 $A3 $80 $A4 $B0 $A5 $03 $80 $09 $A0 $03 $A0 $A1 $A1 $F9
	.db $80 $30 $30 $30 $30 $F5 $05 $70 $BC $03 $BA $B8 $B5 $B3 $B5 $B8
	.db $B5 $B8 $03 $B8 $BA $B8 $BA $BA $BC $BC $80 $30 $BC $03 $BC $BC
	.db $BC $BC $BA $B8 $B5 $B3 $03 $B5 $B3 $B5 $B8 $B5 $B3 $B5 $80 $30
	.db $F7 $00 $02 $1A $8F $BA $03 $B8 $B5 $80 $B3 $80 $B1 $80 $AC $09
	.db $AE $03 $80 $0C $BA $03 $B8 $B5 $80 $B3 $80 $BA $BD $80 $18 $BA
	.db $03 $B8 $B5 $80 $B3 $80 $B1 $80 $AC $09 $AE $03 $80 $0C $BA $03
	.db $B8 $B5 $80 $B8 $80 $C1 $C1 $80 $03 $F4 $00 $F5 $06 $80 $EF $02
	.db $80 $0C $BC $03 $B8 $B5 $B1 $B0 $4E $B0 $03 $B1 $03 $B0 $AE $AC
	.db $A9 $AE $42 $A9 $03 $AC $03 $AE $B0 $AE $B3 $BC $03 $B8 $03 $B5
	.db $B1 $B0 $4E $B5 $03 $B1 $03 $B0 $B1 $B5 $B8 $BA $3C $B0 $03 $B1
	.db $B5 $B8 $BC $03 $B8 $B5 $B1 $B0 $B1 $B5 $EF $FE $F5 $05 $70 $F4
	.db $01 $F6 $1A $8F $80 $30 $30 $30 $30 $80 $03 $80 $B5 $B5 $80 $80
	.db $B5 $B5 $80 $03 $80 $B5 $B5 $80 $B5 $B5 $B5 $F7 $00 $08 $CE $8F
	.db $B5 $03 $80 $80 $80 $B5 $80 $80 $80 $B5 $03 $80 $80 $80 $B5 $80
	.db $80 $80 $B5 $03 $80 $80 $80 $B5 $80 $B5 $80 $80 $03 $80 $80 $80
	.db $B5 $B5 $B5 $B5 $F7 $00 $02 $E5 $8F $80 $03 $80 $B5 $B5 $80 $80
	.db $B5 $B5 $80 $03 $80 $B5 $B5 $80 $B5 $B5 $B5 $F7 $00 $08 $0E $90
	.db $F6 $CE $8F $F8 $9B $90 $A2 $03 $80 $A2 $A2 $A0 $A7 $A5 $A2 $F8
	.db $9B $90 $A2 $03 $80 $A2 $A2 $A0 $A2 $A5 $A5 $F7 $00 $06 $28 $90
	.db $F8 $AC $90 $A2 $03 $A2 $AE $80 $A2 $80 $A1 $A2 $80 $09 $A2 $03
	.db $99 $99 $9A $9B $F8 $AC $90 $A2 $03 $AE $A2 $80 $A2 $80 $A5 $A2
	.db $80 $18 $F8 $9B $90 $A2 $03 $80 $A2 $A2 $A0 $A7 $A5 $A2 $F8 $9B
	.db $90 $A2 $03 $80 $03 $A2 $A2 $A0 $A2 $A5 $A5 $F8 $9B $90 $A2 $03
	.db $80 $A2 $A2 $A0 $A7 $A5 $A2 $F8 $9B $90 $A2 $03 $80 $A2 $A2 $A0
	.db $A2 $A5 $A5 $F6 $28 $90 $A2 $03 $80 $03 $A2 $03 $A2 $03 $9D $03
	.db $A0 $03 $9B $03 $A0 $03 $F9 $A2 $03 $AE $03 $A2 $03 $80 $03 $A3
	.db $03 $80 $03 $A4 $03 $B0 $03 $A5 $03 $80 $09 $A0 $03 $A0 $03 $A1
	.db $03 $A1 $03 $F9 $80 $30 $30 $30 $30 $80 $03 $80 $BA $BA $80 $80
	.db $BA $BA $80 $03 $80 $BA $BA $80 $BA $BA $BA $F7 $00 $08 $CE $90
	.db $BA $03 $80 $80 $80 $BA $80 $80 $80 $BA $03 $80 $80 $80 $BA $80
	.db $80 $80 $BA $03 $80 $80 $80 $BA $80 $80 $BA $80 $03 $80 $80 $80
	.db $BA $BA $BA $BA $F7 $00 $02 $E5 $90 $80 $03 $80 $BA $BA $80 $80
	.db $BA $BA $80 $03 $80 $BA $BA $80 $BA $BA $BA $F7 $00 $08 $0E $91
	.db $F6 $CE $90
	
; Data from 19128 to 191CC (165 bytes)	
_DATA_19128_:	
	.db $80 $30 $80 $80 $80 $F8 $80 $91 $80 $12 $80 $12 $F8 $80 $91 $EF
	.db $02 $F5 $04 $70 $80 $12 $BF $03 $80 $C1 $80 $C3 $C4 $EF $FE $F8
	.db $AE $91 $F8 $C8 $91 $EF $02 $F5 $02 $30 $80 $03 $C1 $03 $C1 $BF
	.db $C1 $BF $BC $BA $80 $BF $03 $C1 $EF $FE $F8 $AE $91 $F8 $C8 $91
	.db $EF $02 $F5 $02 $30 $80 $03 $C1 $03 $C1 $BF $C1 $BF $BC $BA $80
	.db $B5 $03 $B3 $EF $FE $F6 $28 $91 $F5 $02 $20 $C1 $03 $C1 $BF $80
	.db $BC $80 $BA $80 $BC $03 $80 $B3 $80 $B5 $80 $B9 $0C $80 $06 $80
	.db $24 $BC $03 $BC $BC $80 $BC $80 $BA $80 $BC $03 $80 $C1 $80 $BC
	.db $80 $BA $0C $80 $06 $F9 $F5 $02 $20 $80 $0C $C4 $06 $C1 $BF $BC
	.db $BA $B8 $BA $03 $BA $03 $BA $06 $B8 $BC $BA $B7 $B3 $B5 $12 $F9
	.db $80 $30 $80 $03 $F9
	
; Data from 191CD to 1950B (831 bytes)	
_DATA_191CD_:	
	.db $F5 $02 $E0 $F8 $00 $92 $80 $06 $9B $9C $9B $03 $9C $F7 $00 $02
	.db $CD $91 $F8 $00 $92 $80 $06 $9B $9D $9F $03 $A0 $F8 $39 $92 $80
	.db $06 $A0 $A1 $A0 $03 $A1 $F8 $39 $92 $80 $06 $9B $9C $9B $03 $9C
	.db $F6 $CD $91 $9D $03 $A9 $9D $80 $80 $06 $9B $03 $9D $03 $9D $03
	.db $80 $09 $80 $06 $A1 $06 $80 $0C $80 $06 $80 $12 $80 $06 $80 $03
	.db $80 $03 $A2 $03 $AE $A2 $80 $80 $06 $A0 $03 $A2 $03 $A2 $03 $80
	.db $09 $80 $06 $A7 $06 $80 $0C $80 $06 $80 $06 $F9 $A2 $03 $A2 $AE
	.db $80 $80 $06 $A0 $03 $A2 $03 $A2 $03 $80 $03 $AE $80 $80 $06 $A4
	.db $06 $B0 $03 $B0 $A4 $80 $80 $06 $A2 $03 $A4 $03 $A4 $03 $80 $03
	.db $B0 $80 $80 $06 $A9 $12 $A9 $03 $80 $80 $06 $80 $B5 $03 $80 $80
	.db $06 $A9 $12 $A9 $03 $80 $09 $F9 $80 $03 $80 $30 $80 $80 $80 $F8
	.db $80 $91 $80 $12 $80 $12 $F8 $80 $91 $EF $FF $F5 $04 $70 $80 $0F
	.db $C3 $03 $80 $C4 $80 $C6 $C8 $80 $03 $EF $01 $F8 $AE $91 $F8 $C8
	.db $91 $EF $FF $F5 $02 $30 $C6 $03 $C6 $C4 $C6 $C4 $C1 $B3 $80 $C4
	.db $03 $C6 $80 $03 $EF $01 $F8 $AE $91 $F8 $C8 $91 $EF $FF $F5 $02
	.db $30 $C6 $03 $C6 $C4 $C6 $C4 $C1 $B3 $80 $BA $03 $B8 $80 $03 $EF
	.db $01 $F6 $77 $92 $F8 $E5 $92 $F7 $00 $02 $D1 $92 $F8 $0A $93 $F8
	.db $3B $93 $F8 $7C $93 $F6 $D1 $92 $80 $0C $BC $03 $80 $09 $BC $03
	.db $80 $03 $BC $03 $80 $09 $BC $12 $80 $24 $80 $0C $C1 $03 $80 $09
	.db $C1 $03 $80 $03 $C1 $03 $80 $09 $BF $12 $80 $24 $F9 $80 $0C $BC
	.db $03 $80 $09 $BC $03 $80 $03 $BC $03 $80 $09 $BC $12 $80 $24 $80
	.db $0C $C1 $03 $80 $09 $C1 $03 $80 $03 $C1 $03 $80 $09 $BF $12 $80
	.db $12 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9 $80 $0C
	.db $BD $03 $80 $09 $BD $03 $80 $03 $BD $03 $80 $0F $80 $0C $BF $03
	.db $80 $09 $BF $03 $80 $03 $BF $03 $80 $09 $C1 $12 $C1 $03 $80 $0F
	.db $C1 $03 $80 $09 $C1 $12 $C1 $03 $80 $03 $80 $03 $80 $03 $80 $03
	.db $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9 $80
	.db $0C $BD $03 $80 $09 $BD $03 $80 $03 $BD $03 $80 $0F $80 $0C $BF
	.db $03 $80 $09 $BF $03 $80 $03 $BF $03 $80 $09 $C1 $12 $C1 $03 $80
	.db $0F $C1 $03 $80 $09 $C1 $12 $C1 $03 $80 $03 $80 $03 $80 $03 $80
	.db $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9
	.db $F8 $D1 $93 $F7 $00 $02 $BD $93 $F8 $F6 $93 $F8 $27 $94 $F8 $68
	.db $94 $F6 $BD $93 $80 $0C $BF $03 $80 $09 $BF $03 $80 $03 $BF $03
	.db $80 $09 $BF $12 $80 $24 $80 $0C $C4 $03 $80 $09 $C4 $03 $80 $03
	.db $C4 $03 $80 $09 $C3 $12 $80 $24 $F9 $80 $0C $BF $03 $80 $09 $BF
	.db $03 $80 $03 $BF $03 $80 $09 $BF $12 $80 $24 $80 $0C $C4 $03 $80
	.db $09 $C4 $03 $80 $03 $C4 $03 $80 $09 $C3 $12 $80 $12 $80 $03 $80
	.db $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9 $80 $0C $C1 $03 $80 $09
	.db $C1 $03 $80 $03 $C1 $03 $80 $0F $80 $0C $C3 $03 $80 $09 $C3 $03
	.db $80 $03 $C3 $03 $80 $09 $C3 $12 $C3 $03 $80 $0F $C3 $03 $80 $09
	.db $C3 $12 $C3 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03
	.db $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9 $80 $0C $C1 $03 $80
	.db $09 $C1 $03 $80 $03 $C1 $03 $80 $0F $80 $0C $C3 $03 $80 $09 $C3
	.db $03 $80 $03 $C3 $03 $80 $09 $C3 $12 $C3 $03 $80 $0F $C3 $03 $80
	.db $09 $C3 $12 $C3 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80
	.db $03 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $F9 $F8 $BA $94 $F7
	.db $00 $03 $A9 $94 $F8 $DF $94 $F8 $DF $94 $F6 $A9 $94 $80 $0C $BA
	.db $03 $80 $09 $BA $03 $80 $03 $BA $03 $80 $09 $B9 $12 $80 $24 $80
	.db $0C $BD $03 $80 $09 $BD $03 $80 $03 $BD $03 $80 $09 $BC $12 $80
	.db $24 $F9 $80 $0C $BA $03 $80 $09 $BA $03 $80 $03 $BA $03 $80 $0F
	.db $80 $0C $BC $03 $80 $09 $BC $03 $80 $03 $BC $03 $80 $09 $BF $12
	.db $BF $03 $80 $0F $BF $03 $80 $09 $BF $12 $BF $03 $80 $21 $F9
	
; Data from 1950C to 195E3 (216 bytes)	
_DATA_1950C_:	
	.db $80 $30 $F8 $49 $95 $F5 $08 $20 $EF $02 $80 $06 $C1 $03 $80 $BF
	.db $BB $80 $03 $BA $0C $80 $0F $EF $FE $F8 $49 $95 $F5 $08 $20 $EF
	.db $02 $80 $06 $C1 $03 $80 $BF $BB $80 $03 $BA $0C $80 $0F $EF $FE
	.db $F8 $BB $95 $80 $0C $F8 $BB $95 $80 $0C $F6 $0E $95 $F5 $00 $43
	.db $C6 $03 $C7 $03 $C6 $36 $C4 $0C $BF $0C $C4 $0C $C1 $12 $F0 $6C
	.db $95 $FC $01 $C1 $00 $FF $0A $C0 $00 $01 $08 $FC $00 $F6 $80 $95
	.db $FC $01 $C1 $01 $00 $03 $C0 $00 $00 $07 $C0 $FF $00 $03 $C1 $00
	.db $00 $05 $FC $00 $C1 $0C $80 $30 $C6 $03 $C7 $03 $C6 $36 $CB $0C
	.db $C4 $0C $C9 $0C $C6 $16 $F0 $A4 $95 $FC $01 $C6 $01 $FF $08 $C5
	.db $00 $01 $06 $FC $00 $F6 $B8 $95 $FC $01 $C6 $01 $00 $03 $C5 $00
	.db $00 $05 $C5 $FF $00 $03 $C6 $00 $00 $03 $FC $00 $C6 $0C $F9 $F5
	.db $00 $43 $C9 $03 $C6 $C2 $BF $BA $30 $BB $0C $BF $C2 $C9 $2A $F0
	.db $D9 $95 $FC $01 $C9 $00 $FB $06 $FC $00 $F6 $E1 $95 $FC $01 $C9
	.db $03 $00 $06 $FC $00 $C6 $24 $F9
	
; Data from 195E4 to 19756 (371 bytes)	
_DATA_195E4_:	
	.db $80 $06 $A9 $03 $80 $80 $0C $A0 $9B $F8 $F3 $95 $F6 $ED $95 $9E
	.db $0C $9D $03 $80 $09 $80 $18 $80 $06 $A9 $03 $80 $03 $80 $0C $A0
	.db $9B $F9 $80 $30 $F8 $16 $96 $F8 $36 $96 $F7 $00 $06 $08 $96 $F6
	.db $08 $96 $B6 $03 $80 $09 $B5 $03 $80 $09 $B6 $03 $B6 $03 $80 $03
	.db $B5 $03 $80 $0C $80 $06 $B5 $03 $80 $03 $B6 $06 $80 $03 $B5 $80
	.db $18 $F9 $B6 $03 $80 $09 $B5 $03 $80 $09 $B6 $03 $B6 $80 $B5 $80
	.db $0C $80 $06 $B5 $03 $80 $B6 $06 $80 $03 $B5 $80 $06 $80 $03 $80
	.db $80 $06 $80 $F9 $80 $30 $F8 $68 $96 $F8 $89 $96 $F7 $00 $06 $5A
	.db $96 $F6 $5A $96 $AF $03 $80 $09 $AF $03 $80 $09 $AF $03 $AF $03
	.db $80 $03 $AF $03 $80 $0C $80 $06 $AF $03 $80 $03 $AF $06 $80 $03
	.db $AF $03 $80 $18 $F9 $AF $03 $80 $09 $AF $03 $80 $09 $AF $03 $AF
	.db $03 $80 $03 $AF $03 $80 $0C $80 $06 $AF $03 $80 $03 $AF $06 $80
	.db $03 $AF $03 $F5 $03 $10 $EF $FE $80 $06 $B8 $03 $80 $03 $B5 $06
	.db $80 $06 $F5 $00 $C0 $EF $02 $F9 $80 $30 $F8 $CC $96 $F8 $ED $96
	.db $F7 $00 $06 $BE $96 $F6 $BE $96 $B3 $03 $80 $09 $B3 $03 $80 $09
	.db $B3 $03 $B3 $03 $80 $03 $B3 $03 $80 $0C $80 $06 $B3 $03 $80 $03
	.db $B3 $06 $80 $03 $B3 $03 $80 $18 $F9 $B3 $03 $80 $09 $B3 $03 $80
	.db $09 $B3 $03 $B3 $03 $80 $03 $B3 $03 $80 $0C $80 $06 $B3 $03 $80
	.db $03 $B3 $06 $80 $03 $B3 $03 $F5 $03 $10 $EF $FE $80 $06 $BF $03
	.db $80 $03 $B3 $06 $80 $06 $F5 $00 $C0 $EF $02 $F9 $80 $03 $80 $30
	.db $F8 $49 $95 $80 $06 $80 $03 $80 $03 $80 $03 $80 $03 $80 $03 $80
	.db $0C $80 $0F $F8 $49 $95 $80 $06 $80 $03 $80 $03 $80 $03 $80 $03
	.db $80 $03 $80 $0C $80 $0F $F8 $BB $95 $80 $0C $F8 $BB $95 $80 $0C
	.db $F6 $24 $97
	
; Data from 19757 to 1976B (21 bytes)	
_DATA_19757_:	
	.db $B1 $06 $80 $06 $C8 $06 $B3 $06 $80 $06 $CA $06 $80 $06 $B5 $06
	.db $80 $06 $CC $18 $F2
	
; Data from 1976C to 197C2 (87 bytes)	
_DATA_1976C_:	
	.db $80 $0C $C3 $06 $80 $0C $C5 $06 $80 $0C $80 $06 $C7 $18 $F2 $80
	.db $0C $C1 $06 $80 $0C $C3 $06 $80 $0C $80 $06 $C5 $18 $F2 $A5 $06
	.db $80 $06 $80 $06 $A7 $06 $80 $06 $80 $06 $80 $06 $A9 $06 $80 $06
	.db $80 $18 $F2 $80 $06 $80 $06 $C8 $06 $80 $06 $80 $06 $CA $06 $80
	.db $06 $80 $06 $80 $06 $CC $18 $F2 $80 $0C $C3 $06 $80 $0C $C5 $06
	.db $80 $0C $80 $06 $C7 $18 $F2
	
; Data from 197C3 to 197F0 (46 bytes)	
_DATA_197C3_:	
	.db $80 $03 $B3 $B6 $BA $C4 $C1 $BD $BA $C1 $BD $BA $B6 $B3 $B6 $BA
	.db $BD $80 $03 $B5 $B8 $BC $C6 $C3 $BF $BC $C3 $BF $BC $B8 $B5 $B8
	.db $BC $BF $C1 $03 $BE $BA $B7 $80 $80 $C1 $BE $BA $B7 $F2
	
; Data from 197F1 to 1989A (170 bytes)	
_DATA_197F1_:	
	.db $80 $03 $AE $B3 $B6 $C1 $BD $BA $B6 $BD $BA $B6 $B3 $AE $B3 $B6
	.db $BA $80 $03 $B0 $B5 $B8 $B7 $BF $BC $B8 $BF $BC $B8 $B5 $B0 $B5
	.db $B8 $BC $BE $03 $BA $B7 $B2 $80 $80 $BE $BA $B7 $B2 $F2 $A0 $30
	.db $A2 $30 $A4 $03 $A4 $A4 $A4 $80 $80 $A4 $A4 $A4 $A4 $F2 $80 $03
	.db $B3 $B6 $BA $C4 $C1 $BD $BA $C1 $BD $BA $B6 $B3 $B6 $BA $BD $80
	.db $03 $B5 $B8 $BC $C6 $C3 $BF $BC $C3 $BF $BC $B8 $B5 $B8 $BC $BF
	.db $C1 $03 $BE $BA $B7 $80 $80 $C1 $BE $BA $B7 $F2 $80 $03 $AE $B3
	.db $B6 $C1 $BD $BA $B6 $BD $BA $B6 $B3 $AE $B3 $B6 $BA $80 $03 $B0
	.db $B5 $B8 $B7 $BF $BC $B8 $BF $BC $B8 $B5 $B0 $B5 $B8 $BC $BE $03
	.db $BA $B7 $B2 $80 $80 $BE $BA $B7 $B2 $F2 $A0 $30 $A2 $30 $A4 $03
	.db $A4 $A4 $A4 $80 $80 $A4 $A4 $A4 $A4 $F2
	
; Data from 1989B to 198B6 (28 bytes)	
_DATA_1989B_:	
	.db $80 $02 $80 $80 $B1 $B4 $B6 $B7 $04 $B6 $02 $B4 $04 $B1 $02 $AF
	.db $04 $AC $02 $AF $04 $B1 $02 $80 $80 $B1 $08 $F2
	
; Data from 198B7 to 199DA (292 bytes)	
_DATA_198B7_:	
	.db $99 $06 $9C $06 $9E $06 $9F $06 $9E $04 $9C $02 $97 $04 $99 $02
	.db $80 $80 $99 $06 $F2 $80 $02 $80 $80 $BD $BB $B8 $B7 $04 $B6 $02
	.db $B4 $04 $B1 $02 $AF $04 $AC $02 $A8 $04 $A5 $02 $80 $80 $AC $08
	.db $F2 $80 $02 $80 $80 $B1 $B4 $B6 $B7 $04 $B6 $02 $B4 $04 $B1 $02
	.db $AF $04 $AC $02 $AF $04 $B1 $02 $80 $80 $B1 $08 $F2 $99 $06 $9C
	.db $06 $9E $06 $9F $06 $9E $04 $9C $02 $97 $04 $99 $02 $80 $80 $99
	.db $06 $F2 $80 $02 $80 $80 $BD $BB $B8 $B7 $04 $B6 $02 $B4 $04 $B1
	.db $02 $AF $04 $AC $02 $A8 $04 $A5 $02 $80 $80 $AC $08 $F2 $F5 $06
	.db $A0 $EF $03 $F4 $01 $80 $0C $80 $2D $A0 $03 $A2 $5D $9E $03 $A0
	.db $5A $80 $06 $F5 $06 $43 $BF $05 $FC $01 $C1 $00 $00 $2B $C1 $00
	.db $00 $24 $BF $00 $02 $0C $FC $00 $80 $30 $80 $30 $80 $30 $F5 $06
	.db $40 $F8 $FE $9A $F5 $06 $A3 $FC $01 $C2 $00 $00 $24 $C2 $00 $FF
	.db $0C $FC $00 $F5 $06 $A3 $FC $01 $B6 $00 $04 $24 $B8 $00 $00 $0C
	.db $FC $00 $FB $F4 $F4 $F5 $06 $A0 $F8 $17 $9B $B8 $06 $BA $30 $F8
	.db $2A $9B $F5 $06 $A3 $FC $01 $C4 $00 $00 $06 $C6 $00 $00 $2D $C6
	.db $00 $C1 $03 $FC $00 $80 $30 $FB $0C $0C $F5 $06 $40 $F8 $FE $9A
	.db $F5 $06 $A3 $FC $01 $C2 $00 $00 $24 $C2 $00 $FF $0C $FC $00 $F5
	.db $06 $A3 $FC $01 $B6 $00 $04 $24 $B8 $00 $00 $0C $FC $00 $F5 $06
	.db $A0 $F6 $3E $99
	
; Data from 199DB to 19B92 (440 bytes)	
_DATA_199DB_:	
	.db $F5 $06 $A0 $80 $2D $A0 $03 $A2 $5D $9E $03 $A0 $60 $F5 $06 $43
	.db $BF $05 $F0 $03 $9A $FC $01 $C1 $00 $00 $2B $C1 $00 $00 $24 $BF
	.db $00 $02 $0C $FC $00 $F6 $19 $9A $FC $01 $C1 $00 $00 $2B $C1 $01
	.db $00 $0C $FC $00 $BF $18 $FC $01 $BF $FF $00 $0C $FC $00 $80 $30
	.db $80 $30 $80 $30 $F5 $06 $40 $F8 $FE $9A $F5 $06 $A3 $F0 $3A $9A
	.db $FC $01 $C2 $00 $00 $24 $C2 $00 $FF $0C $FC $00 $F6 $4A $9A $FC
	.db $01 $C2 $00 $00 $24 $C2 $01 $00 $05 $C1 $00 $00 $07 $FC $00 $F5
	.db $06 $A3 $F0 $5F $9A $FC $01 $B6 $00 $04 $24 $B8 $00 $00 $0C $FC
	.db $00 $F6 $6B $9A $FC $01 $B6 $FF $00 $24 $B8 $00 $00 $0C $FC $00
	.db $FB $F4 $F4 $F5 $06 $A0 $F8 $17 $9B $B8 $06 $BA $30 $F5 $06 $A0
	.db $F8 $2A $9B $F5 $06 $A3 $F0 $97 $9A $FC $01 $C4 $00 $00 $06 $C6
	.db $00 $00 $2D $C6 $00 $C1 $03 $FC $00 $F6 $A7 $9A $FC $01 $C4 $00
	.db $00 $06 $C6 $00 $00 $2D $C6 $08 $00 $03 $FC $00 $80 $30 $FB $0C
	.db $0C $F5 $06 $40 $F8 $FE $9A $F5 $06 $A3 $F0 $C7 $9A $FC $01 $C2
	.db $00 $00 $24 $C2 $00 $FF $0C $FC $00 $F6 $D7 $9A $FC $01 $C2 $00
	.db $00 $24 $C2 $01 $00 $05 $C1 $00 $00 $07 $FC $00 $F5 $06 $A3 $F0
	.db $EC $9A $FC $01 $B6 $00 $04 $24 $B8 $00 $00 $0C $FC $00 $F6 $F8
	.db $9A $FC $01 $B6 $FF $00 $24 $B8 $00 $00 $0C $FC $00 $F5 $06 $A0
	.db $F6 $DE $99 $C0 $03 $C2 $C4 $80 $27 $80 $30 $C2 $03 $C8 $CB $80
	.db $27 $80 $30 $C0 $03 $C4 $C8 $80 $27 $80 $30 $F9 $BA $03 $BA $BA
	.db $BA $F7 $00 $04 $17 $9B $BF $06 $C1 $24 $BD $06 $BF $2A $F9 $80
	.db $03 $BA $BA $BA $BA $03 $BA $BA $BA $F7 $00 $03 $2F $9B $BF $06
	.db $C1 $24 $BD $06 $BF $2A $F9 $FB $F4 $F4 $F5 $06 $60 $EF $02 $80
	.db $30 $F7 $00 $0A $4A $9B $B1 $24 $B0 $06 $B1 $B4 $30 $B3 $24 $B2
	.db $06 $B3 $B7 $30 $B5 $2A $B5 $06 $B8 $24 $B6 $06 $B5 $B6 $2A $B0
	.db $36 $80 $30 $F7 $00 $08 $6C $9B $80 $30 $BD $24 $BC $06 $BD $C0
	.db $30 $BF $24 $BE $06 $BF $C3 $30 $C1 $2A $C1 $06 $C4 $24 $C2 $06
	.db $C1 $C2 $2A $BC $36 $F6 $4A $9B
	
; Data from 19B93 to 19C99 (263 bytes)	
_DATA_19B93_:	
	.db $F5 $03 $E0 $EF $02 $80 $30 $F8 $F2 $9B $F8 $F2 $9B $F8 $05 $9C
	.db $F8 $05 $9C $F8 $F2 $9B $F7 $00 $03 $A6 $9B $F8 $18 $9C $F8 $18
	.db $9C $F8 $2B $9C $F8 $2B $9C $F8 $3E $9C $F8 $3E $9C $F8 $51 $9C
	.db $F8 $51 $9C $F8 $64 $9C $F8 $77 $9C $F8 $F2 $9B $F7 $00 $08 $CC
	.db $9B $F8 $18 $9C $F8 $2B $9C $F8 $2B $9C $F8 $3E $9C $F8 $3E $9C
	.db $F8 $51 $9C $F8 $51 $9C $F8 $64 $9C $F8 $77 $9C $F6 $98 $9B $A2
	.db $09 $A2 $03 $A2 $A0 $06 $A2 $03 $F1 $A2 $06 $F1 $A4 $F1 $A5 $F1
	.db $A4 $F9 $A0 $09 $A0 $03 $A0 $9E $06 $A0 $03 $F1 $A0 $06 $F1 $A2
	.db $F1 $A3 $F1 $A2 $F9 $A0 $09 $A0 $03 $A0 $9E $06 $A0 $03 $F1 $A0
	.db $06 $F1 $A2 $F1 $A4 $F1 $A2 $F9 $A5 $09 $A5 $03 $A5 $A4 $06 $A5
	.db $03 $F1 $A5 $06 $F1 $A7 $F1 $A8 $F1 $A7 $F9 $A4 $09 $A4 $03 $A4
	.db $A2 $06 $A4 $03 $F1 $A4 $06 $F1 $A6 $F1 $A7 $F1 $A6 $F9 $A9 $09
	.db $A9 $03 $A9 $A7 $06 $A9 $03 $F1 $A9 $06 $F1 $AB $F1 $AC $F1 $AB
	.db $F9 $AA $09 $AA $03 $AA $A9 $06 $AA $03 $F1 $AA $06 $F1 $AC $F1
	.db $AE $F1 $AA $F9 $AC $09 $AC $03 $AC $AA $06 $AC $03 $F1 $AC $06
	.db $F1 $AE $F1 $B0 $F1 $AC $F9 $FB $F4 $F4 $F5 $06 $60 $F4 $01 $EF
	.db $04 $80 $06 $F6 $4A $9B $F2
	
; Data from 19C9A to 19CB6 (29 bytes)	
_DATA_19C9A_:	
	.db $F5 $03 $30 $80 $18 $80 $03 $BC $80 $C1 $80 $C6 $80 $C8 $F7 $00
	.db $02 $9F $9C $F5 $08 $30 $CB $24 $80 $0C $80 $30 $F2
	
; Data from 19CB7 to 19D23 (109 bytes)	
_DATA_19CB7_:	
	.db $F5 $03 $30 $80 $18 $A9 $03 $80 $F7 $00 $08 $BC $9C $F5 $08 $30
	.db $AA $24 $80 $0C $80 $30 $F2 $F5 $03 $F0 $80 $18 $A9 $03 $B0 $80
	.db $A9 $BA $A9 $B8 $A9 $F7 $00 $02 $D3 $9C $F5 $08 $30 $AA $24 $80
	.db $0C $80 $30 $F2 $F5 $03 $30 $EF $05 $F4 $01 $80 $06 $80 $18 $A9
	.db $03 $80 $F7 $00 $07 $F6 $9C $EF $FB $F5 $08 $30 $C6 $24 $80 $0C
	.db $80 $30 $F2 $F5 $08 $30 $80 $18 $80 $30 $C2 $24 $80 $0C $80 $30
	.db $F2 $F5 $03 $30 $EF $04 $F4 $01 $80 $06 $F6 $9D $9C
	
; 1st entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19D24 to 19D27 (4 bytes)	
_DATA_19D24_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19D28 to 19D29 (1 entries, indexed by unknown)
	.dw _DATA_18DE3_
	
	; Data from 19D2A to 19D63 (58 bytes)
	.db $F4 $00 $70 $02 $80 $11 $02 $85 $8E $F4 $01 $20 $03 $80 $12 $02
	.db $15 $8F $F4 $01 $70 $04 $80 $13 $02 $C9 $8F $F4 $01 $10 $04 $80
	.db $14 $02 $28 $90 $F4 $00 $20 $02 $80 $15 $02 $C9 $90 $F4 $00 $10
	.db $04 $C0 $00 $02 $4C $A0 $00 $00 $00 $0F
	
; 1st entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19D64 to 19D67 (4 bytes)	
_DATA_19D64_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19D68 to 19D69 (1 entries, indexed by unknown)
	.dw _DATA_18DE3_
	
	; Data from 19D6A to 19D70 (7 bytes)
	.db $E0 $00 $05 $02 $80 $A0 $02
	
	; Pointer Table from 19D71 to 19D72 (1 entries, indexed by unknown)
	.dw _DATA_18E85_
	
	; Data from 19D73 to 19D88 (22 bytes)
	.db $EC $00 $02 $04 $80 $C0 $02 $15 $8F $E0 $01 $05 $04 $C0 $E0 $02
	.db $4C $A0 $00 $00 $00 $0F
	
; 2nd entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19D89 to 19D8C (4 bytes)	
_DATA_19D89_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19D8D to 19D8E (1 entries, indexed by unknown)
	.dw _DATA_19128_
	
	; Data from 19D8F to 19DC8 (58 bytes)
	.db $F4 $01 $20 $02 $80 $11 $02 $CD $91 $F4 $00 $E0 $03 $80 $12 $02
	.db $75 $92 $F4 $00 $20 $05 $80 $13 $02 $D1 $92 $F4 $00 $70 $06 $80
	.db $14 $02 $BD $93 $F4 $00 $70 $06 $80 $15 $02 $A9 $94 $F4 $00 $70
	.db $06 $C0 $00 $02 $10 $A1 $00 $00 $00 $0F
	
; 2nd entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19DC9 to 19DCC (4 bytes)	
_DATA_19DC9_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19DCD to 19DCE (1 entries, indexed by unknown)
	.dw _DATA_19128_
	
	; Data from 19DCF to 19DD5 (7 bytes)
	.db $E8 $01 $02 $02 $80 $A0 $02
	
	; Pointer Table from 19DD6 to 19DD7 (1 entries, indexed by unknown)
	.dw _DATA_191CD_
	
	; Data from 19DD8 to 19DED (22 bytes)
	.db $E8 $00 $08 $03 $80 $C0 $02 $75 $92 $E8 $00 $02 $06 $C0 $E0 $02
	.db $10 $A1 $00 $00 $00 $0F
	
; 3rd entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19DEE to 19DF1 (4 bytes)	
_DATA_19DEE_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19DF2 to 19DF3 (1 entries, indexed by unknown)
	.dw _DATA_1950C_
	
	; Data from 19DF4 to 19E2D (58 bytes)
	.db $F4 $00 $43 $01 $80 $11 $02 $E4 $95 $F4 $00 $E0 $02 $80 $12 $02
	.db $06 $96 $F4 $00 $C0 $03 $80 $13 $02 $58 $96 $F4 $00 $C0 $03 $80
	.db $14 $02 $BC $96 $F4 $00 $C0 $03 $80 $15 $02 $20 $97 $F4 $01 $43
	.db $04 $C0 $00 $02 $B5 $A1 $00 $00 $00 $0F
	
; 3rd entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19E2E to 19E31 (4 bytes)	
_DATA_19E2E_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19E32 to 19E33 (1 entries, indexed by unknown)
	.dw _DATA_1950C_
	
	; Data from 19E34 to 19E3A (7 bytes)
	.db $E8 $00 $00 $04 $80 $A0 $02
	
	; Pointer Table from 19E3B to 19E3C (1 entries, indexed by unknown)
	.dw _DATA_195E4_
	
	; Data from 19E3D to 19E52 (22 bytes)
	.db $E8 $00 $08 $02 $80 $C0 $02 $06 $96 $E8 $00 $02 $04 $C0 $E0 $02
	.db $B5 $A1 $00 $00 $00 $0F
	
; 4th entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19E53 to 19E56 (4 bytes)	
_DATA_19E53_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19E57 to 19E58 (1 entries, indexed by unknown)
	.dw _DATA_19757_
	
	; Data from 19E59 to 19E92 (58 bytes)
	.db $F4 $00 $70 $03 $80 $11 $02 $6C $97 $F4 $00 $70 $03 $80 $12 $02
	.db $7B $97 $F4 $00 $70 $03 $80 $13 $02 $8A $97 $F4 $00 $E0 $03 $80
	.db $14 $02 $9F $97 $F4 $01 $90 $06 $80 $15 $02 $B4 $97 $F4 $01 $90
	.db $06 $C0 $00 $02 $26 $A2 $00 $00 $00 $0F
	
; 4th entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19E93 to 19E96 (4 bytes)	
_DATA_19E93_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19E97 to 19E98 (1 entries, indexed by unknown)
	.dw _DATA_19757_
	
	; Data from 19E99 to 19E9F (7 bytes)
	.db $E0 $00 $06 $02 $80 $A0 $02
	
	; Pointer Table from 19EA0 to 19EA1 (1 entries, indexed by unknown)
	.dw _DATA_1976C_
	
	; Data from 19EA2 to 19EB7 (22 bytes)
	.db $E0 $00 $06 $02 $80 $C0 $02 $7B $97 $E0 $00 $06 $02 $C0 $E0 $02
	.db $26 $A2 $00 $00 $00 $0F
	
; 5th entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19EB8 to 19EBB (4 bytes)	
_DATA_19EB8_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19EBC to 19EBD (1 entries, indexed by unknown)
	.dw _DATA_197C3_
	
	; Data from 19EBE to 19EF7 (58 bytes)
	.db $F4 $00 $70 $02 $80 $11 $02 $F1 $97 $F4 $00 $70 $02 $80 $12 $02
	.db $1F $98 $F4 $00 $E0 $03 $80 $13 $02 $2F $98 $F4 $01 $90 $06 $80
	.db $14 $02 $5D $98 $F4 $01 $90 $06 $80 $15 $02 $8B $98 $F4 $01 $E0
	.db $06 $C0 $00 $02 $3D $A2 $00 $00 $00 $0F
	
; 5th entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19EF8 to 19EFB (4 bytes)	
_DATA_19EF8_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19EFC to 19EFD (1 entries, indexed by unknown)
	.dw _DATA_197C3_
	
	; Data from 19EFE to 19F04 (7 bytes)
	.db $E0 $01 $03 $02 $80 $A0 $02
	
	; Pointer Table from 19F05 to 19F06 (1 entries, indexed by unknown)
	.dw _DATA_197F1_
	
	; Data from 19F07 to 19F1C (22 bytes)
	.db $E0 $00 $03 $02 $80 $C0 $02 $1F $98 $E0 $00 $03 $04 $C0 $E0 $02
	.db $3D $A2 $00 $00 $00 $0F
	
; 6th entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19F1D to 19F20 (4 bytes)	
_DATA_19F1D_:	
	.db $07 $80 $10 $03
	
	; Pointer Table from 19F21 to 19F22 (1 entries, indexed by unknown)
	.dw _DATA_1989B_
	
	; Data from 19F23 to 19F5C (58 bytes)
	.db $F4 $01 $80 $02 $80 $11 $03 $B7 $98 $F4 $00 $E0 $03 $80 $12 $03
	.db $CC $98 $F4 $00 $80 $04 $80 $13 $03 $E8 $98 $F4 $00 $20 $04 $80
	.db $14 $03 $04 $99 $F4 $01 $20 $04 $80 $15 $03 $19 $99 $F4 $00 $20
	.db $04 $C0 $00 $03 $6A $A2 $00 $00 $00 $0F
	
; 6th entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19F5D to 19F60 (4 bytes)	
_DATA_19F5D_:	
	.db $04 $80 $80 $03
	
	; Pointer Table from 19F61 to 19F62 (1 entries, indexed by unknown)
	.dw _DATA_1989B_
	
	; Data from 19F63 to 19F69 (7 bytes)
	.db $E8 $01 $06 $02 $80 $A0 $03
	
	; Pointer Table from 19F6A to 19F6B (1 entries, indexed by unknown)
	.dw _DATA_198B7_
	
	; Data from 19F6C to 19F81 (22 bytes)
	.db $E8 $00 $06 $04 $80 $C0 $03 $CC $98 $E8 $00 $06 $04 $C0 $E0 $03
	.db $6A $A2 $00 $00 $00 $0F
	
; 7th entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19F82 to 19F85 (4 bytes)	
_DATA_19F82_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19F86 to 19F87 (1 entries, indexed by unknown)
	.dw _DATA_199DB_
	
	; Data from 19F88 to 19FC1 (58 bytes)
	.db $F0 $00 $30 $02 $80 $11 $02 $93 $9B $F0 $00 $80 $02 $80 $12 $02
	.db $42 $9B $F0 $00 $80 $02 $80 $13 $02 $8A $9C $F0 $00 $30 $02 $80
	.db $14 $02 $35 $99 $F0 $00 $30 $04 $80 $15 $02 $99 $9C $F0 $00 $00
	.db $02 $C0 $00 $02 $85 $A2 $00 $00 $00 $0F
	
; 7th entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 19FC2 to 19FC5 (4 bytes)	
_DATA_19FC2_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 19FC6 to 19FC7 (1 entries, indexed by unknown)
	.dw _DATA_199DB_
	
	; Data from 19FC8 to 19FCE (7 bytes)
	.db $E0 $01 $04 $02 $80 $A0 $02
	
	; Pointer Table from 19FCF to 19FD0 (1 entries, indexed by unknown)
	.dw _DATA_19B93_
	
	; Data from 19FD1 to 19FE6 (22 bytes)
	.db $EC $00 $04 $03 $80 $C0 $02 $42 $9B $F8 $00 $04 $01 $C0 $E0 $02
	.db $85 $A2 $00 $00 $00 $0F
	
; 8th entry of Pointer Table from 18313 (indexed by _RAM_DE03_)	
; Data from 19FE7 to 19FEA (4 bytes)	
_DATA_19FE7_:	
	.db $07 $80 $10 $02
	
	; Pointer Table from 19FEB to 19FEC (1 entries, indexed by unknown)
	.dw _DATA_19C9A_
	
	; Data from 19FED to 1A026 (58 bytes)
	.db $F4 $01 $70 $02 $80 $11 $02 $B7 $9C $F4 $00 $B0 $02 $80 $12 $02
	.db $CE $9C $E8 $00 $E0 $03 $80 $13 $02 $EB $9C $F4 $00 $80 $04 $80
	.db $14 $02 $0A $9D $F4 $00 $60 $04 $80 $15 $02 $18 $9D $F4 $00 $80
	.db $04 $C0 $00 $02 $FA $A2 $00 $00 $00 $0F
	
; 8th entry of Pointer Table from 182AD (indexed by _RAM_DE03_)	
; Data from 1A027 to 1A02A (4 bytes)	
_DATA_1A027_:	
	.db $04 $80 $80 $02
	
	; Pointer Table from 1A02B to 1A02C (1 entries, indexed by unknown)
	.dw _DATA_19C9A_
	
	; Data from 1A02D to 1A033 (7 bytes)
	.db $E8 $00 $06 $02 $80 $A0 $02
	
	; Pointer Table from 1A034 to 1A035 (1 entries, indexed by unknown)
	.dw _DATA_19CB7_
	
	; Data from 1A036 to 1A33B (774 bytes)
	.db $E8 $00 $06 $04 $80 $C0 $02 $CE $9C $DC $00 $06 $04 $C0 $E0 $02
	.db $FA $A2 $00 $00 $00 $0F $EF $03 $84 $03 $80 $85 $85 $89 $80 $85
	.db $85 $84 $80 $85 $85 $88 $85 $85 $85 $F7 $00 $03 $4E $A0 $84 $03
	.db $80 $85 $85 $89 $80 $85 $85 $84 $80 $85 $85 $89 $89 $89 $89 $84
	.db $03 $80 $85 $85 $89 $80 $85 $85 $84 $80 $85 $85 $88 $85 $85 $85
	.db $F7 $00 $07 $75 $A0 $84 $03 $80 $85 $85 $89 $80 $85 $85 $84 $80
	.db $85 $85 $89 $85 $89 $85 $86 $03 $80 $85 $85 $89 $80 $85 $85 $84
	.db $80 $85 $85 $88 $85 $85 $85 $84 $03 $80 $85 $85 $89 $80 $85 $85
	.db $84 $80 $85 $85 $88 $85 $85 $85 $8C $03 $8C $8D $85 $89 $80 $85
	.db $85 $84 $80 $85 $85 $88 $85 $85 $85 $84 $03 $80 $85 $85 $89 $80
	.db $80 $80 $80 $03 $80 $81 $02 $81 $02 $81 $02 $89 $03 $85 $81 $85
	.db $84 $03 $80 $85 $85 $89 $80 $85 $85 $84 $80 $85 $85 $88 $85 $85
	.db $85 $F7 $00 $07 $E6 $A0 $84 $03 $80 $85 $85 $89 $80 $85 $85 $84
	.db $80 $85 $85 $89 $89 $89 $8D $F6 $75 $A0 $EF $02 $F8 $23 $A1 $F7
	.db $00 $03 $12 $A1 $F8 $6C $A1 $F8 $6C $A1 $F6 $12 $A1 $85 $03 $85
	.db $84 $80 $88 $80 $85 $80 $84 $03 $80 $81 $80 $89 $80 $84 $80 $80
	.db $06 $81 $03 $85 $88 $80 $84 $80 $80 $06 $84 $03 $80 $89 $80 $81
	.db $81 $85 $03 $85 $84 $80 $88 $80 $85 $80 $84 $03 $80 $81 $80 $89
	.db $80 $84 $80 $80 $06 $81 $03 $85 $88 $80 $84 $80 $80 $06 $84 $03
	.db $80 $89 $80 $85 $85 $F9 $85 $03 $85 $85 $80 $89 $80 $85 $80 $84
	.db $06 $81 $03 $80 $89 $80 $85 $80 $85 $03 $85 $85 $80 $89 $80 $85
	.db $80 $84 $06 $81 $03 $80 $89 $80 $84 $80 $80 $03 $80 $80 $80 $88
	.db $80 $84 $80 $80 $06 $84 $03 $80 $88 $80 $84 $80 $80 $03 $80 $80
	.db $80 $88 $80 $84 $80 $80 $06 $84 $03 $80 $88 $80 $84 $85 $F9 $EF
	.db $02 $84 $0C $84 $0C $84 $0C $84 $0C $F8 $D8 $A1 $F7 $00 $07 $BF
	.db $A1 $F8 $FF $A1 $F8 $D8 $A1 $F8 $D8 $A1 $F7 $00 $02 $CA $A1 $F6
	.db $BF $A1 $84 $0C $88 $03 $80 $09 $84 $03 $84 $06 $84 $03 $88 $03
	.db $80 $09 $84 $06 $88 $03 $80 $03 $84 $03 $84 $03 $80 $03 $84 $03
	.db $85 $06 $81 $06 $88 $03 $80 $09 $F9 $84 $0C $88 $03 $80 $09 $84
	.db $03 $81 $06 $81 $03 $88 $03 $80 $09 $84 $06 $88 $03 $80 $03 $84
	.db $03 $84 $03 $80 $03 $84 $03 $84 $06 $81 $06 $88 $03 $80 $09 $F9
	.db $84 $06 $80 $06 $88 $03 $80 $09 $84 $06 $88 $03 $80 $03 $80 $06
	.db $84 $06 $80 $06 $8C $18 $F2 $86 $03 $84 $84 $84 $88 $84 $84 $84
	.db $80 $84 $84 $84 $88 $80 $84 $84 $86 $03 $84 $84 $84 $88 $84 $84
	.db $84 $80 $84 $84 $84 $88 $80 $84 $84 $84 $84 $84 $8C $80 $80 $84
	.db $84 $84 $8C $F2 $85 $02 $81 $81 $89 $81 $81 $85 $81 $81 $89 $81
	.db $81 $85 $02 $81 $81 $89 $81 $89 $80 $80 $81 $80 $80 $80 $F2 $84
	.db $06 $84 $03 $84 $06 $84 $09 $84 $03 $84 $06 $84 $03 $84 $84 $84
	.db $84 $F8 $C6 $A2 $F7 $00 $08 $97 $A2 $F8 $D8 $A2 $F8 $C6 $A2 $F7
	.db $00 $07 $A2 $A2 $F8 $E9 $A2 $F8 $C6 $A2 $F7 $00 $08 $AD $A2 $F8
	.db $D8 $A2 $F8 $C6 $A2 $F7 $00 $07 $B8 $A2 $F8 $E9 $A2 $F6 $85 $A2
	.db $85 $03 $81 $81 $81 $A8 $81 $81 $85 $85 $81 $85 $81 $A8 $06 $A4
	.db $06 $F9 $85 $03 $81 $81 $81 $A8 $81 $81 $85 $85 $85 $81 $85 $AC
	.db $06 $A0 $F9 $84 $03 $88 $88 $88 $8C $88 $88 $88 $84 $0C $84 $06
	.db $88 $03 $88 $F9 $80 $03 $88 $88 $88 $88 $88 $88 $88 $85 $85 $81
	.db $85 $85 $89 $85 $89 $85 $85 $81 $85 $85 $89 $85 $89 $88 $24 $80
	.db $0C $F2 $80 $04 $F6 $18 $A3 $80 $04 $F6 $1D $A3 $80 $04 $F6 $22
	.db $A3 $80 $04 $F6 $27 $A3 $80 $04 $F6 $2C $A3 $80 $04 $F6 $31 $A3
	.db $80 $04 $F6 $36 $A3 $FF
	
; 1st entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A33C to 1A345 (10 bytes)	
_DATA_1A33C_:	
	.db $01 $A0 $15 $01 $50 $A3 $22 $00 $80 $00
	
; 1st entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A346 to 1A354 (15 bytes)	
_DATA_1A346_:	
	.db $01 $A0 $C0 $01 $50 $A3 $0C $01 $00 $01 $81 $E8 $1F $10 $F2
	
; 2nd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A355 to 1A35E (10 bytes)	
_DATA_1A355_:	
	.db $01 $A8 $15 $01 $69 $A3 $04 $00 $03 $00
	
; 2nd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A35F to 1A37F (33 bytes)	
_DATA_1A35F_:	
	.db $01 $A8 $E0 $01 $77 $A3 $0E $03 $05 $00 $FF $30 $30 $00 $07 $35
	.db $60 $3F $69 $00 $17 $33 $06 $F2 $00 $15 $02 $01 $00 $10 $02 $05
	.db $F2
	
; 3rd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A380 to 1A389 (10 bytes)	
_DATA_1A380_:	
	.db $01 $88 $15 $01 $94 $A3 $FD $01 $F3 $00
	
; 3rd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A38A to 1A38F (6 bytes)	
_DATA_1A38A_:	
	.db $01 $88 $C0 $01 $9B $A3
	
	; Pointer Table from 1A390 to 1A391 (1 entries, indexed by unknown)
	.dw _DATA_40_
	
	; Data from 1A392 to 1A3A1 (16 bytes)
	.db $00 $01 $03 $E1 $03 $00 $0E $04 $F2 $02 $01 $02 $03 $9E $05 $F2
	
; 4th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A3A2 to 1A3B4 (19 bytes)	
_DATA_1A3A2_:	
	.db $02 $80 $14 $01 $C8 $A3 $F4 $05 $93 $00 $80 $15 $01 $D8 $A3 $08
	.db $05 $23 $00
	
; 4th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A3B5 to 1A3BA (6 bytes)	
_DATA_1A3B5_:	
	.db $02 $80 $A0 $01 $E8 $A3
	
	; Pointer Table from 1A3BB to 1A3BC (1 entries, indexed by unknown)
	.dw _DATA_2B_
	
	; Data from 1A3BD to 1A407 (75 bytes)
	.db $00 $00 $80 $C0 $01 $F8 $A3 $3F $00 $00 $00 $FD $01 $01 $F6 $04
	.db $FC $01 $01 $80 $28 $05 $FD $00 $FC $00 $F2 $FD $01 $01 $F6 $04
	.db $FC $01 $01 $80 $48 $05 $FD $00 $FC $00 $F2 $FD $01 $01 $50 $04
	.db $FC $01 $01 $00 $08 $05 $FD $00 $FC $00 $F2 $FD $01 $01 $50 $04
	.db $FC $01 $01 $00 $28 $05 $FD $00 $FC $00 $F2
	
; 5th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A408 to 1A411 (10 bytes)	
_DATA_1A408_:	
	.db $01 $80 $15 $01 $1C $A4 $F5 $03 $D3 $00
	
; 5th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A412 to 1A425 (20 bytes)	
_DATA_1A412_:	
	.db $01 $A8 $C0 $01 $21 $A4 $20 $00 $05 $00 $99 $03 $9C $10 $F2 $03
	.db $E0 $E4 $0C $F2
	
; 6th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A426 to 1A438 (19 bytes)	
_DATA_1A426_:	
	.db $02 $A0 $14 $01 $4C $A4 $F5 $00 $53 $00 $A0 $15 $01 $59 $A4 $F5
	.db $00 $53 $00
	
; 6th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A439 to 1A47F (71 bytes)	
_DATA_1A439_:	
	.db $02 $A0 $A0 $01 $66 $A4 $E1 $07 $00 $00 $A0 $C0 $01 $73 $A4 $E1
	.db $07 $00 $00 $A5 $F6 $6A $05 $FB $02 $02 $F7 $00 $05 $4C $A4 $F2
	.db $AC $0A $96 $05 $FB $FE $FE $F7 $00 $05 $59 $A4 $F2 $A5 $F8 $55
	.db $06 $FB $02 $02 $F7 $00 $05 $66 $A4 $F2 $AC $08 $AB $06 $FB $FE
	.db $FE $F7 $00 $05 $73 $A4 $F2
	
; 7th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A480 to 1A492 (19 bytes)	
_DATA_1A480_:	
	.db $02 $80 $14 $01 $A6 $A4 $F5 $01 $53 $00 $80 $15 $01 $BA $A4 $F5
	.db $01 $53 $00
	
; 7th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A493 to 1A4CF (61 bytes)	
_DATA_1A493_:	
	.db $02 $80 $A0 $01 $A6 $A4 $EC $01 $09 $00 $80 $C0 $01 $BA $A4 $EC
	.db $00 $09 $00 $A5 $08 $A5 $04 $A5 $04 $A5 $20 $FB $56 $4B $F4 $05
	.db $F5 $06 $C0 $F8 $AB $A6 $F2 $80 $10 $A5 $08 $A5 $04 $A5 $04 $A5
	.db $20 $FB $56 $4B $F4 $05 $F5 $06 $C0 $F8 $D1 $A6 $F2
	
; 8th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A4D0 to 1A4D9 (10 bytes)	
_DATA_1A4D0_:	
	.db $01 $A8 $15 $01 $E4 $A4 $03 $01 $00 $00
	
; 8th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A4DA to 1A4FE (37 bytes)	
_DATA_1A4DA_:	
	.db $01 $A8 $E0 $01 $F6 $A4 $08 $00 $03 $00 $FF $61 $11 $00 $06 $85
	.db $C2 $39 $A9 $02 $F2 $31 $06 $01 $51 $25 $0C $F2 $00 $40 $FF $04
	.db $00 $40 $16 $10 $F2
	
; 9th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A4FF to 1A508 (10 bytes)	
_DATA_1A4FF_:	
	.db $01 $A8 $15 $01 $13 $A5 $E4 $00 $03 $00
	
; 9th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A509 to 1A52D (37 bytes)	
_DATA_1A509_:	
	.db $01 $A8 $E0 $01 $25 $A5 $00 $01 $08 $00 $FF $30 $31 $03 $26 $30
	.db $F2 $A2 $B7 $02 $C9 $0B $14 $01 $D3 $63 $10 $F2 $00 $1C $35 $05
	.db $00 $94 $FA $15 $F2
	
; 10th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A52E to 1A537 (10 bytes)	
_DATA_1A52E_:	
	.db $01 $A8 $15 $01 $42 $A5 $12 $06 $03 $00
	
; 10th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A538 to 1A55C (37 bytes)	
_DATA_1A538_:	
	.db $01 $A8 $C0 $01 $54 $A5 $30 $04 $02 $00 $FF $31 $32 $00 $15 $65
	.db $40 $0C $2B $01 $C0 $17 $05 $02 $32 $23 $02 $F2 $01 $C0 $F7 $02
	.db $01 $22 $43 $05 $F2
	
; 11th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A55D to 1A56F (19 bytes)	
_DATA_1A55D_:	
	.db $02 $80 $14 $01 $83 $A5 $EF $02 $83 $00 $80 $15 $01 $8E $A5 $EF
	.db $02 $83 $00
	
; 11th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A570 to 1A59A (43 bytes)	
_DATA_1A570_:	
	.db $02 $80 $A0 $01 $83 $A5 $DA $02 $03 $00 $80 $C0 $01 $8E $A5 $DA
	.db $02 $03 $00 $C4 $04 $C9 $04 $C4 $04 $C9 $04 $CB $10 $F2 $80 $06
	.db $C4 $04 $C9 $04 $C4 $04 $C9 $04 $CB $0A $F2
	
; 12th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A59B to 1A5AD (19 bytes)	
_DATA_1A59B_:	
	.db $02 $88 $14 $01 $C1 $A5 $EE $05 $73 $00 $80 $15 $01 $CD $A5 $EE
	.db $05 $73 $01
	
; 12th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A5AE to 1A5FC (79 bytes)	
_DATA_1A5AE_:	
	.db $02 $88 $A0 $01 $DF $A5 $F5 $05 $0A $00 $80 $C0 $01 $EB $A5 $F5
	.db $05 $0A $00 $00 $AD $02 $FB $F9 $F9 $F7 $00 $0A $C1 $A5 $F2 $80
	.db $01 $FD $01 $00 $AD $02 $FB $01 $01 $F7 $00 $0A $D1 $A5 $FD $00
	.db $F2 $00 $B1 $02 $FB $F7 $F7 $F7 $00 $0A $DF $A5 $F2 $80 $01 $FD
	.db $01 $00 $B1 $02 $FB $01 $01 $F7 $00 $0A $EF $A5 $FD $00 $F2
	
; 13th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A5FD to 1A60F (19 bytes)	
_DATA_1A5FD_:	
	.db $02 $80 $14 $01 $23 $A6 $09 $03 $C3 $00 $80 $15 $01 $34 $A6 $02
	.db $02 $53 $02
	
; 13th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A610 to 1A646 (55 bytes)	
_DATA_1A610_:	
	.db $02 $80 $A0 $01 $23 $A6 $ED $02 $0A $00 $80 $C0 $01 $34 $A6 $F4
	.db $03 $0A $00 $A5 $04 $A9 $04 $AC $04 $B0 $04 $B1 $04 $B0 $04 $AC
	.db $04 $A9 $07 $F2 $80 $02 $A5 $04 $A9 $04 $AC $04 $B0 $04 $B1 $04
	.db $B0 $04 $AC $04 $A9 $05 $F2
	
; 14th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A647 to 1A659 (19 bytes)	
_DATA_1A647_:	
	.db $02 $80 $14 $01 $6D $A6 $03 $01 $C0 $00 $80 $15 $01 $78 $A6 $04
	.db $01 $C0 $01
	
; 14th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A65A to 1A684 (43 bytes)	
_DATA_1A65A_:	
	.db $02 $80 $A0 $01 $6D $A6 $EF $01 $02 $00 $80 $C0 $01 $78 $A6 $F0
	.db $01 $05 $01 $B8 $08 $B5 $08 $C1 $08 $BD $08 $B8 $08 $F2 $80 $03
	.db $B8 $08 $B5 $08 $C1 $08 $BD $08 $B8 $08 $F2
	
; 15th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A685 to 1A697 (19 bytes)	
_DATA_1A685_:	
	.db $02 $80 $14 $01 $AB $A6 $4B $05 $C0 $00 $80 $15 $01 $D1 $A6 $4B
	.db $05 $C0 $00
	
; 15th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A698 to 1A6F0 (89 bytes)	
_DATA_1A698_:	
	.db $02 $80 $A0 $01 $AB $A6 $4B $05 $06 $00 $80 $C0 $01 $D1 $A6 $4B
	.db $05 $06 $00 $FD $01 $00 $48 $02 $00 $30 $04 $00 $2C $04 $00 $28
	.db $02 $00 $30 $04 $00 $2C $04 $00 $28 $04 $E2 $00 $1C $08 $E4 $00
	.db $14 $08 $E6 $00 $0C $0E $FD $00 $F2 $80 $02 $80 $04 $80 $04 $80
	.db $02 $80 $04 $80 $04 $FD $01 $00 $1C $04 $E2 $00 $14 $08 $E4 $00
	.db $10 $08 $E6 $00 $0C $0E $FD $00 $F2
	
; 16th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A6F1 to 1A6FA (10 bytes)	
_DATA_1A6F1_:	
	.db $01 $80 $15 $01 $05 $A7 $16 $00 $03 $00
	
; 16th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A6FB to 1A721 (39 bytes)	
_DATA_1A6FB_:	
	.db $01 $A8 $C0 $01 $15 $A7 $00 $00 $02 $00 $FF $20 $30 $55 $2B $F5
	.db $F4 $52 $87 $99 $04 $80 $04 $A5 $08 $F2 $01 $CD $09 $04 $00 $00
	.db $00 $04 $00 $E9 $FC $02 $F2
	
; 17th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A722 to 1A72B (10 bytes)	
_DATA_1A722_:	
	.db $01 $A8 $15 $01 $36 $A7 $22 $00 $03 $00
	
; 17th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A72C to 1A74C (33 bytes)	
_DATA_1A72C_:	
	.db $01 $A8 $E0 $01 $44 $A7 $F4 $00 $05 $00 $FF $32 $40 $03 $07 $E4
	.db $53 $32 $FB $01 $08 $34 $10 $F2 $00 $13 $01 $04 $00 $11 $04 $07
	.db $F2
	
; 18th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A74D to 1A756 (10 bytes)	
_DATA_1A74D_:	
	.db $01 $A8 $15 $01 $61 $A7 $00 $00 $00 $00
	
; 18th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A757 to 1A777 (33 bytes)	
_DATA_1A757_:	
	.db $01 $A8 $E0 $01 $6F $A7 $00 $01 $00 $00 $FF $31 $20 $06 $06 $90
	.db $42 $46 $6F $01 $98 $F6 $1F $F2 $00 $98 $04 $01 $00 $88 $FA $20
	.db $F2
	
; 19th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A778 to 1A78A (19 bytes)	
_DATA_1A778_:	
	.db $02 $A8 $14 $01 $9E $A7 $0B $00 $03 $00 $A8 $15 $01 $9E $A7 $00
	.db $00 $63 $00
	
; 19th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A78B to 1A7C1 (55 bytes)	
_DATA_1A78B_:	
	.db $02 $A8 $A0 $01 $B0 $A7 $00 $00 $00 $02 $A8 $E0 $01 $B9 $A7 $00
	.db $00 $00 $00 $FF $30 $30 $06 $07 $60 $F0 $0F $0F $00 $10 $00 $05
	.db $00 $56 $FD $07 $F2 $00 $40 $00 $05 $00 $36 $FD $07 $F2 $00 $10
	.db $00 $05 $00 $56 $FD $07 $F2
	
; 20th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A7C2 to 1A7CB (10 bytes)	
_DATA_1A7C2_:	
	.db $01 $A8 $15 $01 $D6 $A7 $00 $00 $00 $00
	
; 20th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A7CC to 1A804 (57 bytes)	
_DATA_1A7CC_:	
	.db $01 $A8 $E0 $01 $F4 $A7 $00 $00 $00 $00 $FF $30 $30 $0D $27 $40
	.db $F0 $A1 $57 $01 $65 $50 $05 $0F $FF $00 $02 $02 $98 $30 $05 $03
	.db $F0 $CD $06 $01 $FF $05 $10 $F2 $00 $A5 $20 $02 $00 $E8 $10 $02
	.db $01 $60 $1D $06 $00 $3F $02 $23 $F2
	
; 21st entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A805 to 1A80E (10 bytes)	
_DATA_1A805_:	
	.db $01 $A8 $15 $01 $19 $A8 $30 $04 $53 $00
	
; 21st entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A80F to 1A83A (44 bytes)	
_DATA_1A80F_:	
	.db $01 $A8 $C0 $01 $2A $A8 $20 $04 $04 $00 $01 $00 $F0 $04 $01 $10
	.db $F5 $03 $01 $50 $F5 $03 $01 $80 $40 $07 $F2 $00 $F0 $F0 $04 $01
	.db $00 $F5 $03 $01 $40 $F5 $03 $01 $70 $40 $07 $F2
	
; 22nd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A83B to 1A84D (19 bytes)	
_DATA_1A83B_:	
	.db $02 $80 $14 $01 $61 $A8 $00 $00 $C0 $00 $80 $15 $01 $61 $A8 $FF
	.db $00 $C0 $00
	
; 22nd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A84E to 1A865 (24 bytes)	
_DATA_1A84E_:	
	.db $02 $80 $A0 $01 $61 $A8 $00 $01 $02 $00 $80 $C0 $01 $61 $A8 $F9
	.db $00 $04 $00 $BD $03 $C4 $0B $F2
	
; 23rd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A866 to 1A881 (28 bytes)	
_DATA_1A866_:	
	.db $03 $A8 $10 $01 $9E $A8 $00 $00 $03 $00 $A8 $11 $01 $AC $A8 $00
	.db $00 $A3 $00 $A8 $15 $01 $B1 $A8 $FD $00 $73 $00
	
; 23rd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A882 to 1A8C4 (67 bytes)	
_DATA_1A882_:	
	.db $03 $A8 $80 $01 $B6 $A8 $00 $01 $00 $00 $A8 $A0 $01 $BB $A8 $00
	.db $01 $00 $00 $A8 $E0 $01 $C0 $A8 $FD $01 $00 $00 $FF $31 $31 $03
	.db $07 $50 $F1 $0A $DF $00 $40 $0D $13 $F2 $00 $F0 $10 $13 $F2 $00
	.db $B0 $10 $13 $F2 $00 $60 $10 $13 $F2 $00 $20 $10 $13 $F2 $00 $10
	.db $05 $13 $F2
	
; 24th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A8C5 to 1A8CE (10 bytes)	
_DATA_1A8C5_:	
	.db $01 $A8 $15 $01 $D9 $A8 $20 $00 $03 $00
	
; 24th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A8CF to 1A8F3 (37 bytes)	
_DATA_1A8CF_:	
	.db $01 $A8 $E0 $01 $EB $A8 $F7 $00 $06 $00 $FF $FE $30 $02 $06 $8F
	.db $43 $18 $FA $01 $08 $0B $03 $01 $58 $19 $06 $F2 $00 $20 $FF $05
	.db $00 $2D $13 $03 $F2
	
; 25th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A8F4 to 1A8FD (10 bytes)	
_DATA_1A8F4_:	
	.db $01 $88 $15 $01 $08 $A9 $27 $00 $03 $00
	
; 25th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A8FE to 1A91B (30 bytes)	
_DATA_1A8FE_:	
	.db $01 $88 $C0 $01 $15 $A9 $08 $00 $02 $00 $FF $31 $30 $04 $16 $4F
	.db $F0 $82 $25 $01 $80 $06 $F2 $03 $10 $02 $03 $F0 $03 $F2
	
; 1st entry of Pointer Table from 18377 (indexed by _RAM_DE03_)	
; Data from 1A91C to 1A925 (10 bytes)	
_DATA_1A91C_:	
	.db $01 $A8 $15 $01 $30 $A9 $22 $01 $13 $00
	
; 1st entry of Pointer Table from 18311 (indexed by _RAM_DE03_)	
; Data from 1A926 to 1A945 (32 bytes)	
_DATA_1A926_:	
	.db $01 $A8 $E0 $01 $3B $A9 $E9 $01 $0D $00 $00 $A5 $39 $07 $0E $00
	.db $00 $02 $F6 $30 $A9 $00 $07 $04 $07 $00 $00 $00 $02 $F6 $3B $A9
	
; 27th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A946 to 1A94F (10 bytes)	
_DATA_1A946_:	
	.db $01 $A8 $15 $01 $5A $A9 $35 $00 $03 $00
	
; 27th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A950 to 1A955 (6 bytes)	
_DATA_1A950_:	
	.db $01 $A8 $C0 $01 $70 $A9
	
	; Pointer Table from 1A956 to 1A957 (1 entries, indexed by unknown)
	.dw _DATA_35_
	
	; Data from 1A958 to 1A980 (41 bytes)
	.db $00 $00 $FF $12 $20 $02 $08 $71 $34 $60 $4A $00 $22 $07 $02 $00
	.db $50 $07 $03 $00 $48 $0A $17 $F2 $00 $7A $13 $02 $00 $95 $07 $03
	.db $00 $B2 $06 $03 $00 $F3 $0D $17 $F2
	
; 28th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A981 to 1A98A (10 bytes)	
_DATA_1A981_:	
	.db $01 $A8 $15 $01 $95 $A9 $00 $00 $03 $00
	
; 28th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A98B to 1A9AB (33 bytes)	
_DATA_1A98B_:	
	.db $01 $A8 $E0 $01 $A7 $A9 $F2 $00 $00 $00 $FF $52 $30 $0A $07 $41
	.db $F0 $A3 $58 $04 $10 $18 $07 $05 $10 $29 $15 $F2 $00 $40 $15 $17
	.db $F2
	
; 29th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A9AC to 1A9B5 (10 bytes)	
_DATA_1A9AC_:	
	.db $01 $A0 $15 $01 $C0 $A9 $F8 $00 $53 $00
	
; 29th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A9B6 to 1A9D9 (36 bytes)	
_DATA_1A9B6_:	
	.db $01 $A0 $C0 $01 $CD $A9 $E8 $00 $06 $00 $99 $EB $6A $05 $FB $03
	.db $03 $F7 $00 $10 $C0 $A9 $F2 $99 $EB $6A $05 $FB $03 $03 $F7 $00
	.db $0F $CD $A9 $F2
	
; 30th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1A9DA to 1A9E3 (10 bytes)	
_DATA_1A9DA_:	
	.db $01 $88 $15 $01 $EE $A9 $00 $00 $00 $00
	
; 30th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1A9E4 to 1AA07 (36 bytes)	
_DATA_1A9E4_:	
	.db $01 $88 $E0 $01 $FE $A9 $FD $00 $01 $00 $FF $30 $81 $06 $07 $E0
	.db $C4 $6A $F3 $00 $4D $01 $00 $16 $0D $F2 $00 $10 $04 $F5 $0C $04
	.db $00 $09 $08 $F2
	
; 31st entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1AA08 to 1AA11 (10 bytes)	
_DATA_1AA08_:	
	.db $01 $A8 $15 $01 $1C $AA $00 $00 $03 $00
	
; 31st entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1AA12 to 1AA38 (39 bytes)	
_DATA_1AA12_:	
	.db $01 $A8 $C0 $01 $2F $AA $08 $00 $02 $00 $FF $31 $20 $11 $17 $B0
	.db $F1 $20 $57 $01 $10 $20 $06 $F7 $00 $04 $1C $AA $F2 $00 $B0 $30
	.db $06 $F7 $00 $04 $2F $AA $F2
	
; 32nd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1AA39 to 1AA42 (10 bytes)	
_DATA_1AA39_:	
	.db $01 $A8 $15 $01 $4D $AA $12 $00 $03 $00
	
; 32nd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1AA43 to 1AA63 (33 bytes)	
_DATA_1AA43_:	
	.db $01 $A8 $E0 $01 $5B $AA $00 $00 $00 $00 $FF $30 $3D $0B $07 $F0
	.db $60 $FF $0F $00 $1F $C4 $0E $F2 $00 $04 $01 $08 $00 $40 $F5 $06
	.db $F2
	
; 33rd entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1AA64 to 1AA6D (10 bytes)	
_DATA_1AA64_:	
	.db $01 $A8 $15 $01 $78 $AA $19 $00 $03 $00
	
; 33rd entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1AA6E to 1AA92 (37 bytes)	
_DATA_1AA6E_:	
	.db $01 $A8 $E0 $01 $8A $AA $D0 $06 $04 $00 $FF $34 $3C $07 $06 $F0
	.db $F0 $A1 $FB $01 $E0 $80 $07 $00 $60 $18 $09 $F2 $00 $30 $04 $08
	.db $00 $30 $F5 $0F $F2
	
; 34th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1AA93 to 1AAA5 (19 bytes)	
_DATA_1AA93_:	
	.db $02 $A8 $14 $01 $B9 $AA $0B $00 $03 $00 $A8 $15 $01 $CB $AA $00
	.db $00 $53 $00
	
; 34th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1AAA6 to 1AAE5 (64 bytes)	
_DATA_1AAA6_:	
	.db $02 $A8 $A0 $01 $D4 $AA $00 $00 $00 $00 $A8 $E0 $01 $DD $AA $00
	.db $00 $00 $00 $FF $30 $30 $06 $07 $60 $F0 $0F $0F $00 $10 $00 $05
	.db $00 $56 $FD $10 $F2 $03 $50 $C0 $05 $03 $66 $10 $10 $F2 $02 $50
	.db $C0 $05 $02 $66 $10 $10 $F2 $00 $10 $00 $05 $00 $56 $FD $10 $F2
	
; 35th entry of Pointer Table from 18331 (indexed by _RAM_DE03_)	
; Data from 1AAE6 to 1AAEF (10 bytes)	
_DATA_1AAE6_:	
	.db $01 $A8 $15 $01 $FA $AA $12 $00 $03 $00
	
; 35th entry of Pointer Table from 182CB (indexed by _RAM_DE03_)	
; Data from 1AAF0 to 1AB1E (47 bytes)	
_DATA_1AAF0_:	
	.db $01 $A8 $C0 $01 $0F $AB $30 $04 $02 $00 $FF $31 $37 $11 $17 $80
	.db $59 $00 $0F $00 $1F $34 $0A $EF $01 $F7 $00 $0A $FA $AA $F2 $00
	.db $64 $01 $05 $00 $80 $F5 $05 $EF $01 $F7 $00 $0A $0F $AB $F2
	
; Pointer Table from 1AB1F to 1AB38 (13 entries, indexed by _RAM_DE75_)	
_DATA_1AB1F_:	
	.dw _DATA_1AB39_ _DATA_1AB3C_ _DATA_1AB45_ _DATA_1AB4E_ _DATA_1AB57_ _DATA_1AB62_ _DATA_1AB81_ _DATA_1AB8C_
	.dw _DATA_1AB9B_ _DATA_1ABA7_ _DATA_1ABB1_ _DATA_1ABBC_ _DATA_1ABCD_
	
; 1st entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB39 to 1AB3B (3 bytes)	
_DATA_1AB39_:	
	.db $02 $06 $82
	
; 2nd entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB3C to 1AB44 (9 bytes)	
_DATA_1AB3C_:	
	.db $00 $01 $02 $04 $05 $06 $07 $0A $82
	
; 3rd entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB45 to 1AB4D (9 bytes)	
_DATA_1AB45_:	
	.db $01 $00 $01 $01 $03 $04 $07 $0A $82
	
; 4th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB4E to 1AB56 (9 bytes)	
_DATA_1AB4E_:	
	.db $02 $00 $00 $00 $01 $02 $03 $04 $82
	
; 5th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB57 to 1AB61 (11 bytes)	
_DATA_1AB57_:	
	.db $02 $01 $00 $01 $02 $02 $03 $03 $04 $04 $81
	
; 6th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB62 to 1AB80 (31 bytes)	
_DATA_1AB62_:	
	.db $05 $02 $00 $00 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03 $04 $04
	.db $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $08 $81
	
; 7th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB81 to 1AB8B (11 bytes)	
_DATA_1AB81_:	
	.db $04 $04 $03 $03 $02 $02 $01 $01 $02 $02 $81
	
; 8th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB8C to 1AB9A (15 bytes)	
_DATA_1AB8C_:	
	.db $00 $00 $01 $01 $02 $02 $02 $03 $03 $03 $03 $04 $04 $05 $81
	
; 9th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1AB9B to 1ABA6 (12 bytes)	
_DATA_1AB9B_:	
	.db $00 $00 $01 $01 $01 $02 $04 $03 $02 $02 $83 $04
	
; 10th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1ABA7 to 1ABB0 (10 bytes)	
_DATA_1ABA7_:	
	.db $02 $02 $03 $03 $02 $02 $01 $01 $00 $00
	
; 11th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1ABB1 to 1ABBB (11 bytes)	
_DATA_1ABB1_:	
	.db $02 $01 $00 $00 $01 $01 $02 $03 $04 $05 $81
	
; 12th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1ABBC to 1ABCC (17 bytes)	
_DATA_1ABBC_:	
	.db $07 $07 $06 $06 $05 $05 $04 $04 $03 $03 $02 $02 $02 $01 $01 $01
	.db $82
	
; 13th entry of Pointer Table from 1AB1F (indexed by _RAM_DE75_)	
; Data from 1ABCD to 1ABD7 (11 bytes)	
_DATA_1ABCD_:	
	.db $00 $00 $01 $02 $03 $04 $03 $02 $01 $00 $82
	
; Pointer Table from 1ABD8 to 1ABE5 (7 entries, indexed by _RAM_DE94_)	
_DATA_1ABD8_:	
	.dw _DATA_1ABE6_ _DATA_1ABFC_ _DATA_1AC15_ _DATA_1AC2D_ _DATA_1AC36_ _DATA_1AC3D_ _DATA_1AC43_
	
; 1st entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1ABE6 to 1ABFB (22 bytes)	
_DATA_1ABE6_:	
	.dsb 10, $01
	.db $00 $00 $01 $01 $01 $01 $01 $01 $00 $00 $01 $00
	
; 2nd entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1ABFC to 1AC14 (25 bytes)	
_DATA_1ABFC_:	
	.db $00 $00 $01 $00 $03 $00 $01 $01 $01 $00 $00 $01 $02 $03 $02 $02
	.db $02 $01 $00 $00 $00 $01 $03 $07 $02
	
; 3rd entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1AC15 to 1AC2C (24 bytes)	
_DATA_1AC15_:	
	.db $00 $01 $02 $03 $05 $03 $01 $00 $01 $02 $04 $02 $01 $00 $01 $02
	.db $03 $05 $03 $02 $01 $00 $83 $40
	
; 4th entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1AC2D to 1AC35 (9 bytes)	
_DATA_1AC2D_:	
	.db $00 $50 $00 $01 $01 $00 $00 $83 $04
	
; 5th entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1AC36 to 1AC3C (7 bytes)	
_DATA_1AC36_:	
	.db $57 $18 $11 $00 $3F $01 $80
	
; 6th entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1AC3D to 1AC42 (6 bytes)	
_DATA_1AC3D_:	
	.db $11 $41 $01 $41 $01 $80
	
; 7th entry of Pointer Table from 1ABD8 (indexed by _RAM_DE94_)	
; Data from 1AC43 to 1AC4A (8 bytes)	
_DATA_1AC43_:	
	.db $17 $50 $01 $08 $06 $10 $08 $80
	
; 1st entry of Jump Table from 18379 (indexed by _RAM_DE03_)	
_LABEL_1AC4B_:	
		ld hl, _DATA_1ACA2_
		ld bc, $0548
		ld a, $06
		ld (_RAM_DE0D_), a
		call _LABEL_18AA7_
		ld a, $81
		out (Port_PSG), a
		xor a
		out (Port_AudioControl), a
		ld a, (_RAM_DE0D_)
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
		ld a, (_RAM_DE00_)
		or a
		jr nz, +
		ld hl, _RAM_DF2E_
		bit 7, (hl)
		jr z, +
		ld a, $DF
		out (Port_PSG), a
		ld a, $E7
		out (Port_PSG), a
+:	
		jp _LABEL_184DD_
	
; Data from 1ACA2 to 1AFB1 (784 bytes)	
_DATA_1ACA2_:	
	.dsb 17, $00
	.db $01 $FC
	.dsb 9, $00
	.db $3F $FF $00 $00 $00 $00 $00 $00 $00 $FF $FF $C0 $0F $FF $80 $00
	.db $00 $00 $07 $FF $BF $00 $FF $FC $00 $00 $00 $00 $FF $FF $C0 $0F
	.db $FF $F0 $00 $00 $00 $3F $FF $F0 $01 $FF $FC $00 $00 $00 $3F $FF
	.db $E0 $03 $FF $F8 $00 $00 $0F $FC $7C $03 $FF $FE $00 $00 $07 $FC
	.db $7E $03 $FE $7F $00 $00 $07 $F0 $7E $03 $FF $3F $00 $38 $07 $E0
	.db $3F $03 $F8 $1F $80 $70 $07 $E0 $7C $03 $FF $FC $00 $00 $FF $87
	.db $00 $7F $FF $80 $00 $7F $E7 $00 $1F $FF $C0 $00 $7F $FF $80 $0F
	.db $FF $C0 $00 $3F $FF $C0 $00 $3F $E0 $00 $1F $7F $F0 $00 $07 $E0
	.db $00 $01 $FF $8F $04 $3C $00 $00 $02 $3F $7C $00 $60 $43 $00 $00
	.db $1C $79 $E0 $00 $0F $00 $00 $00 $03 $E0 $07 $1F $00 $00 $00 $00
	.db $20 $01 $C7 $80 $00 $04 $1C $F8 $E0 $00 $00 $00 $3F $FF $E0 $00
	.db $00 $07 $9F $F8 $70 $07 $87 $00 $30 $3F $CF $82 $00 $00 $01 $C7
	.db $9E $38 $30 $E3 $80 $08 $3F $FF $C3 $00 $00 $03 $1F $FF $C0 $00
	.db $00 $00 $38 $79 $8E $0E $1E $00 $00 $1F $FF $C2 $00 $00 $01 $C7
	.db $CF $60 $60 $E3 $80 $30 $71 $FE $78 $30 $00 $0C $3F $FF $0C $00
	.db $00 $03 $87 $1C $01 $03 $86 $00 $01 $8F $FF $E1 $80 $00 $07 $FF
	.db $F0 $80 $00 $30 $03 $06 $39 $E7 $8E $00 $00 $03 $CF $FF $C0 $00
	.db $00 $38 $F3 $C0 $00 $02 $00 $00 $38 $FF $FC $30 $00 $00 $E7 $FE
	.db $60 $00 $00 $00 $41 $CF $FB $C0 $80 $00 $07 $3F $FB $80 $00 $0C
	.db $03 $07 $3F $C7 $03 $00 $00 $03 $FF $F3 $80 $01 $C3 $8C $38 $C1
	.db $01 $CF $80 $00 $07 $FF $C0 $00 $47 $C0 $00 $31 $FF $00 $00 $00
	.db $03 $87 $FF $80 $03 $E6 $80 $00 $FF $F8 $00 $3F $F8 $00 $07 $FF
	.db $80 $03 $F8 $00 $39 $FF $00 $07 $FF $80 $03 $FF $C0 $01 $FF $C0
	.db $00 $FF $F0 $00 $7F $C0 $00 $3F $D8 $01 $FF $F0 $00 $3F $F8 $00
	.db $1F $FC $00 $00 $0F $0C $70 $E3 $FC $00 $00 $FC $41 $0F $FF $C0
	.db $08 $03 $C3 $D8 $39 $FF $00 $00 $1F $80 $30 $FF $CC $08 $00 $7C
	.db $47 $07 $FC $60 $07 $81 $F0 $3E $0F $FC $00 $00 $07 $C0 $7C $3F
	.db $E0 $07 $00 $1F $00 $E0 $FF $80 $00 $40 $3E $01 $C0 $FF $00 $10
	.db $40 $7C $07 $81 $FE $00 $F0 $03 $E0 $1C $1F $F0 $0E $00 $1F $80
	.db $78 $3F $C0 $1E $00 $3F $00 $40 $FF $80 $7C $01 $F8 $0F $0F $F8
	.db $03 $80 $0F $C0 $3C $1F $E0 $0F $00 $1F $80 $20 $7F $C0 $3C $00
	.db $7C $03 $C1 $FE $00 $E0 $07 $E0 $1E $1F $F0 $07 $00 $3F $80 $F8
	.db $3F $C0 $3C $00 $FC $07 $C1 $FE $00 $F0 $07 $E0 $3E $1F $F0 $0F
	.db $00 $3E $01 $E0 $FF $00 $78 $03 $F0 $1F $07 $F8 $07 $C0 $1F $80
	.db $F8 $7F $C0 $3C $01 $F8 $0F $87 $FC $03 $C0 $0F $C0 $7C $3F $C0
	.db $0E $00 $7C $03 $E1 $FF $00 $F0 $07 $C0 $3E $3F $E0 $0F $00 $FC
	.db $03 $C3 $FE $01 $E0 $0F $C0 $3C $3F $E0 $0E $00 $7E $03 $E1 $FF
	.db $00 $70 $07 $E0 $3E $3F $F0 $0F $00 $7E $03 $C3 $FE $00 $F0 $07
	.db $E0 $3C $3F $E0 $0F $00 $7E $01 $E1 $FF $00 $60 $07 $E0 $1F $1F
	.db $F0 $07 $80 $3E $01 $E1 $FF $00 $F0 $07 $E0 $1E $1F $F0 $07 $80
	.db $3F $00 $F0 $FF $80 $38 $03 $F0 $0F $0F $F8 $03 $C0 $1F $80 $F8
	.db $7F $C0 $3C $01 $F8 $07 $C7 $FE $00 $E0 $0F $C0 $3E $1F $F0 $03
	.db $80 $3F $00 $F0 $FF $80 $3C $03 $F0 $0F $0F $F8 $03 $C0 $1F $80
	.db $F8 $7F $C0 $08 $00 $7C $03 $E0 $FF $00 $F0 $07 $E0 $1E $1F $F0
	.db $07 $80 $7E $01 $E1 $3F $00 $78 $03 $F0 $0F $83 $FC $01 $C0 $0F
	.db $80 $7C $7F $E0 $1E $00 $FC $03 $E0 $FF $00 $70 $07 $E0 $1F $1F
	.db $F8 $07 $80 $1F $80 $F8 $1F $E0 $1C $00 $FC $07 $C3 $FE $00 $E0
	.db $07 $F0 $1F $03
	
	; Pointer Table from 1AFB2 to 1AFB3 (1 entries, indexed by unknown)
	.dw _DATA_3FC_
	
	; Data from 1AFB4 to 1BFFF (4172 bytes)
	.db $E0 $0F $80 $78 $3F $E0 $1C $00 $FC $03 $C1 $FF $00 $F0 $03 $F0
	.db $0F $03 $FC $00 $40 $07 $E0 $3E $0F $F8 $00 $00 $3F $00 $E0 $BF
	.db $80 $78 $01 $F8 $07 $83 $FC $00 $80 $07 $E0 $1C $0F $F0 $03 $80
	.db $1F $80 $78 $3F $C0 $00 $00 $FE $03 $C3 $7E $00 $E0 $03 $F0 $0F
	.db $07 $FC $00 $00 $0F $C0 $3C $1F $E0 $06 $00 $3F $01 $E0 $FF $80
	.db $00 $01 $F8 $07 $05 $FC $01 $80 $07 $E0 $1C $0F $F0 $00 $00 $1F
	.db $80 $78 $3F $C0 $00 $00 $7E $01 $C1 $FF $00 $00 $03 $F0 $0E $0D
	.db $F8 $00 $00 $0F $C0 $38 $1F $E0 $00 $00 $3F $00 $E0 $FF $00 $00
	.db $01 $FC $03 $83 $FC $00 $00 $07 $E0 $1C $1B $F0 $00 $00 $1F $80
	.db $70 $7F $C0 $00 $00 $7E $01 $C1 $7E $00 $00 $03 $F8 $06 $07 $FC
	.db $00 $00 $0F $C0 $18 $17 $E0 $00 $00 $3F $00 $60 $FF $80 $00 $00
	.db $FC $03 $82 $7E $00 $00 $07 $F0 $0C $1B $F0 $00 $00 $1F $C0 $30
	.db $3F $E0 $00 $00 $7E $01 $C0 $7E $00 $80 $03 $F8 $06 $0F $F8 $00
	.db $00 $0F $E0 $1C $07 $E0 $00 $00 $0F $C0 $1C $1F $E0 $00 $00 $1F
	.db $00 $60 $FF $80 $00 $00 $FE $01 $83 $FE $00 $00 $01 $F8 $03 $03
	.db $FC $00 $00 $01 $F8 $03 $83 $FC $00 $00 $03 $F0 $0C $1B $F0 $00
	.db $00 $0F $C0 $30 $0F $C0 $00 $00 $1F $80 $38 $3F $C0 $00 $00 $1F
	.db $80 $70 $3F $C0 $00 $00 $3F $00 $E0 $BF $00 $60 $00 $FE $01 $81
	.db $FE $00 $00 $00 $FC $03 $82 $FC $00 $00 $01 $F8 $03 $82 $FC $00
	.db $00 $03 $F8 $06 $01 $F8 $00 $00 $03 $F0 $0E $01 $F0 $00 $00 $03
	.db $E0 $1C $03 $F0 $00 $00 $07 $E0 $0C $03 $E0 $00 $00 $07 $E0 $1C
	.db $03 $E0 $00 $00 $07 $E0 $1C $03 $E0 $00 $00 $07 $E0 $18 $07 $E0
	.db $00 $00 $0F $C0 $18 $07 $C0 $00 $00 $0F $C0 $38 $07 $C0 $00 $00
	.db $0F $C0 $38 $07 $C0 $00 $00 $0F $C0 $38 $07 $C0 $00 $00 $0F $C0
	.db $38 $07 $C0 $00 $00 $0F $C0 $30 $07 $C0 $00 $00 $07 $E0 $1C $01
	.db $E1 $00 $00 $03 $F0 $0E $01 $F0 $02 $00 $00 $FC $03 $00 $F8 $00
	.db $00 $00 $7E $01 $80 $3E $00 $00 $00 $1F $80 $60 $0F $86 $40 $00
	.db $07 $E0 $18 $03 $E0 $1C $00 $00 $FC $03 $00 $7C $0F $00 $40 $1F
	.db $80 $60 $0F $81 $F0 $06 $01 $F8 $07 $00 $F8 $0F $00 $60 $1F $C0
	.db $60 $0F $80 $F8 $03 $00 $7E $01 $80 $FE $03 $C0 $38 $01 $F8 $04
	.db $07 $F8 $07 $80 $60 $07 $E0 $08 $0F $E0 $1F $00 $60 $07 $E0 $0C
	.db $0F $E0 $0F $80 $00 $01 $F0 $06 $00 $F0 $07 $C0 $1E $00 $7C $00
	.db $00 $7C $00 $60 $00 $00 $07 $C0 $08 $03 $C0 $0F $80 $00 $00 $1E
	.db $00 $00 $0E $00 $00 $00 $00 $00 $3E $00 $00 $3C $00 $00 $00 $00
	.db $00 $3C $00 $00 $00 $00 $00 $00 $00 $00 $03 $C0 $00 $03 $C0 $00
	.db $00 $00 $00 $00 $38 $00
	.dsb 3606, $FF
	
.BANK 7	
.ORG $0000	
	
	; Data from 1C000 to 1C001 (2 bytes)
	.db $08 $00
	
; 1st entry of Pointer Table from 1F158 (indexed by unknown)	
; Data from 1C002 to 1C0BF (190 bytes)	
_DATA_1C002_:	
	.db $84 $2F $3F $07 $01 $02 $00 $02 $01 $05 $00 $8B $1E $3F $87 $13
	.db $18 $13 $87 $6C $B1 $C1 $B0 $07 $00 $85 $C0 $F1 $FF $7F $7E $03
	.db $FF $81 $FD $08 $00 $88 $C0 $F8 $DF $0E $DB $75 $EE $FF $09 $00
	.db $87 $06 $DF $FF $BF $FF $FC $F0 $09 $00 $87 $70 $F8 $F8 $FC $1C
	.db $0C $04 $03 $00 $89 $10 $30 $1C $0E $07 $0F $02 $03 $01 $02 $00
	.db $02 $01 $00 $0A $00 $82 $03 $01 $03 $00 $81 $01 $08 $00 $88 $10
	.db $1C $1B $B7 $6C $30 $00 $80 $07 $00 $86 $C0 $31 $8C $55 $71 $61
	.db $02 $FD $09 $00 $87 $C0 $38 $EF $E4 $40 $AB $FE $0B $00 $85 $C6
	.db $48 $20 $60 $C0 $19 $00 $84 $04 $02 $03 $01 $03 $00 $81 $01 $00
	.db $08 $00 $84 $10 $00 $03 $01 $03 $00 $81 $01 $08 $00 $88 $10 $18
	.db $13 $87 $6C $30 $00 $80 $44 $00 $81 $08 $03 $00 $84 $04 $02 $03
	.db $01 $03 $00 $81 $01 $00 $0B $00 $85 $02 $01 $00 $00 $02
	
; 1st entry of Pointer Table from 1F3D4 (indexed by unknown)	
; Data from 1C0C0 to 1F157 (12440 bytes)	
_DATA_1C0C0_:	
	.incbin "data/File11_1C0C0_1F157.dat"
	
	; Pointer Table from 1F158 to 1F159 (1 entries, indexed by unknown)
	.dw _DATA_1C002_
	
	; Data from 1F15A to 1F15E (5 bytes)
	.db $03 $00 $91 $E0 $F8
	
	; Pointer Table from 1F15F to 1F160 (1 entries, indexed by unknown)
	.dw _RAM_C038_
	
	; Data from 1F161 to 1F3D3 (627 bytes)
	.db $F6 $70 $80 $EC $E2 $02 $DC $38 $1C $0E $07 $03 $01 $0E $00 $BE
	.db $80 $C0 $E0 $70 $38 $1C $04 $00 $01 $03 $07 $1F $00 $03 $0A $0B
	.db $0B $0A $08 $9C $95 $A7 $D6 $F4 $CC $B9 $73 $4C $49 $4E $CF $23
	.db $30 $66 $3E $FD $C7 $03 $0E $18 $7B $DF $00 $0E $C6 $04 $B8 $8C
	.db $08 $10 $E0 $B8 $10 $00 $08 $84 $80 $9C $0A $80 $1F $00 $02 $01
	.db $03 $03 $84 $02 $03 $02 $03 $05 $01 $A9 $D4 $00 $C0 $D9 $C0 $40
	.db $D0 $C0 $FF $EE $FF $BA $FF $6E $DF $F8 $FC $00 $B8 $F9 $00 $E8
	.db $F8 $00 $FF $E0 $E0 $97 $87 $4E $3D $E2 $60 $10 $00 $30 $60 $00
	.db $68 $40 $FC $03 $00 $02 $80 $82 $40 $C0 $0B $00 $8B $01 $06 $1F
	.db $FF $FF $74 $67 $66 $27 $76 $4E $03 $4C $8B $E4 $00 $C2 $01 $FD
	.db $FE $FE $E4 $8E $03 $01 $05 $00 $02 $01 $02 $00 $91 $0F $00 $00
	.db $70 $28 $90 $C8 $86 $87 $07 $0E $8C $98 $30 $60 $E0 $C0 $03 $00
	.db $04 $10 $02 $18 $81 $08 $02 $0C $02 $06 $02 $03 $02 $01 $02 $00
	.db $02 $80 $02 $C0 $02 $60 $02 $30 $02 $18 $02 $0C $02 $06 $8C $1A
	.db $30 $76 $0E $01 $03 $00 $05 $00 $00 $01 $09 $03 $13 $91 $00 $AD
	.db $58 $2B $16 $10 $06 $BD $7D $12 $09 $BD $A2 $19 $3D $22 $19 $02
	.db $80 $04 $00 $8A $E0 $F0 $08 $F0 $F0 $0A $F0 $F2 $0B $F0 $02 $03
	.db $02 $01 $87 $0C $2A $38 $24 $00 $17 $06 $06 $00 $E9 $07 $8A $8B
	.db $CB $0E $1F $7D $E4 $84 $88 $CB $7C $05 $04 $0C $BD $E2 $19 $3D
	.db $20 $33 $CF $FC $70 $07 $7C $C3 $7F $9F $00 $0E $F2 $0A $E0 $F2
	.db $00 $E8 $C0 $D0 $78 $68 $68 $C4 $80 $9C $0A $80 $75 $60 $70 $76
	.db $F0 $D0 $F4 $B0 $FF $BB $FF $6E $7F $5B $77 $7E $3F $00 $2E $7E
	.db $00 $3A $3E $00 $FF $B8 $F8 $A5 $E1 $93 $CF $38 $18 $04 $00 $4C
	.db $18 $00 $1A $10 $FF $00 $00 $C0 $E0 $A0 $50 $B0 $00 $03 $0A $0B
	.db $0B $0A $08 $1C $15 $07 $02 $0E $D4 $BC $C8 $F1 $03 $49 $4E $CF
	.db $23 $30 $66 $3E $FD $C6 $0B $16 $38 $5B $FF $80 $0E $C6 $04 $B8
	.db $8C $08 $10 $A0 $38 $10 $00 $08 $84 $80 $9C $0A $80 $17 $3C $0C
	.db $9D $FC $F4 $BD $AC $3F $2E $3F $1B $1F $16 $1D $1F $4F $00 $0B
	.db $9F $00 $0E $0F $00 $FF $EE $FE $A9 $F8 $E4 $F3 $8E $C6 $01 $80
	.db $93 $06 $80 $86 $04 $FF $00 $00 $70 $78 $E8 $D4 $2C $06 $00 $83
	.db $80 $00 $C0 $08 $00 $02 $01 $8B $03 $3E $03 $03 $01 $19 $30 $70
	.db $E0 $C0 $80 $0A $00 $92 $01 $03 $07 $0E $1C $38 $E0 $00 $01 $03
	.db $07 $0E $1C $38 $70 $E0 $C0 $80 $06 $00 $B7 $11 $18 $28 $39 $10
	.db $38 $09 $38 $1B $3B $0D $3D $12 $1E $05 $1E $4F $00 $0B $9F $00
	.db $0E $0F $00 $FF $BB $FF $CE $FF $AE $FE $4D $C6 $01 $80 $93 $06
	.db $80 $86 $04 $FF $A8 $F0 $D0 $E4 $66 $72 $38 $10 $06 $0E $06 $0E
	.db $06 $0E $02 $06 $04 $00 $03 $FF $9F $63 $E6 $61 $E0 $40 $E0 $E0
	.db $C0 $80 $C0 $00 $20 $10 $D0 $E0 $E0 $9C $CE $67 $33 $59 $0D $07
	.db $03 $02 $00 $07 $06 $00 $03 $7F $05 $00 $9C $80 $C0 $60 $50 $88
	.db $98 $30 $60
	
	; Pointer Table from 1F3D4 to 1F3D5 (1 entries, indexed by unknown)
	.dw _DATA_1C0C0_
	
	; Data from 1F3D6 to 1FFFF (3114 bytes)
	.incbin "data/File12_1F3D6_1FFFF.dat"
	
.BANK 8	
.ORG $0000	
	
; Data from 20000 to 2080D (2062 bytes)	
_DATA_20000_:	
	.incbin "data/File13_20000_2080D.dat"
	
; 1st entry of Pointer Table from 23350 (indexed by unknown)	
; Data from 2080E to 20E44 (1591 bytes)	
_DATA_2080E_:	
	.incbin "data/File14_2080E_20E44.dat"
	
; Data from 20E45 to 21804 (2496 bytes)	
_DATA_20E45_:	
	.incbin "data/File15_20E45_21804.dat"
	
; Data from 21805 to 224BD (3257 bytes)	
_DATA_21805_:	
	.incbin "data/File16_21805_224BD.dat"
	
; Data from 224BE to 2334F (3730 bytes)	
_DATA_224BE_:	
	.incbin "data/File17_224BE_2334F.dat"
	
	; Pointer Table from 23350 to 23351 (1 entries, indexed by unknown)
	.dw _DATA_2080E_
	
	; Data from 23352 to 233A3 (82 bytes)
	.db $0C $1C $38 $60 $00 $00 $FC $38 $23 $00 $8B $01 $03 $07 $07 $0E
	.db $0C $0E $0E $0F $0E $06 $0A $00 $02 $01 $82 $E1 $F9 $02 $FF $08
	.db $00 $81 $08 $02 $F0 $02 $F8 $8F $D0 $F0 $F0 $FF $BF $1F $0F $1F
	.db $3F $3F $7F $FE $7E $7E $6C $04 $7F $89 $80 $84 $CC $CE $C6 $8E
	.db $8E $9C $18 $03 $00 $84 $80 $F0 $F8 $FC $10 $00 $82 $3F $1C $0E
	.db $00 $82
	
	; Pointer Table from 233A4 to 233A5 (1 entries, indexed by unknown)
	.dw _DATA_7CBC_
	
	; Data from 233A6 to 23668 (707 bytes)
	.db $02 $3C $04 $78 $02 $70 $84 $30 $38 $1C $06 $09 $00 $89 $40 $3C
	.db $3E $7E $7E $2E $3E $3F $07 $0E $00 $83 $C0 $F0 $07 $04 $0F $86
	.db $07 $03 $11 $3F $3F $01 $02 $00 $02 $01 $8C $03 $E8 $B4 $D6 $DA
	.db $DA $E8 $EC $EC $DC $BC $D0 $04 $F8 $82 $F0 $03 $05 $07 $02 $03
	.db $81 $01 $06 $00 $87 $03 $F0 $E0 $C0 $80 $80 $C0 $02 $E0 $03 $F0
	.db $85 $30 $38 $30 $E0 $C0 $0E $00 $82 $03 $0F $07 $00 $94 $02 $3C
	.db $7C $7E $7E $74 $7C $FC $E0 $17 $2D $6B $5B $5B $17 $37 $37 $3B
	.db $3D $0B $04 $1F $82 $0F $E0 $04 $F0 $86 $E0 $C0 $88 $FC $FC $80
	.db $02 $00 $02 $80 $87 $C0 $0F $07 $03 $01 $01 $03 $02 $07 $03 $0F
	.db $86 $0C $1C $0C $07 $03 $C0 $05 $E0 $02 $C0 $81 $80 $06 $00 $84
	.db $C0 $00 $00 $07 $02 $0F $02 $0D $02 $0F $87 $1C $3B $7F $FF $FF
	.db $7F $7B $03 $00 $82 $A0 $C0 $05 $80 $81 $E0 $02 $F0 $03 $F8 $86
	.db $0E $AF $FF $FF $7F $3D $04 $0F $82 $1F $1D $02 $1E $02 $0E $86
	.db $CF $FF $EF $FF $CE $C0 $04 $F0 $04 $F8 $02 $FC $02 $39 $84 $3D
	.db $3C $3C $1C $04 $1E $03 $0E $83 $0C $1E $7E $02 $F0 $02 $F8 $85
	.db $FC $7C $3C $3C $3E $03 $1E $84 $0C $0E $1E $1F $03 $00 $82 $05
	.db $03 $05 $01 $81 $07 $02 $0F $03 $1F $02 $00 $81 $E0 $02 $F0 $02
	.db $B0 $02 $F0 $8D $38 $DC $FE $FF $FF $FE $DE $F3 $FF $F7 $FF $73
	.db $03 $04 $0F $04 $1F $02 $3F $86 $70 $F5 $FF $FF $FE $BC $04 $F0
	.db $82 $F8 $B8 $02 $78 $02 $70 $02 $0F $02 $1F $85 $3F $3E $3C $3C
	.db $7C $03 $78 $8A $30 $70 $78 $F8 $9C $9C $BC $3C $3C $38 $04 $78
	.db $03 $70 $83 $30 $78 $7E $08 $00 $81 $01 $04 $03 $83 $01 $05 $0E
	.db $08 $00 $89 $80 $E4 $F8 $F0 $F0 $F1 $BF $EF $0F $04 $1F $86 $0F
	.db $07 $05 $06 $07 $02 $04 $03 $8F $01 $3E $F8 $F6 $FE $DC $FC $D8
	.db $F8 $F0 $60 $E0 $F0 $FC $FE $02 $FF $02 $00 $03 $03 $85 $01 $04
	.db $0C $08 $10 $06 $00 $83 $FF $3F $03 $02 $07 $03 $03 $02 $01 $06
	.db $00 $81 $80 $02 $C0 $06 $E0 $04 $F0 $85 $60 $70 $30 $1C $0F $1D
	.db $00 $81 $01 $0A $00 $86 $30 $7C $7F $7E $7F $BF $08 $00 $88 $80
	.db $00 $00 $FC $FF $FF $CC $40 $0C $00 $85 $E0 $F8 $FC $1C $03 $06
	.db $07 $02 $03 $82 $01 $02 $04 $03 $84 $01 $B7 $DD $E7 $02 $FE $03
	.db $FC $86 $F8 $F0 $E0 $F0 $FC $FE $02 $FF $02 $00 $03 $03 $85 $01
	.db $04 $0C $08 $10 $06 $00 $83 $FF $3F $03 $02 $07 $03 $03 $02 $01
	.db $06 $00 $81 $80 $02 $C0 $06 $E0 $04 $F0 $85 $60 $70 $30 $1C $0F
	.db $15 $00 $82 $47 $3F $03 $1F $84 $1B $0E $31 $3F $0D $00 $81 $C0
	.db $02 $E0 $02 $00 $8E $01 $03 $07 $07 $0F $0E $0F $0E $06 $03 $01
	.db $00 $00 $01 $03 $3F $02 $7F $8B $7C $3F $3F $77 $FF $FE $FF $DF
	.db $BF $BF $3E $03 $F0 $03 $E0 $02 $C0 $08 $00 $82 $07 $03 $0E $00
	.db $03 $7C $8D $78 $70 $FC $FE $FE $9F $1F $0F $0E $04 $07 $0E $3C
	.db $05 $00 $81 $08 $05 $0F $85 $0D $0F $1F $3F $7F $07 $00 $04 $80
	.db $90 $00 $60 $70 $F8 $F8 $00 $01 $07 $07 $03 $00 $00 $01 $07 $1F
	.db $7F $03 $FF $82 $E0 $C0 $03 $7F $03 $FF $83 $3F $FE $F6 $04 $FF
	.db $8B $3F $1F $0F $FC $FC $BE $9E $9E $1E $1A $1E $03 $0E $8E $0C
	.db $0E $86 $80 $80 $01 $03 $07 $0F $17 $38 $78 $F0 $C0 $07 $00 $81
	.db $80 $0F $00 $03 $3E $02 $1E $81 $0E $04 $1C $86 $3C $18 $28 $18
	.db $18 $1C $00
	
; Data from 23669 to 23FFF (2455 bytes)	
_DATA_23669_:	
	.incbin "data/File18_23669_23FFF.dat"
	
.BANK 9	
.ORG $0000	
	
; 1st entry of Pointer Table from B88 (indexed by _RAM_C092_)	
; Data from 24000 to 24C1D (3102 bytes)	
_DATA_24000_:	
	.incbin "data/File19_24000_24C1D.dat"
	
; Data from 24C1E to 24D71 (340 bytes)	
_DATA_24C1E_:	
	.db $08 $00 $08 $FF $07 $00 $81 $07 $05 $00 $81 $0F $02 $FF $04 $00
	.db $04 $FF $03 $00 $0B $FF $8C $7F $3F $00 $00 $01 $07 $1F $3F $7F
	.db $FF $1F $7F $0F $FF $84 $FC $F0 $E0 $C0 $03 $80 $07 $00 $83 $0F
	.db $3F $06 $06 $00 $83 $1F $07 $03 $02 $01 $13 $00 $81 $01 $05 $00
	.db $87 $20 $30 $FF $FF $3F $1F $0F $04 $07 $81 $80 $02 $C0 $03 $E0
	.db $81 $F0 $08 $00 $81 $3F $02 $7F $04 $FF $87 $7F $E0 $F0 $F8 $F8
	.db $FC $FE $02 $FF $04 $00 $02 $01 $82 $03 $FF $15 $00 $03 $01 $02
	.db $70 $06 $F0 $03 $07 $05 $0F $08 $F0 $81 $01 $0A $00 $03 $80 $02
	.db $C0 $86 $7F $3F $1F $0F $03 $01 $02 $00 $04 $03 $04 $07 $04 $00
	.db $84 $08 $0C $0C $0E $18 $00 $81 $0C $06 $00 $82 $1F $10 $06 $00
	.db $81 $C0 $18 $00 $08 $3F $30 $00 $08 $7F $02 $F0 $03 $E0 $03 $C0
	.db $03 $0F $05 $07 $30 $00 $81 $C0 $02 $E0 $02 $F0 $83 $F8 $FC $FE
	.db $02 $07 $03 $0F $02 $1F $81 $3F $02 $00 $0B $FF $83 $F3 $CA $35
	.db $03 $FF $85 $FB $3C $55 $AA $40 $04 $FF $84 $55 $40 $AA $15 $03
	.db $FF $85 $AB $57 $AB $15 $4B $03 $FF $B5 $FD $FB $71 $FB $D5 $F8
	.db $F9 $F8 $F9 $F8 $F9 $F8 $F9 $A8 $50 $A8 $55 $AA $D5 $E0 $53 $0A
	.db $15 $2B $1D $AA $05 $00 $F8 $80 $4A $F5 $FE $BF $57 $2B $02 $A5
	.db $0A $43 $A8 $D0 $BA $F4 $FD $23 $55 $23 $C5 $22 $40 $A2 $08 $03
	.db $FF $87 $FE $FC $F8 $F8 $F0 $F8 $C0 $05 $00 $81 $03 $07 $00 $81
	.db $C0 $20 $00 $02 $FF $02 $7F $02 $3F $02 $1F $81 $F0 $03 $E0 $03
	.db $C0 $82 $80 $0F $02 $1F $03 $3F $02 $7F $85 $C0 $E0 $E0 $F0 $F8
	.db $03 $FE $18 $00
	
; 4th entry of Pointer Table from B88 (indexed by _RAM_C092_)	
; Data from 24D72 to 2505F (750 bytes)	
_DATA_24D72_:	
	.db $02 $0F $02 $07 $02 $03 $02 $01 $04 $80 $04 $00 $02 $7F $06 $FF
	.db $1A $00 $02 $80 $02 $C0 $02 $E0 $02 $F0 $02 $70 $02 $30 $02 $10
	.db $18 $00 $02 $F0 $02 $F8 $02 $FC $02 $FE $08 $00 $81 $01 $07 $80
	.db $02 $F0 $82 $E0 $C0 $03 $80 $91 $70 $0E $0F $07 $03 $01 $01 $09
	.db $0E $7E $F1 $E1 $C1 $83 $87 $8F $7E $03 $00 $03 $80 $02 $C0 $81
	.db $00 $03 $02 $03 $06 $81 $0E $08 $00 $81 $80 $02 $00 $04 $01 $82
	.db $02 $70 $03 $80 $03 $C0 $89 $40 $0E $09 $01 $01 $03 $07 $07 $06
	.db $10 $00 $A0 $02 $07 $07 $03 $01 $21 $71 $FE $40 $E0 $E0 $C0 $80
	.db $80 $8C $7E $06 $07 $07 $03 $01 $01 $11 $3E $7E $F1 $E1 $C1 $83
	.db $87 $8F $7F $03 $FF $86 $45 $83 $56 $EF $FB $7F $07 $FF $92 $D4
	.db $E2 $88 $53 $A4 $12 $25 $00 $FF $58 $A7 $5F $9F $5F $9F $40 $07
	.db $F8 $04 $FF $87 $1F $E3 $94 $62 $88 $F0 $FE $03 $FF $A8 $3E $85
	.db $50 $0A $01 $80 $F8 $FE $10 $4C $88 $16 $54 $AA $44 $0A $BD $6A
	.db $F4 $68 $BC $7F $BF $7F $5C $AA $17 $0E $1B $C0 $BC $C4 $7F $9F
	.db $47 $01 $FC $FF $FF $9D $04 $FF $B2 $7F $1F $87 $E3 $82 $D5 $EA
	.db $EF $F7 $FA $F9 $E7 $FF $EA $D5 $EB $D5 $A2 $C0 $A0 $D0 $68 $74
	.db $9B $8F $CB $63 $3F $DB $FD $63 $3F $FD $FF $C7 $F1 $FF $FF $CF
	.db $3F $CE $3E $FD $FD $DC $B4 $25 $49 $89 $8B $02 $0B $08 $FF $02
	.db $FC $02 $FE $04 $FF $A8 $C4 $A0 $4A $45 $0A $85 $E2 $F8 $15 $0B
	.db $06 $4B $A5 $48 $05 $AB $EF $DF $1F $E7 $6F $EC $D3 $CE $FA $FA
	.db $F6 $CC $0D $9C $29 $FA $4B $8B $4B $8B $DB $95 $1B $95 $08 $FF
	.db $82 $55 $FE $06 $FF $84 $9F $33 $CE $F5 $04 $FF $8F $B1 $62 $A5
	.db $4A $C5 $FA $FF $FF $1B $95 $2B $B1 $6A $55 $EB $09 $FF $04 $03
	.db $04 $01 $04 $FF $04 $7F $03 $3F $03 $1F $02 $0F $02 $07 $82 $03
	.db $01 $06 $00 $03 $01 $83 $03 $07 $1F $06 $00 $82 $1F $FF $04 $00
	.db $81 $01 $03 $FF $03 $00 $81 $0F $04 $FF $83 $01 $07 $7F $05 $FF
	.db $A2 $0D $12 $09 $14 $0F $1F $2E $58 $81 $EB $57 $F7 $EF $5F $9F
	.db $CF $67 $67 $27 $57 $37 $57 $37 $57 $27 $77 $27 $77 $27 $77 $27
	.db $77 $FF $FE $06 $FF $A1 $7A $AD $14 $A9 $CA $F5 $FA $FF $A8 $51
	.db $AA $55 $BF $5F $BF $FD $2D $5A $BC $EA $F4 $D1 $AF $5F $27 $77
	.db $27 $57 $27 $73 $9B $FF $EA $07 $FF $F1 $5C $AA $17 $0E $1B $C0
	.db $BD $FD $7F $9F $47 $01 $FC $FF $07 $00 $FE $F9 $E2 $80 $3F $FF
	.db $E0 $20 $DD $7D $7A $9F $8F $CB $63 $3F $05 $0B $17 $AF $F9 $FF
	.db $C7 $F1 $FF $FB $F7 $FF $F3 $F8 $FF $FD $A0 $F0 $E8 $F5 $DF $FF
	.db $E3 $8F $7F $9F $47 $01 $FC $FF $7F $0D $FE $F9 $E2 $80 $3F $FF
	.db $F9 $E1 $3A $55 $E8 $70 $D8 $03 $FD $5B $0E $0F $0F $3F $FB $FF
	.db $C7 $F1 $FF $FF $CF $3F $CE $3E $FD $FD $D1 $A0 $D1 $EA $9F $7F
	.db $B8 $8F $7F $FE $BE $F9 $F1 $83 $46 $FC $7C $03 $66 $84 $7C $60
	.db $60 $00 $06 $66 $8A $3C $00 $3C $66 $70 $3C $0E $66 $3C $00 $03
	.db $99 $81 $81 $03 $19 $8A $7F $C3 $99 $8F $C3 $F1 $99 $C3 $FF $81
	.db $06 $E7 $8A $FF $E7 $C3 $99 $99 $81 $99 $99 $FF $83 $03 $99 $8C
	.db $83 $93 $99 $FF $83 $99 $99 $83 $99 $99 $83 $FF $06 $99 $83 $C3
	.db $FF $81 $03 $E7 $03 $E6 $82 $FE $3C $05 $66 $83 $3C $00 $66 $02
	.db $76 $02 $6E $02 $66 $A1 $00 $3C $42 $98 $A0 $A0 $9A $45 $23 $81
	.db $01 $3F $03 $83 $F9 $01 $03 $01 $01 $3F $01 $01 $3F $01 $01 $81
	.db $01 $3F $21 $21 $39 $01 $83 $02 $C7 $03 $93 $85 $39 $21 $21 $E7
	.db $C7 $04 $E7 $96 $C3 $FF $C3 $99 $99 $C1 $F9 $99 $C3 $FF
	
; 3rd entry of Pointer Table from 273B4 (indexed by unknown)	
; Data from 25060 to 2586F (2064 bytes)	
_DATA_25060_:	
	.incbin "data/File20_25060_2586F.dat"
	
; 1st entry of Pointer Table from 273CC (indexed by unknown)	
; Data from 25870 to 2588E (31 bytes)	
_DATA_25870_:	
	.db $EA $F4 $00 $00 $FF $02 $04 $8E $04 $2A $08 $07 $08 $FF $A0 $F5
	.db $EA $D4 $E2 $55 $FA $FF $FF $7F $B5 $0A $01 $40 $A8 $D4 $FD
	
; 8th entry of Pointer Table from B88 (indexed by _RAM_C092_)	
; Data from 2588F to 25F9F (1809 bytes)	
_DATA_2588F_:	
	.incbin "data/File21_2588F_25F9F.dat"
	
; Data from 25FA0 to 25FC7 (40 bytes)	
_DATA_25FA0_:	
	.db $7B $08 $7C $08 $7D $08 $7E $08 $7F $08 $9C $08 $7E $0A $7D $0A
	.db $7C $0A $7B $0A $80 $08 $81 $08 $82 $08 $83 $08 $84 $08 $9D $08
	.db $83 $0A $82 $0A $81 $0A $80 $0A
	
; Data from 25FC8 to 25FEF (40 bytes)	
_DATA_25FC8_:	
	.db $7B $08 $A5 $08 $A6 $08 $7E $08 $7F $08 $9C $08 $7E $0A $A7 $08
	.db $7C $0A $7B $0A $80 $08 $A8 $08 $A9 $08 $83 $08 $84 $08 $9D $08
	.db $AA $08 $AB $08 $81 $0A $80 $0A
	
; Data from 25FF0 to 26017 (40 bytes)	
_DATA_25FF0_:	
	.db $7B $08 $7C $08 $AC $08 $7E $08 $7F $08 $9C $08 $7E $0A $AD $08
	.db $AE $08 $7B $0A $80 $08 $81 $08 $AF $08 $B0 $08 $84 $08 $9D $08
	.db $83 $0A $B1 $08 $B2 $08 $80 $0A
	
; Data from 26018 to 26039 (34 bytes)	
_DATA_26018_:	
	.db $B3 $08 $B4 $08 $B5 $08 $B6 $08 $09 $08 $B7 $08 $B8 $08 $B9 $08
	.db $BA $08 $B8 $08 $09 $08 $BB $08 $BC $08 $B8 $08 $BD $08 $BE $08
	.db $BF $08
	
; Data from 2603A to 2604F (22 bytes)	
_DATA_2603A_:	
	.db $C0 $08 $09 $08 $C1 $08 $C2 $08 $C3 $08 $C4 $08 $09 $08 $C5 $08
	.db $C6 $08 $C7 $08 $C8 $08
	
; Data from 26050 to 26071 (34 bytes)	
_DATA_26050_:	
	.db $00 $08 $00 $08 $00 $08 $93 $08 $09 $08 $09 $08 $09 $08 $09 $08
	.db $09 $08 $09 $08 $09 $08 $09 $08 $09 $08 $09 $08 $93 $0A $00 $08
	.db $00 $08
	
; Data from 26072 to 261B1 (320 bytes)	
_DATA_26072_:	
	.db $00 $00 $00 $00 $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $C6 $00 $00 $00 $C6 $00 $00 $00 $C6 $00 $00
	.db $00 $D6 $00 $00 $00 $D6 $00 $00 $00 $6C $00 $00 $00 $6C $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E $00 $00
	.db $00 $00 $00 $00 $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66
	.dsb 103, $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00 $00 $00 $00 $00 $00
	.db $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7C $00 $00 $00
	.db $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	
; Data from 261B2 to 262F1 (320 bytes)	
_DATA_261B2_:	
	.db $00 $00 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $18 $00 $00 $00 $18 $00 $00
	.db $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E
	.dsb 135, $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00 $00 $00 $00 $00 $00
	.db $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7C $00 $00 $00
	.db $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	
; Data from 262F2 to 26431 (320 bytes)	
_DATA_262F2_:	
	.db $00 $00 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $18 $00 $00 $00 $18 $00 $00
	.db $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E
	.dsb 103, $00
	.db $C6 $00 $00 $00 $EE $00 $00 $00 $FE $00 $00 $00 $D6 $00 $00 $00
	.db $C6 $00 $00 $00 $C6 $00 $00 $00 $C6 $00 $00 $00 $00 $00 $00 $00
	.db $18 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00
	.db $7E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $00 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00 $00 $18 $00 $00 $00
	.db $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	
; Data from 26432 to 26571 (320 bytes)	
_DATA_26432_:	
	.db $00 $00 $00 $00 $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $76 $00 $00
	.db $00 $6E $00 $00 $00 $6E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $60 $00 $00
	.db $00 $3C $00 $00 $00 $06 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $60 $00 $00
	.db $00 $3C $00 $00 $00 $06 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $18 $00 $00 $00 $18 $00 $00
	.db $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00
	.db $00 $00 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $7E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $60 $00 $00
	.db $00 $6E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $7E $00 $00 $00 $60 $00 $00 $00 $60 $00 $00
	.db $00 $7C $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $7E $00 $00
	
; Data from 26572 to 2669D (300 bytes)	
_DATA_26572_:	
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $60 $00 $00
	.db $00 $3C $00 $00 $00 $06 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $C6 $00 $00 $00 $C6 $00 $00 $00 $C6 $00 $00
	.db $00 $D6 $00 $00 $00 $D6 $00 $00 $00 $6C $00 $00 $00 $6C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7C
	.dsb 142, $00
	
; 12th entry of Pointer Table from B88 (indexed by _RAM_C092_)	
; Data from 2669E to 266B1 (20 bytes)	
_DATA_2669E_:	
	.dsb 20, $00
	
; Data from 266B2 to 267F1 (320 bytes)	
_DATA_266B2_:	
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $60 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $7E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $7E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $18 $00 $00 $00 $18 $00 $00
	.db $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $76 $00 $00
	.db $00 $6E $00 $00 $00 $6E $00 $00 $00 $66 $00 $00 $00 $66
	.dsb 162, $00
	
; Data from 267F2 to 26931 (320 bytes)	
_DATA_267F2_:	
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $76 $00 $00
	.db $00 $6E $00 $00 $00 $6E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $76 $00 $00
	.db $00 $6E $00 $00 $00 $6E $00 $00 $00 $66 $00 $00 $00 $66
	.dsb 19, $00
	.db $7C
	.dsb 51, $00
	.db $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $60 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00 $00 $00 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7E $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $00 $00 $00 $00
	.db $18 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00
	.db $7E $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $00 $00 $00 $00
	.db $66 $00 $00 $00 $6C $00 $00 $00 $78 $00 $00 $00 $78 $00 $00 $00
	.db $7C $00 $00 $00 $6E $00 $00 $00 $66 $00 $00 $00 $00 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00
	.db $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	
; Data from 26932 to 26A71 (320 bytes)	
_DATA_26932_:	
	.db $00 $00 $00 $00 $00 $18 $00 $00 $00 $38 $00 $00 $00 $18 $00 $00
	.db $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00
	.db $00 $00 $00 $00 $00 $3C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00
	.db $00 $66 $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C
	.dsb 39, $00
	.db $7C $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $7C $00 $00 $00
	.db $60 $00 $00 $00 $60 $00 $00 $00 $60 $00 $00 $00 $00 $00 $00 $00
	.db $7E $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00
	.db $18 $00 $00 $00 $18 $00 $00 $00 $18 $00 $00 $00 $00 $00 $00 $00
	.db $3C $00 $00 $00 $66 $00 $00 $00 $60 $00 $00 $00 $3C $00 $00 $00
	.db $06 $00 $00 $00 $66 $00 $00 $00 $3C
	.dsb 23, $00
	.db $60 $00 $00 $00 $60 $00 $00 $00 $00 $00 $00
	
; Pointer Table from 26A72 to 26A97 (19 entries, indexed by _RAM_C092_)	
_DATA_26A72_:	
	.dw _DATA_26A98_ _DATA_26AA0_ _DATA_26AA0_ _DATA_26AA8_ _DATA_26AB0_ _DATA_26AA0_ _DATA_26AE8_ _DATA_26A98_
	.dw _DATA_26AC4_ _DATA_26AD8_ _DATA_26AA0_ _DATA_26AA0_ _DATA_26AA0_ _DATA_26AA0_ _DATA_26AA0_ _DATA_26AA0_
	.dw _DATA_26AA0_ _DATA_26AE0_ _DATA_26AA0_
	
; 1st entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26A98 to 26A9F (8 bytes)	
_DATA_26A98_:	
	.db $00 $00 $30 $00 $30 $00 $30 $00
	
; 2nd entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AA0 to 26AA7 (8 bytes)	
_DATA_26AA0_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00
	
; 4th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AA8 to 26AAF (8 bytes)	
_DATA_26AA8_:	
	.db $00 $00 $60 $00 $60 $00 $60 $00
	
; 5th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AB0 to 26AC3 (20 bytes)	
_DATA_26AB0_:	
	.db $00 $00 $80 $00 $80 $00 $20 $01 $20 $01 $A8 $01 $A8 $01 $30 $02
	.db $30 $02 $30 $02
	
; 9th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AC4 to 26AD7 (20 bytes)	
_DATA_26AC4_:	
	.db $00 $00 $90 $00 $90 $00 $28 $01 $28 $01 $A8 $01 $A8 $01 $48 $02
	.db $48 $02 $48 $02
	
; 10th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AD8 to 26ADF (8 bytes)	
_DATA_26AD8_:	
	.db $00 $00 $50 $00 $50 $00 $50 $00
	
; 18th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AE0 to 26AE7 (8 bytes)	
_DATA_26AE0_:	
	.db $00 $00 $10 $00 $10 $00 $10 $00
	
; 7th entry of Pointer Table from 26A72 (indexed by _RAM_C092_)	
; Data from 26AE8 to 26AEF (8 bytes)	
_DATA_26AE8_:	
	.db $00 $00 $F0 $01 $F0 $01 $F0 $01
	
; Pointer Table from 26AF0 to 26B1B (22 entries, indexed by _RAM_C092_)	
_DATA_26AF0_:	
	.dw _DATA_26B1C_ _DATA_26B1C_ _DATA_26B3D_ _DATA_26B5E_ _DATA_26B7F_ _DATA_26B5E_ _DATA_26BA0_ _DATA_26BC1_
	.dw _DATA_26BE2_ _DATA_26C03_ _DATA_26C24_ _DATA_26C45_ _DATA_26C66_ _DATA_26C87_ _DATA_26CA8_ _DATA_26CC9_
	.dw _DATA_26CEA_ _DATA_26D0B_ _DATA_26D2C_ _DATA_26D4D_ _DATA_26D6E_ _DATA_26D8F_
	
; 1st entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26B1C to 26B3C (33 bytes)	
_DATA_26B1C_:	
	.db $10 $22 $3F $2A $00 $2F $0F $0A $06 $01 $07 $36 $20 $30 $3A $3C
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 3rd entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26B3D to 26B5D (33 bytes)	
_DATA_26B3D_:	
	.db $20 $22 $3F $2A $00 $2F $0F $0A $06 $01 $07 $36 $20 $30 $3A $3C
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $2F $0B
	.db $07
	
; 4th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26B5E to 26B7E (33 bytes)	
_DATA_26B5E_:	
	.db $10 $20 $3F $2A $28 $00 $3A $01 $02 $0F $2D $19 $03 $39 $32 $3C
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 5th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26B7F to 26B9F (33 bytes)	
_DATA_26B7F_:	
	.db $10 $20 $3F $2A $28 $00 $3A $01 $02 $03 $17 $2B $2F $0F $30 $3C
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 7th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26BA0 to 26BC0 (33 bytes)	
_DATA_26BA0_:	
	.db $20 $10 $3F $2C $2A $00 $2F $28 $14 $0A $15 $0F $03 $16 $24 $2F
	.db $0F $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $0B $0F
	.db $07
	
; 8th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26BC1 to 26BE1 (33 bytes)	
_DATA_26BC1_:	
	.db $10 $29 $3F $2D $2A $00 $3D $01 $02 $03 $17 $2B $2F $16 $26 $25
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 9th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26BE2 to 26C02 (33 bytes)	
_DATA_26BE2_:	
	.db $10 $28 $3F $3E $2A $00 $3D $01 $07 $1B $16 $0F $2F $39 $20 $25
	.db $21 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 10th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26C03 to 26C23 (33 bytes)	
_DATA_26C03_:	
	.db $10 $19 $3F $3E $2A $00 $2D $01 $07 $1B $16 $0F $2F $39 $20 $25
	.db $14 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 11th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26C24 to 26C44 (33 bytes)	
_DATA_26C24_:	
	.db $20 $29 $00 $3F $05 $25 $24 $2A $01 $06 $0A $03 $0B $2F $0F $00
	.db $00 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $07 $0B
	.db $2F
	
; 12th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26C45 to 26C65 (33 bytes)	
_DATA_26C45_:	
	.db $10 $29 $2A $08 $0C $2E $0B $0A $28 $2C $2B $01 $15 $06 $2F $26
	.db $3F $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 13th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26C66 to 26C86 (33 bytes)	
_DATA_26C66_:	
	.db $10 $16 $3F $3E $2A $00 $16 $01 $02 $0A $15 $0B $2F $39 $20 $25
	.db $21 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 14th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26C87 to 26CA7 (33 bytes)	
_DATA_26C87_:	
	.db $10 $24 $C1 $3E $2A $00 $16 $01 $14 $0A $15 $0B $2F $39 $20 $29
	.db $21 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 15th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26CA8 to 26CC8 (33 bytes)	
_DATA_26CA8_:	
	.db $20 $28 $3F $22 $2A $00 $16 $01 $26 $0A $15 $0B $2F $02 $03 $25
	.db $21 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $0B $0F
	.db $07
	
; 16th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26CC9 to 26CE9 (33 bytes)	
_DATA_26CC9_:	
	.db $10 $25 $2A $26 $09 $2E $0B $0A $28 $2C $12 $01 $15 $06 $04 $25
	.db $3F $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 17th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26CEA to 26D0A (33 bytes)	
_DATA_26CEA_:	
	.db $10 $00 $2A $08 $0D $2E $0A $09 $28 $2C $12 $01 $15 $06 $04 $26
	.db $3F $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 18th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26D0B to 26D2B (33 bytes)	
_DATA_26D0B_:	
	.db $10 $28 $3F $3E $2A $00 $16 $01 $26 $0A $15 $0B $2F $18 $03 $25
	.db $21 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $08 $04
	.db $0E
	
; 19th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26D2C to 26D4C (33 bytes)	
_DATA_26D2C_:	
	.db $20 $11 $3F $25 $2A $00 $16 $01 $14 $0A $15 $38 $2F $08 $0D $26
	.db $20 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $14 $24
	.db $28
	
; 20th entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26D4D to 26D5D (17 bytes)	
_DATA_26D4D_:	
	.db $20 $11 $3F $25 $2A $00 $16 $01 $14 $0A $15 $38 $2F $08 $0D $26
	.db $20
	
; 1st entry of Pointer Table from 2736C (indexed by unknown)	
; Data from 26D5E to 26D6D (16 bytes)	
_DATA_26D5E_:	
	.db $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $21 $36 $3A
	
; 21st entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26D6E to 26D8E (33 bytes)	
_DATA_26D6E_:	
	.db $20 $11 $3F $25 $2A $00 $16 $01 $14 $0A $15 $38 $2F $08 $0D $26
	.db $20 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $20 $25
	.db $2A
	
; 22nd entry of Pointer Table from 26AF0 (indexed by _RAM_C092_)	
; Data from 26D8F to 26DAF (33 bytes)	
_DATA_26D8F_:	
	.db $20 $11 $3F $25 $2A $00 $16 $01 $14 $0A $15 $38 $2F $08 $0D $26
	.db $20 $00 $00 $3F $05 $2A $20 $30 $2B $06 $0A $01 $0F $03 $01 $15
	.db $1A
	
; Data from 26DB0 to 26DD5 (38 bytes)	
_DATA_26DB0_:	
	.db $B8 $28 $B8 $28 $A0 $28 $B0 $28 $B0 $28 $70 $28 $A0 $28 $B8 $28
	.db $50 $60 $78 $60 $B0 $28 $B8 $28 $B0 $28 $B0 $28 $A0 $60 $B8 $28
	.db $B8 $28 $B8 $28 $A8 $28
	
; Data from 26DD6 to 26E6D (152 bytes)	
_DATA_26DD6_:	
	.db $30 $00 $00 $07 $B8 $F0 $00 $FF $00 $00 $00 $05 $B8 $F0 $00 $FF
	.db $00 $00 $00 $00 $00 $00 $0C $FF $60 $00 $00 $05 $50 $E8 $01 $FF
	.db $00 $00 $00 $00 $A0 $30 $01 $FF $00 $00 $00 $05 $70 $F0 $80 $FF
	.db $00 $00 $00 $00 $00 $00 $1E $FF $30 $00 $00 $05 $B8 $D8 $01 $FF
	.db $48 $02 $00 $02 $B8 $D8 $01 $FF $50 $00 $00 $05 $B8 $F0 $80 $FF
	.db $00 $00 $00 $00 $00 $00 $1C $FF $00 $00 $00 $05 $B8 $B8 $01 $FF
	.db $00 $00 $00 $05 $80 $F0 $00 $FF $00 $00 $00 $05 $98 $F0 $80 $FF
	.db $00 $00 $00 $00 $00 $00 $0C $FF $00 $00 $00 $05 $B8 $B8 $01 $FF
	.db $00 $00 $00 $05 $90 $DC $01 $FF $00 $00 $00 $05 $70 $E0 $81 $FF
	.db $00 $00 $00 $00 $00 $00 $04 $FF
	
; Pointer Table from 26E6E to 26E93 (19 entries, indexed by _RAM_C092_)	
_DATA_26E6E_:	
	.dw _DATA_26E9D_ _DATA_26EA6_ _DATA_26E94_ _DATA_26EAF_ _DATA_26EB8_ _DATA_26EC1_ _DATA_26E94_ _DATA_26ECA_
	.dw _DATA_26ED3_ _DATA_26EDC_ _DATA_26E94_ _DATA_26EE5_ _DATA_26EEE_ _DATA_26EF7_ _DATA_26E94_ _DATA_26F00_
	.dw _DATA_26F09_ _DATA_26F12_ _DATA_26E94_
	
; 3rd entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26E94 to 26E9C (9 bytes)	
_DATA_26E94_:	
	.dsb 9, $00
	
; 1st entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26E9D to 26EA5 (9 bytes)	
_DATA_26E9D_:	
	.db $03 $01 $01 $04 $08 $02 $01 $07 $00
	
; 2nd entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EA6 to 26EAE (9 bytes)	
_DATA_26EA6_:	
	.db $01 $04 $07 $01 $03 $00 $00 $00 $00
	
; 4th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EAF to 26EB7 (9 bytes)	
_DATA_26EAF_:	
	.db $01 $02 $05 $03 $08 $01 $00 $00 $00
	
; 5th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EB8 to 26EC0 (9 bytes)	
_DATA_26EB8_:	
	.db $05 $04 $03 $01 $01 $07 $01 $01 $02
	
; 6th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EC1 to 26EC9 (9 bytes)	
_DATA_26EC1_:	
	.db $02 $08 $00 $00 $00 $00 $00 $00 $00
	
; 8th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26ECA to 26ED2 (9 bytes)	
_DATA_26ECA_:	
	.db $01 $01 $02 $01 $01 $05 $00 $00 $00
	
; 9th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26ED3 to 26EDB (9 bytes)	
_DATA_26ED3_:	
	.db $04 $03 $07 $06 $01 $01 $02 $00 $00
	
; 10th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EDC to 26EE4 (9 bytes)	
_DATA_26EDC_:	
	.db $05 $01 $01 $03 $00 $00 $00 $00 $00
	
; 12th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EE5 to 26EED (9 bytes)	
_DATA_26EE5_:	
	.db $01 $05 $02 $06 $08 $01 $00 $00 $00
	
; 13th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EEE to 26EF6 (9 bytes)	
_DATA_26EEE_:	
	.db $03 $04 $01 $02 $01 $01 $00 $00 $00
	
; 14th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26EF7 to 26EFF (9 bytes)	
_DATA_26EF7_:	
	.db $06 $01 $03 $01 $07 $00 $00 $00 $00
	
; 16th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26F00 to 26F08 (9 bytes)	
_DATA_26F00_:	
	.db $01 $04 $08 $01 $01 $00 $00 $00 $00
	
; 17th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26F09 to 26F11 (9 bytes)	
_DATA_26F09_:	
	.db $01 $02 $01 $03 $00 $00 $00 $00 $00
	
; 18th entry of Pointer Table from 26E6E (indexed by _RAM_C092_)	
; Data from 26F12 to 26F1A (9 bytes)	
_DATA_26F12_:	
	.db $07 $01 $01 $01 $01 $00 $00 $00 $00
	
; Data from 26F1B to 26F40 (38 bytes)	
_DATA_26F1B_:	
	.db $C0 $FB $C0 $FB $C0 $FB $C0 $FB $C0 $FB $68 $FB $C0 $FB $C0 $FB
	.db $C0 $FB $C0 $FB $80 $FC $70 $FB $70 $FB $F8 $FA $C0 $FB $C0 $FB
	.db $70 $FB $C0 $FB $C0 $FB
	
; Data from 26F41 to 26F53 (19 bytes)	
_DATA_26F41_:	
	.db $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $01 $00
	.db $00 $00 $01
	
; Data from 26F54 to 26FE1 (142 bytes)	
_DATA_26F54_:	
	.dsb 9, $00
	.db $01 $01 $01 $01 $07 $07 $07 $05 $0F $0F $0D $0B $1E $1F $1B $17
	.db $3D $3F $37 $3B $6C $7F $7F $5D $B7 $FF $DD $BA $6F $FF $BA $FF
	.db $6F $FF $FF $BA $EF $FF $BA $F5 $DF $FF $F5 $AB $DF $FF $AB $F5
	.db $DF $FF $F5 $FF $DF $FF $FF $00 $00 $00 $00 $00 $7C $7C $7C $7C
	.db $B3 $FF $FF $BF $EE $FF $BF $B5 $DF $FF $F5 $EA $7F $FF $EA $57
	.db $FF $FF $57 $AB $FE $FF $AB $55 $FF $FF $55 $FB $FF $FF $FB $FD
	.db $BF $FF $FD $FF $CF $FF $FF $EF $D7 $FF $FF $F7 $CB $FF $FF $F7
	.db $CB $FF $FF $F3 $8D $FF $FF
	.dsb 13, $00
	.db $C0
	
	; Pointer Table from 26FE2 to 26FE3 (1 entries, indexed by unknown)
	.dw _RAM_C0C0_
	
	; Data from 26FE4 to 2704B (104 bytes)
	.db $C0 $20 $E0 $E0 $E0 $D0 $F0 $F0 $60 $D0 $F0 $70 $B0 $E8 $F8 $B8
	.db $F0 $68 $F8 $F8 $F8 $B4 $FC $FC $D8 $F4 $FC $FC $E8 $D4 $FC $FC
	.db $E8 $D4 $FC $FC $E8 $D4 $FC $FC $F4 $AA $FE $FE $F4 $CA $FE $FE
	.db $00 $00 $00 $00 $00 $01 $01 $01 $00 $01 $01 $01 $00 $01 $01 $01
	.db $01 $02 $03 $03 $01 $03 $03 $03 $00 $03 $03 $03 $00 $03 $03 $03
	.db $00 $03 $03 $02 $00 $03 $03 $02 $00 $01 $01 $01 $00 $01 $01 $01
	.db $00 $01 $01 $01 $00 $80 $80 $80
	
; 16th entry of Pointer Table from B88 (indexed by _RAM_C092_)	
; Data from 2704C to 270EF (164 bytes)	
_DATA_2704C_:	
	.db $80 $F8 $F8 $F8 $F8 $E7 $FE $FF
	.dsb 17, $00
	.db $F0 $F0 $F0 $30 $CF $FF $7F $CF $73 $FF $CF $F1 $BE $FF $F3 $34
	.db $DF $FF $FD $9A $6F $FF $FE $C4 $3F $FF $FE $E5 $1B $FF $FF $05
	.db $FA $FF $7F $62 $DD $FF $7F $D1 $AE $FF $FF $E1 $9E $FF $FF $7F
	.db $CC $FF $FF $7E $81 $FF $FF $00 $FF $FF $7E $01 $FF $FF $01 $3F
	.db $FF $FF $3F $3F $FE $FF $BF $1E $FD $7F $DF $00 $FF $BE $FF $00
	.db $F3 $81 $FE $08 $A8 $88 $F7 $19 $F9 $D9 $E6 $12 $D3 $53 $ED $41
	.db $BF $7F $FF $17 $FE $7F $F7 $0C $FF $BF $FF $2F $D3 $BF $FF $C3
	.db $3C $FF $FF $33 $FD $FF $FF $71 $CE $FF $7F $E1 $1E $FF $FF $E1
	.db $1E $FF $FF $C1 $3E $EF $FF $01 $EE $CF $FF
	
; 2nd entry of Pointer Table from 273B4 (indexed by unknown)	
; Data from 270F0 to 2720F (288 bytes)	
_DATA_270F0_:	
	.db $21 $EE $2F $DF $01 $DE $5F $BF $01 $3E $3F $FF $11 $6E $7F $FF
	.db $62 $DD $FF $FF $D1 $AE $FF $FF $62 $9D $FF $FF $D4 $AB $FF $FF
	.db $A0 $5F $FF $FF $F4 $AA $FE $FE $F4 $4A $FE $FE $F4 $8A $FE $FE
	.db $F0 $4C $FC $FC $E8 $94 $FC $FC $E8 $14 $FC $FC $E0 $9C $FC $FC
	.db $A0 $58 $F8 $F8 $40 $B8 $F8 $F8 $80 $70 $E0 $F0 $40 $B0 $E0 $F0
	.db $80 $70 $C0 $F0 $00 $F0 $D0 $F0 $00 $F8 $B8 $F8 $00 $BC $1C $FC
	.db $44 $DA $4E $BE $00 $0F $0F $0F $0E $3F $3F $3E $33 $5F $7F $73
	.db $2F $5F $7F $6F $68 $9F $FF $E9 $5B $BE $FF $FB $2D $DE $FF $FD
	.db $7E $87 $FF $FE $3F $C7 $FF $FF $5C $AF $FF $FC $3D $CF $FF $FD
	.db $1A $E7 $FF $FE $2B $57 $7F $7F $15 $6B $7F $7F $0C $73 $7F $7F
	.db $00 $3F $3E $3F $F4 $3B $FE $FF $78 $9F $FE $FF $7A $CD $FE $FF
	.db $AB $D4 $FF $FF $B6 $ED $FF $FF $B6 $4D $FF $FF $54 $AB $FF $FF
	.db $4D $BA $FF $FF $4B $B4 $FF $FF $8B $76 $FF $FF $16 $FD $FF $FF
	.db $16 $ED $FF $FF $25 $DB $FF $FF $2D $DB $FF $FF $4D $BB $FF $FF
	.db $19 $F7 $FF $FF $71 $CE $FB $7F $A0 $FF $FF $BF $F2 $6D $F7 $FF
	.db $11 $EE $3B $FF $E1 $FE $E3 $1F $38 $3F $39 $C7 $1C $5F $1D $E3
	.db $82 $C3 $82 $7D $81 $A1 $81 $7E $C0 $D4 $C0 $3F $40 $D4 $40 $BF
	.db $00 $62 $00 $FF $00 $77 $00 $FF $00 $8F $01 $8F $00 $41 $01 $C1
	
	; Pointer Table from 27210 to 27213 (2 entries, indexed by unknown)
	.dw _DATA_24000_ _DATA_24000_
	
	; Data from 27214 to 272B9 (166 bytes)
	.db $AE $57 $BF $FF $0F $F1 $DF $FF $97 $EB $DF $FF $8E $F1 $DF $FF
	.db $80 $7F $DF $FF $42 $BE $E2 $FD $43 $FB $F3 $FC $41 $F9 $E1 $FE
	.db $80 $F8 $F0 $FF $80 $F8 $E0 $FF $80 $F9 $F1 $FF $81 $FF $EB $FF
	.db $83 $FE $F7 $FF $83 $FE $EF $FB $47 $FD $FF $F7 $4F $FA $FF $FF
	.db $60 $9F $FE $FF $C0 $BE $FC $FF $80 $7F $F8 $FF $00 $E6 $E0 $FF
	.db $00 $85 $80 $FF $00 $0F $03 $FF $01 $06 $07 $FF $C6 $D9 $DF $3F
	.db $1D $32 $3F $FF $2A $F5 $FF $FF $F4 $CB $FF $FF $E9 $17 $FF $FF
	.db $F2 $0F $FF $FF $E5 $1E $FF $FF $DA $2D $FF $FF $B5 $5B $FF $FF
	.db $44 $5A $4E $BE $42 $7D $5F $BF $83 $FD $BF $7F $05 $7A $7F $FF
	.db $44 $BB $FE $FF $AA $55 $FE $FF $48 $B6 $FC $FF $91 $6D $F9 $FE
	.db $21 $DD $F9 $FE $43 $BB
	
	; Pointer Table from 272BA to 272BB (1 entries, indexed by unknown)
	.dw _RAM_FCF3_
	
	; Data from 272BC to 27353 (152 bytes)
	.db $83 $7B $F3 $FC $23 $D3 $E3 $FC $64 $94 $E4 $FB $8C $6C $CC $F3
	.db $1C $DD $9C $E3 $18 $D9 $98 $E7
	.dsb 9, $00
	.db $80 $80 $80 $80 $C0 $C0 $C0 $00 $F0 $30 $F0 $10 $38 $18 $F8 $88
	.db $9C $8C $7C $C0 $DF $CF $3F $C6 $DF $CF $3F $8F $97 $8F $7F $9F
	.db $A8 $9F $7F $31 $4E $3F $FF $20 $5F $3F $FF $42 $BD $7F $FF $9D
	.db $7F $FF $FD $BE $73 $FF $FE $00 $3E $38 $3F $03 $1F $1B $1C $03
	.db $0F $03 $0C $03 $1F $03 $1C $09 $1B $09 $16 $0C $1D $0C $13 $06
	.db $0E $06 $09 $00 $1C $00 $1F $01 $13 $01 $1E $04 $15 $04 $1B $02
	.db $0E $02 $0D $00 $07 $00 $07 $00 $05 $00 $07 $00 $03 $00 $03 $00
	.db $00 $00 $00 $00 $00 $00 $00
	
	; Pointer Table from 27354 to 27359 (3 entries, indexed by unknown)
	.dw _RAM_ED12_ _RAM_FF3F_ _RAM_FBC6_
	
	; Data from 2735A to 2736B (18 bytes)
	.db $CF $3F $F6 $FB $F7 $0F $66 $6B $67 $9F $0E $97 $0F $FF $1E $E5
	.db $9F $FF
	
	; Pointer Table from 2736C to 2736D (1 entries, indexed by unknown)
	.dw _DATA_26D5E_
	
	; Data from 2736E to 27383 (22 bytes)
	.db $FF $FF $5E $AD $FF $FF $5C $AB $FF $FF $3C $7B $7F $7F $3D $73
	.db $7F $7F $3D $7A $7F $7F
	
	; Pointer Table from 27384 to 27385 (1 entries, indexed by unknown)
	.dw _DATA_7F2A_
	
	; Data from 27386 to 2739B (22 bytes)
	.db $7F $6F $2A $7D $7F $6F $36 $5D $7F $77 $3C $5F $7F $7E $00 $80
	.db $80 $80 $00 $80 $80 $80
	
	; Pointer Table from 2739C to 2739F (2 entries, indexed by unknown)
	.dw _RAM_C080_ _RAM_C0C0_
	
	; Data from 273A0 to 273A7 (8 bytes)
	.db $80 $40 $C0 $C0 $00 $E0 $E0 $E0
	
	; Pointer Table from 273A8 to 273AB (2 entries, indexed by unknown)
	.dw _RAM_E000_ _RAM_E0E0_
	
	; Data from 273AC to 273B3 (8 bytes)
	.db $80 $60 $E0 $E0 $40 $B0 $F0 $70
	
	; Pointer Table from 273B4 to 273BF (6 entries, indexed by unknown)
	.dw _RAM_F080_ _DATA_270F0_ _DATA_25060_ _RAM_F0F0_ _RAM_E000_ _RAM_E0E0_
	
	; Pointer Table from 273C0 to 273C1 (1 entries, indexed by unknown)
	.dw _RAM_F000_
	
	; Data from 273C2 to 273CB (10 bytes)
	.db $F0 $30 $C0 $30 $F0 $D0 $60 $B8 $F8 $F8
	
	; Pointer Table from 273CC to 273CF (2 entries, indexed by unknown)
	.dw _DATA_25870_ _RAM_F878_
	
	; Data from 273D0 to 273E3 (20 bytes)
	.db $30 $58 $38 $F8 $4E $BD $FF $EF $9D $7A $FF $DF $3B $F5 $FF $BF
	.db $37 $E9 $FF $BF
	
	; Pointer Table from 273E4 to 273EF (6 entries, indexed by unknown)
	.dw _RAM_DB76_ _DATA_7FFF_ _RAM_F76C_ _DATA_7FFF_ _RAM_D66D_ _DATA_7FFF_
	
	; Pointer Table from 273F0 to 273F1 (1 entries, indexed by unknown)
	.dw _DATA_276E9_
	
	; Data from 273F2 to 276E8 (759 bytes)
	.db $FF $FF $0A $F5 $0F $FF $E0 $EF $E0 $1F $F0 $F0 $F0 $0F $EE $EE
	.db $EE $11 $C8 $C8 $C8 $37 $01 $01 $01 $FE $01 $F9 $01 $FE $00 $FE
	.db $00 $FF $6B $B6 $FF $FF $D4 $EB $FE $FF $A8 $DF $FE $FF $58 $B6
	.db $FC $FF $70 $AE $FC $FF $A0 $5C $F8 $FF $21 $D9 $F1 $FE $03 $F7
	.db $C3 $FC $0B $CB $0B $F4 $30 $30 $30 $CF $E0 $E0 $E0 $1F $06 $06
	.db $06 $F9 $3F $3F $3F $C0 $FF $FF $FF $00 $FF $FF $FF $00 $FE $FE
	.db $FE $01 $11 $92 $11 $EF $20 $A3 $21 $DF $70 $73 $71 $8F $60 $67
	.db $63 $9F $60 $67 $63 $9F $00 $4F $00 $FF $01 $39 $01 $FE $80 $80
	.db $80 $7F $E0 $E4 $E0 $1F $C0 $C2 $C0 $3F $38 $3B $38 $C7 $0E $8F
	.db $0E $F1 $0C $6C $0C $F3 $02 $62 $02 $FD $03 $7F $03 $FC $01 $C3
	.db $01 $FE $45 $BF $FF $FD $1C $FB $FF $FF $BE $67 $FF $FE $47 $B9
	.db $CF $FF $20 $EF $23 $DF $F8 $FB $F8 $07 $B6 $B6 $B6 $49 $07 $07
	.db $07 $F8 $03 $0B $03 $FC $00 $7C $00 $FF $04 $FA $04 $FF $18 $1F
	.db $18 $E7 $3A $3B $3A $C5 $03 $83 $03 $FC $01 $E1 $01 $FE $00 $38
	.db $00 $FF $1C $27 $3F $3E $0C $33 $3C $3F $13 $2F $3B $3C $03 $3B
	.db $33 $3C $01 $19 $11 $1E $00 $1C $10 $1F $00 $1F $18 $1F $08 $17
	.db $18 $1F $03 $0E $0F $0F $03 $0E $0F $0F $03 $06 $07 $07 $03 $06
	.db $07 $07 $03 $06 $07 $07 $01 $02 $03 $03 $01 $03 $03 $03 $00 $01
	.db $01 $01 $90 $A8 $98 $78 $80 $B8 $98 $78 $00 $78 $38 $F8 $40 $F0
	.db $70 $F0 $60 $B0 $F0 $F0 $20 $F0 $70 $F0 $20 $F0 $70 $F0 $20 $50
	.db $30 $F0 $A0 $D0 $B0 $70 $40 $60 $40 $A0 $40 $60 $40 $A0 $00 $20
	.db $00 $E0 $20 $F0 $30 $F0 $20 $D0 $F0 $F0 $A0 $50 $F0 $F0 $80 $60
	.db $E0 $E0 $94 $6B $FC $FF $54 $EB $FC $FF $5B $A4 $FF $FF $5B $E6
	.db $FF $FF $6B $D6 $FF $FF $7B $C4 $FF $FF $BD $43 $FF $FF $B5 $6B
	.db $FF $FF $36 $E9 $FF $FF $3B $D4 $FF $FF $5B $B4 $FF $FF $2D $5A
	.db $7F $7F $2E $5D $7F $7F $37 $4E $7F $7F $1B $E7 $FF $FF $4D $B3
	.db $FF $FF $3C $3D $3C $C3 $00 $C3 $00 $FF $00 $FF $C0 $FF $A0 $5F
	.db $E0 $FF $9C $63 $FC $FF $8C $73 $FC $FF $CC $33 $FC $FF $C2 $3D
	.db $FF $FF $E0 $1F $FF $FF $60 $DF $FF $FF $79 $E6 $FF $FF $BF $70
	.db $FF $FF $3F $DD $FF $FF $26 $DF $FF $FF $E9 $16 $FF $FF $F7 $C8
	.db $FF $FF $38 $38 $38 $C7 $7C $7D $7C $83 $70 $73 $70 $8F $00 $8F
	.db $03 $FF $00 $FF $0F $FF $80 $7F $FF $FF $C0 $BF $FF $FF $60 $DF
	.db $7F $FF $30 $EF $7F $BF $1C $F3 $BF $DF $1F $F8 $BF $DF $0F $FF
	.db $DF $EF $0F $FE $EF $FF $87 $7F $F7 $FF $13 $EE $FB $FF $28 $D7
	.db $FD $FF $00 $9C $08 $FF $60 $7E $6C $9F $30 $BF $3E $CF $10 $DF
	.db $96 $EF $12 $DD $97 $EF $11 $DE $97 $EF $00 $CF $87 $FF $01 $EE
	.db $C7 $FF $02 $FD $EF $FF $01 $FE $FF $FF $82 $7D $FF $FF $D5 $2A
	.db $FF $FF $AF $50 $FF $FF $FE $81 $FF $FF $FC $02 $FE $FE $F0 $0C
	.db $FC $FC $80 $60 $E0 $E0 $C0 $20 $E0 $E0 $80 $40 $C0 $C0 $80 $40
	.db $C0 $C0 $00 $80 $80 $80
	.dsb 44, $00
	.db $02 $01 $03 $03 $18 $07 $1F $1F $0C $13 $1F $1F $02 $7D $7F $7F
	.db $6C $B3 $FF $FF $A2 $DD $FF $FF $C8 $37 $FF $FF $F5 $8A $FF $FF
	.db $38 $F7 $FF $FF $0C $FB $FF $FF $C6 $3D $FF $FF $E2 $9D $FF $FF
	.db $F2 $CD $FF $FF $F9 $E6 $FF $FF $F8 $37 $FF $FF $FC $0B $FF $FF
	.db $C6 $79 $FF $FF $CB $F4 $FF $F7 $28 $F7 $FF $B7 $26 $F9 $FF $B9
	.db $13 $FC $FF $DC $8C
	
; 1st entry of Pointer Table from 273F0 (indexed by unknown)	
; Data from 276E9 to 27FFF (2327 bytes)	
_DATA_276E9_:	
	.incbin "data/File22_276E9_27FFF.dat"
	
.BANK 10	
.ORG $0000	
	
	; Data from 28000 to 2B27D (12926 bytes)
	.incbin "data/File23_28000_2B27D.dat"
	
	; Pointer Table from 2B27E to 2B27F (1 entries, indexed by unknown)
	.dw _DATA_2BF02_
	
	; Data from 2B280 to 2B284 (5 bytes)
	.db $8F $3F $7F $0E $1E
	
	; Pointer Table from 2B285 to 2B288 (2 entries, indexed by unknown)
	.dw _DATA_6337_ $64E1
	
	; Data from 2B289 to 2BF01 (3193 bytes)
	.incbin "data/File24_2B289_2BF01.dat"
	
; 1st entry of Pointer Table from 2B27E (indexed by unknown)	
; Data from 2BF02 to 2BFFF (254 bytes)	
_DATA_2BF02_:	
	.db $02 $FF $82 $00 $FE $07 $02 $10 $EE $88 $99 $98 $9C $9F $9F $80
	.db $C0 $7F $06 $FF $02 $FE $02 $FF $87 $FE $F8 $F0 $E0 $E0 $C0 $66
	.db $07 $EE $81 $66 $06 $EE $88 $88 $FF $C0 $80 $9F $9F $9C $98 $02
	.db $99 $02 $19 $02 $99 $85 $19 $39 $F9 $00 $FF $03 $00 $03 $FF $02
	.db $C0 $81 $E0 $03 $FF $82 $7F $00 $03 $01 $04 $FF $82 $00 $80 $02
	.db $00 $04 $FF $82 $00 $F9 $02 $01 $02 $F9 $83 $01 $03 $FE $06 $FF
	.db $04 $00 $04 $FF $02 $00 $08 $C0 $08 $01 $08 $D5 $08 $55 $02 $4F
	.db $86 $4C $48 $40 $40 $7F $00 $02 $F9 $02 $09 $02 $01 $83 $FF $00
	.db $FF $06 $00 $02 $FF $07 $80 $02 $00 $81 $FF $05 $D5 $02 $00 $81
	.db $FF $05 $55 $82 $00 $7F $02 $40 $04 $4F $82 $00 $FF $02 $01 $04
	.db $F9 $82 $FF $07 $06 $03 $02 $FF $81 $C0 $05 $80 $02 $FF $02 $A0
	.db $84 $BF $A0 $A0 $BF $04 $FF $02 $7F $84 $3F $00 $E6 $EE $06 $FE
	.db $00
	.dsb 61, $FF
	
.BANK 11	
.ORG $0000	
	
	; Data from 2C000 to 2F3EB (13292 bytes)
	.incbin "data/File25_2C000_2F3EB.dat"
	
	; Pointer Table from 2F3EC to 2F3F3 (4 entries, indexed by unknown)
	.dw _RAM_C003_ _RAM_C202_ _RAM_C102_ _RAM_C08A_
	
	; Data from 2F3F4 to 2FFFF (3084 bytes)
	.incbin "data/File26_2F3F4_2FFFF.dat"
	
.BANK 12	
.ORG $0000	
	
	; Data from 30000 to 331C3 (12740 bytes)
	.incbin "data/File27_30000_331C3.dat"
	
; Data from 331C4 to 33716 (1363 bytes)	
_DATA_331C4_:	
	.incbin "data/File28_331C4_33716.dat"
	
; Data from 33717 to 3373A (36 bytes)	
_DATA_33717_:	
	.db $49 $49 $49 $49 $49 $49 $49 $53 $54 $49 $49 $49 $55 $56 $57 $58
	.db $49 $49 $5C $5D $5E $5F $60 $49 $65 $66 $67 $68 $69 $49 $6E $6F
	.db $49 $70 $71 $72
	
; Data from 3373B to 33FFF (2245 bytes)	
_DATA_3373B_:	
	.db $49 $49 $73 $74 $49 $49 $49 $75 $76 $77 $49 $49 $49 $78 $79 $7A
	.db $49 $49 $49 $7B $7C $7D $49 $49 $65 $49 $7E $7F $49 $49 $6E $6F
	.db $80 $81 $49 $49
	.dsb 2209, $FF
	
.BANK 13	
.ORG $0000	
	
	; Data from 34000 to 35D00 (7425 bytes)
	.incbin "data/File29_34000_35D00.dat"
	
; 1st entry of Pointer Table from 3701D (indexed by unknown)	
; Data from 35D01 to 3701C (4892 bytes)	
_DATA_35D01_:	
	.incbin "data/File30_35D01_3701C.dat"
	
	; Pointer Table from 3701D to 3701E (1 entries, indexed by unknown)
	.dw _DATA_35D01_
	
	; Data from 3701F to 37077 (89 bytes)
	.db $01 $41 $01 $9E $01 $9F $01 $A0 $01 $42 $01 $A1 $01 $A2 $01 $A3
	.db $01 $41 $01 $A4 $01 $A5 $01 $A6 $01 $4B $01 $4A $01 $4B $01 $A7
	.db $01 $A8 $01 $A9 $01 $4B $01 $4A $01 $40 $01 $40 $01 $AA $01 $AB
	.db $01 $AC $01 $AD $01 $AE $01 $41 $01 $4E $01 $AF $01 $B0 $01 $B1
	.db $01 $B2 $01 $B3 $01 $B4 $01 $B5 $01 $B6 $01 $B7 $01 $B8 $01 $B9
	.db $01 $BA $01 $BB $01 $BC $01 $BD $01
	
; 1st entry of Pointer Table from 74C6 (indexed by unknown)	
; Data from 37078 to 3748F (1048 bytes)	
_DATA_37078_:	
	.incbin "data/File31_37078_3748F.dat"
	
; 1st entry of Pointer Table from 71C8 (indexed by unknown)	
; Data from 37490 to 374BF (48 bytes)	
_DATA_37490_:	
	.db $40 $01 $41 $01 $41 $03 $40 $03 $42 $01 $43 $01 $44 $01 $45 $01
	.db $46 $01 $47 $01 $48 $01 $49 $01 $4A $01 $4B $01 $4C $01 $4D $01
	.db $4E $01 $4F $01 $50 $01 $51 $01 $52 $01 $53 $01 $54 $01 $55 $01
	
; 3rd entry of Pointer Table from 71C8 (indexed by unknown)	
; Data from 374C0 to 374EF (48 bytes)	
_DATA_374C0_:	
	.db $56 $01 $56 $01 $57 $01 $58 $01 $56 $01 $59 $01 $5A $01 $5B $01
	.db $5C $01 $5D $01 $5E $01 $5F $01 $60 $01 $61 $01 $62 $01 $63 $01
	.db $64 $01 $65 $01 $66 $01 $67 $01 $68 $01 $69 $01 $6A $01 $6B $01
	
; 4th entry of Pointer Table from 71C8 (indexed by unknown)	
; Data from 374F0 to 3751F (48 bytes)	
_DATA_374F0_:	
	.db $6C $01 $6D $01 $6D $03 $6C $03 $6E $01 $6F $01 $6F $03 $6E $03
	.db $70 $01 $71 $01 $71 $03 $70 $03 $72 $01 $73 $01 $73 $03 $72 $03
	.db $74 $01 $75 $01 $75 $03 $74 $03 $76 $01 $53 $01 $54 $01 $55 $01
	
; 5th entry of Pointer Table from 71C8 (indexed by unknown)	
; Data from 37520 to 37FFF (2784 bytes)	
_DATA_37520_:	
	.incbin "data/File32_37520_37FFF.dat"
	
.BANK 14	
.ORG $0000	
	
	; Data from 38000 to 3B242 (12867 bytes)
	.incbin "data/File33_38000_3B242.dat"
	
	; Pointer Table from 3B243 to 3B246 (2 entries, indexed by unknown)
	.dw _DATA_513D_ _DATA_5151_
	
	; Data from 3B247 to 3B249 (3 bytes)
	.db $51 $3D $3D
	
	; Pointer Table from 3B24A to 3B24D (2 entries, indexed by unknown)
	.dw _DATA_5151_ _DATA_5151_
	
	; Data from 3B24E to 3B3F7 (426 bytes)
	.db $3D $3D $51 $51 $51 $51 $40 $41 $42 $40 $41 $42 $40 $41 $41 $42
	.db $54 $55 $5A $55 $5A $55 $5A $55 $5A $55 $5D $6A $6B $6B $38 $38
	.db $39 $3A $3D $76 $76 $76 $76 $76 $76 $76 $76 $51 $51 $51 $51 $51
	.db $51 $51
	.dsb 69, $00
	.db $4C $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F
	.db $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E
	.dsb 70, $00
	.db $50 $51 $52 $53 $51 $7B $53 $51 $7B $53 $51 $7B $53 $7E $7B $53
	.db $51 $7B $53 $51 $7B $53 $51 $7B $53 $51
	.dsb 35, $00
	.db $01 $02 $03 $00 $00 $00 $00 $00 $00 $00 $0F $10 $00 $00 $0F $10
	.dsb 19, $00
	.db $54 $55 $5A
	.dsb 10, $55
	.db $5A
	.dsb 12, $55
	.dsb 9, $00
	.db $0F $10
	.dsb 13, $00
	.db $75 $76 $77 $00 $75 $76 $77 $00 $00 $00 $0A $0B $0C $0D $25 $00
	.db $01 $02 $03 $00 $17 $18 $1F $20 $17 $18 $1F $20 $00 $01 $02 $03
	.db $00 $00 $00 $00 $00 $0F $10 $00 $00 $0F $10 $00 $00 $00 $54 $55
	.db $5A
	.dsb 10, $55
	.db $5A $55 $55 $55 $55
	
	; Pointer Table from 3B3F8 to 3B3FF (4 entries, indexed by unknown)
	.dw $5555 $5555 $5555 $5555
	
	; Data from 3B400 to 3BFFF (3072 bytes)
	.incbin "data/File34_3B400_3BFFF.dat"
	
.BANK 15	
.ORG $0000	
	
	; Data from 3C000 to 3E086 (8327 bytes)
	.incbin "data/File35_3C000_3E086.dat"
	
; Data from 3E087 to 3E386 (768 bytes)	
_DATA_3E087_:	
	.dsb 66, $01
	.db $02 $01 $02 $01 $02 $01 $03 $01 $04 $01 $05 $01 $02 $01 $01 $01
	.db $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $01 $01 $01 $01
	.db $02 $01 $02 $01 $02 $01 $0C $01 $0D $01 $0E $01 $02
	.dsb 19, $01
	.db $02 $01 $02 $01 $0F $01 $10 $01 $11 $01 $12 $01 $13
	.dsb 19, $01
	.db $02 $01 $02 $01 $14 $01 $15 $01 $16 $01 $17 $01 $18 $01 $01 $01
	.db $01 $01 $19 $01 $1A $01 $1B $01 $1C $01 $1D $01 $01 $01 $1E $01
	.db $02 $01 $02 $01 $1F $01 $20 $01 $21 $01 $22 $01 $23
	.dsb 19, $01
	.db $24 $01 $25 $01 $26 $01 $27 $01 $28 $01 $29 $01 $2A
	.dsb 19, $01
	.db $2B $01 $2C $01 $2D $01 $2E $01 $2F $01 $30 $01 $31
	.dsb 53, $01
	.db $32 $01 $33 $01 $34 $01 $35 $01 $36 $01 $37 $01 $01 $01 $32 $01
	.db $33 $01 $34 $01 $35
	.dsb 11, $01
	.db $38 $01 $39 $01 $3A $01 $3B $01 $3C $01 $3D $01 $3E $01 $3F $01
	.db $40 $01 $41 $01 $42
	.dsb 11, $01
	.db $32 $01 $33 $01 $34 $01 $35 $01 $43 $01 $44 $01 $45 $01 $01 $01
	.db $01 $01 $46 $01 $47 $01 $48
	.dsb 39, $01
	.db $49 $01 $4A $01 $4B $01 $4A $01 $4C $01 $4D $01 $4C $01 $4E $01
	.db $4E $01 $4C $01 $4F $01 $50 $01 $51 $01 $52 $01 $01 $01 $01 $01
	.db $53 $01 $54 $01 $55 $01 $56 $01 $57 $01 $58 $01 $59 $01 $5A $01
	.db $5A $01 $58 $01 $5B $01 $5C $01 $5D $01 $5E $01 $01 $01 $01 $01
	.db $5F $01 $60 $01 $61 $01 $62 $01 $63 $01 $64 $01 $65 $01 $66 $01
	.db $64 $01 $67 $01 $68 $01 $5A $01 $69 $01 $6A $01 $01 $01 $6B $01
	.db $6C $01 $6D $01 $6E $01 $6F $01 $70 $01 $71 $01 $72 $01 $73 $01
	.db $74 $01 $74 $01 $75 $01 $76 $01 $77 $01 $5E $01 $01 $01 $01 $01
	.db $78 $01 $79 $01 $7A $01 $7B $01 $7C $01 $58 $01 $5A $01 $5A $01
	.db $7D $01 $58 $01 $7E $01 $7F $01 $56 $01 $80 $01 $01 $01 $01 $01
	.db $81 $01 $82 $01 $83 $01 $84 $01 $85 $01 $86 $01 $85 $01 $87 $01
	.db $88 $01 $55 $01 $89 $01 $8A $01 $8B $01 $8C $01 $01 $01 $01 $01
	.db $8D $01 $8E $01 $8F $01 $90 $01 $5A $01 $55 $01 $5A $01 $91 $01
	.db $92 $01 $66 $01 $93 $01 $5A $01 $56 $01 $80 $01 $01 $01 $01 $01
	.db $94 $01 $95 $01 $96 $01 $97 $01 $98 $01 $99 $01 $9A $01 $9B $01
	.db $9C $01 $98 $01 $9D $01 $9E $01 $9F $01 $A0
	.dsb 67, $01
	
; Data from 3E387 to 3E686 (768 bytes)	
_DATA_3E387_:	
	.dsb 66, $01
	.db $02 $01 $03 $01 $04 $01 $05 $01 $06 $01 $07 $01 $08 $01 $01 $01
	.db $09 $01 $0A $01 $0B $01 $0C $01 $0D $01 $0E $01 $01 $01 $01 $01
	.db $0F $01 $10 $01 $11 $01 $12 $01 $13 $01 $14 $01 $15
	.dsb 19, $01
	.db $15 $03 $16 $01 $17 $01 $18 $01 $19 $01 $1A $01 $1B
	.dsb 19, $01
	.db $1C $01 $1D $01 $1E $01 $1F $01 $20 $01 $21 $01 $22 $01 $01 $01
	.db $01 $01 $23 $01 $24 $01 $25 $01 $26 $01 $01 $01 $01 $01 $27 $01
	.db $28 $01 $29 $01 $2A $01 $2B $01 $2C $01 $2D $01 $15 $01 $01 $01
	.db $01 $01 $2E $01 $2F $01 $30 $01 $31 $01 $32 $01 $01 $01 $01 $01
	.db $33 $01 $34 $01 $35 $01 $36 $01 $37 $01 $38 $01 $15
	.dsb 19, $01
	.db $39 $01 $3A $01 $3B $01 $3C $01 $04 $05 $04 $05 $3D
	.dsb 53, $01
	.db $3E $01 $3F $01 $40 $01 $41 $01 $42 $01 $43 $01 $01 $01 $3E $01
	.db $3F $01 $40 $01 $41
	.dsb 11, $01
	.db $44 $01 $45 $01 $46 $01 $47 $01 $48 $01 $49 $01 $4A $01 $4B $01
	.db $4C $01 $4D $01 $4E
	.dsb 11, $01
	.db $3E $01 $3F $01 $40 $01 $41 $01 $4F $01 $50 $01 $51 $01 $01 $01
	.db $01 $01 $52 $01 $53 $01 $54
	.dsb 39, $01
	.db $55 $01 $56 $01 $57 $01 $57 $01 $57 $01 $57 $01 $56 $01 $57 $01
	.db $57 $01 $57 $01 $57 $01 $57 $01 $57 $01 $58 $01 $01 $01 $01 $01
	.db $59 $01 $5A $01 $5A $01 $5A $01 $5A $01 $5A $01 $5A $01 $5A $01
	.db $5A $01 $5A $01 $5A $01 $5A $01 $5A $01 $5B $01 $01 $01 $01 $01
	.db $5C $01 $5D $01 $5E $01 $5F $01 $5F $01 $60 $01 $61 $01 $62 $01
	.db $62 $01 $62 $01 $62 $01 $63 $01 $63 $01 $64 $01 $01 $01 $65 $01
	.db $66 $01 $67 $01 $68 $01 $69 $01 $6A $01 $6B $01 $6C $01 $62 $01
	.db $62 $01 $62 $01 $62 $01 $63 $01 $63 $01 $6D $01 $01 $01 $01 $01
	.db $6E $01 $6F $01 $70 $01 $71 $01 $63 $01 $63 $01 $63 $01 $63 $01
	.db $72 $01 $63 $01 $72 $01 $63 $01 $63 $01 $6D $01 $01 $01 $01 $01
	.db $73 $01 $74 $01 $75 $01 $76 $01 $77 $01 $5A $01 $5A $01 $5A $01
	.db $78 $01 $5A $01 $78 $01 $5A $01 $5A $01 $79 $01 $01 $01 $01 $01
	.db $6E $01 $6F $01 $63 $01 $6F $01 $7A $01 $62 $01 $62 $01 $62 $01
	.db $62 $01 $62 $01 $62 $01 $62 $01 $62 $01 $7B $01 $01 $01 $01 $01
	.db $58 $07 $56 $05 $56 $05 $56 $05 $7C $01 $7D $01 $7D $01 $7D $01
	.db $7D $01 $7D $01 $7D $01 $7D $01 $7D $01 $7E
	.dsb 67, $01
	
; Data from 3E687 to 3E986 (768 bytes)	
_DATA_3E687_:	
	.dsb 66, $01
	.db $02 $01 $03 $01 $04 $01 $05 $01 $04 $03 $03 $03 $02 $03 $01 $01
	.db $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $0C $01 $01 $01
	.db $0D $01 $0E $01 $0F $01 $10 $01 $0F $03 $0E $03 $0D $03
	.dsb 18, $01
	.db $11 $01 $12 $01 $13 $01 $14 $01 $13 $03 $12 $03 $11 $03
	.dsb 18, $01
	.db $15 $01 $16 $01 $17 $01 $18 $01 $17 $03 $19 $01 $15 $03 $01 $01
	.db $01 $01 $1A $01 $1B $01 $1C $01 $1D $01 $1E $01 $1F $01 $20 $01
	.db $21 $01 $22 $01 $23 $01 $24 $01 $23 $03 $25 $01 $26
	.dsb 19, $01
	.db $27 $01 $28 $01 $29 $01 $2A $01 $2B $01 $2C $01 $2D
	.dsb 19, $01
	.db $2E $01 $2F $01 $30 $01 $31 $01 $32 $01 $33 $01 $34
	.dsb 53, $01
	.db $35 $01 $36 $01 $37 $01 $38 $01 $39 $01 $3A $01 $01 $01 $35 $01
	.db $36 $01 $37 $01 $38
	.dsb 11, $01
	.db $3B $01 $3C $01 $3D $01 $3E $01 $3F $01 $1F $03 $40 $01 $41 $01
	.db $42 $01 $43 $01 $44
	.dsb 11, $01
	.db $35 $01 $36 $01 $37 $01 $38 $01 $45 $01 $46 $01 $47 $01 $01 $01
	.db $01 $01 $48 $01 $49 $01 $4A
	.dsb 39, $01
	.db $4B $01 $4C $01 $4C $01 $4C $01 $4C $01 $4C $01 $4C $01 $4C $01
	.db $4C $01 $4D $01 $4C $01 $4C $01 $4C $01 $4B $03 $01 $01 $01 $01
	.db $4E $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $4F $01
	.db $50 $01 $51 $01 $52 $01 $53 $01 $54 $01 $55 $01 $01 $01 $01 $01
	.db $56 $01 $57 $01 $58 $01 $59 $01 $5A $01 $5B $01 $5C $01 $5D $01
	.db $5E $01 $5F $01 $60 $01 $61 $01 $62 $01 $63 $01 $01 $01 $64 $01
	.db $0D $01 $65 $01 $66 $01 $67 $01 $68 $01 $69 $01 $6A $01 $5D $01
	.db $5D $01 $6B $01 $5D $01 $6C $01 $5D $01 $6D $01 $01 $01 $01 $01
	.db $6E $01 $6F $01 $70 $01 $71 $01 $72 $01 $73 $01 $74 $01 $75 $01
	.db $76 $01 $5D $01 $5D $01 $5D $01 $5D $01 $6D $01 $01 $01 $01 $01
	.db $77 $01 $78 $01 $78 $01 $78 $01 $78 $01 $79 $01 $7A $01 $7B $01
	.db $7C $01 $7D $01 $7E $01 $7F $01 $80 $01 $81 $01 $01 $01 $01 $01
	.db $82 $01 $83 $01 $83 $01 $83 $01 $83 $01 $84 $01 $85 $01 $86 $01
	.db $87 $01 $88 $01 $89 $01 $8A $01 $8B $01 $8C $01 $01 $01 $01 $01
	.db $8D $01 $8E $01 $8E $01 $8E $01 $8E $01 $8F $01 $90 $01 $91 $01
	.db $92 $01 $93 $01 $94 $01 $95 $01 $96 $01 $97
	.dsb 67, $01
	
; Data from 3E987 to 3EC86 (768 bytes)	
_DATA_3E987_:	
	.dsb 66, $01
	.db $02 $01 $02 $01 $02 $01 $03 $01 $04 $01 $05 $01 $02 $01 $01 $01
	.db $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $01 $01 $01 $01
	.db $02 $01 $02 $01 $02 $01 $02 $01 $0C $01 $0D $01 $02
	.dsb 19, $01
	.db $02 $01 $02 $01 $02 $01 $0E $01 $0F $01 $10 $01 $02
	.dsb 19, $01
	.db $02 $01 $02 $01 $11 $01 $12 $01 $13 $01 $14 $01 $02 $01 $01 $01
	.db $01 $01 $15 $01 $16 $01 $17 $01 $18 $01 $19 $01 $1A $01 $1B $01
	.db $02 $01 $1C $01 $1D $01 $1E $01 $1F $01 $20 $01 $02
	.dsb 19, $01
	.db $02 $01 $21 $01 $22 $01 $23 $01 $24 $01 $25 $01 $02
	.dsb 19, $01
	.db $02 $01 $26 $01 $27 $01 $28 $01 $29 $01 $2A $01 $02
	.dsb 53, $01
	.db $2B $01 $2C $01 $2D $01 $2E $01 $2F $01 $30 $01 $01 $01 $2B $01
	.db $2C $01 $2D $01 $2E
	.dsb 11, $01
	.db $31 $01 $32 $01 $33 $01 $34 $01 $35 $01 $36 $01 $37 $01 $38 $01
	.db $39 $01 $3A $01 $3B
	.dsb 11, $01
	.db $2B $01 $2C $01 $2D $01 $2E $01 $3C $01 $3D $01 $3E $01 $01 $01
	.db $01 $01 $3F $01 $40 $01 $41
	.dsb 39, $01
	.db $42 $01 $43 $01 $44 $01 $43 $01 $43 $01 $43 $01 $43 $01 $43 $01
	.db $44 $01 $43 $01 $43 $01 $43 $01 $43 $01 $42 $03 $01 $01 $01 $01
	.db $45 $01 $46 $01 $47 $01 $47 $01 $47 $01 $47 $01 $47 $01 $47 $01
	.db $47 $01 $47 $01 $47 $01 $46 $01 $47 $01 $45 $03 $01 $01 $01 $01
	.db $45 $01 $47 $01 $47 $01 $47 $01 $46 $01 $47 $01 $47 $01 $47 $01
	.db $47 $01 $47 $01 $46 $01 $48 $01 $49 $01 $4A $01 $01 $01 $4B $01
	.db $4C $01 $4D $01 $4E $01 $4F $01 $50 $01 $51 $01 $52 $01 $53 $01
	.db $54 $01 $55 $01 $56 $01 $57 $01 $58 $01 $59 $01 $01 $01 $01 $01
	.db $5A $01 $5B $01 $5C $01 $5D $01 $5E $01 $5F $01 $60 $01 $61 $01
	.db $62 $01 $63 $01 $64 $01 $65 $01 $66 $01 $67 $01 $68 $01 $01 $01
	.db $02 $01 $02 $01 $02 $01 $02 $01 $02 $01 $69 $01 $6A $01 $6B $01
	.db $6C $01 $6D $01 $6E $01 $02 $01 $02 $01 $02 $01 $01 $01 $01 $01
	.db $02 $01 $02 $01 $02 $01 $02 $01 $02 $01 $6F $01 $6A $01 $6B $01
	.db $70 $01 $6D $01 $6E $01 $02 $01 $02 $01 $02 $01 $01 $01 $01 $01
	.db $02 $01 $02 $01 $02 $01 $02 $01 $02 $01 $71 $01 $72 $01 $73 $01
	.db $74 $01 $75 $01 $76 $01 $02 $01 $02 $01 $02
	.dsb 67, $01
	
; Data from 3EC87 to 3EF87 (769 bytes)	
_DATA_3EC87_:	
	.dsb 66, $01
	.db $02 $01 $03 $01 $03 $01 $04 $01 $03 $01 $03 $01 $02 $03 $01 $01
	.db $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $01 $01
	.db $0C $01 $0D $01 $0E $01 $0F $01 $0D $01 $0D $01 $10
	.dsb 19, $01
	.db $11 $01 $12 $01 $13 $01 $14 $01 $15 $01 $0D $01 $10
	.dsb 19, $01
	.db $10 $03 $16 $01 $17 $01 $18 $01 $19 $01 $1A $01 $10 $01 $01 $01
	.db $01 $01 $1B $01 $1C $01 $1D $01 $1E $01 $1F $01 $01 $01 $20 $01
	.db $10 $03 $21 $01 $22 $01 $23 $01 $24 $01 $25 $01 $10
	.dsb 9, $01
	.db $26 $01 $27 $01 $28 $01 $01 $01 $01 $01 $10 $03 $29 $01 $2A $01
	.db $2B $01 $2C $01 $2D $01 $2E
	.dsb 19, $01
	.db $02 $05 $03 $05 $2F $01 $30 $01 $31 $01 $32 $01 $32
	.dsb 53, $01
	.db $33 $01 $34 $01 $35 $01 $36 $01 $37 $01 $38 $01 $01 $01 $33 $01
	.db $34 $01 $35 $01 $36
	.dsb 11, $01
	.db $39 $01 $3A $01 $3B $01 $3C $01 $3D $01 $3E $01 $3F $01 $40 $01
	.db $41 $01 $42 $01 $43
	.dsb 11, $01
	.db $33 $01 $34 $01 $35 $01 $36 $01 $44 $01 $45 $01 $46 $01 $01 $01
	.db $01 $01 $47 $01 $48 $01 $49
	.dsb 39, $01
	.db $4A $01 $4B $01 $4C $01 $4D $01 $4E $01 $4D $01 $4E $01 $4D $01
	.db $4E $01 $4D $01 $4E $01 $4D $01 $4E $01 $4F $01 $01 $01 $01 $01
	.db $50 $01 $51 $01 $52 $01 $53 $01 $54 $01 $53 $01 $54 $01 $53 $01
	.db $54 $01 $55 $01 $55 $01 $55 $01 $55 $01 $56 $01 $01 $01 $01 $01
	.db $50 $01 $57 $01 $58 $01 $54 $01 $59 $01 $54 $01 $59 $01 $54 $01
	.db $59 $01 $5A $01 $5A $01 $5A $01 $5A $01 $5B $01 $01 $01 $5C $01
	.db $50 $01 $51 $01 $52 $01 $53 $01 $54 $01 $53 $01 $54 $01 $53 $01
	.db $54 $01 $5D $01 $5D $01 $5D $01 $5D $01 $5E $01 $01 $01 $01 $01
	.db $5F $01 $60 $01 $58 $01 $54 $01 $59 $01 $54 $01 $59 $01 $61 $01
	.db $62 $01 $63 $01 $64 $01 $65 $01 $66 $01 $67 $01 $01 $01 $01 $01
	.db $68 $01 $60 $01 $69 $01 $6A $01 $6B $01 $6A $01 $6B $01 $6C $01
	.db $6D $01 $6E $01 $6F $01 $70 $01 $71 $01 $72 $01 $01 $01 $01 $01
	.db $73 $01 $57 $01 $74 $01 $75 $01 $75 $01 $75 $01 $75 $01 $76 $01
	.db $77 $01 $78 $01 $79 $01 $7A $01 $7B $01 $7C $01 $01 $01 $01 $01
	.db $4A $05 $7D $01 $7E $01 $7F $01 $80 $01 $7F $01 $80 $01 $81 $01
	.db $82 $01 $83 $01 $82 $01 $84 $01 $85 $01 $86
	.dsb 67, $01
	.db $FF
	
; Pointer Table from 3EF88 to 3EFAD (19 entries, indexed by _RAM_C092_)	
_DATA_3EF88_:	
	.dw _DATA_3EFAE_ _DATA_3EFD7_ _DATA_3F27A_ _DATA_3F012_ _DATA_3F046_ _DATA_3F085_ _DATA_3F282_ _DATA_3F0AE_
	.dw _DATA_3F0F0_ _DATA_3F12B_ _DATA_3F298_ _DATA_3F154_ _DATA_3F184_ _DATA_3F1BE_ _DATA_3F2A0_ _DATA_3F1E3_
	.dw _DATA_3F20C_ _DATA_3F23F_ _DATA_3F2AF_
	
; 1st entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3EFAE to 3EFD6 (41 bytes)	
_DATA_3EFAE_:	
	.db $04 $07 $C0 $07 $18 $82 $C0 $01 $C0 $07 $80 $09 $07 $C0 $06 $34
	.db $83 $80 $00 $C0 $06 $40 $07 $07 $40 $0B $5E $83 $00 $03 $40 $0B
	.db $40 $0E $07 $40 $11 $5C $85 $00 $00
	
; 2nd entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3EFD7 to 3F011 (59 bytes)	
_DATA_3EFD7_:	
	.db $06 $07 $40 $0B $EE $80 $40 $02 $40 $0B $80 $0D $07 $C0 $07 $18
	.db $82 $C0 $01 $C0 $07 $80 $09 $07 $C0 $06 $34 $83 $80 $00 $C0 $06
	.db $40 $07 $07 $C0 $0F $5E $83 $00 $03 $C0 $0F $C0 $12 $07 $C0 $15
	.db $5C $85 $00 $00 $07 $40 $1B $82 $8A $00 $00
	
; 4th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F012 to 3F045 (52 bytes)	
_DATA_3F012_:	
	.db $05 $07 $40 $0B $00 $80 $C0 $01 $40 $0B $00 $0D $07 $C0 $07 $18
	.db $82 $C0 $01 $C0 $07 $80 $09 $07 $C0 $06 $34 $83 $80 $00 $C0 $06
	.db $40 $07 $07 $C0 $0E $5C $85 $00 $00 $07 $40 $14 $9A $8D $80 $02
	.db $40 $14 $C0 $16
	
; 5th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F046 to 3F084 (63 bytes)	
_DATA_3F046_:	
	.db $06 $07 $80 $09 $00 $80 $C0 $01 $80 $09 $80 $09 $07 $C0 $07 $18
	.db $82 $00 $00 $07 $C0 $06 $34 $83 $80 $00 $C0 $06 $40 $07 $07 $40
	.db $10 $5C $85 $80 $04 $40 $11 $C0 $15 $07 $40 $0B $9A $8D $80 $02
	.db $40 $0B $C0 $0D $07 $40 $1A $CF $99 $80 $02 $40 $1A $C0 $1C
	
; 6th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F085 to 3F0AD (41 bytes)	
_DATA_3F085_:	
	.db $04 $07 $C0 $07 $EE $80 $40 $02 $C0 $07 $00 $0A $07 $C0 $06 $34
	.db $83 $80 $00 $C0 $06 $40 $07 $07 $40 $0C $5C $85 $00 $00 $07 $C0
	.db $11 $C9 $88 $00 $03 $C0 $11 $C0 $14
	
; 8th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F0AE to 3F0EF (66 bytes)	
_DATA_3F0AE_:	
	.db $07 $07 $40 $0B $00 $80 $C0 $01 $40 $0B $00 $0D $07 $C0 $07 $18
	.db $82 $C0 $01 $C0 $07 $80 $09 $07 $C0 $06 $34 $83 $80 $00 $C0 $06
	.db $40 $07 $07 $C0 $0E $5C $85 $00 $00 $07 $40 $14 $3B $8F $00 $00
	.db $07 $C0 $17 $CF $99 $80 $02 $C0 $17 $40 $1A $07 $C0 $1C $D4 $9E
	.db $00 $00
	
; 9th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F0F0 to 3F12A (59 bytes)	
_DATA_3F0F0_:	
	.db $06 $07 $80 $09 $00 $80 $00 $00 $07 $C0 $07 $18 $82 $C0 $01 $C0
	.db $07 $C0 $07 $07 $C0 $06 $34 $83 $00 $01 $C0 $06 $40 $07 $07 $40
	.db $0B $5C $85 $80 $04 $40 $0C $C0 $10 $07 $C0 $18 $82 $8A $00 $00
	.db $07 $40 $15 $3B $8F $40 $03 $80 $15 $80 $15
	
; 10th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F12B to 3F153 (41 bytes)	
_DATA_3F12B_:	
	.db $04 $07 $C0 $06 $5C $85 $80 $04 $C0 $07 $40 $0C $07 $C0 $17 $CF
	.db $99 $80 $02 $C0 $17 $40 $1A $07 $C0 $10 $0A $9C $80 $03 $C0 $10
	.db $40 $14 $07 $C0 $1C $D4 $9E $00 $00
	
; 12th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F154 to 3F183 (48 bytes)	
_DATA_3F154_:	
	.db $05 $07 $C0 $06 $5C $85 $00 $00 $07 $40 $11 $F4 $91 $C0 $02 $C0
	.db $11 $80 $14 $07 $40 $0C $57 $95 $80 $02 $40 $0C $C0 $0E $07 $40
	.db $17 $CF $99 $80 $02 $40 $17 $C0 $19 $07 $40 $1C $D4 $9E $00 $00
	
; 13th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F184 to 3F1BD (58 bytes)	
_DATA_3F184_:	
	.db $07 $07 $80 $0E $00 $80 $00 $00 $07 $C0 $0C $18 $82 $00 $00 $07
	.db $40 $0C $34 $83 $00 $00 $07 $C0 $06 $5C $85 $00 $00 $07 $40 $10
	.db $57 $95 $80 $02 $40 $10 $C0 $12 $07 $40 $15 $0A $9C $80 $03 $40
	.db $15 $C0 $18 $07 $40 $1C $D4 $9E $00 $00
	
; 14th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F1BE to 3F1E2 (37 bytes)	
_DATA_3F1BE_:	
	.db $04 $07 $C0 $06 $5C $85 $00 $00 $07 $40 $0C $53 $94 $40 $01 $40
	.db $0C $80 $0D $07 $C0 $0E $57 $95 $80 $02 $C0 $0E $40 $11 $07 $C0
	.db $13 $D4 $9E $00 $00
	
; 16th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F1E3 to 3F20B (41 bytes)	
_DATA_3F1E3_:	
	.db $04 $07 $C0 $06 $5C $85 $00 $00 $07 $40 $0C $F4 $91 $C0 $02 $C0
	.db $0C $80 $0F $07 $40 $19 $CF $99 $80 $02 $40 $19 $C0 $1B $07 $40
	.db $12 $0A $9C $80 $03 $40 $12 $C0 $15
	
; 17th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F20C to 3F23E (51 bytes)	
_DATA_3F20C_:	
	.db $06 $07 $C0 $06 $5C $85 $00 $00 $07 $40 $0C $F4 $91 $C0 $02 $C0
	.db $0C $80 $0F $07 $40 $12 $CF $99 $80 $02 $40 $12 $C0 $14 $07 $40
	.db $17 $D4 $9E $00 $00 $07 $80 $1A $D5 $A1 $00 $00 $07 $80 $1D $1C
	.db $A4 $00 $00
	
; 18th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F23F to 3F279 (59 bytes)	
_DATA_3F23F_:	
	.db $06 $07 $C0 $0C $EE $80 $40 $02 $C0 $0C $C0 $0C $07 $40 $0C $34
	.db $83 $80 $00 $40 $0C $40 $0C $07 $C0 $06 $5C $85 $00 $00 $07 $00
	.db $0F $F4 $91 $00 $00 $07 $40 $12 $73 $97 $00 $04 $40 $12 $40 $16
	.db $07 $40 $1A $CF $99 $80 $02 $40 $1A $C0 $1C
	
; 3rd entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F27A to 3F281 (8 bytes)	
_DATA_3F27A_:	
	.db $01 $07 $C0 $06 $42 $A4 $00 $00
	
; 7th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F282 to 3F297 (22 bytes)	
_DATA_3F282_:	
	.db $03 $07 $C0 $06 $75 $A7 $00 $00 $0F $00 $10 $40 $9E $00 $00 $07
	.db $C0 $1C $D4 $9E $00 $00
	
; 11th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F298 to 3F29F (8 bytes)	
_DATA_3F298_:	
	.db $01 $07 $C0 $06 $68 $A9 $00 $00
	
; 15th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F2A0 to 3F2AE (15 bytes)	
_DATA_3F2A0_:	
	.db $02 $07 $C0 $06 $BD $AC $00 $00 $07 $80 $1D $DB $BE $00 $00
	
; 19th entry of Pointer Table from 3EF88 (indexed by _RAM_C092_)	
; Data from 3F2AF to 3F2B6 (8 bytes)	
_DATA_3F2AF_:	
	.db $01 $08 $C0 $06 $45 $8E $00 $00
	
; Data from 3F2B7 to 3F2EF (57 bytes)	
_DATA_3F2B7_:	
	.db $0A $00 $80 $0A $0F $87 $0C $00 $80 $0A $E0 $8E $0A $21 $94 $0A
	.db $D4 $99 $0C $8A $8E $0A $67 $9D $0A $66 $AB $0A $3B $B5 $0C $70
	.db $98 $0B $00 $80 $0B $A6 $8C $0B $C1 $95 $0C $C5 $9F $0B $AA $9E
	.db $0B $65 $AB $0B $4F $B7 $0C $72 $A9
	
; Pointer Table from 3F2F0 to 3F315 (19 entries, indexed by _RAM_C092_)	
_DATA_3F2F0_:	
	.dw _DATA_3F316_ _DATA_3F322_ _DATA_3F3BE_ _DATA_3F32E_ _DATA_3F33A_ _DATA_3F346_ _DATA_3F3CA_ _DATA_3F352_
	.dw _DATA_3F35E_ _DATA_3F36A_ _DATA_3F3D6_ _DATA_3F376_ _DATA_3F382_ _DATA_3F38E_ _DATA_3F3E2_ _DATA_3F39A_
	.dw _DATA_3F3A6_ _DATA_3F3B2_ _DATA_3F3EE_
	
; 1st entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F316 to 3F321 (12 bytes)	
_DATA_3F316_:	
	.db $30 $00 $01 $80 $00 $07 $0E $00 $80 $0D $00 $80
	
; 2nd entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F322 to 3F32D (12 bytes)	
_DATA_3F322_:	
	.db $00 $00 $00 $60 $00 $05 $0E $00 $87 $0D $70 $83
	
; 4th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F32E to 3F339 (12 bytes)	
_DATA_3F32E_:	
	.db $60 $00 $01 $60 $00 $05 $0E $20 $8B $0D $58 $85
	
; 5th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F33A to 3F345 (12 bytes)	
_DATA_3F33A_:	
	.db $30 $02 $04 $30 $00 $02 $0E $80 $91 $0D $10 $8A
	
; 6th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F346 to 3F351 (12 bytes)	
_DATA_3F346_:	
	.db $00 $00 $00 $60 $00 $05 $0E $20 $9A $0D $D0 $8F
	
; 8th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F352 to 3F35D (12 bytes)	
_DATA_3F352_:	
	.db $30 $00 $01 $60 $00 $05 $0E $40 $9E $0D $50 $92
	
; 9th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F35E to 3F369 (12 bytes)	
_DATA_3F35E_:	
	.db $00 $00 $00 $30 $00 $02 $0E $80 $A3 $0D $88 $94
	
; 10th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F36A to 3F375 (12 bytes)	
_DATA_3F36A_:	
	.db $50 $00 $01 $60 $00 $05 $0E $80 $AC $0D $F0 $97
	
; 12th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F376 to 3F381 (12 bytes)	
_DATA_3F376_:	
	.db $00 $00 $00 $60 $00 $05 $0E $80 $B2 $0D $08 $9C
	
; 13th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F382 to 3F38D (12 bytes)	
_DATA_3F382_:	
	.db $00 $00 $00 $60 $00 $05 $0E $A0 $B6 $0D $00 $A0
	
; 14th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F38E to 3F399 (12 bytes)	
_DATA_3F38E_:	
	.db $00 $00 $00 $60 $00 $05 $0E $C0 $BA $0D $18 $A3
	
; 16th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F39A to 3F3A5 (12 bytes)	
_DATA_3F39A_:	
	.db $00 $00 $01 $60 $00 $05 $0F $00 $80 $0D $58 $A6
	
; 17th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3A6 to 3F3B1 (12 bytes)	
_DATA_3F3A6_:	
	.db $00 $00 $00 $60 $00 $05 $0F $20 $84 $0D $08 $A9
	
; 18th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3B2 to 3F3BD (12 bytes)	
_DATA_3F3B2_:	
	.db $10 $00 $01 $60 $00 $05 $0F $40 $88 $0D $C0 $AB
	
; 3rd entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3BE to 3F3C9 (12 bytes)	
_DATA_3F3BE_:	
	.db $00 $00 $00 $10 $00 $00 $0F $C0 $8C $0D $E0 $AD
	
; 7th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3CA to 3F3D5 (12 bytes)	
_DATA_3F3CA_:	
	.db $B0 $00 $00 $40 $00 $03 $0F $70 $8D $0D $80 $B1
	
; 11th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3D6 to 3F3DF (10 bytes)	
_DATA_3F3D6_:	
	.db $00 $00 $00 $20 $00 $01 $0F $70 $99 $0D
	
	; Pointer Table from 3F3E0 to 3F3E1 (1 entries, indexed by unknown)
	.dw _DATA_3F438_
	
; 15th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3E2 to 3F3ED (12 bytes)	
_DATA_3F3E2_:	
	.db $00 $00 $00 $20 $00 $01 $0F $D0 $9A $0D $50 $B5
	
; 19th entry of Pointer Table from 3F2F0 (indexed by _RAM_C092_)	
; Data from 3F3EE to 3F437 (74 bytes)	
_DATA_3F3EE_:	
	.db $00 $00 $00 $20 $00 $01 $0F $30 $9C $0D $C8 $B7
	.dsb 62, $FF
	
; 1st entry of Pointer Table from 3F3E0 (indexed by unknown)	
; Data from 3F438 to 3FFFF (3016 bytes)	
_DATA_3F438_:	
	.dsb 3016, $FF
	
