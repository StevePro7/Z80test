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
_RAM_C002_ db	
_RAM_C003_ dsb $3	
_RAM_C006_ db	
_RAM_C007_ dsb $3	
_RAM_C00A_ dw	
.ende	
	
.enum $C027 export	
_RAM_C027_ dsb $9	
.ende	
	
.enum $C047 export	
_RAM_C047_ db	
.ende	
	
.enum $C067 export	
_RAM_C067_ db	
.ende	
	
.enum $C087 export	
_RAM_C087_ dsb $9	
.ende	
	
.enum $C0A7 export	
_RAM_C0A7_ dsb $9	
.ende	
	
.enum $C0C7 export	
_RAM_C0C7_ dsb $9	
.ende	
	
.enum $C100 export	
_RAM_C100_ db	
_RAM_C101_ db	
_RAM_C102_ db	
.ende	
	
.enum $C104 export	
_RAM_C104_ db	
_RAM_C105_ db	
_RAM_C106_ db	
_RAM_C107_ db	
_RAM_C108_ db	
_RAM_C109_ db	
_RAM_C10A_ db	
_RAM_C10B_ db	
_RAM_C10C_ dw	
_RAM_C10E_ dw	
_RAM_C110_ db	
_RAM_C111_ db	
_RAM_C112_ db	
_RAM_C113_ dw	
.ende	
	
.enum $C117 export	
_RAM_C117_ dw	
_RAM_C119_ dw	
_RAM_C11B_ dw	
_RAM_C11D_ db	
.ende	
	
.enum $C122 export	
_RAM_C122_ db	
_RAM_C123_ db	
_RAM_C124_ db	
_RAM_C125_ db	
_RAM_C126_ dw	
_RAM_C128_ dw	
_RAM_C12A_ dsb $1a	
_RAM_C144_ dw	
_RAM_C146_ dw	
.ende	
	
.enum $C14A export	
_RAM_C14A_ dw	
_RAM_C14C_ dw	
.ende	
	
.enum $C191 export	
_RAM_C191_ db	
_RAM_C192_ db	
_RAM_C193_ db	
_RAM_C194_ db	
_RAM_C195_ dw	
_RAM_C197_ dw	
_RAM_C199_ dw	
_RAM_C19B_ dw	
_RAM_C19D_ dw	
_RAM_C19F_ dw	
_RAM_C1A1_ db	
.ende	
	
.enum $C1A3 export	
_RAM_C1A3_ db	
_RAM_C1A4_ dw	
_RAM_C1A6_ dw	
_RAM_C1A8_ db	
_RAM_C1A9_ db	
_RAM_C1AA_ db	
_RAM_C1AB_ dw	
.ende	
	
.enum $C1AE export	
_RAM_C1AE_ dw	
_RAM_C1B0_ db	
_RAM_C1B1_ db	
_RAM_C1B2_ db	
_RAM_C1B3_ db	
_RAM_C1B4_ db	
_RAM_C1B5_ dw	
_RAM_C1B7_ db	
_RAM_C1B8_ dw	
_RAM_C1BA_ dw	
_RAM_C1BC_ dw	
_RAM_C1BE_ dw	
_RAM_C1C0_ db	
_RAM_C1C1_ db	
_RAM_C1C2_ db	
_RAM_C1C3_ dw	
_RAM_C1C5_ dw	
_RAM_C1C7_ dw	
_RAM_C1C9_ dw	
_RAM_C1CB_ db	
_RAM_C1CC_ db	
_RAM_C1CD_ dw	
_RAM_C1CF_ db	
.ende	
	
.enum $C1D1 export	
_RAM_C1D1_ dw	
_RAM_C1D3_ dw	
_RAM_C1D5_ dw	
_RAM_C1D7_ db	
.ende	
	
.enum $C1D9 export	
_RAM_C1D9_ db	
.ende	
	
.enum $C1DB export	
_RAM_C1DB_ db	
.ende	
	
.enum $C1DD export	
_RAM_C1DD_ db	
.ende	
	
.enum $C1DF export	
_RAM_C1DF_ db	
_RAM_C1E0_ db	
_RAM_C1E1_ db	
_RAM_C1E2_ db	
_RAM_C1E3_ dw	
_RAM_C1E5_ db	
_RAM_C1E6_ db	
_RAM_C1E7_ dw	
_RAM_C1E9_ dw	
_RAM_C1EB_ db	
_RAM_C1EC_ dw	
_RAM_C1EE_ dw	
_RAM_C1F0_ dw	
_RAM_C1F2_ db	
.ende	
	
.enum $C1F4 export	
_RAM_C1F4_ dw	
_RAM_C1F6_ db	
.ende	
	
.enum $C1F8 export	
_RAM_C1F8_ db	
_RAM_C1F9_ db	
_RAM_C1FA_ db	
.ende	
	
.enum $C1FC export	
_RAM_C1FC_ dw	
_RAM_C1FE_ dw	
_RAM_C200_ db	
.ende	
	
.enum $C202 export	
_RAM_C202_ dw	
_RAM_C204_ dw	
_RAM_C206_ db	
_RAM_C207_ db	
_RAM_C208_ dw	
_RAM_C20A_ dw	
_RAM_C20C_ db	
_RAM_C20D_ dw	
_RAM_C20F_ db	
_RAM_C210_ db	
_RAM_C211_ db	
_RAM_C212_ dw	
_RAM_C214_ dw	
_RAM_C216_ db	
_RAM_C217_ dw	
_RAM_C219_ dw	
_RAM_C21B_ dw	
_RAM_C21D_ dw	
_RAM_C21F_ db	
_RAM_C220_ dw	
_RAM_C222_ db	
_RAM_C223_ db	
.ende	
	
.enum $C225 export	
_RAM_C225_ db	
_RAM_C226_ db	
_RAM_C227_ db	
_RAM_C228_ dsb $7	
_RAM_C22F_ db	
_RAM_C230_ dw	
_RAM_C232_ db	
_RAM_C233_ dw	
_RAM_C235_ db	
_RAM_C236_ db	
_RAM_C237_ dw	
_RAM_C239_ db	
_RAM_C23A_ db	
.ende	
	
.enum $C242 export	
_RAM_C242_ db	
_RAM_C243_ db	
_RAM_C244_ db	
_RAM_C245_ db	
_RAM_C246_ db	
_RAM_C247_ db	
_RAM_C248_ db	
_RAM_C249_ db	
_RAM_C24A_ db	
.ende	
	
.enum $C24C export	
_RAM_C24C_ db	
.ende	
	
.enum $C24E export	
_RAM_C24E_ db	
_RAM_C24F_ db	
_RAM_C250_ db	
_RAM_C251_ db	
.ende	
	
.enum $C25A export	
_RAM_C25A_ db	
.ende	
	
.enum $C262 export	
_RAM_C262_ db	
_RAM_C263_ db	
_RAM_C264_ dw	
_RAM_C266_ db	
_RAM_C267_ db	
.ende	
	
.enum $C300 export	
_RAM_C300_ db	
_RAM_C301_ db	
_RAM_C302_ db	
.ende	
	
.enum $C304 export	
_RAM_C304_ db	
.ende	
	
.enum $C320 export	
_RAM_C320_ db	
_RAM_C321_ db	
_RAM_C322_ dw	
.ende	
	
.enum $C332 export	
_RAM_C332_ db	
.ende	
	
.enum $C33B export	
_RAM_C33B_ db	
.ende	
	
.enum $C340 export	
_RAM_C340_ db	
_RAM_C341_ db	
.ende	
	
.enum $C360 export	
_RAM_C360_ db	
_RAM_C361_ db	
.ende	
	
.enum $C364 export	
_RAM_C364_ db	
.ende	
	
.enum $C36A export	
_RAM_C36A_ db	
.ende	
	
.enum $C380 export	
_RAM_C380_ db	
_RAM_C381_ db	
.ende	
	
.enum $C38A export	
_RAM_C38A_ db	
.ende	
	
.enum $C3A0 export	
_RAM_C3A0_ dw	
.ende	
	
.enum $C3BF export	
_RAM_C3BF_ dsb $20	
.ende	
	
.enum $C600 export	
_RAM_C600_ dsb $40	
_RAM_C640_ dsb $40	
_RAM_C680_ db	
.ende	
	
.enum $C800 export	
_RAM_C800_ db	
.ende	
	
.enum $CA00 export	
_RAM_CA00_ db	
.ende	
	
.enum $CA4F export	
_RAM_CA4F_ db	
.ende	
	
.enum $CB00 export	
_RAM_CB00_ db	
.ende	
	
.enum $CB7C export	
_RAM_CB7C_ dw	
.ende	
	
.enum $CE00 export	
_RAM_CE00_ db	
.ende	
	
.enum $D0F0 export	
_RAM_D0F0_ db	
.ende	
	
.enum $D200 export	
_RAM_D200_ db	
.ende	
	
.enum $D400 export	
_RAM_D400_ dsb $100	
_RAM_D500_ dsb $86	
_RAM_D586_ db	
.ende	
	
.enum $D590 export	
_RAM_D590_ dsb $1e	
.ende	
	
.enum $D5D0 export	
_RAM_D5D0_ dsb $1e	
.ende	
	
.enum $D654 export	
_RAM_D654_ dsb $16	
.ende	
	
.enum $D6C0 export	
_RAM_D6C0_ db	
.ende	
	
.enum $D700 export	
_RAM_D700_ dsb $19a	
_RAM_D89A_ db	
.ende	
	
.enum $D944 export	
_RAM_D944_ dsb $8	
_RAM_D94C_ db	
.ende	
	
.enum $D962 export	
_RAM_D962_ db	
.ende	
	
.enum $D984 export	
_RAM_D984_ dsb $3a	
.ende	
	
.enum $DE00 export	
_RAM_DE00_ db	
_RAM_DE01_ db	
_RAM_DE02_ db	
_RAM_DE03_ dw	
_RAM_DE05_ dw	
_RAM_DE07_ dw	
_RAM_DE09_ dsb $8	
_RAM_DE11_ db	
.ende	
	
.enum $DE1F export	
_RAM_DE1F_ db	
_RAM_DE20_ db	
_RAM_DE21_ dsb $3	
_RAM_DE24_ db	
.ende	
	
.enum $DE27 export	
_RAM_DE27_ db	
.ende	
	
.enum $DE2B export	
_RAM_DE2B_ db	
.ende	
	
.enum $DE2D export	
_RAM_DE2D_ dw	
.ende	
	
.enum $DE31 export	
_RAM_DE31_ db	
_RAM_DE32_ db	
_RAM_DE33_ db	
_RAM_DE34_ dw	
_RAM_DE36_ dw	
_RAM_DE38_ dw	
_RAM_DE3A_ dw	
_RAM_DE3C_ db	
_RAM_DE3D_ db	
.ende	
	
.enum $DE80 export	
_RAM_DE80_ dsb $8	
_RAM_DE88_ db	
.ende	
	
.enum $DF00 export	
_RAM_DF00_ dsb $4	
_RAM_DF04_ db	
_RAM_DF05_ db	
.ende	
	
.enum $DFBF export	
_RAM_DFBF_ db	
_RAM_DFC0_ dsb $3	
_RAM_DFC3_ db	
.ende	
	
.enum $DFC5 export	
_RAM_DFC5_ dsb $1a	
_RAM_DFDF_ db	
.ende	
	
.enum $FF40 export	
_RAM_FF40_ db	
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
.define Port_VCounter $7E	
.define Port_VDPStatus $BF	
.define Port_IOPort1 $DC	
.define Port_IOPort2 $DD	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
_LABEL_0_:	
		di
		im 1
		ld sp, $DE00
		jr _LABEL_84_
	
_LABEL_8_:	
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ret
	
	; Data from F to F (1 bytes)
	.db $FF
	
; Jump Table from 10 to 37 (20 entries, indexed by _RAM_C102_)	
_DATA_10_:	
	.dw _LABEL_E78_ _LABEL_E61_ _LABEL_1080_ _LABEL_1023_ _LABEL_1238_ _LABEL_1205_ _LABEL_1419_ _LABEL_1327_
	.dw _LABEL_1540_ _LABEL_150D_ _LABEL_176A_ _LABEL_1701_ _LABEL_18F5_ _LABEL_18D0_ _LABEL_1920_ _LABEL_1905_
	.dw _LABEL_1B81_ _LABEL_1A6B_ _LABEL_1E29_ _LABEL_1E0E_
	
_LABEL_38_:	
		push af
		in a, (Port_VDPStatus)
		or a
		jp p, _RAM_DE80_	; Code is loaded from _LABEL_7F0_
		jp _LABEL_16F_
	
_LABEL_42_:	
		ld a, (_RAM_C101_)
		and $BF
		jr +
	
_LABEL_49_:	
		ld a, (_RAM_C101_)
		or $40
+:	
		ld (_RAM_C101_), a
		ld e, a
		ld d, $81
		rst $08	; _LABEL_8_
		ret
	
_LABEL_56_:	
		ld (_RAM_C108_), a
-:	
		ld a, (_RAM_C108_)
		or a
		jr nz, -
		ret
	
; 1st entry of Pointer Table from 10E1 (indexed by _RAM_DE3C_)	
; Data from 60 to 65 (6 bytes)	
_DATA_60_:	
	.db $FF $FF $FF $FF $FF $FF
	
_LABEL_66_:	
		push af
		ld a, (_RAM_C102_)
		cp $0B
		jr z, +
		cp $0A
		jr z, +
		cp $09
		jr z, +
		cp $13
		jr nz, ++
+:	
		ld a, (_RAM_C112_)
		cpl
		ld (_RAM_C112_), a
++:	
		pop af
		retn
	
_LABEL_84_:	
		ld hl, _RAM_FFFC_
		ld (hl), $80
		inc hl
		ld (hl), $00
		inc hl
		ld (hl), $01
		inc hl
		ld (hl), $02
		ld hl, _RAM_DE00_
		ld de, _RAM_DE00_ + 1
		ld bc, $01FB
		ld (hl), $00
		ldir
		call _LABEL_82A_
		or a
		ld a, $01
		jr nz, +
		xor a
+:	
		ld (_RAM_DE27_), a
		ld a, $FF
		ld (_RAM_DE2B_), a
		ld hl, _DATA_BEC0_
		ld de, _RAM_DF00_
		ld bc, $00E0
		ldir
_LABEL_BB_:	
		di
		ld sp, $DE00
		ld hl, _RAM_C000_
		ld de, _RAM_C000_ + 1
		ld bc, $1DFF
		ld (hl), $00
		ldir
		ld hl, _LABEL_7F0_	; Loading Code into RAM
		ld de, _RAM_DE80_
		ld bc, $0012
		ldir
		ld a, (_RAM_DE2B_)
		or a
		jr nz, +
		ld hl, _RAM_DE20_
		ld b, $05
-:	
		ld (hl), a
		inc hl
		djnz -
+:	
		call _LABEL_82A_
		or a
		jr nz, +
		ld b, $02
--:	
		ld de, $FFFF
-:	
		dec de
		ld a, d
		or e
		jr nz, -
		djnz --
+:	
		ld a, (_RAM_C109_)
		or a
		jr nz, ++
		ld bc, $0000
-:	
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, +
		inc c
+:	
		djnz -
		ld a, c
		ld b, $00
		sub $60
		jr c, +++
		cp $40
		jr nc, +++
		ld b, $FF
		jp +++
	
++:	
		ld a, $DD
		out (Port_IOPortControl), a
		ld b, $37
-:	
		djnz -
		in a, (Port_IOPort1)
		and $20
		ld c, a
		ld a, $FD
		out (Port_IOPortControl), a
		ld b, $0D
-:	
		djnz -
		in a, (Port_IOPort1)
		and $20
		cp c
		ld b, $00
		jr z, +++
		ld b, $FF
+++:	
		ld a, b
		ld (_RAM_C107_), a
; 17th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_13E_:	
		call _LABEL_5C80_
		call _LABEL_86F_
		call _LABEL_9CD_
		call _LABEL_84E_
		ei
-:	
		ld hl, _RAM_C102_
		ld a, (hl)
		and $1F
		ld hl, _DATA_10_
		call _LABEL_15A_
		jp -
	
_LABEL_15A_:	
		add a, a
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
_LABEL_165_:	
		call _LABEL_5C93_
-:	
		ld a, (_RAM_C112_)
		or a
		ret z
		jr -
	
_LABEL_16F_:	
		push bc
		push de
		push hl
		push ix
		push iy
		ld a, (_RAM_FFFF_)
		push af
		in a, (Port_IOPort2)
		and $10
		ld hl, _RAM_C10B_
		ld c, (hl)
		ld (hl), a
		xor c
		and c
		jp nz, _LABEL_81A_
		ld a, (_RAM_C10A_)
		or a
		jp nz, +
		ld b, $00
-:	
		djnz -
-:	
		djnz -
+:	
		ld a, (_RAM_C112_)
		or a
		jp nz, _LABEL_7CA_
		ld a, (_RAM_C262_)
		or a
		jp nz, _LABEL_31C_
		ld a, (_RAM_C108_)
		and $1F
		ld hl, _DATA_1D0_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
_LABEL_1B5_:	
		xor a
		ld (_RAM_C108_), a
_LABEL_1B9_:	
		pop af
		ld (_RAM_FFFF_), a
		pop iy
		pop ix
		pop hl
		pop de
		pop bc
		pop af
		ei
		ret
	
; 16th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_1C7_:	
		call _LABEL_49_
		call _LABEL_3DA3_
		jp _LABEL_1B5_
	
; Jump Table from 1D0 to 1EF (16 entries, indexed by _RAM_C108_)	
_DATA_1D0_:	
	.dw _LABEL_31C_ _LABEL_1F0_ _LABEL_208_ _LABEL_1F0_ _LABEL_249_ _LABEL_2EA_ _LABEL_36C_ _LABEL_3B2_
	.dw _LABEL_3ED_ _LABEL_44A_ _LABEL_26D_ _LABEL_2AC_ _LABEL_2AC_ _LABEL_2B3_ _LABEL_2C5_ _LABEL_1C7_
	
; 2nd entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_1F0_:	
		call _LABEL_3DA3_
		call _LABEL_EED_
		call _LABEL_88A_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 3rd entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_208_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_3DA3_
		call _LABEL_415D_
		call _LABEL_42B4_
		call _LABEL_10F1_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jr z, +
		dec hl
		ld (_RAM_C10E_), hl
+:	
		call _LABEL_88A_
		call _LABEL_558E_
		jp _LABEL_1B5_
	
; 5th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_249_:	
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_3DA3_
		call _LABEL_1493_
		call _LABEL_7C0_
		ei
		call _LABEL_88A_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 11th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_26D_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_3DA3_
		call _LABEL_415D_
		call _LABEL_42B4_
		call _LABEL_7C0_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		call _LABEL_88A_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 12th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_2AC_:	
		call _LABEL_3DA3_
		ei
		call _LABEL_88A_
; 14th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_2B3_:	
		call _LABEL_7C0_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 15th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_2C5_:	
		xor a
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_3DA3_
		call _LABEL_4376_
		call _LABEL_401B_
		call _LABEL_A52_
		call _LABEL_7C0_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 6th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_2EA_:	
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_3DA3_
		call _LABEL_4234_
		call _LABEL_401B_
		call _LABEL_169A_
		ei
		call _LABEL_88A_
		call _LABEL_7C0_
		ld a, (_RAM_C1F4_)
		cp $04
		call z, _LABEL_3EEA_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jp z, _LABEL_1B5_
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1B5_
	
; 1st entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_31C_:	
		ld a, (_RAM_C102_)
		cp $0B
		jp z, +
		cp $05
		jp z, +
		cp $03
		jp z, _LABEL_208_
		cp $02
		jp z, _LABEL_208_
		cp $0D
		jp z, _LABEL_26D_
		cp $0C
		jp z, +
		call _LABEL_7C0_
		jp _LABEL_1B5_
	
+:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_A52_
		call _LABEL_7C0_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		jp _LABEL_1B5_
	
; 7th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_36C_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, (_RAM_C1F8_)
		cp $02
		ld a, $C8
		jr nz, +
		inc a
+:	
		ld (_RAM_DE88_), a
		call _LABEL_3DA3_
		call _LABEL_1792_
		call _LABEL_415D_
		call _LABEL_42B4_
		call _LABEL_1F8B_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		call _LABEL_558E_
		call _LABEL_3EEA_
		jp _LABEL_1B5_
	
; 8th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_3B2_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, $C8
		ld (_RAM_DE88_), a
		call _LABEL_401B_
		call _LABEL_1F8B_
		call _LABEL_A52_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		call _LABEL_88A_
		call _LABEL_558E_
		call _LABEL_3EEA_
		jp _LABEL_1B5_
	
; 9th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_3ED_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld b, $00
-:	
		djnz -
		call _LABEL_1792_
		call _LABEL_1F8B_
		call _LABEL_4278_
		ld a, (_RAM_C1F8_)
		cp $02
		ld a, $C8
		jr nz, +
		inc a
+:	
		ld (_RAM_DE88_), a
		call _LABEL_A52_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		call _LABEL_558E_
		call _LABEL_3EEA_
		jp _LABEL_1B5_
	
-:	
		call _LABEL_1F8B_
		ld hl, _RAM_D6C0_
		ld a, $C0
		out (Port_VDPAddress), a
		ld a, $7B
		out (Port_VDPAddress), a
		ld c, Port_VDPData
		call _LABEL_3E36_
		jp _LABEL_489_
	
; 10th entry of Jump Table from 1D0 (indexed by _RAM_C108_)	
_LABEL_44A_:	
		ld a, (_RAM_C194_)
		ld (_RAM_C191_), a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C247_)
		or a
		jr nz, +
		ld a, (_RAM_C1B1_)
+:	
		cpl
		and $07
		ld (_RAM_C1B3_), a
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ld a, (_RAM_C24E_)
		or a
		jr nz, -
		ld hl, _RAM_D500_
		xor a
		out (Port_VDPAddress), a
		ld a, $7A
		out (Port_VDPAddress), a
		ld c, Port_VDPData
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
_LABEL_489_:	
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		ld b, $80
-:	
		outi
		jp nz, -
-:	
		outi
		jp nz, -
		ld hl, _RAM_CB00_
		ld de, _RAM_C800_
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
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
		ld l, $BE
		ld e, l
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
		ld l, $BE
		ld e, l
		ldi
		ldi
		ldi
		ldi
		ldi
		ldi
; 18th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_732_:	
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
		ld a, $C8
		ld (_RAM_DE88_), a
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ei
		call _LABEL_558E_
		call _LABEL_3EEA_
		jp _LABEL_1B5_
	
_LABEL_7C0_:	
		ld a, (_RAM_C262_)
		or a
		jp nz, _LABEL_5C93_
		jp _LABEL_558E_
	
_LABEL_7CA_:	
		ld a, (_RAM_C191_)
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		ld a, (_RAM_C1B3_)
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		call _LABEL_5C93_
-:	
		in a, (Port_VCounter)
		cp $B7
		jp nc, -
		xor a
		out (Port_VDPAddress), a
		ld a, $8A
		out (Port_VDPAddress), a
		jp _LABEL_1B9_
	
; Executed in RAM at 1e80	
_LABEL_7F0_:	
		in a, (Port_VCounter)
; Executed in RAM at 1e82	
_LABEL_7F2_:	
		add a, a
; Executed in RAM at 1e83	
_LABEL_7F3_:	
		ld ($DE87), a
; Executed in RAM at 1e86	
_LABEL_7F6_:	
		ld a, ($C800)
; Executed in RAM at 1e89	
_LABEL_7F9_:	
		out (Port_VDPAddress), a
; Executed in RAM at 1e8b	
_LABEL_7FB_:	
		ld a, $88
; Executed in RAM at 1e8d	
_LABEL_7FD_:	
		out (Port_VDPAddress), a
; Executed in RAM at 1e8f	
_LABEL_7FF_:	
		pop af
; Executed in RAM at 1e90	
_LABEL_800_:	
		ei
; Executed in RAM at 1e91	
_LABEL_801_:	
		ret
	
; Executed in RAM at 1e92	
_LABEL_802_:	
		ld hl, _RAM_C600_
		ld de, _RAM_C600_ + 1
		ld bc, $0040
		ld (hl), $E0
		ldir
		ld c, $BF
		ld (hl), $00
		ldir
		ld a, $1E
		jp _LABEL_56_
	
_LABEL_81A_:	
		ld a, (_RAM_C236_)
		cp $1B
		jp c, _LABEL_BB_
		ld hl, (_RAM_C230_)
		ld (hl), $00
		jp _LABEL_BB_
	
_LABEL_82A_:	
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
		ld (_RAM_C109_), a
		ret
	
+:	
		xor a
		ld (_RAM_C109_), a
		ret
	
_LABEL_84E_:	
		ld hl, $0000
-:	
		in a, (Port_VDPStatus)
		or a
		jp p, -
-:	
		in a, (Port_VDPStatus)
		or a
		jp p, -
-:	
		inc hl
		in a, (Port_VDPStatus)
		or a
		jp p, -
		xor a
		ld de, $0800
		sbc hl, de
		sbc a, a
		ld (_RAM_C10A_), a
		ret
	
_LABEL_86F_:	
		ld a, $AC
		out (Port_MemoryControl), a
		ld a, $01
		out (Port_AudioControl), a
		in a, (Port_AudioControl)
		and $07
		cp $01
		jr z, +
		xor a
		out (Port_AudioControl), a
+:	
		ld (_RAM_C002_), a
		ld a, $A8
		out (Port_MemoryControl), a
		ret
	
_LABEL_88A_:	
		ld a, (_RAM_C107_)
		or a
		jp nz, +
		in a, (Port_IOPort1)
		ld hl, _RAM_C104_
		cpl
		ld b, a
		xor (hl)
		ld (hl), b
		inc hl
		and b
		ld (hl), a
		ret
	
+:	
		ld a, (_RAM_C262_)
		or a
		ret nz
		in a, (Port_IOPort1)
		ld hl, _RAM_C104_
		cpl
		rlca
		and $20
		ld b, a
		xor (hl)
		ld (hl), b
		inc hl
		and b
		ld (hl), a
		ld a, (_RAM_DE2B_)
		or a
		ret nz
		ld hl, _RAM_C262_
		ld (hl), $FF
		ld a, (_RAM_C109_)
		or a
		jp nz, _LABEL_8F0_
-:	
		in a, (Port_IOPort1)
		bit 5, a
		jr nz, -
		and $0F
		ld e, a
-:	
		in a, (Port_IOPort1)
		bit 5, a
		jr z, -
_LABEL_8D2_:	
		rrca
		rrca
		rrca
		rrca
		and $F0
		or e
		ld hl, _RAM_C106_
		ld e, (hl)
		ld l, a
		xor a
		ld h, a
		ld d, a
		add hl, de
		srl h
		rr l
		ld a, l
		ld (_RAM_C106_), a
		ld hl, _RAM_C262_
		ld (hl), $00
		ret
	
_LABEL_8F0_:	
		ld a, $DD
		out (Port_IOPortControl), a
		ld b, $37
-:	
		djnz -
		in a, (Port_IOPort1)
		ld c, a
		and $0F
		ld e, a
		ld a, $FD
		out (Port_IOPortControl), a
		ld b, $0D
-:	
		djnz -
		in a, (Port_IOPort1)
		push af
		and $20
		ld b, a
		ld a, c
		and $20
		and b
		jp nz, +
		pop af
		jp _LABEL_8D2_
	
+:	
		pop af
		jp _LABEL_8F0_
	
_LABEL_91B_:	
		rst $08	; _LABEL_8_
		ld a, c
		or a
		jr z, +
		inc b
+:	
		ld a, b
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		jp nz, -
		dec a
		jp nz, -
		ret
	
_LABEL_92F_:	
		ld de, $7800
		ld bc, $0380
		ld hl, $0000
_LABEL_938_:	
		rst $08	; _LABEL_8_
		ld a, c
		or a
		jr z, _LABEL_93E_
		inc b
_LABEL_93E_:	
		ld a, l
		out (Port_VDPData), a
		push af
		pop af
		ld a, h
		out (Port_VDPData), a
		dec c
		jr nz, _LABEL_93E_
		djnz _LABEL_93E_
		ret
	
_LABEL_94C_:	
		push bc
		rst $08	; _LABEL_8_
		ld b, c
		ld c, Port_VDPData
-:	
		outi
		ld a, (_RAM_C110_)
		nop
		out (c), a
		jr nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz _LABEL_94C_
		ret
	
_LABEL_965_:	
		push bc
		rst $08	; _LABEL_8_
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
		djnz _LABEL_965_
		ret
	
_LABEL_979_:	
		ld (hl), $00
		ld de, $7A90
		ld hl, $0880
		ld bc, $0810
--:	
		push bc
		rst $08	; _LABEL_8_
-:	
		ld a, l
		out (Port_VDPData), a
		push af
		pop af
		ld a, h
		out (Port_VDPData), a
		inc hl
		dec c
		jr nz, -
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz --
		ld hl, _RAM_FFFF_
		ld (hl), $0A
		ld hl, _DATA_2BFB5_
		ld de, $7CE4
		ld bc, $0016
		jp _LABEL_91B_
	
_LABEL_9AC_:	
		ld (_RAM_C111_), a
		rst $08	; _LABEL_8_
--:	
		ld a, (hl)
		exx
		ld c, Port_VDPData
		ld b, $04
		ld h, a
		ld a, (_RAM_C111_)
-:	
		rra
		ld d, h
		jr c, +
		ld d, $00
+:	
		out (c), d
		djnz -
		exx
		inc hl
		dec bc
		ld a, b
		or c
		jp nz, --
		ret
	
_LABEL_9CD_:	
		ld hl, _DATA_9E2_
		ld bc,  $1400 | Port_VDPAddress
		otir
		ld a, (_DATA_9E2_)
		ld (_RAM_C100_), a
		ld a, (_DATA_9E2_ + 2)
		ld (_RAM_C101_), a
		ret
	
; Data from 9E2 to 9F5 (20 bytes)	
_DATA_9E2_:	
	.db $66 $80 $A2 $81 $FF $82 $FF $83 $FF $84 $FF $85 $FF $86 $00 $87
	.db $00 $88 $00 $89
	
_LABEL_9F6_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_A03_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_A03_:	
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
		rst $08	; _LABEL_8_
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
		jp nz, _LABEL_A03_
		inc hl
		jp _LABEL_A03_
	
_LABEL_A23_:	
		ld b, $04
-:	
		push bc
		push de
		call _LABEL_A30_
		pop de
		inc de
		pop bc
		djnz -
		ret
	
_LABEL_A30_:	
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
		rst $08	; _LABEL_8_
		ld a, (hl)
		out (Port_VDPData), a
		ei
		jp z, +
		inc hl
+:	
		inc de
		inc de
		inc de
		inc de
		djnz -
		jp nz, _LABEL_A30_
		inc hl
		jp _LABEL_A30_
	
_LABEL_A52_:	
		ld a, (_RAM_C122_)
		or a
		ret z
		ld a, (_RAM_C125_)
		ld (_RAM_FFFF_), a
		ld de, (_RAM_C146_)
		ld hl, (_RAM_C144_)
		ld c, $00
		ld a, (_RAM_C124_)
		or a
		jp nz, _LABEL_AB2_
_LABEL_A6D_:	
		ld a, c
		cp $80
		jp nc, _LABEL_AE5_
		ld a, (hl)
		or a
		jp z, _LABEL_AED_
		and $7F
		ld b, a
		add a, c
		cp $81
		jp c, +
		ld a, $80
		sub c
		ld b, a
		ld a, (hl)
		and $7F
		sub b
		ld (_RAM_C124_), a
		ld a, $80
+:	
		ld c, a
		ld a, (hl)
		inc hl
		and $80
		ld (_RAM_C123_), a
-:	
		rst $08	; _LABEL_8_
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
		jp nz, _LABEL_A6D_
		ld a, (_RAM_C124_)
		or a
		jp nz, _LABEL_A6D_
		inc hl
		jp _LABEL_A6D_
	
_LABEL_AB2_:	
		cp $80
		jp c, +
		sub $80
		ld (_RAM_C124_), a
		ld b, $80
		ld c, b
		jp ++
	
+:	
		ld b, a
		ld c, a
		xor a
		ld (_RAM_C124_), a
++:	
		ld a, (_RAM_C123_)
		or a
		jp -
	
_LABEL_ACF_:	
		ld hl, (_RAM_C128_)
		ld (_RAM_C144_), hl
		ld hl, (_RAM_C126_)
		ld (_RAM_C146_), hl
		ld a, $04
		ld (_RAM_C122_), a
		xor a
		ld (_RAM_C124_), a
		ret
	
_LABEL_AE5_:	
		ld (_RAM_C144_), hl
		ld (_RAM_C146_), de
		ret
	
_LABEL_AED_:	
		inc hl
		ld (_RAM_C144_), hl
		ld hl, (_RAM_C126_)
		inc hl
		ld (_RAM_C126_), hl
		ld (_RAM_C146_), hl
		ld a, (_RAM_C122_)
		dec a
		ld (_RAM_C122_), a
		ret nz
		ld hl, _RAM_C12A_
		ld de, _RAM_C125_
		ld bc, $001A
		ldir
		ld a, (_RAM_C125_)
		cp $FF
		jp nz, _LABEL_ACF_
		ret
	
_LABEL_B17_:	
		ld d, $00
		ld l, d
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		jr nc, +
		add hl, de
+:	
		add hl, hl
		ret nc
		add hl, de
		ret
	
_LABEL_B3A_:	
		ld h, $00
		bit 7, d
		jr z, +
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ld h, $FF
+:	
		bit 7, b
		jr z, +
		xor a
		sub c
		ld c, a
		ld a, $00
		sbc a, b
		ld b, a
		ld a, h
		cpl
		ld h, a
+:	
		push hl
		call _LABEL_B90_
		pop af
		or a
		ret p
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $00
		sbc a, e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ret
	
_LABEL_B6E_:	
		ld a, b
		or a
		push af
		jp p, +
		xor a
		sub c
		ld c, a
		ld a, $00
		sbc a, b
		ld b, a
+:	
		call _LABEL_B90_
		pop af
		ret p
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $00
		sbc a, e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ret
	
_LABEL_B90_:	
		or a
		ld hl, $0000
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		jr nc, +
		add hl, bc
		jr nc, +
		inc de
+:	
		add hl, hl
		rl e
		rl d
		ret nc
		add hl, bc
		ret nc
		inc de
		ret
	
_LABEL_C42_:	
		xor a
		add hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		adc a, a
		jr c, +
		cp e
		jr c, ++
+:	
		sub e
		or a
++:	
		ccf
		adc hl, hl
		ret
	
_LABEL_CF5_:	
		ld b, a
		xor a
		bit 7, d
		jr z, +
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ld a, $FF
+:	
		bit 7, h
		jr z, +
		push af
		ld a, $00
		sub c
		ld c, a
		ld a, $00
		sbc a, b
		ld b, a
		ld a, $00
		sbc a, l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		pop af
		cpl
+:	
		push af
		ld a, b
		call _LABEL_D2B_
		pop af
		or a
		ret p
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ret
	
_LABEL_D2B_:	
		or a
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		rla
		adc hl, hl
		push hl
		sbc hl, de
		ccf
		jr c, +
		pop hl
		jp ++
	
+:	
		inc sp
		inc sp
++:	
		rl c
		ld e, c
		rla
		ld d, a
		ret
	
_LABEL_E42_:	
		push hl
		ld hl, (_RAM_C10C_)
		ld a, h
		rrca
		rrca
		xor h
		rrca
		xor l
		rrca
		rrca
		rrca
		rrca
		xor l
		rra
		adc hl, hl
		jr nz, +
		ld hl, $733C
+:	
		ld a, r
		xor l
		ld (_RAM_C10C_), hl
		pop hl
		ret
	
; 2nd entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_E61_:	
		ld a, $02
		call _LABEL_56_
		ld a, (_RAM_C105_)
		and $30
		jr nz, _LABEL_E72_
		ld a, (_RAM_C10E_)
		or a
		ret nz
_LABEL_E72_:	
		ld hl, _RAM_C102_
		ld (hl), $04
		ret
	
; 1st entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_E78_:	
		ld a, (_RAM_C109_)
		or a
		jr nz, _LABEL_E72_
		ld hl, _RAM_C102_
		inc (hl)
		di
		ld hl, $0078
		ld (_RAM_C10E_), hl
		ld hl, _RAM_C110_
		ld (hl), $01
		call _LABEL_42_
		call _LABEL_5C80_
		call _LABEL_92F_
		ld de, $4000
		ld bc, $0010
		ld hl, $0000
		call _LABEL_938_
		ld hl, _DATA_F3B_
		ld de, $6000
		ld bc, $00E8
		ld a, $01
		call _LABEL_9AC_
		ld a, $01
		ld (_RAM_C110_), a
		ld hl, _DATA_F15_
		ld de, $7A8E
		ld bc, $0213
		call _LABEL_94C_
		ld de, $C000
		ld bc, $0010
		ld hl, $3838
		call _LABEL_938_
		ld a, $FF
		ld (_RAM_DE2B_), a
		ld hl, $0000
		ld (_RAM_C113_), hl
		ld de, $8006
		rst $08	; _LABEL_8_
		ld de, $81E2
		rst $08	; _LABEL_8_
		ld de, $8800
		rst $08	; _LABEL_8_
		ld de, $8900
		rst $08	; _LABEL_8_
		ei
		jp _LABEL_802_
	
_LABEL_EED_:	
		ld hl, _RAM_C113_
		dec (hl)
		ret p
		ld (hl), $07
		inc hl
		ld a, (hl)
		cp $08
		ret nc
		inc (hl)
		ld e, a
		ld d, $00
		ld hl, _DATA_F0D_
		add hl, de
		ld a, (hl)
		ld de, $C001
		push af
		rst $08	; _LABEL_8_
		ex (sp), hl
		ex (sp), hl
		pop af
		out (Port_VDPData), a
		ret
	
; Data from F0D to F14 (8 bytes)	
_DATA_F0D_:	
	.db $38 $38 $38 $39 $3A $3B $3E $3F
	
; Data from F15 to F3A (38 bytes)	
_DATA_F15_:	
	.db $01 $02 $01 $02 $01 $02 $03 $04 $00 $05 $06 $03 $04 $07 $08 $09
	.db $0A $0B $0C $0D $0E $0F $10 $11 $12 $13 $14 $00 $15 $16 $13 $14
	.db $17 $18 $19 $1A $1B $1C
	
; Data from F3B to 1022 (232 bytes)	
_DATA_F3B_:	
	.dsb 14, $00
	.db $1F $3F $00 $00 $00 $00 $00 $00 $FF $FE $00 $00 $00 $00 $00 $00
	.db $00 $01 $00 $00 $00 $00 $00 $00 $E0 $E0 $00 $00 $00 $00 $00 $00
	.db $38 $38 $00 $00 $00 $00 $00 $00 $07 $0F $00 $00 $00 $00 $00 $00
	.db $3F $3F $00 $00 $00 $00 $00 $00 $FE $FF $00 $00 $00 $00 $00 $00
	.db $38 $38 $00 $00 $00 $00 $00 $00 $07 $1C $00 $00 $3F $0C $0C $0C
	.db $0C $1D $00 $00 $FF $CC $CC $CC $CC $DC $38 $70 $7F $3F $00 $00
	.db $7F $FF $00 $00 $FC $FE $0E $1C $FC $F8 $38 $70 $7F $7F $F0 $E0
	.db $FF $7F $00 $00 $FE $FC $00 $00 $FC $F8 $38 $70 $70 $70 $E0 $E0
	.db $FF $7F $00 $00 $7E $FC $1C $38 $F8 $F0 $03 $07 $0E $1D $3B $70
	.db $E0 $C0 $F0 $30 $38 $F8 $FC $1C $0E $0E $7C $7C $7C $76 $F7 $E7
	.db $E3 $E3 $1E $3E $7E $EE $DE $DC $9C $1C $70 $70 $77 $73 $F1 $E0
	.db $E0 $E0 $07 $0E $FE $FC $C0 $E0 $70 $38 $78 $71 $77 $73 $F1 $E0
	.db $E0 $E0 $70 $C0 $00 $80 $C0 $E0 $78 $1C $19 $19 $19 $3B $33 $33
	.db $33 $FF $98 $98 $98 $B8 $30 $30 $30 $FC
	
; 4th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1023_:	
		ld a, $04
		call _LABEL_56_
		call _LABEL_25A2_
		call _LABEL_3C9C_
		ld a, (_RAM_C20C_)
		cpl
		ld (_RAM_C20C_), a
		ld a, (_RAM_DE33_)
		or a
		jp nz, +
		ld hl, _RAM_DE31_
		dec (hl)
		jp p, +
		ld (hl), $03
		call _LABEL_1195_
		ld hl, (_RAM_DE34_)
		ld de, $0020
		add hl, de
		ld (_RAM_DE34_), hl
		ld de, (_RAM_DE36_)
		or a
		sbc hl, de
		jr c, +
		inc hl
		ld (_RAM_DE34_), hl
		ld a, l
		cp $04
		jr c, +
		ld (_RAM_DE33_), a
+:	
		ld a, (_RAM_C105_)
		and $30
		jr nz, +
		ld hl, (_RAM_C10E_)
		ld a, h
		or l
		ret nz
		ld hl, _RAM_C102_
		ld (hl), $10
		ret
	
+:	
		ld hl, _RAM_C102_
		ld (hl), $06
		ret
	
; 3rd entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1080_:	
		ld hl, $0258
		ld (_RAM_C10E_), hl
		ld a, $FF
		ld (_RAM_DE2B_), a
		ld hl, $0000
		ld (_RAM_DE34_), hl
		inc hl
		ld (_RAM_DE32_), hl
		ld a, (_RAM_DE3C_)
		inc a
		and $07
		ld (_RAM_DE3C_), a
		add a, a
		ld hl, _DATA_10E1_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_DE36_), hl
		ld hl, $5000
		ld (_RAM_DE3A_), hl
		ld hl, $3A90
		ld (_RAM_DE38_), hl
		ld a, $FF
		ld (_RAM_C251_), a
		ld a, $88
		ld (_RAM_C304_), a
		ld b, $22
-:	
		push bc
		ld a, $04
		call _LABEL_56_
		call _LABEL_25A2_
		call _LABEL_3C9C_
		ld a, (_RAM_C20C_)
		cpl
		ld (_RAM_C20C_), a
		pop bc
		djnz -
		ld hl, _RAM_C102_
		inc (hl)
		ret
	
; Pointer Table from 10E1 to 10E2 (1 entries, indexed by _RAM_DE3C_)	
_DATA_10E1_:	
	.dw _DATA_60_
	
	; Data from 10E3 to 10F0 (14 bytes)
	.db $A0 $00 $C0 $00 $20 $01 $60 $01 $80 $01 $A0 $01 $00 $02
	
_LABEL_10F1_:	
		ld hl, _RAM_DE32_
		ld a, (hl)
		or a
		ret z
		cp $21
		jp nc, _LABEL_979_
		inc (hl)
		ld hl, (_RAM_DE38_)
		ld de, (_RAM_DE3A_)
		ld c, $04
_LABEL_1106_:	
		push hl
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		push af
		pop af
		push af
		pop af
		in a, (Port_VDPData)
		ld l, a
		push af
		pop af
		push af
		pop af
		in a, (Port_VDPData)
		ld h, $01
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		rrca
		rrca
		jp c, +
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		ld hl, _RAM_D200_
		ld b, $20
-:	
		push af
		pop af
		push af
		pop af
		in a, (Port_VDPData)
		ld (hl), a
		inc hl
		djnz -
		jp ++
	
+:	
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		ld hl, _RAM_D200_
		ld b, $20
		push af
		pop af
		push af
		pop af
--:	
		in a, (Port_VDPData)
		push bc
		ld b, $08
-:	
		rrca
		rl c
		djnz -
		ld a, c
		pop bc
		ld (hl), a
		inc hl
		djnz --
++:	
		push af
		pop af
		ld a, e
		out (Port_VDPAddress), a
		ld a, d
		out (Port_VDPAddress), a
		ld hl, _RAM_D200_
		ld b, $20
-:	
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		djnz -
		ld hl, $0020
		add hl, de
		ex de, hl
		pop hl
		inc hl
		inc hl
		dec c
		jp nz, _LABEL_1106_
		ld (_RAM_DE3A_), de
		ld hl, (_RAM_DE38_)
		ld a, (_RAM_DE32_)
		dec a
		and $03
		ld de, $0028
		jr z, +
		ld e, $08
+:	
		add hl, de
		ld (_RAM_DE38_), hl
		ret
	
_LABEL_1195_:	
		ld hl, _RAM_FFFF_
		ld (hl), $0A
		ld hl, (_RAM_DE34_)
		ld de, (_RAM_DE36_)
		ld c, $02
_LABEL_11A3_:	
		in a, (Port_VCounter)
		cp $C0
		jp nc, +
		cp $70
		jp nc, _LABEL_11A3_
+:	
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		add a, $10
		out (Port_VDPAddress), a
		push af
		pop af
		push af
		pop af
		in a, (Port_VDPData)
		ei
		ld b, a
		push af
		pop af
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		add a, $50
		out (Port_VDPAddress), a
		set 7, h
		push hl
		ld a, l
		and $FC
		ld l, a
		ld a, (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		inc hl
		or (hl)
		cpl
		and b
		pop hl
		or (hl)
		out (Port_VDPData), a
		ei
		res 7, h
		add hl, de
		ld a, h
		cp c
		jr c, _LABEL_11A3_
		dec h
		dec h
		ld a, l
		add a, $04
		ld l, a
		and $1F
		cp $04
		jr nc, _LABEL_11A3_
		ld a, h
		and $01
		add a, c
		ld h, a
		inc c
		inc c
		ld a, c
		cp $12
		ret nc
		ld a, l
		sub $20
		ld l, a
		jp _LABEL_11A3_
	
; 6th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1205_:	
		ld a, (_RAM_C105_)
		and $30
		jr z, +
		ld hl, _RAM_C102_
		ld (hl), $06
		ret
	
+:	
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jr z, +
		dec hl
		ld (_RAM_C10E_), hl
		jp _LABEL_1708_
	
+:	
		ld a, (_RAM_C222_)
		or a
		jp nz, _LABEL_1708_
		ld a, (_RAM_C1B4_)
		or a
		jr z, +
		cp $15
		jp nz, _LABEL_1708_
+:	
		ld hl, _RAM_C102_
		ld (hl), $02
		ret
	
; 5th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1238_:	
		di
		call _LABEL_42_
		call _LABEL_5C80_
		call _LABEL_86F_
		call _LABEL_92F_
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $01C7
		ld (_RAM_C10E_), hl
		ld a, $FF
		ld (_RAM_DE2B_), a
		ld hl, _RAM_C11B_
		ld de, _RAM_C11B_ + 1
		ld bc, $18FF
		ld (hl), $00
		ldir
		xor a
		ld (_RAM_C105_), a
		ld hl, _DATA_167A_
		ld de, $C000
		ld bc, $0020
		call _LABEL_91B_
		ld a, (_RAM_DE3D_)
		ld (_RAM_C1F6_), a
-:	
		sub $03
		jr nc, -
		add a, $03
		add a, $8E
		ld (_RAM_C000_), a
		ld hl, _RAM_FFFF_
		ld (hl), $0A
		ld a, (_RAM_C1F6_)
		add a, a
		ld b, a
		add a, a
		add a, b
		ld hl, _DATA_2BF5B_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		call _LABEL_18A1_
		ld hl, _DATA_29000_
		ld de, $7540
		call _LABEL_9F6_
		call _LABEL_51DF_
		call _LABEL_519B_
		ld a, (_RAM_C1F6_)
		ld l, a
		ld h, $00
		add hl, hl
		ld de, _DATA_53AF_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		dec a
		rrca
		rrca
		and $07
		ld b, a
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
		ld a, (hl)
		inc hl
		ld b, (hl)
		inc hl
		push hl
		ld l, a
		ld h, b
		call _LABEL_9F6_
		pop hl
		pop bc
		djnz -
		ld hl, _RAM_FFFF_
		ld (hl), $07
		ld de, $4000
		ld hl, _DATA_1C000_
		call _LABEL_9F6_
		ld a, $36
		ld (_RAM_C300_), a
		ld a, $01
		ld (_RAM_C320_), a
		ld a, $03
		ld (_RAM_C340_), a
		call _LABEL_2F4C_
		call _LABEL_48AC_
		ld hl, $3F3F
		ld (_RAM_C219_), hl
		ld a, $63
		ld (_RAM_DE01_), a
		ld hl, $FFFF
		ld (_RAM_C248_), hl
		ld a, (_RAM_DE3D_)
		inc a
		cp $0F
		jr c, +
		xor a
+:	
		ld (_RAM_DE3D_), a
		ld de, $8076
		rst $08	; _LABEL_8_
		ld de, $81A2
		rst $08	; _LABEL_8_
		ld de, $8920
		rst $08	; _LABEL_8_
		ei
		jp _LABEL_802_
	
; 8th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1327_:	
		ld a, $08
		call _LABEL_56_
		ld hl, _RAM_C1F2_
		dec (hl)
		jp p, ++++
		ld (hl), $03
		ld a, r
		ld c, a
		and $01
		inc a
		ld b, a
		ld hl, (_RAM_C1F0_)
		ld a, h
		cp l
		jr z, +
		ld a, c
		and $07
		ld l, a
		jr +++
	
+:	
		jr nc, +
		add a, b
		cp l
		jr c, ++
		ld a, l
+:	
		sub b
		cp l
		jr nc, ++
		ld a, l
++:	
		ld h, a
+++:	
		ld (_RAM_C1F0_), hl
++++:	
		ld a, (_RAM_C266_)
		cp $01
		jp z, _LABEL_13E5_
		ld b, $01
		ld a, (_RAM_C104_)
		and $0C
		jp z, +
		ld b, $00
		bit 2, a
		jp nz, +
		ld b, $02
+:	
		ld hl, (_RAM_C106_)
		ld a, h
		or a
		jr z, ++
		ld a, l
		cp $55
		jr c, +
		cp $AA
		jr c, ++
		ld b, $02
		jr ++
	
+:	
		ld b, $00
++:	
		ld a, b
		ld (_RAM_DE2D_), a
		ld a, (_RAM_C105_)
		or a
		jr z, ++
		ld hl, (_RAM_C264_)
		cp (hl)
		jr z, +
		ld hl, $14F5
+:	
		inc hl
		ld (_RAM_C264_), hl
		ld a, (hl)
		cp $FF
		jr nz, ++
		ld (_RAM_C266_), a
++:	
		ld a, (_RAM_C105_)
		and $30
		jr nz, +
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		ret nz
+:	
		ld a, (_RAM_C263_)
		ld (_RAM_C002_), a
		out (Port_AudioControl), a
		ld a, (_RAM_C266_)
		or a
		jr z, _LABEL_1414_
		ld a, (_RAM_C104_)
		and $0F
		cp $02
		ld a, $84
		jr z, +
		ld a, (_RAM_DE2D_)
		and $03
		add a, $8E
+:	
		ld (_RAM_C000_), a
		ld a, $01
		ld (_RAM_C266_), a
		ld hl, _DATA_14F2_
		ld (_RAM_C264_), hl
		ret
	
_LABEL_13E5_:	
		ld a, (_RAM_C105_)
		or a
		jr z, ++
		ld hl, (_RAM_C264_)
		cp (hl)
		jr z, +
		ld hl, $14F1
+:	
		inc hl
		ld (_RAM_C264_), hl
		ld a, (hl)
		cp $FF
		jr nz, ++
		ld (_RAM_C267_), a
++:	
		ld a, (_RAM_C105_)
		and $30
		ret z
		ld a, (_RAM_C267_)
		or a
		jr z, _LABEL_1414_
		ld a, (_RAM_C104_)
		and $03
		ld (_RAM_DE27_), a
_LABEL_1414_:	
		ld hl, _RAM_C102_
		inc (hl)
		ret
	
; 7th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1419_:	
		di
		call _LABEL_42_
		call _LABEL_5C80_
		call _LABEL_86F_
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $0708
		ld (_RAM_C10E_), hl
		xor a
		ld (_RAM_DE2B_), a
		ld hl, _RAM_FFFF_
		ld (hl), $0A
		ld hl, _DATA_299BA_
		ld de, $C000
		ld bc, $0020
		call _LABEL_91B_
		ld hl, _DATA_299DA_
		ld de, $4000
		call _LABEL_9F6_
		ld hl, _DATA_2AFC3_
		ld de, $6000
		call _LABEL_9F6_
		ld hl, _DATA_29152_
		ld de, $7900
		ld bc, $0600
		call _LABEL_91B_
		ld hl, $0101
		ld (_RAM_DE2D_), hl
		ld hl, _DATA_14F6_
		ld (_RAM_C264_), hl
		ld hl, $0000
		ld (_RAM_C266_), a
		ld a, (_RAM_C002_)
		ld (_RAM_C263_), a
		xor a
		ld (_RAM_C002_), a
		out (Port_AudioControl), a
		ld hl, _RAM_C000_
		ld (hl), $8C
		ld de, $8006
		rst $08	; _LABEL_8_
		ld de, $81A2
		rst $08	; _LABEL_8_
		ld de, $8920
		rst $08	; _LABEL_8_
		ei
		jp _LABEL_802_
	
_LABEL_1493_:	
		ld hl, _RAM_FFFF_
		ld (hl), $0A
		ld hl, (_RAM_DE2D_)
		ld a, l
		cp h
		jp z, +
		ld h, l
		ld (_RAM_DE2D_), hl
		ld h, $00
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld de, _DATA_14FB_
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		push hl
		ex de, hl
		ld de, $7B0A
		ld bc, $022C
		call _LABEL_965_
		pop hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		push hl
		ex de, hl
		ld de, $7D9C
		ld bc, $0206
		call _LABEL_965_
		pop hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, $7D64
		ld bc, $070C
		call _LABEL_965_
+:	
		ld a, (_RAM_C1F0_)
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, _DATA_2997A_
		add hl, de
		ld de, $7E1A
		ld bc, $0008
		jp _LABEL_91B_
	
; Data from 14F2 to 14F5 (4 bytes)	
_DATA_14F2_:	
	.db $01 $02 $04 $08
	
; Data from 14F6 to 14FA (5 bytes)	
_DATA_14F6_:	
	.db $08 $04 $02 $01 $FF
	
; Pointer Table from 14FB to 14FC (1 entries, indexed by _RAM_DE2D_)	
_DATA_14FB_:	
	.dw _DATA_29752_
	
	; Pointer Table from 14FD to 150C (8 entries, indexed by _RAM_DE2D_)
	.dw _DATA_29956_ _DATA_2985A_ _DATA_297AA_ _DATA_29962_ _DATA_298AE_ _DATA_29802_ _DATA_2996E_ _DATA_29902_
	
; 10th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_150D_:	
		ld a, (_RAM_C112_)
		or a
		call nz, _LABEL_165_
		ld a, $0A
		call _LABEL_56_
		call _LABEL_2F6B_
		ld a, $0A
		call _LABEL_56_
		call _LABEL_25A2_
		call _LABEL_3C9C_
		ld a, (_RAM_C1F4_)
		cp $04
		ret nz
		ld a, (_RAM_DE01_)
		or a
		ret z
		ld hl, (_RAM_C14A_)
		ld a, l
		or h
		ret nz
		ld hl, _RAM_C102_
		ld (hl), $0A
		jp _LABEL_150D_
	
; 9th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1540_:	
		di
		call _LABEL_42_
		call _LABEL_5C80_
		call _LABEL_86F_
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $012C
		ld (_RAM_C10E_), hl
		ld hl, _RAM_C11B_
		ld de, _RAM_C11B_ + 1
		ld bc, $18FF
		ld (hl), $00
		ldir
		xor a
		ld (_RAM_DE2B_), a
		ld hl, _RAM_DE20_
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		ld (hl), a
		ld hl, _DATA_167A_
		ld de, $C000
		ld bc, $0020
		call _LABEL_91B_
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld hl, _DATA_8280_
		ld de, $6D40
		ld bc, $0280
		call _LABEL_91B_
		ld hl, _RAM_FFFF_
		ld (hl), $0B
		ld hl, _DATA_2C000_
		ld de, $6000
		call _LABEL_9F6_
		ld hl, _RAM_FFFF_
		ld (hl), $08
		ld hl, _DATA_20031_
		ld de, $7540
		call _LABEL_9F6_
		ld hl, _DATA_20000_
		ld de, $7F40
		call _LABEL_9F6_
		ld hl, _DATA_2115D_
		ld de, $6640
		call _LABEL_9F6_
		ld hl, _RAM_FFFF_
		ld (hl), $09
		ld hl, _DATA_24600_
		ld de, $4000
		call _LABEL_9F6_
		ld hl, _DATA_25DF0_
		ld de, $6FC0
		call _LABEL_9F6_
		ld hl, _DATA_24000_
		ld de, $7900
		ld bc, $0600
		call _LABEL_91B_
		ld a, $01
		ld (_RAM_C320_), a
		ld a, $0E
		ld (_RAM_C300_), a
		ld hl, _DATA_1654_
		ld ix, _RAM_C360_
		ld de, $0020
		ld b, $08
-:	
		ld a, (hl)
		ld (ix+0), a
		inc hl
		ld a, (hl)
		ld (ix+10), a
		inc hl
		ld (ix+19), $3A
		add ix, de
		djnz -
		ld hl, $3C00
		ld (_RAM_DE01_), hl
		call _LABEL_5203_
		ld a, $FF
		ld (_RAM_DE00_), a
		ld hl, $0000
		ld (_RAM_DE03_), hl
		ld (_RAM_DE05_), hl
		ld (_RAM_DE07_), hl
		ld hl, _DATA_1664_
		ld de, _RAM_DE09_
		ld bc, $0016
		ldir
		call _LABEL_2F4C_
		call _LABEL_48AC_
		call _LABEL_519B_
		call _LABEL_51DF_
		ld hl, $3C00
		ld (_RAM_C1F4_), hl
		ld a, (_RAM_C107_)
		ld (_RAM_C248_), a
		ld de, $8046
		rst $08	; _LABEL_8_
		ld de, $81A2
		rst $08	; _LABEL_8_
		ld de, $8920
		rst $08	; _LABEL_8_
		ei
		jp _LABEL_802_
	
; Data from 1654 to 1663 (16 bytes)	
_DATA_1654_:	
	.db $09 $08 $0A $08 $09 $14 $0A $14 $09 $1D $0A $1D $09 $24 $0A $24
	
; Data from 1664 to 1679 (22 bytes)	
_DATA_1664_:	
	.db $A5 $19 $A6 $19 $A7 $19 $00 $19 $B2 $19 $A8 $19 $B2 $19 $B2 $19
	.db $A9 $19 $B2 $19 $B2 $19
	
; Data from 167A to 168E (21 bytes)	
_DATA_167A_:	
	.db $38 $2A $2A $2A $2A $2A $2A $3F $3F $3F $2A $2A $2A $2F $00 $00
	.db $38 $3F $2A $00 $01
	
; 1st entry of Pointer Table from 5444 (indexed by unknown)	
; Data from 168F to 1699 (11 bytes)	
_DATA_168F_:	
	.db $06 $13 $1B $2F $0C $08 $04 $20 $30 $3C $2F
	
_LABEL_169A_:	
		ld hl, (_RAM_C1F4_)
		dec h
		jr nz, +
		ld h, $3C
		ld a, l
		cp $04
		jr nc, +
		inc l
		or a
		jp nz, +
		ld a, (_RAM_DE2D_)
		and $03
		add a, $81
		ld (_RAM_C000_), a
+:	
		ld (_RAM_C1F4_), hl
		ld a, l
		or a
		ret z
		dec a
		ret z
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, $16B1
		add hl, de
		ld de, $7BCC
		ld bc, $0404
		jp _LABEL_965_
	
	; Data from 16D1 to 1700 (48 bytes)
	.db $89 $19 $89 $1B $8A $19 $8B $19 $82 $19 $83 $19 $84 $19 $85 $19
	.db $7E $19 $7F $19 $8C $19 $8D $19 $8E $19 $8F $19 $84 $19 $85 $19
	.db $7E $19 $7F $19 $80 $19 $81 $19 $90 $19 $91 $19 $92 $19 $92 $1B
	
; 12th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1701_:	
		ld a, (_RAM_C112_)
		or a
		call nz, _LABEL_165_
_LABEL_1708_:	
		ld a, $0C
		call _LABEL_56_
		call _LABEL_2F6B_
		call _LABEL_47C7_
		call _LABEL_5027_
		call _LABEL_4F3F_
		call _LABEL_264D_
		call _LABEL_43B3_
		ld a, $0E
		call _LABEL_56_
		call _LABEL_4E4C_
		call _LABEL_25A2_
		call _LABEL_3C9C_
		ld a, (_RAM_C20C_)
		cpl
		ld (_RAM_C20C_), a
		call _LABEL_4BD4_
		ld a, (_RAM_DE1F_)
		or a
		call nz, _LABEL_3F7D_
		ld a, $10
		call _LABEL_56_
		call _LABEL_2F6B_
		call _LABEL_4574_
		call _LABEL_4E07_
		ld a, (_RAM_C242_)
		or a
		call nz, _LABEL_1EC4_
		ld a, $12
		call _LABEL_56_
		call _LABEL_3A2C_
		call _LABEL_3A6F_
		ld a, (_RAM_C1F8_)
		cp $01
		ret nz
		ld a, $02
		ld (_RAM_C1F8_), a
		ret
	
; 11th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_176A_:	
		ld a, $0A
		call _LABEL_56_
		ld de, $8076
		rst $08	; _LABEL_8_
		ld hl, _RAM_C102_
		inc (hl)
		xor a
		ld (_RAM_C11B_), a
		ld a, $00
		ld (_RAM_C300_), a
		ld a, $03
		ld (_RAM_C340_), a
		ld hl, $292A
		ld (_RAM_C21B_), hl
		ld hl, $293F
		ld (_RAM_C21D_), hl
		ret
	
_LABEL_1792_:	
		ld a, (_RAM_C21F_)
		or a
		jr z, +
		dec a
		ld (_RAM_C21F_), a
		and $07
		jp z, _LABEL_188D_
+:	
		ld hl, (_RAM_C14A_)
		ld a, h
		or l
		ret z
_LABEL_17A7_:	
		ld de, $C001
		rst $08	; _LABEL_8_
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ex de, hl
		ld hl, (_RAM_C14C_)
		add hl, de
		ld a, h
		cp $06
		jr c, +
		sub $06
		ld h, a
+:	
		ld (_RAM_C14C_), hl
		ld c, Port_VDPData
		and $07
		add a, a
		ld hl, $17D5
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, (_RAM_C21B_)
		jp (hl)
	
; Jump Table from 17D5 to 17E4 (8 entries, indexed by _RAM_C14D_)	
_DATA_17D5_:	
	.dw _LABEL_17E5_ _LABEL_1801_ _LABEL_181D_ _LABEL_1839_ _LABEL_1855_ _LABEL_1871_ _LABEL_17E5_ _LABEL_1801_
	
; 1st entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_17E5_:	
		ld hl, (_RAM_C21D_)
		out (c), e
		out (c), e
		out (c), e
		out (c), d
		out (c), d
		out (c), d
		out (c), l
		out (c), l
		out (c), l
		out (c), h
		out (c), h
		out (c), h
		ret
	
; 2nd entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_1801_:	
		ld hl, (_RAM_C21D_)
		out (c), e
		out (c), e
		out (c), d
		out (c), d
		out (c), d
		out (c), e
		out (c), l
		out (c), l
		out (c), h
		out (c), h
		out (c), h
		out (c), l
		ret
	
; 3rd entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_181D_:	
		ld hl, (_RAM_C21D_)
		out (c), e
		out (c), d
		out (c), d
		out (c), d
		out (c), e
		out (c), e
		out (c), l
		out (c), h
		out (c), h
		out (c), h
		out (c), l
		out (c), l
		ret
	
; 4th entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_1839_:	
		ld hl, (_RAM_C21D_)
		out (c), d
		out (c), d
		out (c), d
		out (c), e
		out (c), e
		out (c), e
		out (c), h
		out (c), h
		out (c), h
		out (c), l
		out (c), l
		out (c), l
		ret
	
; 5th entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_1855_:	
		ld hl, (_RAM_C21D_)
		out (c), d
		out (c), d
		out (c), e
		out (c), e
		out (c), e
		out (c), d
		out (c), h
		out (c), h
		out (c), l
		out (c), l
		out (c), l
		out (c), h
		ret
	
; 6th entry of Jump Table from 17D5 (indexed by _RAM_C14D_)	
_LABEL_1871_:	
		ld hl, (_RAM_C21D_)
		out (c), d
		out (c), e
		out (c), e
		out (c), e
		out (c), d
		out (c), d
		out (c), h
		out (c), l
		out (c), l
		out (c), l
		out (c), h
		out (c), h
		ret
	
_LABEL_188D_:	
		ld hl, _RAM_FFFF_
		ld (hl), $05
		ld hl, (_RAM_C220_)
		call _LABEL_18A1_
		ld (_RAM_C220_), hl
		ld hl, (_RAM_C14A_)
		jp _LABEL_17A7_
	
_LABEL_18A1_:	
		ld c, Port_VDPData
		ld de, $C000
		rst $08	; _LABEL_8_
		ld b, (hl)
		out (c), b
		inc hl
		ld de, $C010
		rst $08	; _LABEL_8_
		out (c), b
		ld de, $C00D
		rst $08	; _LABEL_8_
		ld b, (hl)
		out (c), b
		inc hl
		ld de, $C01F
		rst $08	; _LABEL_8_
		out (c), b
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C21B_), de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C21D_), de
		ret
	
; 14th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_18D0_:	
		ld a, $14
		call _LABEL_56_
		call _LABEL_25A2_
		call _LABEL_3C9C_
		ld a, (_RAM_C20C_)
		cpl
		ld (_RAM_C20C_), a
		ld a, (_RAM_C105_)
		and $30
		jr nz, +
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		ret nz
+:	
		ld hl, _RAM_C102_
		ld (hl), $0E
		ret
	
; 13th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_18F5_:	
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $012C
		ld (_RAM_C10E_), hl
		ld a, $FF
		ld (_RAM_C251_), a
		ret
	
; 16th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1905_:	
		ld a, $16
		call _LABEL_56_
		call _LABEL_25A2_
		ld a, (_RAM_C105_)
		and $30
		jr nz, +
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		ret nz
+:	
		ld hl, _RAM_C102_
		ld (hl), $10
		ret
	
; 15th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1920_:	
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $012C
		ld (_RAM_C10E_), hl
		di
		call _LABEL_42_
		ld hl, _RAM_C300_
		ld de, _RAM_C300_ + 1
		ld bc, $02FF
		ld (hl), $00
		ldir
		ld a, $1A
		ld (_RAM_C300_), a
		ld hl, _RAM_FFFF_
		ld (hl), $04
		ld hl, _DATA_13A00_
		ld de, $7900
		ld bc, $0600
		call _LABEL_91B_
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		ld hl, _DATA_3C000_
		ld de, $C000
		ld bc, $0020
		call _LABEL_91B_
		ld de, $8006
		rst $08	; _LABEL_8_
		ld de, $81A2
		rst $08	; _LABEL_8_
		ld de, $8800
		rst $08	; _LABEL_8_
		ei
		ld hl, _DATA_3C020_
		ld de, $4000
		call _LABEL_A23_
		ld hl, _DATA_3D747_
		ld de, $6000
		call _LABEL_A23_
		ld hl, _DATA_3E8C5_
		ld de, $7640
		call _LABEL_A23_
		jp _LABEL_802_
	
; 26th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_198D_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+4), $56
		ld (iy+2), $1D
		ld a, $01
		ld (_RAM_C22F_), a
_LABEL_19A0_:	
		ld (iy+1), $9D
		ld a, (_RAM_C226_)
		ld l, $23
		or a
		jp nz, +
		ld hl, (_RAM_C1A9_)
		ld e, $37
		call _LABEL_C42_
+:	
		ld (iy+22), l
		ld a, l
		or a
		ret nz
		set 7, (iy+18)
		ret
	
_LABEL_19C0_:	
		ld a, (_RAM_C227_)
		bit 0, a
		ld (iy+1), $9B
		jp nz, +
		ld (iy+1), $9C
+:	
		ld l, $13
		or a
		jp nz, +
		ld hl, (_RAM_C1A9_)
		ld e, $17
		call _LABEL_C42_
+:	
		ld (iy+22), l
		ld a, l
		or a
		ret nz
		set 7, (iy+18)
		ret
	
; 27th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_19E9_:	
		bit 7, (iy+18)
		call z, +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jp nz, +
		inc (iy+2)
		dec (iy+22)
		ret nz
		ld a, (_RAM_C226_)
		or a
		jp z, ++
		ld a, (_RAM_C227_)
		cp $01
		jp z, ++
		set 0, (iy+18)
		jp _LABEL_19C0_
	
+:	
		call +++
		ret nz
		ld a, (_RAM_C227_)
		or a
		jp z, ++
		res 0, (iy+18)
		ld a, (_RAM_C11D_)
		or a
		jp z, ++
		dec a
		ld (_RAM_C11D_), a
		ld hl, _RAM_C228_
		ld de, _RAM_C226_
		ld bc, $0008
		ldir
		jp _LABEL_19A0_
	
++:	
		set 7, (iy+18)
		ret
	
+++:	
		ld a, (_RAM_C227_)
		inc a
		jp z, +
		dec (iy+4)
		ld de, $0039
		jp ++
	
+:	
		inc (iy+4)
		ld de, $FFC7
++:	
		ld l, (iy+3)
		ld h, (iy+2)
		add hl, de
		ld (iy+3), l
		ld (iy+2), h
		dec (iy+22)
		ret
	
; 18th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1A6B_:	
		ld a, (_RAM_DE2B_)
		or a
		jp nz, _LABEL_1B5D_
		ld a, $18
		call _LABEL_56_
		ld hl, (_RAM_C233_)
		ld (hl), $09
		ld de, $0040
		add hl, de
		ld (hl), $09
		ld de, $0000
		ld hl, (_RAM_C106_)
		ld a, h
		or a
		jr z, ++
		ld a, l
		cp $60
		ld b, $A0
		jr c, +
		cp $A0
		ld b, $60
		jr nc, +
		xor a
		ld b, a
+:	
		add a, b
		ld e, a
		rlca
		sbc a, a
		ld d, a
++:	
		ld a, (_RAM_C104_)
		ld c, a
		ld hl, (_RAM_C235_)
		bit 2, c
		jr z, +
		ld de, $FFC0
+:	
		bit 3, c
		jr z, +
		ld de, $0040
+:	
		add hl, de
		ld a, h
		cp $F0
		jr c, +
		ld h, $1C
		jr ++
	
+:	
		cp $1D
		jr c, ++
		ld h, $00
++:	
		ld (_RAM_C235_), hl
		ld a, h
		add a, a
		ld hl, $D945
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld (_RAM_C233_), hl
		ld (hl), $01
		ld de, $0040
		add hl, de
		ld (hl), $01
		ld a, (_RAM_C236_)
		add a, $0B
		ld hl, (_RAM_C230_)
		ld (hl), a
		ld hl, (_RAM_C237_)
		ld (hl), a
		inc hl
		ld (hl), $01
		ld a, (_RAM_C105_)
		and $30
		jr z, _LABEL_1B42_
		ld a, (_RAM_C236_)
		cp $1B
		jr z, +
		cp $1C
		jp nc, _LABEL_1B5D_
		ld a, (_RAM_C232_)
		inc a
		ld (_RAM_C232_), a
		cp $03
		jp nc, _LABEL_1B5D_
		ld hl, (_RAM_C230_)
		inc hl
		ld (_RAM_C230_), hl
		ld hl, (_RAM_C237_)
		inc hl
		inc hl
		ld (_RAM_C237_), hl
		jr _LABEL_1B42_
	
+:	
		ld a, (_RAM_C232_)
		or a
		jr z, _LABEL_1B42_
		dec a
		ld (_RAM_C232_), a
		ld hl, (_RAM_C230_)
		ld (hl), $00
		dec hl
		ld (_RAM_C230_), hl
		ld hl, (_RAM_C237_)
		inc hl
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec hl
		dec hl
		ld (hl), d
		dec hl
		ld (hl), e
		dec hl
		dec hl
		ld (_RAM_C237_), hl
_LABEL_1B42_:	
		ld a, $1A
		call _LABEL_56_
		di
		ld hl, _RAM_D400_
		ld de, $7900
		ld bc, $0600
		call _LABEL_91B_
		ei
		ld hl, (_RAM_C10E_)
		ld a, h
		or l
		jp nz, _LABEL_1A6B_
_LABEL_1B5D_:	
		ld a, $18
		call _LABEL_56_
		ld a, (_RAM_C105_)
		and $30
		jr nz, +
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		jr nz, _LABEL_1B5D_
+:	
		ld hl, _RAM_C102_
		ld (hl), $00
		ld a, (_RAM_C236_)
		cp $1B
		ret c
		ld hl, (_RAM_C230_)
		ld (hl), $00
		ret
	
; 17th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1B81_:	
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $0708
		ld (_RAM_C10E_), hl
		di
		call _LABEL_42_
		call _LABEL_5C80_
		ld hl, _RAM_FFFF_
		ld (hl), $0D
		ld hl, _DATA_34674_
		ld de, $C000
		ld bc, $0020
		call _LABEL_91B_
		ld hl, _DATA_34000_
		ld de, _RAM_D400_
		ld bc, $0600
		ldir
		ld hl, _RAM_C000_
		ld (hl), $84
		ld de, $8006
		rst $08	; _LABEL_8_
		ld de, $81A2
		rst $08	; _LABEL_8_
		ld de, $8800
		rst $08	; _LABEL_8_
		ei
		ld hl, _DATA_34694_
		ld de, $4000
		call _LABEL_A23_
		ld hl, _DATA_356C4_
		ld de, $6000
		call _LABEL_A23_
		ld a, (_RAM_DE2B_)
		or a
		jp nz, _LABEL_1C94_
		ld a, $1A
		call _LABEL_56_
		di
		ld hl, _RAM_DFC3_
		ld b, $07
-:	
		ld de, _RAM_DE24_
		ld a, (de)
		sub (hl)
		dec de
		dec hl
		ld a, (de)
		sbc a, (hl)
		dec de
		dec hl
		ld a, (de)
		sbc a, (hl)
		dec de
		dec hl
		ld a, (de)
		sbc a, (hl)
		jr c, +
		ld a, $E3
		add a, l
		ld l, a
		ld a, $FF
		adc a, h
		ld h, a
		djnz -
+:	
		ld a, b
		ld (_RAM_C239_), a
		cp $07
		jr c, +
		ld hl, _DATA_1E04_
		ld de, _RAM_D94C_
		ld b, $0A
		call _LABEL_1D90_
		ld hl, _RAM_DE21_
		ld de, _RAM_C23A_
		call _LABEL_1CF8_
		ld hl, _RAM_C23A_
		ld de, _RAM_D962_
		ld b, $08
		call _LABEL_1D90_
		ld a, $FF
		jp _LABEL_1C94_
	
+:	
		ld de, _RAM_DFC0_
		ld hl, $DFCF
		ld (_RAM_C230_), hl
		ld hl, _RAM_D89A_
		ld (_RAM_C237_), hl
		cp $06
		jr nc, +
		ld l, b
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ex de, hl
		ld hl, $00C0
		or a
		sbc hl, de
		ld c, l
		ld b, h
		ld hl, $DF0F
		add hl, de
		ld (_RAM_C230_), hl
		ex de, hl
		add hl, hl
		add hl, hl
		ld de, $D59A
		add hl, de
		ld (_RAM_C237_), hl
		ld hl, _RAM_DFBF_
		ld de, _RAM_DFDF_
		lddr
		inc hl
		ex de, hl
+:	
		ld hl, _RAM_DE21_
		ld bc, $0004
		ldir
		ld a, (_RAM_C225_)
		add a, $9E
		ld (de), a
		inc de
		ld l, e
		ld h, d
		ld (hl), $00
		inc de
		ld bc, $001A
		ldir
		ld de, $FFFA
		add hl, de
		push hl
		pop ix
		ld a, (_RAM_C242_)
		or a
		call nz, _LABEL_1DA5_
		xor a
_LABEL_1C94_:	
		ei
		ld (_RAM_DE2B_), a
		ld hl, $0000
		ld (_RAM_C235_), hl
		xor a
		ld (_RAM_C232_), a
		ld hl, $D945
		ld (_RAM_C233_), hl
		ld a, (_RAM_DE2B_)
		or a
		jr nz, +
		ld hl, _DATA_34600_
		ld de, _RAM_D944_
		ld bc, $003A
		ldir
		ld de, _RAM_D984_
		ld c, $3A
		ldir
+:	
		call +
		call _LABEL_1D33_
		ld a, $1A
		call _LABEL_56_
		di
		ld hl, _RAM_D400_
		ld de, $7900
		ld bc, $0600
		call _LABEL_91B_
		ld de, $81E2
		rst $08	; _LABEL_8_
		ei
		ret
	
+:	
		ld de, _RAM_DF05_
		ld hl, _RAM_DF00_
		ld b, $07
-:	
		push bc
		push hl
		push de
		call _LABEL_1CF8_
		pop hl
		ld bc, $0020
		add hl, bc
		ex de, hl
		pop hl
		add hl, bc
		pop bc
		djnz -
		ret
	
_LABEL_1CF8_:	
		ld c, $00
		ld a, (hl)
		call +
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call +
		ld a, (hl)
		call +
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call +
		ld a, (hl)
		call +
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call +
		ld a, (hl)
		call +
		ld a, $01
		ld (de), a
		ret
	
+:	
		and $0F
		jr z, +
		ld c, $01
+:	
		add a, c
		ld (de), a
		inc de
		ret
	
_LABEL_1D33_:	
		ld hl, _RAM_DF05_
		ld de, _RAM_D586_
		ld bc, $0D00
-:	
		push bc
		push de
		ld a, c
		rrca
		jr c, +
		ld b, $1B
		call _LABEL_1D90_
		inc hl
		inc hl
		inc hl
		inc hl
		inc hl
+:	
		pop de
		ex de, hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop bc
		inc c
		djnz -
		ld hl, _RAM_C600_
		ld (_RAM_C117_), hl
		ld hl, _RAM_C680_
		ld (_RAM_C119_), hl
		ld iy, _RAM_C300_
		ld (iy+2), $90
		ld hl, _RAM_DF04_
		ld bc, $0727
-:	
		push bc
		push hl
		ld (iy+4), c
		ld a, (hl)
		or a
		ld (iy+1), a
		call nz, _LABEL_3ACA_
		pop hl
		pop bc
		ld de, $0020
		add hl, de
		ld a, c
		add a, $10
		ld c, a
		djnz -
		ld hl, (_RAM_C117_)
		ld (hl), $D0
		ret
	
_LABEL_1D90_:	
		ld c, $FF
-:	
		ld a, (hl)
		or a
		jr z, +
		ldi
		ld a, $01
		ld (de), a
		inc de
		djnz -
		ret
	
+:	
		inc hl
		inc de
		inc de
		djnz -
		ret
	
_LABEL_1DA5_:	
		ld hl, (_RAM_DE07_)
		ld de, $0E10
		xor a
		dec a
-:	
		inc a
		sbc hl, de
		jr nc, -
		add hl, de
		inc a
		ld (ix+0), a
		ld (ix+1), $28
		push hl
		ld e, $3C
		call _LABEL_C42_
		ld a, l
		ld h, $00
-:	
		inc h
		sub $0A
		jr nc, -
		add a, $0B
		ld (ix+2), h
		ld (ix+3), a
		ld (ix+4), $29
		ld h, l
		ld e, $3C
		call _LABEL_B17_
		pop de
		ex de, hl
		or a
		sbc hl, de
		ld a, l
		ld h, $00
-:	
		inc h
		sub $06
		jr nc, -
		add a, $06
		ld (ix+5), h
		ld hl, $1DFE
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, r
		and $01
		add a, (hl)
		ld (ix+6), a
		ret
	
	; Data from 1DFE to 1DFF (2 bytes)
	.db $01 $03
	
; 1st entry of Pointer Table from 5506 (indexed by unknown)	
; Data from 1E00 to 1E03 (4 bytes)	
_DATA_1E00_:	
	.db $05 $07 $09 $09
	
; Data from 1E04 to 1E0D (10 bytes)	
_DATA_1E04_:	
	.db $23 $19 $1F $1C $00 $1D $0D $19 $1C $0F
	
; 20th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1E0E_:	
		ld a, (_RAM_C112_)
		or a
		call nz, _LABEL_165_
		ld a, $1C
		call _LABEL_56_
		call _LABEL_25A2_
		ld hl, (_RAM_C10E_)
		ld a, l
		or h
		ret nz
		ld hl, _RAM_C102_
		ld (hl), $0E
		ret
	
; 19th entry of Jump Table from 10 (indexed by _RAM_C102_)	
_LABEL_1E29_:	
		ld hl, _RAM_C102_
		inc (hl)
		ld hl, $0E10
		ld (_RAM_C10E_), hl
		ld hl, _RAM_C300_
		ld de, _RAM_C300_ + 1
		ld bc, $02FF
		ld (hl), $00
		ldir
		ld a, (_RAM_C1F6_)
		cp $0A
		jp nz, +
		di
		ld de, $7F00
		rst $08	; _LABEL_8_
		push af
		pop af
		ld a, $D0
		out (Port_VDPData), a
		ei
		ld hl, _RAM_FFFF_
		ld (hl), $09
		ld hl, _DATA_26DA4_
		ld de, $6000
		call _LABEL_A23_
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		ld hl, _DATA_3FDA8_
		ld de, $7140
		call _LABEL_A23_
		ld hl, _RAM_C300_
		ld de, $0020
		ld b, $04
		ld a, $21
-:	
		ld (hl), a
		add hl, de
		add a, $02
		djnz -
		jp _LABEL_25A2_
	
+:	
		ld a, (_RAM_C1F6_)
		cp $0B
		jr nz, +
		ld hl, _RAM_FFFF_
		ld (hl), $0D
		ld hl, _DATA_37F34_
		ld de, $7140
		call _LABEL_A23_
+:	
		ld a, (_RAM_C1F6_)
		add a, $10
		call _LABEL_5390_
		ld a, (_RAM_C1F6_)
		sub $0A
		jr z, ++
		ld c, a
		ld a, $29
		dec c
		jr z, +
		ld a, $2F
		dec c
		jr z, +
		ld a, $34
+:	
		ld (_RAM_C300_), a
++:	
		ld a, $1F
		ld (_RAM_C320_), a
		ld a, $FF
		ld (_RAM_C250_), a
		jp _LABEL_25A2_
	
_LABEL_1EC4_:	
		ld a, (_RAM_C242_)
		or a
		ret z
		cp $01
		jp nz, +
		inc a
		ld (_RAM_C242_), a
		ld a, $14
		jp _LABEL_5390_
	
+:	
		cp $02
		jp nz, +
		ld a, (_RAM_C122_)
		or a
		ret nz
		ld hl, (_RAM_DE01_)
		ld a, h
		ld h, $FF
-:	
		sub $06
		inc h
		jp nc, -
		ld (_RAM_C243_), hl
		ld a, $1E
		ld (_RAM_C245_), a
		ld a, $03
		ld (_RAM_C242_), a
		ld a, $01
		ld (_RAM_C24E_), a
		ld a, (_RAM_C1F6_)
		add a, $0B
		jp _LABEL_5390_
	
+:	
		cp $03
		jp nz, +
		ld a, (_RAM_C24E_)
		or a
		ret nz
		ld a, (_RAM_C24C_)
		cp $01
		ret nz
		ld a, $FF
		ld (_RAM_C24A_), a
		ld a, $04
		ld (_RAM_C242_), a
		ret
	
+:	
		cp $04
		jp nz, +
		ld hl, (_RAM_C14A_)
		ld de, $0096
		or a
		sbc hl, de
		ret nc
		ld a, $05
		ld (_RAM_C242_), a
		ret
	
+:	
		cp $05
		jp nz, +
		ld hl, (_RAM_C14A_)
		ld de, $0064
		or a
		sbc hl, de
		ret nc
		ld a, $06
		ld (_RAM_C242_), a
		ret
	
+:	
		ld hl, (_RAM_C14A_)
		ld a, h
		or l
		ret nz
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		ld hl, _DATA_3EA78_
		ld de, _RAM_D500_
		ld bc, $0200
		ldir
		ld a, (_RAM_C1F6_)
		ld l, $00
		ld h, a
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld de, _DATA_3CE78_
		add hl, de
		ld de, _RAM_D700_
		ld bc, $0300
		ldir
		ld a, $FF
		ld (_RAM_C1B1_), a
		ld a, $12
		ld (_RAM_C102_), a
		ld de, $8006
		rst $08	; _LABEL_8_
		ld de, $81E2
		rst $08	; _LABEL_8_
		ret
	
_LABEL_1F8B_:	
		ld a, (_RAM_C24E_)
		or a
		ret z
		cp $01
		jp nz, +
		ld a, (_RAM_C108_)
		cp $12
		ret z
		ld a, $02
		ld (_RAM_C24E_), a
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		ld hl, _DATA_3E9FC_
		ld de, $7B50
		ld bc, $0224
		call _LABEL_965_
		ld de, $7A94
		ld bc, $021A
		call _LABEL_965_
		jp _LABEL_2011_
	
+:	
		cp $02
		jp nz, _LABEL_2005_
		ld a, (_RAM_C245_)
		or a
		jp z, +
		dec a
		ld (_RAM_C245_), a
		ret
	
+:	
		ld hl, (_RAM_C243_)
		ld a, h
		or a
		jr nz, ++
		ld h, $0A
		ld a, l
		or a
		jr nz, +
		ld a, $1E
		ld (_RAM_C245_), a
		ld a, $03
		ld (_RAM_C24E_), a
		ret
	
+:	
		sub $01
		daa
		ld l, a
++:	
		dec h
		ld (_RAM_C243_), hl
		bit 0, h
		jp nz, +
		ld a, $8D
		ld (_RAM_C000_), a
+:	
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		call _LABEL_2011_
		ld a, $54
		jp _LABEL_3EB7_
	
_LABEL_2005_:	
		ld a, (_RAM_C245_)
		dec a
		ld (_RAM_C245_), a
		ret nz
		ld (_RAM_C24E_), a
		ret
	
_LABEL_2011_:	
		ld bc, $0040
		ld hl, _DATA_2067_
		ld de, $7B4E
		rst $08	; _LABEL_8_
		ld a, (_RAM_C243_)
		rrca
		rrca
		rrca
		rrca
		and $0F
		jp z, +
		ld hl, _DATA_3E9D4_
+:	
		call +
		ld de, $7B50
		rst $08	; _LABEL_8_
		ld hl, _DATA_3E9D4_
		ld a, (_RAM_C243_)
		call +
		ld de, $7B54
		rst $08	; _LABEL_8_
		ld hl, _DATA_3E9D4_
		ld a, (_RAM_C244_)
+:	
		and $0F
		add a, a
		add a, a
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		push af
		pop af
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		ex de, hl
		add hl, bc
		ex de, hl
		rst $08	; _LABEL_8_
		push af
		pop af
		ld a, (hl)
		out (Port_VDPData), a
		inc hl
		push af
		pop af
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
; Data from 2067 to 206A (4 bytes)	
_DATA_2067_:	
	.db $00 $00 $00 $00
	
; 31st entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_206B_:	
		inc (iy+0)
		ld (iy+4), $9B
		ld (iy+2), $70
		ld (iy+1), $BD
		ld (iy+27), $7F
		jp _LABEL_3ACA_
	
; 32nd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2081_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, ++
		dec (iy+27)
		ret p
		ld (iy+27), $1F
		ld a, (_RAM_C1F6_)
		cp $0B
		ld c, $C1
		jr z, +
		inc c
+:	
		ld a, (iy+1)
		inc a
		cp c
		jr z, +
		ld (iy+1), a
		cp $C1
		ret nz
		ld a, $31
		ld (_RAM_C340_), a
		ret
	
+:	
		set 0, (iy+18)
		ret
	
++:	
		ld a, (_RAM_C1F6_)
		sub $0B
		ld hl, _DATA_20D3_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		ld (_RAM_C320_), a
		xor a
		ld (_RAM_C250_), a
		ld (_RAM_C332_), a
		ld (_RAM_C33B_), a
		ret
	
; Data from 20D3 to 20D6 (4 bytes)	
_DATA_20D3_:	
	.db $2B $2D $32 $32
	
; 33rd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_20D7_:	
		inc (iy+0)
		ld (iy+4), $A3
		ld (iy+2), $68
; 34th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_20E2_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		ret nz
		ld a, (_RAM_C364_)
		cp $98
		ld a, $D3
		jr nc, +
		inc a
+:	
		ld (iy+1), a
		ld a, (_RAM_C341_)
		cp $CF
		ret nz
		ld (iy+1), $D5
		set 0, (iy+18)
		ret
	
; 35th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2109_:	
		inc (iy+0)
		ld (iy+4), $9F
		ld (iy+2), $A0
		ld (iy+1), $D1
; 36th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2118_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, +
		ld a, (_RAM_C341_)
		cp $CF
		ret nz
		ld (iy+27), $1E
		set 0, (iy+18)
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+1), $D2
		ret
	
; 37th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_213C_:	
		inc (iy+0)
		ld (iy+4), $9F
		ld (iy+2), $FF
		ld (iy+1), $CD
		ret
	
; 38th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_214C_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, +
		dec (iy+27)
		ret nz
		ld (iy+27), $07
		ld (iy+19), $CD
		set 0, (iy+18)
		ret
	
+:	
		bit 1, (iy+18)
		ret nz
		ld hl, $0050
		call _LABEL_2183_
		ld a, (iy+2)
		cp $50
		ret nz
		ld (iy+1), $CF
		set 1, (iy+18)
		ret
	
_LABEL_2183_:	
		ld e, (iy+3)
		ld d, (iy+2)
		add hl, de
		ld (iy+3), l
		ld (iy+2), h
		dec (iy+27)
		ret p
		ld (iy+27), $07
		ld a, (iy+19)
		cp (iy+1)
		jr nz, +
		inc a
+:	
		ld (iy+1), a
		ret
	
; 39th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_21A5_:	
		inc (iy+0)
		ld (iy+4), $60
		ld (iy+2), $70
		ld (iy+1), $D0
		ld (iy+27), $0F
		jp _LABEL_3ACA_
	
; 40th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_21BB_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, _LABEL_2206_
		ld l, (iy+15)
		ld h, (iy+14)
		ld de, $0010
		add hl, de
		ld (iy+15), l
		ld (iy+14), h
		ld e, (iy+5)
		ld d, (iy+4)
		add hl, de
		ld (iy+5), l
		ld (iy+4), h
		ld a, h
		cp $98
		ret c
		ld hl, $FD00
		ld (iy+15), l
		ld (iy+14), h
		set 0, (iy+18)
		ld a, (_RAM_C301_)
		cp $D5
		ret nz
		ld (iy+0), $00
		ld hl, $00F0
		ld (_RAM_C10E_), hl
		ret
	
_LABEL_2206_:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		res 0, (iy+18)
		ret
	
; 41st entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2213_:	
		inc (iy+0)
		ld (iy+4), $99
		ld (iy+2), $98
		ld (iy+1), $D6
		ret
	
; 42nd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2223_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		ld a, (_RAM_C320_)
		cp $20
		jr z, +
		ld (iy+0), $00
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $D9
		jr c, +
		ld a, $D6
+:	
		ld (iy+1), a
		ret
	
; 43rd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_224A_:	
		inc (iy+0)
		xor a
		ld (iy+1), a
		jr +
	
; 44th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2253_:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		ld (iy+1), a
		cp $04
		jr nz, +
		ld (iy+0), $00
		ld hl, $00F0
		ld (_RAM_C10E_), hl
+:	
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		add a, a
		ld hl, _DATA_228E_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld de, $7DD6
		ld bc, $0514
		di
		call _LABEL_965_
		ei
		ret
	
; Pointer Table from 228E to 2297 (5 entries, indexed by unknown)	
_DATA_228E_:	
	.dw _DATA_3FB78_ _DATA_3FBDC_ _DATA_3FC40_ _DATA_3FCA4_ _DATA_3FD08_
	
; 45th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2298_:	
		inc (iy+0)
		ld (iy+4), $9B
		ld (iy+2), $7D
		ld (iy+1), $CB
; 46th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_22A7_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, +
		ld a, (_RAM_C301_)
		cp $DE
		ret nz
		ld (iy+1), $CC
		ld (iy+27), $1F
		set 0, (iy+18)
		ret
	
+:	
		bit 1, (iy+18)
		jr nz, +
		dec (iy+27)
		ret p
		ld (iy+27), $1F
		ld a, (_RAM_C301_)
		cp $E0
		ret nz
		ld (iy+1), $DF
		set 1, (iy+18)
		ret
	
+:	
		ld a, (_RAM_C301_)
		cp $DB
		jr nz, +
		ld (iy+0), $00
		ld hl, $00F0
		ld (_RAM_C10E_), hl
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $E2
		jr z, +
		ld a, $E1
+:	
		ld (iy+1), a
		ret
	
; 47th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_230A_:	
		ld a, (_RAM_C321_)
		cp $CB
		ret nz
		inc (iy+0)
		ld (iy+4), $9B
		ld (iy+2), $04
		ld (iy+19), $DC
; 48th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_231F_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 1, (iy+18)
		jr nz, +
		ld hl, $0050
		call _LABEL_2183_
		ld a, (iy+2)
		cp $6C
		ret nz
		ld (iy+1), $DE
		set 1, (iy+18)
		ret
	
+:	
		bit 2, (iy+18)
		jr nz, ++
		dec (iy+27)
		ret p
		ld a, (iy+1)
		cp $E0
		jr nz, +
		set 2, (iy+18)
		ret
	
+:	
		ld (iy+27), $1F
		ld a, (_RAM_C321_)
		cp $CC
		ret nz
		ld (iy+1), $E0
		ld (iy+19), $E3
		ret
	
++:	
		bit 3, (iy+18)
		jr nz, +
		ld hl, $FFB0
		call _LABEL_2183_
		ld a, (iy+2)
		or a
		ret nz
		ld (iy+2), $80
		ld (iy+1), $DA
		ld (iy+27), $0F
		set 3, (iy+18)
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $DB
		jr z, +
		ld a, $DA
+:	
		ld (iy+1), a
		ret z
		ld hl, _RAM_FFFF_
		ld (hl), $0F
		ld hl, _DATA_3FD6C_
		ld de, $7DDA
		ld bc, $050C
		di
		call _LABEL_965_
		ei
		ld (iy+0), $00
		ret
	
; 49th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_23B9_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, +
		ld (iy+4), $99
		ld (iy+2), $88
		ld (iy+19), $C2
		set 0, (iy+18)
+:	
		bit 1, (iy+18)
		jr nz, +
		ld hl, $0028
		call _LABEL_2183_
		ld a, (iy+2)
		cp $A0
		ret nz
		ld (iy+2), $A8
		ld (iy+1), $C4
		set 1, (iy+18)
		ret
	
+:	
		bit 2, (iy+18)
		jr nz, ++
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $C5
		jr z, +
		ld a, $C4
+:	
		ld (iy+1), a
		inc (iy+4)
		ld a, (iy+4)
		cp $9F
		ret nz
		ld (iy+1), $C6
		set 2, (iy+18)
		ret
	
++:	
		bit 3, (iy+18)
		jr nz, +
		ld a, (_RAM_C1F6_)
		cp $0D
		ret nz
		ld a, (_RAM_C301_)
		cp $E7
		ret nz
		ld (iy+1), $EE
		set 3, (iy+18)
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $1F
		ld a, (iy+1)
		cp $F1
		jr z, +
		inc a
+:	
		ld (iy+1), a
		ret
	
; 50th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_244F_:	
		inc (iy+0)
		ld (iy+4), $9B
		ld (iy+2), $80
		ld (iy+26), $03
; 51st entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_245E_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, ++
		dec (iy+27)
		ret p
		ld (iy+27), $3F
		ld a, (iy+1)
		inc a
		cp $CA
		jr z, +
		ld a, $C9
+:	
		ld (iy+1), a
		dec (iy+26)
		ret p
		set 0, (iy+18)
		ret
	
++:	
		bit 1, (iy+18)
		jr nz, ++
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $C8
		jr z, +
		ld a, $C7
+:	
		ld (iy+1), a
		inc (iy+4)
		ld a, (iy+4)
		cp $9F
		ret nz
		ld (iy+1), $CB
		set 1, (iy+18)
		ret
	
++:	
		bit 2, (iy+18)
		jr nz, +
		ld a, (_RAM_C302_)
		cp $60
		ret c
		ld (iy+1), $CC
		set 2, (iy+18)
		ret
	
+:	
		ld a, (_RAM_C1F6_)
		cp $0D
		jr nz, ++
		bit 3, (iy+18)
		jr nz, +
		ld a, (_RAM_C302_)
		cp $80
		ret c
		ld (iy+1), $EB
		ld a, (_RAM_C301_)
		cp $E8
		ret nz
		ld (iy+27), $1F
		set 3, (iy+18)
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $0F
		ld a, (iy+1)
		inc a
		cp $ED
		jr z, +
		ld a, $EC
+:	
		ld (iy+1), a
		ret
	
++:	
		bit 3, (iy+18)
		jr nz, +
		ld a, (_RAM_C301_)
		cp $E8
		ret nz
		ld (iy+1), $F2
		ld (iy+27), $1F
		set 3, (iy+18)
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+27), $1F
		ld a, (iy+1)
		cp $F4
		ret z
		inc a
		ld (iy+1), a
		cp $F4
		ret nz
		xor a
		ld (_RAM_C300_), a
		ret
	
; 52nd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2539_:	
		ld a, (_RAM_C321_)
		cp $C9
		ret nz
		ld a, (_RAM_C1F6_)
		cp $0D
		ld a, $70
		jr nz, +
		ld a, $98
+:	
		ld (iy+26), a
		inc (iy+0)
		ld (iy+4), $9F
		ld (iy+2), $FF
		ld (iy+19), $E5
; 53rd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_255C_:	
		call +
		jp _LABEL_3ACA_
	
+:	
		bit 0, (iy+18)
		jr nz, +
		ld hl, $0050
		call _LABEL_2183_
		ld a, (iy+2)
		cp (iy+26)
		ret nz
		ld (iy+1), $E7
		set 0, (iy+18)
		ret
	
+:	
		bit 1, (iy+18)
		ret nz
		dec (iy+27)
		ret p
		ld (iy+27), $14
		ld a, (iy+1)
		cp $EA
		jr z, +
		inc a
+:	
		ld (iy+1), a
		ret z
		set 1, (iy+18)
		ld hl, $012C
		ld (_RAM_C10E_), hl
		ret
	
_LABEL_25A2_:	
		ld hl, _RAM_C600_
		ld (_RAM_C117_), hl
		ld hl, _RAM_C680_
		ld (_RAM_C119_), hl
		ld iy, _RAM_C300_
		ld b, $10
-:	
		ld a, (iy+0)
		and $7F
		jr z, +
		push bc
		ld hl, _DATA_25DF_ - 2
		call _LABEL_15A_
		pop bc
+:	
		ld de, $0020
		add iy, de
		djnz -
		ld hl, (_RAM_C117_)
		ld (hl), $D0
		ret
	
_LABEL_25D0_:	
		push iy
		pop hl
		inc hl
		ld e, l
		ld d, h
		inc de
		ld (hl), $00
		ld bc, $001E
		ldir
		ret
	
; Jump Table from 25DF to 264C (55 entries, indexed by _RAM_C300_)	
_DATA_25DF_:	
	.dw _LABEL_2B21_ _LABEL_2B53_ _LABEL_2CDD_ _LABEL_2CF0_ _LABEL_344B_ _LABEL_344B_ _LABEL_344B_ _LABEL_3496_
	.dw _LABEL_34E1_ _LABEL_350F_ _LABEL_353D_ _LABEL_354E_ _LABEL_3636_ _LABEL_3636_ _LABEL_37C3_ _LABEL_3817_
	.dw _LABEL_386A_ _LABEL_38B6_ _LABEL_2D33_ _LABEL_2D70_ _LABEL_2DED_ _LABEL_2ECA_ _LABEL_2EF3_ _LABEL_36FA_
	.dw _LABEL_3723_ _LABEL_198D_ _LABEL_19E9_ _LABEL_35B2_ _LABEL_35CE_ _LABEL_35D5_ _LABEL_206B_ _LABEL_2081_
	.dw _LABEL_20D7_ _LABEL_20E2_ _LABEL_2109_ _LABEL_2118_ _LABEL_213C_ _LABEL_214C_ _LABEL_21A5_ _LABEL_21BB_
	.dw _LABEL_2213_ _LABEL_2223_ _LABEL_224A_ _LABEL_2253_ _LABEL_2298_ _LABEL_22A7_ _LABEL_230A_ _LABEL_231F_
	.dw _LABEL_23B9_ _LABEL_244F_ _LABEL_245E_ _LABEL_2539_ _LABEL_255C_ _LABEL_3781_ _LABEL_3790_
	
_LABEL_264D_:	
		ld a, (_RAM_C104_)
		and $0C
		ld hl, $0000
		bit 2, a
		jr z, +
		ld hl, $FF81
+:	
		bit 3, a
		jr z, +
		ld hl, $007F
+:	
		ld de, (_RAM_C106_)
		ld a, d
		or a
		jr z, ++
		ld a, e
		cp $60
		jr c, +
		cp $A0
		jr c, ++
+:	
		sub $80
		or l
		ld l, a
		rlca
		sbc a, a
		ld h, a
++:	
		ld a, (_RAM_C1D7_)
		or a
		jr z, +
		ld hl, $0000
+:	
		ld a, (_RAM_C222_)
		or a
		jr z, +
		ld a, (_RAM_C1EB_)
		cp $02
		jr nz, +
		ld a, (_RAM_C1E6_)
		or a
		ld hl, $007F
		jr z, +
		ld hl, $FF81
+:	
		ld (_RAM_C1EC_), hl
		ld a, (_RAM_C249_)
		or a
		call nz, _LABEL_2A52_
		ld de, (_RAM_C1EE_)
		or a
		sbc hl, de
		bit 7, h
		jr nz, +
		ld a, l
		cp $40
		jr c, ++
		ld hl, $0040
		jr ++
	
+:	
		ld a, l
		cp $C0
		jr nc, ++
		ld hl, $FFC0
++:	
		add hl, de
		ld (_RAM_C1EE_), hl
		ld c, l
		ld b, h
		ld a, (_RAM_C24E_)
		or a
		jp nz, _LABEL_2852_
		ld de, (_RAM_C14A_)
		ld a, e
		or d
		jp z, _LABEL_2753_
		ld a, (_RAM_C1EB_)
		or a
		jr nz, +
		ld hl, $007F
		or a
		sbc hl, de
		jr c, +
		call _LABEL_B6E_
		add hl, hl
		ld c, h
		ld b, e
+:	
		ld a, (_RAM_C1E2_)
		or a
		jp z, +
		sub $40
		jp nc, +
		ld hl, $0093
		ld de, (_RAM_C14A_)
		or a
		sbc hl, de
		jp nc, +
		push bc
		neg
		ld c, a
		ld b, $00
		xor a
		sub l
		ld e, a
		ld a, $00
		sbc a, h
		ld d, a
		call _LABEL_B90_
		ld de, $24C0
		ex de, hl
		or a
		sbc hl, de
		ex de, hl
		pop bc
		call _LABEL_B6E_
		ex de, hl
		ld a, d
		ld c, e
		ld de, $24C0
		call _LABEL_CF5_
		ld c, e
		ld b, d
+:	
		sra b
		rr c
		sra b
		rr c
		sra b
		rr c
		ld l, c
		ld h, b
		sra b
		rr c
		sra b
		rr c
		add hl, bc
		xor a
		sub l
		ld e, a
		ld a, $00
		sbc a, h
		ld d, a
		ld hl, (_RAM_C1E5_)
		add hl, de
		ld (_RAM_C1E5_), hl
_LABEL_2753_:	
		ld de, $0280
		ld a, (_RAM_C1E1_)
		or a
		jp z, ++
		ld hl, (_RAM_C1E5_)
		cp $02
		jp z, +
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
+:	
		sra h
		rr l
		sra h
		rr l
		sra h
		rr l
		sra h
		rr l
		sra h
		rr l
		ld a, (_RAM_C1E2_)
		ld e, a
		ld d, $00
		push de
		add hl, de
		ld c, l
		ld b, h
		ld de, $0280
		call _LABEL_B90_
		ex de, hl
		ld a, d
		ld c, e
		pop de
		call _LABEL_D2B_
++:	
		ld bc, (_RAM_C14A_)
		call _LABEL_B90_
		ld d, e
		ld e, h
		ld hl, (_RAM_C1A8_)
		add hl, de
		ld (_RAM_C1A8_), hl
		ld a, (_RAM_C1AA_)
		adc a, $00
		ld (_RAM_C1AA_), a
		ld hl, $0000
		ld (_RAM_C1AE_), hl
		ld a, (_RAM_C1E1_)
		or a
		jp nz, _LABEL_27F9_
		ld a, (_RAM_C1FA_)
		inc a
		jp nz, _LABEL_2852_
		ld hl, (_RAM_C1B1_)
		ld de, $0007
		or a
		sbc hl, de
		ld a, h
		rrca
		rrca
		ccf
		sbc a, a
		ld b, a
		ld a, $01
		or b
		add a, a
		add a, l
		ld l, a
		ld a, h
		adc a, b
		and $03
		ld h, a
		ld a, l
		add a, $02
		add hl, de
		ld (_RAM_C1B1_), hl
		cp $04
		jp nc, _LABEL_2852_
		xor a
		ld (_RAM_C1B0_), a
		ld (_RAM_C1FA_), a
		ld hl, $0007
		ld (_RAM_C1B1_), hl
		jp _LABEL_2852_
	
_LABEL_27F9_:	
		ld bc, $00A2
		call _LABEL_B90_
		ex de, hl
		ld a, d
		ld c, e
		ld de, (_RAM_C1E2_)
		ld d, $00
		call _LABEL_D2B_
		ld a, (_RAM_C1E1_)
		cp $02
		jp nz, +
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
+:	
		ld (_RAM_C1AE_), de
		ld a, (_RAM_C1E2_)
		cp $7F
		jr c, +
		ld a, $7F
+:	
		ld e, a
		ld hl, $0443
		call _LABEL_C42_
		dec hl
		ex de, hl
		ld bc, (_RAM_C14A_)
		call _LABEL_B90_
		ex de, hl
		ld a, d
		ld c, e
		ld de, $00DC
		call _LABEL_CF5_
		ld a, (_RAM_C1E1_)
		cp $02
		jp nz, +
		xor a
		sub e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		jp +
	
_LABEL_2852_:	
		ld de, $0000
+:	
		ld hl, (_RAM_C217_)
		ex de, hl
		or a
		sbc hl, de
		bit 7, h
		jp nz, +
		ld a, l
		cp $05
		jr c, ++
		ld hl, $0005
		jr ++
	
+:	
		ld a, l
		cp $FB
		jr nc, ++
		ld hl, $FFFB
++:	
		add hl, de
		ld (_RAM_C217_), hl
		ld de, (_RAM_C1E5_)
		add hl, de
		ld (_RAM_C1E5_), hl
		call _LABEL_29F3_
		call _LABEL_2A08_
		call _LABEL_29D3_
		call _LABEL_294B_
		ld a, (_RAM_C222_)
		or a
		call nz, +
		jp _LABEL_28FC_
	
+:	
		dec a
		jp z, ++
		ld hl, (_RAM_C1E9_)
		bit 7, h
		jp z, +
		ld de, $0008
		add hl, de
		ld (_RAM_C1E9_), hl
		ret nc
		ld hl, $0000
		ld (_RAM_C1E9_), hl
		ret
	
+:	
		ld de, $FFF8
		add hl, de
		ld (_RAM_C1E9_), hl
		ret c
		ld hl, $0000
		ld (_RAM_C1E9_), hl
		ret
	
++:	
		ld hl, (_RAM_C1E5_)
		ld de, (_RAM_C1E9_)
		or a
		sbc hl, de
		jp p, +
		ld hl, $FFF8
		add hl, de
		ld (_RAM_C1E9_), hl
		ld de, (_RAM_C1E5_)
		or a
		sbc hl, de
		ret p
		ld (_RAM_C1E9_), de
		xor a
		ld (_RAM_C222_), a
		ret
	
+:	
		ld hl, $0008
		add hl, de
		ld (_RAM_C1E9_), hl
		ld de, (_RAM_C1E5_)
		or a
		sbc hl, de
		ret m
		ld (_RAM_C1E9_), de
		xor a
		ld (_RAM_C222_), a
		ret
	
_LABEL_28FC_:	
		ld a, (_RAM_C320_)
		cp $02
		jp nz, +
		ld a, (_RAM_C1D7_)
		or a
		call nz, ++
+:	
		ld a, (_RAM_C222_)
		or a
		ret nz
		ld hl, (_RAM_C1E5_)
		ld (_RAM_C1E9_), hl
		ret
	
++:	
		ld hl, (_RAM_C1E5_)
		bit 7, h
		jr z, +
		ld de, $0008
		add hl, de
		ld (_RAM_C1E5_), hl
		ret nc
		jp ++
	
+:	
		ld de, $FFF8
		add hl, de
		ld (_RAM_C1E5_), hl
		ret c
++:	
		ld hl, $0000
		ld (_RAM_C1E5_), hl
		xor a
		ld (_RAM_C1D7_), a
		ld (_RAM_C1CF_), a
		inc a
		ld (_RAM_C320_), a
		ld a, $1E
		ld (_RAM_C1D9_), a
		ld (_RAM_C1DB_), a
		ret
	
_LABEL_294B_:	
		ld a, (_RAM_C1E1_)
		or a
		jp z, _LABEL_29B4_
		ld a, (_RAM_C1EC_)
		or a
		jp p, +
		neg
+:	
		cp $20
		jp c, _LABEL_29B4_
		ld bc, $8000
		ld hl, (_RAM_C1E7_)
		add hl, bc
		ex de, hl
		ld hl, (_RAM_C1E5_)
		add hl, bc
		or a
		sbc hl, de
		jp z, _LABEL_29B4_
		jp nc, +
		ld a, (_RAM_C1EC_)
		or a
		jp p, _LABEL_29B4_
		ld a, (_RAM_C1E1_)
		cp $01
		jp z, _LABEL_29B4_
		ld (_RAM_C1CC_), a
		ld a, (_RAM_C1D7_)
		or a
		jp nz, _LABEL_29B4_
		ld hl, _RAM_C000_
		ld (hl), $87
		jp _LABEL_29B4_
	
+:	
		ld a, (_RAM_C1EC_)
		or a
		jp m, _LABEL_29B4_
		ld a, (_RAM_C1E1_)
		cp $02
		jp z, _LABEL_29B4_
		ld (_RAM_C1CC_), a
		ld a, (_RAM_C1D7_)
		or a
		jp nz, _LABEL_29B4_
		ld hl, _RAM_C000_
		ld (hl), $87
_LABEL_29B4_:	
		ld hl, (_RAM_C1E5_)
		ld (_RAM_C1E7_), hl
		ld a, (_RAM_C1EB_)
		or a
		ret nz
		ld hl, (_RAM_C14A_)
		srl h
		rr l
		srl h
		rr l
		ld a, l
		and $FC
		ret z
		sub $04
		jp _LABEL_3EB7_
	
_LABEL_29D3_:	
		ld hl, (_RAM_C1E5_)
		bit 7, h
		jp nz, +
		ld de, $00C8
		or a
		sbc hl, de
		ret c
		ld (_RAM_C1E5_), de
		ret
	
+:	
		ld de, $FF38
		or a
		sbc hl, de
		ret nc
		ld (_RAM_C1E5_), de
		ret
	
_LABEL_29F3_:	
		ld a, (_RAM_C1DD_)
		or a
		ret z
		dec a
		ld (_RAM_C1DD_), a
		ld de, (_RAM_C1DF_)
		ld hl, (_RAM_C1E5_)
		add hl, de
		ld (_RAM_C1E5_), hl
		ret
	
_LABEL_2A08_:	
		ld a, (_RAM_C1B4_)
		sub $12
		jr nc, +
		xor a
+:	
		add a, a
		ld hl, _DATA_2A4A_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld b, (hl)
		inc hl
		ld c, (hl)
		ld hl, (_RAM_C1E5_)
		ld a, l
		bit 7, h
		jp z, +
		neg
+:	
		ld l, $00
		cp b
		jp c, +
		inc l
		cp c
		jp c, +
		inc l
+:	
		ld a, l
		ld (_RAM_C1EB_), a
		or a
		ret z
		ld a, (_RAM_C1D7_)
		or a
		ret nz
		ld hl, (_RAM_C14A_)
		ld a, h
		or l
		ret z
		ld hl, _RAM_C000_
		ld (hl), $88
		ret
	
; Data from 2A4A to 2A4E (5 bytes)	
_DATA_2A4A_:	
	.db $6F $98 $7F $A8 $87
	
; 1st entry of Pointer Table from 5489 (indexed by unknown)	
; Data from 2A4F to 2A51 (3 bytes)	
_DATA_2A4F_:	
	.db $B3 $97 $BD
	
_LABEL_2A52_:	
		ld a, (_RAM_C24C_)
		or a
		jp z, +++++
		cp $01
		jp z, +++
		ld hl, (_RAM_C1E5_)
		bit 7, h
		jp z, +
		ld de, $0008
		add hl, de
		ccf
		jp ++
	
+:	
		ld de, $FFF8
		add hl, de
++:	
		ld (_RAM_C1E5_), hl
		jp c, ++++
+++:	
		ld a, $01
		ld (_RAM_C24C_), a
		ld hl, $0000
		ld (_RAM_C1E5_), hl
++++:	
		ld hl, $0000
		ld (_RAM_C1EC_), hl
		ret
	
+++++:	
		ld a, (_RAM_C1EB_)
		or a
		jp z, ++
		ld a, (_RAM_C1E6_)
		or a
		ld hl, $007F
		jp z, +
		ld hl, $FF81
+:	
		ld (_RAM_C1EC_), hl
		ret
	
++:	
		ld hl, _RAM_FFFF_
		ld (hl), $03
		ld a, (_RAM_C1E1_)
		or a
		ld bc, $FFFA
		jp nz, +
		ld bc, $FFD0
+:	
		ld hl, (_RAM_C1E3_)
		ld e, (hl)
		inc hl
		ld d, (hl)
		ex de, hl
		add hl, bc
		ld bc, (_RAM_C1A9_)
		or a
		sbc hl, bc
		jp nc, +
		inc de
		ld a, (de)
		or a
		jp nz, +
		ld a, (_RAM_C1E1_)
+:	
		ld hl, $0000
		dec a
		jr nz, +
		ld hl, $FFA0
+:	
		dec a
		jr nz, +
		ld hl, $0060
+:	
		bit 7, h
		ld de, $FF81
		jp z, +
		ld de, $0000
+:	
		ld bc, (_RAM_C1E5_)
		or a
		sbc hl, bc
		jp p, ++
		bit 7, d
		ld de, $007F
		jp z, +
		ld de, $0000
+:	
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
++:	
		ld a, (_RAM_C1E1_)
		or a
		jp nz, +
		sra d
		rr e
+:	
		ld bc, $000F
		or a
		sbc hl, bc
		jp nc, +
		ld de, $0000
+:	
		ex de, hl
		ld (_RAM_C1EC_), hl
		ret
	
; 1st entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2B21_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+4), $BF
		ld (iy+2), $80
		ld (iy+10), $2F
		ld (iy+1), $02
		ret
	
_LABEL_2B38_:	
		ld hl, (_RAM_C1E5_)
		ld de, (_RAM_C1E9_)
		or a
		sbc hl, de
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld de, $0080
		add hl, de
		ld (iy+2), l
		ld a, h
		or a
		ret
	
; 2nd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2B53_:	
		ld a, (_RAM_C1D7_)
		or a
		ret nz
		ld a, (_RAM_C251_)
		or a
		jr nz, +
		ld a, (_RAM_C1CF_)
		or a
		call nz, ++
+:	
		call _LABEL_2B38_
		ret nz
		jp _LABEL_3ACA_
	
++:	
		ld a, (_RAM_C242_)
		or a
		jp z, ++
		cp $05
		ld c, $11
		jp z, +
		cp $06
		jp nz, ++
		dec c
+:	
		ld (iy+1), c
		ret
	
++:	
		ld c, $01
		ld a, (_RAM_C1EC_)
		or a
		jp z, +
		ld c, $04
		jp m, +
		ld c, $07
+:	
		ld a, (_RAM_C1A1_)
		add a, c
		ld (iy+1), a
		call _LABEL_39D6_
		or a
		jp z, _LABEL_2C69_
		ld hl, _RAM_C000_
		ld (hl), $89
		ld a, (ix+0)
		cp $0F
		jp c, _LABEL_2BF3_
		cp $1E
		jp z, _LABEL_2BF3_
		xor a
		ld (_RAM_C361_), a
		ld (_RAM_C381_), a
		ld (_RAM_C206_), a
		ld (_RAM_C207_), a
		ld a, (iy+2)
		cp (ix+2)
		ld hl, $000C
		jr c, +
		ld hl, $FFF4
+:	
		ld (_RAM_C1DF_), hl
		ld a, $0A
		ld (_RAM_C1DD_), a
		ld a, (ix+29)
		sub $50
		ld l, a
		ld h, $00
		ld (_RAM_C14A_), hl
		ld a, r
		and $03
		ld a, $13
		jr nz, +
		inc a
+:	
		ld (iy+0), a
		ld (iy+28), $07
		ret
	
_LABEL_2BF3_:	
		ld a, $FF
		ld (_RAM_C1D7_), a
		ld de, (_RAM_C14A_)
		ld c, $15
		ld hl, $00C8
		or a
		sbc hl, de
		jr c, +
		inc c
		ld (iy+28), $0F
		ld hl, $0096
		or a
		sbc hl, de
		jr c, ++
		ld (iy+28), $07
		ld hl, $0064
		or a
		sbc hl, de
		jr c, ++
		ld (iy+0), $17
		ret
	
+:	
		xor a
		ld (_RAM_C360_), a
		ld (_RAM_C380_), a
++:	
		xor a
		ld (_RAM_C361_), a
		ld (_RAM_C381_), a
		ld (_RAM_C206_), a
		ld (_RAM_C207_), a
		ld a, (ix+0)
		cp $1E
		jp nz, +
		ld a, (_RAM_C1E6_)
		or a
		ld hl, $0018
		jr nz, ++
		ld hl, $FFE8
		jp ++
	
+:	
		ld a, (iy+2)
		cp (ix+2)
		ld hl, $0018
		jr c, ++
		ld hl, $FFE8
++:	
		ld (_RAM_C1DF_), hl
		ld a, $14
		ld (_RAM_C1DD_), a
		ld (iy+0), c
		ret
	
_LABEL_2C69_:	
		ld a, (_RAM_C1EB_)
		or a
		jp nz, +
		ld (iy+4), $BF
		ret
	
+:	
		dec a
		jp nz, _LABEL_2CB9_
		ld de, (_RAM_C14A_)
		ld hl, $000A
		or a
		sbc hl, de
		ret nc
		ld hl, $003C
		or a
		sbc hl, de
		jp nc, _LABEL_2C9D_
		ld hl, $0078
		or a
		sbc hl, de
		jp nc, _LABEL_2CA6_
		ld a, r
		rrca
		ret nc
		jp _LABEL_2CAB_
	
_LABEL_2C9D_:	
		ld a, r
		ld b, a
		and $03
		ret nz
		jp _LABEL_2CAB_
	
_LABEL_2CA6_:	
		ld a, r
		and $01
		ret nz
_LABEL_2CAB_:	
		ld a, (iy+4)
		inc a
		bit 0, a
		jr nz, +
		sub $02
+:	
		ld (iy+4), a
		ret
	
_LABEL_2CB9_:	
		ld de, (_RAM_C14A_)
		ld hl, $000A
		or a
		sbc hl, de
		ret nc
		ld hl, $001E
		or a
		sbc hl, de
		jp nc, _LABEL_2C9D_
		ld hl, $003C
		or a
		sbc hl, de
		jp nc, _LABEL_2CA6_
		ld a, r
		rrca
		ret nc
		jp _LABEL_2CAB_
	
; 3rd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2CDD_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+4), $BF
		ld (iy+2), $80
		ld (iy+1), $1A
		ret
	
; 4th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2CF0_:	
		ld a, (_RAM_C321_)
		cp $0A
		ret nc
		ld a, (_RAM_C1DD_)
		or a
		jp nz, +
		ld a, (_RAM_C1CC_)
		or a
		ret z
		xor a
		ld (_RAM_C1CC_), a
+:	
		ld a, (_RAM_C322_)
		ld (iy+2), a
		ld a, (_RAM_C251_)
		or a
		jp nz, _LABEL_3ACA_
		ld a, (iy+1)
		dec a
		cp $1A
		jr z, +
		ld a, $1B
+:	
		ld (iy+1), a
		jp _LABEL_3ACA_
	
_LABEL_2D23_:	
		ld de, (_RAM_C14A_)
		ld bc, $00F8
		call _LABEL_B90_
		ld l, h
		ld h, e
		ld (_RAM_C14A_), hl
		ret
	
; 19th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2D33_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, +
		call ++
		call _LABEL_2D23_
+:	
		call _LABEL_2B38_
		ret nz
		jp _LABEL_3ACA_
	
++:	
		bit 7, (iy+18)
		jp nz, ++
		set 7, (iy+18)
		ld a, (_RAM_C1E0_)
		rlca
		ld c, $04
		jr c, +
		ld c, $07
+:	
		ld a, (_RAM_C1A1_)
		add a, c
		ld (iy+1), a
++:	
		ld a, (_RAM_C1DD_)
		or a
		ret nz
		ld (iy+0), $02
		ld (iy+18), $00
		ret
	
; 20th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2D70_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, +
		call _LABEL_2D83_
		call _LABEL_2D23_
+:	
		call _LABEL_2B38_
		ret nz
		jp _LABEL_3ACA_
	
_LABEL_2D83_:	
		bit 7, (iy+18)
		jp nz, ++
		set 7, (iy+18)
		ld a, (_RAM_C1E0_)
		rlca
		jr c, +
		ld (iy+26), $FF
		res 0, (iy+18)
		jp ++
	
+:	
		ld (iy+26), $00
		set 0, (iy+18)
++:	
		bit 0, (iy+18)
		jp nz, +
		dec (iy+28)
		jp m, ++
		ld a, (iy+26)
		inc a
		and $07
		ld (iy+26), a
		add a, $0A
		ld (iy+1), a
		ret
	
+:	
		dec (iy+28)
		jp m, ++
		ld a, (iy+26)
		dec a
		and $07
		ld (iy+26), a
		add a, $0A
		ld (iy+1), a
		ret
	
++:	
		ld a, (_RAM_C1D7_)
		or a
		jp z, +
		ld a, (_RAM_C14A_)
		or a
		ret nz
+:	
		ld (iy+0), $02
		ld (iy+18), $00
		ret
	
; 21st entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2DED_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, +
		call ++
		call _LABEL_2D23_
+:	
		call _LABEL_2B38_
		ret nz
		call _LABEL_39D6_
		or a
		jp z, _LABEL_3C79_
		ld a, (_RAM_C1E6_)
		or a
		ld hl, $000C
		jr nz, +
		ld hl, $FFF4
+:	
		ld (_RAM_C1DF_), hl
		jp _LABEL_3C79_
	
++:	
		bit 7, (iy+18)
		jp nz, +
		set 7, (iy+18)
		ld (iy+27), $04
		ld (iy+14), $F0
		ld (iy+1), $12
+:	
		bit 0, (iy+18)
		jp nz, ++
		dec (iy+27)
		jp p, +
		ld (iy+27), $03
		inc (iy+1)
		dec (iy+10)
+:	
		call _LABEL_2EBB_
		bit 7, (iy+14)
		ret nz
		cp $B0
		ret c
		set 0, (iy+18)
		ld (iy+14), $F4
		ld hl, _RAM_C000_
		ld (hl), $8A
		ret
	
++:	
		bit 1, (iy+18)
		jp nz, ++
		dec (iy+27)
		jp p, +
		ld (iy+27), $03
		inc (iy+1)
		dec (iy+10)
+:	
		call _LABEL_2EBB_
		bit 7, (iy+14)
		ret nz
		cp $A4
		ret c
		set 1, (iy+18)
		ld hl, _RAM_C000_
		ld (hl), $8A
		ret
	
++:	
		bit 2, (iy+18)
		jp nz, +
		inc (iy+1)
		dec (iy+10)
		ld a, (iy+1)
		cp $19
		ret nz
		set 2, (iy+18)
		ld (iy+27), $0F
		ld hl, _RAM_C000_
		ld (hl), $8A
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+0), $02
		ld (iy+18), $00
		ld (iy+10), $2F
		ret
	
_LABEL_2EBB_:	
		ld a, (iy+14)
		add a, $02
		ld (iy+14), a
		add a, (iy+4)
		ld (iy+4), a
		ret
	
; 22nd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2ECA_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, +
		call _LABEL_2D83_
		call _LABEL_2D23_
+:	
		call _LABEL_2B38_
		ret nz
		call _LABEL_39D6_
		or a
		jp z, _LABEL_3ACA_
		ld a, (_RAM_C1E6_)
		or a
		ld hl, $000C
		jr nz, +
		ld hl, $FFF4
+:	
		ld (_RAM_C1DF_), hl
		jp _LABEL_3ACA_
	
; 23rd entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_2EF3_:	
		ld a, (_RAM_C251_)
		or a
		call z, +
		call _LABEL_2B38_
		ret nz
		jp _LABEL_3ACA_
	
+:	
		bit 7, (iy+18)
		jp nz, +
		set 7, (iy+18)
		ld a, (_RAM_C14A_)
		rrca
		rrca
		rrca
		rrca
		and $0F
		neg
		ld (iy+14), a
		ld hl, $0000
		ld (_RAM_C14A_), hl
+:	
		bit 0, (iy+18)
		jp nz, +
		call _LABEL_2EBB_
		bit 7, (iy+14)
		ret nz
		cp $BF
		ret c
		ld (iy+4), $BF
		ld (iy+27), $0F
		set 0, (iy+18)
		ret
	
+:	
		dec (iy+27)
		ret p
		ld (iy+0), $02
		ld (iy+18), $00
		ret
	
_LABEL_2F4C_:	
		ld hl, $0000
		ld (_RAM_C1C0_), hl
		ld hl, $1000
		ld (_RAM_C1BC_), hl
		ld hl, $001F
		ld (_RAM_C1BE_), hl
		ld hl, $001F
		ld (_RAM_C1B8_), hl
		ld hl, $00C1
		ld (_RAM_C1CD_), hl
		ret
	
_LABEL_2F6B_:	
		ld hl, _RAM_FFFF_
		ld (hl), $09
		ld a, (_RAM_DE2B_)
		or a
		jp nz, +
		ld a, (_RAM_C104_)
		ld c, a
		ld a, (_RAM_C107_)
		or a
		jp nz, ++
		ld a, (_RAM_C248_)
		or a
		jp z, +++
+:	
		ld c, $20
		jp ++++
	
++:	
		bit 5, c
		ld c, $10
		jp z, ++++
		ld c, $20
		jp ++++
	
+++:	
		ld a, (_RAM_C1C0_)
		bit 0, c
		jp z, +
		ld a, $00
+:	
		bit 1, c
		jp z, +
		ld a, $01
+:	
		ld (_RAM_C1C0_), a
++++:	
		bit 4, c
		ld hl, $0000
		jp z, +
		ld hl, $00FF
+:	
		ld (_RAM_C1C5_), hl
		bit 5, c
		ld hl, $0000
		jp z, ++
		ld hl, $00FF
		ld a, (_RAM_C1EB_)
		or a
		jp z, ++
		ld b, a
		ld hl, $0099
		ld a, (_RAM_C1C0_)
		or a
		jp z, +
		ld hl, $004C
+:	
		ld a, b
		cp $02
		jp z, ++
		ld e, l
		ld d, h
		add hl, hl
		srl d
		rr e
		add hl, de
++:	
		ld a, (_RAM_C1DD_)
		or a
		jp nz, +
		ld a, (_RAM_C242_)
		or a
		jp nz, ++
		ld a, (_RAM_DE01_)
		or a
		jp nz, ++
+:	
		ld hl, $0000
++:	
		ld (_RAM_C1C3_), hl
		ld a, (_RAM_C248_)
		or a
		jp z, ++
		ld hl, (_RAM_C14A_)
		ld de, $00A0
		or a
		sbc hl, de
		ld a, $00
		jr c, +
		inc a
+:	
		ld (_RAM_C1C0_), a
		ld hl, $0000
		ld a, (_RAM_C24A_)
		or a
		jp z, +
		ld hl, $00FF
+:	
		ld (_RAM_C1C5_), hl
++:	
		ld a, (_RAM_C1D7_)
		or a
		jp nz, _LABEL_312C_
		ld de, (_RAM_C1BC_)
		ld hl, (_RAM_C1B8_)
		ld a, h
		ld c, l
		ld hl, (_RAM_C1BA_)
		call _LABEL_D2B_
		ld a, (_RAM_C1CF_)
		or a
		jp nz, +
		call _LABEL_3195_
		jp ++
	
+:	
		ld a, (_RAM_C1C2_)
		or a
		call z, _LABEL_33B9_
++:	
		ld hl, (_RAM_C1BE_)
		add hl, hl
		ld bc, _DATA_27D69_
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld (_RAM_C1BC_), bc
		call _LABEL_B90_
		push de
		push hl
		ld a, (_RAM_C1C2_)
		or a
		jp z, +
		call _LABEL_31F8_
		jp +++
	
+:	
		ld hl, (_RAM_C1C3_)
		or a
		sbc hl, de
		jp z, ++
		jp nc, +
		call _LABEL_32AA_
		jp +++
	
+:	
		call _LABEL_3259_
		jp +++
	
++:	
		ld hl, $0000
		ld de, $0000
+++:	
		ld a, (_RAM_C1CB_)
		or a
		call nz, _LABEL_3152_
		call _LABEL_3438_
		pop bc
		ld (_RAM_C1C7_), hl
		add hl, bc
		ex de, hl
		pop bc
		ld (_RAM_C1C9_), hl
		adc hl, bc
		bit 7, h
		jp z, +
		ld hl, $0000
		ld de, $0000
+:	
		push hl
		ld bc, $013C
		or a
		sbc hl, bc
		pop hl
		jp c, +
		ld hl, $013C
		ld de, $0000
+:	
		ld (_RAM_C1B8_), de
		ld (_RAM_C1BA_), hl
		call _LABEL_32F3_
		ld a, (_RAM_C1CF_)
		or a
		jp nz, +
		ld hl, $0000
		ld (_RAM_C14A_), hl
		jp _LABEL_312B_
	
+:	
		ld hl, (_RAM_C14A_)
		or a
		sbc hl, de
		ex de, hl
		jp z, ++
		jp nc, +
		ex de, hl
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld bc, $0002
		sbc hl, bc
		ex de, hl
		jp c, ++
		ld hl, (_RAM_C14A_)
		add hl, bc
		jp ++
	
+:	
		ld bc, $0002
		ld a, (_RAM_C1C5_)
		or a
		jp z, +
		ld bc, $0008
+:	
		ex de, hl
		or a
		sbc hl, bc
		ex de, hl
		jp c, ++
		ld hl, (_RAM_C14A_)
		or a
		sbc hl, bc
		jp nc, ++
		ld hl, $0000
++:	
		ld (_RAM_C14A_), hl
_LABEL_312B_:	
		ret
	
_LABEL_312C_:	
		ld de, (_RAM_C14A_)
		ld bc, $00F8
		call _LABEL_B90_
		ld l, h
		ld h, e
		ld (_RAM_C14A_), hl
		ld hl, $0000
		ld (_RAM_C1B8_), hl
		ld (_RAM_C1BA_), hl
		ld (_RAM_C1C0_), hl
		xor a
		ld (_RAM_C1CB_), a
		ld hl, $1000
		ld (_RAM_C1BC_), hl
		ret
	
_LABEL_3152_:	
		ld bc, (_RAM_C1C9_)
		ld de, (_RAM_C1C7_)
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		ld hl, (_RAM_C1C7_)
		or a
		sbc hl, de
		ex de, hl
		ld hl, (_RAM_C1C9_)
		sbc hl, bc
		ex de, hl
		ld a, (_RAM_C1CB_)
		dec a
		ld (_RAM_C1CB_), a
		cp $08
		ret c
		ld (_RAM_C1CC_), a
		ret
	
_LABEL_3195_:	
		ld hl, $0000
		ld (_RAM_C1BE_), hl
		ld a, (_RAM_C1D9_)
		or a
		jp z, +
		ld hl, _RAM_C1DB_
		dec (hl)
		ret nz
		xor a
		ld (_RAM_C1D9_), a
		jp ++
	
+:	
		ld hl, _RAM_C102_
		ld a, (hl)
		cp $05
		jp z, ++
		cp $0A
		ret nz
++:	
		ld a, $01
		ld (_RAM_C1CF_), a
		ld hl, $1000
		ld (_RAM_C1BC_), hl
		ld hl, (_RAM_C1BA_)
		ld (_RAM_C1D3_), hl
		ld a, h
		or a
		jp z, +
		ld hl, $00FF
+:	
		ld bc, _DATA_27DA9_
		add hl, bc
		ld c, (hl)
		ld b, $00
		ld hl, $0030
		or a
		sbc hl, bc
		srl h
		rr l
		srl h
		rr l
		ld (_RAM_C1BE_), hl
		ld hl, (_RAM_C1C3_)
		ld (_RAM_C1D5_), hl
		ld hl, $000E
		ld (_RAM_C1D1_), hl
		ret
	
_LABEL_31F8_:	
		push de
		ld bc, (_RAM_C1C9_)
		ld de, (_RAM_C1C7_)
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		sra b
		rr c
		rr d
		rr e
		ld hl, (_RAM_C1C7_)
		or a
		sbc hl, de
		ld (_RAM_C1C7_), hl
		ex de, hl
		ld hl, (_RAM_C1C9_)
		sbc hl, bc
		ld (_RAM_C1C9_), hl
		ex de, hl
		pop bc
		ld a, (_RAM_C1C2_)
		dec a
		ld (_RAM_C1C2_), a
		ret nz
		push hl
		ld hl, $00E0
		or a
		sbc hl, bc
		jp nc, +
		ld hl, (_RAM_C1C3_)
		ld bc, $00E0
		or a
		sbc hl, bc
		jp c, +
		ld a, l
		ld (_RAM_C1CB_), a
+:	
		pop hl
		ret
	
_LABEL_3259_:	
		ex de, hl
		ld a, h
		or a
		jp z, +
		ld hl, $00FF
+:	
		ld de, _DATA_27DA9_
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, (_RAM_C14A_)
		ld bc, $0014
		or a
		sbc hl, bc
		ex de, hl
		jp nc, +
		add hl, hl
+:	
		push hl
		ld bc, (_RAM_C1BC_)
		ld e, c
		ld d, b
		call _LABEL_B90_
		srl d
		rr e
		rr h
		srl d
		rr e
		rr h
		srl d
		rr e
		rr h
		srl d
		rr e
		rr h
		ld c, h
		ld b, e
		pop de
		call _LABEL_B90_
		ld a, (_RAM_C1CF_)
		or a
		ret z
		add hl, hl
		rl e
		rl d
		ret
	
_LABEL_32AA_:	
		ld bc, (_RAM_C1BC_)
		ld de, $0440
		call _LABEL_B90_
		srl d
		rr e
		rr h
		rr l
		srl d
		rr e
		rr h
		rr l
		srl d
		rr e
		rr h
		rr l
		srl d
		rr e
		rr h
		rr l
		xor a
		sub l
		ld l, a
		ld a, $00
		sbc a, h
		ld h, a
		ld a, $00
		sbc a, e
		ld e, a
		ld a, $00
		sbc a, d
		ld d, a
		ld a, (_RAM_C1EB_)
		or a
		ret z
		add hl, hl
		rl e
		rl d
		add hl, hl
		rl e
		rl d
		ret
	
_LABEL_32F3_:	
		ld de, (_RAM_C1BA_)
		ld hl, $001F
		or a
		sbc hl, de
		jp c, +
		ld de, $001F
+:	
		ld a, (_RAM_C1D1_)
		or a
		jp z, _LABEL_3378_
		ld hl, (_RAM_C1D3_)
		or a
		sbc hl, de
		jp c, _LABEL_3374_
		ld hl, (_RAM_C1D3_)
		ld bc, (_RAM_C1D1_)
		ld a, (_RAM_C1C3_)
		or a
		jp z, +
		or a
		sbc hl, bc
+:	
		srl h
		rr l
		push hl
		or a
		sbc hl, de
		pop hl
		jp c, +
		srl b
		rr c
		srl h
		rr l
		push hl
		or a
		sbc hl, de
		pop hl
		jp c, +
		srl b
		rr c
+:	
		or a
		sbc hl, bc
		ld (_RAM_C1D3_), hl
		ld de, $001F
		or a
		sbc hl, de
		jp nc, +
		ld (_RAM_C1D3_), de
+:	
		ld hl, _RAM_C1D1_
		ld a, (_RAM_C1C0_)
		or a
		ld a, (hl)
		jp z, +
		cp $02
		jp z, _LABEL_3378_
		dec (hl)
		jp _LABEL_3378_
	
+:	
		cp $01
		jp z, _LABEL_3378_
		dec (hl)
		jp _LABEL_3378_
	
_LABEL_3374_:	
		xor a
		ld (_RAM_C1D1_), a
_LABEL_3378_:	
		ld de, (_RAM_C1BA_)
		ld bc, $1A90
		call _LABEL_B90_
		ld l, h
		ld h, e
		ld d, $00
		ld c, d
		sra h
		rr l
		rr d
		sra h
		rr l
		rr d
		sra h
		rr l
		rr d
		sra h
		rr l
		rr d
		ld a, d
		ld de, (_RAM_C1BC_)
		call _LABEL_D2B_
		ld bc, $0480
		call _LABEL_B90_
		ld hl, (_RAM_C1CD_)
		or a
		sbc hl, de
		ret nc
		ld de, (_RAM_C1CD_)
		ret
	
_LABEL_33B9_:	
		ld a, (_RAM_C1C0_)
		or a
		jp nz, _LABEL_3411_
		ld a, (_RAM_C1C1_)
		or a
		jp z, +
		xor a
		ld (_RAM_C1C1_), a
		ld a, $04
		ld (_RAM_C1C2_), a
		ld hl, $00C1
		ld (_RAM_C1CD_), hl
		ret
	
+:	
		ld hl, (_RAM_C14A_)
		ld bc, $0050
		or a
		sbc hl, bc
		jp nc, +
		ld hl, (_RAM_C1C3_)
		ld bc, $00E0
		or a
		sbc hl, bc
		jp c, +
		ld a, $01
		ld (_RAM_C1CC_), a
+:	
		ld a, (_RAM_C1BE_)
		cp $10
		jp z, ++
		jp c, +
		sub $04
		cp $10
		jp nc, ++
		ld a, $10
		jp ++
	
+:	
		add a, $01
++:	
		ld (_RAM_C1BE_), a
		ret
	
_LABEL_3411_:	
		ld a, (_RAM_C1C1_)
		cp $01
		jp z, +
		ld a, $01
		ld (_RAM_C1C1_), a
		ld a, $04
		ld (_RAM_C1C2_), a
		ld hl, $0125
		ld (_RAM_C1CD_), hl
		ret
	
+:	
		ld a, (_RAM_C1BE_)
		cp $1F
		jp z, +
		add a, $01
+:	
		ld (_RAM_C1BE_), a
		ret
	
_LABEL_3438_:	
		ld bc, (_RAM_C1C5_)
		ld a, c
		or b
		ret z
		ld bc, $C000
		add hl, bc
		ex de, hl
		ld bc, $FFFB
		adc hl, bc
		ex de, hl
		ret
	
; 5th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_344B_:	
		ld a, (_RAM_DE01_)
		or a
		ret z
		bit 7, (iy+18)
		jr nz, +
		set 7, (iy+18)
		ld hl, _RAM_C204_
		ld a, (iy+19)
		ld (iy+19), $2E
		cp (hl)
		jr z, +
		ld (hl), a
+:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		ld (iy+0), $00
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
++:	
		call _LABEL_3D34_
		call _LABEL_373E_
		jp _LABEL_3C79_
	
; 8th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3496_:	
		ld a, (_RAM_DE01_)
		or a
		ret z
		bit 7, (iy+18)
		jr nz, +
		set 7, (iy+18)
		ld hl, _RAM_C204_
		ld a, (iy+19)
		ld (iy+19), $34
		cp (hl)
		jr z, +
		ld (hl), a
+:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		ld (iy+0), $00
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
++:	
		call _LABEL_3D6A_
		call _LABEL_373E_
		jp _LABEL_3C79_
	
; 9th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_34E1_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		ld (iy+0), $00
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
++:	
		call _LABEL_3D34_
		call _LABEL_373E_
		jp _LABEL_3C79_
	
; 10th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_350F_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		ld (iy+0), $00
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
++:	
		call _LABEL_3D6A_
		call _LABEL_373E_
		jp _LABEL_3C79_
	
; 11th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_353D_:	
		call _LABEL_25D0_
		ld hl, (_RAM_C1A9_)
		ld de, $01A0
		or a
		sbc hl, de
		ret c
		inc (iy+0)
		ret
	
; 12th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_354E_:	
		ld a, (_RAM_C251_)
		or a
		ret nz
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		xor a
		ld (iy+0), a
		ld (_RAM_C223_), a
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
		ld hl, $3582
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		ld (_RAM_C223_), a
		ret
	
	; Data from 3582 to 35B1 (48 bytes)
	.dsb 12, $08
	.db $07 $07 $07 $07 $07 $07 $06 $06 $06 $06 $06 $06 $05 $05 $05 $05
	.db $05 $05 $04 $04 $04 $04 $04 $04 $03 $03 $03 $03 $03 $03 $02 $02
	.db $02 $01 $01 $01
	
; 28th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_35B2_:	
		ld (iy+0), $00
		ld a, (_RAM_C222_)
		or a
		jr nz, +
		ld a, $FF
		ld (_RAM_C222_), a
		ld (_RAM_C247_), a
		ret
	
+:	
		xor a
		ld (_RAM_C247_), a
		inc a
		ld (_RAM_C222_), a
		ret
	
; 29th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_35CE_:	
		call _LABEL_25D0_
		inc (iy+0)
		ret
	
; 30th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_35D5_:	
		ld a, (_RAM_C251_)
		or a
		ret nz
		ld hl, (_RAM_C14A_)
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, h
		cp $30
		jr c, +
		xor a
		ld (iy+0), a
		ret
	
+:	
		ld (iy+10), h
		ld (iy+11), l
		ld hl, $3606
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		ld (iy+1), a
		ret
	
	; Data from 3606 to 3635 (48 bytes)
	.db $09 $09 $09 $09 $09 $09 $08 $08 $08 $08 $08 $08 $07 $07 $07 $07
	.db $07 $07 $06 $06 $06 $06 $06 $06 $05 $05 $05 $05 $05 $05 $04 $04
	.db $04 $04 $04 $04 $03 $03 $03 $03 $03 $03 $02 $02 $02 $01 $01 $01
	
; 13th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3636_:	
		bit 0, (iy+18)
		jr nz, +
		ld a, (_RAM_C1F4_)
		cp $02
		ret c
		ld (iy+1), $07
		set 0, (iy+18)
		ret
	
+:	
		bit 1, (iy+18)
		jr nz, +
		ld a, (_RAM_C1F4_)
		cp $04
		ret nz
		ld (iy+1), $01
		ld (iy+26), $05
		set 1, (iy+18)
		ret
	
+:	
		bit 2, (iy+18)
		jr nz, +
		call _LABEL_36C8_
		ld a, (iy+26)
		or a
		ret nz
		ld (iy+1), $08
		set 2, (iy+18)
		ld a, (iy+20)
		inc (iy+20)
		ld hl, _DATA_36C2_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		ld (iy+26), a
		ret
	
+:	
		bit 3, (iy+18)
		ret nz
		call _LABEL_36E1_
		ld a, (iy+26)
		or a
		ret nz
		ld a, (iy+20)
		inc (iy+20)
		ld hl, _DATA_36C2_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		ld (iy+26), a
		cp $FF
		jr nz, +
		ld (iy+1), $0A
		set 3, (iy+18)
		ret
	
+:	
		ld (iy+1), $01
		res 2, (iy+18)
		ret
	
; Data from 36C2 to 36C7 (6 bytes)	
_DATA_36C2_:	
	.db $02 $03 $02 $02 $03 $FF
	
_LABEL_36C8_:	
		dec (iy+27)
		ret p
		ld (iy+27), $05
		ld a, (iy+1)
		inc a
		cp $07
		jr c, +
		dec (iy+26)
		ld a, $01
+:	
		ld (iy+1), a
		ret
	
_LABEL_36E1_:	
		dec (iy+27)
		ret p
		ld (iy+27), $07
		ld a, (iy+1)
		cp $09
		ld a, $09
		jr nz, +
		dec (iy+26)
		dec a
+:	
		ld (iy+1), a
		ret
	
; 24th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_36FA_:	
		ld a, (_RAM_C242_)
		or a
		jr nz, _LABEL_3706_
		ld a, (_RAM_DE01_)
		or a
		jr z, +
_LABEL_3706_:	
		ld (iy+0), $00
		ret
	
+:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+4), $50
		ld (iy+2), $60
		ld (iy+1), $9A
		ld a, $50
		ld (_RAM_C204_), a
		ret
	
; 25th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3723_:	
		ld a, (_RAM_C251_)
		or a
		jp nz, _LABEL_3ACA_
		ld a, (_RAM_C242_)
		or a
		jr nz, _LABEL_3706_
		ld a, (_RAM_DE01_)
		or a
		jr nz, _LABEL_3706_
		ld hl, _RAM_C102_
		ld (hl), $0C
		jp _LABEL_3ACA_
	
_LABEL_373E_:	
		ld a, (iy+10)
		ld hl, _DATA_3753_ - 2
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (iy+19)
		add a, (hl)
		ld (iy+1), a
		ret
	
	; Data from 3751 to 3752 (2 bytes)
	.db $05 $05
	
; 1st entry of Pointer Table from 5571 (indexed by unknown)	
; Data from 3753 to 3780 (46 bytes)	
_DATA_3753_:	
	.dsb 13, $05
	.dsb 10, $04
	.db $03 $03 $03 $03 $03 $03 $03 $02 $02 $02 $02 $02 $02 $01 $01 $01
	.db $01 $01 $00 $00 $00 $00 $00
	
; 54th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3781_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+4), $54
		ld (iy+1), $F7
		ret
	
; 55th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3790_:	
		ld a, (_RAM_C102_)
		cp $02
		jr nz, +
		ld (iy+1), $F7
		ld (iy+27), $00
		ret
	
+:	
		call +
		jp _LABEL_3ACA_
	
+:	
		cp $03
		ld a, $1F
		jr z, +
		ld a, $07
+:	
		dec (iy+27)
		ret p
		ld (iy+27), a
		ld a, (iy+1)
		inc a
		cp $F8
		jr c, +
		ld a, $F5
+:	
		ld (iy+1), a
		ret
	
; 15th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_37C3_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+19), $1C
		ld (iy+1), $24
		call _LABEL_E42_
		ld l, a
		ld h, $00
		rrca
		rrca
		and $3F
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld de, $00A0
		or a
		sbc hl, de
		ld (iy+7), h
		ld (iy+6), l
		call _LABEL_E42_
		and $3F
		add a, $A8
		ld (iy+29), a
		call _LABEL_E42_
		and $06
		ld hl, _DATA_380F_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_C208_), hl
		xor a
		ld (_RAM_C206_), a
		ret
	
; Pointer Table from 380F to 3816 (4 entries, indexed by unknown)	
_DATA_380F_:	
	.dw _DATA_30000_ _DATA_30780_ _DATA_30F00_ _DATA_31680_
	
; 16th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_3817_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		or a
		ld d, $00
		ld e, (iy+29)
		sbc hl, de
		add hl, hl
		add hl, hl
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, d
		or a
		jr nz, +
		bit 7, h
		ret nz
+:	
		ld a, h
		cp $30
		jr c, +
		xor a
		ld (iy+0), a
		ld (iy+10), a
		bit 7, h
		ret nz
		ld a, $50
		jp _LABEL_3EB7_
	
+:	
		ld (iy+10), h
		ld (iy+11), l
		cp $18
		call nc, _LABEL_3909_
++:	
		call _LABEL_3CE3_
		call _LABEL_3993_
		ld a, (_RAM_C321_)
		cp $0A
		jp c, _LABEL_3C79_
		xor a
		ld (_RAM_C206_), a
		ret
	
; 17th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_386A_:	
		call _LABEL_25D0_
		inc (iy+0)
		ld (iy+19), $25
		ld (iy+1), $2D
		call _LABEL_E42_
		ld l, a
		ld h, $00
		rrca
		rrca
		and $3F
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld de, $00A0
		or a
		sbc hl, de
		ld (iy+7), h
		ld (iy+6), l
		call _LABEL_E42_
		and $3F
		add a, $A8
		ld (iy+29), a
		call _LABEL_E42_
		and $06
		ld hl, _DATA_380F_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld (_RAM_C20A_), hl
		xor a
		ld (_RAM_C207_), a
		ret
	
; 18th entry of Jump Table from 25DF (indexed by _RAM_C300_)	
_LABEL_38B6_:	
		ld a, (_RAM_C251_)
		or a
		jr nz, ++
		ld hl, (_RAM_C14A_)
		or a
		ld d, $00
		ld e, (iy+29)
		sbc hl, de
		add hl, hl
		add hl, hl
		ld d, (iy+10)
		ld e, (iy+11)
		add hl, de
		ld a, d
		or a
		jr nz, +
		bit 7, h
		ret nz
+:	
		ld a, h
		cp $30
		jr c, +
		xor a
		ld (iy+0), a
		ld (iy+10), a
		bit 7, h
		ret nz
		ld a, $50
		jp _LABEL_3EB7_
	
+:	
		ld (iy+10), h
		ld (iy+11), l
		cp $18
		call nc, _LABEL_3909_
++:	
		call _LABEL_3CCA_
		call _LABEL_3993_
		ld a, (_RAM_C321_)
		cp $0A
		jp c, _LABEL_3C79_
		xor a
		ld (_RAM_C207_), a
		ret
	
_LABEL_3909_:	
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld hl, (_RAM_C1B5_)
		ld de, $005F
		add hl, de
		ld a, (hl)
		ld e, a
		rlca
		sbc a, a
		ld d, a
		ld hl, $FF81
		add hl, de
		ex de, hl
		ld b, (iy+7)
		ld c, (iy+6)
		call _LABEL_B3A_
		xor a
		sub h
		ld l, a
		ld a, $00
		sbc a, e
		ld h, a
		ld de, $0080
		add hl, de
		ld de, (_RAM_CB7C_)
		add hl, de
		ld a, h
		or a
		ret nz
		ex de, hl
		ld hl, (_RAM_C322_)
		or a
		sbc hl, de
		jp m, +
		ld bc, $0024
		or a
		sbc hl, bc
		ret nc
		ld h, (iy+7)
		ld l, (iy+6)
		ld de, $FFFC
		add hl, de
		ld (iy+7), h
		ld (iy+6), l
		bit 7, h
		ret z
		ld a, l
		cp $60
		ret nc
		ld (iy+7), $FF
		ld (iy+6), $60
		ret
	
+:	
		ld bc, $FFDC
		or a
		sbc hl, bc
		ret c
		ld h, (iy+7)
		ld l, (iy+6)
		ld de, $0004
		add hl, de
		ld (iy+7), h
		ld (iy+6), l
		bit 7, h
		ret nz
		ld a, l
		cp $A0
		ret c
		ld (iy+7), $00
		ld (iy+6), $A0
		ret
	
_LABEL_3993_:	
		ld a, (iy+10)
		ld hl, _DATA_39A6_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (iy+19)
		add a, (hl)
		ld (iy+1), a
		ret
	
; Data from 39A6 to 39D5 (48 bytes)	
_DATA_39A6_:	
	.dsb 19, $08
	.db $07 $07 $07 $07 $07 $07 $07 $06 $06 $06 $06 $06 $06 $05 $05 $05
	.db $05 $04 $04 $03 $03 $02 $02 $01 $01 $00 $00 $00 $00
	
_LABEL_39D6_:	
		ld ix, _RAM_C360_
		ld b, $08
-:	
		ld a, (ix+0)
		cp $1E
		jr z, +
		or a
		jr z, _LABEL_39F4_
		ld a, (ix+1)
		or a
		jr z, _LABEL_39F4_
		ld a, (ix+10)
		cp $2C
		call nc, ++
_LABEL_39F4_:	
		ld de, $0020
		add ix, de
		djnz -
		xor a
		ret
	
+:	
		ld a, (ix+10)
		cp $28
		jr c, _LABEL_39F4_
		cp $30
		jr nc, _LABEL_39F4_
		ld a, (_RAM_C1EB_)
		or a
		jr z, _LABEL_39F4_
		ld a, $FF
		ret
	
++:	
		cp $30
		ret nc
		ld a, (ix+3)
		or a
		ret nz
		ld a, (iy+2)
		sub $1C
		cp (ix+2)
		ret nc
		add a, $38
		cp (ix+2)
		ret c
		ld a, $FF
		pop hl
		ret
	
_LABEL_3A2C_:	
		ld hl, _RAM_FFFF_
		ld (hl), $03
		ld hl, (_RAM_C202_)
		ld c, (hl)
		inc hl
		ld b, (hl)
		ex de, hl
		ld hl, (_RAM_C1A9_)
		or a
		sbc hl, bc
		ret c
		push de
		ld hl, _RAM_C3A0_
		ld de, $0020
		ld b, $06
-:	
		ld a, (hl)
		add hl, de
		or a
		jr z, +
		djnz -
		pop de
		ret
	
+:	
		dec hl
		ld e, l
		ld d, h
		dec de
		ld bc, $001F
		ld (hl), $00
		lddr
		push hl
		pop iy
		pop hl
		inc hl
		ld a, (hl)
		ld (iy+0), a
		inc hl
		ld a, (hl)
		ld (iy+19), a
		inc hl
		ld (_RAM_C202_), hl
		ret
	
_LABEL_3A6F_:	
		ld a, (_RAM_C242_)
		or a
		ret nz
		ld a, (_RAM_C320_)
		cp $02
		ret nz
		ld hl, (_RAM_C14A_)
		ld a, h
		or l
		ret z
		ld hl, _RAM_C219_
		dec (hl)
		ret p
		inc hl
		ld a, (hl)
		dec hl
		ld (hl), a
		ld a, r
		rrca
		jr c, ++
		ld a, (_RAM_C360_)
		or a
		jr nz, +
		ld hl, $000F
		ld (_RAM_C360_), hl
		ret
	
+:	
		ld a, (_RAM_C380_)
		or a
		ret nz
		ld a, (_RAM_C36A_)
		or a
		ret z
		ld hl, $0011
		ld (_RAM_C380_), hl
		ret
	
++:	
		ld a, (_RAM_C380_)
		or a
		jr nz, +
		ld hl, $0011
		ld (_RAM_C380_), hl
		ret
	
+:	
		ld a, (_RAM_C360_)
		or a
		ret nz
		ld a, (_RAM_C38A_)
		or a
		ret z
		ld hl, $000F
		ld (_RAM_C360_), hl
		ret
	
_LABEL_3ACA_:	
		ld hl, _RAM_FFFF_
		ld (hl), $03
		ld a, (iy+1)
		or a
		ret z
		ld l, a
		ld h, $40
		add hl, hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (_RAM_C20C_)
		or a
		jp p, _LABEL_3BA2_
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld a, (iy+4)
		add a, (hl)
		inc hl
		exx
		ld hl, (_RAM_C117_)
		ld c, a
		exx
		ld de, (_RAM_C119_)
		ld a, (iy+2)
		or a
		jp m, _LABEL_3B53_
		add a, (hl)
		cp $C0
		ccf
		inc hl
_LABEL_3B02_:	
		push af
		push bc
		ld b, $00
--:	
		jr c, _LABEL_3B2C_
-:	
		bit 0, (hl)
		jr nz, +
		ld (de), a
		add a, $08
		inc de
		ldi
		exx
		ld (hl), c
		inc hl
		exx
		jp pe, --
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		djnz _LABEL_3B02_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3B2C_:	
		add a, $08
		inc hl
		dec c
		jp z, ++
		jp c, -
		jp _LABEL_3B2C_
	
+:	
		add a, $08
		inc hl
		dec c
		jp nz, --
++:	
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		djnz _LABEL_3B02_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3B53_:	
		add a, (hl)
		or a
		inc hl
_LABEL_3B56_:	
		push af
		push bc
		ld b, $00
-:	
		jr c, _LABEL_3B80_
		bit 0, (hl)
		jr nz, +
		ld (de), a
		add a, $08
		inc de
		ldi
		exx
		ld (hl), c
		inc hl
		exx
		jp pe, -
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		djnz _LABEL_3B56_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3B80_:	
		inc hl
		dec c
		jp nz, _LABEL_3B80_
		jp ++
	
+:	
		add a, $08
		inc hl
		dec c
		jp nz, -
++:	
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		djnz _LABEL_3B56_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3BA2_:	
		ld b, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld a, (iy+4)
		add a, (hl)
		inc hl
		exx
		ld hl, (_RAM_C117_)
		ld c, a
		exx
		ld de, (_RAM_C119_)
		ld a, c
		dec a
		rlca
		rlca
		rlca
		and $F8
		add a, (iy+2)
		add a, (hl)
		bit 7, (iy+2)
		jp nz, _LABEL_3C19_
		or a
_LABEL_3BC8_:	
		ex af, af'
		ld a, c
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ex af, af'
		push hl
		push af
		push bc
		ld b, $00
-:	
		jr c, ++
		bit 0, (hl)
		jr nz, +
		ld (de), a
		sub $08
		inc de
		ldi
		dec hl
		dec hl
		exx
		ld (hl), c
		inc hl
		exx
		jp pe, -
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		pop hl
		djnz _LABEL_3BC8_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
+:	
		sub $08
		dec hl
		dec c
		jp nz, -
++:	
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		pop hl
		djnz _LABEL_3BC8_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3C19_:	
		cp $40
_LABEL_3C1B_:	
		ex af, af'
		ld a, c
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ex af, af'
		push hl
		push af
		push bc
		ld b, $00
--:	
		jr c, _LABEL_3C51_
-:	
		bit 0, (hl)
		jr nz, +
		ld (de), a
		sub $08
		inc de
		ldi
		dec hl
		dec hl
		exx
		ld (hl), c
		inc hl
		exx
		jp pe, --
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		pop hl
		djnz _LABEL_3C1B_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3C51_:	
		sub $08
		dec hl
		dec c
		jp z, ++
		jp c, -
		jp _LABEL_3C51_
	
+:	
		sub $08
		dec hl
		dec c
		jp nz, --
++:	
		exx
		ld a, c
		add a, $10
		ld c, a
		exx
		pop bc
		pop af
		pop hl
		djnz _LABEL_3C1B_
		ld (_RAM_C119_), de
		exx
		ld (_RAM_C117_), hl
		ret
	
_LABEL_3C79_:	
		ld a, (iy+10)
		cp $30
		ret nc
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, _RAM_CE00_
		add hl, de
		ld a, (hl)
		cp $07
		ret nc
		ld b, a
		inc (hl)
		inc b
-:	
		inc hl
		inc hl
		djnz -
		push iy
		pop de
		ld (hl), e
		inc hl
		ld (hl), d
		ret
	
_LABEL_3C9C_:	
		ld hl, _RAM_D0F0_
		ld de, $FFF0
		ld b, $30
--:	
		ld a, (hl)
		or a
		jr nz, +
		add hl, de
		djnz --
		ld hl, (_RAM_C117_)
		ld (hl), $D0
		ret
	
+:	
		push hl
		push bc
		dec (hl)
		ld b, a
-:	
		inc hl
		inc hl
		djnz -
		ld e, (hl)
		inc hl
		ld d, (hl)
		push de
		pop iy
		call _LABEL_3ACA_
		pop bc
		pop hl
		ld de, $FFF0
		jp --
	
_LABEL_3CCA_:	
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld l, (iy+10)
		ld h, $00
		add hl, hl
		ld de, (_RAM_C1B5_)
		add hl, de
		ld a, (hl)
		and $FE
		jp z, _LABEL_3D32_
		jp +
	
_LABEL_3CE3_:	
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld l, (iy+10)
		ld h, $00
		add hl, hl
		ld de, (_RAM_C1B5_)
		add hl, de
		ld a, (hl)
		and $FE
		jp z, _LABEL_3D32_
		inc a
+:	
		ld (iy+4), a
		inc hl
		ld d, $CB
		dec a
		add a, a
		ld e, a
		ex de, hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		push hl
		ld a, (de)
		ld e, a
		rlca
		sbc a, a
		ld d, a
		ld hl, $FF81
		add hl, de
		ex de, hl
		ld b, (iy+7)
		ld c, (iy+6)
		call _LABEL_B3A_
		xor a
		sub h
		ld l, a
		ld a, $00
		sbc a, e
		ld h, a
		ld de, $0080
		add hl, de
		pop de
		add hl, de
		ld (iy+3), h
		ld (iy+2), l
		ld a, h
		or a
		ret z
_LABEL_3D32_:	
		pop hl
		ret
	
_LABEL_3D34_:	
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld l, (iy+10)
		ld h, $00
		add hl, hl
		ld de, (_RAM_C1B5_)
		add hl, de
		ld a, (hl)
		or a
		jp z, +
		ld e, a
		ld (iy+4), e
		inc hl
		ld d, $CB
		ld a, e
		dec a
		add a, a
		ld e, a
		ex de, hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (de)
		ld e, a
		rlca
		sbc a, a
		ld d, a
		add hl, de
		ld (iy+3), h
		ld (iy+2), l
		ld a, h
		or a
		ret z
+:	
		pop hl
		ret
	
_LABEL_3D6A_:	
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld l, (iy+10)
		ld h, $00
		add hl, hl
		ld de, (_RAM_C1B5_)
		add hl, de
		ld a, (hl)
		or a
		jp z, +
		ld e, a
		ld (iy+4), e
		inc hl
		ld d, $CB
		ld a, e
		dec a
		add a, a
		ld e, a
		ex de, hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (de)
		neg
		ld e, a
		rlca
		sbc a, a
		inc a
		ld d, a
		add hl, de
		ld (iy+3), h
		ld (iy+2), l
		ld a, h
		or a
		ret z
+:	
		pop hl
		ret
	
_LABEL_3DA3_:	
		ld hl, _RAM_C600_
		ld de, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		call _LABEL_3E36_
		ld hl, _RAM_C680_
		ld de, $7F80
		rst $08	; _LABEL_8_
_LABEL_3DB6_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
_LABEL_3E36_:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
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
	
_LABEL_3EB7_:	
		ld l, a
		ld a, (_RAM_DE2B_)
		or a
		ret nz
		ld a, l
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld hl, $BFA3
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld de, _RAM_DE24_
		xor a
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		dec hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		dec hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		dec hl
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		dec de
		ld a, $FF
		ld (de), a
		ret
	
_LABEL_3EEA_:	
		ld a, (_RAM_C242_)
		or a
		ret nz
		ld hl, (_RAM_DE03_)
		inc hl
		ld (_RAM_DE03_), hl
		ld hl, _RAM_DE02_
		dec (hl)
		ret p
		ld (hl), $3B
		dec hl
		ld a, (hl)
		or a
		jp z, +
		sub $01
		daa
		ld (hl), a
		dec hl
		ld (hl), $FF
		ret
	
+:	
		ld hl, _RAM_C300_
		ld a, (hl)
		or a
		ret nz
		ld (hl), $18
		ret
	
_LABEL_3F14_:	
		ld ix, _RAM_DE11_
		ld hl, (_RAM_DE05_)
		ld de, $0E10
		xor a
		dec a
-:	
		inc a
		sbc hl, de
		jp nc, -
		add hl, de
		add a, $B2
		ld (ix+0), a
		push hl
		ld e, $3C
		call _LABEL_C42_
		ld a, l
		ld h, $B1
-:	
		inc h
		sub $0A
		jp nc, -
		add a, $BC
		ld (ix+4), h
		ld (ix+6), a
		ld h, l
		ld e, $3C
		call _LABEL_B17_
		pop de
		ex de, hl
		or a
		sbc hl, de
		ld a, l
		ld h, $B1
-:	
		inc h
		sub $06
		jp nc, -
		add a, $06
		ld (ix+10), h
		ld hl, $3F77
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, r
		and $01
		add a, (hl)
		ld (ix+12), a
		ld a, $40
		ld (_RAM_DE1F_), a
		ld a, $48
		ld (_RAM_C204_), a
		ret
	
	; Data from 3F77 to 3F7C (6 bytes)
	.db $B2 $B4 $B6 $B8 $BA $BA
	
_LABEL_3F7D_:	
		dec a
		jr z, +
		ld (_RAM_DE1F_), a
		ld b, a
		ld a, (_RAM_C204_)
		cp $48
		jp nz, +
		ld a, (_RAM_C1E1_)
		or a
		jp nz, +
		ld a, b
		ld hl, _RAM_DE09_
		ld de, _RAM_D654_
		ld bc, $0016
		ldir
		and $07
		cp $04
		jr c, ++
		ld hl, _DATA_3FDF_
		ld de, _RAM_D590_
		ld bc, $001E
		ldir
		ld de, _RAM_D5D0_
		ld bc, $001E
		ldir
		ret
	
+:	
		xor a
		ld (_RAM_DE1F_), a
		ld hl, _DATA_4DC7_
		ld de, _RAM_D654_
		ld bc, $0016
		ldir
++:	
		ld hl, _DATA_4DC7_
		ld de, _RAM_D590_
		ld bc, $001E
		ldir
		ld hl, _DATA_4DC7_
		ld de, _RAM_D5D0_
		ld bc, $001E
		ldir
		ret
	
; Data from 3FDF to 401A (60 bytes)	
_DATA_3FDF_:	
	.db $96 $19 $97 $19 $98 $19 $98 $19 $98 $19 $98 $19 $98 $19 $98 $19
	.db $98 $19 $98 $19 $98 $19 $98 $19 $98 $19 $97 $1B $96 $1B $99 $19
	.db $9A $19 $9B $19 $9C $19 $9D $19 $9B $19 $9E $19 $9F $19 $A0 $19
	.db $A1 $19 $A2 $19 $A3 $19 $A4 $19 $9A $1B $99 $1B
	
_LABEL_401B_:	
		ld a, (_RAM_DE2B_)
		or a
		ret nz
		ld de, $7922
		rst $08	; _LABEL_8_
		ld a, (_RAM_C1C0_)
		or a
		ld a, $AA
		jr nz, +
		inc a
+:	
		out (Port_VDPData), a
		ld b, a
		ld de, $7962
		rst $08	; _LABEL_8_
		ld a, $50
		add a, b
		out (Port_VDPData), a
		ld hl, _RAM_FFFF_
		ld (hl), $09
		ld de, $7968
		rst $08	; _LABEL_8_
		ld hl, (_RAM_C1BA_)
		ld a, (_RAM_C1D1_)
		or a
		jp z, +
		ld hl, (_RAM_C1D3_)
+:	
		ld de, (_RAM_C14A_)
		ld a, d
		or e
		jp nz, +
		ld e, l
		ld d, h
		srl d
		rr e
		srl d
		rr e
		add hl, de
+:	
		ld a, l
		and $F0
		ld l, a
		ld de, _DATA_27EA9_
		add hl, de
		ld c, Port_VDPData
		ld a, $19
		ld b, $0A
-:	
		outi
		push af
		pop af
		out (Port_VDPData), a
		push af
		pop af
		jp nz, -
		ld de, $7932
		rst $08	; _LABEL_8_
		ld bc, $0019
		ld hl, (_RAM_C14A_)
		ld a, l
		or h
		jp z, +
		ld de, $0064
		ld a, $FF
-:	
		sbc hl, de
		inc a
		jr nc, -
		add hl, de
		call _LABEL_414C_
		ld d, $FF
		ld a, l
-:	
		sub $0A
		inc d
		jr nc, -
		add a, $0A
		ld l, a
		ld a, d
		call _LABEL_414C_
		ld d, $FF
		ld a, l
-:	
		sub $01
		inc d
		jr nc, -
		ld a, d
		call _LABEL_414C_
		jp ++
	
+:	
		ld a, b
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
		push af
		pop af
		ld a, b
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
		push af
		pop af
		ld a, $B2
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
++:	
		ld hl, _RAM_DE00_
		ld de, $7958
		ld a, (hl)
		or a
		jp z, ++
		ld (hl), $00
		inc hl
		ld bc, $0019
		rst $08	; _LABEL_8_
		ld a, (hl)
		or a
		jp z, +
		rrca
		rrca
		rrca
		rrca
		call _LABEL_414C_
		ld a, (hl)
		call _LABEL_414C_
		jp ++
	
+:	
		ld a, b
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
		push af
		pop af
		ld a, $B2
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
++:	
		ld hl, _RAM_DE20_
		ld de, $7940
		ld a, (hl)
		or a
		ret z
		ld (hl), $00
		inc hl
		ld bc, $0019
		rst $08	; _LABEL_8_
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_414C_
		ld a, (hl)
		call _LABEL_414C_
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_414C_
		ld a, (hl)
		call _LABEL_414C_
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_414C_
		ld a, (hl)
		call _LABEL_414C_
		inc hl
		ld a, (hl)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_414C_
		ld a, (hl)
_LABEL_414C_:	
		and $0F
		jp z, +
		ld bc, $B219
+:	
		add a, b
		out (Port_VDPData), a
		push af
		pop af
		ld a, c
		out (Port_VDPData), a
		ret
	
_LABEL_415D_:	
		ld a, (_RAM_C11B_)
		ld b, a
		ld a, (_RAM_C321_)
		cp b
		ret z
		ld (_RAM_C11B_), a
		ld de, $6D40
		rst $08	; _LABEL_8_
		ld hl, _RAM_FFFF_
		ld (hl), $02
		ld a, (_RAM_C321_)
		cp $12
		jp nc, +
		cp $0A
		jp nc, ++
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld de, $41CE
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld c, Port_VDPData
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		jp _LABEL_3DB6_
	
+:	
		ld hl, _RAM_FFFF_
		ld (hl), $0E
++:	
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld de, $41CC
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld c, Port_VDPData
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		ld b, e
		ld a, d
-:	
		outi
		jp nz, -
		dec a
		jp nz, -
		ret
	
	; Data from 41D0 to 41D1 (2 bytes)
	.db $00 $00
	
; Pointer Table from 41D2 to 41D3 (1 entries, indexed by _RAM_C321_)	
_DATA_41D2_:	
	.dw _DATA_8000_
	
	; Data from 41D4 to 4233 (96 bytes)
	.db $00 $00 $80 $82 $00 $00 $00 $85 $00 $00 $80 $87 $00 $00 $00 $8A
	.db $00 $00 $80 $8C $00 $00 $00 $8F $00 $00 $80 $91 $00 $00 $00 $94
	.db $80 $02 $80 $96 $80 $02 $80 $9A $80 $02 $80 $9E $80 $02 $80 $A2
	.db $80 $02 $80 $A6 $80 $02 $80 $AA $80 $02 $80 $AE $80 $02 $80 $B2
	.db $00 $03 $00 $80 $00 $03 $80 $85 $00 $03 $00 $8B $01 $01 $80 $90
	.db $80 $03 $80 $92 $C0 $03 $80 $97 $40 $03 $C0 $9C $01 $01 $80 $A1
	
_LABEL_4234_:	
		ld a, (_RAM_C11B_)
		ld b, a
		ld a, (_RAM_C301_)
		cp b
		ret z
		ld (_RAM_C11B_), a
		ld hl, _RAM_FFFF_
		ld (hl), $09
		ld de, $7260
		rst $08	; _LABEL_8_
		ld a, (_RAM_C301_)
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, hl
		add hl, de
		ld de, _DATA_26208_
		add hl, de
		ld bc,  $1400 | Port_VDPData
--:	
		push bc
		push hl
		ld l, (hl)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld de, _DATA_262E4_
		add hl, de
		ld b, $20
-:	
		outi
		jp nz, -
		pop hl
		inc hl
		pop bc
		djnz --
		ret
	
_LABEL_4278_:	
		ld hl, (_RAM_C204_)
		ld a, l
		cp h
		ret z
		ld h, l
		ld (_RAM_C204_), hl
		ld de, $72C0
		rst $08	; _LABEL_8_
		ld a, l
		ld hl, _RAM_FFFF_
		ld (hl), $08
		rrca
		rrca
		rrca
		and $0F
		sub $05
		ld l, $00
		ld h, a
		ld e, l
		rrca
		rr e
		and $7F
		ld d, a
		add hl, hl
		add hl, de
		ld de, _DATA_202DD_
		add hl, de
		ld c, Port_VDPData
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		jp _LABEL_3DB6_
	
_LABEL_42B4_:	
		ld a, (_RAM_C242_)
		or a
		ret nz
		ld a, (_RAM_C321_)
		cp $0A
		ret nc
		ld a, (_RAM_C360_)
		cp $10
		jp nz, _LABEL_430B_
		ld a, (_RAM_C206_)
		ld b, a
		ld a, (_RAM_C361_)
		cp $24
		jr z, +
		cp b
		jp z, _LABEL_430B_
		or a
		jp z, _LABEL_430B_
+:	
		ld (_RAM_C206_), a
		ld hl, _RAM_FFFF_
		ld (hl), $0C
		ld de, $6FC0
		rst $08	; _LABEL_8_
		ld a, (_RAM_C206_)
		sub $1C
		add a, a
		add a, a
		ld hl, _DATA_4352_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C208_)
		add hl, de
		ld c, Port_VDPData
-:	
		outi
		jp nz, -
		dec a
		jp nz, -
_LABEL_430B_:	
		ld a, (_RAM_C380_)
		cp $12
		ret nz
		ld a, (_RAM_C207_)
		ld b, a
		ld a, (_RAM_C381_)
		cp $2D
		jr z, +
		cp b
		ret z
		or a
		ret z
+:	
		ld (_RAM_C207_), a
		ld hl, _RAM_FFFF_
		ld (hl), $0C
		ld de, $7140
		rst $08	; _LABEL_8_
		ld a, (_RAM_C207_)
		sub $25
		add a, a
		add a, a
		ld hl, _DATA_4352_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld a, (hl)
		ld hl, (_RAM_C20A_)
		add hl, de
		ld c, Port_VDPData
-:	
		outi
		jp nz, -
		dec a
		jp nz, -
		ret
	
; Data from 4352 to 4375 (36 bytes)	
_DATA_4352_:	
	.db $00 $00 $80 $02 $80 $01 $80 $02 $00 $03 $80 $02 $80 $04 $C0 $01
	.db $40 $05 $C0 $01 $00 $06 $80 $01 $80 $06 $80 $01 $00 $07 $40 $01
	.db $40 $07 $40 $01
	
_LABEL_4376_:	
		ld a, (_RAM_C250_)
		or a
		ret z
		ld a, (_RAM_C24F_)
		ld b, a
		ld a, (_RAM_C321_)
		cp b
		ret z
		ld (_RAM_C24F_), a
		cp $C1
		jr nz, +
		xor a
		ld (_RAM_C250_), a
+:	
		ld de, $7340
		rst $08	; _LABEL_8_
		ld hl, _RAM_FFFF_
		ld (hl), $0C
		ld a, (_RAM_C24F_)
		sub $BD
		ld l, $00
		ld h, a
		add hl, hl
		ld de, _DATA_32ED3_
		add hl, de
		ld c, Port_VDPData
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		call _LABEL_3DB6_
		jp _LABEL_3DB6_
	
_LABEL_43B3_:	
		ld hl, (_RAM_C1F8_)
		ld a, l
		cp $01
		jp z, _LABEL_4472_
		cp $02
		jp z, _LABEL_4472_
		ld a, h
		or a
		jp nz, _LABEL_441B_
		ld de, (_RAM_C19D_)
		ld bc, (_RAM_C1E9_)
		call _LABEL_B6E_
		ld c, d
		ld d, e
		ld e, h
		ld b, $00
		ld hl, $0000
		ld ix, _RAM_CA00_
		exx
		ld de, (_RAM_C19F_)
		ld hl, (_RAM_C197_)
		ld a, (_RAM_C193_)
		ld b, a
-:	
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		djnz -
		ret
	
_LABEL_441B_:	
		ld de, (_RAM_C19D_)
		ld bc, (_RAM_C1E9_)
		call _LABEL_B6E_
		ld c, d
		ld d, e
		ld e, h
		ld b, $00
		ld hl, $0000
		ld ix, _RAM_CA00_
		exx
		ld de, (_RAM_C19F_)
		ld hl, (_RAM_C197_)
		ld a, (_RAM_C193_)
		ld b, a
-:	
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		neg
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		djnz -
		ret
	
_LABEL_4472_:	
		ld de, (_RAM_C19D_)
		ld bc, (_RAM_C1E9_)
		call _LABEL_B6E_
		ld c, d
		ld d, e
		ld e, h
		ld b, $00
		push de
		push bc
		ld hl, $0000
		ld ix, _RAM_CA00_
		exx
		ld de, (_RAM_C19F_)
		ld hl, (_RAM_C197_)
		ld a, (_RAM_C193_)
		ld b, a
_LABEL_4497_:	
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		dec b
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		neg
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		djnz _LABEL_4497_
		pop bc
		pop de
		ld hl, $0000
		ld ix, _RAM_CA00_
		exx
		ld de, (_RAM_C19F_)
		ld hl, (_RAM_C197_)
		inc h
		ld a, (_RAM_C193_)
		ld b, a
_LABEL_4510_:	
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		neg
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		dec b
		exx
		add hl, de
		ld a, b
		adc a, c
		ld b, a
		ld a, (ix+0)
		bit 7, a
		jp nz, +
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $00
		jp ++
	
+:	
		add a, h
		exx
		ld (hl), a
		inc l
		exx
		ld a, b
		adc a, $FF
++:	
		inc ix
		exx
		ld (hl), a
		inc l
		ld a, d
		add a, e
		ld d, a
		jp nc, +
		exx
		inc ix
		exx
+:	
		djnz _LABEL_4510_
		ret
	
_LABEL_4574_:	
		ld hl, _RAM_FFFF_
		ld (hl), $06
		ld a, (_RAM_C1B4_)
		cp $13
		jp nc, _LABEL_4688_
		ld a, (_RAM_C1B7_)
		or a
		jp nz, _LABEL_460F_
		ld iy, (_RAM_C199_)
		ld a, (_RAM_C192_)
		ld b, a
		sub $0C
		neg
		ld ixl, a
		ld ixh, $CD
		ld de, (_RAM_C19B_)
		ld hl, (_RAM_C195_)
_LABEL_45A0_:	
		push bc
		push hl
		push de
		ld a, b
		cp $0A
		jp nc, _LABEL_45FB_
		ld a, (iy+8)
		rrca
		rrca
		and $3E
		jp z, ++
		ld b, a
		cp (ix+0)
		jp z, _LABEL_45FB_
		ld (ix+0), b
		bit 7, (iy+9)
		jp nz, +
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		ldir
		ld c, a
		ld hl, _DATA_4787_
		ldir
		jp _LABEL_45FB_
	
+:	
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		add hl, bc
		push hl
		ld hl, _DATA_4787_
		ldir
		pop hl
		ld c, a
		ldir
		jp _LABEL_45FB_
	
++:	
		cp (ix+0)
		jp z, _LABEL_45FB_
		ld (ix+0), a
		ld bc, $0040
		ldir
_LABEL_45FB_:	
		inc ix
		ld a, iyl
		add a, $10
		ld iyl, a
		pop hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop hl
		add hl, bc
		pop bc
		djnz _LABEL_45A0_
		ret
	
_LABEL_460F_:	
		xor a
		ld (_RAM_C1B7_), a
		ld iy, (_RAM_C199_)
		ld a, (_RAM_C192_)
		ld b, a
		sub $0C
		neg
		ld ixl, a
		ld ixh, $CD
		ld de, (_RAM_C19B_)
		ld hl, (_RAM_C195_)
_LABEL_462B_:	
		push bc
		push hl
		push de
		ld a, (iy+8)
		rrca
		rrca
		and $3E
		jp z, ++
		ld b, a
		ld (ix+0), b
		bit 7, (iy+9)
		jp nz, +
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		ldir
		ld c, a
		ld hl, _DATA_4787_
		ldir
		jp +++
	
+:	
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		add hl, bc
		push hl
		ld hl, _DATA_4787_
		ldir
		pop hl
		ld c, a
		ldir
		jp +++
	
++:	
		ld (ix+0), a
		ld bc, $0040
		ldir
+++:	
		inc ix
		ld a, iyl
		add a, $10
		ld iyl, a
		pop hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop hl
		add hl, bc
		pop bc
		djnz _LABEL_462B_
		ret
	
_LABEL_4688_:	
		ld a, (_RAM_C1B7_)
		or a
		jp nz, _LABEL_470F_
		ld iy, (_RAM_C199_)
		ld a, (_RAM_C192_)
		ld b, a
		sub $0C
		neg
		ld ixl, a
		ld ixh, $CD
		ld de, (_RAM_C19B_)
		ld hl, (_RAM_C195_)
_LABEL_46A7_:	
		push bc
		push hl
		push de
		ld a, (iy+8)
		rrca
		rrca
		and $3E
		jp z, ++
		ld b, a
		cp (ix+0)
		jp z, _LABEL_46FB_
		ld (ix+0), b
		bit 7, (iy+9)
		jp nz, +
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		ldir
		ld c, a
		set 1, h
		ldir
		res 1, h
		jp _LABEL_46FB_
	
+:	
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		set 1, h
		ldir
		res 1, h
		ld c, a
		ldir
		jp _LABEL_46FB_
	
++:	
		cp (ix+0)
		jp z, _LABEL_46FB_
		ld (ix+0), a
		ld bc, $0040
		ldir
_LABEL_46FB_:	
		inc ix
		ld a, iyl
		add a, $10
		ld iyl, a
		pop hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop hl
		add hl, bc
		pop bc
		djnz _LABEL_46A7_
		ret
	
_LABEL_470F_:	
		xor a
		ld (_RAM_C1B7_), a
		ld iy, (_RAM_C199_)
		ld a, (_RAM_C192_)
		ld b, a
		sub $0C
		neg
		ld ixl, a
		ld ixh, $CD
		ld de, (_RAM_C19B_)
		ld hl, (_RAM_C195_)
_LABEL_472B_:	
		push bc
		push hl
		push de
		ld a, (iy+8)
		rrca
		rrca
		and $3E
		jp z, ++
		ld b, a
		ld (ix+0), b
		bit 7, (iy+9)
		jp nz, +
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		ldir
		ld c, a
		set 1, h
		ldir
		res 1, h
		jp +++
	
+:	
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		set 1, h
		ldir
		res 1, h
		ld c, a
		ldir
		jp +++
	
++:	
		ld (ix+0), a
		ld bc, $0040
		ldir
+++:	
		inc ix
		ld a, iyl
		add a, $10
		ld iyl, a
		pop hl
		ld bc, $0040
		add hl, bc
		ex de, hl
		pop hl
		add hl, bc
		pop bc
		djnz _LABEL_472B_
		ret
	
; Data from 4787 to 47C6 (64 bytes)	
_DATA_4787_:	
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	
_LABEL_47C7_:	
		ld hl, _RAM_FFFF_
		ld (hl), $03
		ld a, (_RAM_C20F_)
		or a
		jp nz, _LABEL_4819_
		ld hl, (_RAM_C20D_)
		ld c, (hl)
		inc hl
		ld b, (hl)
		ex de, hl
		ld hl, (_RAM_C1A9_)
		or a
		sbc hl, bc
		ret c
		inc de
		ld a, (de)
		ld (_RAM_C20F_), a
		or a
		jp z, +
		ld l, a
		inc de
		ld a, (de)
		ld (_RAM_C210_), a
		ld (_RAM_C211_), a
		inc de
		ld (_RAM_C20D_), de
		inc bc
		inc bc
		ld (_RAM_C212_), bc
		ld a, l
		add a, a
		ld hl, _DATA_48E5_ - 2
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp ++
	
+:	
		inc de
		ld a, (de)
		inc de
		ld (_RAM_C20D_), de
		jp _LABEL_5390_
	
_LABEL_4819_:	
		ld hl, (_RAM_C1A9_)
		ld bc, (_RAM_C212_)
		or a
		sbc hl, bc
		ret c
		inc bc
		inc bc
		ld (_RAM_C212_), bc
		ld a, (_RAM_C211_)
		or a
		jp z, +
		dec a
		ld (_RAM_C211_), a
		ret
	
+:	
		ld a, (_RAM_C210_)
		ld (_RAM_C211_), a
		ld hl, (_RAM_C214_)
++:	
		ld e, (hl)
		inc hl
		ld a, (hl)
		ld (_RAM_C246_), a
		inc hl
		ld (_RAM_C214_), hl
		ld b, (hl)
		push bc
		ld a, e
		ld (_RAM_C1B4_), a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		push hl
		ld de, _DATA_4A74_
		add hl, de
		ld de, _RAM_C192_
		ld bc, $0010
		ldir
		pop hl
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, de
		ld de, $B680
		add hl, de
		ld (_RAM_C1B5_), hl
		ld hl, _DATA_48CF_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (_RAM_C216_)
		sub (hl)
		ex de, hl
		ld c, a
		rlca
		sbc a, a
		ld b, a
		ld hl, (_RAM_C1E5_)
		ld a, l
		add a, $30
		cp $60
		jr c, ++
		bit 7, h
		jr nz, +
		xor a
		sub c
		ld c, a
		ld a, $00
		sbc a, b
		ld b, a
+:	
		add hl, bc
		ld (_RAM_C1E5_), hl
++:	
		ld a, (de)
		ld (_RAM_C216_), a
		ld a, $FF
		ld (_RAM_C1B7_), a
		pop af
		cp $FF
		ret nz
		xor a
		ld (_RAM_C20F_), a
		ret
	
_LABEL_48AC_:	
		ld a, $FF
		ld (_RAM_C1B7_), a
		xor a
		ld (_RAM_C20F_), a
		ld (_RAM_C1B4_), a
		ld hl, _DATA_4A74_
		ld de, _RAM_C192_
		ld bc, $0010
		ldir
		ld a, $04
		ld (_RAM_C246_), a
		ld hl, $B680
		ld (_RAM_C1B5_), hl
		ret
	
; Data from 48CF to 48E4 (22 bytes)	
_DATA_48CF_:	
	.dsb 19, $00
	.db $10 $20 $30
	
; Pointer Table from 48E5 to 491E (29 entries, indexed by unknown)	
_DATA_48E5_:	
	.dw _DATA_491F_ _DATA_4926_ _DATA_492D_ _DATA_493E_ _DATA_4947_ _DATA_4950_ _DATA_4965_ _DATA_4970_
	.dw _DATA_497B_ _DATA_4990_ _DATA_4999_ _DATA_49A6_ _DATA_49B7_ _DATA_4947_ _DATA_49C0_ _DATA_49D5_
	.dw _DATA_49E0_ _DATA_49EB_ _DATA_4990_ _DATA_4A00_ _DATA_4A0D_ _DATA_4A1E_ _DATA_4947_ _DATA_4A27_
	.dw _DATA_4A3C_ _DATA_4A47_ _DATA_4A52_ _DATA_4990_ _DATA_4A67_
	
; 1st entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 491F to 4925 (7 bytes)	
_DATA_491F_:	
	.db $13 $04 $14 $04 $15 $04 $FF
	
; 2nd entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4926 to 492C (7 bytes)	
_DATA_4926_:	
	.db $14 $04 $13 $04 $00 $04 $FF
	
; 3rd entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 492D to 493D (17 bytes)	
_DATA_492D_:	
	.db $0C $05 $0D $06 $0E $07 $0F $08 $10 $07 $11 $06 $12 $04 $00 $04
	.db $FF
	
; 4th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 493E to 4946 (9 bytes)	
_DATA_493E_:	
	.db $0C $05 $0D $06 $0E $07 $0F $08 $FF
	
; 5th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4947 to 494F (9 bytes)	
_DATA_4947_:	
	.db $10 $07 $11 $06 $12 $04 $00 $04 $FF
	
; 6th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4950 to 4964 (21 bytes)	
_DATA_4950_:	
	.db $05 $03 $06 $02 $08 $04 $09 $06 $0A $08 $0F $08 $10 $07 $11 $06
	.db $12 $04 $00 $04 $FF
	
; 7th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4965 to 496F (11 bytes)	
_DATA_4965_:	
	.db $05 $03 $06 $02 $08 $04 $09 $06 $0A $08 $FF
	
; 8th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4970 to 497A (11 bytes)	
_DATA_4970_:	
	.db $0F $08 $10 $07 $11 $06 $12 $04 $00 $04 $FF
	
; 9th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 497B to 498F (21 bytes)	
_DATA_497B_:	
	.db $01 $03 $02 $02 $03 $01 $04 $00 $07 $02 $08 $04 $09 $06 $0A $08
	.db $0B $06 $00 $04 $FF
	
; 10th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4990 to 4998 (9 bytes)	
_DATA_4990_:	
	.db $01 $03 $02 $02 $03 $01 $04 $00 $FF
	
; 11th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4999 to 49A5 (13 bytes)	
_DATA_4999_:	
	.db $07 $02 $08 $04 $09 $06 $0A $08 $0B $06 $00 $04 $FF
	
; 12th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49A6 to 49B6 (17 bytes)	
_DATA_49A6_:	
	.db $0C $05 $0D $07 $0E $09 $0F $09 $10 $07 $11 $06 $12 $04 $00 $04
	.db $FF
	
; 13th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49B7 to 49BF (9 bytes)	
_DATA_49B7_:	
	.db $0C $05 $0D $07 $0E $09 $0F $09 $FF
	
; 15th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49C0 to 49D4 (21 bytes)	
_DATA_49C0_:	
	.db $05 $03 $06 $02 $08 $05 $09 $08 $0A $0A $0F $09 $10 $07 $11 $06
	.db $12 $04 $00 $04 $FF
	
; 16th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49D5 to 49DF (11 bytes)	
_DATA_49D5_:	
	.db $05 $03 $06 $02 $08 $05 $09 $08 $0A $0A $FF
	
; 17th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49E0 to 49EA (11 bytes)	
_DATA_49E0_:	
	.db $0F $09 $10 $07 $11 $06 $12 $04 $00 $04 $FF
	
; 18th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 49EB to 49FF (21 bytes)	
_DATA_49EB_:	
	.db $01 $03 $02 $02 $03 $01 $04 $00 $07 $02 $08 $05 $09 $08 $0A $09
	.db $0B $06 $00 $04 $FF
	
; 20th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A00 to 4A0C (13 bytes)	
_DATA_4A00_:	
	.db $07 $02 $08 $05 $09 $08 $0A $09 $0B $06 $00 $04 $FF
	
; 21st entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A0D to 4A1D (17 bytes)	
_DATA_4A0D_:	
	.db $0C $05 $0D $07 $0E $09 $0F $0A $10 $07 $11 $06 $12 $04 $00 $04
	.db $FF
	
; 22nd entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A1E to 4A26 (9 bytes)	
_DATA_4A1E_:	
	.db $0C $05 $0D $07 $0E $09 $0F $0A $FF
	
; 24th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A27 to 4A3B (21 bytes)	
_DATA_4A27_:	
	.db $05 $03 $06 $02 $08 $05 $09 $08 $0A $0A $0F $0A $10 $07 $11 $06
	.db $12 $04 $00 $04 $FF
	
; 25th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A3C to 4A46 (11 bytes)	
_DATA_4A3C_:	
	.db $05 $03 $06 $02 $08 $05 $09 $08 $0A $0A $FF
	
; 26th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A47 to 4A51 (11 bytes)	
_DATA_4A47_:	
	.db $0F $0A $10 $07 $11 $06 $12 $04 $00 $04 $FF
	
; 27th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A52 to 4A66 (21 bytes)	
_DATA_4A52_:	
	.db $01 $03 $02 $02 $03 $01 $04 $00 $07 $02 $08 $05 $09 $08 $0A $0A
	.db $0B $06 $00 $04 $FF
	
; 29th entry of Pointer Table from 48E5 (indexed by unknown)	
; Data from 4A67 to 4A73 (13 bytes)	
_DATA_4A67_:	
	.db $07 $02 $08 $05 $09 $08 $0A $0A $0B $06 $00 $04 $FF
	
; Data from 4A74 to 4A76 (3 bytes)	
_DATA_4A74_:	
	.db $08 $40 $7F
	
	; Pointer Table from 4A77 to 4A78 (1 entries, indexed by unknown)
	.dw _DATA_18C00_
	
	; Data from 4A79 to 4BD3 (347 bytes)
	.db $FE $CB $FE $CB $00 $D8 $00 $04 $80 $00 $01 $09 $48 $77 $00 $8E
	.db $EE $CB $EE $CB $C0 $D7 $8E $03 $55 $00 $00 $0A $50 $6F $40 $90
	.db $DE $CB $DE $CB $80 $D7 $33 $03 $33 $00 $00 $0B $58 $67 $C0 $92
	.db $CE $CB $CE $CB $40 $D7 $E8 $02 $17 $00 $00 $0C $60 $5F $80 $95
	.db $BE $CB $BE $CB $00 $D7 $AA $02 $00 $00 $00 $09 $50 $77 $80 $98
	.db $DE $CB $EE $CB $C0 $D7 $33 $03 $33 $00 $00 $0A $60 $6F $C0 $9A
	.db $BE $CB $DE $CB $80 $D7 $AA $02 $00 $00 $01 $0A $60 $6F $40 $9D
	.db $BE $CB $DE $CB $80 $D7 $AA $02 $00 $00 $01 $08 $60 $7F $C0 $9F
	.db $BE $CB $FE $CB $00 $D8 $AA $02 $00 $00 $01 $06 $60 $8F $C0 $A1
	.db $BE $CB $1E $CB $80 $D8 $AA $02 $00 $00 $01 $04 $60 $9F $40 $A3
	.db $BE $CB $3E $CB $00 $D9 $AA $02 $00 $00 $02 $06 $30 $8F $40 $A4
	.db $1E $CB $1E $CB $80 $D8 $55 $05 $FF $00 $02 $07 $40 $87 $C0 $A5
	.db $FE $CB $0E $CB $40 $D8 $00 $04 $80 $00 $01 $06 $40 $8F $80 $A7
	.db $FE $CB $1E $CB $80 $D8 $00 $04 $80 $00 $01 $05 $40 $97 $00 $A9
	.db $FE $CB $2E $CB $C0 $D8 $00 $04 $80 $00 $02 $04 $40 $9F $40 $AA
	.db $FE $CB $3E $CB $00 $D9 $00 $04 $80 $00 $02 $05 $40 $97 $40 $AB
	.db $FE $CB $2E $CB $C0 $D8 $00 $04 $80 $00 $02 $06 $40 $8F $80 $AC
	.db $FE $CB $1E $CB $80 $D8 $00 $04 $80 $00 $02 $08 $40 $7F $00 $AE
	.db $FE $CB $FE $CB $00 $D8 $00 $04 $80 $00 $01 $08 $40 $7F $00 $88
	.db $FE $CB $FE $CB $00 $D8 $00 $04 $80 $00 $01 $08 $40 $7F $00 $84
	.db $FE $CB $FE $CB $00 $D8 $00 $04 $80 $00 $01 $08 $40 $7F $00 $80
	.db $FE $CB $FE $CB $00 $D8 $00 $04 $80 $00 $01
	
_LABEL_4BD4_:	
		ld hl, _RAM_FFFF_
		ld (hl), $04
		ld hl, (_RAM_C1B0_)
		ld de, (_RAM_C1AE_)
		ld a, d
		rlca
		sbc a, a
		ld c, a
		add hl, de
		ld (_RAM_C1B0_), hl
		ld a, (_RAM_C1B2_)
		adc a, c
		and $03
		ld (_RAM_C1B2_), a
		ld c, h
		ld b, a
		srl b
		rr c
		srl b
		rr c
		res 0, c
		ld a, (_RAM_C192_)
		sub $0C
		neg
		ld a, (_RAM_C246_)
		ld l, $00
		rrca
		rr l
		rrca
		rr l
		and $03
		ld h, a
		ld de, (_RAM_C1FC_)
		add hl, de
		ld a, (_RAM_C1B7_)
		or a
		jp z, +
		push bc
		ld de, _RAM_FF40_
		add hl, de
		ld e, l
		ld d, h
		inc de
		ld (hl), $00
		ld bc, $00C0
		ldir
		pop bc
+:	
		ex de, hl
		ld hl, (_RAM_C1FE_)
		ld a, (_RAM_C242_)
		or a
		jp nz, +
		ld a, (_RAM_C1F8_)
		or a
		jp nz, _LABEL_4D5D_
+:	
		add hl, bc
		ld a, (_RAM_C192_)
		sub $0C
		neg
		ld c, a
		ld a, (_RAM_C246_)
		sub c
		ld c, a
		ld a, (_RAM_C200_)
		sub c
		ret z
		ret c
		ld c, a
_LABEL_4C55_:	
		push hl
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		ld a, (hl)
		ld (de), a
		inc l
		inc de
		pop hl
		inc h
		dec c
		jp nz, _LABEL_4C55_
		ret
	
_LABEL_4D5D_:	
		ld a, (_RAM_C200_)
		ld b, a
		ld a, c
		or a
		jp nz, +
-:	
		push bc
		push hl
		ld bc, $0040
		ldir
		pop hl
		inc h
		pop bc
		djnz -
		ret
	
+:	
		add a, $3E
		cp $7E
		jp c, +
-:	
		push bc
		ld hl, _DATA_4DC7_
		ld bc, $0040
		ldir
		pop bc
		djnz -
		ret
	
+:	
		bit 7, c
		jp z, _LABEL_4DAA_
-:	
		push bc
		push hl
		ld b, c
		ld a, c
		neg
		ld c, a
		ld a, b
		add a, $40
		and $3E
		ld b, $00
		push hl
		ld hl, _DATA_4DC7_
		ldir
		pop hl
		ld c, a
		ldir
		pop hl
		inc h
		pop bc
		djnz -
		ret
	
_LABEL_4DAA_:	
		push bc
		push hl
		ld b, $00
		add hl, bc
		ld b, c
		ld a, c
		sub $40
		neg
		ld c, a
		ld a, b
		ld b, $00
		ldir
		ld hl, _DATA_4DC7_
		ld c, a
		ldir
		pop hl
		inc h
		pop bc
		djnz _LABEL_4DAA_
		ret
	
; Data from 4DC7 to 4E06 (64 bytes)	
_DATA_4DC7_:	
	.db $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09
	.db $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09
	.db $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09
	.db $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09
	
_LABEL_4E07_:	
		ld a, (_RAM_C223_)
		or a
		jp z, _LABEL_4E93_
		ld hl, _RAM_FFFF_
		ld (hl), $0B
		ld c, a
		add a, a
		ld l, a
		add a, a
		add a, l
		add a, a
		ld hl, _DATA_2F091_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, c
		dec a
		jp z, _LABEL_4E2F_
		push hl
		call _LABEL_4E2F_
		pop hl
		ld de, $0006
		add hl, de
_LABEL_4E2F_:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
-:	
		push bc
		push de
		ld b, $00
		ldir
		pop bc
		ex de, hl
		ld hl, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ret
	
_LABEL_4E4C_:	
		ld a, (_RAM_C223_)
		or a
		jp z, _LABEL_4EF8_
		ld hl, _RAM_FFFF_
		ld (hl), $0B
		ld c, a
		add a, a
		ld l, a
		add a, a
		add a, l
		add a, a
		ld hl, _DATA_2F091_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, c
		dec a
		jp z, _LABEL_4E74_
		push hl
		call _LABEL_4E74_
		pop hl
		ld de, $0006
		add hl, de
_LABEL_4E74_:	
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld c, (hl)
		inc hl
		ld b, (hl)
-:	
		push bc
		push de
		ld b, $00
		ld hl, _DATA_4DC7_
		ldir
		pop bc
		ld hl, $0040
		add hl, bc
		ex de, hl
		pop bc
		djnz -
		ld a, $FF
		ld (_RAM_C1B7_), a
		ret
	
_LABEL_4E93_:	
		ld a, (_RAM_C247_)
		or a
		ret z
		ld hl, _RAM_FFFF_
		ld (hl), $0B
		ld hl, _RAM_C3A0_
		ld de, $0020
		ld b, $06
-:	
		push hl
		ld a, (hl)
		cp $1E
		jr nz, +
		inc hl
		ld a, (hl)
		or a
		jr z, +
		ld hl, $C251
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld (hl), $FF
+:	
		pop hl
		add hl, de
		djnz -
		ld hl, _RAM_C25A_
		ld bc, $0809
-:	
		push bc
		push hl
		bit 7, (hl)
		ld (hl), $00
		call nz, +
		pop hl
		dec hl
		pop bc
		dec c
		djnz -
		ret
	
+:	
		ld a, c
		add a, a
		ld l, a
		add a, a
		add a, a
		add a, a
		add a, l
		ld hl, $B39F
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		push hl
		call _LABEL_4E2F_
		pop hl
		ld de, $0006
		add hl, de
		push hl
		call _LABEL_4E2F_
		pop hl
		ld de, $0006
		add hl, de
		jp _LABEL_4E2F_
	
_LABEL_4EF8_:	
		ld a, (_RAM_C247_)
		or a
		ret z
		ld hl, _RAM_FFFF_
		ld (hl), $0B
		ld hl, _RAM_C3A0_
		ld b, $06
-:	
		push bc
		push hl
		ld a, (hl)
		cp $1E
		call z, +
		pop hl
		ld de, $0020
		add hl, de
		pop bc
		djnz -
		ret
	
+:	
		inc hl
		ld a, (hl)
		or a
		ret z
		add a, a
		ld l, a
		add a, a
		add a, a
		add a, a
		add a, l
		ld hl, _DATA_2F39F_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		push hl
		call _LABEL_4E74_
		pop hl
		ld de, $0006
		add hl, de
		push hl
		call _LABEL_4E74_
		pop hl
		ld de, $0006
		add hl, de
		jp _LABEL_4E74_
	
_LABEL_4F3F_:	
		ld hl, _RAM_FFFF_
		ld (hl), $03
		ld hl, (_RAM_C1E3_)
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ex de, hl
		ld hl, (_RAM_C1A9_)
		or a
		sbc hl, bc
		jp c, ++
		ld a, (_RAM_C1F9_)
		or a
		ld a, (de)
		jr z, +
		or a
		jr z, +
		cp $01
		ld a, $02
		jr z, +
		dec a
+:	
		ld (_RAM_C1E1_), a
		inc de
		ld a, (de)
		ld (_RAM_C1E2_), a
		inc de
		ld (_RAM_C1E3_), de
		inc de
		inc de
		ld a, (de)
		ld (_RAM_C1FA_), a
++:	
		ld a, (_RAM_C1A3_)
		or a
		jp m, _LABEL_4FD5_
		ld hl, (_RAM_C1A6_)
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ex de, hl
		ld hl, (_RAM_C1A9_)
		or a
		sbc hl, bc
		ret c
		inc bc
		inc bc
		ld (_RAM_C1AB_), bc
		ld a, (de)
		inc de
		ld (_RAM_C1A6_), de
		cp $FF
		jr nz, +
		ld hl, $0000
		ld (_RAM_C1A8_), hl
		xor a
		ld (_RAM_C1AA_), a
		ld hl, $894C
		ld (_RAM_C1A6_), hl
		ld hl, _DATA_CCAC_
		ld (_RAM_C1E3_), hl
		ret
	
+:	
		ld hl, _RAM_FFFF_
		ld (hl), $05
		ld b, a
		and $7F
		ld hl, $BEF4
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, $FF
		rl b
		rla
		ld (_RAM_C1A3_), a
		jp +
	
_LABEL_4FD5_:	
		ld hl, (_RAM_C1A9_)
		ld bc, (_RAM_C1AB_)
		or a
		sbc hl, bc
		ret c
		inc bc
		inc bc
		ld (_RAM_C1AB_), bc
		ld hl, _RAM_FFFF_
		ld (hl), $05
		ld hl, (_RAM_C1A4_)
+:	
		ld a, (hl)
		inc hl
		ld (_RAM_C1A4_), hl
		cp $FF
		jp z, +
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld e, l
		ld d, h
		add hl, hl
		add hl, hl
		add hl, de
		set 7, h
		ld de, _RAM_CA4F_
		ld b, $50
		ld a, (_RAM_C1A3_)
		rrca
		jp nc, _LABEL_501B_
-:	
		ld a, (hl)
		neg
		ld (de), a
		inc hl
		dec de
		djnz -
		ret
	
_LABEL_501B_:	
		ld a, (hl)
		ld (de), a
		inc hl
		dec de
		djnz _LABEL_501B_
		ret
	
+:	
		xor a
		ld (_RAM_C1A3_), a
		ret
	
_LABEL_5027_:	
		ld a, (_RAM_C1F8_)
		or a
		jp nz, _LABEL_508D_
		ld hl, (_RAM_C1A9_)
		ld de, $079C
		or a
		sbc hl, de
		ret c
		ld a, (_RAM_C1D7_)
		or a
		ret nz
		ld a, $01
		ld (_RAM_C1F8_), a
		ld hl, $0000
		ld (_RAM_C1A8_), hl
		xor a
		ld (_RAM_C1AA_), a
		ld hl, _DATA_CC9D_
		ld (_RAM_C1A6_), hl
		ld hl, _DATA_D060_
		ld (_RAM_C1E3_), hl
		call _LABEL_48AC_
		ld hl, $C226
		ld a, (_RAM_C11D_)
		add a, a
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld (hl), $FF
		ld a, (_RAM_C11D_)
		cp $04
		ret nz
		xor a
		ld (_RAM_C360_), a
		ld (_RAM_C380_), a
		ld a, $01
		ld (_RAM_C242_), a
		ld hl, $FFFF
		ld (_RAM_C248_), hl
		ld hl, (_RAM_DE03_)
		ld de, (_RAM_DE07_)
		add hl, de
		ld (_RAM_DE07_), hl
		ret
	
_LABEL_508D_:	
		cp $03
		jp nc, ++
		ld hl, (_RAM_C1A9_)
		ld de, $003F
		or a
		sbc hl, de
		ret c
		ld a, (_RAM_C1E6_)
		rlca
		ld hl, _RAM_C360_
		ld de, $0003
		jr nc, +
		ld hl, _RAM_C380_
		inc d
+:	
		ld (_RAM_C1F8_), de
		ld (hl), $00
		ld hl, $C227
		ld a, (_RAM_C11D_)
		add a, a
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		dec d
		dec d
		ld (hl), d
		ret
	
++:	
		cp $04
		jp nc, _LABEL_5129_
		ld hl, (_RAM_C1A9_)
		ld de, $00A0
		or a
		sbc hl, de
		ret c
		ld a, (_RAM_C242_)
		or a
		jp z, +
		ld a, $FF
		ld (_RAM_C24C_), a
		ld a, $04
		ld (_RAM_C1F8_), a
		ret
	
+:	
		ld a, (_RAM_C1F9_)
		ld c, a
		ld a, (_RAM_C1F6_)
		ld b, a
		ld a, (_RAM_C11D_)
		inc a
		cp $05
		jr c, +
		xor a
		ld c, a
		ld b, a
+:	
		add a, c
		add a, b
		and $0F
		ld (_RAM_C1F6_), a
		add a, $02
		push bc
		call _LABEL_5390_
		pop bc
		ld hl, _RAM_FFFF_
		ld (hl), $05
		ld a, b
		add a, a
		add a, c
		add a, a
		ld l, a
		ld h, $00
		ld de, _DATA_52FB_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, (hl)
		ld (_RAM_C21F_), a
		inc hl
		ld (_RAM_C220_), hl
		call _LABEL_51DF_
		ld a, $04
		ld (_RAM_C1F8_), a
		ret
	
_LABEL_5129_:	
		cp $05
		jp nc, +
		ld hl, (_RAM_C1A9_)
		ld de, $016A
		or a
		sbc hl, de
		ret c
		ld a, $FF
		ld (_RAM_C222_), a
		ld hl, $000B
		ld (_RAM_C3A0_), hl
		ld a, $05
		ld (_RAM_C1F8_), a
		ret
	
+:	
		ld a, (_RAM_C300_)
		or a
		ret nz
		ld a, (_RAM_C3A0_)
		or a
		ret nz
		call _LABEL_519B_
		call _LABEL_5203_
		ld a, (_RAM_C1F6_)
		ld hl, _DATA_5323_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (_RAM_C225_)
		add a, (hl)
		ld (_RAM_C225_), a
		ld hl, (_RAM_DE03_)
		ld (_RAM_DE05_), hl
		ld de, (_RAM_DE07_)
		add hl, de
		ld (_RAM_DE07_), hl
		ld hl, $0000
		ld (_RAM_DE03_), hl
		ld (_RAM_C1F8_), hl
		ld a, (_RAM_C11D_)
		inc a
		cp $05
		jr c, +
		xor a
+:	
		ld (_RAM_C11D_), a
		ld a, $01
		ld (_RAM_C222_), a
		ld hl, _RAM_C000_
		ld (hl), $85
		jp _LABEL_3F14_
	
_LABEL_519B_:	
		ld a, (_RAM_C1F6_)
		add a, a
		add a, a
		add a, a
		ld hl, _DATA_5230_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C1A6_), de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C1E3_), de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C202_), de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld (_RAM_C20D_), de
		ld hl, $0000
		ld (_RAM_C1A8_), hl
		xor a
		ld (_RAM_C1AA_), a
		ld (_RAM_C1B0_), a
		ld (_RAM_C1F8_), hl
		ld hl, $0007
		ld (_RAM_C1B1_), hl
		ret
	
_LABEL_51DF_:	
		ld a, (_RAM_C1F6_)
		ld l, a
		add a, a
		add a, a
		add a, l
		ld hl, _DATA_52B0_
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C1FC_), de
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc hl
		ld (_RAM_C1FE_), de
		ld a, (hl)
		ld (_RAM_C200_), a
		ret
	
_LABEL_5203_:	
		ld a, (_RAM_DE27_)
		rrca
		rrca
		rrca
		and $60
		ld b, a
		ld a, (_RAM_C1F6_)
		add a, a
		add a, b
		ld hl, $5332
		add a, l
		ld l, a
		adc a, h
		sub l
		ld h, a
		ld a, (_RAM_DE01_)
		add a, (hl)
		daa
		jr nc, +
		ld a, $99
+:	
		ld d, a
		ld e, $FF
		ld (_RAM_DE00_), de
		inc hl
		ld l, (hl)
		ld h, l
		ld (_RAM_C219_), hl
		ret
	
; Data from 5230 to 5233 (4 bytes)	
_DATA_5230_:	
	.db $4C $89 $AC $8C
	
	; Pointer Table from 5234 to 5235 (1 entries, indexed by _RAM_C1F6_)
	.dw _DATA_D0A2_
	
	; Pointer Table from 5236 to 52AF (61 entries, indexed by _RAM_C1F6_)
	.dw _DATA_D074_ _DATA_C985_ _DATA_CCF8_ _DATA_D5AA_ _DATA_D594_ _DATA_C9B2_ _DATA_CD30_ _DATA_D9BA_
	.dw _DATA_D988_ _DATA_C9EE_ _DATA_CD80_ _DATA_DAE6_ _DATA_DAB0_ _DATA_CA4B_ _DATA_CDD4_ _DATA_DB9E_
	.dw _DATA_DB8C_ _DATA_CA87_ _DATA_CE14_ _DATA_DDDA_ _DATA_DDB0_ _DATA_CAAE_ _DATA_CE44_ _DATA_E29E_
	.dw _DATA_E278_ _DATA_CAD8_ _DATA_CE74_ _DATA_E4CE_ _DATA_E49C_ _DATA_CB17_ _DATA_CEB0_ _DATA_E8E2_
	.dw _DATA_E8B4_ _DATA_CB4D_ _DATA_CEEC_ _DATA_EDEE_ _DATA_EDD4_ _DATA_CB8F_ _DATA_CF28_ _DATA_EF62_
	.dw _DATA_EF3C_ _DATA_CBD4_ _DATA_CF74_ _DATA_F126_ _DATA_F104_ _DATA_CC07_ _DATA_CFB0_ _DATA_F45E_
	.dw _DATA_F448_ _DATA_CC34_ _DATA_CFE8_ _DATA_F8C2_ _DATA_F888_ _DATA_CC73_ _DATA_D034_ _DATA_FCA2_
	.dw _DATA_FC88_ _DATA_CC9D_ _DATA_D060_ _DATA_D0A2_ _DATA_D074_
	
; Data from 52B0 to 52B1 (2 bytes)	
_DATA_52B0_:	
	.db $80 $D4
	
	; Pointer Table from 52B2 to 52B3 (1 entries, indexed by _RAM_C1F6_)
	.dw _DATA_10000_
	
	; Data from 52B4 to 52FA (71 bytes)
	.db $0A $00 $D5 $00 $8A $08 $80 $D6 $00 $9B $02 $C0 $D6 $00 $9F $01
	.db $40 $D5 $00 $94 $07 $00 $D5 $00 $8A $08 $C0 $D6 $00 $9E $01 $80
	.db $D6 $00 $A0 $02 $80 $D4 $00 $A2 $0A $C0 $D6 $00 $9D $01 $00 $D6
	.db $00 $AC $04 $40 $D6 $00 $B0 $03 $80 $D6 $00 $B3 $02 $C0 $D5 $00
	.db $B5 $05 $80 $D6 $00 $92 $02
	
; Pointer Table from 52FB to 5322 (20 entries, indexed by _RAM_C1F6_)	
_DATA_52FB_:	
	.dw _DATA_17CA0_ _DATA_17CB9_ _DATA_17CDE_ _DATA_17CF7_ _DATA_17D0A_ _DATA_17D35_ _DATA_17D54_ _DATA_17D79_
	.dw _DATA_17D9E_ _DATA_17DBD_ _DATA_17DE2_ _DATA_17DFB_ _DATA_17E0E_ _DATA_17E27_ _DATA_17E40_ _DATA_17E65_
	.dw _DATA_17E8A_ _DATA_17EA9_ _DATA_17EC8_ _DATA_17EE1_
	
; Data from 5323 to 538F (109 bytes)	
_DATA_5323_:	
	.db $00 $01 $02 $02 $03 $04 $04 $05 $07 $08 $08 $09 $0C $0F $10 $75
	.db $3F $62 $2F $65 $2F $60 $1F $60 $1F $55 $1F $65 $0F $60 $0F $62
	.db $0F $65 $0F $56 $00 $56 $00 $56 $00 $56 $00 $56 $00 $00 $00 $80
	.db $4F $65 $3F $62 $3F $57 $2F $62 $2F $60 $2F $66 $1F $63 $1F $61
	.db $1F $65 $1F $58 $0F $55 $0F $56 $0F $58 $0F $56 $0F $00 $00 $70
	.db $1F $65 $0F $62 $0F $57 $07 $60 $07 $58 $07 $62 $03 $60 $03 $58
	.db $03 $63 $03 $54 $00 $54 $00 $54 $00 $54 $00 $56 $00
	
_LABEL_5390_:	
		ld l, a
		ld h, $00
		add hl, hl
		ld de, _DATA_53AB_
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld c, (hl)
		inc hl
		ld b, $00
		ld de, _RAM_C125_
		ldir
		ex de, hl
		ld (hl), $FF
		jp _LABEL_ACF_
	
; Pointer Table from 53AB to 53AE (2 entries, indexed by unknown)	
_DATA_53AB_:	
	.dw _DATA_53E9_ _DATA_53EF_
	
; Pointer Table from 53AF to 53E8 (29 entries, indexed by _RAM_C1F6_)	
_DATA_53AF_:	
	.dw _DATA_53F5_ _DATA_5400_ _DATA_5410_ _DATA_5420_ _DATA_542B_ _DATA_543B_ _DATA_544B_ _DATA_5460_
	.dw _DATA_5470_ _DATA_5480_ _DATA_5490_ _DATA_54A0_ _DATA_54B0_ _DATA_54C5_ _DATA_54DA_ _DATA_54EA_
	.dw _DATA_54F0_ _DATA_54F6_ _DATA_54FC_ _DATA_5502_ _DATA_551D_ _DATA_5538_ _DATA_5558_ _DATA_5573_
	.dw _DATA_5512_ _DATA_552D_ _DATA_5548_ _DATA_5568_ _DATA_5583_
	
; 1st entry of Pointer Table from 53AB (indexed by unknown)	
; Data from 53E9 to 53EE (6 bytes)	
_DATA_53E9_:	
	.db $05 $07 $00 $40 $00 $80
	
; 2nd entry of Pointer Table from 53AB (indexed by unknown)	
; Data from 53EF to 53F4 (6 bytes)	
_DATA_53EF_:	
	.db $05 $07 $80 $45 $05 $97
	
; 1st entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 53F5 to 53FF (11 bytes)	
_DATA_53F5_:	
	.db $0A $0B $00 $60 $00 $80 $08 $40 $66 $5D $91
	
; 2nd entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5400 to 540F (16 bytes)	
_DATA_5400_:	
	.db $0F $0B $00 $60 $44 $85 $08 $80 $69 $DC $B0 $0D $80 $45 $27 $A5
	
; 3rd entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5410 to 541F (16 bytes)	
_DATA_5410_:	
	.db $0F $0B $00 $60 $F9 $92 $07 $40 $64 $94 $B4 $0D $80 $45 $27 $A5
	
; 4th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5420 to 542A (11 bytes)	
_DATA_5420_:	
	.db $0A $0B $00 $60 $00 $98 $0D $80 $45 $27 $A5
	
; 5th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 542B to 543A (16 bytes)	
_DATA_542B_:	
	.db $0F $0B $00 $60 $90 $8C $07 $00 $67 $59 $A5 $0D $80 $45 $27 $A5
	
; 6th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 543B to 5443 (9 bytes)	
_DATA_543B_:	
	.db $0F $0B $00 $60 $44 $85 $08 $80 $66
	
	; Pointer Table from 5444 to 5445 (1 entries, indexed by unknown)
	.dw $968F
	
	; Data from 5446 to 544A (5 bytes)
	.db $0D $80 $45 $27 $A5
	
; 7th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 544B to 545F (21 bytes)	
_DATA_544B_:	
	.db $14 $0B $00 $60 $0B $97 $07 $00 $64 $90 $A1 $08 $00 $6A $17 $AF
	.db $0D $80 $45 $27 $A5
	
; 8th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5460 to 546F (16 bytes)	
_DATA_5460_:	
	.db $0F $0B $00 $60 $D0 $9B $08 $40 $66 $EE $9B $0D $80 $45 $27 $A5
	
; 9th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5470 to 547F (16 bytes)	
_DATA_5470_:	
	.db $0F $0B $00 $60 $20 $9E $08 $80 $66 $2A $A0 $0D $80 $45 $27 $A5
	
; 10th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5480 to 5488 (9 bytes)	
_DATA_5480_:	
	.db $0F $0B $00 $60 $0D $95 $07 $40 $66
	
	; Pointer Table from 5489 to 548A (1 entries, indexed by unknown)
	.dw $AA4F
	
	; Data from 548B to 548F (5 bytes)
	.db $0D $80 $45 $27 $A5
	
; 11th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5490 to 549F (16 bytes)	
_DATA_5490_:	
	.db $0F $0B $00 $60 $04 $A3 $07 $80 $66 $33 $AF $0D $80 $45 $27 $A5
	
; 12th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54A0 to 54AF (16 bytes)	
_DATA_54A0_:	
	.db $0F $0B $00 $60 $CF $A8 $08 $80 $69 $DC $B0 $0D $80 $45 $27 $A5
	
; 13th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54B0 to 54C4 (21 bytes)	
_DATA_54B0_:	
	.db $14 $0B $00 $60 $08 $AB $08 $80 $69 $DC $B0 $08 $00 $65 $97 $B2
	.db $0D $80 $45 $27 $A5
	
; 14th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54C5 to 54D9 (21 bytes)	
_DATA_54C5_:	
	.db $14 $0B $00 $60 $D2 $AC $08 $80 $65 $38 $AB $08 $00 $6A $17 $AF
	.db $0D $80 $45 $27 $A5
	
; 15th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54DA to 54E9 (16 bytes)	
_DATA_54DA_:	
	.db $0F $0B $00 $60 $5B $8A $08 $80 $66 $78 $A5 $0D $80 $45 $27 $A5
	
; 16th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54EA to 54EF (6 bytes)	
_DATA_54EA_:	
	.db $05 $08 $40 $67 $1C $BD
	
; 17th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54F0 to 54F5 (6 bytes)	
_DATA_54F0_:	
	.db $05 $08 $C0 $64 $68 $B5
	
; 18th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54F6 to 54FB (6 bytes)	
_DATA_54F6_:	
	.db $05 $0D $80 $45 $E8 $B6
	
; 19th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 54FC to 5501 (6 bytes)	
_DATA_54FC_:	
	.db $05 $0A $C0 $6F $FD $BB
	
; 20th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5502 to 5505 (4 bytes)	
_DATA_5502_:	
	.db $0F $0C $80 $45
	
	; Pointer Table from 5506 to 5507 (1 entries, indexed by unknown)
	.dw $9E00
	
	; Data from 5508 to 5511 (10 bytes)
	.db $06 $A0 $4D $00 $B0 $06 $A0 $5B $EA $BB
	
; 25th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5512 to 551C (11 bytes)	
_DATA_5512_:	
	.db $0A $09 $00 $60 $A4 $AD $0F $40 $71 $A8 $BD
	
; 21st entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 551D to 5520 (4 bytes)	
_DATA_551D_:	
	.db $0F $0C $80 $45
	
	; Pointer Table from 5521 to 5522 (1 entries, indexed by unknown)
	.dw $9E00
	
	; Data from 5523 to 552C (10 bytes)
	.db $0E $A0 $4D $80 $A3 $0E $20 $52 $7D $A6
	
; 26th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 552D to 5537 (11 bytes)	
_DATA_552D_:	
	.db $0A $0C $00 $60 $A1 $A4 $0D $40 $71 $34 $BF
	
; 22nd entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5538 to 553B (4 bytes)	
_DATA_5538_:	
	.db $0F $0C $80 $45
	
	; Pointer Table from 553C to 553D (1 entries, indexed by unknown)
	.dw $9E00
	
	; Data from 553E to 5547 (10 bytes)
	.db $0E $A0 $4D $80 $A3 $0E $20 $52 $E5 $AF
	
; 27th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5548 to 5557 (16 bytes)	
_DATA_5548_:	
	.db $0F $0B $00 $60 $97 $BA $09 $00 $66 $71 $B6 $0E $00 $40 $A0 $B8
	
; 23rd entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5558 to 555B (4 bytes)	
_DATA_5558_:	
	.db $0F $0C $80 $45
	
	; Pointer Table from 555C to 555D (1 entries, indexed by unknown)
	.dw $9E00
	
	; Data from 555E to 5567 (10 bytes)
	.db $06 $A0 $4D $00 $B0 $07 $A0 $5B $D9 $BB
	
; 28th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5568 to 5570 (9 bytes)	
_DATA_5568_:	
	.db $0A $0B $00 $60 $97 $BA $0C $00 $66
	
	; Pointer Table from 5571 to 5572 (1 entries, indexed by unknown)
	.dw $B753
	
; 24th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5573 to 5576 (4 bytes)	
_DATA_5573_:	
	.db $0F $0C $80 $45
	
	; Pointer Table from 5577 to 5578 (1 entries, indexed by unknown)
	.dw $9E00
	
	; Data from 5579 to 5582 (10 bytes)
	.db $06 $A0 $4D $00 $B0 $0E $A0 $5B $2B $BC
	
; 29th entry of Pointer Table from 53AF (indexed by _RAM_C1F6_)	
; Data from 5583 to 558B (9 bytes)	
_DATA_5583_:	
	.db $0A $0B $00 $60 $97 $BA $0C $00 $66
	
	; Pointer Table from 558C to 558D (1 entries, indexed by unknown)
	.dw $B753
	
_LABEL_558E_:	
		call ++
		call _LABEL_55C7_
		ld ix, _RAM_C007_
		ld b, $07
--:	
		push bc
		ld a, $04
		cp b
		jr z, +
		bit 7, (ix+0)
		call nz, _LABEL_5847_
-:	
		ld de, $0020
		add ix, de
		pop bc
		djnz --
		ret
	
+:	
		bit 7, (ix+0)
		call nz, _LABEL_5756_
		jr -
	
++:	
		ld a, (_RAM_C000_)
		bit 7, a
		ret z
		ld (_RAM_C001_), a
		xor a
		ld (_RAM_C000_), a
		ret
	
_LABEL_55C7_:	
		ld a, (_RAM_C001_)
		bit 7, a
		jp z, _LABEL_5C80_
		cp $91
		jp nc, _LABEL_5C80_
		sub $81
		ret m
		ld c, a
		ld b, $00
		ld hl, _DATA_55F7_
		ld a, (_RAM_C002_)
		or a
		jr z, +
		ld hl, _DATA_5637_
+:	
		add hl, bc
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld de, $001F
		add hl, de
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
	; Data from 55F4 to 55F6 (3 bytes)
	.db $C3 $50 $57
	
; Data from 55F7 to 5616 (32 bytes)	
_DATA_55F7_:	
	.db $62 $7B $8A $66 $61 $70 $E5 $7D $6A $5E $A1 $5E $F7 $5E $25 $5F
	.db $65 $5F $C5 $5F $50 $57 $25 $60 $71 $60 $62 $7B $8A $66 $61 $70
	
; Jump Table from 5617 to 5636 (16 entries, indexed by _RAM_C001_)	
_DATA_5617_:	
	.dw _LABEL_568D_ _LABEL_568D_ _LABEL_568D_ _LABEL_568D_ _LABEL_571D_ _LABEL_56E0_ _LABEL_5704_ _LABEL_56F4_
	.dw _LABEL_5718_ _LABEL_56E0_ _LABEL_5750_ _LABEL_56EF_ _LABEL_571D_ _LABEL_569D_ _LABEL_569D_ _LABEL_569D_
	
; Pointer Table from 5637 to 564A (10 entries, indexed by _RAM_C001_)	
_DATA_5637_:	
	.dw _DATA_7B3D_ _DATA_6665_ _DATA_703C_ _DATA_7DC9_ _DATA_5E4C_ _DATA_5E85_ _DATA_5ED7_ _DATA_5F17_
	.dw _DATA_5F40_ _DATA_5F92_
	
	; Data from 564B to 5656 (12 bytes)
	.db $50 $57 $25 $60 $5E $60 $3D $7B $65 $66 $3C $70
	
; Jump Table from 5657 to 567A (18 entries, indexed by _RAM_C001_)	
_DATA_5657_:	
	.dw _LABEL_568D_ _LABEL_568D_ _LABEL_568D_ _LABEL_568D_ _LABEL_571D_ _LABEL_56E0_ _LABEL_5704_ _LABEL_56F4_
	.dw _LABEL_5718_ _LABEL_56E0_ _LABEL_5750_ _LABEL_56EF_ _LABEL_571D_ _LABEL_569D_ _LABEL_569D_ _LABEL_569D_
	.dw _LABEL_13E_ _LABEL_732_
	
	; Data from 567B to 568C (18 bytes)
	.db $C0 $01 $00 $00 $21 $4C $5E $3E $01 $32 $07 $C0 $01 $00 $00 $21
	.db $4C $5E
	
; 1st entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_568D_:	
		ld a, (_RAM_C002_)
		or a
		call nz, +
		call _LABEL_5C80_
		ld de, _RAM_C007_
		jp _LABEL_572D_
	
; 14th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_569D_:	
		ld a, (_RAM_C002_)
		or a
		call nz, +
		call _LABEL_5C80_
		ld de, _RAM_C007_
		call _LABEL_572D_
		ld hl, (_RAM_C00A_)
		inc hl
		inc hl
		ld (_RAM_C00A_), hl
		ret
	
+:	
		push bc
		ld b, $12
		ld hl, _DATA_56CE_
-:	
		ld c, Port_FMAddress
		outi
		call _LABEL_5DB5_
		ld c, Port_FMData
		outi
		call _LABEL_5DB5_
		jr nz, -
		pop bc
		ret
	
; Data from 56CE to 56DF (18 bytes)	
_DATA_56CE_:	
	.db $16 $20 $17 $B0 $18 $01 $26 $05 $27 $01 $28 $01 $36 $00 $37 $50
	.db $38 $05
	
; 6th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_56E0_:	
		ld de, _RAM_C087_
		ld hl, _RAM_C007_
		set 2, (hl)
		ld hl, _RAM_C067_
		set 2, (hl)
		jr +
	
; 12th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_56EF_:	
		ld hl, _RAM_C067_
		set 2, (hl)
; 8th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_56F4_:	
		ld a, (_RAM_C002_)
		or a
		jr z, _LABEL_5704_
		ld hl, _RAM_C003_
		ld a, (hl)
		or a
		jp nz, _LABEL_5750_
		inc a
		ld (hl), a
; 7th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_5704_:	
		ld de, _RAM_C0C7_
		ld hl, _RAM_C047_
		set 2, (hl)
		ld hl, _RAM_C067_
		res 2, (hl)
		ld a, $E4
		out (Port_PSG), a
		jp ++
	
; 9th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_5718_:	
		ld hl, _RAM_C067_
		set 2, (hl)
; 5th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_571D_:	
		ld de, _RAM_C0A7_
+:	
		ld hl, _RAM_C027_
		set 2, (hl)
		ld hl, _RAM_C047_
		set 2, (hl)
++:	
		call _LABEL_5CBF_
_LABEL_572D_:	
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
; 11th entry of Jump Table from 5657 (indexed by _RAM_C001_)	
_LABEL_5750_:	
		ld a, $80
		ld (_RAM_C001_), a
		ret
	
_LABEL_5756_:	
		ld e, (ix+12)
		ld d, (ix+13)
		inc de
		ld (ix+12), e
		ld (ix+13), d
		ld l, (ix+10)
		ld h, (ix+11)
		or a
		sbc hl, de
		call z, +++
		ld a, (_RAM_C002_)
		or a
		jr z, ++
		ld a, $03
		cp l
		jr z, +
		ret
	
+:	
		ld a, $0E
		out (Port_FMAddress), a
		call _LABEL_5DB5_
		xor a
		out (Port_FMData), a
		ret
	
++:	
		ld a, (ix+7)
		or a
		call nz, _LABEL_5927_
		jp _LABEL_5969_
	
+++:	
		ld e, (ix+3)
		ld d, (ix+4)
--:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, +++
		cp $80
		jr z, +
		call nc, ++++
-:	
		ex af, af'
		ld a, (_RAM_C002_)
		or a
		call nz, _LABEL_583B_
		ex af, af'
		cp $7F
		jr nc, ++
		jp _LABEL_5A66_
	
+:	
		ld (ix+8), $0F
		inc de
		ld a, (de)
		jr -
	
++:	
		dec de
		jp _LABEL_5A75_
	
+++:	
		ld hl, +	; Overriding return address
		jp _LABEL_5AAE_
	
+:	
		inc de
		jp --
	
++++:	
		ex af, af'
		ld a, (_RAM_C002_)
		or a
		jp nz, _LABEL_5828_
		ex af, af'
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
		ld (ix+8), $0F
		ld a, (de)
		inc de
		ret
	
+:	
		ex af, af'
		ld a, (ix+7)
		bit 7, a
		jr nz, +
		ld a, $02
+:	
		ld b, (ix+8)
		bit 7, b
		res 7, b
		jr nz, +
		ld b, $04
+:	
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
		ld a, (de)
		inc de
		ret
	
_LABEL_5828_:	
		ex af, af'
		bit 5, a
		jr z, +
		or $01
+:	
		bit 4, a
		jr z, +
		or $10
+:	
		ld (ix+18), a
		ld a, (de)
		inc de
		ret
	
_LABEL_583B_:	
		ld a, $0E
		out (Port_FMAddress), a
		ld a, (ix+18)
		or $20
		out (Port_FMData), a
		ret
	
_LABEL_5847_:	
		ld e, (ix+12)
		ld d, (ix+13)
		inc de
		ld (ix+12), e
		ld (ix+13), d
		ld l, (ix+10)
		ld h, (ix+11)
		or a
		sbc hl, de
		ld a, l
		ld (_RAM_C006_), a
		call z, _LABEL_5A03_
		ld a, (_RAM_C002_)
		or a
		jp nz, +
		ld e, (ix+16)
		ld d, (ix+17)
		ld a, e
		or d
		jp nz, ++
		ld (ix+22), $0F
		jp _LABEL_5969_
	
+:	
		ld a, (_RAM_C006_)
		cp $02
		jr c, +
		ld e, (ix+16)
		ld d, (ix+17)
		bit 5, (ix+0)
		jp nz, _LABEL_58D4_
		ld a, (ix+6)
		or a
		jp nz, _LABEL_58C9_
		jp _LABEL_5D83_
	
+:	
		ld a, (ix+1)
		add a, $10
		out (Port_FMAddress), a
		call _LABEL_5DB5_
		xor a
		out (Port_FMData), a
		ret
	
++:	
		bit 5, (ix+0)
		jr nz, _LABEL_58D4_
		ld a, (ix+6)
		or a
		jr nz, _LABEL_58C9_
		ld (ix+18), e
		ld (ix+19), d
		jp _LABEL_5911_
	
_LABEL_58BE_:	
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
	
_LABEL_58C9_:	
		ld hl, _DATA_6117_
		call _LABEL_58BE_
		call _LABEL_59C2_
		jr _LABEL_5911_
	
_LABEL_58D4_:	
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
		call _LABEL_5D5E_
		ld e, (ix+10)
		dec e
		call _LABEL_5D6A_
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
		jp nz, _LABEL_58C9_
_LABEL_5911_:	
		ld a, (ix+8)
		and $0F
		ld (ix+22), a
		ld a, (ix+7)
		or a
		call nz, _LABEL_5927_
		jr +
	
-:	
		call _LABEL_5D9F_
		jr +
	
_LABEL_5927_:	
		and $7F
		ex af, af'
		ld a, (_RAM_C002_)
		or a
		jr nz, -
		ex af, af'
		ld hl, _DATA_6088_
		call _LABEL_58BE_
		call _LABEL_5977_
+:	
		bit 6, (ix+0)
		jr nz, _LABEL_5969_
		ld a, (_RAM_C002_)
		or a
		jp nz, _LABEL_5D7D_
		ld a, (ix+1)
		cp $E0
		jr nz, +
		ld a, $C0
+:	
		ld c, a
		ld a, (ix+18)
		and $0F
		or c
		call _LABEL_5C78_
		ld a, (ix+18)
		and $F0
		or (ix+19)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_5C78_
_LABEL_5969_:	
		ld a, (ix+1)
		add a, $10
		or (ix+22)
		jp _LABEL_5C78_
	
-:	
		ld (ix+14), a
_LABEL_5977_:	
		push hl
		ld a, (ix+14)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		ex de, hl
		pop hl
		jr c, +++
		rrca
		rrca
		rrca
		rrca
		cp $F0
		jr z, +
		cp $E0
		jr nz, ++
		dec (ix+14)
		jr _LABEL_5977_
	
+:	
		xor a
		jr -
	
++:	
		cp $D0
		jr z, ++++
		cp $C0
		jr nz, +++
		inc de
		ld a, (de)
		ld (ix+14), a
		jr _LABEL_5977_
	
+++:	
		inc (ix+14)
		and $0F
		add a, (ix+8)
		and $1F
		cp $0F
		jr c, +++++
++++:	
		ld a, $0F
+++++:	
		ld (ix+22), a
		ret
	
-:	
		ld (ix+15), a
_LABEL_59C2_:	
		push hl
		ld a, (ix+15)
		srl a
		push af
		ld c, a
		ld b, $00
		add hl, bc
		pop af
		ld a, (hl)
		ld c, l
		ld b, h
		pop hl
		jr c, ++
		rrca
		rrca
		rrca
		rrca
		cp $F0
		jp z, -
		cp $E0
		jr nz, +
		dec (ix+15)
		jr _LABEL_59C2_
	
+:	
		cp $D0
		ret z
		cp $C0
		jr nz, ++
		inc bc
		ld a, (bc)
		ld (ix+15), a
++:	
		inc (ix+15)
		and $0F
		ld l, a
		ld h, $00
		ex de, hl
		add hl, de
		ld (ix+18), l
		ld (ix+19), h
		ret
	
_LABEL_5A03_:	
		ld e, (ix+3)
		ld d, (ix+4)
_LABEL_5A09_:	
		ld a, (de)
		inc de
		cp $E0
		jp nc, _LABEL_5AAB_
		bit 3, (ix+0)
		jr nz, _LABEL_5A8A_
		or a
		jp p, _LABEL_5A66_
		sub $80
		jr z, +
		add a, (ix+5)
+:	
		ld hl, _DATA_5CCC_
		ex af, af'
		ld a, (_RAM_C002_)
		or a
		jr z, +
		ld hl, _DATA_5DBA_
+:	
		ex af, af'
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
		jr z, _LABEL_5AA4_
		ld a, (de)
		inc de
		sub $80
		add a, (ix+5)
		ld hl, _DATA_5CCC_
		ld a, (_RAM_C002_)
		or a
		jr z, +
		ld hl, _DATA_5DBA_
+:	
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+20), a
		inc hl
		ld a, (hl)
		ld (ix+21), a
-:	
		ld a, (de)
_LABEL_5A65_:	
		inc de
_LABEL_5A66_:	
		push de
		ld h, a
		ld e, (ix+2)
		call _LABEL_5D5E_
		pop de
		ld (ix+10), l
		ld (ix+11), h
_LABEL_5A75_:	
		xor a
		ld (ix+14), a
		ld (ix+15), a
		ld (ix+3), e
		ld (ix+4), d
		xor a
		ld (ix+12), a
		ld (ix+13), a
		ret
	
_LABEL_5A8A_:	
		ld (ix+17), a
		ld a, (de)
		inc de
		ld (ix+16), a
		bit 5, (ix+0)
		jr z, -
		ld a, (de)
		inc de
		ld (ix+21), a
		ld a, (de)
		inc de
		ld (ix+20), a
		jr -
	
_LABEL_5AA4_:	
		ld a, (de)
		or a
		jp p, _LABEL_5A65_
		jr _LABEL_5A75_
	
_LABEL_5AAB_:	
		ld hl, +	; Overriding return address
_LABEL_5AAE_:	
		push hl
		sub $F0
		jp c, _LABEL_5B54_
		ld hl, _DATA_5AC5_
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
		jp _LABEL_5A09_
	
; Jump Table from 5AC5 to 5AE2 (15 entries, indexed by unknown)	
_DATA_5AC5_:	
	.dw _LABEL_5B31_ _LABEL_5B2B_ _LABEL_5BC8_ _LABEL_5B5B_ _LABEL_5B87_ _LABEL_5B72_ _LABEL_5BA4_ _LABEL_5C59_
	.dw _LABEL_5C2B_ _LABEL_5C46_ _LABEL_5B4F_ _LABEL_5B47_ _LABEL_5BAA_ _LABEL_5BB9_ _LABEL_5AE3_
	
; 15th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5AE3_:	
		ld a, (de)
		cp $00
		jr z, +
		ld hl, _RAM_C007_
		res 7, (hl)
		ld hl, _RAM_C027_
		res 7, (hl)
		ld hl, _RAM_C047_
		res 7, (hl)
		ld hl, _RAM_C067_
		res 7, (hl)
		pop hl
		pop hl
		inc de
		ld (ix+3), e
		ld (ix+4), d
		xor a
		ld (ix+12), a
		ld (ix+13), a
		ld a, $86
		ld (_RAM_C001_), a
		jp _LABEL_55C7_
	
+:	
		ld hl, _RAM_C007_
		set 7, (hl)
		ld hl, _RAM_C027_
		set 7, (hl)
		ld hl, _RAM_C047_
		set 7, (hl)
		ld hl, _RAM_C067_
		set 7, (hl)
		jp _LABEL_5C0C_
	
; 2nd entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B2B_:	
		set 0, (ix+0)
		dec de
		ret
	
; 1st entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B31_:	
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
		ret
	
; 12th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B47_:	
		ld a, (de)
		add a, (ix+5)
		ld (ix+5), a
		ret
	
; 11th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B4F_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
_LABEL_5B54_:	
		and $0F
		ld (ix+8), a
		dec de
		ret
	
; 4th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B5B_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_5C78_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 6th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B72_:	
		ld a, (_RAM_C002_)
		or a
		ld a, (de)
		jr nz, +
		and $0F
		ret z
		ld (ix+7), a
		ret
	
+:	
		and $F0
		ret z
		ld (ix+7), a
		ret
	
; 5th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5B87_:	
		ld a, (de)
		ld (ix+6), a
		ret
	
	; Data from 5B8C to 5BA3 (24 bytes)
	.db $06 $00 $0E $1B $DD $E5 $E1 $09 $7E $B7 $20 $06 $1A $3D $77 $13
	.db $13 $C9 $13 $35 $28 $02 $13 $C9
	
; 7th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5BA4_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 13th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5BAA_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 5, (ix+0)
		ret
	
+:	
		res 5, (ix+0)
		ret
	
; 14th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5BB9_:	
		ld a, (de)
		cp $01
		jr nz, +
		set 3, (ix+0)
		ret
	
+:	
		res 3, (ix+0)
		ret
	
; 3rd entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5BC8_:	
		xor a
		ld (_RAM_C003_), a
		ld (ix+0), a
		ld a, (de)
		cp $80
		jp z, _LABEL_5C0C_
		cp $03
		jr z, ++
		cp $02
		jr z, +++
		cp $01
		jr z, +
		ld hl, _RAM_C007_
		res 2, (hl)
		ld a, $9F
		jr _LABEL_5C07_
	
+:	
		ld hl, _RAM_C027_
		res 2, (hl)
		ld a, $BF
		jr _LABEL_5C07_
	
++:	
		ld hl, _RAM_C067_
		res 2, (hl)
		ld a, $FF
		out (Port_PSG), a
		ld a, $E4
		out (Port_PSG), a
+++:	
		ld hl, _RAM_C047_
		res 2, (hl)
		ld a, $DF
_LABEL_5C07_:	
		out (Port_PSG), a
		pop hl
		pop hl
		ret
	
_LABEL_5C0C_:	
		ld hl, _RAM_C007_
		res 2, (hl)
		ld hl, _RAM_C027_
		res 2, (hl)
		ld hl, _RAM_C047_
		res 2, (hl)
		ld hl, _RAM_C067_
		res 2, (hl)
		xor a
		ld (ix+0), a
		ld a, (ix+1)
		add a, $1F
		jr _LABEL_5C07_
	
; 9th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5C2B_:	
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
	
; 10th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5C46_:	
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
	
; 8th entry of Jump Table from 5AC5 (indexed by unknown)	
_LABEL_5C59_:	
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
		jp nz, _LABEL_5BA4_
		inc de
		ret
	
	; Data from 5C71 to 5C77 (7 bytes)
	.db $DD $7E $01 $C6 $10 $F6 $0F
	
_LABEL_5C78_:	
		bit 2, (ix+0)
		ret nz
		out (Port_PSG), a
		ret
	
_LABEL_5C80_:	
		push hl
		push de
		push bc
		ld hl, _RAM_C003_
		ld de, _RAM_C003_ + 1
		ld bc, $00E3
		ld (hl), $00
		ldir
		pop bc
		pop de
		pop hl
_LABEL_5C93_:	
		ld a, (_RAM_C002_)
		or a
		jr nz, +
		push hl
		push bc
		ld hl, _DATA_5CC8_
		ld c, Port_PSG
		ld b, $04
		otir
		xor a
		pop bc
		pop hl
		ret
	
+:	
		exx
		ld b, $06
		xor a
		ld c, Port_FMAddress
		ld d, $20
-:	
		out (c), d
		inc d
		call _LABEL_5DB5_
		out (Port_FMData), a
		call _LABEL_5DB5_
		djnz -
		exx
		ret
	
_LABEL_5CBF_:	
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ret
	
; Data from 5CC8 to 5CCB (4 bytes)	
_DATA_5CC8_:	
	.db $9F $BF $DF $FF
	
; Data from 5CCC to 5D5D (146 bytes)	
_DATA_5CCC_:	
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
	
_LABEL_5D5E_:	
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
	
_LABEL_5D6A_:	
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
	
_LABEL_5D7D_:	
		ld e, (ix+18)
		ld d, (ix+19)
_LABEL_5D83_:	
		ld a, (ix+1)
		out (Port_FMAddress), a
		ex af, af'
		ld a, e
		call _LABEL_5DB5_
		out (Port_FMData), a
		ex af, af'
		add a, $10
		call _LABEL_5DB5_
		out (Port_FMAddress), a
		ld a, d
		or $10
		call _LABEL_5DB5_
		out (Port_FMData), a
_LABEL_5D9F_:	
		call _LABEL_5DB5_
		ld a, (ix+1)
		add a, $20
		out (Port_FMAddress), a
		ld a, (ix+7)
		call _LABEL_5DB5_
		or (ix+8)
		out (Port_FMData), a
		ret
	
_LABEL_5DB5_:	
		push hl
		pop hl
		push hl
		pop hl
		ret
	
; Data from 5DBA to 5E4B (146 bytes)	
_DATA_5DBA_:	
	.db $00 $00 $57 $01 $6B $01 $81 $01 $98 $01 $B0 $01 $CA $01 $E5 $01
	.db $01 $03 $10 $03 $20 $03 $31 $03 $43 $03 $57 $03 $6B $03 $81 $03
	.db $98 $03 $B0 $03 $CA $03 $E5 $03 $01 $05 $10 $05 $20 $05 $31 $05
	.db $43 $05 $57 $05 $6B $05 $81 $05 $98 $05 $B0 $05 $CA $05 $E5 $05
	.db $01 $07 $10 $07 $20 $07 $31 $07 $43 $07 $57 $07 $6B $07 $81 $07
	.db $98 $07 $B0 $07 $CA $07 $E5 $07 $01 $09 $10 $09 $20 $09 $31 $09
	.db $43 $09 $57 $09 $6B $09 $81 $09 $98 $09 $B0 $09 $CA $09 $E5 $09
	.db $01 $0B $10 $0B $20 $0B $31 $0B $43 $0B $57 $0B $6B $0B $81 $0B
	.db $98 $0B $B0 $0B $CA $0B $E5 $0B $01 $0D $10 $0D $20 $0D $31 $0D
	.db $43 $0D
	
; 5th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5E4C to 5E84 (57 bytes)	
_DATA_5E4C_:	
	.db $02 $80 $13 $01 $5F $5E $00 $00 $50 $00 $80 $14 $01 $5F $5E $00
	.db $00 $50 $00 $BD $0A $80 $0A $F7 $00 $05 $5F $5E $F2 $80 $02 $80
	.db $A0 $01 $7D $5E $00 $00 $04 $02 $80 $C0 $01 $7D $5E $00 $00 $04
	.db $02 $A5 $18 $A5 $A5 $A5 $A5 $F2 $80
	
; 6th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5E85 to 5E8C (8 bytes)	
_DATA_5E85_:	
	.db $03 $80 $13 $01 $BD $5E $18 $00
	
; 28th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 5E8D to 5ED6 (74 bytes)	
_DATA_5E8D_:	
	.db $10 $01 $80 $14 $01 $BD $5E $18 $00 $10 $03 $80 $15 $01 $BD $5E
	.db $0C $00 $10 $02 $03 $80 $80 $01 $BD $5E $00 $00 $04 $01 $80 $A0
	.db $01 $BD $5E $00 $00 $04 $03 $80 $C0 $01 $BD $5E $0C $00 $04 $02
	.db $F8 $C4 $5E $FE $00 $F2 $80 $F5 $04 $F5 $10 $99 $1E $80 $1E $F7
	.db $00 $03 $C8 $5E $F5 $05 $E0 $A5 $3C $F9
	
; 7th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5ED7 to 5F16 (64 bytes)	
_DATA_5ED7_:	
	.db $01 $A8 $14 $01 $E1 $5E $00 $04 $E0 $00 $1D $82 $1D $A0 $04 $1D
	.db $8A $1D $A8 $04 $1D $84 $1D $A4 $04 $1D $86 $1D $A6 $04 $F2 $02
	.db $01 $A8 $C0 $01 $01 $5F $00 $01 $0B $00 $00 $82 $00 $A0 $02 $00
	.db $8A $00 $A8 $02 $00 $84 $00 $A4 $02 $00 $86 $00 $A6 $02 $F2 $02
	
; 8th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5F17 to 5F3F (41 bytes)	
_DATA_5F17_:	
	.db $01 $80 $14 $01 $21 $5F $00 $00 $F0 $00 $88 $03 $F2 $02 $01 $88
	.db $C0 $01 $2F $5F $00 $00 $00 $00 $03 $FA $02 $00 $00 $02 $03 $E5
	.db $02 $00 $00 $01 $03 $FC $04 $F2 $02
	
; 9th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5F40 to 5F91 (82 bytes)	
_DATA_5F40_:	
	.db $02 $80 $13 $01 $53 $5F $03 $00 $F0 $00 $80 $14 $01 $5C $5F $03
	.db $00 $F0 $00 $81 $03 $8D $02 $8A $02 $82 $06 $F2 $AA $02 $86 $04
	.db $88 $04 $8C $02 $F2 $02 $A8 $A0 $01 $78 $5F $03 $01 $09 $02 $A8
	.db $E0 $01 $84 $5F $03 $00 $02 $00 $03 $C0 $03 $FF $08 $03 $70 $03
	.db $F0 $06 $F2 $01 $F3 $07 $00 $80 $00 $E0 $06 $00 $20 $00 $10 $08
	.db $F2 $03
	
; 10th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 5F92 to 6087 (246 bytes)	
_DATA_5F92_:	
	.db $03 $80 $13 $01 $AE $5F $03 $00 $D0 $00 $80 $14 $01 $B5 $5F $03
	.db $00 $F0 $00 $80 $15 $01 $BC $5F $03 $00 $B0 $01 $8D $04 $92 $04
	.db $8D $08 $F2 $86 $04 $8C $04 $85 $0F $F2 $8C $03 $83 $04 $89 $03
	.db $83 $0C $F2 $03 $A8 $80 $01 $E1 $5F $03 $00 $00 $02 $A8 $A0 $01
	.db $F7 $5F $03 $00 $00 $02 $A8 $E0 $01 $0D $60 $03 $00 $00 $00 $02
	.db $50 $03 $40 $06 $00 $80 $01 $70 $0A $02 $10 $03 $00 $06 $03 $10
	.db $03 $FF $0A $F2 $00 $01 $50 $02 $40 $06 $02 $80 $03 $70 $0A $03
	.db $10 $03 $D0 $06 $02 $10 $02 $FF $0A $F2 $01 $F3 $07 $00 $50 $01
	.db $40 $06 $00 $80 $00 $20 $0A $00 $10 $00 $70 $06 $00 $10 $00 $FF
	.db $0A $F2 $03 $01 $A8 $E0 $02 $2F $60 $03 $01 $07 $02 $F3 $07 $F5
	.db $07 $00 $1C $00 $14 $1E $F5 $0D $00 $14 $00 $16 $28 $F5 $07 $00
	.db $28 $00 $20 $1E $F5 $0C $00 $20 $00 $38 $42 $F5 $07 $00 $1A $00
	.db $40 $1E $F5 $0C $00 $40 $00 $60 $36 $F6 $2F $60 $02 $80 $13 $01
	.db $84 $60 $03 $01 $B0 $02 $80 $14 $01 $84 $60 $08 $01 $30 $02 $02
	.db $80 $A0 $01 $84 $60 $03 $01 $03 $02 $80 $C0 $01 $84 $60 $08 $00
	.db $03 $02 $A5 $04 $F2 $80
	
; Pointer Table from 6088 to 60A1 (13 entries, indexed by _RAM_C00E_)	
_DATA_6088_:	
	.dw _DATA_60A2_ _DATA_60A4_ _DATA_60AB_ _DATA_60B1_ _DATA_60B6_ _DATA_60BC_ _DATA_60CC_ _DATA_60DD_
	.dw _DATA_60E6_ _DATA_60EC_ _DATA_60F1_ _DATA_60F7_ _DATA_60FC_
	
; 1st entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60A2 to 60A3 (2 bytes)	
_DATA_60A2_:	
	.db $00 $0D
	
; 2nd entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60A4 to 60AA (7 bytes)	
_DATA_60A4_:	
	.db $00 $12 $23 $34 $45 $56 $0D
	
; 3rd entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60AB to 60B0 (6 bytes)	
_DATA_60AB_:	
	.db $15 $01 $34 $57 $8A $0D
	
; 4th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60B1 to 60B5 (5 bytes)	
_DATA_60B1_:	
	.db $01 $00 $00 $11 $0D
	
; 5th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60B6 to 60BB (6 bytes)	
_DATA_60B6_:	
	.db $21 $01 $22 $33 $44 $0E
	
; 6th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60BC to 60CB (16 bytes)	
_DATA_60BC_:	
	.db $00 $11 $22 $33 $44 $55 $55 $55 $56 $66 $68 $88 $87 $77 $76 $0E
	
; 7th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60CC to 60DC (17 bytes)	
_DATA_60CC_:	
	.db $FE $ED $DD $CC $CB $BB $AA $A9 $99 $88 $87 $77 $66 $55 $44 $33
	.db $0E
	
; 8th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60DD to 60E5 (9 bytes)	
_DATA_60DD_:	
	.db $00 $02 $33 $45 $67 $89 $AB $EF $0D
	
; 9th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60E6 to 60EB (6 bytes)	
_DATA_60E6_:	
	.db $F0 $40 $50 $90 $00 $0F
	
; 10th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60EC to 60F0 (5 bytes)	
_DATA_60EC_:	
	.db $10 $01 $22 $34 $0D
	
; 11th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60F1 to 60F6 (6 bytes)	
_DATA_60F1_:	
	.db $44 $41 $51 $14 $45 $0F
	
; 12th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60F7 to 60FB (5 bytes)	
_DATA_60F7_:	
	.db $33 $44 $44 $45 $55
	
; 13th entry of Pointer Table from 6088 (indexed by _RAM_C00E_)	
; Data from 60FC to 6116 (27 bytes)	
_DATA_60FC_:	
	.db $55 $56 $66 $66 $67 $77 $77 $78 $88 $88 $99 $99 $99 $AA $AA $AA
	.db $BB $BB $BB $CC $CC $CC $CD $DD $DD $EE $0E
	
; Pointer Table from 6117 to 611E (4 entries, indexed by _RAM_C02D_)	
_DATA_6117_:	
	.dw _DATA_6121_ _DATA_612C_ _DATA_613A_ _DATA_611F_
	
; 4th entry of Pointer Table from 6117 (indexed by _RAM_C02D_)	
; Data from 611F to 6120 (2 bytes)	
_DATA_611F_:	
	.db $86 $42
	
; 1st entry of Pointer Table from 6117 (indexed by _RAM_C02D_)	
; Data from 6121 to 612B (11 bytes)	
_DATA_6121_:	
	.db $11 $11 $11 $11 $11 $00 $11 $22 $10 $01 $22
	
; 2nd entry of Pointer Table from 6117 (indexed by _RAM_C02D_)	
; Data from 612C to 6139 (14 bytes)	
_DATA_612C_:	
	.db $10 $01 $23 $32 $10 $01 $23 $32 $21 $00 $01 $23 $43 $21
	
; 3rd entry of Pointer Table from 6117 (indexed by _RAM_C02D_)	
; Data from 613A to 618B (82 bytes)	
_DATA_613A_:	
	.db $01 $24 $54 $32 $10 $12 $34 $54 $32 $10 $11 $0E $00 $11 $0F $F8
	.db $81 $63 $80 $09 $C1 $B9 $B0 $A6 $9D $03 $C1 $24 $BE $09 $B9 $1B
	.db $80 $06 $B7 $B9 $BA $B9 $24 $B7 $09 $27 $80 $0C $C3 $24 $BF $09
	.db $BC $27 $80 $06 $B9 $03 $BA $BB $2D $BC $27 $80 $0C $F7 $00 $02
	.db $54 $61 $C3 $09 $C1 $03 $80 $18 $C3 $09 $C1 $03 $80 $18 $C6 $09
	.db $C5 $03
	
; 27th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 618C to 638A (511 bytes)	
_DATA_618C_:	
	.db $80 $06 $C1 $4E $BF $06 $BE $BC $03 $BE $09 $C3 $09 $C1 $03 $80
	.db $18 $C3 $09 $C1 $03 $80 $18 $C6 $09 $C5 $03 $80 $06 $C1 $33 $CA
	.db $33 $C3 $09 $C1 $03 $80 $18 $C3 $09 $C1 $03 $80 $18 $C6 $09 $C5
	.db $03 $80 $06 $C1 $4E $BF $06 $BE $BC $03 $BE $09 $C3 $09 $C1 $03
	.db $80 $18 $C3 $09 $C1 $03 $80 $18 $C6 $09 $C5 $03 $80 $06 $CA $30
	.db $C8 $03 $C6 $C5 $18 $C6 $09 $C5 $C3 $33 $C5 $27 $C1 $09 $C3 $4B
	.db $C6 $09 $C5 $C3 $03 $C1 $C3 $18 $80 $06 $C6 $0C $C8 $06 $C5 $18
	.db $C3 $0C $C1 $C3 $48 $C6 $09 $C5 $C3 $03 $C1 $C3 $18 $80 $06 $C5
	.db $0C $C6 $06 $C8 $18 $03 $CA $09 $CD $0C $CF $60 $D2 $06 $D1 $03
	.db $CF $F7 $00 $07 $18 $62 $D2 $03 $D4 $09 $D2 $06 $D1 $03 $CF $48
	.db $CD $09 $CA $06 $C8 $0C $CA $06 $C6 $12 $C3 $06 $C6 $C8 $18 $C6
	.db $06 $C5 $0C $C3 $03 $C1 $C3 $30 $80 $30 $F7 $01 $02 $54 $61 $C1
	.db $24 $BF $09 $C1 $0F $BA $0C $BF $C4 $09 $C1 $27 $BF $09 $C1 $27
	.db $80 $0C $C1 $24 $BF $09 $C1 $1B $BA $0C $C4 $09 $C1 $2D $BF $03
	.db $BD $BF $12 $BD $03 $BC $BD $0C $BC $03 $BA $09 $C1 $2A $BF $03
	.db $BA $C1 $12 $BF $03 $BA $BF $0C $C4 $09 $C1 $33 $C4 $03 $C6 $C4
	.db $06 $C1 $BF $03 $C1 $0F $80 $0C $BF $03 $C1 $21 $BA $09 $BF $03
	.db $C1 $03 $BF $C1 $0C $BA $06 $BF $0C $C4 $09 $C1 $63 $B8 $12 $B6
	.db $0C $B8 $06 $BA $BC $1E $BF $0C $BA $09 $B8 $18 $B9 $04 $BA $35
	.db $BC $06 $BD $BF $C1 $1E $BA $06 $BF $C1 $18 $BF $03 $BA $BF $0C
	.db $C4 $09 $C1 $57 $C6 $0C $CD $24 $CB $06 $C6 $CD $12 $CB $03 $C6
	.db $CB $0C $D0 $09 $CD $57 $80 $0C $CD $06 $CB $03 $C6 $1B $CD $06
	.db $CB $03 $C6 $15 $CD $03 $CB $C6 $06 $CB $D0 $09 $CD $4B $D0 $0C
	.db $D2 $06 $CD $D4 $30 $D1 $18 $CD $CF $48 $C6 $09 $C5 $C3 $03 $C1
	.db $C3 $18 $80 $06 $C6 $0C $C8 $06 $C5 $18 $C3 $0C $C1 $C3 $48 $C6
	.db $09 $C5 $C3 $03 $C1 $C3 $18 $80 $06 $C5 $0C $C6 $06 $C8 $18 $03
	.db $CA $09 $CD $0C $CF $60 $D2 $06 $D1 $03 $CF $D2 $06 $D1 $03 $CF
	.db $D2 $06 $D1 $03 $CF $D2 $06 $D1 $03 $CF $D2 $06 $D1 $03 $CF $D2
	.db $06 $D1 $03 $CF $D2 $06 $D1 $03 $CF $D2 $D4 $09 $D2 $06 $D1 $03
	.db $CF $48 $CD $09 $CA $06 $C8 $0C $CA $06 $C6 $12 $C3 $06 $C6 $C8
	.db $18 $C6 $06 $C5 $0C $C3 $03 $C1 $C3 $30 $80 $18 $C6 $09 $C5 $C3
	.db $03 $C1 $F6 $0C $63 $80 $7F $7F $7F $06 $AE $03 $80 $B0 $80
	
; 26th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 638B to 6589 (511 bytes)	
_DATA_638B_:	
	.db $03 $B3 $80 $B7 $80 $03 $BA $80 $BE $80 $03 $BF $80 $C0 $C1 $30
	.db $F9 $96 $09 $9D $03 $09 $96 $03 $96 $09 $9D $03 $09 $96 $03 $96
	.db $09 $9D $03 $03 $96 $80 $96 $80 $0C $9D $92 $09 $99 $03 $09 $92
	.db $03 $92 $09 $99 $03 $09 $92 $03 $92 $09 $99 $03 $03 $92 $80 $92
	.db $80 $0C $99 $F7 $00 $02 $9C $63 $80 $03 $91 $80 $91 $80 $03 $91
	.db $80 $91 $80 $03 $91 $80 $91 $80 $03 $91 $80 $91 $9D $60 $96 $09
	.db $9D $03 $09 $96 $03 $F7 $00 $03 $E9 $63 $96 $09 $9D $03 $06 $96
	.db $93 $09 $9A $03 $09 $93 $03 $F7 $00 $03 $FB $63 $93 $09 $9A $03
	.db $06 $93 $98 $09 $9F $03 $09 $98 $03 $F7 $00 $03 $0D $64 $98 $09
	.db $9F $03 $06 $98 $91 $09 $98 $03 $09 $91 $03 $F7 $00 $03 $1F $64
	.db $91 $09 $98 $03 $06 $9D $F7 $01 $02 $E9 $63 $F8 $12 $65 $80 $06
	.db $96 $03 $03 $03 $03 $80 $06 $95 $09 $96 $03 $80 $0C $F8 $12 $65
	.db $80 $06 $96 $03 $80 $06 $96 $03 $80 $06 $96 $0C $80 $F8 $12 $65
	.db $80 $06 $A2 $03 $03 $03 $03 $80 $06 $A1 $09 $A2 $03 $80 $0C $9B
	.db $09 $03 $80 $18 $9B $09 $03 $80 $18 $9B $09 $A7 $03 $80 $06 $96
	.db $42 $96 $06 $80 $96 $09 $95 $93 $2A $93 $09 $91 $27 $09 $93 $1B
	.db $9F $18 $80 $03 $9F $80 $03 $9F $80 $03 $9F $80 $03 $9F $80 $18
	.db $F8 $27 $65 $93 $09 $9A $9F $03 $80 $9F $09 $9A $03 $06 $9F $03
	.db $80 $F7 $00 $02 $9E $64 $F7 $01 $03 $9B $64 $F8 $27 $65 $93 $09
	.db $9A $9F $03 $80 $9F $09 $9A $03 $06 $9F $03 $80 $80 $04 $93 $93
	.db $93 $93 $93 $93 $04 $80 $14 $F7 $02 $02 $E9 $63 $9B $09 $27 $9B
	.db $09 $27 $91 $09 $27 $91 $09 $27 $F7 $00 $04 $D7 $64 $9B $09 $27
	.db $9B $09 $27 $9D $09 $27 $9D $09 $27 $F7 $00 $04 $E8 $64 $F8 $27
	.db $65 $93 $09 $9A $9F $03 $80 $9F $09 $9A $03 $06 $9F $03 $80 $F7
	.db $00 $02 $FC $64 $F6 $F9 $64 $9B $09 $03 $80 $18 $9B $09 $03 $80
	.db $18 $9B $09 $03 $80 $06 $96 $30 $95 $03 $96 $F9 $8F $09 $96 $9B
	.db $03 $80 $9B $09 $96 $03 $06 $9B $03 $80 $91 $09 $98 $9D $03 $80
	.db $9D $09 $98 $03 $06 $9D $03 $80 $F9 $A9 $3F $A9 $03 $80 $A9 $80
	.db $0C $AB $0C $AC $3C $AC $03 $03 $80 $AC $80 $0C $AA $F7 $00 $02
	.db $44 $65 $80 $03 $A6 $80 $A6 $80 $A6 $80 $A6 $80 $03 $A6 $80 $A6
	.db $80 $A6 $80 $A6 $A9 $60 $A9 $48 $AD $0C $A9 $A9 $48 $AD $0C $A9
	.db $A7 $48 $A9 $0C $AB $A7 $2D $33 $F7 $00 $02 $71 $65 $F8 $53
	
; 25th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 658A to 6664 (219 bytes)	
_DATA_658A_:	
	.db $66 $80 $06 $B5 $03 $03 $03 $03 $80 $06 $B5 $09 $03 $80 $0C $F8
	.db $53 $66 $80 $06 $B5 $03 $80 $06 $B5 $03 $80 $06 $B5 $0C $80 $F8
	.db $53 $66 $80 $06 $B5 $03 $03 $03 $03 $80 $06 $B5 $09 $03 $80 $0C
	.db $A9 $09 $03 $80 $18 $A9 $09 $03 $80 $18 $A9 $09 $03 $80 $06 $A9
	.db $42 $A9 $06 $80 $A9 $09 $A8 $A7 $33 $A9 $30 $AB $33 $80 $03 $B7
	.db $80 $03 $B7 $80 $03 $B7 $80 $03 $B7 $80 $12 $AB $30 $A9 $A9 $33
	.db $AB $18 $A9 $15 $AB $30 $A9 $A9 $4E $12 $AB $30 $A9 $36 $A9 $15
	.db $AB $18 $A9 $18 $80 $15 $AB $30 $A9 $AB $36 $80 $04 $AB $AB $AB
	.db $AB $AB $AB $04 $80 $14 $F7 $01 $02 $71 $65 $A9 $3C $A7 $18 $AC
	.db $09 $A7 $30 $A7 $33 $A9 $24 $A7 $09 $A9 $1B $AA $15 $A7 $27 $AC
	.db $09 $A7 $33 $A9 $48 $A7 $0C $A9 $09 $A7 $63 $A9 $48 $A7 $0C $A9
	.db $09 $A7 $21 $80 $12 $B3 $12 $1E $F7 $00 $02 $15 $66 $AB $30 $A9
	.db $A9 $33 $AB $18 $A9 $15 $F6 $47 $66 $A9 $09 $03 $80 $18 $A9 $09
	.db $03 $80 $18 $A9 $09 $03 $80 $06 $A9 $36 $F9
	
; 2nd entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 6665 to 6888 (548 bytes)	
_DATA_6665_:	
	.db $04 $80 $10 $02 $AF $66 $F4 $02 $40 $01 $80 $11 $02 $9C $63 $00
	.db $00 $E0 $03 $80 $12 $02 $44 $65 $00 $00 $C0 $03 $80 $13 $02 $B4
	.db $66 $0C $00 $20 $05 $04 $80 $80 $02 $AF $66 $DA $01 $05 $02 $80
	.db $A0 $02 $9C $63 $F2 $00 $04 $04 $80 $C0 $02 $44 $65 $F2 $00 $05
	.db $05 $80 $E0 $02 $B4 $66 $0C $00 $20 $05 $FE $01 $F6 $49 $61 $F3
	.db $04 $85 $03 $81 $81 $85 $88 $81 $81 $85 $85 $81 $81 $85 $88 $81
	.db $81 $85 $85 $81 $81 $85 $88 $A4 $06 $09 $81 $02 $81 $81 $88 $0C
	.db $F7 $00 $04 $B6 $66 $90 $03 $A0 $06 $A0 $A0 $A4 $03 $84 $A0 $06
	.db $A4 $03 $88 $81 $84 $A4 $90 $18 $81 $03 $81 $A0 $06 $81 $03 $81
	.db $A0 $06 $85 $03 $81 $A0 $06 $85 $03 $81 $A0 $06 $85 $03 $81 $A8
	.db $06 $89 $03 $81 $A8 $06 $F8 $57 $67 $F8 $73 $67 $F8 $F5 $67 $F8
	.db $18 $68 $90 $04 $88 $88 $88 $88 $88 $88 $90 $A4 $90 $0C $F7 $01
	.db $02 $0B $67 $85 $03 $81 $A0 $06 $81 $03 $81 $A0 $84 $81 $81 $A4
	.db $06 $88 $81 $03 $81 $85 $03 $81 $A0 $06 $81 $03 $81 $A0 $84 $81
	.db $81 $A4 $06 $88 $85 $03 $81 $F7 $00 $10 $28 $67 $F8 $57 $67 $F6
	.db $51 $67 $85 $06 $81 $03 $85 $03 $06 $88 $03 $85 $03 $02 $81 $81
	.db $90 $03 $84 $85 $06 $88 $03 $85 $F7 $00 $10 $57 $67 $F9 $A4 $09
	.db $03 $81 $81 $81 $81 $88 $06 $81 $03 $81 $A4 $09 $03 $81 $81 $81
	.db $81 $88 $06 $81 $03 $81 $A4 $09 $03 $0C $81 $03 $81 $81 $81 $88
	.db $06 $81 $03 $81 $81 $02 $02 $02 $02 $02 $02 $03 $03 $85 $85 $81
	.db $81 $85 $81 $81 $81 $81 $81 $85 $81 $81 $85 $81 $81 $88 $88 $F7
	.db $00 $03 $73 $67 $A4 $09 $03 $81 $81 $81 $81 $88 $06 $81 $03 $81
	.db $A4 $09 $03 $81 $81 $81 $81 $88 $06 $81 $03 $81 $A4 $09 $03 $0C
	.db $81 $03 $81 $81 $81 $81 $81 $81 $81 $88 $06 $81 $03 $81 $81 $81
	.db $85 $85 $81 $81 $81 $81 $8C $06 $81 $03 $81 $A4 $09 $09 $06 $F9
	.db $85 $03 $81 $81 $81 $88 $81 $81 $85 $81 $85 $85 $81 $88 $81 $85
	.db $81 $F7 $00 $03 $F5 $67 $88 $A4 $06 $06 $06 $0C $88 $03 $88 $88
	.db $88 $85 $F9 $85 $03 $A0 $06 $84 $03 $88 $06 $81 $03 $81 $85 $81
	.db $A0 $84 $88 $06 $81 $03 $81 $F7 $00 $0F $18 $68 $F9 $FF $F8 $44
	.db $68 $F8 $4B $68 $F8 $AE $68 $F8 $DE $68 $F8 $B2 $69 $F2 $00 $F8
	.db $23 $6B $F8 $4D $6B $F9 $F8 $B9 $69 $A7 $2A $A5 $05 $A6 $01 $A7
	.db $2A $80 $0C $F8 $B9 $69 $A7 $28 $A9 $01 $AB $AC $06 $AB $2A $80
	.db $0C $F8 $0B $6A $F8 $72 $6A $B3 $0B $B4 $01 $B5 $06 $B3 $0C $B6
	.db $06 $B5 $B1 $2A $80 $3C $F8 $B9 $69 $A7 $2A $A5 $05 $A6 $01 $A7
	.db $2A $80 $0C $F8
	
; 24th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 6889 to 6A87 (511 bytes)	
_DATA_6889_:	
	.db $B9 $69 $A7 $28 $A9 $01 $AB $AC $06 $AB $2A $80 $0C $F8 $0B $6A
	.db $F8 $72 $6A $B3 $0B $B4 $01 $B5 $06 $B3 $0C $B6 $06 $B5 $B1 $30
	.db $BD $2A $80 $0C $F9 $9D $06 $A4 $A9 $9D $A4 $A9 $9D $A4 $A9 $9D
	.db $06 $A4 $A9 $9D $A4 $A9 $A4 $9B $06 $A2 $A7 $9B $A2 $A7 $9B $06
	.db $A2 $A7 $9B $A2 $A7 $9B $A2 $A7 $A2 $F7 $01 $02 $AE $68 $F8 $23
	.db $6B $F8 $4D $6B $F9 $F8 $72 $6A $B3 $0C $B4 $01 $B5 $06 $B3 $0C
	.db $B5 $06 $BC $B8 $34 $B3 $01 $B4 $B5 $06 $B3 $0C $B2 $0C $B3 $06
	.db $B5 $B8 $B6 $0C $B5 $06 $B6 $0C $B5 $06 $B6 $0C $B5 $06 $B6 $0C
	.db $B5 $06 $B6 $0C $B5 $06 $B6 $05 $B7 $01 $B8 $0C $B6 $05 $B7 $01
	.db $B8 $0C $B6 $06 $B8 $0C $B6 $06 $BB $0C $BA $B8 $06 $B6 $B5 $B3
	.db $0B $B4 $01 $B5 $06 $B3 $0B $B4 $01 $B5 $06 $B3 $0B $B4 $01 $B5
	.db $06 $B3 $B3 $05 $B4 $01 $B5 $06 $B3 $0C $B1 $06 $B1 $36 $80 $06
	.db $AF $80 $B2 $80 $BA $80 $B8 $0C $B6 $05 $B7 $01 $B8 $0C $B6 $05
	.db $B7 $01 $B8 $06 $06 $B6 $0B $B7 $01 $B8 $05 $B7 $01 $B8 $06 $B6
	.db $B8 $0C $B6 $04 $B8 $01 $B9 $BA $0C $B8 $05 $B9 $01 $BA $0C $B8
	.db $05 $B9 $01 $BA $0C $B8 $06 $80 $06 $BE $BB $BA $B8 $06 $B6 $B5
	.db $B3 $04 $B3 $01 $B4 $B5 $0C $B3 $05 $B4 $01 $B5 $0C $B3 $05 $B4
	.db $01 $B5 $0C $B3 $05 $B4 $01 $B5 $0C $B3 $05 $B4 $01 $B5 $0C $B6
	.db $06 $B5 $80 $06 $B1 $24 $80 $36 $F9 $F8 $23 $6B $F6 $B2 $69 $F9
	.db $9B $23 $9F $01 $A0 $06 $A5 $12 $A4 $0C $A2 $05 $A3 $01 $A4 $06
	.db $80 $9E $2F $A9 $01 $AA $12 $A9 $0C $A7 $06 $A9 $80 $A4 $4C $A5
	.db $01 $A6 $A7 $0C $A5 $A4 $22 $9E $01 $9F $A0 $06 $9D $2A $80 $06
	.db $9E $40 $A0 $01 $A1 $A2 $0C $A5 $06 $A4 $80 $A2 $0C $A0 $06 $9D
	.db $2E $9E $01 $9F $A0 $0C $A4 $06 $A2 $80 $A3 $52 $A5 $01 $A7 $A8
	.db $0C $F9 $A9 $3C $A7 $0C $AE $06 $AC $80 $A9 $4E $06 $A4 $A7 $A9
	.db $4E $AE $06 $AC $80 $A9 $5A $80 $0A $A5 $01 $A6 $A7 $12 $A5 $06
	.db $80 $18 $80 $0A $A5 $01 $A6 $A7 $06 $A5 $05 $A6 $01 $A7 $06 $A9
	.db $12 $A7 $12 $A5 $06 $80 $18 $80 $0A $A5 $01 $A6 $A7 $06 $A5 $05
	.db $A6 $01 $A7 $06 $A9 $10 $A5 $01 $A6 $A7 $12 $A5 $06 $80 $16 $A5
	.db $01 $A6 $A7 $0C $A5 $06 $A7 $80 $A9 $0C $A7 $12 $A4 $A0 $A0 $12
	.db $9D $06 $08 $9E $A0 $07 $A1 $01 $F9 $A2 $0C $A0 $05 $A1 $01 $A2
	.db $0C $A0 $05 $A1 $01 $A2 $0C $A0 $05 $A1 $01 $A2 $0C $A0 $05
	
; 22nd entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 6A88 to 6D86 (767 bytes)	
_DATA_6A88_:	
	.db $A1 $01 $A2 $0C $A0 $05 $A3 $01 $A4 $0C $A2 $05 $A3 $01 $A4 $0C
	.db $A2 $05 $A3 $01 $A4 $0C $A2 $06 $A5 $A5 $A4 $0C $A2 $A6 $06 $A7
	.db $0B $A8 $01 $A9 $06 $A7 $0B $A8 $01 $A9 $06 $A7 $0B $A8 $01 $A9
	.db $06 $A7 $0B $A8 $01 $A9 $06 $A7 $0C $A9 $06 $AC $05 $AD $01 $AE
	.db $06 $AC $30 $80 $06 $A6 $80 $A7 $80 $A9 $80 $AA $04 $AA $01 $AB
	.db $AC $0C $AA $05 $AB $01 $AC $0C $AA $05 $AB $01 $AC $0C $AA $05
	.db $AB $01 $AC $0C $AA $05 $AB $01 $AC $0C $AA $04 $AC $01 $AD $AE
	.db $0C $AC $05 $AD $01 $AE $0C $AC $05 $AD $01 $AE $0C $AC $06 $B2
	.db $06 $AF $AE $B5 $0C $B3 $06 $B2 $B3 $0B $B4 $01 $B5 $06 $B3 $0B
	.db $B4 $01 $B5 $06 $B3 $0B $B4 $01 $B5 $06 $F9 $9D $06 $A4 $A9 $9D
	.db $A4 $A9 $9D $A4 $A9 $06 $9D $A4 $A9 $9D $A4 $A9 $A4 $9B $06 $A2
	.db $A7 $9B $A2 $A7 $9B $A2 $A7 $06 $9B $A2 $A7 $9B $A2 $A5 $A7 $F7
	.db $01 $02 $23 $6B $F9 $9D $06 $A4 $A9 $9D $A4 $A9 $9D $A4 $A9 $06
	.db $9D $A4 $A9 $9D $A4 $A9 $A4 $9B $06 $A2 $A7 $9B $A2 $A7 $9B $A2
	.db $A7 $9B $06 $A2 $A7 $9B $A2 $A0 $A2 $9D $06 $A4 $A9 $9D $A4 $A9
	.db $9D $A4 $A9 $9D $06 $A4 $A9 $9D $A4 $A9 $A4 $9B $A2 $A7 $06 $9B
	.db $A2 $A7 $9B $A7 $80 $60 $F9 $F8 $44 $68 $F8 $4B $68 $F8 $AE $68
	.db $F8 $DE $68 $F8 $B2 $69 $F2 $F8 $FC $6B $F8 $EA $6B $80 $06 $9B
	.db $80 $03 $9B $06 $80 $03 $9B $06 $80 $12 $F8 $EA $6B $80 $06 $9B
	.db $9B $9B $9B $06 $06 $06 $06 $80 $7F $7F $7F $03 $F8 $0C $6C $80
	.db $06 $9B $06 $9B $06 $F8 $A7 $6D $F7 $00 $03 $CB $6B $F8 $F5 $6D
	.db $80 $30 $F8 $1C $6C $F8 $45 $6C $F7 $00 $02 $DA $6B $96 $06 $06
	.db $F2 $01 $F8 $8D $6C $F7 $01 $02 $EA $6B $F8 $06 $6D $F8 $A7 $6D
	.db $F8 $F5 $6D $F9 $F8 $1C $6C $F8 $45 $6C $F8 $45 $6C $F8 $6E $6C
	.db $F8 $03 $70 $F9 $F8 $1C $6C $F8 $45 $6C $F8 $45 $6C $F8 $6E $6C
	.db $F8 $20 $70 $F9 $96 $06 $06 $A2 $96 $80 $06 $96 $A2 $95 $95 $06
	.db $06 $A1 $95 $A1 $06 $95 $A1 $94 $0C $94 $06 $A0 $94 $9F $06 $A0
	.db $A2 $8F $0C $8F $06 $9B $8F $9C $06 $8F $9D $8F $F9 $96 $06 $06
	.db $A2 $96 $A5 $06 $A2 $96 $A1 $0C $95 $06 $A1 $95 $A4 $06 $A1 $95
	.db $94 $0C $A0 $06 $94 $94 $A4 $06 $A2 $A0 $9B $0C $8F $06 $9B $8F
	.db $9D $06 $8F $9F $8F $F9 $80 $06 $96 $A2 $96 $A0 $06 $96 $A2 $95
	.db $0C $95 $06 $A1 $95 $A0 $06 $95 $A1 $94 $0C $94 $06 $A0 $94 $9F
	.db $06 $A0 $A2 $8F $F9 $94 $06 $A0 $03 $80 $F7 $00 $08 $8D $6C $8F
	.db $06 $9B $03 $80 $F7 $00 $08 $97 $6C $96 $06 $A2 $03 $80 $F7 $00
	.db $08 $A1 $6C $91 $06 $9D $03 $80 $F7 $00 $06 $AB $6C $91 $06 $06
	.db $06 $92 $0C $9E $03 $80 $92 $06 $F7 $00 $07 $BB $6C $9E $03 $80
	.db $8D $06 $99 $03 $80 $F7 $00 $07 $C8 $6C $8F $06 $9B $03 $80 $90
	.db $06 $9C $03 $80 $F7 $00 $08 $D7 $6C $8F $06 $9B $03 $80 $8F $06
	.db $9B $03 $80 $8F $06 $9B $03 $80 $8F $06 $0C $9B $03 $80 $90 $06
	.db $9C $03 $80 $91 $06 $9D $03 $80 $93 $06 $9F $03 $80 $F9 $80 $06
	.db $9E $99 $9B $9E $06 $80 $99 $9B $9E $06 $06 $99 $9B $9E $06 $99
	.db $9B $9E $80 $06 $9D $98 $9B $9D $06 $80 $98 $9B $9D $06 $98 $9B
	.db $9D $80 $06 $9D $98 $9B $80 $06 $9E $99 $9B $9E $06 $80 $99 $9B
	.db $80 $06 $9E $99 $9B $9E $06 $99 $9B $9E $80 $06 $9D $98 $9B $9D
	.db $06 $98 $9B $9D $0C $A9 $06 $9D $9D $A7 $06 $9D $A4 $A5 $80 $06
	.db $9E $99 $9B $9E $06 $99 $9B $9E $80 $06 $9E $99 $9B $9E $06 $99
	.db $9B $9E $80 $06 $9D $98 $9B $9D $06 $98 $9B $9D $80 $06 $9D $9C
	.db $9D $A0 $06 $9D $A2 $9D $80 $06 $9E $99 $9B $9E $06 $99 $9B
	
; 21st entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 6D87 to 6F85 (511 bytes)	
_DATA_6D87_:	
	.db $9E $80 $06 $9E $99 $9B $9E $06 $99 $9B $9E $80 $06 $9D $98 $9B
	.db $9D $06 $98 $9B $9D $80 $06 $9D $98 $9B $9D $08 $9C $9B $14 $F9
	.db $A7 $0C $9B $A7 $06 $A0 $0C $A0 $06 $AC $A0 $AC $06 $A0 $A0 $99
	.db $0C $99 $06 $A5 $99 $A0 $06 $A2 $A0 $96 $80 $06 $96 $9A $9D $96
	.db $06 $A2 $96 $9D $9B $06 $A7 $9B $A7 $0C $A7 $06 $9B $A0 $0C $A0
	.db $06 $AC $A0 $AB $06 $A0 $A9 $99 $0C $99 $06 $A5 $99 $99 $06 $94
	.db $95 $96 $0C $A2 $06 $96 $A2 $96 $06 $A2 $96 $9B $0C $F9 $9B $06
	.db $A7 $9B $0C $9B $06 $A7 $A0 $0C $A0 $06 $AC $A0 $A9 $06 $A0 $A7
	.db $9D $0C $9D $06 $A9 $9D $A9 $06 $9D $94 $96 $0C $96 $06 $9A $96
	.db $9D $06 $96 $A0 $9B $0C $9B $06 $A7 $9B $A7 $0C $9B $06 $A0 $0C
	.db $A0 $06 $AC $A0 $AC $06 $9B $9A $99 $99 $06 $06 $A5 $99 $80 $06
	.db $99 $A5 $99 $F9 $F8 $E3 $6E $F8 $FD $6E $80 $60 $F8 $B2 $6F $F7
	.db $00 $02 $43 $6E $F8 $2C $6F $F8 $7D $6F $80 $06 $B0 $80 $03 $B0
	.db $06 $80 $03 $B0 $06 $80 $12 $F8 $B2 $6F $F7 $00 $02 $5E $6E $F8
	.db $2C $6F $F8 $7D $6F $80 $06 $A2 $A2 $A2 $A2 $A2 $A2 $0C $80 $30
	.db $30 $30 $30 $80 $30 $30 $30 $30 $F8 $E3 $6E $F8 $FD $6E $80 $30
	.db $2A $A2 $30 $A0 $30 $A0 $30 $A0 $2A $06 $A2 $30 $A0 $30 $A0 $36
	.db $80 $06 $A0 $80 $A6 $80 $06 $AC $80 $AE $30 $AC $30 $B0 $30 $AE
	.db $18 $06 $80 $AE $0C $AE $2A $06 $AC $2A $80 $06 $AC $36 $80 $06
	.db $AE $AE $AE $AE $06 $06 $06 $F8 $A4 $6F $AC $30 $AE $06 $80 $06
	.db $AE $80 $AE $80 $06 $AE $80 $F8 $A4 $6F $80 $06 $AC $30 $80 $F8
	.db $E3 $6E $F7 $01 $02 $D6 $6E $B0 $06 $06 $F2 $02 $A4 $06 $06 $80
	.db $18 $A4 $06 $06 $80 $24 $A4 $06 $06 $80 $24 $A4 $06 $A2 $2A $0C
	.db $F7 $00 $02 $E3 $6E $F9 $A4 $06 $06 $80 $18 $A4 $06 $06 $80 $24
	.db $A4 $06 $06 $80 $24 $A4 $06 $A2 $80 $06 $A2 $80 $A2 $80 $06 $A2
	.db $A0 $80 $A4 $06 $06 $80 $18 $A4 $06 $06 $80 $24 $A4 $06 $06 $80
	.db $24 $A4 $06 $A2 $F9 $F8 $F0 $6F $80 $06 $A4 $80 $0C $A4 $06 $80
	.db $12 $A4 $06 $80 $0C $A4 $18 $80 $06 $F8 $F0 $6F $80 $06 $A4 $80
	.db $0C $A4 $06 $80 $12 $A4 $06 $80 $18 $A4 $12 $F8 $F0 $6F $80 $06
	.db $A5 $80 $0C $A5 $06 $80 $12 $A5 $06 $80 $0C $A5 $18 $80 $06 $F8
	.db $F0 $6F $80 $06 $A4 $80 $0C $A4 $06 $80 $0C $A4 $06 $80 $06 $A4
	.db $80 $0C $A4 $08 $A3 $F9 $A2 $32 $A0 $30 $A0 $30 $A0 $2A $06
	
; 19th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 6F86 to 703B (182 bytes)	
_DATA_6F86_:	
	.db $A2 $30 $A0 $30 $A0 $36 $80 $06 $A0 $80 $A2 $80 $06 $A6 $80 $A2
	.db $30 $A0 $30 $A4 $30 $A2 $30 $A2 $30 $A0 $30 $A0 $36 $F9 $AE $30
	.db $AC $30 $B0 $30 $AE $2A $06 $AE $30 $AC $30 $F9 $FB $FE $F8 $E0
	.db $6F $F8 $E0 $6F $FB $02 $F8 $E0 $6F $FB $FC $F8 $E0 $6F $FB $02
	.db $F8 $E0 $6F $FB $FE $F8 $E0 $6F $FB $FF $F8 $E0 $6F $FB $05 $A2
	.db $06 $06 $80 $18 $A2 $06 $2A $80 $0C $F9 $A4 $06 $06 $80 $18 $A4
	.db $06 $06 $80 $18 $A4 $06 $06 $80 $0C $F9 $80 $06 $A5 $80 $0C $A5
	.db $06 $80 $12 $A5 $06 $80 $0C $A5 $06 $80 $A5 $12 $F9 $9B $04 $A2
	.db $A7 $9C $A3 $A8 $9D $04 $A4 $A9 $9E $A5 $AA $9F $04 $A6 $AB $A0
	.db $A7 $AC $A1 $04 $A8 $AD $A2 $A9 $AE $F9 $9B $04 $A2 $A7 $9C $A3
	.db $A8 $9D $04 $A4 $A9 $9E $A5 $AA $9F $04 $A6 $AB $A0 $A7 $AC $A1
	.db $04 $A8 $AD $80 $06 $F9
	
; 3rd entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 703C to 7184 (329 bytes)	
_DATA_703C_:	
	.db $04 $80 $10 $02 $86 $70 $0C $04 $70 $02 $80 $11 $02 $9F $6B $F4
	.db $00 $E0 $02 $80 $12 $02 $3B $6E $0C $00 $20 $05 $80 $13 $02 $8B
	.db $70 $FB $00 $04 $06 $04 $80 $80 $02 $86 $70 $F8 $01 $05 $01 $80
	.db $A0 $02 $9F $6B $F8 $00 $04 $03 $80 $C0 $02 $3B $6E $F8 $00 $05
	.db $05 $80 $E0 $02 $8B $70 $FB $00 $04 $06 $FE $01 $F6 $33 $68 $F3
	.db $04 $F8 $5B $71 $F8 $EF $71 $F8 $01 $72 $F8 $16 $72 $F7 $01 $02
	.db $93 $70 $F8 $31 $72 $F8 $6A $72 $F8 $81 $72 $F8 $01 $72 $F8 $16
	.db $72 $F7 $01 $02 $A7 $70 $F8 $31 $72 $F8 $6A $72 $F8 $97 $72 $F8
	.db $AE $72 $88 $03 $88 $06 $88 $03 $88 $06 $88 $03 $88 $06 $88 $03
	.db $88 $06 $88 $03 $88 $06 $88 $03 $F8 $AE $72 $88 $06 $85 $03 $85
	.db $09 $85 $03 $85 $09 $85 $03 $85 $8C $85 $8C $85 $F8 $AE $72 $88
	.db $03 $88 $88 $85 $88 $88 $88 $85 $88 $88 $88 $85 $85 $85 $8C $85
	.db $F8 $AE $72 $90 $06 $A4 $0C $06 $09 $09 $06 $F8 $AE $72 $8C $03
	.db $85 $85 $85 $8C $85 $85 $85 $8C $85 $85 $85 $88 $02 $85 $02 $02
	.db $03 $03 $F8 $AE $72 $F8 $EF $71 $F8 $6A $72 $F8 $97 $72 $F8 $6A
	.db $72 $85 $06 $A0 $88 $A0 $85 $A4 $88 $A0 $F7 $00 $07 $2D $71 $90
	.db $88 $88 $88 $88 $88 $88 $88 $F8 $5B $71 $A4 $8C $03 $8C $A4 $06
	.db $8C $03 $8C $A4 $06 $8C $03 $8C $A4 $06 $8C $03 $8C $F2 $03 $89
	.db $06 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89 $81 $89 $81 $89 $81
	.db $89 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89 $81 $89 $81 $88 $06
	.db $03 $03 $89 $06 $85 $89 $85 $89 $85
	
; 16th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7185 to 7483 (767 bytes)	
_DATA_7185_:	
	.db $89 $85 $89 $85 $89 $85 $89 $81 $89 $81 $89 $85 $89 $85 $89 $85
	.db $89 $88 $03 $01 $84 $85 $06 $85 $89 $88 $03 $88 $85 $8C $85 $84
	.db $8D $84 $85 $8C $89 $06 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89
	.db $81 $89 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89 $85 $A4 $8C $03
	.db $8C $A4 $06 $8C $03 $8C $A4 $06 $8C $03 $8C $A4 $06 $8C $03 $8C
	.db $89 $06 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89 $85 $89
	.db $85 $89 $85 $89 $85 $89 $85 $89 $88 $F9 $81 $0C $81 $81 $81 $88
	.db $06 $88 $88 $0C $88 $03 $88 $85 $85 $AC $0C $F9 $85 $03 $81 $81
	.db $81 $8C $06 $81 $03 $81 $F7 $00 $0F $01 $72 $81 $06 $88 $88 $88
	.db $F9 $85 $03 $81 $81 $81 $8C $06 $81 $03 $81 $F7 $00 $0E $16 $72
	.db $88 $06 $85 $85 $88 $0C $84 $03 $84 $AC $0C $F9 $85 $06 $A0 $88
	.db $A4 $81 $A0 $88 $A0 $85 $A0 $88 $A4 $81 $A4 $88 $A0 $F7 $00 $07
	.db $31 $72 $85 $06 $A0 $88 $A4 $81 $A0 $88 $A0 $85 $A0 $88 $A0 $E7
	.db $F0 $88 $03 $E7 $F0 $88 $E6 $F0 $88 $E6 $F0 $88 $E5 $F0 $88 $E5
	.db $F0 $88 $88 $88 $F9 $85 $06 $A0 $88 $A0 $85 $A4 $88 $A0 $F7 $00
	.db $07 $6A $72 $90 $AC $0C $AC $AC $88 $03 $88 $F9 $85 $06 $A0 $88
	.db $A0 $85 $A4 $88 $A0 $F7 $00 $07 $81 $72 $90 $A4 $09 $06 $0F $88
	.db $0C $F9 $85 $06 $A0 $88 $A0 $85 $A4 $88 $A0 $F7 $00 $07 $97 $72
	.db $90 $88 $88 $88 $88 $88 $88 $88 $F9 $88 $06 $85 $85 $88 $85 $85
	.db $88 $85 $85 $88 $85 $85 $88 $03 $88 $85 $85 $88 $0C $88 $06 $85
	.db $85 $88 $85 $85 $88 $85 $F9 $FF $F8 $02 $73 $F7 $00 $04 $CD $72
	.db $F8 $06 $73 $B3 $57 $80 $0C $F8 $20 $73 $F7 $00 $02 $DC $72 $F8
	.db $BB $73 $F8 $E5 $73 $F8 $1B $74 $F8 $BB $73 $F8 $E5 $73 $F8 $20
	.db $73 $80 $7F $41 $F8 $2C $73 $F8 $72 $73 $F6 $FC $72 $80 $7F $41
	.db $F9 $9B $02 $9D $A0 $9D $A0 $A2 $A0 $02 $A2 $A5 $A2 $A5 $A7 $A5
	.db $02 $A7 $A9 $A7 $A9 $AC $AE $03 $80 $06 $F9 $80 $7F $41 $F8 $2C
	.db $73 $F8 $72 $73 $80 $60 $F9 $A9 $09 $A7 $AC $06 $A9 $09 $A7 $A5
	.db $06 $A7 $09 $A4 $A0 $12 $80 $0C $A5 $09 $A4 $A7 $06 $A5 $09 $A4
	.db $9D $06 $A2 $09 $A4 $03 $A2 $18 $80 $0C $A9 $09 $A7 $AC $06 $A9
	.db $09 $A7 $A5 $06 $A7 $09 $A4 $A0 $12 $80 $0C $A5 $09 $A4 $A7 $06
	.db $A5 $09 $A4 $9D $03 $A0 $A4 $09 $A2 $1E $A0 $09 $F9 $9E $0F $A0
	.db $06 $A2 $03 $A0 $0C $9E $06 $9D $9B $09 $9D $03 $99 $18 $80 $0C
	.db $9E $0F $A0 $06 $A2 $03 $A0 $0C $9D $06 $A5 $A4 $09 $A2 $1E $A0
	.db $09 $9E $0F $A0 $06 $A2 $03 $A0 $0C $9E $06 $9D $9B $09 $9D $03
	.db $99 $1B $9D $09 $9E $0F $A0 $06 $A2 $03 $A0 $0C $9D $06 $A5 $A4
	.db $09 $A2 $1B $80 $0C $F9 $80 $03 $96 $80 $99 $80 $03 $9B $80 $9D
	.db $80 $03 $9B $80 $9D $80 $03 $A0 $80 $A2 $80 $03 $A2 $80 $A5 $80
	.db $03 $A7 $80 $A9 $80 $03 $AC $80 $AD $80 $03 $AE $2D $80 $0C $F9
	.db $80 $03 $B1 $80 $B1 $80 $09 $B3 $03 $80 $B3 $80 $15 $B3 $03 $80
	.db $B3 $80 $09 $B5 $03 $80 $B5 $80 $15 $B1 $03 $80 $B1 $80 $09 $B3
	.db $03 $80 $B3 $80 $15 $B3 $03 $80 $B3 $80 $09 $B5 $03 $80 $B5 $80
	.db $09 $B3 $39 $80 $30 $F9 $A0 $02 $A1 $A2 $A2 $A2 $A2 $A2 $02 $02
	.db $02 $02 $02 $02 $A2 $02 $02 $02 $02 $02 $02 $A2 $02 $01 $A4 $03
	.db $A2 $A5 $0C $A4 $09 $A2 $12 $80 $06 $A1 $02 $A0 $A2 $A2 $02 $02
	.db $02 $02 $02 $02 $80 $06 $A1 $02 $A0 $A2 $A2 $02 $02 $02 $02 $02
	.db $02 $A2 $02 $02 $02 $02 $02 $02 $A5 $09 $A4 $A2 $06 $80 $03 $A7
	.db $80 $A7 $80 $03 $A7 $A8 $A9 $AC $06 $A2 $03 $A9 $80 $03 $AC $A2
	.db $A9 $A9 $03 $A7 $80 $A5 $06 $A7 $03 $A5 $80 $A5 $03 $03 $02
	
; 13th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7484 to 7682 (511 bytes)	
_DATA_7484_:	
	.db $02 $02 $A5 $03 $A4 $A4 $02 $A4 $A4 $A4 $03 $03 $A2 $A2 $A0 $02
	.db $02 $02 $9F $06 $9B $03 $A0 $06 $9D $03 $80 $03 $9F $9B $A0 $9D
	.db $03 $A2 $A0 $06 $9B $03 $A0 $9D $06 $A0 $03 $9D $A2 $06 $80 $02
	.db $A0 $A0 $A0 $A0 $A0 $A2 $02 $02 $A4 $A4 $A4 $A5 $A5 $02 $02 $A7
	.db $A7 $A9 $A9 $9D $06 $A0 $03 $A2 $80 $03 $9D $9D $9D $9D $03 $A0
	.db $06 $A2 $03 $9D $03 $03 $02 $02 $02 $80 $03 $A4 $80 $A5 $A5 $03
	.db $A4 $05 $02 $02 $A4 $03 $03 $02 $02 $02 $A2 $06 $A0 $03 $A2 $80
	.db $06 $A2 $03 $03 $80 $03 $A2 $A4 $A5 $80 $03 $A2 $A2 $A4 $A5 $03
	.db $A2 $A2 $A4 $80 $03 $A5 $06 $A2 $03 $A4 $03 $80 $A5 $A2 $A2 $04
	.db $A4 $A5 $A7 $04 $A9 $A9 $80 $03 $A9 $80 $A9 $A2 $03 $A7 $06 $A2
	.db $03 $A5 $03 $A0 $06 $A2 $03 $A5 $02 $A6 $A7 $A7 $03 $A7 $80 $02
	.db $A5 $A4 $A2 $80 $A5 $A4 $02 $A2 $80 $A5 $A4 $A2 $80 $03 $A4 $06
	.db $A2 $03 $A0 $02 $02 $02 $A2 $03 $03 $A2 $02 $02 $02 $02 $02 $02
	.db $A2 $03 $03 $03 $03 $A2 $03 $A0 $9F $9D $A0 $03 $9F $A0 $9D $80
	.db $03 $9B $80 $9B $9B $03 $99 $80 $99 $99 $04 $98 $96 $94 $04 $04
	.db $91 $80 $03 $96 $80 $98 $80 $03 $96 $91 $98 $96 $03 $91 $06 $94
	.db $03 $96 $03 $98 $96 $99 $80 $03 $9B $06 $96 $06 $99 $03 $9B $80
	.db $05 $9E $02 $80 $9E $80 $04 $9B $03 $9C $9D $A0 $80 $06 $A2 $03
	.db $03 $80 $03 $A2 $A2 $A2 $A2 $02 $01 $A4 $03 $A5 $06 $A5 $03 $A2
	.db $A4 $A5 $80 $03 $A2 $A4 $A5 $A2 $03 $A4 $A5 $A2 $A4 $03 $A5 $A2
	.db $A4 $A5 $03 $A2 $A7 $A7 $A7 $03 $A2 $A2 $A7 $A7 $03 $A2 $A9 $A9
	.db $A9 $03 $A2 $A2 $AB $AB $03 $A2 $A2 $A2 $80 $03 $AC $AC $A2 $A2
	.db $03 $80 $AE $AE $80 $03 $AC $AC $AC $AC $02 $02 $AD $AE $AE $B0
	.db $AE $03 $03 $A9 $AC $AE $03 $A9 $AC $AE $A9 $03 $AC $AE $B0 $80
	.db $03 $B1 $80 $B0 $80 $03 $AE $80 $AC $80 $03 $AB $80 $A9 $80 $03
	.db $A7 $80 $A5 $80 $03 $A4 $80 $A2 $A0 $0C $A2 $09 $A5 $06 $A4 $03
	.db $A0 $06 $A2 $80 $A2 $0C $A4 $09 $A5 $06 $A4 $03 $A2 $06 $A4 $A0
	.db $03 $A2 $A2 $0C $A4 $09 $A5 $06 $A0 $03 $06 $A2 $09 $A7 $03 $80
	.db $03 $A7 $A5 $A2 $80 $03 $A9 $A7 $A2 $80 $03 $AB $A9 $A7 $80 $03
	.db $A7 $A8 $A9 $A7 $02 $A8 $A9 $A9 $03 $A9 $A7 $02 $A8 $A9 $A9 $03
	.db $A9 $A7 $02 $A8 $A9 $A9 $03 $A9 $A7 $02 $A8 $A9 $A9 $03 $A9 $A7
	.db $02 $A8 $A9 $A9 $A9 $A9 $A9 $03 $03 $03 $02 $01 $A9 $02 $02
	
; 10th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7683 to 7881 (511 bytes)	
_DATA_7683_:	
	.db $02 $03 $03 $A9 $03 $A7 $A7 $A7 $A7 $03 $A5 $A5 $A5 $A4 $03 $03
	.db $03 $02 $01 $A4 $03 $03 $02 $A2 $A2 $A2 $03 $A0 $A0 $9F $80 $03
	.db $9F $9D $A0 $9B $03 $A2 $9D $A0 $9F $03 $A2 $A2 $02 $A2 $A2 $A2
	.db $03 $03 $A4 $A2 $F9 $F8 $5D $77 $96 $09 $9D $06 $94 $93 $09 $9B
	.db $06 $9B $03 $93 $94 $06 $96 $09 $9D $06 $94 $93 $03 $80 $06 $93
	.db $94 $95 $F8 $5D $77 $F7 $00 $06 $D5 $76 $80 $2D $91 $4B $80 $03
	.db $99 $80 $98 $80 $03 $91 $80 $94 $F8 $75 $77 $F8 $25 $78 $A2 $06
	.db $80 $5A $F8 $75 $77 $F8 $25 $78 $A2 $06 $80 $5A $F8 $6A $78 $F8
	.db $D2 $78 $9B $09 $A2 $03 $09 $9B $03 $A9 $04 $04 $04 $A7 $04 $A0
	.db $08 $F8 $D2 $78 $9B $09 $A2 $03 $09 $9B $03 $9B $03 $80 $A0 $06
	.db $A1 $A2 $F8 $D2 $78 $9B $09 $A2 $03 $09 $9B $03 $9B $03 $80 $A0
	.db $06 $A1 $A2 $F8 $D2 $78 $9B $09 $A2 $03 $09 $9B $03 $9B $03 $80
	.db $A0 $06 $A1 $A2 $F8 $6A $78 $F8 $75 $77 $F8 $25 $78 $A2 $06 $80
	.db $5A $F8 $75 $77 $F8 $25 $78 $F6 $57 $77 $96 $09 $9D $06 $94 $93
	.db $09 $9B $06 $9B $03 $93 $94 $06 $96 $09 $9D $06 $94 $93 $03 $80
	.db $18 $F9 $96 $09 $03 $80 $06 $96 $80 $06 $94 $03 $80 $96 $06 $80
	.db $96 $09 $03 $80 $06 $96 $80 $06 $94 $03 $80 $96 $06 $91 $96 $09
	.db $03 $80 $06 $96 $80 $06 $94 $03 $80 $96 $06 $80 $96 $09 $03 $80
	.db $06 $96 $80 $06 $94 $03 $80 $96 $06 $80 $96 $09 $91 $03 $09 $96
	.db $03 $96 $09 $91 $03 $06 $94 $03 $96 $94 $09 $8F $03 $09 $94 $03
	.db $94 $09 $8F $03 $03 $96 $94 $93 $94 $09 $8F $03 $09 $94 $03 $94
	.db $09 $8F $03 $06 $94 $03 $95 $96 $09 $91 $03 $09 $96 $03 $96 $09
	.db $91 $03 $06 $94 $03 $96 $96 $09 $91 $03 $09 $96 $03 $96 $09 $91
	.db $03 $06 $94 $03 $96 $94 $09 $8F $03 $09 $94 $03 $94 $09 $99 $03
	.db $03 $98 $94 $06 $94 $09 $8F $03 $09 $94 $03 $94 $09 $8F $03 $06
	.db $94 $03 $95 $96 $03 $03 $03 $80 $09 $96 $03 $03 $03 $80 $09 $80
	.db $0C $F9 $92 $09 $99 $03 $03 $9E $06 $99 $03 $94 $09 $9B $03 $03
	.db $A0 $06 $9B $03 $96 $09 $9D $03 $03 $A2 $06 $A0 $9D $03 $03 $A4
	.db $A2 $0C $92 $09 $99 $03 $03 $9E $06 $99 $03 $94 $09 $9B $03 $03
	.db $A0 $06 $9B $03 $96 $09 $9D $03 $03 $A4 $06 $A2 $09 $A2 $06 $06
	.db $A0 $F7 $00 $02 $25 $78 $F9 $80 $03 $96 $80 $99 $80 $03 $9B $80
	.db $9D $80 $03 $9B $80 $9D $80 $03 $A0 $80 $A2 $80 $03 $A2 $80
	
; 7th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7882 to 7B3C (699 bytes)	
_DATA_7882_:	
	.db $A5 $80 $03 $A7 $80 $A9 $80 $03 $AC $80 $AD $80 $03 $AE $2D $80
	.db $0F $92 $03 $80 $9E $80 $09 $94 $03 $80 $A0 $80 $15 $94 $03 $80
	.db $A0 $80 $09 $96 $03 $80 $A2 $80 $15 $92 $03 $80 $9E $80 $09 $94
	.db $03 $80 $A0 $80 $15 $94 $03 $80 $A0 $80 $09 $96 $03 $80 $A2 $80
	.db $09 $91 $4B $80 $03 $91 $91 $80 $9D $91 $9B $03 $9C $9D $9E $F9
	.db $96 $09 $9D $03 $09 $A2 $03 $A2 $09 $9D $03 $06 $96 $9B $09 $A2
	.db $03 $09 $A7 $03 $A7 $09 $A2 $03 $03 $9B $09 $96 $09 $9D $03 $09
	.db $A2 $03 $A2 $09 $9D $03 $06 $96 $9B $09 $A2 $03 $09 $A7 $03 $A7
	.db $03 $A5 $A6 $A7 $80 $03 $A0 $A1 $A2 $96 $09 $9D $03 $09 $A2 $03
	.db $A2 $09 $9D $03 $06 $96 $9B $09 $A2 $03 $09 $A7 $03 $A7 $09 $A2
	.db $03 $03 $9B $09 $96 $09 $9D $03 $09 $A2 $03 $A2 $09 $9D $03 $03
	.db $9B $9C $9D $F9 $A2 $06 $A5 $03 $80 $06 $A0 $9F $A2 $03 $80 $06
	.db $9F $03 $9F $03 $A0 $06 $A2 $06 $A5 $03 $80 $06 $A0 $9F $03 $80
	.db $18 $A2 $06 $A5 $03 $80 $06 $A0 $9F $A2 $03 $80 $06 $9F $03 $9F
	.db $03 $A0 $06 $A2 $06 $A5 $03 $A9 $80 $A0 $06 $9F $03 $80 $18 $F7
	.db $00 $04 $36 $79 $9B $02 $9D $A0 $9D $A0 $A2 $A0 $02 $A2 $A5 $A2
	.db $A5 $A7 $A5 $02 $A7 $A9 $A7 $A9 $AC $AE $03 $80 $06 $B3 $57 $80
	.db $0C $F8 $D1 $79 $F8 $08 $7A $A9 $06 $80 $5A $F8 $D1 $79 $F8 $08
	.db $7A $A9 $06 $80 $5A $F8 $60 $7A $F8 $BE $7A $F8 $FD $7A $F8 $BE
	.db $7A $F8 $FD $7A $F7 $00 $03 $B0 $79 $F8 $60 $7A $F8 $D1 $79 $F8
	.db $08 $7A $A9 $06 $80 $5A $F8 $D1 $79 $F8 $08 $7A $F6 $CB $79 $A5
	.db $09 $03 $80 $06 $A5 $80 $06 $A4 $03 $80 $A5 $06 $80 $F7 $00 $04
	.db $D1 $79 $F8 $2E $7A $A5 $06 $A2 $80 $03 $A2 $80 $A2 $06 $A5 $03
	.db $80 $A2 $A4 $A4 $A5 $06 $F8 $2E $7A $A5 $03 $03 $03 $80 $09 $A5
	.db $03 $03 $03 $80 $15 $F9 $A2 $06 $A5 $03 $80 $06 $A2 $A4 $03 $A4
	.db $06 $A7 $03 $80 $06 $A4 $A5 $03 $A5 $06 $A9 $03 $80 $06 $A5 $A5
	.db $A9 $A5 $03 $A7 $06 $A9 $F7 $00 $04 $08 $7A $F9 $A5 $06 $A2 $80
	.db $03 $A2 $80 $A2 $06 $A5 $03 $80 $A2 $A4 $06 $A5 $A4 $06 $A0 $80
	.db $03 $A0 $80 $A0 $06 $A4 $03 $80 $A0 $A5 $A5 $A0 $06 $A4 $06 $A0
	.db $80 $03 $A0 $80 $A0 $06 $A2 $03 $80 $A4 $A5 $06 $A0 $F9 $80 $03
	.db $96 $80 $99 $80 $03 $9B $80 $9D $80 $03 $9B $80 $9D $80 $03 $A0
	.db $80 $A2 $80 $03 $A2 $80 $A5 $80 $03 $A7 $80 $A9 $80 $03 $AC $80
	.db $AD $80 $03 $AE $2D $80 $0F $B1 $03 $80 $B1 $80 $09 $B3 $03 $80
	.db $B3 $80 $15 $B3 $03 $80 $B3 $80 $09 $B5 $03 $80 $B5 $80 $15 $B1
	.db $03 $80 $B1 $80 $09 $B3 $03 $80 $B3 $80 $15 $B3 $03 $80 $B3 $80
	.db $09 $B5 $03 $80 $B5 $80 $09 $B3 $39 $80 $30 $F9 $A2 $06 $A5 $03
	.db $80 $06 $A2 $A2 $A5 $80 $03 $A2 $A2 $A0 $06 $9F $06 $A2 $03 $80
	.db $06 $9F $9F $A2 $06 $80 $03 $9F $9F $A0 $06 $A2 $06 $A5 $03 $80
	.db $06 $A2 $A2 $A5 $80 $03 $A2 $A2 $A0 $06 $9F $06 $A2 $03 $80 $06
	.db $9F $9F $A2 $06 $80 $03 $A7 $A7 $A0 $06 $F9 $A2 $06 $A5 $03 $80
	.db $06 $A2 $A2 $A5 $80 $03 $A2 $A2 $94 $06 $9F $06 $A2 $03 $80 $06
	.db $9F $9F $A2 $06 $80 $03 $9F $9F $A0 $06 $A2 $06 $A5 $03 $80 $06
	.db $A2 $A2 $A5 $80 $03 $A2 $A2 $94 $06 $9F $06 $A2 $03 $80 $06 $9F
	.db $9F $03 $80 $04 $A7 $A7 $A7 $04 $04 $04 $F9
	
; Data from 7B3D to 7B80 (68 bytes)	
_DATA_7B3D_:	
	.db $04 $80 $10 $02 $87 $7B $0C $01 $60 $02 $80 $11 $02 $B8 $76 $00
	.db $00 $E0 $02 $80 $12 $02 $36 $79 $0C $00 $20 $03 $80 $13 $02 $8C
	.db $7B $0C $00 $30 $05 $04 $80 $80 $02 $87 $7B $F8 $01 $05 $02 $80
	.db $A0 $02 $B8 $76 $F8 $00 $0A $04 $80 $C0 $02 $36 $79 $F8 $00 $05
	.db $05 $80 $E0 $02
	
; 4th entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7B81 to 7D7F (511 bytes)	
_DATA_7B81_:	
	.db $8C $7B $0C $00 $30 $05 $FE $01 $F6 $CD $72 $F3 $04 $81 $06 $03
	.db $06 $06 $06 $06 $09 $03 $03 $F7 $00 $04 $8E $7B $F8 $85 $7C $81
	.db $03 $A0 $06 $06 $06 $03 $F8 $85 $7C $88 $03 $88 $85 $88 $88 $85
	.db $88 $06 $F8 $90 $7C $81 $18 $F8 $90 $7C $90 $03 $88 $06 $F5 $51
	.db $03 $88 $88 $01 $F5 $00 $85 $88 $06 $F8 $90 $7C $F5 $81 $88 $02
	.db $88 $88 $88 $85 $90 $88 $88 $88 $88 $88 $90 $F5 $00 $F8 $90 $7C
	.db $90 $03 $88 $06 $03 $06 $88 $F5 $81 $88 $02
	.dsb 17, $88
	.db $F5 $00 $88 $09 $A4 $03 $F8 $12 $7D $F8 $AD $7C $F8 $D4 $7C $F8
	.db $FA $7C $F8 $12 $7D $F7 $01 $02 $06 $7C $F8 $29 $7D $85 $03 $81
	.db $A0 $84 $8C $06 $A0 $81 $03 $81 $A0 $84 $8C $06 $A0 $F7 $00 $07
	.db $1A $7C $85 $03 $81 $A0 $84 $8C $06 $81 $90 $04 $88 $88 $88 $88
	.db $88 $F7 $01 $04 $1A $7C $F8 $29 $7D $F8 $AD $7C $F8 $D4 $7C $F8
	.db $FA $7C $F8 $12 $7D $F8 $AD $7C $F8 $D4 $7C $F8 $FA $7C $F8 $AF
	.db $7D $81 $03 $81 $A0 $06 $81 $03 $81 $88 $06 $88 $03 $85 $88 $85
	.db $88 $85 $88 $88 $F8 $AF $7D $88 $03 $06 $03 $06 $03 $03 $02 $02
	.db $08 $03 $88 $88 $88 $F6 $5B $7C $81 $03 $81 $A0 $06 $F7 $00 $06
	.db $85 $7C $F9 $85 $03 $81 $A0 $84 $88 $06 $81 $03 $81 $81 $81 $A0
	.db $84 $8C $06 $81 $03 $81 $85 $81 $A0 $84 $88 $06 $81 $03 $81 $F9
	.db $85 $03 $84 $81 $85 $81 $84 $81 $81 $81 $81 $85 $84 $88 $06 $81
	.db $03 $81 $F7 $00 $03 $AD $7C $88 $03 $85 $85 $88 $85 $85 $88 $85
	.db $85 $06 $85 $06 $88 $0C $F9 $85 $03 $81 $A0 $84 $88 $06 $A0 $85
	.db $03 $81 $A0 $84 $88 $06 $A0 $F7 $00 $07 $D4 $7C $88 $03 $88 $88
	.db $06 $81 $88 $03 $88 $88 $06 $81 $03 $81 $88 $0C $F9 $85 $03 $81
	.db $A0 $84 $85 $81 $A0 $06 $85 $03 $81 $A0 $84 $85 $81 $88 $06 $F7
	.db $00 $08 $FA $7C $F9 $89 $03 $81 $81 $89 $81 $81 $89 $81 $81 $81
	.db $89 $06 $89 $81 $03 $81 $F7 $00 $02 $12 $7D $F9 $85 $03 $A0 $06
	.db $A0 $A0 $A0 $A0 $A0 $A0 $03 $88 $88 $85 $A0 $06 $A0 $A0 $A0 $A0
	.db $A0 $A8 $09 $81 $06 $03 $06 $81 $81 $81 $81 $09 $03 $81 $85 $A4
	.db $06 $A0 $09 $85 $03 $A4 $06 $A0 $09 $81 $06 $03 $81 $85 $A4 $06
	.db $A0 $09 $85 $03 $A4 $06 $A0 $09 $F5 $51 $88 $03 $88 $88 $88 $F5
	.db $00 $85 $03 $A4 $06 $A0 $09 $85 $03 $A4 $06 $A0 $09 $81 $06 $03
	.db $81 $85 $A4
	
; 1st entry of Pointer Table from B680 (indexed by _RAM_C30A_)	
; Data from 7D80 to 7DC8 (73 bytes)	
_DATA_7D80_:	
	.db $06 $A0 $09 $85 $03 $A4 $06 $A0 $88 $03 $88 $A4 $09 $81 $03 $81
	.db $81 $81 $81 $06 $03 $81 $81 $81 $81 $81 $81 $06 $81 $88 $03 $88
	.db $88 $88 $88 $06 $03 $88 $88 $88 $88 $06 $03 $88 $88 $88 $F9 $85
	.db $03 $81 $A0 $84 $85 $81 $88 $06 $85 $03 $81 $A0 $84 $85 $06 $88
	.db $03 $88 $F7 $00 $03 $AF $7D $F9 $FF
	
; 4th entry of Pointer Table from 5637 (indexed by _RAM_C001_)	
; Data from 7DC9 to 7FEF (551 bytes)	
_DATA_7DC9_:	
	.db $03 $80 $10 $04 $01 $7E $0F $01 $30 $02 $80 $11 $04 $D3 $7E $03
	.db $00 $E0 $02 $80 $12 $04 $2C $7F $0F $00 $C0 $02 $03 $80 $80 $04
	.db $01 $7E $FE $01 $05 $02 $80 $A0 $04 $D3 $7E $FE $00 $05 $05 $80
	.db $C0 $04 $2C $7F $FE $00 $05 $04 $9D $06 $9B $03 $9D $0F $80 $06
	.db $9D $9B $9D $A0 $12 $9B $03 $9D $0F $94 $03 $96 $99 $9B $9D $06
	.db $9B $03 $9D $0F $80 $06 $9D $9B $99 $98 $0C $80 $06 $94 $03 $91
	.db $0F $80 $0C $98 $09 $9B $0F $80 $06 $94 $96 $04 $99 $9B $9B $09
	.db $9D $0F $80 $06 $97 $03 $9A $9D $A3 $A2 $A0 $9E $12 $9D $03 $9E
	.db $0F $80 $03 $A0 $06 $9F $03 $A0 $0F $A2 $06 $A0 $03 $A2 $03 $A3
	.db $06 $A5 $A7 $A9 $03 $A9 $03 $A9 $A7 $A9 $0F $80 $06 $9D $9B $99
	.db $A0 $0C $80 $06 $9B $03 $9D $0F $80 $03 $A2 $A5 $A7 $A9 $03 $A9
	.db $A7 $A9 $0F $80 $06 $9D $9B $99 $A0 $A0 $80 $A4 $A4 $03 $A0 $15
	.db $9D $06 $9B $03 $09 $99 $03 $09 $98 $03 $06 $94 $03 $95 $96 $A2
	.db $09 $A0 $0F $9D $04 $A3 $A2 $A0 $9E $9D $9D $0C $80 $03 $A9 $06
	.db $A9 $03 $A7 $12 $A5 $03 $15 $A9 $18 $A2 $03 $A4 $A0 $24 $80 $06
	.db $A2 $03 $A4 $A0 $24 $80 $06 $A2 $03 $A4 $A2 $12 $A9 $1E $96 $06
	.db $9B $9D $A2 $A7 $A9 $AE $0C $94 $30 $F2 $92 $18 $86 $0C $92 $91
	.db $18 $85 $0C $91 $92 $18 $86 $0C $92 $91 $80 $80 $85 $03 $8F $91
	.db $06 $8F $18 $88 $8D $94 $8F $88 $8D $97 $92 $03 $80 $06 $86 $1B
	.db $80 $0C $85 $18 $91 $18 $92 $03 $80 $06 $86 $1B $80 $0C $91 $06
	.db $85 $80 $0C $85 $18 $83 $15 $88 $1B $8D $18 $8A $8F $88 $8F $8F
	.db $0C $91 $8A $0C $94 $8F $88 $8D $91 $8F $92 $8D $18 $92 $48 $88
	.db $30 $F2 $01 $96 $18 $80 $06 $A2 $12 $9B $15 $98 $0F $94 $03 $96
	.db $99 $9B $96 $18 $80 $06 $96 $12 $94 $0C $80 $06 $94 $03 $91 $0F
	.db $80 $0C $98 $09 $96 $0F $80 $06 $94 $96 $04 $99 $9B $98 $09 $99
	.db $0F $94 $18 $99 $18 $98 $0C $80 $03 $A0 $06 $9F $03 $9D $18 $18
	.db $A0 $03 $A9 $A7 $A0 $0F $80 $06 $99 $06 $9B $99 $9B $0C $80 $09
	.db $8C $0F $80 $03 $A2 $A5 $A7 $A0 $03 $A9 $A7 $A0 $0F $80 $06 $99
	.db $9B $99 $9B $06 $06 $80 $A4 $A0 $03 $9B $15 $92 $06 $80 $0F $92
	.db $09 $80 $12 $A2 $09 $9D $0F $04 $9A $14 $99 $0C $80 $03 $A7 $06
	.db $A9 $03 $A2 $12 $80 $06 $9D $12 $9E $18 $A2 $03 $A4 $9D $24 $80
	.db $06 $A2 $03 $A4 $9D $24 $80 $06 $A2 $03 $A4 $9D $12 $9D $1E $96
	.db $06 $9B $9D $A2 $A7 $A9 $AE $0C $8F $30 $F2 $02
	.dsb 27, $FF
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 7FF0 to 7FFF (16 bytes)
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $F5 $84 $03 $70 $00 $40
	
.BANK 2	
.ORG $0000	
	
; 1st entry of Pointer Table from 41D2 (indexed by _RAM_C321_)	
; Data from 8000 to 827F (640 bytes)	
_DATA_8000_:	
	.db $00 $00 $00 $00 $00 $1E $1E $00 $1E $01 $11 $00 $00 $00 $01 $00
	.db $00 $00 $00 $00 $07 $06 $06 $00 $05 $0C $0C $02 $05 $0C $0C $02
	.db $1E $3F $3F $00 $71 $7E $7F $00 $4F $7E $7F $00 $7F $7E $7F $00
	.db $F1 $FE $FF $00 $81 $FE $FF $00 $8F $FE $FF $00 $FC $FF $FF $00
	.db $00 $3F $3F $00 $20 $40 $60 $00 $03 $41 $43 $00 $41 $80 $C7 $00
	.db $00 $80 $87 $00 $81 $78 $F7 $00 $FF $FD $13 $00 $C0 $FF $00 $00
	.db $1F $7F $80 $00 $78 $7F $8F $00 $6F $7F $9F $00 $72 $7E $9E $01
	.db $6F $70 $9F $00 $7F $7F $80 $00 $7F $7F $80 $00 $00 $FF $FF $00
	.db $00 $FF $FF $00 $18 $18 $00 $00 $3C $24 $00 $00 $80 $80 $80 $01
	.db $81 $01 $81 $00 $03 $7E $BF $00 $FF $FC $23 $00 $18 $FF $00 $00
	.db $C3 $FF $00 $00 $00 $FF $FF $00 $2F $23 $23 $D0 $D9 $C1 $C1 $26
	.db $FF $00 $FF $00 $FF $FF $00 $00 $FF $FF $00 $00 $00 $FF $FF $00
	.db $00 $FC $FC $00 $04 $02 $06 $00 $40 $02 $02 $80 $A2 $81 $83 $40
	.db $40 $41 $41 $A0 $A1 $8E $8F $50 $DF $5F $D0 $20 $03 $FF $00 $00
	.db $F8 $FE $01 $00 $1E $FE $F1 $00 $F6 $FE $F9 $00 $4E $7E $79 $80
	.db $F6 $0E $F9 $00 $FE $FE $01 $00 $FE $FE $01 $00 $0B $F8 $F8 $04
	.db $00 $00 $00 $00 $00 $78 $78 $00 $78 $80 $88 $00 $00 $00 $80 $00
	.db $00 $00 $00 $00 $40 $C0 $C0 $20 $30 $B0 $B0 $40 $80 $B0 $B0 $40
	.db $9C $9C $9C $60 $FE $42 $C2 $00 $DE $40 $C0 $20 $C6 $40 $C0 $38
	.db $D8 $58 $D8 $27 $FE $7E $FE $01 $8F $7F $FF $00 $71 $7F $7F $80
	.db $FF $FF $FF $00 $C0 $FF $FF $00 $FF $FF $7F $00 $FF $FF $00 $00
	.db $E1 $FE $1E $00 $7E $61 $9E $00 $80 $00 $FF $00 $00 $FF $FF $00
	.db $7F $FF $FF $00 $80 $7F $FF $00 $7F $00 $FF $00 $80 $80 $7F $00
	.db $7F $7F
	.dsb 14, $00
	.db $D9 $D8 $D8 $26 $00 $FF $FF $00 $FF $FF $FF $00 $FF $FF $00 $00
	.db $FF $1F $00 $00 $1F $FF $00 $00 $00 $00 $FF $00 $01 $FF $FF $00
	.db $FF $FE $FF $00 $78 $FE $87 $00 $FF $57 $80 $00 $00 $00 $FF $00
	.db $FF $FF
	.dsb 14, $00
	.db $B7 $37 $37 $48 $00 $FF $FF $00 $FF $FF $FF $00 $FF $FF $00 $00
	.db $FF $E7 $00 $00 $E7 $FF $00 $00 $00 $00 $FF $00 $9E $FF $FF $00
	.db $FF $00 $00 $00 $FF $00 $81 $00 $FF $FF $00 $00 $00 $00 $FF $00
	.db $FF $FF
	.dsb 14, $00
	.db $67 $60 $60 $98 $00 $FF $FF $00 $FF $FF $FF $00 $FF $FF $00 $00
	.db $FF $F8 $00 $00 $F8 $FF $00 $00 $00 $00 $FF $00 $68 $FF $FF $00
	.db $FF $7F $FF $00 $1E $7F $E1 $00 $FF $EA $01 $00 $00 $00 $FF $00
	.db $FF $FF
	.dsb 14, $00
	.db $8F $0F $0F $70 $03 $FF $FF $00 $FF $FF $FE $00 $FF $FF $00 $00
	.db $87 $7F $78 $00 $7E $86 $79 $00 $01 $00 $FF $00 $00 $FF $FF $00
	.db $FE $FF $FF $00 $01 $FE $FF $00 $FE $00 $FF $00 $01 $01 $FE $00
	.db $FE $FE
	.dsb 14, $00
	
; Data from 8280 to B67F (13312 bytes)	
_DATA_8280_:	
	.incbin "data/File00_08280_0B67F.dat"
	
; Pointer Table from B680 to B6B7 (28 entries, indexed by _RAM_C30A_)	
_DATA_B680_:	
	.dw _DATA_7D80_ _DATA_7D80_ _DATA_7D80_ _DATA_7B81_ _DATA_7B81_ _DATA_7B81_ _DATA_7882_ _DATA_7882_
	.dw _DATA_7882_ _DATA_7683_ _DATA_7683_ _DATA_7683_ _DATA_7484_ _DATA_7484_ _DATA_7484_ _DATA_7185_
	.dw _DATA_7185_ _DATA_7185_ _DATA_6F86_ _DATA_6F86_ _DATA_6D87_ _DATA_6A88_ _DATA_6A88_ _DATA_6889_
	.dw _DATA_658A_ _DATA_638B_ _DATA_618C_ _DATA_5E8D_
	
	; Data from B6B8 to BEBF (2056 bytes)
	.incbin "data/File01_0B6B8_0BEBF.dat"
	
; Data from BEC0 to BFFF (320 bytes)	
_DATA_BEC0_:	
	.db $00 $20 $00 $00 $00 $00 $03 $01 $01 $01 $01 $01 $01 $00 $00 $23
	.db $25 $18
	.dsb 15, $00
	.db $18 $00 $00 $00 $00 $02 $09 $01 $01 $01 $01 $01 $00 $00 $1C $25
	.db $1F
	.dsb 15, $00
	.db $16 $00 $00 $00 $00 $02 $07 $01 $01 $01 $01 $01 $00 $00 $12 $25
	.db $10
	.dsb 15, $00
	.db $14 $00 $00 $00 $00 $02 $05 $01 $01 $01 $01 $01 $00 $00 $17 $25
	.db $15
	.dsb 15, $00
	.db $12 $00 $00 $00 $00 $02 $03 $01 $01 $01 $01 $01 $00 $00 $15 $25
	.db $1D
	.dsb 15, $00
	.db $10 $00 $00 $00 $00 $02 $01 $01 $01 $01 $01 $01 $00 $00 $1E $25
	.db $1F
	.dsb 15, $00
	.db $08 $00 $00 $00 $00 $00 $09 $01 $01 $01 $01 $01 $00 $00 $17 $25
	.db $21
	.dsb 17, $00
	.db $02 $00 $00 $00 $04 $00 $00 $00 $06 $00 $00 $00 $08 $00 $00 $00
	.db $10 $00 $00 $00 $12 $00 $00 $00 $16 $00 $00 $00 $22 $00 $00 $00
	.db $30 $00 $00 $00 $40 $00 $00 $00 $52 $00 $00 $00 $66 $00 $00 $00
	.db $82 $00 $00 $01 $00 $00 $00 $01 $20 $00 $00 $01 $42 $00 $00 $01
	.db $66 $00 $00 $01 $92 $00 $00 $02 $20 $00 $00 $02 $50 $00 $00 $20
	.db $00 $00 $01 $00 $00 $FF $FF $FF $FF $FF $FF $FF $FF
	
.BANK 3	
.ORG $0000	
	
; Data from C000 to C984 (2437 bytes)	
_DATA_C000_:	
	.incbin "data/File02_0C000_0C984.dat"
	
; 2nd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from C985 to C9B1 (45 bytes)	
_DATA_C985_:	
	.db $71 $00 $84 $A8 $00 $86 $A8 $00 $04 $DF $00 $06 $8F $01 $08 $EE
	.db $01 $0A $FE $02 $08 $5C $03 $0A $5B $04 $0C $2B $05 $0E $83 $05
	.db $10 $58 $06 $A2 $B9 $06 $A4 $F9 $06 $A6 $F3 $07 $FF
	
; 6th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from C9B2 to C9ED (60 bytes)	
_DATA_C9B2_:	
	.db $54 $00 $80 $B2 $00 $82 $15 $01 $04 $85 $01 $06 $D8 $01 $8C $37
	.db $02 $8E $82 $02 $90 $09 $03 $00 $65 $03 $02 $E6 $03 $88 $40 $04
	.db $8A $B6 $04 $9A $3D $05 $9C $9F $05 $9E $E4 $05 $A0 $5F $06 $84
	.db $F3 $06 $86 $42 $07 $88 $6E $07 $8A $E9 $07 $FF
	
; 10th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from C9EE to CA4A (93 bytes)	
_DATA_C9EE_:	
	.db $EE $00 $22 $4B $01 $24 $99 $01 $26 $91 $01 $04 $0B $02 $06 $0D
	.db $02 $88 $2F $02 $8A $33 $02 $00 $93 $02 $02 $93 $02 $88 $B5 $02
	.db $8A $B9 $02 $08 $F0 $02 $0A $F4 $02 $00 $46 $03 $02 $46 $03 $88
	.db $68 $03 $8A $6C $03 $08 $DD $03 $0A $9D $04 $22 $07 $05 $24 $29
	.db $05 $26 $23 $05 $00 $65 $05 $02 $63 $05 $22 $94 $05 $24 $D8 $05
	.db $26 $27 $06 $A2 $8C $06 $A4 $3E $07 $A6 $F3 $07 $FF
	
; 14th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CA4B to CA86 (60 bytes)	
_DATA_CA4B_:	
	.db $BE $00 $08 $03 $01 $0A $95 $01 $88 $16 $02 $8A $E5 $02 $08 $1A
	.db $03 $0A $1E $03 $92 $67 $03 $94 $31 $04 $96 $4C $04 $98 $50 $04
	.db $08 $81 $04 $0A $83 $04 $84 $05 $05 $86 $C8 $05 $8C $81 $06 $8E
	.db $CF $06 $90 $CD $06 $04 $38 $07 $06 $EB $07 $FF
	
; 18th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CA87 to CAAD (39 bytes)	
_DATA_CA87_:	
	.db $96 $00 $8C $39 $01 $8E $89 $01 $90 $8F $02 $88 $3A $03 $8A $42
	.db $04 $08 $96 $04 $0A $98 $04 $84 $96 $05 $86 $D3 $05 $A2 $A0 $06
	.db $A4 $48 $07 $A6 $F3 $07 $FF
	
; 22nd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CAAE to CAD7 (42 bytes)	
_DATA_CAAE_:	
	.db $96 $00 $04 $9F $01 $06 $A1 $01 $88 $3C $02 $8A $40 $02 $80 $F6
	.db $02 $82 $CE $03 $88 $50 $04 $8A $2A $05 $08 $C6 $05 $0A $55 $06
	.db $A2 $E0 $06 $A4 $75 $07 $A6 $F3 $07 $FF
	
; 26th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CAD8 to CB16 (63 bytes)	
_DATA_CAD8_:	
	.db $F5 $00 $80 $66 $01 $82 $F8 $01 $08 $A7 $02 $0A $A9 $02 $84 $EE
	.db $02 $86 $EE $02 $0C $53 $03 $0E $84 $03 $10 $82 $03 $8C $FD $03
	.db $8E $2D $04 $90 $2D $04 $80 $93 $04 $82 $93 $04 $08 $BB $04 $0A
	.db $BD $04 $04 $C8 $05 $06 $99 $06 $08 $09 $07 $0A $E9 $07 $FF
	
; 30th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CB17 to CB4C (54 bytes)	
_DATA_CB17_:	
	.db $AB $00 $08 $D5 $00 $0A $D9 $00 $00 $51 $01 $02 $E6 $01 $92 $3E
	.db $02 $94 $2A $03 $96 $7B $03 $98 $7D $03 $04 $F8 $03 $06 $D5 $04
	.db $88 $6D $05 $8A $29 $06 $A2 $60 $06 $A4 $86 $06 $A6 $80 $06 $80
	.db $57 $07 $82 $ED $07 $FF
	
; 34th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CB4D to CB8E (66 bytes)	
_DATA_CB4D_:	
	.db $BF $00 $A2 $7B $01 $A4 $3B $02 $A6 $35 $02 $88 $6B $02 $8A $6D
	.db $02 $04 $AA $02 $06 $AC $02 $08 $E3 $02 $0A $55 $03 $00 $F5 $03
	.db $02 $F5 $03 $88 $1E $04 $8A $22 $04 $12 $82 $04 $14 $CD $05 $16
	.db $51 $06 $18 $55 $06 $80 $0D $07 $82 $0D $07 $08 $21 $07 $0A $E9
	.db $07 $FF
	
; 38th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CB8F to CBD3 (69 bytes)	
_DATA_CB8F_:	
	.db $81 $00 $00 $FA $00 $02 $FA $00 $88 $16 $01 $8A $18 $01 $84 $BD
	.db $01 $86 $BF $01 $08 $E2 $01 $0A $E6 $01 $88 $6C $02 $8A $1D $03
	.db $8C $A7 $03 $8E $D9 $03 $90 $70 $04 $08 $CB $04 $0A $48 $05 $12
	.db $92 $05 $14 $07 $06 $16 $60 $06 $18 $E0 $06 $22 $32 $07 $24 $88
	.db $07 $26 $F3 $07 $FF
	
; 42nd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CBD4 to CC06 (51 bytes)	
_DATA_CBD4_:	
	.db $CF $00 $84 $45 $01 $86 $45 $01 $1A $86 $01 $1C $14 $02 $1E $2F
	.db $02 $20 $2D $02 $A2 $63 $02 $A4 $93 $02 $A6 $56 $03 $84 $69 $04
	.db $86 $35 $05 $A2 $6B $05 $A4 $13 $06 $A6 $A9 $06 $88 $33 $07 $8A
	.db $E9 $07 $FF
	
; 46th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CC07 to CC33 (45 bytes)	
_DATA_CC07_:	
	.db $C8 $00 $08 $15 $01 $0A $A4 $01 $A2 $DE $01 $A4 $86 $02 $A6 $58
	.db $03 $08 $C4 $03 $0A $A4 $04 $88 $D2 $04 $8A $D4 $04 $0C $AC $05
	.db $0E $E8 $05 $10 $BF $06 $88 $08 $07 $8A $E9 $07 $FF
	
; 50th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CC34 to CC72 (63 bytes)	
_DATA_CC34_:	
	.db $E5 $00 $08 $2C $01 $0A $C8 $01 $88 $F5 $01 $8A $34 $02 $08 $90
	.db $02 $0A $67 $03 $00 $9D $03 $02 $9D $03 $08 $C2 $03 $0A $C6 $03
	.db $00 $1B $04 $02 $56 $04 $A2 $97 $04 $A4 $28 $05 $A6 $C8 $05 $08
	.db $05 $06 $0A $8B $06 $22 $FC $06 $24 $46 $07 $26 $F3 $07 $FF
	
; 54th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CC73 to CC9C (42 bytes)	
_DATA_CC73_:	
	.db $BF $00 $8C $B2 $02 $8E $36 $03 $90 $36 $03 $00 $ED $03 $02 $EB
	.db $03 $84 $A9 $04 $86 $7A $05 $1A $8F $05 $1C $CA $05 $1E $14 $06
	.db $20 $14 $06 $80 $FF $06 $82 $ED $07 $FF
	
; 58th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CC9D to CC9E (2 bytes)	
_DATA_CC9D_:	
	.db $10 $00
	
	; Pointer Table from CC9F to CCA0 (1 entries, indexed by unknown)
	.dw _DATA_14A08_
	
	; Data from CCA1 to CCAB (11 bytes)
	.db $00 $0A $F7 $00 $88 $54 $01 $8A $E9 $07 $FF
	
; Data from CCAC to CCF7 (76 bytes)	
_DATA_CCAC_:	
	.db $A1 $00 $02 $79 $15 $01 $00 $00 $67 $01 $01 $73 $D2 $01 $00 $00
	.db $4B $02 $02 $68 $AA $02 $00 $00 $1B $03 $02 $3F $71 $03 $00 $00
	.db $E6 $03 $01 $3C $26 $04 $00 $00 $64 $04 $02 $3D $DB $04 $00 $00
	.db $50 $05 $02 $40 $B7 $05 $00 $00 $28 $06 $02 $44 $65 $06 $01 $38
	.db $89 $06 $02 $3A $D2 $06 $00 $00 $00 $08 $FF $00
	
; 3rd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CCF8 to CD2F (56 bytes)	
_DATA_CCF8_:	
	.db $85 $00 $01 $60 $BC $00 $02 $59 $F3 $00 $00 $00 $A1 $01 $02 $3F
	.db $04 $02 $00 $00 $10 $03 $02 $3F $72 $03 $00 $00 $6F $04 $02 $8D
	.db $3B $05 $02 $34 $95 $05 $00 $00 $6C $06 $01 $4F $CB $06 $02 $30
	.db $05 $07 $00 $00 $00 $08 $FF $00
	
; 7th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CD30 to CD7F (80 bytes)	
_DATA_CD30_:	
	.db $66 $00 $01 $67 $C4 $00 $00 $00 $29 $01 $02 $5B $99 $01 $00 $00
	.db $EC $01 $01 $5B $47 $02 $01 $3C $94 $02 $00 $00 $1B $03 $02 $66
	.db $77 $03 $00 $00 $F8 $03 $01 $45 $56 $04 $00 $00 $CA $04 $01 $50
	.db $4F $05 $02 $3B $AD $05 $01 $3D $F6 $05 $00 $00 $73 $06 $01 $51
	.db $07 $07 $00 $00 $54 $07 $01 $47 $84 $07 $00 $00 $00 $08 $FF $00
	
; 11th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CD80 to CDD3 (84 bytes)	
_DATA_CD80_:	
	.db $02 $01 $02 $3F $5D $01 $01 $42 $A5 $01 $02 $51 $1F $02 $01 $38
	.db $45 $02 $02 $8F $A5 $02 $01 $2A $CB $02 $02 $3F $06 $03 $02 $A4
	.db $58 $03 $01 $3E $7E $03 $02 $3C $F3 $03 $00 $00 $B1 $04 $02 $3F
	.db $19 $05 $01 $2B $35 $05 $02 $76 $77 $05 $02 $34 $A6 $05 $01 $3A
	.db $E4 $05 $00 $00 $3B $06 $01 $36 $9E $06 $02 $36 $4A $07 $00 $00
	.db $00 $08 $FF $00
	
; 15th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CDD4 to CE13 (64 bytes)	
_DATA_CDD4_:	
	.db $D0 $00 $02 $47 $19 $01 $00 $00 $A7 $01 $01 $2F $2C $02 $00 $00
	.db $F7 $02 $02 $48 $30 $03 $01 $2E $79 $03 $01 $C0 $43 $04 $01 $32
	.db $62 $04 $02 $2F $97 $04 $01 $53 $19 $05 $00 $00 $DC $05 $01 $9B
	.db $91 $06 $01 $2E $E1 $06 $02 $50 $4C $07 $00 $00 $00 $08 $FF $00
	
; 19th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CE14 to CE43 (48 bytes)	
_DATA_CE14_:	
	.db $AA $00 $01 $9A $49 $01 $01 $33 $9B $01 $00 $00 $A1 $02 $01 $44
	.db $50 $03 $00 $00 $54 $04 $02 $3C $AC $04 $01 $61 $AA $05 $00 $00
	.db $E7 $05 $01 $40 $B2 $06 $02 $33 $54 $07 $00 $00 $00 $08 $FF $00
	
; 23rd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CE44 to CE73 (48 bytes)	
_DATA_CE44_:	
	.db $AA $00 $02 $54 $B3 $01 $01 $32 $52 $02 $01 $99 $08 $03 $00 $00
	.db $E0 $03 $01 $39 $66 $04 $00 $00 $3C $05 $02 $31 $DC $05 $00 $00
	.db $69 $06 $01 $37 $F2 $06 $02 $32 $81 $07 $00 $00 $00 $08 $FF $00
	
; 27th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CE74 to CEAF (60 bytes)	
_DATA_CE74_:	
	.db $07 $01 $01 $77 $78 $01 $00 $00 $0A $02 $02 $37 $BD $02 $01 $52
	.db $02 $03 $02 $7F $63 $03 $02 $35 $96 $03 $01 $75 $0D $04 $01 $37
	.db $3F $04 $01 $BC $A5 $04 $02 $39 $D1 $04 $02 $52 $DC $05 $00 $00
	.db $AB $06 $02 $49 $1F $07 $00 $00 $00 $08 $FF $00
	
; 31st entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CEB0 to CEEB (60 bytes)	
_DATA_CEB0_:	
	.db $BD $00 $02 $30 $EB $00 $02 $C4 $63 $01 $00 $00 $F8 $01 $01 $38
	.db $50 $02 $01 $95 $3C $03 $01 $36 $91 $03 $02 $60 $0C $04 $00 $00
	.db $E7 $04 $01 $40 $83 $05 $00 $00 $3D $06 $01 $34 $72 $06 $02 $3B
	.db $92 $06 $01 $92 $69 $07 $00 $00 $00 $08 $FF $00
	
; 35th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CEEC to CF27 (60 bytes)	
_DATA_CEEC_:	
	.db $D3 $00 $01 $3B $8D $01 $02 $3B $47 $02 $01 $3E $81 $02 $02 $56
	.db $BE $02 $02 $33 $F9 $02 $00 $00 $67 $03 $02 $81 $07 $04 $01 $2D
	.db $34 $04 $02 $45 $94 $04 $02 $FF $DF $05 $02 $2B $67 $06 $01 $A8
	.db $1F $07 $02 $37 $37 $07 $00 $00 $00 $08 $FF $00
	
; 39th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CF28 to CF73 (76 bytes)	
_DATA_CF28_:	
	.db $93 $00 $02 $7B $0C $01 $01 $2B $2C $01 $01 $4D $D1 $01 $02 $27
	.db $F8 $01 $01 $44 $82 $02 $00 $00 $31 $03 $01 $5A $B7 $03 $01 $29
	.db $EB $03 $00 $00 $82 $04 $02 $43 $E1 $04 $00 $00 $5A $05 $02 $35
	.db $A4 $05 $02 $74 $19 $06 $02 $31 $76 $06 $00 $00 $F4 $06 $02 $33
	.db $44 $07 $01 $32 $94 $07 $00 $00 $00 $08 $FF $00
	
; 43rd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CF74 to CFAF (60 bytes)	
_DATA_CF74_:	
	.db $E3 $00 $01 $57 $59 $01 $02 $35 $98 $01 $01 $3C $22 $02 $02 $30
	.db $41 $02 $01 $37 $75 $02 $02 $2E $9F $02 $00 $00 $6A $03 $01 $54
	.db $7D $04 $00 $00 $49 $05 $01 $30 $7D $05 $02 $34 $1F $06 $00 $00
	.db $BB $06 $01 $2D $49 $07 $00 $00 $00 $08 $FF $00
	
; 47th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CFB0 to CFE7 (56 bytes)	
_DATA_CFB0_:	
	.db $DA $00 $02 $3D $2B $01 $00 $00 $B8 $01 $01 $46 $F0 $01 $02 $37
	.db $92 $02 $00 $00 $6A $03 $02 $41 $DA $03 $00 $00 $B6 $04 $01 $4B
	.db $E8 $04 $02 $73 $BC $05 $02 $33 $FA $05 $00 $00 $D1 $06 $01 $3E
	.db $1E $07 $00 $00 $00 $08 $FF $00
	
; 51st entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from CFE8 to D033 (76 bytes)	
_DATA_CFE8_:	
	.db $F7 $00 $02 $3C $42 $01 $00 $00 $DA $01 $01 $30 $0B $02 $00 $00
	.db $46 $02 $02 $3E $A6 $02 $00 $00 $79 $03 $02 $75 $AF $03 $02 $32
	.db $D8 $03 $02 $82 $2D $04 $00 $00 $6A $04 $01 $31 $A9 $04 $02 $39
	.db $34 $05 $00 $00 $DA $05 $02 $33 $1B $06 $00 $00 $9F $06 $02 $4F
	.db $0E $07 $01 $38 $52 $07 $00 $00 $00 $08 $FF $00
	
; 55th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D034 to D05F (44 bytes)	
_DATA_D034_:	
	.db $D3 $00 $01 $FF $C2 $02 $01 $36 $48 $03 $02 $80 $FF $03 $01 $58
	.db $BD $04 $00 $00 $8E $05 $02 $3E $A1 $05 $01 $34 $D8 $05 $02 $44
	.db $26 $06 $01 $75 $11 $07 $00 $00 $00 $08 $FF $00
	
; 59th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D060 to D073 (20 bytes)	
_DATA_D060_:	
	.db $3F $00 $02 $3E $A0 $00 $00 $00 $09 $01 $01 $3D $6A $01 $00 $00
	.db $00 $08 $FF $00
	
; 1st entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D074 to D0A1 (46 bytes)	
_DATA_D074_:	
	.db $0A $00 $00 $00 $64 $00 $0F $03 $7C $01 $0C $03 $D6 $01 $00 $01
	.db $F4 $01 $01 $05 $DC $05 $02 $05 $0E $06 $00 $00 $40 $06 $0C $05
	.db $08 $07 $0C $01 $3A $07 $0C $01 $58 $07 $00 $11 $FF $FF
	
; 1st entry of Pointer Table from 5234 (indexed by _RAM_C1F6_)	
; Data from D0A2 to D593 (1266 bytes)	
_DATA_D0A2_:	
	.incbin "data/File03_0D0A2_0D593.dat"
	
; 5th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D594 to D5A9 (22 bytes)	
_DATA_D594_:	
	.db $00 $00 $00 $00 $64 $00 $12 $07 $96 $00 $12 $05 $2C $01 $00 $13
	.db $58 $07 $00 $11 $FF $FF
	
; 4th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D5AA to D987 (990 bytes)	
_DATA_D5AA_:	
	.db $32 $00 $0A $6A $46 $00 $09 $6A $78 $00 $0A $6A $82 $00 $0A $6A
	.db $A0 $00 $09 $6A $BE $00 $09 $6A $DC $00 $0A $6A $04 $01 $09 $6A
	.db $2C $01 $09 $6A $30 $01 $09 $6A $34 $01 $09 $6A $38 $01 $09 $6A
	.db $3C $01 $09 $6A $40 $01 $09 $6A $44 $01 $09 $6A $48 $01 $09 $6A
	.db $4C $01 $09 $6A $50 $01 $09 $6A $54 $01 $09 $6A $58 $01 $09 $6A
	.db $5C $01 $09 $6A $60 $01 $09 $6A $64 $01 $09 $6A $68 $01 $09 $6A
	.db $7C $01 $0A $6A $80 $01 $0A $6A $84 $01 $09 $6A $88 $01 $09 $6A
	.db $8C $01 $09 $6A $90 $01 $09 $6A $94 $01 $09 $6A $98 $01 $0A $6A
	.db $9C $01 $0A $6A $A0 $01 $0A $6A $A4 $01 $0A $6A $A8 $01 $0A $6A
	.db $AC $01 $0A $6A $B0 $01 $0A $6A $B4 $01 $0A $6A $B8 $01 $0A $6A
	.db $BC $01 $0A $6A $C0 $01 $0A $6A $C4 $01 $0A $6A $C8 $01 $0A $6A
	.db $CC $01 $0A $6A $D0 $01 $0A $6A $D4 $01 $0A $6A $D8 $01 $0A $6A
	.db $DC $01 $0A $6A $E0 $01 $0A $6A $E4 $01 $0A $6A $E8 $01 $0A $6A
	.db $EC $01 $0A $6A $F0 $01 $0A $6A $F4 $01 $0A $6A $F8 $01 $0A $6A
	.db $FC $01 $0A $6A $FE $01 $1C $00 $1C $02 $1D $00 $21 $02 $1D $00
	.db $26 $02 $1D $00 $2B $02 $1D $00 $30 $02 $1D $00 $35 $02 $1D $00
	.db $3A $02 $1D $00 $3F $02 $1D $00 $44 $02 $1D $00 $49 $02 $1D $00
	.db $4E $02 $1D $00 $53 $02 $1D $00 $58 $02 $1D $00 $5D $02 $1D $00
	.db $62 $02 $1D $00 $67 $02 $1D $00 $6C $02 $1D $00 $71 $02 $1D $00
	.db $76 $02 $1D $00 $7B $02 $1D $00 $80 $02 $1D $00 $85 $02 $1D $00
	.db $8A $02 $1D $00 $8F $02 $1D $00 $94 $02 $1D $00 $99 $02 $1D $00
	.db $9E $02 $1D $00 $A3 $02 $1D $00 $A8 $02 $1D $00 $AD $02 $1D $00
	.db $B2 $02 $1D $00 $B7 $02 $1D $00 $BC $02 $1D $00 $C1 $02 $1D $00
	.db $C6 $02 $1D $00 $CB $02 $1D $00 $D0 $02 $1D $00 $D5 $02 $1D $00
	.db $DA $02 $1D $00 $DF $02 $1D $00 $EE $02 $1C $00 $0C $03 $09 $6A
	.db $1B $03 $0A $6A $2A $03 $09 $6A $39 $03 $0A $6A $48 $03 $09 $6A
	.db $57 $03 $0A $6A $66 $03 $09 $6A $70 $03 $1C $00 $8E $03 $1D $00
	.db $93 $03 $1D $00 $98 $03 $1D $00 $9D $03 $1D $00 $A2 $03 $1D $00
	.db $A7 $03 $1D $00 $AC $03 $1D $00 $B1 $03 $1D $00 $B6 $03 $1D $00
	.db $BB $03 $1D $00 $C0 $03 $1D $00 $C5 $03 $1D $00 $CA $03 $1D $00
	.db $CF $03 $1D $00 $D4 $03 $1D $00 $D9 $03 $1D $00 $DE $03 $1D $00
	.db $E3 $03 $1D $00 $E8 $03 $1D $00 $ED $03 $1D $00 $F2 $03 $1D $00
	.db $F7 $03 $1D $00 $FC $03 $1D $00 $01 $04 $1D $00 $06 $04 $1D $00
	.db $0B $04 $1D $00 $10 $04 $1D $00 $15 $04 $1D $00 $1A $04 $1D $00
	.db $1F $04 $1D $00 $24 $04 $1D $00 $29 $04 $1D $00 $2E $04 $1D $00
	.db $33 $04 $1D $00 $38 $04 $1D $00 $3D $04 $1D $00 $4C $04 $1C $00
	.db $60 $04 $09 $6A $6A $04 $0A $6A $74 $04 $0A $6A $7E $04 $09 $6A
	.db $88 $04 $0A $6A $97 $04 $0A $6A $A6 $04 $09 $6A $B5 $04 $09 $6A
	.db $C4 $04 $09 $6A $D3 $04 $0A $6A $E2 $04 $09 $6A $F1 $04 $0A $6A
	.db $09 $05 $08 $2E $13 $05 $08 $2E $1D $05 $08 $2E $27 $05 $08 $2E
	.db $32 $05 $09 $6A $36 $05 $09 $6A $3A $05 $09 $6A $3E $05 $09 $6A
	.db $42 $05 $09 $6A $46 $05 $09 $6A $4A $05 $09 $6A $4E $05 $09 $6A
	.db $52 $05 $09 $6A $56 $05 $09 $6A $5A $05 $09 $6A $5E $05 $09 $6A
	.db $62 $05 $09 $6A $66 $05 $09 $6A $6A $05 $09 $6A $6E $05 $09 $6A
	.db $72 $05 $09 $6A $76 $05 $09 $6A $78 $05 $09 $6A $7D $05 $0A $6A
	.db $82 $05 $09 $6A $87 $05 $0A $6A $8C $05 $09 $6A $91 $05 $0A $6A
	.db $96 $05 $1C $00 $B4 $05 $1D $00 $B9 $05 $1D $00 $BE $05 $1D $00
	.db $C3 $05 $1D $00 $C8 $05 $1D $00 $CD $05 $1D $00 $D2 $05 $1D $00
	.db $D7 $05 $1D $00 $DC $05 $1D $00 $E1 $05 $1D $00 $E6 $05 $1D $00
	.db $EB $05 $1D $00 $F0 $05 $1D $00 $F5 $05 $1D $00 $FA $05 $1D $00
	.db $FF $05 $1D $00 $04 $06 $1D $00 $09 $06 $1D $00 $0E $06 $1D $00
	.db $13 $06 $1D $00 $18 $06 $1D $00 $1D $06 $1D $00 $22 $06 $1D $00
	.db $40 $06 $1C $00 $72 $06 $0A $6A $7C $06 $09 $6A $86 $06 $0A $6A
	.db $90 $06 $09 $6A $99 $06 $08 $2E $9E $06 $09 $6A $A3 $06 $08 $2E
	.db $A8 $06 $09 $6A $AD $06 $08 $2E $B2 $06 $09 $6A $B7 $06 $08 $2E
	.db $B8 $06 $09 $6A $C2 $06 $09 $6A $CC $06 $09 $6A $D6 $06 $09 $6A
	.db $E0 $06 $09 $6A $EA $06 $09 $6A $EE $06 $0A $6A $F2 $06 $09 $6A
	.db $F6 $06 $0A $6A $FA $06 $09 $6A $FE $06 $0A $6A $02 $07 $09 $6A
	.db $06 $07 $0A $6A $0A $07 $09 $6A $0E $07 $0A $6A $12 $07 $09 $6A
	.db $16 $07 $0A $6A $1A $07 $09 $6A $1E $07 $0A $6A $22 $07 $09 $6A
	.db $26 $07 $0A $6A $2A $07 $0A $6A $2E $07 $0A $6A $32 $07 $0A $6A
	.db $36 $07 $0A $6A $3A $07 $09 $6A $80 $07 $0A $94 $FF $FF
	
; 9th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D988 to D9B9 (50 bytes)	
_DATA_D988_:	
	.db $00 $00 $00 $00 $82 $00 $03 $01 $BC $02 $03 $05 $1B $03 $0C $03
	.db $B6 $03 $12 $03 $60 $04 $00 $12 $CA $04 $03 $05 $FC $04 $18 $05
	.db $0E $06 $03 $05 $5E $06 $03 $05 $58 $07 $00 $11 $5D $07 $03 $03
	.db $FF $FF
	
; 8th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from D9BA to DAAF (246 bytes)	
_DATA_D9BA_:	
	.db $C8 $00 $09 $88 $D7 $00 $09 $88 $E6 $00 $09 $88 $F5 $00 $09 $88
	.db $04 $01 $09 $88 $13 $01 $09 $88 $BA $01 $07 $34 $C4 $01 $07 $34
	.db $CE $01 $07 $34 $D8 $01 $07 $34 $15 $02 $07 $34 $1F $02 $07 $34
	.db $29 $02 $07 $34 $33 $02 $07 $34 $44 $02 $09 $88 $58 $02 $09 $88
	.db $6C $02 $09 $88 $80 $02 $09 $88 $94 $02 $09 $88 $A8 $02 $09 $88
	.db $DA $02 $0A $88 $0C $03 $09 $88 $3E $03 $0A $88 $70 $03 $09 $88
	.db $A2 $03 $0A $88 $C6 $03 $07 $34 $D0 $03 $07 $34 $DA $03 $07 $34
	.db $E4 $03 $07 $34 $F2 $03 $09 $88 $06 $04 $09 $88 $10 $04 $09 $88
	.db $1F $04 $09 $88 $2E $04 $09 $88 $3D $04 $09 $88 $B0 $04 $0A $8E
	.db $C4 $04 $09 $8E $D8 $04 $0A $8E $EC $04 $09 $8E $00 $05 $0A $8E
	.db $14 $05 $0A $8E $46 $05 $0A $8E $55 $05 $0A $8E $64 $05 $0A $8E
	.db $73 $05 $0A $8E $82 $05 $0A $8E $91 $05 $0A $8E $A0 $05 $0A $8E
	.db $AF $05 $0A $8E $BE $05 $0A $8E $CD $05 $0A $8E $DC $05 $0A $8E
	.db $EB $05 $0A $8E $FA $05 $0A $8E $72 $06 $09 $8E $86 $06 $09 $8E
	.db $9A $06 $09 $8E $AE $06 $09 $8E $BD $06 $09 $8E $CC $06 $09 $8E
	.db $80 $07 $0A $94 $FF $FF
	
; 13th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DAB0 to DAE5 (54 bytes)	
_DATA_DAB0_:	
	.db $00 $00 $00 $00 $96 $00 $03 $05 $C8 $00 $03 $05 $C2 $01 $0C $07
	.db $30 $02 $0C $07 $DA $02 $0C $07 $8E $03 $0F $05 $06 $04 $0C $05
	.db $19 $05 $03 $03 $35 $05 $03 $07 $5E $06 $03 $03 $58 $07 $00 $11
	.db $6C $07 $0C $01 $FF $FF
	
; 12th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DAE6 to DB8B (166 bytes)	
_DATA_DAE6_:	
	.db $D0 $00 $08 $2E $DA $00 $08 $2E $E4 $00 $08 $2E $EE $00 $08 $2E
	.db $2B $01 $07 $34 $35 $01 $07 $34 $3F $01 $07 $34 $49 $01 $07 $34
	.db $73 $01 $08 $2E $7D $01 $08 $2E $87 $01 $08 $2E $91 $01 $08 $2E
	.db $ED $01 $07 $40 $F7 $01 $07 $40 $01 $02 $07 $40 $0B $02 $07 $40
	.db $73 $02 $07 $40 $7D $02 $07 $40 $87 $02 $07 $40 $91 $02 $07 $40
	.db $26 $03 $07 $40 $30 $03 $07 $40 $3A $03 $07 $40 $44 $03 $07 $40
	.db $E7 $04 $07 $40 $F1 $04 $07 $40 $FB $04 $07 $40 $05 $05 $07 $40
	.db $74 $05 $07 $34 $7E $05 $07 $34 $88 $05 $07 $34 $92 $05 $07 $34
	.db $09 $06 $07 $34 $13 $06 $07 $34 $1D $06 $07 $34 $27 $06 $07 $34
	.db $6C $06 $08 $2E $76 $06 $08 $2E $80 $06 $08 $2E $8A $06 $08 $2E
	.db $80 $07 $0A $94 $FF $FF
	
; 17th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DB8C to DB9D (18 bytes)	
_DATA_DB8C_:	
	.db $00 $00 $00 $01 $32 $00 $01 $05 $58 $07 $00 $11 $62 $07 $02 $03
	.db $FF $FF
	
; 16th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DB9E to DDAF (530 bytes)	
_DATA_DB9E_:	
	.db $9E $00 $08 $2E $A8 $00 $08 $2E $B2 $00 $08 $2E $BC $00 $08 $2E
	.db $C8 $00 $0A $76 $DC $00 $0A $76 $F0 $00 $0A $76 $04 $01 $0A $76
	.db $18 $01 $0A $76 $2C $01 $0A $76 $40 $01 $0A $76 $54 $01 $0A $76
	.db $75 $01 $07 $34 $7F $01 $07 $34 $89 $01 $07 $34 $93 $01 $07 $34
	.db $9A $01 $09 $76 $A4 $01 $09 $76 $AE $01 $09 $76 $B8 $01 $09 $76
	.db $C2 $01 $09 $76 $CC $01 $09 $76 $D6 $01 $09 $76 $E0 $01 $09 $76
	.db $EA $01 $09 $76 $F4 $01 $09 $76 $FE $01 $09 $76 $08 $02 $09 $76
	.db $12 $02 $09 $76 $1C $02 $09 $76 $26 $02 $09 $76 $30 $02 $09 $76
	.db $3A $02 $09 $76 $44 $02 $09 $76 $4E $02 $09 $76 $C5 $02 $08 $2E
	.db $CF $02 $08 $2E $D9 $02 $08 $2E $E3 $02 $08 $2E $EE $02 $0A $76
	.db $F1 $02 $0A $76 $F4 $02 $0A $76 $F7 $02 $0A $76 $FA $02 $0A $76
	.db $FE $02 $07 $34 $03 $03 $0A $76 $08 $03 $07 $34 $0D $03 $0A $76
	.db $12 $03 $07 $34 $17 $03 $0A $76 $1C $03 $07 $34 $21 $03 $0A $76
	.db $25 $03 $09 $76 $29 $03 $09 $76 $2D $03 $09 $76 $31 $03 $0A $76
	.db $35 $03 $09 $76 $39 $03 $09 $76 $3D $03 $09 $76 $41 $03 $09 $76
	.db $45 $03 $0A $76 $49 $03 $09 $76 $4D $03 $09 $76 $51 $03 $0A $76
	.db $55 $03 $09 $76 $59 $03 $09 $76 $5D $03 $0A $76 $61 $03 $0A $76
	.db $65 $03 $09 $76 $69 $03 $0A $76 $6D $03 $0A $76 $71 $03 $09 $76
	.db $7A $03 $09 $76 $84 $03 $0A $76 $8E $03 $09 $76 $98 $03 $0A $76
	.db $A2 $03 $09 $76 $AC $03 $0A $76 $B6 $03 $09 $76 $C0 $03 $0A $76
	.db $CA $03 $09 $76 $D4 $03 $0A $76 $DE $03 $09 $76 $E8 $03 $0A $76
	.db $F2 $03 $09 $76 $FC $03 $0A $76 $06 $04 $09 $76 $11 $04 $07 $34
	.db $1B $04 $07 $34 $25 $04 $07 $34 $2F $04 $07 $34 $30 $04 $08 $3A
	.db $3A $04 $08 $3A $44 $04 $08 $3A $4E $04 $08 $3A $65 $04 $0A $76
	.db $79 $04 $0A $76 $83 $04 $0A $76 $8D $04 $0A $76 $92 $04 $0A $76
	.db $97 $04 $09 $76 $9C $04 $0A $76 $A1 $04 $09 $76 $A6 $04 $0A $76
	.db $AB $04 $09 $76 $B0 $04 $0A $76 $B5 $04 $09 $76 $BA $04 $0A $76
	.db $BF $04 $09 $76 $C4 $04 $0A $76 $C9 $04 $09 $76 $AA $05 $07 $34
	.db $B4 $05 $07 $34 $BE $05 $07 $34 $C8 $05 $07 $34 $5F $06 $07 $34
	.db $69 $06 $07 $34 $73 $06 $07 $34 $7D $06 $07 $34 $86 $06 $09 $76
	.db $90 $06 $09 $76 $9A $06 $09 $76 $A4 $06 $09 $76 $AF $06 $08 $2E
	.db $B9 $06 $08 $2E $C3 $06 $08 $2E $CD $06 $08 $2E $F4 $06 $0A $76
	.db $08 $07 $0A $76 $1C $07 $0A $76 $30 $07 $0A $76 $80 $07 $0A $94
	.db $FF $FF
	
; 21st entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DDB0 to DDD9 (42 bytes)	
_DATA_DDB0_:	
	.db $00 $00 $00 $00 $78 $00 $03 $05 $9F $01 $13 $05 $84 $03 $14 $05
	.db $4C $04 $0D $05 $14 $05 $0E $05 $46 $05 $00 $01 $78 $05 $01 $05
	.db $58 $07 $00 $11 $6C $07 $02 $05 $FF $FF
	
; 20th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from DDDA to E277 (1182 bytes)	
_DATA_DDDA_:	
	.incbin "data/File04_0DDDA_0E277.dat"
	
; 25th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E278 to E29D (38 bytes)	
_DATA_E278_:	
	.db $00 $00 $00 $00 $64 $00 $03 $05 $62 $02 $03 $05 $20 $03 $03 $05
	.db $66 $04 $0D $05 $14 $05 $0E $05 $DC $05 $0C $05 $90 $06 $0F $05
	.db $58 $07 $00 $11 $FF $FF
	
; 24th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E29E to E49B (510 bytes)	
_DATA_E29E_:	
	.db $78 $00 $08 $2E $82 $00 $08 $2E $8C $00 $08 $2E $96 $00 $08 $2E
	.db $A0 $00 $09 $5E $AA $00 $09 $5E $B4 $00 $0A $5E $BE $00 $09 $5E
	.db $C8 $00 $0A $5E $D2 $00 $0A $5E $DC $00 $09 $5E $E6 $00 $09 $5E
	.db $F0 $00 $09 $5E $FA $00 $09 $5E $04 $01 $0A $5E $0E $01 $09 $5E
	.db $18 $01 $09 $5E $22 $01 $0A $5E $2C $01 $09 $5E $36 $01 $0A $5E
	.db $40 $01 $09 $5E $4A $01 $09 $5E $54 $01 $09 $5E $5E $01 $0A $5E
	.db $68 $01 $0A $5E $72 $01 $09 $5E $7C $01 $09 $5E $81 $01 $07 $34
	.db $8B $01 $07 $34 $95 $01 $07 $34 $9F $01 $07 $34 $A4 $01 $09 $5E
	.db $AE $01 $09 $5E $B8 $01 $09 $5E $C2 $01 $09 $5E $CC $01 $09 $5E
	.db $E0 $01 $09 $64 $F4 $01 $09 $5E $FE $01 $09 $5E $03 $02 $0A $5E
	.db $1C $02 $09 $5E $4E $02 $09 $64 $94 $02 $09 $64 $B2 $02 $09 $5E
	.db $C6 $02 $09 $5E $CB $02 $09 $64 $EE $02 $09 $5E $02 $03 $09 $5E
	.db $16 $03 $0A $5E $3E $03 $09 $64 $5C $03 $09 $5E $70 $03 $09 $5E
	.db $8E $03 $0A $64 $98 $03 $09 $5E $A2 $03 $0A $5E $AE $03 $07 $34
	.db $B8 $03 $07 $34 $C2 $03 $07 $34 $CC $03 $07 $34 $D4 $03 $09 $5E
	.db $E8 $03 $0A $5E $06 $04 $09 $5E $2E $04 $09 $5E $4C $04 $0A $5E
	.db $56 $04 $09 $5E $7E $04 $0A $5E $88 $04 $0A $5E $A6 $04 $09 $5E
	.db $CE $04 $0A $5E $0A $05 $08 $2E $14 $05 $08 $2E $1E $05 $08 $2E
	.db $28 $05 $08 $2E $3C $05 $09 $5E $50 $05 $0A $5E $5A $05 $09 $5E
	.db $78 $05 $0A $64 $96 $05 $09 $5E $9B $05 $0A $5E $A0 $05 $09 $5E
	.db $AA $05 $09 $5E $B4 $05 $09 $64 $BE $05 $0A $5E $C8 $05 $09 $5E
	.db $D2 $05 $09 $5E $DC $05 $0A $5E $E6 $05 $09 $64 $F0 $05 $09 $5E
	.db $FA $05 $09 $5E $04 $06 $0A $5E $0E $06 $09 $5E $18 $06 $0A $64
	.db $22 $06 $09 $5E $32 $06 $09 $5E $37 $06 $07 $34 $3C $06 $0A $5E
	.db $41 $06 $07 $34 $46 $06 $0A $5E $4B $06 $07 $34 $50 $06 $0A $5E
	.db $55 $06 $07 $34 $5E $06 $0A $64 $63 $06 $09 $64 $68 $06 $0A $5E
	.db $72 $06 $0A $64 $7C $06 $0A $64 $81 $06 $09 $64 $86 $06 $0A $64
	.db $90 $06 $0A $5E $9A $06 $0A $64 $A4 $06 $09 $64 $A9 $06 $0A $64
	.db $AE $06 $09 $64 $B8 $06 $09 $5E $C0 $06 $08 $2E $C5 $06 $09 $64
	.db $CA $06 $08 $2E $CF $06 $09 $64 $D4 $06 $08 $2E $DE $06 $08 $2E
	.db $E0 $06 $09 $64 $FE $06 $0A $64 $08 $07 $09 $64 $21 $07 $09 $64
	.db $26 $07 $0A $64 $3A $07 $09 $64 $80 $07 $0A $94 $FF $FF
	
; 29th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E49C to E4CD (50 bytes)	
_DATA_E49C_:	
	.db $00 $00 $00 $00 $BC $02 $0C $05 $02 $03 $03 $07 $84 $03 $06 $05
	.db $FC $03 $1C $05 $74 $04 $1D $05 $A6 $04 $1B $05 $46 $05 $03 $01
	.db $78 $05 $03 $01 $40 $06 $16 $05 $F4 $06 $17 $05 $58 $07 $00 $11
	.db $FF $FF
	
; 28th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E4CE to E8B3 (998 bytes)	
_DATA_E4CE_:	
	.db $32 $00 $09 $46 $37 $00 $0A $46 $46 $00 $09 $46 $4B $00 $0A $46
	.db $5A $00 $09 $46 $5F $00 $0A $46 $6E $00 $09 $46 $73 $00 $0A $46
	.db $82 $00 $09 $46 $87 $00 $0A $46 $96 $00 $09 $46 $9B $00 $0A $46
	.db $AA $00 $09 $46 $AF $00 $0A $46 $B4 $00 $09 $46 $B9 $00 $0A $46
	.db $BE $00 $09 $46 $C3 $00 $0A $46 $C8 $00 $09 $46 $CD $00 $0A $46
	.db $D2 $00 $09 $46 $D5 $00 $07 $34 $DA $00 $0A $46 $DF $00 $07 $34
	.db $E4 $00 $0A $46 $E9 $00 $07 $34 $EE $00 $0A $46 $F3 $00 $07 $34
	.db $FA $00 $09 $46 $04 $01 $09 $46 $0E $01 $09 $46 $18 $01 $09 $46
	.db $22 $01 $09 $46 $2C $01 $09 $46 $31 $01 $0A $46 $3B $01 $0A $46
	.db $45 $01 $0A $46 $4F $01 $0A $46 $54 $01 $09 $46 $5E $01 $09 $46
	.db $68 $01 $09 $46 $72 $01 $09 $46 $7C $01 $09 $46 $86 $01 $09 $46
	.db $90 $01 $09 $46 $95 $01 $0A $46 $9A $01 $09 $46 $9F $01 $0A $46
	.db $A4 $01 $09 $46 $A9 $01 $0A $46 $AE $01 $09 $46 $B3 $01 $0A $46
	.db $B8 $01 $09 $46 $BD $01 $0A $46 $D8 $01 $08 $2E $E2 $01 $08 $2E
	.db $EC $01 $08 $2E $F6 $01 $08 $2E $8B $02 $07 $34 $95 $02 $07 $34
	.db $9F $02 $07 $34 $A9 $02 $07 $34 $AD $02 $0A $46 $B2 $02 $09 $46
	.db $B7 $02 $0A $46 $BC $02 $09 $46 $C1 $02 $0A $46 $C6 $02 $09 $46
	.db $CB $02 $0A $46 $D0 $02 $08 $2E $D5 $02 $0A $46 $DA $02 $08 $2E
	.db $DF $02 $09 $46 $E4 $02 $08 $2E $E9 $02 $0A $46 $EE $02 $08 $2E
	.db $F3 $02 $0A $46 $F8 $02 $09 $46 $FD $02 $0A $46 $02 $03 $09 $46
	.db $07 $03 $0A $46 $0C $03 $09 $46 $11 $03 $0A $46 $16 $03 $09 $46
	.db $1B $03 $0A $46 $20 $03 $09 $46 $25 $03 $0A $46 $2A $03 $09 $46
	.db $31 $03 $08 $2E $3B $03 $08 $2E $45 $03 $08 $2E $4F $03 $08 $2E
	.db $52 $03 $0A $46 $5C $03 $0A $46 $64 $03 $08 $2E $6E $03 $08 $2E
	.db $78 $03 $08 $2E $82 $03 $08 $2E $C0 $03 $09 $46 $C5 $03 $0A $46
	.db $CA $03 $09 $46 $CF $03 $0A $46 $D4 $03 $09 $46 $D9 $03 $0A $46
	.db $DB $03 $07 $34 $E0 $03 $09 $46 $E5 $03 $07 $34 $EA $03 $0A $46
	.db $EF $03 $07 $34 $F4 $03 $09 $46 $F9 $03 $07 $34 $FC $03 $09 $46
	.db $01 $04 $0A $46 $06 $04 $09 $46 $0B $04 $0A $46 $10 $04 $09 $46
	.db $15 $04 $0A $46 $1A $04 $09 $46 $1F $04 $0A $46 $24 $04 $09 $46
	.db $29 $04 $0A $46 $2E $04 $09 $46 $33 $04 $0A $46 $38 $04 $09 $46
	.db $3D $04 $0A $46 $42 $04 $09 $46 $47 $04 $0A $46 $4C $04 $09 $46
	.db $51 $04 $0A $46 $56 $04 $09 $46 $5B $04 $0A $46 $60 $04 $09 $46
	.db $65 $04 $0A $46 $6A $04 $09 $46 $6F $04 $0A $46 $73 $04 $08 $2E
	.db $78 $04 $09 $46 $7D $04 $08 $2E $82 $04 $0A $46 $87 $04 $08 $2E
	.db $8C $04 $09 $46 $91 $04 $08 $2E $96 $04 $0A $46 $9C $04 $09 $46
	.db $A6 $04 $09 $46 $B0 $04 $09 $46 $BA $04 $0A $46 $C4 $04 $0A $46
	.db $CE $04 $0A $46 $D8 $04 $09 $46 $E2 $04 $09 $46 $EC $04 $09 $46
	.db $F6 $04 $0A $46 $00 $05 $0A $46 $0A $05 $0A $46 $14 $05 $09 $46
	.db $1E $05 $09 $46 $28 $05 $09 $46 $32 $05 $0A $46 $3C $05 $0A $46
	.db $46 $05 $09 $46 $4B $05 $0A $46 $50 $05 $09 $46 $55 $05 $0A $46
	.db $5A $05 $09 $46 $5F $05 $0A $46 $64 $05 $09 $46 $69 $05 $0A $46
	.db $6E $05 $09 $46 $73 $05 $0A $46 $78 $05 $09 $46 $7D $05 $0A $46
	.db $82 $05 $09 $46 $87 $05 $0A $46 $8C $05 $09 $46 $91 $05 $0A $46
	.db $96 $05 $09 $46 $9B $05 $0A $46 $A0 $05 $09 $46 $A5 $05 $0A $46
	.db $AA $05 $09 $46 $AF $05 $0A $46 $B4 $05 $09 $46 $B9 $05 $0A $46
	.db $BE $05 $09 $46 $C3 $05 $0A $46 $C8 $05 $09 $46 $CD $05 $0A $46
	.db $D2 $05 $09 $46 $D7 $05 $0A $46 $DC $05 $09 $46 $E1 $05 $0A $46
	.db $E6 $05 $09 $46 $EB $05 $0A $46 $F0 $05 $09 $46 $F5 $05 $0A $46
	.db $FA $05 $09 $46 $FF $05 $0A $46 $04 $06 $09 $46 $09 $06 $0A $46
	.db $0E $06 $09 $46 $18 $06 $09 $46 $2C $06 $09 $46 $36 $06 $09 $46
	.db $40 $06 $09 $46 $4A $06 $0A $46 $54 $06 $0A $46 $5E $06 $0A $46
	.db $68 $06 $0A $46 $72 $06 $0A $46 $79 $06 $08 $2E $7E $06 $09 $46
	.db $83 $06 $08 $2E $88 $06 $0A $46 $8D $06 $08 $2E $92 $06 $09 $46
	.db $97 $06 $08 $2E $9C $06 $0A $46 $A4 $06 $09 $46 $A9 $06 $0A $46
	.db $AE $06 $09 $46 $B3 $06 $0A $46 $B8 $06 $09 $46 $BD $06 $0A $46
	.db $C2 $06 $09 $46 $C7 $06 $0A $46 $CC $06 $09 $46 $D1 $06 $0A $46
	.db $D6 $06 $09 $46 $DB $06 $0A $46 $E0 $06 $09 $46 $E5 $06 $0A $46
	.db $EA $06 $09 $46 $EF $06 $0A $46 $F4 $06 $09 $46 $F9 $06 $0A $46
	.db $FE $06 $09 $46 $03 $07 $0A $46 $08 $07 $09 $46 $0D $07 $0A $46
	.db $12 $07 $09 $46 $17 $07 $0A $46 $1C $07 $09 $46 $21 $07 $0A $46
	.db $26 $07 $09 $46 $2B $07 $0A $46 $30 $07 $09 $46 $3A $07 $0A $46
	.db $80 $07 $0A $94 $FF $FF
	
; 33rd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E8B4 to E8E1 (46 bytes)	
_DATA_E8B4_:	
	.db $00 $00 $00 $00 $C2 $01 $03 $05 $FE $01 $10 $05 $58 $02 $11 $05
	.db $3E $03 $0C $05 $A2 $03 $0F $05 $7E $04 $0C $05 $14 $05 $0C $05
	.db $AA $05 $03 $05 $2C $06 $18 $07 $58 $07 $00 $11 $FF $FF
	
; 32nd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from E8E2 to EDD3 (1266 bytes)	
_DATA_E8E2_:	
	.incbin "data/File05_0E8E2_0EDD3.dat"
	
; 37th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from EDD4 to EDED (26 bytes)	
_DATA_EDD4_:	
	.db $00 $00 $00 $00 $5A $00 $03 $01 $6E $00 $00 $01 $C8 $00 $01 $05
	.db $58 $07 $00 $11 $6C $07 $02 $05 $FF $FF
	
; 36th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from EDEE to EF3B (334 bytes)	
_DATA_EDEE_:	
	.db $32 $00 $09 $7C $46 $00 $09 $7C $5A $00 $09 $7C $6E $00 $09 $7C
	.db $82 $00 $09 $7C $96 $00 $09 $7C $A1 $00 $07 $34 $AB $00 $07 $34
	.db $B5 $00 $07 $34 $BF $00 $07 $34 $C8 $00 $09 $7C $DC $00 $09 $7C
	.db $F0 $00 $09 $7C $04 $01 $09 $7C $18 $01 $09 $7C $2C $01 $09 $7C
	.db $40 $01 $09 $7C $54 $01 $09 $7C $5B $01 $08 $2E $65 $01 $08 $2E
	.db $6F $01 $08 $2E $79 $01 $08 $2E $7C $01 $0A $7C $90 $01 $0A $7C
	.db $A4 $01 $0A $7C $B8 $01 $0A $7C $CC $01 $0A $7C $E0 $01 $0A $7C
	.db $F4 $01 $0A $7C $08 $02 $0A $7C $1C $02 $0A $7C $30 $02 $0A $7C
	.db $44 $02 $0A $7C $8C $02 $08 $2E $96 $02 $08 $2E $A0 $02 $08 $2E
	.db $AA $02 $08 $2E $BC $02 $0A $7C $D0 $02 $0A $7C $E4 $02 $0A $7C
	.db $F8 $02 $0A $7C $0C $03 $0A $7C $20 $03 $0A $7C $34 $03 $0A $7C
	.db $48 $03 $0A $7C $5C $03 $0A $7C $70 $03 $0A $7C $84 $03 $0A $7C
	.db $98 $03 $0A $7C $AC $03 $0A $7C $C0 $03 $0A $7C $D4 $03 $0A $7C
	.db $E8 $03 $0A $7C $02 $04 $08 $2E $0C $04 $08 $2E $16 $04 $08 $2E
	.db $20 $04 $08 $2E $24 $04 $0A $7C $42 $04 $0A $7C $60 $04 $0A $7C
	.db $7E $04 $0A $7C $9C $04 $0A $7C $BA $04 $0A $7C $D8 $04 $0A $7C
	.db $F6 $04 $0A $7C $14 $05 $0A $7C $32 $05 $0A $7C $50 $05 $0A $7C
	.db $6E $05 $0A $7C $8C $05 $0A $7C $AD $05 $08 $2E $B7 $05 $08 $2E
	.db $C1 $05 $08 $2E $CB $05 $08 $2E $CD $05 $0A $7C $FF $05 $0A $7C
	.db $31 $06 $0A $7C $63 $06 $0A $7C $95 $06 $0A $7C $C7 $06 $0A $7C
	.db $F9 $06 $0A $7C $2B $07 $0A $7C $80 $07 $0A $94 $FF $FF
	
; 41st entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from EF3C to EF61 (38 bytes)	
_DATA_EF3C_:	
	.db $00 $00 $00 $00 $64 $00 $0C $05 $93 $00 $0F $05 $BC $02 $0C $07
	.db $34 $03 $06 $05 $1A $04 $03 $05 $B0 $04 $18 $07 $64 $05 $03 $05
	.db $26 $07 $0F $07 $FF $FF
	
; 40th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from EF62 to F103 (418 bytes)	
_DATA_EF62_:	
	.db $61 $00 $08 $2E $6B $00 $08 $2E $75 $00 $08 $2E $7F $00 $08 $2E
	.db $82 $00 $0A $82 $91 $00 $0A $82 $A0 $00 $0A $82 $AF $00 $0A $82
	.db $BE $00 $0A $82 $CD $00 $0A $82 $DA $00 $07 $34 $E4 $00 $07 $34
	.db $EE $00 $07 $34 $F8 $00 $07 $34 $04 $01 $09 $82 $13 $01 $09 $82
	.db $22 $01 $09 $82 $31 $01 $09 $82 $40 $01 $09 $82 $4F $01 $09 $82
	.db $9E $01 $08 $2E $A8 $01 $08 $2E $B2 $01 $08 $2E $BC $01 $08 $2E
	.db $CB $01 $0A $82 $D5 $01 $07 $34 $D5 $01 $0A $82 $DF $01 $07 $34
	.db $DF $01 $0A $82 $E9 $01 $07 $34 $EA $01 $0A $82 $F9 $01 $09 $82
	.db $08 $02 $09 $82 $17 $02 $09 $82 $26 $02 $09 $82 $35 $02 $09 $82
	.db $FF $02 $07 $34 $09 $03 $07 $34 $13 $03 $07 $34 $1D $03 $07 $34
	.db $25 $03 $09 $82 $34 $03 $09 $82 $43 $03 $09 $82 $52 $03 $09 $82
	.db $61 $03 $09 $82 $70 $03 $09 $82 $7F $03 $09 $82 $85 $03 $07 $34
	.db $8F $03 $07 $34 $99 $03 $07 $34 $A3 $03 $07 $34 $CA $03 $09 $82
	.db $D9 $03 $09 $82 $E8 $03 $09 $82 $F7 $03 $09 $82 $06 $04 $09 $82
	.db $15 $04 $09 $82 $50 $04 $08 $2E $5A $04 $08 $2E $64 $04 $08 $2E
	.db $6E $04 $08 $2E $7E $04 $09 $82 $8D $04 $09 $82 $9C $04 $09 $82
	.db $AB $04 $09 $82 $BA $04 $09 $82 $C9 $04 $09 $82 $28 $05 $08 $2E
	.db $32 $05 $08 $2E $3C $05 $08 $2E $46 $05 $08 $2E $72 $05 $08 $2E
	.db $7C $05 $08 $2E $86 $05 $08 $2E $90 $05 $08 $2E $9B $05 $0A $82
	.db $AA $05 $0A $82 $B9 $05 $0A $82 $C8 $05 $0A $82 $D7 $05 $0A $82
	.db $E7 $05 $08 $2E $F1 $05 $08 $2E $FB $05 $08 $2E $05 $06 $08 $2E
	.db $40 $06 $0A $82 $4F $06 $0A $82 $5E $06 $0A $82 $6D $06 $0A $82
	.db $7C $06 $0A $82 $8B $06 $0A $82 $C2 $06 $08 $2E $CC $06 $08 $2E
	.db $D6 $06 $08 $2E $E0 $06 $08 $2E $12 $07 $07 $34 $1C $07 $07 $34
	.db $26 $07 $07 $34 $30 $07 $07 $34 $35 $07 $09 $82 $44 $07 $09 $82
	.db $53 $07 $09 $82 $62 $07 $09 $82 $71 $07 $09 $82 $80 $07 $09 $82
	.db $FF $FF
	
; 45th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F104 to F125 (34 bytes)	
_DATA_F104_:	
	.db $00 $00 $00 $00 $AA $00 $03 $05 $FA $00 $15 $03 $2C $01 $15 $03
	.db $20 $03 $0C $07 $B0 $04 $03 $05 $40 $06 $0F $05 $6C $07 $0C $01
	.db $FF $FF
	
; 44th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F126 to F447 (802 bytes)	
_DATA_F126_:	
	.db $32 $00 $0A $6A $46 $00 $09 $6A $5A $00 $0A $6A $6E $00 $09 $6A
	.db $82 $00 $0A $6A $96 $00 $09 $6A $AA $00 $0A $6A $B1 $00 $07 $34
	.db $BB $00 $07 $34 $C5 $00 $07 $34 $CF $00 $07 $34 $D2 $00 $09 $6A
	.db $D7 $00 $09 $6A $DC $00 $09 $6A $E1 $00 $09 $6A $E6 $00 $09 $6A
	.db $EB $00 $09 $6A $F0 $00 $09 $6A $F5 $00 $09 $6A $FA $00 $09 $6A
	.db $FF $00 $0A $6A $04 $01 $0A $6A $09 $01 $09 $6A $0E $01 $0A $6A
	.db $13 $01 $09 $6A $18 $01 $0A $6A $1D $01 $09 $6A $22 $01 $0A $6A
	.db $27 $01 $08 $2E $2C $01 $09 $6A $31 $01 $08 $2E $36 $01 $09 $6A
	.db $3B $01 $08 $2E $40 $01 $09 $6A $45 $01 $08 $2E $4A $01 $0A $6A
	.db $4F $01 $0A $6A $54 $01 $0A $6A $59 $01 $0A $6A $5E $01 $0A $6A
	.db $63 $01 $0A $6A $66 $01 $07 $34 $70 $01 $07 $34 $7A $01 $07 $34
	.db $84 $01 $07 $34 $86 $01 $09 $6A $90 $01 $09 $6A $9A $01 $09 $6A
	.db $A4 $01 $09 $6A $AE $01 $09 $6A $B8 $01 $09 $6A $C2 $01 $09 $6A
	.db $CC $01 $09 $6A $D6 $01 $09 $6A $E0 $01 $09 $6A $EA $01 $09 $6A
	.db $F0 $01 $08 $3A $FA $01 $08 $3A $04 $02 $08 $3A $0E $02 $08 $3A
	.db $12 $02 $0A $6A $17 $02 $0A $6A $1C $02 $0A $6A $21 $02 $0A $6A
	.db $26 $02 $0A $6A $2B $02 $0A $6A $30 $02 $0A $6A $35 $02 $0A $6A
	.db $43 $02 $08 $2E $4D $02 $08 $2E $57 $02 $08 $2E $61 $02 $08 $2E
	.db $6C $02 $0A $6A $76 $02 $0A $6A $80 $02 $0A $6A $8A $02 $0A $6A
	.db $94 $02 $0A $6A $9E $02 $0A $6A $A8 $02 $0A $6A $B2 $02 $0A $6A
	.db $BC $02 $0A $6A $C6 $02 $0A $6A $D0 $02 $0A $6A $DA $02 $0A $6A
	.db $E4 $02 $0A $6A $EE $02 $0A $6A $F8 $02 $0A $6A $02 $03 $0A $6A
	.db $0C $03 $0A $6A $16 $03 $0A $6A $20 $03 $0A $6A $2A $03 $0A $6A
	.db $34 $03 $0A $6A $38 $03 $07 $34 $42 $03 $07 $34 $4C $03 $07 $34
	.db $56 $03 $07 $34 $5C $03 $09 $6A $66 $03 $09 $6A $70 $03 $09 $6A
	.db $7A $03 $09 $6A $84 $03 $09 $6A $8E $03 $09 $6A $98 $03 $09 $6A
	.db $9D $03 $09 $6A $A2 $03 $0A $6A $A7 $03 $09 $6A $AC $03 $0A $6A
	.db $B1 $03 $09 $6A $B6 $03 $0A $6A $BB $03 $09 $6A $C0 $03 $0A $6A
	.db $C5 $03 $09 $6A $CA $03 $0A $6A $CF $03 $09 $6A $D4 $03 $0A $6A
	.db $D9 $03 $09 $6A $DE $03 $0A $6A $E3 $03 $09 $6A $E8 $03 $0A $6A
	.db $ED $03 $09 $6A $FC $03 $0A $6A $01 $04 $09 $6A $10 $04 $0A $6A
	.db $15 $04 $09 $6A $24 $04 $0A $6A $29 $04 $09 $6A $38 $04 $0A $6A
	.db $3D $04 $09 $6A $4C $04 $0A $6A $51 $04 $09 $6A $60 $04 $0A $6A
	.db $65 $04 $09 $6A $74 $04 $0A $6A $79 $04 $09 $6A $88 $04 $0A $6A
	.db $8D $04 $09 $6A $9C $04 $0A $6A $A1 $04 $09 $6A $B0 $04 $0A $6A
	.db $B5 $04 $09 $6A $C4 $04 $0A $6A $C9 $04 $09 $6A $D8 $04 $0A $6A
	.db $DD $04 $09 $6A $17 $05 $07 $40 $21 $05 $07 $40 $2B $05 $07 $40
	.db $35 $05 $07 $40 $50 $05 $0A $6A $5A $05 $09 $6A $64 $05 $09 $6A
	.db $6E $05 $0A $6A $78 $05 $0A $6A $82 $05 $0A $6A $8C $05 $0A $6A
	.db $A0 $05 $0A $6A $89 $06 $07 $34 $93 $06 $07 $34 $9D $06 $07 $34
	.db $A7 $06 $07 $34 $AE $06 $09 $6A $B3 $06 $09 $6A $B8 $06 $09 $6A
	.db $BD $06 $09 $6A $C2 $06 $09 $6A $C7 $06 $09 $6A $CC $06 $09 $6A
	.db $D0 $06 $0A $6A $D4 $06 $09 $6A $D8 $06 $0A $6A $DC $06 $09 $6A
	.db $E0 $06 $0A $6A $E4 $06 $09 $6A $E8 $06 $0A $6A $EC $06 $09 $6A
	.db $F0 $06 $0A $6A $F4 $06 $09 $6A $F8 $06 $0A $6A $FC $06 $09 $6A
	.db $00 $07 $0A $6A $04 $07 $09 $6A $08 $07 $0A $6A $0C $07 $09 $6A
	.db $10 $07 $0A $6A $14 $07 $09 $6A $18 $07 $0A $6A $1C $07 $09 $6A
	.db $20 $07 $0A $6A $24 $07 $09 $6A $28 $07 $0A $6A $2C $07 $09 $6A
	.db $30 $07 $0A $6A $34 $07 $09 $6A $38 $07 $0A $6A $3C $07 $09 $6A
	.db $40 $07 $0A $6A $44 $07 $09 $6A $48 $07 $0A $6A $4C $07 $09 $6A
	.db $FF $FF
	
; 49th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F448 to F45D (22 bytes)	
_DATA_F448_:	
	.db $00 $00 $00 $00 $64 $00 $18 $07 $C8 $00 $15 $05 $5E $01 $0C $05
	.db $F4 $01 $00 $13 $FF $FF
	
; 48th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F45E to F887 (1066 bytes)	
_DATA_F45E_:	
	.incbin "data/File06_0F45E_0F887.dat"
	
; 53rd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F888 to F8C1 (58 bytes)	
_DATA_F888_:	
	.db $00 $00 $00 $00 $46 $00 $18 $05 $96 $00 $03 $05 $90 $01 $13 $05
	.db $12 $02 $14 $05 $BC $02 $03 $05 $20 $03 $03 $05 $6A $04 $0F $07
	.db $B0 $04 $0F $05 $46 $05 $03 $03 $78 $05 $03 $03 $DC $05 $12 $05
	.db $72 $06 $16 $03 $44 $07 $17 $05 $FF $FF
	
; 52nd entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from F8C2 to FC87 (966 bytes)	
_DATA_F8C2_:	
	.db $32 $00 $09 $58 $64 $00 $0A $58 $69 $00 $09 $58 $6E $00 $0A $58
	.db $73 $00 $09 $58 $78 $00 $0A $58 $7D $00 $09 $58 $82 $00 $0A $58
	.db $87 $00 $09 $58 $8C $00 $0A $58 $91 $00 $09 $58 $96 $00 $0A $58
	.db $9B $00 $09 $58 $A0 $00 $0A $58 $A5 $00 $09 $58 $AA $00 $0A $58
	.db $AF $00 $09 $58 $B4 $00 $0A $58 $B9 $00 $09 $58 $BE $00 $0A $58
	.db $C5 $00 $08 $2E $CF $00 $08 $2E $D9 $00 $08 $2E $E3 $00 $08 $2E
	.db $FA $00 $0A $58 $FF $00 $0A $58 $04 $01 $0A $58 $09 $01 $0A $58
	.db $0E $01 $0A $58 $13 $01 $0A $58 $18 $01 $0A $58 $1D $01 $0A $58
	.db $22 $01 $09 $58 $27 $01 $09 $58 $2C $01 $09 $58 $31 $01 $09 $58
	.db $36 $01 $09 $58 $3B $01 $09 $58 $40 $01 $09 $58 $45 $01 $0A $58
	.db $4A $01 $0A $58 $4F $01 $0A $58 $54 $01 $0A $58 $59 $01 $0A $58
	.db $5E $01 $0A $58 $63 $01 $0A $58 $68 $01 $0A $58 $6D $01 $0A $58
	.db $72 $01 $0A $58 $77 $01 $0A $58 $7C $01 $0A $58 $81 $01 $0A $58
	.db $86 $01 $0A $58 $8B $01 $0A $58 $90 $01 $0A $58 $95 $01 $0A $58
	.db $9A $01 $0A $58 $9F $01 $0A $58 $A8 $01 $07 $34 $B2 $01 $07 $34
	.db $BC $01 $07 $34 $C6 $01 $07 $34 $CC $01 $09 $58 $D1 $01 $09 $58
	.db $D6 $01 $09 $58 $DB $01 $09 $58 $E0 $01 $09 $58 $E5 $01 $09 $58
	.db $EA $01 $09 $58 $EF $01 $09 $58 $F4 $01 $09 $58 $F9 $01 $09 $58
	.db $FE $01 $09 $58 $03 $02 $09 $58 $08 $02 $09 $58 $0D $02 $09 $58
	.db $14 $02 $08 $2E $1E $02 $08 $2E $28 $02 $08 $2E $32 $02 $08 $2E
	.db $3A $02 $0A $58 $3F $02 $09 $58 $44 $02 $0A $5E $49 $02 $09 $58
	.db $4E $02 $0A $58 $53 $02 $09 $58 $58 $02 $0A $5E $5D $02 $09 $58
	.db $62 $02 $0A $58 $67 $02 $09 $5E $6C $02 $0A $58 $71 $02 $09 $58
	.db $76 $02 $0A $58 $7B $02 $09 $58 $80 $02 $0A $58 $85 $02 $09 $5E
	.db $8A $02 $0A $58 $8F $02 $09 $5E $94 $02 $0A $58 $99 $02 $09 $5E
	.db $9E $02 $0A $58 $A3 $02 $09 $5E $A8 $02 $0A $58 $AD $02 $09 $5E
	.db $B2 $02 $0A $58 $B7 $02 $09 $5E $BC $02 $0A $58 $C6 $02 $09 $5E
	.db $D0 $02 $0A $58 $DA $02 $09 $5E $E4 $02 $0A $58 $EE $02 $09 $5E
	.db $F8 $02 $0A $58 $02 $03 $09 $5E $0C $03 $0A $58 $16 $03 $09 $5E
	.db $20 $03 $0A $58 $2A $03 $09 $5E $34 $03 $0A $58 $3E $03 $09 $5E
	.db $43 $03 $08 $2E $48 $03 $0A $58 $4D $03 $08 $2E $52 $03 $09 $5E
	.db $57 $03 $08 $2E $5C $03 $0A $58 $61 $03 $08 $2E $66 $03 $09 $5E
	.db $70 $03 $0A $58 $7A $03 $09 $5E $7D $03 $08 $2E $82 $03 $09 $5E
	.db $87 $03 $08 $2E $8C $03 $09 $5E $91 $03 $08 $2E $96 $03 $09 $5E
	.db $9B $03 $08 $2E $A0 $03 $09 $5E $AA $03 $0A $58 $B4 $03 $09 $5E
	.db $BE $03 $0A $58 $C8 $03 $0A $5E $D2 $03 $0A $58 $DC $03 $0A $5E
	.db $E6 $03 $0A $58 $F0 $03 $0A $5E $F7 $03 $09 $5E $FB $03 $0A $5E
	.db $FF $03 $09 $58 $03 $04 $0A $5E $07 $04 $09 $58 $0B $04 $0A $5E
	.db $0F $04 $09 $58 $13 $04 $0A $5E $17 $04 $09 $58 $1B $04 $0A $5E
	.db $1F $04 $09 $58 $23 $04 $0A $5E $27 $04 $09 $58 $2B $04 $0A $5E
	.db $2F $04 $09 $58 $33 $04 $0A $5E $38 $04 $07 $34 $3D $04 $0A $5E
	.db $42 $04 $07 $34 $47 $04 $0A $5E $4C $04 $07 $34 $51 $04 $0A $5E
	.db $56 $04 $07 $34 $5B $04 $0A $5E $5F $04 $09 $5E $FF $03 $0A $5E
	.db $03 $04 $09 $5E $07 $04 $0A $5E $0B $04 $09 $5E $0F $04 $0A $5E
	.db $77 $04 $08 $2E $81 $04 $08 $2E $8B $04 $08 $2E $95 $04 $08 $2E
	.db $AB $04 $09 $58 $B5 $04 $0A $58 $C9 $04 $09 $58 $D3 $04 $0A $58
	.db $F1 $04 $09 $58 $FB $04 $0A $58 $19 $05 $09 $58 $23 $05 $0A $58
	.db $41 $05 $09 $58 $4B $05 $0A $58 $69 $05 $09 $58 $73 $05 $0A $58
	.db $91 $05 $09 $58 $9B $05 $0A $58 $A8 $05 $08 $2E $B2 $05 $08 $2E
	.db $BC $05 $08 $2E $C6 $05 $08 $2E $DC $05 $09 $58 $E6 $05 $0A $5E
	.db $04 $06 $09 $58 $0E $06 $0A $5E $2C $06 $09 $58 $36 $06 $0A $5E
	.db $6D $06 $08 $2E $77 $06 $08 $2E $81 $06 $08 $2E $8B $06 $08 $2E
	.db $90 $06 $0A $5E $95 $06 $0A $5E $9A $06 $0A $5E $9F $06 $0A $5E
	.db $A4 $06 $0A $5E $AE $06 $0A $5E $DC $06 $07 $34 $E6 $06 $07 $34
	.db $F0 $06 $07 $34 $FA $06 $07 $34 $FC $06 $09 $58 $00 $07 $09 $58
	.db $04 $07 $09 $58 $08 $07 $09 $58 $0C $07 $09 $58 $10 $07 $09 $58
	.db $14 $07 $09 $58 $18 $07 $09 $58 $1C $07 $09 $58 $20 $07 $09 $58
	.db $24 $07 $09 $58 $28 $07 $09 $58 $2C $07 $09 $58 $30 $07 $09 $58
	.db $34 $07 $09 $58 $38 $07 $0A $58 $3C $07 $09 $58 $40 $07 $0A $58
	.db $44 $07 $0A $58 $48 $07 $09 $58 $4A $07 $0A $58 $50 $07 $09 $58
	.db $6C $07 $0A $58 $FF $FF
	
; 57th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from FC88 to FCA1 (26 bytes)	
_DATA_FC88_:	
	.db $00 $00 $00 $01 $32 $00 $01 $05 $84 $03 $02 $05 $E8 $03 $00 $00
	.db $A1 $05 $18 $03 $0E $06 $0F $05 $FF $FF
	
; 56th entry of Pointer Table from 5236 (indexed by _RAM_C1F6_)	
; Data from FCA2 to FFFF (862 bytes)	
_DATA_FCA2_:	
	.db $32 $00 $09 $52 $3C $00 $0A $52 $46 $00 $09 $52 $50 $00 $0A $52
	.db $5A $00 $09 $52 $64 $00 $0A $52 $6E $00 $09 $52 $78 $00 $0A $52
	.db $82 $00 $09 $52 $8C $00 $0A $52 $96 $00 $09 $52 $A0 $00 $0A $52
	.db $A1 $00 $07 $34 $AB $00 $07 $34 $B5 $00 $07 $34 $BF $00 $07 $34
	.db $2C $01 $0A $52 $31 $01 $09 $52 $36 $01 $0A $52 $3B $01 $09 $52
	.db $40 $01 $0A $52 $45 $01 $09 $52 $4A $01 $0A $52 $4F $01 $09 $52
	.db $54 $01 $0A $52 $59 $01 $09 $52 $5E $01 $0A $52 $63 $01 $09 $52
	.db $68 $01 $0A $52 $6D $01 $09 $52 $72 $01 $0A $52 $77 $01 $09 $52
	.db $7C $01 $0A $52 $81 $01 $09 $52 $86 $01 $0A $52 $8B $01 $09 $52
	.db $90 $01 $0A $52 $95 $01 $09 $52 $9A $01 $0A $52 $9F $01 $09 $52
	.db $A4 $01 $0A $52 $A9 $01 $09 $52 $AE $01 $0A $52 $B3 $01 $09 $52
	.db $B8 $01 $0A $52 $BD $01 $09 $52 $C2 $01 $0A $52 $C7 $01 $09 $52
	.db $CC $01 $0A $52 $D1 $01 $09 $52 $D6 $01 $0A $52 $DB $01 $09 $52
	.db $E0 $01 $0A $52 $E5 $01 $09 $52 $EA $01 $0A $52 $EF $01 $09 $52
	.db $F4 $01 $0A $52 $F9 $01 $09 $52 $FE $01 $0A $52 $03 $02 $09 $52
	.db $08 $02 $0A $52 $0D $02 $09 $52 $12 $02 $0A $52 $17 $02 $09 $52
	.db $1C $02 $0A $52 $21 $02 $09 $52 $26 $02 $0A $52 $2B $02 $09 $52
	.db $30 $02 $0A $52 $35 $02 $09 $52 $3A $02 $0A $52 $3F $02 $09 $52
	.db $44 $02 $0A $52 $49 $02 $09 $52 $4E $02 $0A $52 $53 $02 $09 $52
	.db $58 $02 $0A $52 $62 $02 $09 $52 $6C $02 $0A $52 $76 $02 $09 $52
	.db $80 $02 $0A $52 $90 $02 $07 $34 $95 $02 $0A $52 $9A $02 $07 $34
	.db $9F $02 $0A $52 $A4 $02 $07 $34 $A9 $02 $0A $52 $AE $02 $07 $34
	.db $B0 $02 $0A $52 $BC $02 $0A $52 $C1 $02 $0A $52 $C6 $02 $0A $52
	.db $CB $02 $0A $52 $D0 $02 $0A $52 $D5 $02 $0A $52 $DA $02 $0A $52
	.db $DF $02 $0A $52 $E4 $02 $0A $52 $E9 $02 $0A $52 $EE $02 $0A $52
	.db $F3 $02 $0A $52 $F8 $02 $0A $52 $FD $02 $0A $52 $02 $03 $0A $52
	.db $07 $03 $0A $52 $0C $03 $0A $52 $11 $03 $0A $52 $16 $03 $08 $2E
	.db $20 $03 $08 $2E $2A $03 $08 $2E $34 $03 $08 $2E $39 $03 $0A $52
	.db $4D $03 $0A $52 $61 $03 $0A $52 $75 $03 $0A $52 $7F $03 $0A $52
	.db $84 $03 $0A $52 $88 $03 $0A $52 $8C $03 $0A $52 $90 $03 $0A $52
	.db $94 $03 $0A $52 $98 $03 $0A $52 $9C $03 $0A $52 $A0 $03 $0A $52
	.db $A4 $03 $0A $52 $A8 $03 $0A $52 $AC $03 $0A $52 $B0 $03 $0A $52
	.db $B4 $03 $0A $52 $B8 $03 $0A $52 $BC $03 $0A $52 $C0 $03 $0A $52
	.db $C4 $03 $0A $52 $C8 $03 $0A $52 $CD $03 $07 $34 $D2 $03 $0A $52
	.db $D7 $03 $07 $34 $DC $03 $0A $52 $E1 $03 $07 $34 $E6 $03 $0A $52
	.db $EB $03 $07 $34 $ED $03 $0A $52 $06 $04 $0A $52 $4C $04 $0A $52
	.db $B0 $04 $0A $52 $14 $05 $0A $52 $5C $05 $08 $3A $66 $05 $08 $3A
	.db $70 $05 $08 $3A $7A $05 $08 $3A $7D $05 $09 $52 $87 $05 $09 $52
	.db $91 $05 $09 $52 $9B $05 $09 $52 $A6 $05 $08 $2E $B0 $05 $08 $2E
	.db $BA $05 $08 $2E $C4 $05 $08 $2E $C6 $05 $09 $52 $C8 $05 $0A $52
	.db $D0 $05 $09 $52 $D2 $05 $0A $52 $DA $05 $09 $52 $DC $05 $0A $52
	.db $E4 $05 $09 $52 $E6 $05 $0A $52 $E8 $05 $09 $52 $F0 $05 $0A $52
	.db $F2 $05 $09 $52 $F4 $05 $07 $34 $FE $05 $07 $34 $08 $06 $07 $34
	.db $12 $06 $07 $34 $1D $06 $0A $52 $22 $06 $0A $52 $27 $06 $0A $52
	.db $2C $06 $0A $52 $31 $06 $0A $52 $36 $06 $0A $52 $3B $06 $0A $52
	.db $40 $06 $0A $52 $45 $06 $0A $52 $4A $06 $0A $52 $54 $06 $0A $52
	.db $A4 $06 $09 $52 $AE $06 $0A $52 $B8 $06 $09 $52 $C2 $06 $0A $52
	.db $CC $06 $09 $52 $D6 $06 $0A $52 $E0 $06 $09 $52 $EA $06 $0A $52
	.db $F4 $06 $09 $52 $FE $06 $0A $52 $08 $07 $09 $52 $12 $07 $0A $52
	.db $1C $07 $09 $52 $26 $07 $0A $52 $30 $07 $09 $52 $3A $07 $0A $52
	.db $44 $07 $09 $52 $4E $07 $0A $52 $58 $07 $09 $52
	.dsb 50, $FF
	
.BANK 4	
.ORG $0000	
	
; 1st entry of Pointer Table from 52B2 (indexed by _RAM_C1F6_)	
; Data from 10000 to 139FF (14848 bytes)	
_DATA_10000_:	
	.incbin "data/File07_10000_139FF.dat"
	
; Data from 13A00 to 13FFF (1536 bytes)	
_DATA_13A00_:	
	.incbin "data/File08_13A00_13FFF.dat"
	
.BANK 5	
.ORG $0000	
	
	; Data from 14000 to 14A07 (2568 bytes)
	.incbin "data/File09_14000_14A07.dat"
	
; 1st entry of Pointer Table from CC9F (indexed by unknown)	
; Data from 14A08 to 17C9F (12952 bytes)	
_DATA_14A08_:	
	.incbin "data/File10_14A08_17C9F.dat"
	
; 1st entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17CA0 to 17CB8 (25 bytes)	
_DATA_17CA0_:	
	.db $20 $34 $2F $2A $29 $3F $29 $35 $2E $2A $29 $3F $29 $39 $1E $2A
	.db $29 $3F $29 $3D $1E $2A $29 $3F $29
	
; 2nd entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17CB9 to 17CDD (37 bytes)	
_DATA_17CB9_:	
	.db $30 $28 $2E $2A $29 $3F $29 $18 $2E $2A $29 $3F $29 $08 $2E $2A
	.db $29 $3F $29 $09 $2E $2A $29 $3F $29 $0A $2E $2A $29 $3F $29 $0B
	.db $2E $2A $29 $3F $29
	
; 3rd entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17CDE to 17CF6 (25 bytes)	
_DATA_17CDE_:	
	.db $20 $3C $1F $2A $29 $2F $2F $38 $2F $2A $19 $2B $2B $34 $2B $2A
	.db $1A $2A $1B $30 $2B $2A $1A $2A $1A
	
; 4th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17CF7 to 17D09 (19 bytes)	
_DATA_17CF7_:	
	.db $18 $39 $1D $2A $29 $3F $29 $35 $0D $2A $29 $3F $29 $31 $0D $2A
	.db $29 $3F $29
	
; 5th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17D0A to 17D34 (43 bytes)	
_DATA_17D0A_:	
	.db $38 $0A $2D $2A $29 $3F $29 $09 $1D $2A $29 $3F $29 $19 $0D $2A
	.db $29 $3F $29 $29 $0D $2A $29 $3F $29 $39 $0D $2A $29 $3F $29 $35
	.db $0D $2A $29 $3F $29 $31 $0D $2A $29 $3F $29
	
; 6th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17D35 to 17D53 (31 bytes)	
_DATA_17D35_:	
	.db $28 $0A $1E $2A $29 $3F $29 $09 $1E $2A $29 $3F $29 $19 $1E $2A
	.db $29 $3F $29 $29 $1E $2A $29 $3F $29 $39 $1E $2A $29 $3F $29
	
; 7th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17D54 to 17D78 (37 bytes)	
_DATA_17D54_:	
	.db $30 $31 $1B $2A $1A $2A $1A $32 $0B $2A $1A $2A $1A $36 $0B $2A
	.db $1A $2A $1A $3A $0B $2A $1A $2A $1A $39 $0B $2A $1A $2A $1A $29
	.db $0B $2A $1A $2A $1A
	
; 8th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17D79 to 17D9D (37 bytes)	
_DATA_17D79_:	
	.db $30 $31 $1B $26 $16 $2B $16 $32 $0B $22 $06 $2B $06 $22 $0A $21
	.db $05 $2F $05 $21 $06 $11 $01 $3F $01 $20 $02 $10 $00 $3F $00 $20
	.db $01 $10 $00 $3F $00
	
; 9th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17D9E to 17DBC (31 bytes)	
_DATA_17D9E_:	
	.db $28 $32 $09 $26 $15 $3F $15 $22 $05 $25 $14 $3F $14 $21 $06 $24
	.db $04 $3F $04 $20 $02 $14 $00 $3F $00 $20 $01 $10 $00 $3F $00
	
; 10th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17DBD to 17DE1 (37 bytes)	
_DATA_17DBD_:	
	.db $30 $35 $09 $2A $29 $3F $29 $39 $05 $2A $29 $3F $29 $29 $05 $2A
	.db $29 $3F $29 $19 $05 $2A $29 $3F $29 $1A $05 $2A $29 $3F $29 $1B
	.db $05 $2A $29 $3F $29
	
; 11th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17DE2 to 17DFA (25 bytes)	
_DATA_17DE2_:	
	.db $20 $3A $1D $2A $29 $3F $29 $3B $19 $2A $29 $3F $29 $2B $15 $2A
	.db $29 $3F $29 $1B $05 $2A $29 $3F $29
	
; 12th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17DFB to 17E0D (19 bytes)	
_DATA_17DFB_:	
	.db $18 $35 $1F $2A $29 $3F $29 $35 $0F $2A $29 $3F $29 $35 $0B $2A
	.db $29 $3F $29
	
; 13th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17E0E to 17E26 (25 bytes)	
_DATA_17E0E_:	
	.db $20 $29 $0F $2B $16 $2B $16 $39 $0E $2A $15 $2F $15 $39 $0D $2A
	.db $25 $3F $25 $39 $0D $2A $29 $3F $29
	
; 14th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17E27 to 17E3F (25 bytes)	
_DATA_17E27_:	
	.db $20 $3A $0A $2B $16 $2B $16 $36 $06 $2A $15 $2F $15 $35 $06 $2A
	.db $25 $3F $25 $34 $06 $2A $29 $3F $29
	
; 15th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17E40 to 17E64 (37 bytes)	
_DATA_17E40_:	
	.db $30 $30 $02 $14 $00 $3F $00 $34 $06 $24 $04 $3F $04 $34 $06 $25
	.db $14 $3F $14 $34 $06 $26 $15 $3F $15 $34 $06 $2A $25 $3F $25 $34
	.db $06 $2A $29 $3F $29
	
; 16th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17E65 to 17E89 (37 bytes)	
_DATA_17E65_:	
	.db $30 $24 $02 $14 $00 $3F $00 $28 $12 $24 $04 $3F $04 $28 $16 $25
	.db $14 $3F $14 $28 $1A $26 $15 $3F $15 $28 $1B $2A $25 $3F $25 $28
	.db $2B $2A $29 $3F $29
	
; 17th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17E8A to 17EA8 (31 bytes)	
_DATA_17E8A_:	
	.db $28 $1A $09 $2A $29 $3F $29 $19 $0A $2A $29 $3F $29 $18 $1A $2A
	.db $29 $3F $29 $28 $1B $2A $29 $3F $29 $28 $2B $2A $29 $3F $29
	
; 18th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17EA9 to 17EC7 (31 bytes)	
_DATA_17EA9_:	
	.db $28 $2B $09 $26 $21 $3F $21 $3B $0D $25 $21 $3F $21 $3A $0E $24
	.db $20 $3F $20 $39 $1E $24 $20 $3F $20 $35 $2E $24 $20 $3F $20
	
; 19th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17EC8 to 17EE0 (25 bytes)	
_DATA_17EC8_:	
	.db $20 $35 $0F $26 $21 $3F $21 $35 $1F $25 $21 $3F $21 $35 $2F $24
	.db $20 $3F $20 $35 $2E $24 $20 $3F $20
	
; 20th entry of Pointer Table from 52FB (indexed by _RAM_C1F6_)	
; Data from 17EE1 to 17FFF (287 bytes)	
_DATA_17EE1_:	
	.db $18 $39 $0F $2A $29 $3F $29 $3A $1F $2A $29 $3F $29 $3B $2F $2A
	.db $29 $3F $29 $1C $BF $27 $BF $78 $BF $83 $BF $32 $BF $3E $BF $8E
	.db $BF $99 $BF $A4 $BF $B1 $BF $BD $BF $C8 $BF $D1 $BF $4A $BF $55
	.db $BF $62 $BF $6E $BF $DC $BF $E8 $BF $F3 $BF $01 $02 $03 $04 $05
	.db $06 $07 $08 $09 $0A $FF $0B $0C $0D $0E $0F $10 $11 $12 $13 $00
	.db $FF $14 $01 $15 $16 $17 $18 $19 $1A $1B $1C $1D $FF $1E $1F $20
	.db $21 $22 $23 $24 $25 $26 $27 $00 $FF $01 $02 $28 $29 $2A $2B $2C
	.db $2D $2E $2F $FF $30 $31 $32 $33 $34 $35 $36 $37 $38 $39 $3A $3B
	.db $FF $3C $3D $3E $3F $40 $41 $42 $43 $44 $45 $46 $FF $47 $48 $49
	.db $4A $4B $4C $4D $4E $00 $FF $4F $50 $51 $52 $53 $54 $55 $56 $57
	.db $58 $FF $59 $5A $5B $5C $5D $5E $5F $60 $61 $00 $FF $62 $63 $64
	.db $65 $66 $67 $68 $69 $6A $6B $FF $6C $6D $6E $6F $70 $71 $72 $73
	.db $74 $75 $FF $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $80 $00 $FF
	.db $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A $8B $FF $8C $8D $8E $8F
	.db $90 $91 $92 $93 $94 $95 $FF $96 $97 $98 $99 $9A $9B $9C $9D $FF
	.db $9E $9F $A0 $A1 $A2 $A3 $A4 $A5 $A6 $00 $FF $A7 $A8 $A9 $AA $AB
	.db $AC $AD $AE $AF $B0 $B1 $FF $B2 $B3 $B4 $B5 $B6 $B7 $B8 $B9 $BA
	.db $BB $FF $BC $BD $BE $BF $C0 $C1 $00 $FF $FF $FF $FF $FF $FF
	
.BANK 6	
.ORG $0000	
	
	; Data from 18000 to 18BFF (3072 bytes)
	.incbin "data/File11_18000_18BFF.dat"
	
; 1st entry of Pointer Table from 4A77 (indexed by unknown)	
; Data from 18C00 to 1BFFF (13312 bytes)	
_DATA_18C00_:	
	.incbin "data/File12_18C00_1BFFF.dat"
	
.BANK 7	
.ORG $0000	
	
; Data from 1C000 to 1FFFF (16384 bytes)	
_DATA_1C000_:	
	.incbin "data/File13_1C000_1FFFF.dat"
	
.BANK 8	
.ORG $0000	
	
; Data from 20000 to 20030 (49 bytes)	
_DATA_20000_:	
	.db $89 $00 $EE $AA $BA $82 $BA $AA $EE $00 $02 $EE $03 $FE $02 $EE
	.db $00 $81 $00 $02 $EE $03 $FE $02 $EE $88 $00 $EE $AA $BA $82 $BA
	.db $AA $EE $00 $02 $00 $02 $44 $81 $7C $02 $44 $09 $00 $00 $10 $00
	.db $00
	
; Data from 20031 to 202DC (684 bytes)	
_DATA_20031_:	
	.db $81 $00 $04 $E0 $03 $FE $82 $00 $E0 $03 $A0 $83 $BE $82 $FE $02
	.db $00 $04 $E0 $04 $00 $04 $EE $22 $00 $BD $7E $C3 $FF $9D $FF $9D
	.db $C3 $7E $3C $64 $7C $64 $3C $66 $42 $7E $3C $42 $FF $99 $7E $CF
	.db $81 $FF $3C $42 $FF $72 $7F $99 $42 $3C $0E $12 $3E $52 $FF $81
	.db $F3 $1E $FE $82 $FE $83 $FF $99 $42 $3C $3E $42 $FE $83 $FF $99
	.db $42 $3C $FF $81 $FF $F6 $3C $02 $24 $02 $3C $EF $42 $FF $42 $FF
	.db $99 $42 $3C $3C $42 $FF $99 $FF $79 $42 $7C $7E $C3 $FF $C6 $7F
	.db $9D $C3 $7E $7E $C3 $FF $9F $FF $99 $C3 $7E $80 $02 $18 $24 $40
	.db $00 $8A $04 $FE $83 $FF $9D $FF $9B $9D $F7 $FF $81 $FF $82 $FE
	.db $9F $81 $FF $FF $81 $FF $24 $3C $24 $24 $3C $7E $42 $7E $24 $3C
	.db $66 $42 $7E $F7 $9D $FF $95 $FF $95 $95 $F7 $FE $83 $FF $9D $FF
	.db $9E $90 $F0 $FE $83 $FF $9D $FF $9D $83 $FE $C0 $B8 $FF $98 $FF
	.db $DF $02 $03 $0C $14 $3C $D4 $FE $51 $95 $1B $00 $82 $00 $E0 $03
	.db $A0 $84 $BE $82 $FE $00 $04 $E0 $03 $FE $22 $00 $04 $E0 $04 $00
	.db $04 $EE $02 $00 $82 $7E $C3 $02 $9D $03 $FF $86 $7E $3C $64 $44
	.db $64 $3C $03 $7E $85 $3C $42 $99 $99 $7E $03 $FF $8C $3C $42 $99
	.db $72 $7F $FF $7E $3C $0E $12 $22 $52 $03 $FF $95 $1E $FE $82 $9E
	.db $83 $FF $FF $7E $3C $3E $42 $9E $83 $FF $FF $7E $3C $FF $81 $99
	.db $F6 $05 $3C $94 $42 $99 $42 $FF $FF $7E $3C $3C $42 $99 $99 $FF
	.db $7F $7E $7C $7E $C3 $9D $C6 $7F $02 $FF $02 $7E $83 $C3 $99 $9F
	.db $03 $FF $8B $7E $00 $00 $04 $02 $08 $14 $20 $00 $FE $83 $02 $9D
	.db $03 $FF $86 $F7 $FF $81 $9F $82 $FE $04 $FF $83 $81 $E7 $24 $04
	.db $3C $85 $7E $42 $66 $24 $3C $03 $7E $85 $F7 $9D $89 $95 $FF $03
	.db $F7 $8A $FE $83 $9D $9D $FF $FE $F0 $F0 $FE $83 $02 $9D $03 $FF
	.db $91 $FE $C0 $B8 $AF $98 $FF $DF $03 $03 $0C $14 $2C $D4 $FE $DF
	.db $9F $1B $00 $0A $00 $04 $40 $81 $7C $23 $00 $04 $E0 $04 $00 $04
	.db $EE $06 $00 $02 $62 $81 $3C $05 $00 $02 $18 $81 $3C $05 $00 $83
	.db $0C $30 $7E $05 $00 $83 $06 $66 $3C $05 $00 $83 $4C $7E $0C $05
	.db $00 $83 $06 $66 $3C $05 $00 $02 $66 $81 $3C $05 $00 $03 $18 $05
	.db $00 $02 $66 $81 $3C $05 $00 $83 $3E $06 $3C $05 $00 $83 $04 $62
	.db $3C $05 $00 $83 $60 $66 $3C $0D $00 $83 $7C $64 $62 $05 $00 $02
	.db $60 $81 $7E $05 $00 $03 $18 $05 $00 $02 $18 $81 $3C $05 $00 $03
	.db $62 $05 $00 $81 $7C $02 $60 $05 $00 $02 $62 $81 $7C $05 $00 $83
	.db $55 $00 $01 $05 $00 $84 $48 $8E $0A $00 $00 $22 $00 $04 $E0 $04
	.db $00 $04 $EE $13 $00 $83 $3C $00 $62 $05 $00 $83 $18 $00 $18 $05
	.db $00 $83 $3C $00 $66 $05 $00 $83 $3C $00 $0C $05 $00 $83 $0C $00
	.db $2C $05 $00 $83 $7C $00 $7C $05 $00 $83 $3C $00 $7C $05 $00 $83
	.db $7E $00 $08 $05 $00 $83 $3C $00 $3C $05 $00 $83 $3C $00 $66 $05
	.db $00 $83 $3C $00 $38 $05 $00 $83 $3C $00 $60 $05 $00 $8B $44 $02
	.db $18 $04 $22 $00 $48 $00 $7C $00 $62 $05 $00 $83 $7E $00 $7C $05
	.db $00 $83 $7E $00 $18 $05 $00 $83 $3C $00 $18 $05 $00 $83 $62 $00
	.db $6A $05 $00 $83 $7C $00 $62 $05 $00 $83 $7C $00 $62 $05 $00 $83
	.db $40 $00 $67 $05 $00 $83 $08 $00 $28 $04 $00 $00
	
; Data from 202DD to 2115C (3712 bytes)	
_DATA_202DD_:	
	.incbin "data/File14_202DD_2115C.dat"
	
; Data from 2115D to 23FFF (11939 bytes)	
_DATA_2115D_:	
	.incbin "data/File15_2115D_23FFF.dat"
	
.BANK 9	
.ORG $0000	
	
; Data from 24000 to 245FF (1536 bytes)	
_DATA_24000_:	
	.incbin "data/File16_24000_245FF.dat"
	
; Data from 24600 to 25DEF (6128 bytes)	
_DATA_24600_:	
	.incbin "data/File17_24600_25DEF.dat"
	
; Data from 25DF0 to 26207 (1048 bytes)	
_DATA_25DF0_:	
	.incbin "data/File18_25DF0_26207.dat"
	
; Data from 26208 to 262E3 (220 bytes)	
_DATA_26208_:	
	.db $00 $01 $02 $03 $04 $05 $03 $03 $06 $07 $08 $09 $0A $0B $0C $03
	.db $0D $0E $0F $10 $00 $11 $12 $03 $13 $14 $15 $03 $16 $17 $03 $18
	.db $0A $0B $03 $03 $0D $0E $0F $10 $00 $01 $02 $03 $19 $1A $1B $03
	.db $1C $1D $1E $1F $0A $0B $20 $03 $0D $0E $0F $10 $00 $01 $02 $03
	.db $21 $22 $03 $03 $23 $24 $25 $18 $0A $0B $26 $03 $0D $0E $0F $10
	.db $27 $28 $02 $03 $29 $2A $03 $03 $2B $2C $03 $18 $0A $2D $03 $03
	.db $0D $0E $0F $10 $00 $01 $02 $03 $04 $05 $03 $03 $06 $07 $08 $09
	.db $0A $0B $0C $03 $0D $0E $0F $10 $00 $01 $02 $2E $04 $2F $30 $31
	.db $32 $33 $34 $35 $0A $0B $03 $03 $0D $0E $0F $10 $36 $37 $02 $03
	.db $38 $39 $03 $03 $3A $3B $03 $18 $3C $3D $03 $03 $3E $3F $40 $10
	.db $00 $01 $02 $03 $41 $42 $03 $03 $43 $44 $03 $18 $3C $45 $03 $03
	.db $3E $46 $40 $10 $00 $01 $02 $03 $47 $48 $49 $03 $4A $4B $03 $18
	.db $3C $45 $03 $03 $3E $46 $40 $10 $00 $01 $02 $03 $4C $4D $4E $03
	.db $4F $50 $51 $18 $3C $52 $03 $03 $53 $54 $55 $10
	
; Data from 262E4 to 26DA3 (2752 bytes)	
_DATA_262E4_:	
	.incbin "data/File19_262E4_26DA3.dat"
	
; Data from 26DA4 to 27D68 (4037 bytes)	
_DATA_26DA4_:	
	.incbin "data/File20_26DA4_27D68.dat"
	
; Data from 27D69 to 27DA8 (64 bytes)	
_DATA_27D69_:	
	.db $00 $26 $3C $24 $78 $22 $B4 $20 $F0 $1E $2C $1D $68 $1B $A4 $19
	.db $E0 $17 $1C $16 $58 $14 $94 $12 $D0 $10 $0C $0F $48 $0D $84 $0B
	.db $BB $09 $83 $09 $4B $09 $13 $09 $DB $08 $A3 $08 $6B $08 $33 $08
	.db $FB $07 $C2 $07 $89 $07 $50 $07 $17 $07 $DE $06 $A5 $06 $6C $06
	
; Data from 27DA9 to 27EA8 (256 bytes)	
_DATA_27DA9_:	
	.db $14 $14 $14 $14 $15 $15 $15 $15 $16 $16 $16 $16 $17 $17 $17 $17
	.dsb 16, $18
	.dsb 32, $19
	.dsb 32, $1A
	.dsb 16, $1B
	.db $1C $1C $1C $1C $1C $1C $1C $1C $1D $1D $1D $1D $1D $1D $1D $1D
	.db $1E $1E $1E $1E $1E $1E $1E $1E $1F $1F $1F $1F $20 $20 $20 $20
	.db $21 $21 $22 $22 $23 $23 $24 $24 $25 $25 $26 $26 $27 $27 $28 $28
	.db $29 $29 $2A $2A $2B $2B $2B $2C $2C $2C $2D $2D $2D $2E $2E $2E
	.db $2F $2F $2F $2F $30 $30 $30 $30 $30 $30 $30 $30 $2F $2F $2F $2F
	.db $2E $2E $2E $2D $2D $2D $2C $2C $2B $2B $2A $2A $29 $29 $28 $28
	.db $27 $26 $25 $24 $23 $22 $21 $20 $1F $1E $1D $1C $1B $1A $19 $18
	.db $17 $15 $13 $11 $0F $0D $0B $0A $09 $09 $08 $08 $07 $07 $06 $06
	.db $05 $05 $05 $04 $04 $04 $03 $03 $03 $02 $02 $02 $01 $01 $01 $01
	
; Data from 27EA9 to 27FFF (343 bytes)	
_DATA_27EA9_:	
	.dsb 16, $00
	.db $AC
	.dsb 15, $00
	.db $AD
	.dsb 15, $00
	.db $AD $AC
	.dsb 14, $00
	.db $AD $AD
	.dsb 14, $00
	.db $AD $AD $AC
	.dsb 13, $00
	.db $AD $AD $AD
	.dsb 13, $00
	.db $AD $AD $AD $AC
	.dsb 12, $00
	.db $AD $AD $AD $AD
	.dsb 12, $00
	.db $AD $AD $AD $AD $AC
	.dsb 11, $00
	.db $AD $AD $AD $AD $AD
	.dsb 11, $00
	.db $AD $AD $AD $AD $AD $AE
	.dsb 10, $00
	.db $AD $AD $AD $AD $AD $AF
	.dsb 10, $00
	.db $AD $AD $AD $AD $AD $AF $AE
	.dsb 9, $00
	.db $AD $AD $AD $AD $AD $AF $AF
	.dsb 9, $00
	.db $AD $AD $AD $AD $AD $AF $AF $B0 $00 $00 $00 $00 $00 $00 $00 $00
	.db $AD $AD $AD $AD $AD $AF $AF $B1 $00 $00 $00 $00 $00 $00 $00 $00
	.db $AD $AD $AD $AD $AD $AF $AF $B1 $B0 $00 $00 $00 $00 $00 $00 $00
	.db $AD $AD $AD $AD $AD $AF $AF $B1 $B1 $00 $00 $00 $00 $00 $00 $00
	.db $AD $AD $AD $AD $AD $AF $AF $B1 $B1 $B0 $00 $00 $00 $00 $00 $00
	.db $AD $AD $AD $AD $AD $AF $AF $B1 $B1 $B1 $00 $00 $00 $00 $00 $00
	.db $FF $FF $FF $FF $FF $FF $FF
	
.BANK 10	
.ORG $0000	
	
	; Data from 28000 to 28FFF (4096 bytes)
	.incbin "data/File21_28000_28FFF.dat"
	
; Data from 29000 to 29151 (338 bytes)	
_DATA_29000_:	
	.db $08 $00 $88 $FC $FE $F7 $F7 $FF $FE $F0 $70 $08 $00 $81 $E6 $05
	.db $F7 $82 $7F $3E $08 $00 $88 $7C $FE $F3 $7C $3E $E7 $7F $3E $08
	.db $00 $81 $E6 $02 $F7 $02 $FF $02 $F7 $81 $73 $08 $00 $83 $FE $FF
	.db $7F $04 $3C $81 $1C $08 $00 $88 $38 $7C $FE $F7 $FF $FF $F7 $73
	.db $08 $00 $88 $FC $FE $F7 $F7 $FF $FE $F7 $73 $08 $00 $88 $FC $FE
	.db $F7 $FF $FE $F7 $FF $7E $08 $00 $82 $7C $FE $04 $F7 $82 $7F $3E
	.db $08 $00 $B4 $C6 $E7 $F7 $FF $FF $F7 $F3 $71 $80 $02 $18 $24 $40
	.db $00 $8A $04 $3C $42 $99 $A1 $A1 $99 $42 $3C $3F $7F $60 $7E $3F
	.db $03 $7F $7E $7F $7F $60 $7E $7E $60 $7F $7F $3F $7F $60 $6F $6F
	.db $63 $7F $3F $1C $1C $3E $36 $02 $63 $02 $6F $81 $78 $05 $3C $9A
	.db $7C $3E $7C $FE $EF $EF $7F $3F $7F $3E $7C $FE $EF $7F $FE $EF
	.db $7F $3E $FE $FF $EF $7F $1E $1C $1C $0C $00 $09 $00 $87 $18 $11
	.db $11 $03 $1E $10 $70 $09 $00 $05 $11 $82 $03 $3E $09 $00 $87 $18
	.db $13 $00 $38 $01 $03 $3E $09 $00 $02 $11 $85 $01 $19 $11 $11 $73
	.db $09 $00 $82 $01 $47 $04 $04 $81 $1C $0A $00 $86 $18 $11 $01 $19
	.db $11 $73 $09 $00 $87 $18 $11 $11 $03 $18 $11 $73 $09 $00 $87 $18
	.db $11 $03 $18 $11 $03 $7E $09 $00 $81 $18 $04 $11 $82 $03 $3E $09
	.db $00 $03 $01 $03 $11 $88 $71 $00 $00 $04 $02 $08 $14 $20 $2A $00
	.db $05 $04 $9A $00 $3E $00 $30 $21 $21 $01 $31 $03 $3E $00 $30 $21
	.db $03 $30 $21 $03 $3E $00 $39 $21 $63 $06 $04 $04 $0C $00 $7F $00
	.db $71 $00 $00 $7F $00 $22 $00 $87 $44 $02 $18 $04 $22 $00 $48 $48
	.db $00 $00
	
; Data from 29152 to 29751 (1536 bytes)	
_DATA_29152_:	
	.db $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07
	.dsb 51, $00
	.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E
	.dsb 51, $00
	.db $0F $00 $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $00 $00 $15
	.dsb 49, $00
	.db $16 $00 $17 $00 $18 $00 $19 $00 $1A $00 $1B $00 $00 $00 $00 $00
	.db $1C
	.dsb 49, $00
	.db $1D $00 $1E $00 $00 $00 $1F
	.dsb 9, $00
	.db $20
	.dsb 45, $00
	.db $21 $00 $22
	.dsb 61, $00
	.db $23 $00 $24
	.dsb 61, $00
	.db $25
	.dsb 63, $00
	.db $26
	.dsb 15, $00
	.db $BD $00 $BE $00 $BF $00 $C0 $00 $C1 $00 $C1 $00 $C2 $00 $C3 $00
	.db $C4 $00 $00 $00 $C5 $00 $C5 $00 $C6 $00 $C6 $00 $C7 $00 $C6
	.dsb 33, $00
	.db $C8 $00 $C9 $00 $CA $00 $CB $00 $CC $00 $CC $00 $CD $00 $CE $00
	.db $CF $00 $00 $00 $D0 $00 $D1 $00 $D2 $00 $D2 $00 $D3 $00 $D2
	.dsb 87, $00
	.db $27 $00 $28 $00 $27 $00 $28 $00 $27 $00 $28 $00 $00 $00 $00 $00
	.db $27 $00 $28 $00 $00 $00 $00 $00 $27 $00 $28 $00 $00 $00 $27 $00
	.db $28 $00 $00 $00 $00 $00 $00 $00 $27 $00 $28 $00 $27 $00 $28 $00
	.db $00 $00 $27 $00 $28 $00 $27 $00 $28
	.dsb 65, $00
	.db $29 $00 $2A $00 $2B $00 $2C
	.dsb 35, $00
	.db $99 $00 $9A $00 $9B $00 $9C $00 $9A $00 $9A $00 $9B $00 $9C $00
	.db $9A $00 $9B $00 $9C $00 $2D $00 $2E $00 $2E $00 $2F $00 $30 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00
	.db $36 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $37 $00 $37 $00 $37 $00 $38 $00 $39 $00
	.db $3A $00 $3B $00 $37 $00 $3C $00 $3D $00 $3E $00 $31 $00 $31 $00
	.db $31 $00 $31 $00 $31 $00 $31 $00 $9D $00 $9E $00 $9F $00 $A0 $00
	.db $A0 $00 $A1 $00 $A2 $00 $A2 $00 $A3 $00 $A4 $00 $A4 $00 $A4 $00
	.db $A5 $00 $A6 $00 $A6 $00 $3F $00 $3F $00 $3F $00 $3F $00 $40 $00
	.db $2E $00 $41 $00 $3F $00 $42 $00 $43 $00 $44 $00 $3D $00 $45 $00
	.db $46 $00 $47 $00 $48 $00 $A7 $00 $A8 $00 $01 $01 $02 $01 $03 $01
	.db $03 $01 $03 $01 $03 $01 $A9 $00 $AA $00 $AA $00 $AA $00 $AA $00
	.db $AA $00 $AA $00 $AA $00 $49 $00 $4A $00 $4B $00 $4C $00 $4D $00
	.db $2E $00 $4E $00 $4F $00 $50 $00 $51 $00 $3F $00 $52 $00 $53 $00
	.db $54 $00 $55 $00 $56 $00 $AB $00 $AC $00 $04 $01 $05 $01 $06 $01
	.db $07 $01 $08 $01 $09 $01 $AD $00 $AE $00 $AE $00 $AE $00 $AE $00
	.db $AE $00 $AE $00 $AE $00 $57 $00 $58 $00 $59 $00 $5A $00 $5B $00
	.db $2E $00 $2E $00 $5C $00 $5D $00 $5E $00 $3F $00 $5F $00 $60 $00
	.db $61 $00 $62 $00 $63 $00 $AF $00 $B0 $00 $0A $01 $0B $01 $0C $01
	.db $0D $01 $0E $01 $0F $01 $B1 $00 $AE $00 $AE $00 $AE $00 $AE $00
	.db $AE $00 $AE $00 $AE $00 $64 $00 $65 $00 $66 $00 $67 $00 $68 $00
	.db $2E $00 $69 $00 $6A $00 $6B $00 $6C $00 $3F $00 $6D $00 $6E $00
	.db $6F $00 $70 $00 $70 $00 $B2 $00 $B3 $00 $10 $01 $11 $01 $12 $01
	.db $13 $01 $14 $01 $15 $01 $B4 $00 $B5 $00 $B5 $00 $B5 $00 $B5 $00
	.db $B5 $00 $B5 $00 $B5 $00 $71 $00 $72 $00 $73 $00 $74 $00 $75 $00
	.db $2E $00 $76 $00 $77 $00 $78 $00 $79 $00 $3F $00 $7A $00 $7B $00
	.db $7B $00 $7C $00 $7D $00 $B6 $00 $B7 $00 $16 $01 $17 $01 $18 $01
	.db $19 $01 $1A $01 $1B $01 $7B $00 $7B $00 $7B $00 $7B $00 $7B $00
	.db $7B $00 $7B $00 $7B $00 $7E $00 $7F $00 $80 $00 $81 $00 $2E $00
	.db $82 $00 $83 $00 $84 $00 $84 $00 $85 $00 $86 $00 $87 $00 $88 $00
	.db $89 $00 $8A $00 $8B $00 $B8 $00 $B9 $00 $1C $01 $1D $01 $1E $01
	.db $1F $01 $20 $01 $21 $01 $3F $00 $3F $00 $3F $00 $3F $00 $3F $00
	.db $3F $00 $3F $00 $3F $00 $8C $00 $8D $00 $8E $00 $2E $00 $8F $00
	.db $90 $00 $91 $00 $91 $00 $91 $00 $92 $00 $93 $00 $94 $00 $95 $00
	.db $96 $00 $97 $00 $98 $00 $BA $00 $BB $00 $22 $01 $23 $01 $24 $01
	.db $25 $01 $26 $01 $27 $01 $BC $00 $3F $00 $3F $00 $3F $00 $3F $00
	.db $3F $00 $3F $00 $3F $00
	
; 1st entry of Pointer Table from 14FB (indexed by _RAM_DE2D_)	
; Data from 29752 to 297A9 (88 bytes)	
_DATA_29752_:	
	.db $BD $00 $BE $00 $D4 $00 $C0 $00 $C4 $00 $C2 $00 $D5 $00 $C0 $00
	.db $D6 $00 $00 $00 $C1 $00 $D7 $00 $D8 $00 $C3 $00 $D9 $00 $00 $00
	.db $C1 $00 $DA $00 $D7 $00 $D8 $00 $C6 $00 $C5 $00 $C8 $00 $C9 $00
	.db $CE $00 $CB $00 $CF $00 $CD $00 $DB $00 $CB $00 $DC $00 $00 $00
	.db $CC $00 $DD $00 $DD $00 $CE $00 $DE $00 $00 $00 $CC $00 $D1 $00
	.db $DD $00 $DF $00 $D2 $00 $D1 $00
	
; 3rd entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 297AA to 29801 (88 bytes)	
_DATA_297AA_:	
	.db $00 $00 $00 $00 $00 $00 $BD $00 $BE $00 $BF $00 $C0 $00 $C1 $00
	.db $C1 $00 $C2 $00 $C3 $00 $C4 $00 $00 $00 $C5 $00 $C5 $00 $C6 $00
	.db $C6 $00 $C7 $00 $C6
	.dsb 13, $00
	.db $C8 $00 $C9 $00 $CA $00 $CB $00 $CC $00 $CC $00 $CD $00 $CE $00
	.db $CF $00 $00 $00 $D0 $00 $D1 $00 $D2 $00 $D2 $00 $D3 $00 $D2 $00
	.db $00 $00 $00 $00 $00 $00
	
; 6th entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 29802 to 29859 (88 bytes)	
_DATA_29802_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $BD $00 $BE $00 $C1 $00 $BF $00
	.db $D6 $00 $C0 $00 $C1 $00 $DA $00 $00 $00 $00 $00 $D8 $00 $C0 $00
	.db $D8 $00 $C6
	.dsb 17, $00
	.db $C8 $00 $C9 $00 $CC $00 $CA $00 $DC $00 $CB $00 $CC $00 $D1 $00
	.db $00 $00 $00 $00 $DF $00 $CB $00 $E0 $00 $D2
	.dsb 9, $00
	
; 2nd entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 2985A to 298AD (84 bytes)	
_DATA_2985A_:	
	.db $01 $01 $02 $01 $03 $01 $28 $01 $29 $01 $2A $01 $2B $01 $2C $01
	.db $2D $01 $2E $01 $2F $01 $30 $01 $31 $01 $32 $01 $33 $01 $34 $01
	.db $35 $01 $36 $01 $37 $01 $38 $01 $39 $01 $3A $01 $3B $01 $3C $01
	.db $3D $01 $3E $01 $3F $01 $40 $01 $41 $01 $42 $01 $43 $01 $44 $01
	.db $45 $01 $46 $01 $47 $01 $48 $01 $49 $01 $4A $01 $27 $01 $4B $01
	.db $4C $01 $27 $01
	
; 5th entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 298AE to 29901 (84 bytes)	
_DATA_298AE_:	
	.db $01 $01 $02 $01 $03 $01 $03 $01 $03 $01 $03 $01 $04 $01 $05 $01
	.db $06 $01 $07 $01 $08 $01 $09 $01 $0A $01 $0B $01 $0C $01 $0D $01
	.db $0E $01 $0F $01 $10 $01 $11 $01 $12 $01 $13 $01 $14 $01 $15 $01
	.db $16 $01 $17 $01 $18 $01 $19 $01 $1A $01 $1B $01 $1C $01 $1D $01
	.db $1E $01 $1F $01 $20 $01 $21 $01 $22 $01 $23 $01 $24 $01 $25 $01
	.db $26 $01 $27 $01
	
; 8th entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 29902 to 29955 (84 bytes)	
_DATA_29902_:	
	.db $01 $01 $02 $01 $4D $01 $4E $01 $03 $01 $03 $01 $04 $01 $4F $01
	.db $50 $01 $51 $01 $52 $01 $09 $01 $53 $01 $54 $01 $55 $01 $56 $01
	.db $57 $01 $58 $01 $59 $01 $5A $01 $5B $01 $5C $01 $5D $01 $3C $01
	.db $5E $01 $5F $01 $60 $01 $61 $01 $62 $01 $42 $01 $63 $01 $64 $01
	.db $65 $01 $66 $01 $67 $01 $48 $01 $68 $01 $69 $01 $6A $01 $6B $01
	.db $6C $01 $27 $01
	
; 1st entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 29956 to 29961 (12 bytes)	
_DATA_29956_:	
	.db $E1 $00 $E2 $00 $E3 $00 $E4 $00 $E5 $00 $E6 $00
	
; 4th entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 29962 to 2996D (12 bytes)	
_DATA_29962_:	
	.db $55 $00 $56 $00 $AB $00 $62 $00 $63 $00 $AF $00
	
; 7th entry of Pointer Table from 14FD (indexed by _RAM_DE2D_)	
; Data from 2996E to 29979 (12 bytes)	
_DATA_2996E_:	
	.db $E7 $00 $E8 $00 $E9 $00 $EA $00 $E5 $00 $AF $00
	
; Data from 2997A to 299B9 (64 bytes)	
_DATA_2997A_:	
	.db $EB $00 $EC $00 $70 $00 $B2 $00 $EB $00 $EC $00 $ED $00 $B2 $00
	.db $EB $00 $EC $00 $EE $00 $B2 $00 $EB $00 $EC $00 $EF $00 $B2 $00
	.db $EB $00 $EC $00 $F0 $00 $B2 $00 $EB $00 $EC $00 $F0 $00 $F1 $00
	.db $EB $00 $EC $00 $F0 $00 $F2 $00 $EB $00 $EC $00 $F0 $00 $F3 $00
	
; Data from 299BA to 299D9 (32 bytes)	
_DATA_299BA_:	
	.db $39 $3F $2A $00 $01 $06 $03 $1B $1F $0C $08 $04 $20 $30 $3C $38
	.db $39
	.dsb 15, $00
	
; Data from 299DA to 2AFC2 (5609 bytes)	
_DATA_299DA_:	
	.incbin "data/File22_299DA_2AFC2.dat"
	
; Data from 2AFC3 to 2BF5A (3992 bytes)	
_DATA_2AFC3_:	
	.incbin "data/File23_2AFC3_2BF5A.dat"
	
; Data from 2BF5B to 2BFB4 (90 bytes)	
_DATA_2BF5B_:	
	.db $38 $2F $2A $29 $3F $29 $3D $1E $2A $29 $3F $29 $0B $2E $2A $29
	.db $3F $29 $30 $2B $2A $1A $2A $1A $31 $0D $2A $29 $3F $29 $39 $1E
	.db $2A $29 $3F $29 $29 $0B $2A $1A $2A $1A $20 $01 $10 $00 $3F $00
	.db $1B $05 $2A $29 $3F $29 $35 $0B $2A $29 $3F $29 $39 $0D $2A $29
	.db $3F $29 $34 $06 $2A $29 $3F $29 $28 $2B $2A $29 $3F $29 $35 $2E
	.db $24 $20 $3F $20 $3B $2F $2A $29 $3F $29
	
; Data from 2BFB5 to 2BFFF (75 bytes)	
_DATA_2BFB5_:	
	.db $BF $19 $00 $09 $C0 $19 $C1 $19 $C2 $19 $C3 $19 $00 $09 $C4 $19
	.db $C5 $19 $C6 $19 $C7 $19
	.dsb 53, $FF
	
.BANK 11	
.ORG $0000	
	
; Data from 2C000 to 2F090 (12433 bytes)	
_DATA_2C000_:	
	.incbin "data/File24_2C000_2F090.dat"
	
; Data from 2F091 to 2F39E (782 bytes)	
_DATA_2F091_:	
	.db $01 $07 $0F $3F $6F $CF $06 $00 $82 $F1 $FF $00 $00 $D5 $2A $05
	.db $FD $B0 $00 $D4 $00 $00 $FD $B0 $C0 $D5 $28 $04 $CF $B1 $C0 $D6
	.db $06 $0B $6F $B2 $48 $D6 $1E $03 $B1 $B2 $08 $D7 $04 $09 $0B $B3
	.db $D0 $D6 $14 $03 $2F $B3 $90 $D7 $02 $05 $6B $B3 $56 $D7 $0E $02
	.db $75 $B3 $D6 $D7 $02 $03 $91 $B3 $9A $D7 $08 $01 $97 $B3 $DA $D7
	.db $02 $02 $9F $B3 $DC $D7 $06 $01 $A3 $B3 $1C $D8 $02 $01 $A9 $B3
	.db $DE $D7 $04 $01 $AB $B3 $1E $D8 $02 $01 $AF $B3 $2C $08 $2D $08
	.db $2E $08 $2F $08 $30 $08 $31 $08 $32 $08 $33 $08 $33 $08 $34 $08
	.db $2C $08 $2D $08 $2E $08 $2F $08 $35 $08 $36 $08 $37 $08 $38 $08
	.db $39 $08 $3A $08 $3B $08 $3C $08 $3D $08 $3E $08 $3F $08 $40 $08
	.db $41 $08 $42 $08 $43 $08 $44 $08 $45 $08 $3C $08 $3D $08 $3E $08
	.db $3F $08 $46 $08 $47 $08 $48 $08 $49 $08 $4A $08 $4B $08 $4C $08
	.db $4D $08 $48 $08 $48 $08 $3F $08 $4E $08 $4E $08 $42 $08 $4E $08
	.db $4E $08 $4F $08 $4D $08 $48 $08 $48 $08 $3F $08 $50 $08 $51 $08
	.db $48 $08 $49 $08 $52 $08 $53 $08 $54 $08 $3C $0C $3D $0C $3E $0C
	.db $3F $08 $40 $08 $41 $08 $42 $08 $43 $0C $44 $0C $45 $0C $3C $0C
	.db $3D $0C $3E $0C $3F $08 $55 $08 $3F $0A $48 $08 $49 $08 $56 $08
	.db $57 $08 $58 $08 $2C $0C $2D $0C $2E $0C $2F $0C $30 $0C $31 $0C
	.db $32 $0C $33 $0C $33 $0C $34 $0C $2C $0C $2D $0C $2E $0C $2F $0C
	.db $59 $08 $2F $0E $37 $0C $38 $0C $39 $0C $3A $0C $3B $0C $5A $08
	.db $5B $08 $5C $08 $5D $08 $5E $08 $5F $08 $60 $08 $61 $08 $62 $08
	.db $63 $08 $64 $08 $61 $08 $5E $08 $5F $08 $60 $08 $65 $08 $66 $08
	.db $5C $0A $5B $0A $5A $0A $67 $08 $68 $08 $69 $08 $48 $08 $6A $08
	.db $6B $08 $6C $08 $6D $08 $6E $08 $3F $08 $6F $08 $70 $08 $6A $08
	.db $6B $08 $6C $08 $71 $08 $72 $08 $69 $0A $68 $0A $67 $0A $73 $08
	.db $74 $08 $75 $08 $48 $08 $76 $08 $77 $08 $78 $08 $79 $08 $7A $08
	.db $3F $08 $7B $08 $7C $08 $76 $08 $77 $08 $78 $08 $7D $08 $7E $08
	.db $75 $0A $74 $0A $73 $0A $7F $08 $80 $08 $81 $08 $37 $0C $82 $08
	.db $83 $08 $84 $08 $85 $08 $86 $08 $87 $08 $88 $08 $85 $08 $82 $08
	.db $83 $08 $84 $08 $89 $08 $86 $0A $81 $0A $80 $0A $7F $0A $8A $08
	.db $8B $08 $8A $0A $8A $0C $8B $0C $8A $0E $8A $08 $8B $08 $8A $0A
	.db $8A $0C $8B $0C $8A $0E $8A $08 $8B $08 $8A $0A $8C $08 $8D $08
	.db $8C $0A $8C $0C $8D $0C $8C $0E $8C $08 $8D $08 $8C $0A $8C $0C
	.db $8D $0C $8C $0E $8C $08 $8D $08 $8C $0A $8E $08 $8F $08 $8E $0A
	.db $90 $08 $91 $08 $92 $08 $93 $08 $94 $08 $95 $08 $96 $08 $97 $08
	.db $98 $08 $93 $08 $94 $08 $99 $08 $9A $08 $9B $08 $9C $08 $9D $08
	.db $9E $08 $9F $08 $A0 $08 $A1 $08 $A2 $08 $A3 $08 $A4 $08 $A5 $08
	.db $A0 $08 $A1 $08 $A6 $08 $A7 $08 $A8 $08 $A9 $08 $AA $08 $AB $08
	.db $AC $08 $AD $08 $AE $08 $AF $08 $B0 $08 $B1 $08 $B2 $08 $AD $08
	.db $AE $08 $AF $08 $B3 $08 $B4 $08 $B5 $08 $B6 $08 $B6 $0A $B6 $0C
	.db $B6 $0E $B6 $08 $B6 $0A $B6 $0C $B6 $0E $B7 $08 $B7 $0A $B7 $0C
	.db $B7 $0E $B7 $08 $B7 $0A $B7 $08 $B7 $0A $B8 $08 $B8 $0A $B9 $08
	.db $BA $08 $BB $08 $BC $08 $BD $08 $BE $08 $BF $08 $C0 $08 $C1 $08
	.db $C2 $08 $C3 $08 $C4 $08 $C5 $08 $C6 $08 $C7 $08 $C8 $08 $C9 $08
	.db $CA $08 $CB $08 $CC $08 $CD $08 $CE $08 $CF $08 $D0 $08 $D1 $08
	.db $D2 $08 $D3 $08 $D4 $08 $D5 $08 $D6 $08 $D7 $08 $D7 $08 $D7 $08
	.db $D7 $08 $D8 $08 $D9 $08 $DA $08 $DB $08 $DC $08 $DD $08 $DE $08
	.db $DF $08 $E0 $08 $E1 $08 $E2 $08 $E3 $08 $E4 $08 $E5 $08 $E6 $08
	.db $E7 $08 $E8 $08 $E9 $08 $EA $08 $EB $08 $EB $08 $EC $08
	
; Data from 2F39F to 2FFFF (3169 bytes)	
_DATA_2F39F_:	
	.incbin "data/File25_2F39F_2FFFF.dat"
	
.BANK 12	
.ORG $0000	
	
; 1st entry of Pointer Table from 380F (indexed by unknown)	
; Data from 30000 to 3077F (1920 bytes)	
_DATA_30000_:	
	.incbin "data/File26_30000_3077F.dat"
	
; 2nd entry of Pointer Table from 380F (indexed by unknown)	
; Data from 30780 to 30EFF (1920 bytes)	
_DATA_30780_:	
	.incbin "data/File27_30780_30EFF.dat"
	
; 3rd entry of Pointer Table from 380F (indexed by unknown)	
; Data from 30F00 to 3167F (1920 bytes)	
_DATA_30F00_:	
	.incbin "data/File28_30F00_3167F.dat"
	
; 4th entry of Pointer Table from 380F (indexed by unknown)	
; Data from 31680 to 32ED2 (6227 bytes)	
_DATA_31680_:	
	.incbin "data/File29_31680_32ED2.dat"
	
; Data from 32ED3 to 33FFF (4397 bytes)	
_DATA_32ED3_:	
	.incbin "data/File30_32ED3_33FFF.dat"
	
.BANK 13	
.ORG $0000	
	
; Data from 34000 to 345FF (1536 bytes)	
_DATA_34000_:	
	.incbin "data/File31_34000_345FF.dat"
	
; Data from 34600 to 34673 (116 bytes)	
_DATA_34600_:	
	.db $2A $09 $2B $09 $2C $09 $2D $09 $2E $09 $2E $09 $2F $09 $30 $09
	.db $31 $09 $32 $09 $33 $09 $34 $09 $35 $09 $36 $09 $37 $09 $38 $09
	.db $39 $09 $3A $09 $3B $09 $3C $09 $3D $09 $3E $09 $3F $09 $40 $09
	.db $41 $09 $42 $09 $43 $09 $44 $09 $45 $09 $46 $09 $47 $09 $48 $09
	.db $49 $09 $4A $09 $4B $09 $4C $09 $4D $09 $4E $09 $4F $09 $50 $09
	.db $4A $09 $51 $09 $52 $09 $48 $09 $4B $09 $53 $09 $54 $09 $55 $09
	.db $56 $09 $57 $09 $58 $09 $59 $09 $5A $09 $5B $09 $5C $09 $5D $09
	.db $5E $09 $5F $09
	
; Data from 34674 to 34693 (32 bytes)	
_DATA_34674_:	
	.db $00 $33 $2A $00 $01 $06 $03 $1B $1F $0C $08 $04 $20 $30 $3C $38
	.db $00 $3F $2A $00 $01 $06 $03 $1B $1F $0C $08 $04 $20 $30 $3C $38
	
; Data from 34694 to 356C3 (4144 bytes)	
_DATA_34694_:	
	.incbin "data/File32_34694_356C3.dat"
	
; Data from 356C4 to 37F33 (10352 bytes)	
_DATA_356C4_:	
	.incbin "data/File33_356C4_37F33.dat"
	
; Data from 37F34 to 37FFF (204 bytes)	
_DATA_37F34_:	
	.db $08 $00 $84 $08 $16 $05 $08 $04 $00 $89 $0E $18 $49 $91 $22 $24
	.db $22 $14 $08 $07 $00 $8A $04 $00 $00 $40 $02 $05 $22 $50 $20 $12
	.db $06 $00 $00 $09 $00 $83 $06 $04 $08 $05 $00 $87 $01 $03 $63 $4E
	.db $1C $0E $04 $0A $00 $89 $10 $00 $08 $03 $02 $20 $20 $00 $10 $05
	.db $00 $00 $09 $00 $83 $06 $04 $08 $24 $00 $00 $08 $00 $81 $04 $02
	.db $08 $06 $00 $89 $06 $04 $0C $90 $00 $10 $08 $04 $08 $07 $00 $84
	.db $12 $00 $08 $90 $0B $00 $00
	.dsb 101, $FF
	
.BANK 14	
.ORG $0000	
	
	; Data from 38000 to 3BFFF (16384 bytes)
	.incbin "data/File34_38000_3BFFF.dat"
	
.BANK 15	
.ORG $0000	
	
; Data from 3C000 to 3C01F (32 bytes)	
_DATA_3C000_:	
	.db $1B $3F $2A $00 $11 $16 $23 $2B $2F $0C $08 $04 $20 $30 $3C $33
	.db $1B $3F $2A $00 $01 $06 $03 $1B $1F $0C $08 $04 $20 $30 $3C $33
	
; Data from 3C020 to 3CE77 (3672 bytes)	
_DATA_3C020_:	
	.incbin "data/File35_3C020_3CE77.dat"
	
; Data from 3CE78 to 3D746 (2255 bytes)	
_DATA_3CE78_:	
	.incbin "data/File36_3CE78_3D746.dat"
	
; Data from 3D747 to 3E8C4 (4478 bytes)	
_DATA_3D747_:	
	.incbin "data/File37_3D747_3E8C4.dat"
	
; Data from 3E8C5 to 3E9D3 (271 bytes)	
_DATA_3E8C5_:	
	.db $03 $00 $8C $01 $03 $03 $02 $07 $06 $05 $04 $0D $0B $0A $0F $04
	.db $00 $88 $F8 $58 $F8 $B8 $F0 $B0 $70 $30 $03 $60 $81 $C0 $04 $00
	.db $8C $01 $03 $02 $02 $04 $06 $07 $07 $0F $0C $0B $0F $04 $00 $8C
	.db $F8 $D8 $38 $18 $30 $B0 $F0 $70 $E0 $60 $E0 $C0 $09 $00 $88 $7F
	.db $60 $5E $5E $60 $7F $6F $3F $07 $00 $89 $40 $B0 $3C $A2 $1E $52
	.db $FE $DE $FE $00 $03 $00 $8C $01 $03 $03 $02 $07 $07 $06 $07 $0D
	.db $0B $0B $0F $04 $00 $81 $F8 $03 $E8 $02 $D0 $82 $10 $D0 $03 $A0
	.db $81 $C0 $04 $00 $81 $01 $03 $03 $82 $06 $04 $02 $07 $02 $0F $82
	.db $0C $0F $04 $00 $81 $F8 $03 $E8 $82 $90 $50 $02 $D0 $02 $A0 $82
	.db $20 $C0 $09 $00 $04 $7F $84 $5F $50 $7F $3F $07 $00 $87 $40 $F0
	.db $4C $5E $6E $AE $22 $02 $FE $00 $04 $00 $81 $01 $03 $00 $84 $02
	.db $03 $03 $05 $02 $03 $06 $00 $85 $F0 $10 $D0 $20 $A0 $02 $E0 $03
	.db $C0 $06 $00 $04 $01 $84 $03 $00 $03 $00 $02 $07 $06 $00 $03 $F0
	.db $85 $20 $E0 $20 $A0 $40 $02 $C0 $0B $00 $85 $3E $2C $20 $3F $2F
	.db $0A $00 $86 $40 $D0 $DC $7C $FC $DC $02 $00 $00 $06 $00 $81 $01
	.db $03 $00 $82 $03 $02 $02 $04 $0B $00 $82 $C0 $80 $0B $00 $83 $01
	.db $00 $03 $0D $00 $82 $C0 $40 $22 $00 $82 $90 $A0 $04 $00 $00
	
; Data from 3E9D4 to 3E9FB (40 bytes)	
_DATA_3E9D4_:	
	.db $7E $19 $87 $19 $7F $19 $88 $19 $80 $19 $89 $19 $81 $19 $8A $19
	.db $82 $19 $8B $19 $83 $19 $8C $19 $84 $19 $87 $19 $85 $19 $8D $19
	.db $86 $19 $8E $19 $7E $19 $8F $19
	
; Data from 3E9FC to 3EA77 (124 bytes)	
_DATA_3E9FC_:	
	.db $7E $19 $00 $19 $7E $19 $00 $19 $00 $19 $00 $19 $00 $19 $00 $19
	.db $91 $19 $7E $19 $7E $19 $7E $19 $7E $19 $7E $19 $7E $19 $00 $19
	.db $00 $19 $00 $19 $87 $19 $90 $19 $87 $19 $92 $19 $93 $19 $94 $19
	.db $95 $19 $00 $19 $96 $19 $87 $19 $87 $19 $87 $19 $87 $19 $87 $19
	.db $87 $19 $97 $19 $98 $19 $99 $19 $9A $19 $9B $19 $9C $19 $9D $19
	.db $9E $19 $00 $19 $9F $19 $9B $19 $A0 $19 $9C $19 $A1 $19 $9E $19
	.db $00 $19 $A2 $19 $A3 $19 $A4 $19 $A3 $19 $A5 $19 $00 $19 $A6 $19
	.db $A3 $19 $A7 $19 $A4 $19 $A8 $19 $A5 $19 $A9 $19
	
; Data from 3EA78 to 3FB77 (4352 bytes)	
_DATA_3EA78_:	
	.incbin "data/File38_3EA78_3FB77.dat"
	
; 1st entry of Pointer Table from 228E (indexed by unknown)	
; Data from 3FB78 to 3FBDB (100 bytes)	
_DATA_3FB78_:	
	.db $01 $09 $02 $09 $03 $09 $04 $09 $05 $09 $06 $09 $07 $09 $03 $0B
	.db $02 $09 $01 $0B $08 $09 $09 $09 $0A $09 $0B $09 $0C $09 $0D $09
	.db $0E $09 $0F $09 $10 $09 $11 $09 $12 $09 $13 $09 $14 $09 $15 $09
	.db $16 $09 $17 $09 $18 $09 $19 $09 $1A $09 $1B $09 $1C $09 $1D $09
	.db $1E $09 $1F $09 $20 $09 $21 $09 $22 $09 $23 $09 $24 $09 $25 $09
	.db $26 $09 $02 $09 $02 $09 $02 $09 $27 $09 $28 $09 $29 $09 $2A $09
	.db $02 $09 $26 $0B
	
; 2nd entry of Pointer Table from 228E (indexed by unknown)	
; Data from 3FBDC to 3FC3F (100 bytes)	
_DATA_3FBDC_:	
	.db $2B $09 $2C $09 $2D $09 $2E $09 $05 $09 $06 $09 $07 $09 $2F $09
	.db $30 $09 $31 $09 $32 $09 $33 $09 $34 $09 $0B $09 $0C $09 $0D $09
	.db $35 $09 $36 $09 $37 $09 $38 $09 $39 $09 $13 $09 $14 $09 $15 $09
	.db $16 $09 $17 $09 $18 $09 $3A $09 $3B $09 $1B $09 $1C $09 $1D $09
	.db $1E $09 $1F $09 $20 $09 $21 $09 $22 $09 $23 $09 $24 $09 $25 $09
	.db $26 $09 $02 $09 $02 $09 $02 $09 $27 $09 $28 $09 $29 $09 $2A $09
	.db $02 $09 $26 $0B
	
; 3rd entry of Pointer Table from 228E (indexed by unknown)	
; Data from 3FC40 to 3FCA3 (100 bytes)	
_DATA_3FC40_:	
	.db $2B $09 $3C $09 $3D $09 $2E $09 $05 $09 $06 $09 $07 $09 $3E $09
	.db $3F $09 $31 $09 $32 $09 $40 $09 $41 $09 $0B $09 $0C $09 $0D $09
	.db $42 $09 $43 $09 $37 $09 $38 $09 $39 $09 $13 $09 $14 $09 $15 $09
	.db $16 $09 $17 $09 $18 $09 $3A $09 $3B $09 $1B $09 $1C $09 $1D $09
	.db $1E $09 $1F $09 $20 $09 $21 $09 $22 $09 $23 $09 $24 $09 $25 $09
	.db $26 $09 $02 $09 $02 $09 $02 $09 $27 $09 $28 $09 $29 $09 $2A $09
	.db $02 $09 $26 $0B
	
; 4th entry of Pointer Table from 228E (indexed by unknown)	
; Data from 3FCA4 to 3FD07 (100 bytes)	
_DATA_3FCA4_:	
	.db $2B $09 $2C $09 $44 $09 $2E $09 $45 $09 $46 $09 $47 $09 $48 $09
	.db $49 $09 $31 $09 $32 $09 $4A $09 $4B $09 $0B $09 $4C $09 $0D $09
	.db $4D $09 $4E $09 $37 $09 $38 $09 $39 $09 $4F $09 $14 $09 $15 $09
	.db $16 $09 $17 $09 $50 $09 $51 $09 $3B $09 $1B $09 $52 $09 $53 $09
	.db $54 $09 $1F $09 $20 $09 $21 $09 $55 $09 $56 $09 $24 $09 $25 $09
	.db $57 $09 $58 $09 $02 $09 $02 $09 $27 $09 $59 $09 $5A $09 $5B $09
	.db $02 $09 $26 $0B
	
; 5th entry of Pointer Table from 228E (indexed by unknown)	
; Data from 3FD08 to 3FD6B (100 bytes)	
_DATA_3FD08_:	
	.db $2B $09 $2C $09 $5C $09 $2E $09 $5D $09 $5E $09 $5F $09 $48 $09
	.db $49 $09 $31 $09 $32 $09 $60 $09 $61 $09 $0B $09 $62 $09 $63 $09
	.db $64 $09 $4E $09 $37 $09 $38 $09 $39 $09 $4F $09 $14 $09 $15 $09
	.db $65 $09 $66 $09 $67 $09 $51 $09 $3B $09 $1B $09 $52 $09 $53 $09
	.db $54 $09 $1F $09 $20 $09 $21 $09 $55 $09 $56 $09 $24 $09 $25 $09
	.db $57 $09 $58 $09 $02 $09 $02 $09 $27 $09 $59 $09 $5A $09 $5B $09
	.db $02 $09 $26 $0B
	
; Data from 3FD6C to 3FDA7 (60 bytes)	
_DATA_3FD6C_:	
	.db $01 $08 $02 $08 $03 $08 $04 $08 $05 $08 $06 $08 $07 $08 $08 $08
	.db $09 $08 $0A $08 $0B $08 $0C $08 $0D $08 $0E $08 $0F $08 $10 $08
	.db $11 $08 $12 $08 $13 $08 $14 $08 $15 $08 $16 $08 $17 $08 $18 $08
	.db $19 $08 $1A $08 $1B $08 $1C $08 $1D $08 $1E $08
	
; Data from 3FDA8 to 3FFFF (600 bytes)	
_DATA_3FDA8_:	
	.db $91 $10 $20 $0C $7C $D8 $D8 $B0 $90 $3C $2A $62 $78 $7E $7E $DE
	.db $5E $28 $03 $30 $02 $38 $95 $78 $48 $4C $4C $44 $C4 $C4 $24 $04
	.db $02 $10 $20 $0C $7C $D8 $D8 $B0 $B4 $1C $4A $44 $03 $68 $84 $8C
	.db $14 $68 $78 $03 $68 $02 $28 $06 $20 $94 $60 $70 $0C $10 $20 $0E
	.db $7E $7C $CE $87 $F6 $3C $2A $62 $18 $28 $38 $1C $04 $18 $07 $38
	.db $05 $34 $83 $24 $34 $02 $03 $00 $88 $9F $DF $40 $7F $00 $0C $0D
	.db $04 $02 $06 $06 $00 $9B $30 $FC $3F $9F $F7 $EB $DD $AC $46 $83
	.db $01 $00 $00 $06 $0B $0E $07 $6B $A4 $3A $57 $E3 $E0 $E0 $00 $20
	.db $C0 $04 $00 $88 $80 $00 $02 $07 $0E $FC $F8 $F0 $06 $00 $00 $92
	.db $10 $20 $08 $50 $88 $80 $10 $00 $2C $24 $44 $58 $1A $1A $CA $40
	.db $20 $30 $02 $10 $02 $28 $95 $68 $48 $4C $4C $44 $C4 $C4 $24 $04
	.db $02 $10 $20 $08 $50 $88 $80 $10 $24 $0C $44 $40 $03 $28 $85 $0C
	.db $10 $28 $30 $20 $04 $28 $07 $20 $92 $30 $0C $10 $20 $0A $42 $4C
	.db $82 $01 $22 $2C $24 $44 $08 $28 $18 $08 $00 $08 $08 $05 $14 $83
	.db $04 $14 $02 $03 $00 $88 $80 $C0 $4F $7F $00 $0C $0C $04 $02 $06
	.db $06 $00 $8B $30 $0C $C3 $E0 $C8 $1C $3E $6F $C7 $83 $01 $04 $00
	.db $86 $0E $05 $4A $80 $02 $03 $03 $00 $02 $E0 $81 $C0 $06 $00 $86
	.db $02 $07 $08 $D8 $70 $10 $06 $00 $00 $91 $10 $20 $08 $70 $F8 $FC
	.db $F8 $90 $3C $3E $7E $7C $7E $7E $FE $7E $68 $03 $30 $02 $38 $9C
	.db $78 $48 $4C $4C $44 $C4 $C4 $24 $04 $02 $10 $20 $08 $70 $F8 $FC
	.db $F8 $B4 $1C $5E $5E $6C $68 $68 $EC $F4 $F8 $78 $03 $68 $02 $28
	.db $06 $20 $91 $60 $70 $0C $10 $20 $0A $72 $7C $FE $FF $F6 $3C $3E
	.db $7E $1C $28 $38 $02 $3C $08 $38 $05 $34 $91 $24 $34 $02 $00 $80
	.db $C0 $40 $20 $30 $00 $0C $02 $02 $03 $01 $01 $03 $05 $00 $84 $30
	.db $1C $03 $01 $09 $00 $8C $06 $0F $01 $02 $7B $FF $FE $FF $7F $3E
	.db $18 $10 $06 $00 $02 $80 $86 $82 $07 $0E $FC $F8 $F0 $06 $00 $00
	.db $92 $28 $5C $70 $80 $04 $00 $00 $78 $50 $5E $9E $84 $80 $80 $34
	.db $BC $DC $0C $02 $08 $03 $04 $81 $24 $02 $22 $02 $02 $96 $22 $12
	.db $02 $01 $28 $5C $70 $80 $04 $00 $00 $58 $70 $3E $3E $14 $10 $10
	.db $70 $EC $94 $0C $05 $14 $02 $18 $05 $10 $93 $08 $00 $28 $5C $70
	.db $80 $82 $01 $00 $5C $50 $5E $9E $E4 $14 $00 $34 $3C $24 $07 $04
	.db $05 $02 $83 $12 $0A $01 $14 $00 $81 $02 $0E $00 $89 $08 $34 $7F
	.db $FD $F8 $7C $3E $18 $10 $07 $00 $84 $01 $05 $00 $90 $09 $00 $00
	.dsb 72, $FF
	
