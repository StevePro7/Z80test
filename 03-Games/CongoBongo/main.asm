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
	
.enum $C065 export	
_RAM_C065_ dw	
_RAM_C067_ db	
_RAM_C068_ db	
_RAM_C069_ db	
_RAM_C06A_ db	
_RAM_C06B_ dw	
_RAM_C06D_ db	
_RAM_C06E_ dsb $7	
.ende	
	
.enum $C079 export	
_RAM_C079_ db	
_RAM_C07A_ db	
_RAM_C07B_ db	
_RAM_C07C_ db	
_RAM_C07D_ db	
_RAM_C07E_ db	
_RAM_C07F_ db	
_RAM_C080_ db	
.ende	
	
.enum $C083 export	
_RAM_C083_ dsb $3	
_RAM_C086_ db	
_RAM_C087_ db	
.ende	
	
.enum $C089 export	
_RAM_C089_ db	
.ende	
	
.enum $C08B export	
_RAM_C08B_ db	
_RAM_C08C_ db	
_RAM_C08D_ db	
.ende	
	
.enum $C090 export	
_RAM_C090_ db	
_RAM_C091_ dsb $8	
_RAM_C099_ db	
.ende	
	
.enum $C0A1 export	
_RAM_C0A1_ db	
.ende	
	
.enum $C0A5 export	
_RAM_C0A5_ db	
.ende	
	
.enum $C0B9 export	
_RAM_C0B9_ db	
.ende	
	
.enum $C0C5 export	
_RAM_C0C5_ db	
.ende	
	
.enum $C0C9 export	
_RAM_C0C9_ db	
.ende	
	
.enum $C0CD export	
_RAM_C0CD_ db	
.ende	
	
.enum $C0D1 export	
_RAM_C0D1_ db	
.ende	
	
.enum $C0D5 export	
_RAM_C0D5_ db	
.ende	
	
.enum $C115 export	
_RAM_C115_ db	
.ende	
	
.enum $C13D export	
_RAM_C13D_ db	
.ende	
	
.enum $C155 export	
_RAM_C155_ db	
.ende	
	
.enum $C175 export	
_RAM_C175_ db	
.ende	
	
.enum $C18D export	
_RAM_C18D_ db	
_RAM_C18E_ db	
_RAM_C18F_ db	
_RAM_C190_ db	
_RAM_C191_ db	
_RAM_C192_ db	
_RAM_C193_ db	
_RAM_C194_ db	
_RAM_C195_ dsb $5	
_RAM_C19A_ db	
.ende	
	
.enum $C19D export	
_RAM_C19D_ dsb $7	
_RAM_C1A4_ db	
.ende	
	
.enum $C1A7 export	
_RAM_C1A7_ db	
_RAM_C1A8_ db	
.ende	
	
.enum $C1B9 export	
_RAM_C1B9_ db	
_RAM_C1BA_ db	
_RAM_C1BB_ db	
.ende	
	
.enum $C1BE export	
_RAM_C1BE_ db	
.ende	
	
.enum $C1C1 export	
_RAM_C1C1_ db	
_RAM_C1C2_ db	
_RAM_C1C3_ db	
_RAM_C1C4_ db	
_RAM_C1C5_ db	
_RAM_C1C6_ db	
_RAM_C1C7_ db	
_RAM_C1C8_ db	
_RAM_C1C9_ db	
_RAM_C1CA_ db	
_RAM_C1CB_ db	
_RAM_C1CC_ db	
_RAM_C1CD_ db	
.ende	
	
.enum $C1CF export	
_RAM_C1CF_ db	
_RAM_C1D0_ db	
_RAM_C1D1_ db	
_RAM_C1D2_ db	
.ende	
	
.enum $C1D4 export	
_RAM_C1D4_ db	
_RAM_C1D5_ db	
_RAM_C1D6_ db	
_RAM_C1D7_ db	
_RAM_C1D8_ db	
_RAM_C1D9_ db	
.ende	
	
.enum $C1DB export	
_RAM_C1DB_ db	
_RAM_C1DC_ dw	
_RAM_C1DE_ db	
_RAM_C1DF_ db	
_RAM_C1E0_ db	
_RAM_C1E1_ db	
.ende	
	
.enum $C1E3 export	
_RAM_C1E3_ db	
.ende	
	
.enum $C1E5 export	
_RAM_C1E5_ db	
_RAM_C1E6_ db	
_RAM_C1E7_ db	
_RAM_C1E8_ dsb $81	
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
		di
		ld sp, $C064
		im 1
		call _LABEL_50F9_
		ld hl, _RAM_C065_
		ld bc, $0203
-:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		call _LABEL_1777_
		jp _LABEL_70_
	
	; Data from 1D to 2F (19 bytes)
	.dsb 19, $00
	
_LABEL_30_:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
_LABEL_38_:	
		jp _LABEL_465_
	
	; Data from 3B to 4F (21 bytes)
	.dsb 21, $00
	
_LABEL_50_:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
_LABEL_66_:	
		jp _LABEL_435_
	
	; Data from 69 to 6F (7 bytes)
	.db $00 $00 $00 $00 $00 $00 $00
	
_LABEL_70_:	
		ld iy, _RAM_C065_
		ld (iy+6), $00
		ld (iy+7), $00
		ld (iy+8), $00
		ld (iy+5), $00
		ld b, $0A
		call _LABEL_210_
		in a, (Port_VDPStatus)
		ld b, $0E
		ld hl, _DATA_427_
-:	
		ld a, (hl)
		out (Port_VDPAddress), a
		inc hl
		djnz -
		ld hl, $0100
		ld de, _DATA_336A_
		ld bc, $01E0
		call _LABEL_21C_
		ld hl, $0900
		call _LABEL_21C_
		ld hl, $1100
		call _LABEL_21C_
		ld a, $01
		ld (_RAM_C1DF_), a
		ld hl, $2100
		ld de, _DATA_3E42_
		ld bc, $0008
		call _LABEL_21C_
		ld hl, $2900
		call _LABEL_21C_
		ld hl, $3100
		call _LABEL_21C_
		ld hl, $2108
		ld de, _DATA_3E42_ + 1
		ld bc, $01E8
		call _LABEL_21C_
		ld hl, $2908
		call _LABEL_21C_
		ld hl, $3108
		call _LABEL_21C_
		xor a
		ld (_RAM_C1DF_), a
		ld hl, $1800
		ld de, _DATA_2CFA_
		ld bc, $0660
		call _LABEL_21C_
_LABEL_F3_:	
		call _LABEL_1E1_
		ld iy, _RAM_C065_
		ld (iy+0), $00
		ld (iy+1), $00
		ld (iy+2), $00
		ld (iy+3), $01
		ld (iy+4), $02
		ld (iy+5), $00
		call _LABEL_EC6_
		xor a
		ld (_RAM_C1D6_), a
		ld a, $01
		ld (_RAM_C1D7_), a
		ld a, $04
		out (Port_VDPAddress), a
		ld a, $87
		out (Port_VDPAddress), a
		ld hl, $3A08
		ld de, _DATA_16A_
		ld bc, $0013
		call _LABEL_21C_
		ld hl, $3A28
		ld de, _DATA_17D_
		call _LABEL_21C_
		ld hl, $3A48
		ld de, _DATA_190_
		call _LABEL_21C_
		call _LABEL_328_
		ld a, $8E
		ld (_RAM_C1E6_), a
		ei
_LABEL_14D_:	
		halt
		ld hl, _RAM_C1D0_
		ld a, (hl)
		or a
		jp nz, _LABEL_1C0_
		call _LABEL_16D9_
		cpl
		and $10
		jr z, _LABEL_1A3_
		ld hl, _RAM_C1D0_
		ld (hl), $01
		ld a, $00
		ld (_RAM_C1E6_), a
		jr _LABEL_14D_
	
; Data from 16A to 17C (19 bytes)	
_DATA_16A_:	
	.db $50 $55 $53 $48 $20 $4A $2D $53 $54 $49 $43 $4B $20 $42 $55 $54
	.db $54 $4F $4E
	
; Data from 17D to 18F (19 bytes)	
_DATA_17D_:	
	.db $20 $20 $20 $20 $20 $20 $20 $20 $4F $52
	.dsb 9, $20
	
; Data from 190 to 1A2 (19 bytes)	
_DATA_190_:	
	.db $50 $55 $53 $48 $20 $49 $4E $53 $2F $44 $45 $4C $20 $4B $45 $59
	.db $20 $20 $20
	
_LABEL_1A3_:	
		ld a, $02
		ld (_RAM_C1D7_), a
		ld a, (_RAM_C1D6_)
		inc a
		ld (_RAM_C1D6_), a
		cp $3C
		jp nz, _LABEL_14D_
		ld a, $01
		ld (_RAM_C1D7_), a
		xor a
		ld (_RAM_C1D6_), a
		jp _LABEL_14D_
	
_LABEL_1C0_:	
		di
		xor a
		ld (_RAM_C1D7_), a
		ld (_RAM_C1D6_), a
		ld hl, _RAM_C07C_
		ld (hl), $21
		ld a, $08
		ld (_RAM_C1A8_), a
		ld hl, _RAM_C1CC_
		ld (hl), $80
		call _LABEL_D6F_
		call _LABEL_397_
		ei
		jp _LABEL_14E9_
	
_LABEL_1E1_:	
		ld hl, $3B00
		ld bc, $0088
		ld e, $F0
		call +
		ld hl, $3800
		ld bc, $0300
		ld e, $20
+:	
		call _LABEL_205_
-:	
		ld a, e
		out (Port_VDPData), a
		push af
		push af
		pop af
		pop af
		dec bc
		ld a, c
		or b
		jp nz, -
		ret
	
_LABEL_205_:	
		ld a, $40
		or h
		ld h, a
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		ret
	
_LABEL_210_:	
		ld de, $FFFF
--:	
		ld hl, $39DE
-:	
		add hl, de
		jr c, -
		djnz --
		ret
	
_LABEL_21C_:	
		call _LABEL_205_
		push de
		push bc
-:	
		ld a, (de)
		out (Port_VDPData), a
		ld a, (_RAM_C1DF_)
		bit 0, a
		jr nz, +
		inc de
+:	
		dec bc
		ld a, c
		or b
		jr nz, -
		pop bc
		pop de
		ret
	
_LABEL_234_:	
		call _LABEL_1E1_
		ld a, $05
		out (Port_VDPAddress), a
		ld a, $87
		out (Port_VDPAddress), a
		ld hl, $0300
		ld de, _DATA_354A_
		ld bc, $0440
		call _LABEL_21C_
		ld hl, $0B00
		call _LABEL_21C_
		ld hl, $1300
		call _LABEL_21C_
		ld hl, $2300
		ld de, _DATA_3E42_ + 2
		ld bc, $0430
		call _LABEL_21C_
		ld hl, $2B00
		call _LABEL_21C_
		ld hl, $3300
		call _LABEL_21C_
		ld hl, $3800
		ld de, _DATA_472C_
		ld bc, $0300
		call _LABEL_21C_
		call _LABEL_335_
		call _LABEL_2F5_
		ld a, $8C
		ld (_RAM_C1E6_), a
		ret
	
_LABEL_287_:	
		ld a, $03
		out (Port_VDPAddress), a
		ld a, $87
		out (Port_VDPAddress), a
		ld hl, $0300
		ld de, _DATA_398A_
		ld bc, $04B8
		call _LABEL_21C_
		ld hl, $0B00
		call _LABEL_21C_
		ld hl, $1300
		call _LABEL_21C_
		ld hl, $2300
		ld de, _DATA_4274_
		ld bc, $04B8
		call _LABEL_21C_
		ld hl, $2B00
		call _LABEL_21C_
		ld hl, $3300
		call _LABEL_21C_
		ld hl, $3800
		ld de, _DATA_4A2C_
		ld bc, $0300
		call _LABEL_21C_
		call _LABEL_335_
		call _LABEL_2F5_
		ld a, $8D
		ld (_RAM_C1E6_), a
		ret
	
; Data from 2D7 to 2D9 (3 bytes)	
_DATA_2D7_:	
	.db $54 $4F $50
	
; Data from 2DA to 2DC (3 bytes)	
_DATA_2DA_:	
	.db $50 $4C $2E
	
; Data from 2DD to 2DF (3 bytes)	
_DATA_2DD_:	
	.db $52 $44 $2E
	
; Data from 2E0 to 2E4 (5 bytes)	
_DATA_2E0_:	
	.db $53 $43 $4F $52 $45
	
; Data from 2E5 to 2E9 (5 bytes)	
_DATA_2E5_:	
	.db $42 $4F $4E $55 $53
	
; Data from 2EA to 2F4 (11 bytes)	
_DATA_2EA_:	
	.db $5B $20 $53 $45 $47 $41 $20 $31 $39 $38 $33
	
_LABEL_2F5_:	
		ld hl, $3803
		ld de, _DATA_2D7_
		ld bc, $0003
		call _LABEL_21C_
		ld hl, $3859
		ld de, _DATA_2DA_
		call _LABEL_21C_
		ld hl, $3879
		ld de, _DATA_2DD_
		call _LABEL_21C_
		ld hl, $3809
		ld de, _DATA_2E5_
		ld bc, $0005
		call _LABEL_21C_
		ld hl, $3819
		ld de, _DATA_2E0_
		call _LABEL_21C_
_LABEL_328_:	
		ld hl, $3AF3
		ld de, _DATA_2EA_
		ld bc, $000B
		call _LABEL_21C_
		ret
	
_LABEL_335_:	
		ld iy, _RAM_C065_
		ld (iy+9), $00
		ld (iy+10), $50
		ld (iy+11), $00
		ld hl, _RAM_C06E_
		ld de, $3828
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C06B_
		ld de, $3821
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C065_
		ld de, $3838
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C068_
		ld de, $387C
		ld a, $01
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C069_
		ld de, $385C
		ld a, $01
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _DATA_335A_
		ld de, _RAM_C091_
		ld bc, $0010
		ldir
		ret
	
_LABEL_397_:	
		ld hl, _RAM_C06A_
		ld a, (hl)
		push af
		or a
		jp nz, _LABEL_3E7_
		call _LABEL_234_
		ld a, (_RAM_C07C_)
		bit 1, a
		jr nz, +
		ld hl, $390B
		ld de, _DATA_3F4_
		ld bc, $0007
		call _LABEL_21C_
		ld hl, _RAM_C068_
		ld de, $3912
		ld a, $01
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld b, $1E
		call _LABEL_210_
+:	
		pop af
		or a
		ret nz
		call _LABEL_234_
		ld a, (_RAM_C07F_)
		cp $03
		ret nc
		cp $01
		jr z, +
		jr nc, ++
		call +++
		jp ++++
	
+:	
		jp +++
	
++:	
		jp ++++
	
_LABEL_3E7_:	
		pop af
		call _LABEL_287_
		ld a, (_RAM_C07F_)
		cp $02
		ret nc
		jp +++++
	
; Data from 3F4 to 3FA (7 bytes)	
_DATA_3F4_:	
	.db $20 $52 $4F $55 $4E $44 $20
	
+++:	
		ld hl, $390D
		ld de, _DATA_423_
		ld bc, $0002
		jp _LABEL_21C_
	
++++:	
		ld hl, $3909
		ld de, _DATA_423_
		ld bc, $0002
		jp _LABEL_21C_
	
+++++:	
		ld a, $01
		ld (_RAM_C1E0_), a
		ld b, $02
		ld hl, $3A66
		ld de, _DATA_427_ - 2
		jp _LABEL_1246_
	
; Data from 423 to 426 (4 bytes)	
_DATA_423_:	
	.db $6B $6B $7A $7B
	
; Data from 427 to 434 (14 bytes)	
_DATA_427_:	
	.db $02 $80 $E2 $81 $0E $82 $FF $83 $03 $84 $76 $85 $03 $86
	
_LABEL_435_:	
		push af
		ld a, (_RAM_C07A_)
		cp $10
		jr c, +
		xor a
		ld (_RAM_C07A_), a
		ld a, (_RAM_C079_)
		and a
		jr z, ++
		xor a
		ld (_RAM_C079_), a
+:	
		pop af
		retn
	
++:	
		cpl
		ld (_RAM_C079_), a
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
	
_LABEL_465_:	
		push ix
		push iy
		push af
		push bc
		push de
		push hl
		ld a, (_RAM_C07A_)
		inc a
		cp $F0
		jr nc, +
		ld a, $F0
+:	
		ld (_RAM_C07A_), a
		ld a, (_RAM_C079_)
		or a
		jp nz, _LABEL_518_
		in a, (Port_VDPStatus)
		ld hl, _RAM_C1D7_
		ld a, (hl)
		or a
		jr z, +
		bit 1, a
		jp nz, _LABEL_515_
		call _LABEL_F48_
		jp _LABEL_515_
	
+:	
		ld hl, $3B00
		ld de, _RAM_C08D_
		ld bc, $0088
		call _LABEL_21C_
		ld a, (_RAM_C07C_)
		and $04
		jr nz, +
		call _LABEL_11E5_
+:	
		ld a, (_RAM_C06A_)
		or a
		jr z, +
		call _LABEL_112C_
		call _LABEL_12DA_
		jr ++
	
+:	
		call _LABEL_FA1_
++:	
		ld hl, _RAM_C06E_
		ld de, $3828
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C065_
		ld de, $3838
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
		ld hl, _RAM_C1C3_
		bit 0, (hl)
		jr z, +
		ld hl, _RAM_C065_
		ld de, $3821
		ld a, $03
		ld (_RAM_C08C_), a
		call _LABEL_2111_
+:	
		ld hl, _RAM_C1C3_
		bit 1, (hl)
		jr z, +
		ld hl, _RAM_C069_
		ld de, $385C
		ld a, $01
		ld (_RAM_C08C_), a
		call _LABEL_2111_
+:	
		ld a, (_RAM_C1C1_)
		and $20
		jr z, _LABEL_515_
		ld hl, $390A
		ld de, _DATA_522_
		ld bc, $000C
		call _LABEL_21C_
_LABEL_515_:	
		call _LABEL_4D2C_
_LABEL_518_:	
		pop hl
		pop de
		pop bc
		pop af
		pop iy
		pop ix
		ei
		ret
	
; Data from 522 to 52D (12 bytes)	
_DATA_522_:	
	.db $20 $54 $49 $4D $45 $20 $4C $49 $4D $49 $54 $20
	
_LABEL_52E_:	
		ld a, (_RAM_C1D6_)
		inc a
		ld (_RAM_C1D6_), a
		cp $02
		ret nz
		ld a, $00
		ld (_RAM_C1D6_), a
		ld ix, _RAM_C115_
		ld b, $0F
-:	
		push ix
		pop hl
		ld de, $C115
		or a
		sbc hl, de
		rr h
		rr l
		ex de, hl
		ld iy, _RAM_C0A5_
		add iy, de
		ld a, (ix+0)
		bit 7, a
		push bc
		push af
		call nz, +
		pop af
		bit 7, a
		call z, _LABEL_7A1_
		pop bc
		ld de, $0008
		add ix, de
		djnz -
		ret
	
+:	
		ld a, (ix+1)
		cp $06
		jp c, _LABEL_5E3_
		cp $08
		jp c, _LABEL_7DF_
		cp $08
		jp z, _LABEL_A50_
		jp nc, _LABEL_C7B_
		ret
	
; Data from 586 to 5B5 (48 bytes)	
_DATA_586_:	
	.db $02 $01 $01 $00 $00 $01 $01 $02 $02 $02 $03 $03 $03 $03 $04 $04
	.db $04 $04 $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $06
	.dsb 19, $07
	
; Data from 5B6 to 5E2 (45 bytes)	
_DATA_5B6_:	
	.db $03 $02 $01 $01 $00 $00 $00 $01 $01 $02 $03 $03 $03 $04 $04 $04
	.db $05 $05 $05 $05 $06 $06 $06 $06 $06
	.dsb 20, $07
	
_LABEL_5E3_:	
		ld a, (ix+7)
		or a
		call z, +
		ret z
		call _LABEL_675_
		ld a, (ix+0)
		or a
		ret z
		ld a, (iy+2)
		cp $C0
		ret z
		call _LABEL_6DD_
		call _LABEL_717_
		ld (iy+2), $8C
		ld (iy+3), $01
		ret
	
+:	
		ld a, (_RAM_C1D5_)
		cp $03
		ret z
		ld (iy+0), $10
		ld a, (_RAM_C1D4_)
		cp $12
		jr nc, ++
		jr z, +
		ld (iy+1), $90
		jr +++
	
+:	
		ld (iy+1), $98
		jr +++
	
++:	
		ld (iy+1), $9C
+++:	
		ld a, (_RAM_C1D5_)
		cp $02
		jr c, +
		ret nc
		ld a, (iy+1)
		add a, $14
		ld (iy+1), a
+:	
		ld (ix+2), $00
		ld (ix+6), $00
		ld (ix+7), $01
		ld a, (ix+1)
		cp $03
		jr nc, +
		ld (ix+3), $00
		jr ++
	
+:	
		ld (ix+3), $01
++:	
		ld a, (ix+1)
		cp $02
		jr z, +
		ld hl, _DATA_586_
		ld (ix+4), l
		ld (ix+5), h
		ret
	
+:	
		ld hl, _DATA_5B6_
		ld (ix+4), l
		ld (ix+5), h
		or $FF
		ret
	
_LABEL_675_:	
		call _LABEL_7BC_
		call _LABEL_754_
		ld (_RAM_C1D2_), a
		cp $61
		ret c
		cp $66
		call c, _LABEL_696_
		cp $67
		call z, _LABEL_696_
		cp $6B
		call z, _LABEL_696_
		cp $AE
		call z, _LABEL_696_
		ret
	
_LABEL_696_:	
		ld a, (iy+0)
		ld b, a
		ld a, (ix+6)
		sub b
		ld a, (_RAM_C1D2_)
		ret nc
		ld a, (iy+0)
		sub $01
		ld (ix+6), a
		ld a, (ix+1)
		cp $02
		ld hl, _DATA_5B6_
		jr z, +
		ld hl, _DATA_586_
+:	
		ld (ix+4), l
		ld (ix+5), h
		ld (ix+2), $00
		ld a, $8A
		ld (_RAM_C1E6_), a
		ld a, (ix+3)
		cp $02
		jr z, +
		ld a, (_RAM_C1D2_)
		ret
	
+:	
		ld a, (ix+6)
		add a, $08
		ld (ix+6), a
		ld a, (_RAM_C1D2_)
		ret
	
_LABEL_6DD_:	
		ld a, (iy+0)
		ld c, a
		ld a, (ix+2)
		or a
		jr nz, +
		ld l, (ix+4)
		ld h, (ix+5)
		ld a, (hl)
		or a
		jr z, +
		ld b, a
-:	
		dec c
		djnz -
		ld a, c
		jr ++
	
+:	
		ld l, (ix+4)
		ld h, (ix+5)
		ld a, (hl)
		or $00
		jr z, +
		add a, c
		jr ++
	
+:	
		ld a, $01
		ld (ix+2), a
		ld a, c
++:	
		ld (iy+0), a
		inc hl
		ld (ix+4), l
		ld (ix+5), h
		ret
	
_LABEL_717_:	
		ld a, (ix+3)
		cp $02
		ld a, (iy+1)
		ret z
		call ++
		ld a, (ix+3)
		xor $01
		jr z, +
		dec (iy+1)
		ret
	
+:	
		inc (iy+1)
		ret
	
++:	
		ld a, (_RAM_C1D2_)
		cp $68
		jr nz, +
		call _LABEL_696_
		ld (ix+3), $02
		ret
	
+:	
		cp $67
		ret nz
		bit 0, (ix+3)
		jr z, +
		res 0, (ix+3)
		ret
	
+:	
		set 0, (ix+3)
		ret
	
_LABEL_754_:	
		call +
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		push af
		push af
		pop af
		pop af
		in a, (Port_VDPData)
		ret
	
+:	
		ld a, (iy+1)
		add a, $08
		and $F8
		rrca
		rrca
		rrca
		ld e, a
		ld d, $00
		ld a, (iy+0)
		add a, $0A
		and $FC
		rrca
		rrca
		rrca
		add a, a
		add a, a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $3800
		add hl, de
		ret
	
_LABEL_789_:	
		ld a, (iy+2)
		xor $C0
		jr z, +
_LABEL_790_:	
		ld (iy+2), $C0
		ld (iy+3), $0F
		ld (ix+2), $08
		ret
	
+:	
		dec (ix+2)
		ret nz
_LABEL_7A1_:	
		ld (iy+0), $F0
		ld (iy+1), $F0
		ld (iy+2), $00
		ld (iy+3), $00
		push ix
		pop hl
		ld b, $08
-:	
		ld (hl), $00
		inc hl
		djnz -
		ret
	
_LABEL_7BC_:	
		ld a, (iy+1)
		cp $FC
		jr z, _LABEL_7A1_
		ld a, (iy+0)
		cp $A0
		jr nc, +
		ret
	
+:	
		ld a, (iy+1)
		cp $90
		jr c, +
		call _LABEL_789_
		ret
	
+:	
		ld a, (iy+0)
		cp $B0
		call nc, _LABEL_789_
		ret
	
_LABEL_7DF_:	
		call _LABEL_88C_
		ld a, (ix+7)
		dec a
		jr z, +
		dec a
		ld b, $94
		jr z, +++
		dec a
		ld b, $90
		jr z, +++
		dec a
		jr z, +
		dec a
		ld b, $9C
		jr z, +++
		dec a
		jr z, ++
		dec a
		ld b, $94
		jr z, +++
		ld b, (iy+2)
		res 2, b
		jp ++++
	
+:	
		bit 1, (iy+1)
		ld b, $94
		jr z, +++
		ld b, $90
		jr +++
	
++:	
		bit 1, (iy+1)
		ld b, $9C
		jr z, +++
		ld b, $98
+++:	
		ld (iy+3), $01
++++:	
		ld (iy+2), b
		call _LABEL_945_
		ret
	
_LABEL_82B_:	
		ld a, (ix+1)
		cp $06
		jr nz, +
		ld (iy+0), $20
		ld (iy+1), $FF
		ld (ix+2), $00
		ld (ix+3), $00
		ld (ix+6), $00
		ld hl, _DATA_586_
		ld (ix+4), l
		ld (ix+5), h
		ld (ix+8), $80
		ld (ix+9), $07
		ld (ix+15), $09
		ld (iy+4), $F0
		ld (iy+5), $00
		ld (iy+7), $00
		jp _LABEL_930_
	
+:	
		ld (iy+0), $54
		ld (iy+1), $58
		ld (ix+2), $00
		ld (ix+3), $00
		ld (ix+6), $00
		ld hl, _DATA_586_
		ld (ix+4), l
		ld (ix+5), h
		ld (ix+7), $04
		ret
	
_LABEL_88C_:	
		ld a, (ix+7)
		or a
		jr z, _LABEL_82B_
		dec a
		jr z, +
		dec a
		jr z, ++
		dec a
		jr z, +++
		dec a
		jr z, ++++
		dec a
		jr z, _LABEL_8EC_
		dec a
		jr z, _LABEL_8F7_
		dec a
		jr z, _LABEL_914_
		dec a
		jr z, _LABEL_91F_
		ret
	
+:	
		ld a, (iy+1)
		cp $D8
		jr c, _LABEL_930_
		dec (iy+1)
		ret
	
++:	
		ld a, (_RAM_C1D9_)
		or a
		jr z, _LABEL_930_
		dec a
		ld (_RAM_C1D9_), a
		ret
	
+++:	
		ld a, (iy+0)
		cp $42
		jr nc, _LABEL_930_
		call _LABEL_6DD_
		call _LABEL_717_
		ret
	
++++:	
		ld a, (ix+1)
		cp $07
		jr z, +
		ld a, (iy+1)
		cp $A8
		jr c, _LABEL_930_
		dec (iy+1)
		ret
	
+:	
		ld a, (iy+1)
		cp $30
		jr c, _LABEL_930_
		dec (iy+1)
		ret
	
_LABEL_8EC_:	
		ld a, (_RAM_C1D9_)
		or a
		jr z, _LABEL_930_
		dec a
		ld (_RAM_C1D9_), a
		ret
	
_LABEL_8F7_:	
		ld a, (ix+1)
		cp $07
		jr z, +
		ld a, (iy+1)
		cp $D8
		jr nc, _LABEL_930_
		inc (iy+1)
		ret
	
+:	
		ld a, (iy+1)
		cp $70
		jr nc, _LABEL_930_
		inc (iy+1)
		ret
	
_LABEL_914_:	
		ld a, (_RAM_C1D9_)
		or a
		jr z, _LABEL_930_
		dec a
		ld (_RAM_C1D9_), a
		ret
	
_LABEL_91F_:	
		ld a, $C0
		cp (iy+2)
		jr z, +
		inc (iy+0)
		inc (iy+0)
+:	
		call _LABEL_7BC_
		ret
	
_LABEL_930_:	
		ld a, r
		ld (_RAM_C1D9_), a
		ld a, (ix+7)
		cp $07
		jr z, +
		inc (ix+7)
		ret
	
+:	
		ld (ix+7), $04
		ret
	
_LABEL_945_:	
		bit 0, (ix+0)
		ret z
		call _LABEL_A04_
		push iy
		ld iy, _RAM_C08D_
		ld a, (_RAM_C1E1_)
		or a
		jr z, +
		dec a
		jr z, ++
		dec a
		jr z, +++
		dec a
		jr z, _LABEL_9AD_
		xor a
		ld (_RAM_C1E1_), a
		pop iy
		ret
	
+:	
		ld a, $01
		ld (_RAM_C1E1_), a
		pop iy
		ret
	
++:	
		ld hl, _RAM_C091_
		ld a, (hl)
		add a, $04
		ld (iy+0), a
		inc hl
		ld a, (hl)
		add a, $08
		ld (iy+1), a
		ld (iy+2), $00
		ld (iy+3), $01
		call _LABEL_9E8_
		pop iy
		ld (iy+0), $F0
		ret
	
+++:	
		ld hl, _RAM_C099_
		ld a, (hl)
		sub $04
		ld (iy+0), a
		inc hl
		ld a, (hl)
		add a, $08
		ld (iy+1), a
		ld (iy+2), $00
		call _LABEL_9E8_
		pop iy
		ret
	
_LABEL_9AD_:	
		ld (iy+0), $F0
		pop iy
		ld hl, _RAM_C099_
		ld a, (hl)
		add a, $02
		ld (iy+0), a
		inc hl
		xor a
		ld (_RAM_C1E1_), a
		res 0, (ix+0)
		ld a, (_RAM_C1A8_)
		bit 2, a
		jr nz, +
		ld a, (hl)
		sub $10
		ld (iy+1), a
		ld (ix+7), $04
		call _LABEL_A2C_
		ret
	
+:	
		ld a, (hl)
		add a, $10
		ld (iy+1), a
		ld (ix+7), $06
		call _LABEL_A2C_
		ret
	
_LABEL_9E8_:	
		ld a, (_RAM_C1C2_)
		ld b, a
		ld a, (_RAM_C1E3_)
		xor b
		jr z, +
		ld a, b
		or a
		jr nz, +
		ld a, (_RAM_C1E1_)
		inc a
		ld (_RAM_C1E1_), a
+:	
		ld a, (_RAM_C1C2_)
		ld (_RAM_C1E3_), a
		ret
	
_LABEL_A04_:	
		ld a, (_RAM_C1E1_)
		or a
		ret z
		ld hl, $C099
		inc hl
		ld a, (ix+1)
		cp $06
		jr nz, +
		ld a, (hl)
		cp $A8
		jr c, ++
		cp $E0
		jr nc, ++
		ret
	
+:	
		ld a, (hl)
		cp $27
		jr c, ++
		cp $78
		ret c
++:	
		ld a, $03
		ld (_RAM_C1E1_), a
		ret
	
_LABEL_A2C_:	
		ld a, (ix+1)
		cp $06
		jr nz, +
		ld a, (iy+0)
		cp $50
		jr nc, ++
		ld (iy+0), $46
		ret
	
+:	
		ld a, (iy+0)
		cp $60
		jr nc, ++
		ld (iy+0), $56
		ret
	
++:	
		ld (ix+7), $08
		ret
	
_LABEL_A50_:	
		ld a, (ix+0)
		and $C0
		ld (ix+0), a
		ld a, (ix+6)
		or a
		call z, +
		dec (ix+6)
		ld a, (ix+7)
		dec a
		jp z, _LABEL_B14_
		dec a
		jp z, _LABEL_B24_
		dec a
		jp z, _LABEL_B34_
		dec a
		jp z, _LABEL_B3F_
		ld (ix+7), $01
		ret
	
+:	
		call _LABEL_754_
		cp $77
		jr c, +
		ld (ix+6), $20
		ret
	
+:	
		ld a, r
		or $08
		and $40
		ld (ix+6), a
		inc (ix+7)
		inc (ix+2)
		ld a, (ix+5)
		cp $FF
		jr nz, ++
		ld a, (ix+7)
		cp $04
		jr z, +
		ld a, $03
+:	
		ld (ix+7), a
		ld (ix+2), a
++:	
		ld a, (ix+7)
		cp $05
		ret c
		ld (ix+7), $01
		ld (ix+2), $01
		ret
	
_LABEL_ABA_:	
		ld hl, _RAM_C099_
		ld a, (hl)
		ld b, (iy+0)
		sub b
		cp $08
		jr c, +
		cp $F8
		jr nc, +
		ld a, (ix+5)
		cp $FF
		ret z
		inc hl
		ld a, (hl)
		ld b, (iy+1)
		sub b
		cp $08
		jr c, ++
		cp $F8
		jr nc, ++
		ret
	
+:	
		inc hl
		ld a, (hl)
		cp (iy+1)
		ld c, $04
		jr c, +++
		ld c, $03
		jr +++
	
++:	
		dec hl
		ld a, (hl)
		cp (iy+0)
		ld c, $02
		jr c, +++
		ld c, $01
+++:	
		ld (ix+7), c
		ld (ix+2), c
		ld (ix+6), $50
		ld a, (ix+4)
		cp (ix+7)
		ret z
		ld a, $8B
		ld (_RAM_C1E6_), a
		ld a, (ix+7)
		ld (ix+4), a
		ret
	
_LABEL_B14_:	
		inc (iy+0)
		call _LABEL_BE1_
		call _LABEL_B68_
		ld c, $10
		call _LABEL_B4A_
		jr _LABEL_B88_
	
_LABEL_B24_:	
		dec (iy+0)
		call _LABEL_BE1_
		call _LABEL_B68_
		ld c, $F0
		call _LABEL_B4A_
		jr _LABEL_B88_
	
_LABEL_B34_:	
		inc (iy+1)
		call _LABEL_BE1_
		call ++
		jr _LABEL_B88_
	
_LABEL_B3F_:	
		dec (iy+1)
		call _LABEL_BE1_
		call ++
		jr _LABEL_B88_
	
_LABEL_B4A_:	
		ld a, (iy+0)
		add a, c
		ld b, $04
		ld c, $00
		ld de, $0008
		ld hl, $C0C5
-:	
		cp (hl)
		jr nz, +
		inc c
+:	
		add hl, de
		djnz -
		ld a, c
		cp $02
		ret c
		set 0, (ix+7)
		ret
	
_LABEL_B68_:	
		ld a, (ix+3)
		cp (iy+0)
		call z, _LABEL_ABA_
		ld a, (iy+0)
		ld (ix+3), a
		ret
	
++:	
		ld a, (ix+3)
		cp (iy+1)
		call z, _LABEL_ABA_
		ld a, (iy+1)
		ld (ix+3), a
		ret
	
_LABEL_B88_:	
		call +
		ld (iy+2), a
		ld (iy+3), $01
		ret
	
+:	
		ld a, (ix+2)
		jr z, +
		dec a
		jr z, ++
		dec a
		jr z, +++
		dec a
		jr z, ++++
		dec a
		jr z, +++++
		ret
	
+:	
		ld a, (iy+2)
		ret
	
++:	
		set 1, (ix+0)
		ld a, $A8
		bit 1, (iy+0)
		ret z
		ld a, $AC
		ret
	
+++:	
		set 0, (ix+0)
		ld a, $A0
		bit 1, (iy+0)
		ret z
		ld a, $A4
		ret
	
++++:	
		set 3, (ix+0)
		ld a, $B8
		bit 1, (iy+1)
		ret z
		ld a, $BC
		ret
	
+++++:	
		set 2, (ix+0)
		ld a, $B0
		bit 1, (iy+1)
		ret z
		ld a, $B4
		ret
	
_LABEL_BE1_:	
		call +++++
		cp $7E
		ret c
		ld a, (ix+2)
		dec a
		jr z, +
		dec a
		jr z, ++
		dec a
		jr z, +++
		dec a
		jr z, ++++
		ret
	
+:	
		dec (iy+0)
		ld c, $F0
		call _LABEL_B4A_
		ret
	
++:	
		inc (iy+0)
		ld c, $10
		call _LABEL_B4A_
		ret
	
+++:	
		dec (iy+1)
		ret
	
++++:	
		inc (iy+1)
		ret
	
+++++:	
		ld a, (ix+2)
		dec a
		jr z, +
		dec a
		jr z, ++
		dec a
		jr z, +++
		dec a
		jr z, _LABEL_C65_
		ld a, $FF
		ret
	
+:	
		ld a, (iy+0)
		add a, $06
		ld (iy+0), a
		call _LABEL_754_
		ld b, a
		ld a, (iy+0)
		sub $06
		ld (iy+0), a
		ld a, b
		ret
	
++:	
		ld a, (iy+0)
		sub $08
		ld (iy+0), a
		call _LABEL_754_
		ld b, a
		ld a, (iy+0)
		add a, $08
		ld (iy+0), a
		ld a, b
		ret
	
+++:	
		ld a, (iy+1)
		add a, $08
		ld (iy+1), a
		call _LABEL_754_
		ld b, a
		ld a, (iy+1)
		sub $08
		ld (iy+1), a
		ld a, b
		ret
	
_LABEL_C65_:	
		ld a, (iy+1)
		sub $08
		ld (iy+1), a
		call _LABEL_754_
		ld b, a
		ld a, (iy+1)
		add a, $08
		ld (iy+1), a
		ld a, b
		ret
	
_LABEL_C7B_:	
		ld a, (ix+7)
		or a
		jr z, +
		dec a
		jr z, _LABEL_CD3_
		dec a
		jr z, _LABEL_CE8_
		dec a
		jp z, _LABEL_D10_
		jp _LABEL_D49_
	
+:	
		ld (ix+7), $01
		ld (iy+2), $C8
		ld (iy+3), $0E
		ld a, (ix+1)
		cp $09
		jr nz, +
		ld (iy+0), $90
		ld (iy+1), $40
		ld (ix+2), $01
		ld (ix+3), $01
		ld (ix+4), <_DATA_4040_
		ld (ix+5), <_DATA_4040_
		ret
	
+:	
		ld (iy+0), $60
		ld (iy+1), $08
		ld (ix+2), $01
		ld (ix+3), $00
		ld (ix+4), $18
		ld (ix+5), $18
		ret
	
_LABEL_CD3_:	
		ld (iy+2), $C8
		inc (ix+6)
		ld a, (ix+6)
		cp $30
		ret c
		ld (ix+6), $00
		ld (ix+7), $02
_LABEL_CE8_:	
		inc (ix+6)
		ld a, (ix+6)
		cp $30
		ret c
		ld (iy+2), $C4
		cp $60
		ret c
		ld (ix+6), $00
		ld (ix+7), $03
		dec (ix+3)
		ld (ix+3), $01
		ret z
		inc (ix+7)
		ld (ix+3), $00
		ret
	
_LABEL_D10_:	
		inc (ix+6)
		ld a, (ix+6)
		cp $02
		ret nz
		ld (ix+6), $00
		dec (ix+4)
		jr z, _LABEL_D36_
		bit 0, (ix+0)
		ld a, (ix+2)
		jr z, +
		ld (_RAM_C1BA_), a
+:	
		ld b, (iy+1)
		add a, b
		ld (iy+1), a
		ret
	
_LABEL_D36_:	
		ld a, (ix+5)
		ld (ix+4), a
		ld a, (ix+2)
		neg
		ld (ix+2), a
		ld (ix+7), $01
		ret
	
_LABEL_D49_:	
		inc (ix+6)
		ld a, (ix+6)
		cp $02
		ret nz
		ld (ix+6), $00
		dec (ix+4)
		jr z, _LABEL_D36_
		bit 0, (ix+0)
		ld a, (ix+2)
		jr z, +
		ld (_RAM_C1B9_), a
+:	
		ld b, (iy+0)
		add a, b
		ld (iy+0), a
		ret
	
_LABEL_D6F_:	
		ld a, (_RAM_C06A_)
		or a
		jr nz, +
		ld a, (_RAM_C07F_)
		ld e, a
		ld h, $08
		call _LABEL_25B4_
		ld de, $0E09
		add hl, de
		ld de, _RAM_C195_
		ld bc, $0008
		ldir
		ret
	
+:	
		ld a, (_RAM_C07F_)
		ld e, a
		ld h, $08
		call _LABEL_25B4_
		ld de, $0E39
		add hl, de
		ld de, _RAM_C19D_
		ld bc, $0007
		ldir
		ld ix, _RAM_C0C5_
		ld (ix+0), $44
		ld (ix+1), $50
		ld (ix+2), $A0
		ld (ix+3), $03
		ld ix, _RAM_C155_
		ld (ix+5), $FF
		ld ix, _RAM_C0C9_
		ld (ix+0), $54
		ld (ix+1), $90
		ld (ix+2), $B8
		ld (ix+3), $03
		ld ix, _RAM_C0CD_
		ld (ix+0), $7A
		ld (ix+1), $A0
		ld (ix+2), $B0
		ld (ix+3), $03
		ld ix, _RAM_C155_
		ld (ix+21), $FF
		ld ix, _RAM_C0D1_
		ld (ix+0), $54
		ld (ix+1), $E0
		ld (ix+2), $B4
		ld (ix+3), $03
		ld ix, _RAM_C155_
		ld (ix+29), $FF
		ret
	
	; Data from E09 to E68 (96 bytes)
	.db $01 $05 $00 $00 $00 $07 $06 $00 $02 $04 $00 $00 $00 $07 $06 $00
	.db $01 $04 $03 $00 $00 $07 $06 $00 $03 $02 $05 $00 $00 $07 $06 $00
	.db $01 $05 $02 $04 $00 $07 $06 $00 $04 $01 $05 $02 $03 $07 $06 $00
	.db $00 $08 $08 $00 $09 $0A $00 $00 $08 $08 $08 $00 $09 $0A $00 $00
	.db $08 $08 $08 $08 $09 $0A $00 $00 $08 $08 $08 $08 $00 $0A $00 $00
	.db $08 $08 $08 $08 $00 $0A $00 $00 $08 $08 $08 $08 $00 $0A $00 $00
	
_LABEL_E69_:	
		ld ix, _RAM_C19A_
		ld hl, _RAM_C13D_
		ld b, $0C
-:	
		ld a, (ix+0)
		or a
		jr z, +
		cp $13
		jr nc, +
		ld c, a
		ld a, (hl)
		bit 7, a
		jr nz, +
		ld a, $80
		or (hl)
		ld (hl), a
		inc hl
		ld (hl), c
		dec hl
+:	
		ld de, $0008
		add hl, de
		inc ix
		djnz -
		ld hl, _RAM_C1C6_
		ld a, (hl)
		or a
		ret nz
		ld a, (_RAM_C1D5_)
		cp $03
		ret z
		ld ix, _RAM_C195_
		ld hl, _RAM_C115_
		ld b, $05
-:	
		ld a, (ix+0)
		or a
		jr z, +
		cp $13
		jr nc, +
		ld c, a
		ld a, (hl)
		bit 7, a
		jr nz, +
		ld a, $80
		or (hl)
		ld (hl), a
		inc hl
		ld (hl), c
		ret
	
+:	
		ld de, $0008
		add hl, de
		inc ix
		djnz -
		ret
	
_LABEL_EC6_:	
		ld hl, $0000
		ld de, _DATA_26F8_ + 2
		ld bc, $0100
		call _LABEL_21C_
		ld hl, $0800
		call _LABEL_21C_
		ld hl, $1000
		call _LABEL_21C_
		ld hl, $0300
		ld de, _DATA_27FA_
		ld bc, $0500
		call _LABEL_21C_
		ld hl, $0B00
		call _LABEL_21C_
		ld hl, $1300
		call _LABEL_21C_
		ld a, $01
		ld (_RAM_C1DF_), a
		ld hl, $2000
		ld de, _DATA_26F8_
		ld bc, $0100
		call _LABEL_21C_
		ld hl, $2800
		call _LABEL_21C_
		ld hl, $3000
		call _LABEL_21C_
		ld hl, $2300
		ld de, _DATA_26F8_ + 1
		ld bc, $03E0
		call _LABEL_21C_
		ld hl, $2B00
		call _LABEL_21C_
		ld hl, $3300
		call _LABEL_21C_
		ld hl, $26E0
		ld de, _DATA_26F8_
		ld bc, $0120
		call _LABEL_21C_
		ld hl, $2EE0
		call _LABEL_21C_
		ld hl, $36E0
		call _LABEL_21C_
		xor a
		ld (_RAM_C1DF_), a
		ret
	
_LABEL_F48_:	
		ld a, (_RAM_C1D8_)
		cp $06
		jr nz, +
		ld bc, $0000
		ld (_RAM_C1D8_), bc
+:	
		bit 0, a
		ld de, _DATA_25C0_
		jp nz, +
		ld de, _DATA_265C_
+:	
		ld bc, $0600
		ld hl, $3903
		call _LABEL_F8F_
		ld a, (_RAM_C1D8_)
		cp $05
		jr z, +
		ld a, (_RAM_C1D8_)
		bit 0, a
		ld de, _DATA_26AA_
		jr nz, ++
+:	
		ld de, _DATA_260E_
++:	
		ld bc, $0600
		ld hl, $3911
		call _LABEL_F8F_
		ld a, (_RAM_C1D8_)
		inc a
		ld (_RAM_C1D8_), a
		ret
	
_LABEL_F8F_:	
		push bc
		ld bc, $000D
		call _LABEL_21C_
		ex de, hl
		add hl, bc
		ex de, hl
		ld bc, $0020
		add hl, bc
		pop bc
		djnz _LABEL_F8F_
		ret
	
_LABEL_FA1_:	
		ld hl, _RAM_C1D0_
		ld de, _RAM_C1CF_
		ld a, (de)
		or a
		jr nz, +
		ld (hl), $01
		call _LABEL_1017_
		ld a, (de)
+:	
		cp $04
		jr nz, +
		ld (hl), $02
		call _LABEL_1017_
		ld (hl), $01
		call _LABEL_10B2_
		ld a, (de)
+:	
		cp $07
		jr nz, +
		ld (hl), $03
		call _LABEL_1017_
		ld a, (de)
+:	
		cp $0A
		jr nz, +
		ld (hl), $01
		call _LABEL_1017_
		ld (hl), $02
		call _LABEL_10B2_
		ld a, (de)
+:	
		cp $0E
		jr nz, +
		ld (hl), $02
		call _LABEL_1017_
		ld a, (de)
+:	
		cp $12
		jr nz, +
		ld (hl), $03
		call _LABEL_1017_
		call _LABEL_10B2_
		ld a, (de)
+:	
		cp $14
		jr nz, +
		ld (hl), $03
		ld a, (de)
+:	
		cp $16
		jr nz, +
		ld (hl), $01
		call _LABEL_1017_
		ld a, (de)
+:	
		cp $1A
		jr nz, +
		ld (hl), $02
		call _LABEL_1017_
		call _LABEL_10B2_
		ld a, (de)
+:	
		ld a, (de)
		inc a
		cp $20
		jr nz, +
		xor a
+:	
		ld (de), a
		ret
	
_LABEL_1017_:	
		push hl
		push de
		ld de, _DATA_108E_
		ld a, (hl)
		cp $01
		jr nz, +
		ld de, _DATA_1046_
		jp ++
	
+:	
		cp $02
		jr nz, ++
		ld de, _DATA_106A_
++:	
		ld a, $06
		ld (_RAM_C1E0_), a
		ld b, $02
		ld hl, $3949
		call _LABEL_1246_
		ld hl, $39A9
		ld b, $04
		call _LABEL_1246_
		pop de
		pop hl
		ret
	
; Data from 1046 to 1069 (36 bytes)	
_DATA_1046_:	
	.db $B5 $B6 $8E $8D $B5 $B6 $B7 $B8 $8E $8D $B7 $B8 $B9 $BA $8E $8D
	.db $B9 $BA $BB $BC $8E $8D $BB $BC $61 $BD $8E $8D $AF $BD $9C $64
	.db $61 $61 $BB $AF
	
; Data from 106A to 108D (36 bytes)	
_DATA_106A_:	
	.db $B6 $B5 $8E $8D $B6 $B5 $BB $BC $8E $8D $AF $BD $B7 $B8 $8E $8D
	.db $B7 $B8 $B9 $BA $8E $8D $B9 $BA $61 $BC $8E $8D $BB $BC $9C $64
	.db $61 $61 $BC $BD
	
; Data from 108E to 10B1 (36 bytes)	
_DATA_108E_:	
	.db $B5 $B6 $8E $8D $B6 $B6 $B9 $BA $8E $8D $B9 $BA $BB $BC $8E $8D
	.db $BB $BC $B7 $B8 $8E $8D $B7 $B8 $61 $BA $8E $8D $B9 $BA $9C $64
	.db $61 $61 $BD $BC
	
_LABEL_10B2_:	
		push hl
		push de
		ld de, _DATA_1110_
		ld a, (hl)
		cp $01
		jr nz, +
		ld de, _DATA_10D8_
		jr ++
	
+:	
		cp $02
		jr nz, ++
		ld de, _DATA_10F4_
++:	
		ld a, $0E
		ld (_RAM_C1E0_), a
		ld b, $02
		ld hl, $3A92
		call _LABEL_1246_
		pop de
		pop hl
		ret
	
; Data from 10D8 to 10F3 (28 bytes)	
_DATA_10D8_:	
	.db $97 $97 $9D $B3 $B4 $9E $97 $97 $97 $97 $97 $97 $9D $B4 $B0 $B1
	.db $B2 $AF $AF $B0 $B1 $B2 $B3 $B4 $B0 $B1 $B2 $AF
	
; Data from 10F4 to 110F (28 bytes)	
_DATA_10F4_:	
	.db $97 $97 $9D $B4 $B3 $9E $97 $97 $97 $97 $97 $97 $9D $B3 $B1 $B2
	.db $B3 $AF $AF $B1 $B2 $B3 $B4 $B0 $B1 $B2 $B3 $AF
	
; Data from 1110 to 112B (28 bytes)	
_DATA_1110_:	
	.db $97 $97 $9D $B0 $B1 $9E $97 $97 $97 $97 $97 $97 $9D $B2 $B2 $B3
	.db $B4 $AF $AF $B2 $B3 $B4 $B0 $B1 $B2 $B3 $B4 $AF
	
_LABEL_112C_:	
		ld a, $05
		ld (_RAM_C1E0_), a
		ld hl, _RAM_C1C8_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret
	
+:	
		ld (hl), $18
		ld de, _DATA_119D_
		inc hl
		ld l, (hl)
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3800
		add hl, de
		ld de, _DATA_11B3_
		ld b, $02
		call _LABEL_1246_
		ld hl, _RAM_C1C9_
		ld a, (hl)
		inc a
		cp $16
		jr nz, +
		xor a
+:	
		ld (hl), a
		ld de, _DATA_1187_
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		ld h, $0A
		call _LABEL_25B4_
		ld de, $11B3
		add hl, de
		push hl
		ld de, _DATA_119D_
		ld a, (_RAM_C1C9_)
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3800
		add hl, de
		pop de
		ld b, $02
		jp _LABEL_1246_
	
; Data from 1187 to 119C (22 bytes)	
_DATA_1187_:	
	.db $00 $04 $04 $03 $03 $03 $03 $03 $04 $04 $00 $00 $02 $02 $01 $01
	.db $01 $01 $01 $02 $02 $00
	
; Data from 119D to 11B2 (22 bytes)	
_DATA_119D_:	
	.db $CE $CE $CE $CE $CF $D0 $D1 $D2 $D3 $D3 $D3 $D3 $D3 $D3 $D2 $D1
	.db $D0 $CF $CE $CE $CE $CE
	
; Data from 11B3 to 11E4 (50 bytes)	
_DATA_11B3_:	
	.dsb 10, $82
	.db $EF $F0 $F1 $F2 $82 $F3 $F4 $F5 $F6 $82 $82 $82 $82 $82 $82 $EF
	.db $F0 $F1 $F2 $82 $E6 $E8 $E9 $EA $82 $EB $EC $ED $EE $82 $82 $82
	.db $82 $82 $82 $E6 $E8 $E9 $EA $82
	
_LABEL_11E5_:	
		ld a, $05
		ld (_RAM_C1E0_), a
		ld hl, _RAM_C1C6_
		ld a, (hl)
		or a
		jr z, +
		dec a
		ld (hl), a
		ret
	
+:	
		ld (hl), $18
		ld de, _DATA_1276_
		inc hl
		ld l, (hl)
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3800
		add hl, de
		ld de, _DATA_128A_
		ld b, $04
		call _LABEL_1246_
		ld hl, _RAM_C1C7_
		ld a, (hl)
		inc a
		cp $14
		jr nz, +
		xor a
+:	
		ld (hl), a
		ld de, _DATA_1262_
		ld l, (hl)
		ld h, $00
		add hl, de
		ld a, (hl)
		ld (_RAM_C1D5_), a
		ld e, a
		ld h, $14
		call _LABEL_25B4_
		ld de, $128A
		add hl, de
		push hl
		ld de, _DATA_1276_
		ld a, (_RAM_C1C7_)
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3800
		add hl, de
		pop de
		ld b, $04
		ld a, l
		ld (_RAM_C1D4_), a
_LABEL_1246_:	
		ld a, (_RAM_C1E0_)
		ld c, a
		call _LABEL_205_
-:	
		ld a, (de)
		out (Port_VDPData), a
		push af
		push af
		pop af
		pop af
		inc de
		dec c
		jr nz, -
		push de
		ld e, $20
		ld d, $00
		add hl, de
		pop de
		djnz _LABEL_1246_
		ret
	
; Data from 1262 to 1275 (20 bytes)	
_DATA_1262_:	
	.db $01 $02 $01 $02 $03 $03 $03 $02 $01 $02 $01 $03 $03 $02 $01 $03
	.db $03 $03 $02 $01
	
; Data from 1276 to 1289 (20 bytes)	
_DATA_1276_:	
	.db $11 $11 $11 $11 $12 $13 $12 $12 $12 $12 $12 $13 $12 $11 $11 $12
	.db $13 $12 $12 $12
	
; Data from 128A to 12D9 (80 bytes)	
_DATA_128A_:	
	.dsb 15, $20
	.db $63 $63 $63 $63 $63 $20 $C0 $C1 $C2 $20 $20 $C3 $C4 $C5 $20 $C6
	.db $C7 $C8 $C9 $CA $63 $CB $CC $CD $60 $20 $CE $CF $D0 $20 $20 $D1
	.db $D2 $D3 $20 $D4 $D5 $D6 $D7 $D8 $63 $D9 $DA $DB $60 $20 $C0 $C1
	.db $C2 $20 $20 $DC $DD $DE $20 $DF $E0 $E1 $E2 $D8 $63 $E3 $E4 $E5
	.db $60
	
_LABEL_12DA_:	
		ld a, $05
		ld (_RAM_C1E0_), a
		ld hl, _RAM_C1CA_
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		ret
	
+:	
		ld (hl), $18
		ld de, _DATA_137E_
		inc hl
		ld l, (hl)
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3900
		add hl, de
		ld de, _DATA_13C7_
		ld b, $02
		call _LABEL_1246_
		ld hl, _RAM_C1CB_
		ld a, (hl)
		inc a
		cp $49
		jr nz, +
		xor a
+:	
		ld (hl), a
		ld de, _DATA_1335_
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		ld h, $0A
		call _LABEL_25B4_
		ld de, $13C7
		add hl, de
		push hl
		ld de, _DATA_137E_
		ld a, (_RAM_C1CB_)
		ld l, a
		ld h, $00
		add hl, de
		ld e, (hl)
		ld d, $00
		ld hl, $3900
		add hl, de
		pop de
		ld b, $02
		jp _LABEL_1246_
	
; Data from 1335 to 137D (73 bytes)	
_DATA_1335_:	
	.db $01 $02 $05 $06 $07 $08 $09 $0A $00 $17 $18 $19 $1A $1B $1C $03
	.db $04 $03 $04 $03 $04 $0B $0C $0D $0E $0F $10 $00 $17 $18 $19 $1A
	.db $1B $1C $03 $04 $03 $04 $03 $04 $0B $0C $0D $0E $0F $00 $11 $12
	.db $13 $14 $15 $16 $01 $02 $01 $02 $05 $06 $07 $08 $09 $0A $00 $11
	.db $12 $13 $14 $15 $16 $01 $02 $01 $02
	
; Data from 137E to 13C6 (73 bytes)	
_DATA_137E_:	
	.dsb 15, $AD
	.db $AC $AC $AD $AD
	.dsb 9, $AE
	.db $B5 $B5 $B5 $B5 $B5 $B5 $B4 $B4 $B5 $B5
	.dsb 14, $B6
	.db $B7 $B7
	.dsb 9, $B6
	.db $AE $AE $AE $AE $AE $AE $AF $AF $AE $AE
	
; Data from 13C7 to 14E8 (290 bytes)	
_DATA_13C7_:	
	.dsb 10, $82
	.db $98 $9A $9C $9E $82 $99 $9B $9D $9F $82 $A0 $A2 $A4 $A6 $82 $A1
	.db $A3 $A5 $A7 $82 $82 $A8 $AA $AC $AE $82 $A9 $AB $AD $AF $82 $B0
	.db $B2 $B4 $B6 $82 $B1 $B3 $B5 $B7 $A2 $A4 $A6 $82 $82 $A3 $A5 $A7
	.db $82 $82 $9A $9C $9E $82 $82 $9B $9D $9F $82 $82 $9C $9E $82 $82
	.db $82 $9D $9F $82 $82 $82 $A4 $A6 $82 $82 $82 $A5 $A7 $82 $82 $82
	.db $A6 $82 $82 $82 $82 $A7 $82 $82 $82 $82 $9E $82 $82 $82 $82 $9F
	.db $82 $82 $82 $82 $82 $82 $B0 $B2 $B4 $82 $82 $B1 $B3 $B5 $82 $82
	.db $A8 $AA $AC $82 $82 $A9 $AB $AD $82 $82 $82 $A8 $AA $82 $82 $82
	.db $A9 $AB $82 $82 $82 $B0 $B2 $82 $82 $82 $B1 $B3 $82 $82 $82 $82
	.db $B0 $82 $82 $82 $82 $B1 $82 $82 $82 $82 $A8 $82 $82 $82 $82 $A9
	.db $82 $82 $82 $82 $98 $82 $82 $82 $82 $99 $82 $82 $82 $82 $A0 $82
	.db $82 $82 $82 $A1 $82 $82 $82 $A0 $A2 $82 $82 $82 $A1 $A3 $82 $82
	.db $82 $98 $9A $82 $82 $82 $99 $9B $82 $82 $98 $9A $9C $82 $82 $99
	.db $9B $9D $82 $82 $A0 $A2 $A4 $82 $82 $A1 $A3 $A5 $AE $82 $82 $82
	.db $82 $AF $82 $82 $82 $82 $B6 $82 $82 $82 $82 $B7 $82 $82 $82 $82
	.db $B4 $B6 $82 $82 $82 $B5 $B7 $82 $82 $82 $AC $AE $82 $82 $82 $AD
	.db $AF $82 $82 $82 $AA $AC $AE $82 $82 $AB $AD $AF $82 $82 $B2 $B4
	.db $B6 $82 $82 $B3 $B5 $B7 $82 $82
	
_LABEL_14E9_:	
		halt
		ld hl, _RAM_C07C_
		ld a, (hl)
		rrca
		jp nc, _LABEL_1655_
		rrca
		jp c, ++
		rrca
		jp c, _LABEL_15A5_
		ld hl, _RAM_C07C_
		bit 5, (hl)
		jr z, +
		call _LABEL_16B7_
		jr _LABEL_14E9_
	
+:	
		ld hl, _RAM_C07C_
		ld a, (hl)
		and $FE
		ld (hl), a
		jr _LABEL_14E9_
	
++:	
		ld a, (_RAM_C1C1_)
		and $E0
		jp nz, ++
		ld hl, _RAM_C07C_
		ld a, (hl)
		and $FD
		ld (hl), a
		ld hl, _RAM_C069_
		ld a, (hl)
		or a
		jr nz, +
		ld hl, _RAM_C07C_
		ld a, (hl)
		and $DF
		ld (hl), a
		ld a, $00
		ld (_RAM_C1E6_), a
		jp _LABEL_14E9_
	
+:	
		dec (hl)
		di
		call _LABEL_1E1_
		ld b, $01
		call _LABEL_210_
		call _LABEL_1693_
		call _LABEL_397_
		ei
		jp _LABEL_14E9_
	
++:	
		xor a
		ld (_RAM_C07D_), a
		ld (_RAM_C1E1_), a
		ld (_RAM_C090_), a
		ld hl, _RAM_C0A5_
		ld bc, $0020
-:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		ld hl, _RAM_C1CD_
		ld (hl), $05
		inc hl
		ld (hl), $4B
-:	
		halt
		ld hl, _RAM_C1CD_
		dec (hl)
		call _LABEL_17B7_
		ld a, (_RAM_C1C1_)
		or a
		jr z, +
		call _LABEL_17FD_
		ld hl, _RAM_C1CD_
		ld a, (hl)
		or a
		jr nz, -
		ld (hl), $05
		inc hl
		ld a, (hl)
		or a
		jr z, -
		dec (hl)
		jr -
	
+:	
		ld hl, _RAM_C1CD_
		ld a, (hl)
		or a
		jp nz, -
		ld (hl), $05
		inc hl
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		jp -
	
+:	
		ld a, $00
		ld (_RAM_C1E6_), a
		jp _LABEL_14E9_
	
_LABEL_15A5_:	
		ld hl, _RAM_C0A5_
		ld bc, $0070
-:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		ld iy, _RAM_C080_
		ld (iy+0), $50
		ld (iy+1), $00
		ld (iy+2), $00
		ld hl, _RAM_C1CC_
		ld (hl), $00
		inc hl
		ld (hl), $04
		inc hl
		ld (hl), $64
		ld a, (_RAM_C06A_)
		or a
		jr nz, +
		ld a, $83
		ld (_RAM_C1E6_), a
		jr _LABEL_15E0_
	
+:	
		ld a, $84
		ld (_RAM_C1E6_), a
_LABEL_15E0_:	
		halt
		ld hl, _RAM_C1CD_
		dec (hl)
		call _LABEL_16D9_
		ld a, (_RAM_C07C_)
		bit 1, a
		jr nz, +
		call _LABEL_2067_
		xor a
		ld (_RAM_C1C1_), a
		ld hl, _RAM_C1CD_
		ld a, (hl)
		or a
		jr nz, _LABEL_15E0_
		ld (hl), $04
		inc hl
		ld a, (hl)
		or a
		jr z, _LABEL_15E0_
		dec (hl)
		jr _LABEL_15E0_
	
+:	
		ld hl, _RAM_C1CD_
		ld a, (hl)
		or a
		jr nz, _LABEL_15E0_
		ld (hl), $04
		inc hl
		ld a, (hl)
		or a
		jr z, +
		dec (hl)
		jp _LABEL_15E0_
	
+:	
		ld a, $00
		ld (_RAM_C1E6_), a
		call _LABEL_4D2C_
		di
		call _LABEL_1E1_
		ld b, $02
		call _LABEL_210_
		ld de, _RAM_C07C_
		ld a, (de)
		and $F9
		ld (de), a
		ld hl, _RAM_C06A_
		ld a, (hl)
		cpl
		ld (hl), a
		or a
		jr nz, +
		ld hl, _RAM_C068_
		ld a, $01
		add a, (hl)
		daa
		ld (hl), a
		ld hl, _RAM_C07F_
		ld a, (hl)
		cp $05
		jr nc, +
		inc (hl)
+:	
		call _LABEL_1693_
		call _LABEL_397_
		ei
		jp _LABEL_14E9_
	
_LABEL_1655_:	
		ld a, $00
		ld (_RAM_C1E6_), a
		call _LABEL_4D2C_
		di
		ld hl, _RAM_C0A5_
		ld bc, $0030
-:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, -
		ld hl, $396C
		ld de, _DATA_168A_
		ld bc, $0009
		call _LABEL_21C_
		call _LABEL_328_
		ld b, $20
		call _LABEL_210_
		xor a
		ld (_RAM_C06A_), a
		call +
		jp _LABEL_F3_
	
; Data from 168A to 1692 (9 bytes)	
_DATA_168A_:	
	.db $47 $41 $4D $45 $20 $4F $56 $45 $52
	
_LABEL_1693_:	
		ld hl, _RAM_C080_
		ld bc, $01E8
		jr _LABEL_16A1_
	
+:	
		ld hl, _RAM_C07D_
		ld bc, $01EB
_LABEL_16A1_:	
		ld (hl), $00
		inc hl
		dec bc
		ld a, c
		or b
		jr nz, _LABEL_16A1_
		ld hl, _RAM_C1CC_
		ld (hl), $80
		ld a, $08
		ld (_RAM_C1A8_), a
		call _LABEL_D6F_
		ret
	
_LABEL_16B7_:	
		ld hl, _RAM_C1CC_
		dec (hl)
		call _LABEL_E69_
		call _LABEL_223E_
		call _LABEL_2067_
		call _LABEL_17B7_
		call _LABEL_52E_
		call _LABEL_17FD_
		call _LABEL_2385_
		ld hl, _RAM_C1CC_
		ld a, (hl)
		or a
		ret nz
		ld (hl), $20
		ret
	
_LABEL_16D9_:	
		ld a, (_RAM_C079_)
		or a
		call nz, _LABEL_17A0_
		ld a, (_RAM_C07B_)
		and a
		jr z, ++
		in a, (Port_IOPort1)
		ld c, a
		ld a, (_RAM_C07C_)
		and $81
		cp $81
		jr nz, +
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		ld c, a
+:	
		ld a, c
		and $3F
		ld c, a
		rlca
		rlca
		and $C0
		or c
		bit 5, a
		ret nz
		res 4, a
		ret
	
++:	
		ld a, $07
		out (_PORT_DE_), a
		in a, (Port_IOPort1)
		ld c, a
		ld a, (_RAM_C07C_)
		and $81
		cp $81
		jr nz, +
		in a, (Port_IOPort2)
		rl c
		rla
		rl c
		rla
		ld c, a
+:	
		ld a, c
		and $3F
		ld c, a
		rlca
		rlca
		and $C0
		or c
		bit 5, a
		jr nz, +
		res 4, a
		ld c, a
+:	
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
		res 4, c
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
		ld a, c
		ret
	
_LABEL_1777_:	
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
		ld (_RAM_C07B_), a
		ld a, $07
		out (_PORT_DE_), a
		ret
	
_LABEL_17A0_:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
-:	
		ld a, (_RAM_C079_)
		or a
		ret z
		jr -
	
_LABEL_17B7_:	
		call _LABEL_16D9_
		cpl
		and $3F
		ld hl, _RAM_C1A7_
		ld (hl), a
		and $0F
		jp po, +
		ld a, $1C
		and (hl)
		ld (hl), a
+:	
		ld hl, _RAM_C1D1_
		ld de, _RAM_C1A7_
		ld a, (hl)
		or a
		jr z, ++
		ld a, (de)
		bit 4, a
		jr z, +
		and $0F
		ld (de), a
		jr +++
	
+:	
		ld (hl), $00
		jr +++
	
++:	
		ld a, (de)
		bit 4, a
		jr z, +++
		ld (hl), $01
+++:	
		ld hl, _RAM_C1B9_
		ld (hl), $00
		inc hl
		ld (hl), $00
		ld hl, _RAM_C080_
		ld (hl), $00
		inc hl
		ld (hl), $00
		inc hl
		ld (hl), $00
		ret
	
_LABEL_17FD_:	
		call _LABEL_215D_
		ld ix, _RAM_C099_
		ld bc, $0F07
		call _LABEL_2537_
		ld (_RAM_C1C5_), a
		ld a, (_RAM_C06A_)
		or a
		jp nz, _LABEL_1D23_
		ld a, (_RAM_C1C1_)
		rlca
		jp c, _LABEL_1890_
		rlca
		jp c, _LABEL_1898_
		rlca
		jp c, _LABEL_1890_
		rlca
		jp c, _LABEL_18A3_
		rlca
		jp c, +
		ld a, (_RAM_C1C2_)
		rrca
		rrca
		rrca
		jp c, _LABEL_1A74_
		rrca
		jp c, _LABEL_1A57_
		rrca
		jp c, _LABEL_1A91_
		ld hl, _RAM_C1A7_
		ld a, (hl)
		and $0F
		or a
		jr z, +
		inc hl
		ld (hl), a
+:	
		ld a, (_RAM_C1C5_)
		cp $62
		jp z, _LABEL_18B0_
		cp $64
		jp z, _LABEL_18F5_
		cp $66
		jp z, _LABEL_18B0_
		cp $60
		jp z, _LABEL_1936_
		cp $61
		jp z, _LABEL_1936_
		cp $69
		jp z, _LABEL_19F1_
		cp $6A
		jp z, _LABEL_19F1_
		cp $6B
		jp z, _LABEL_1936_
		cp $67
		jp z, _LABEL_1936_
		cp $68
		jp z, _LABEL_1936_
		cp $AE
		jp z, _LABEL_1936_
		cp $74
		jp c, +
		cp $84
		jp c, _LABEL_19C0_
+:	
		ld a, $08
		ld (_RAM_C1C1_), a
_LABEL_1890_:	
		ld a, $02
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
_LABEL_1898_:	
		ld a, $FF
		ld (_RAM_C1B9_), a
		ld hl, _DATA_1D1B_
		jp _LABEL_1BF3_
	
_LABEL_18A3_:	
		ld a, $10
		ld (_RAM_C1B9_), a
		ld a, $08
		ld (_RAM_C1C1_), a
		jp _LABEL_1BC4_
	
_LABEL_18B0_:	
		xor a
		ld (_RAM_C1C1_), a
		ld a, (_RAM_C1A7_)
		rrca
		jp c, _LABEL_1970_
		rrca
		jp c, _LABEL_1988_
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		ret nc
		jp _LABEL_1A91_
	
+:	
		ld a, $FF
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
++:	
		ld a, (_RAM_C1C5_)
		cp $62
		jr z, +
		cp $66
		jr nz, ++
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp z, _LABEL_1BC4_
		ld a, $30
		ld (_RAM_C080_), a
		jp _LABEL_1A57_
	
++:	
		ld a, $01
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
_LABEL_18F5_:	
		xor a
		ld (_RAM_C1C1_), a
		ld a, (_RAM_C1A7_)
		rrca
		jp c, _LABEL_1970_
		rrca
		jp c, _LABEL_1988_
		rrca
		jr c, ++
		rrca
		jr c, +
		rrca
		ret nc
		jp _LABEL_1A91_
	
+:	
		ld a, $01
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
++:	
		ld a, (_RAM_C1C5_)
		cp $64
		jr nz, +
		ld a, (_RAM_C1A7_)
		and $10
		jp z, _LABEL_1BC4_
		ld a, $30
		ld (_RAM_C080_), a
		jp _LABEL_1A74_
	
+:	
		ld a, $FF
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
_LABEL_1936_:	
		xor a
		ld (_RAM_C1C1_), a
		ld a, (_RAM_C1A7_)
		rrca
		jp c, _LABEL_1970_
		rrca
		jp c, _LABEL_1988_
		rrca
		jr c, ++
		rrca
		jr c, +
		rrca
		ret nc
		jp _LABEL_1A91_
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1A57_
		ld a, $01
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1A74_
		ld a, $FF
		ld (_RAM_C1BA_), a
		jp _LABEL_1BC4_
	
_LABEL_1970_:	
		ld ix, _RAM_C099_
		ld bc, $0E07
		call _LABEL_2537_
		call _LABEL_1A20_
		jp nz, _LABEL_1BC4_
		ld a, $FF
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
_LABEL_1988_:	
		ld a, (_RAM_C1A7_)
		and $10
		jp z, +
		ld a, $80
		ld (_RAM_C1C1_), a
		ret
	
+:	
		ld a, $11
		call _LABEL_1A07_
		call _LABEL_1A20_
		jp nz, _LABEL_1BC4_
		cp $74
		jp c, +
		cp $84
		jp c, ++
+:	
		ld a, $01
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
++:	
		ld a, $01
		ld (_RAM_C1A8_), a
		ld a, $01
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
_LABEL_19C0_:	
		ld a, $01
		ld (_RAM_C1A8_), a
		xor a
		ld (_RAM_C1C1_), a
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		ret
	
+:	
		ld a, (_RAM_C1C5_)
		call _LABEL_1A20_
		ret nz
		ld a, $FF
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
++:	
		ld a, (_RAM_C1C5_)
		call _LABEL_1A20_
		ret nz
		ld a, $01
		ld (_RAM_C1B9_), a
		jp _LABEL_1BC4_
	
_LABEL_19F1_:	
		xor a
		ld (_RAM_C1C1_), a
		ld a, $01
		ld (_RAM_C1B9_), a
		ld a, $01
		ld (_RAM_C1BA_), a
		ld a, $08
		ld (_RAM_C1A8_), a
		jp _LABEL_1BC4_
	
_LABEL_1A07_:	
		ld ix, _RAM_C099_
		ld l, (ix+0)
		push hl
		add a, (ix+0)
		ld (ix+0), a
		ld bc, $0007
		call _LABEL_2537_
		pop hl
		ld (ix+0), l
		ret
	
_LABEL_1A20_:	
		cp $62
		ret z
		cp $66
		ret z
		cp $64
		ret z
		cp $60
		ret z
		cp $61
		ret z
		cp $6B
		ret z
		cp $67
		ret z
		cp $68
		ret z
		cp $AE
		ret z
		cp $74
		jr c, +
		cp $84
		jr c, ++
+:	
		or a
		push de
		push hl
		ld hl, $0001
		ld de, $0000
		sbc hl, de
		pop hl
		pop de
		ret
	
++:	
		or a
		push hl
		sbc hl, hl
		pop hl
		ret
	
_LABEL_1A57_:	
		ld hl, _DATA_1AF2_
		ld a, $08
		ld (_RAM_C1C2_), a
		call _LABEL_1AB1_
		ld a, (_RAM_C1C2_)
		or a
		jr z, _LABEL_1A6E_
		ld hl, _DATA_1CDB_
		jp _LABEL_1BF3_
	
_LABEL_1A6E_:	
		ld hl, _DATA_1CE3_
		jp _LABEL_1BF3_
	
_LABEL_1A74_:	
		ld hl, _DATA_1B38_
		ld a, $04
		ld (_RAM_C1C2_), a
		call _LABEL_1AB1_
		ld a, (_RAM_C1C2_)
		or a
		jr z, _LABEL_1A8B_
		ld hl, _DATA_1CFB_
		jp _LABEL_1BF3_
	
_LABEL_1A8B_:	
		ld hl, _DATA_1D03_
		jp _LABEL_1BF3_
	
_LABEL_1A91_:	
		ld hl, _DATA_1B7E_
		ld a, $10
		ld (_RAM_C1C2_), a
		call _LABEL_1AB1_
		ld a, (_RAM_C1C2_)
		or a
		jp nz, _LABEL_1BC4_
		ld a, (_RAM_C1A7_)
		bit 2, a
		jr nz, _LABEL_1A8B_
		bit 3, a
		jr nz, _LABEL_1A6E_
		jp _LABEL_1BC4_
	
_LABEL_1AB1_:	
		ld bc, _RAM_C1C4_
		ld a, (bc)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ld (_RAM_C1B9_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C1BA_), a
		ld a, (bc)
		inc a
		ld (bc), a
		push bc
		ld a, $09
		call _LABEL_1A07_
		pop bc
		call _LABEL_1A20_
		jr z, +
		cp $69
		jr z, _LABEL_1ADE_
		cp $6A
		jr z, _LABEL_1ADE_
-:	
		ld a, (bc)
		cp $22
		ret nz
_LABEL_1ADE_:	
		xor a
		ld (bc), a
		ld (_RAM_C1C2_), a
		ret
	
+:	
		cp $74
		jr c, +
		cp $84
		jr c, -
+:	
		ld a, (bc)
		cp $19
		ret c
		jr _LABEL_1ADE_
	
; Data from 1AF2 to 1B37 (70 bytes)	
_DATA_1AF2_:	
	.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $01 $FF $01
	.db $FF $01 $FF $01 $FF $01 $FF $01 $FF $01 $FF $01 $FF $01 $FF $01
	.db $00 $01 $00 $01 $00
	.dsb 22, $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	
; Data from 1B38 to 1B7D (70 bytes)	
_DATA_1B38_:	
	.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00
	.dsb 20, $FF
	.db $00 $FF $00 $FF $00 $FF $01 $FF $01 $FF $01 $FF $01 $FF $01 $FF
	.db $01 $FF $01 $FF $01 $FF $01 $FF $01 $FF $01 $00 $01 $00 $01 $00
	.db $01 $00 $01 $00 $01 $00
	
; Data from 1B7E to 1BC3 (70 bytes)	
_DATA_1B7E_:	
	.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00
	.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
	.dsb 15, $00
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	.db $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00
	
_LABEL_1BC4_:	
		ld ix, _RAM_C1BB_
		ld (ix+0), $08
		ld (ix+1), $02
		ld a, (_RAM_C1A8_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		ret nc
		ld hl, _DATA_1CDB_
		jr ++++
	
+:	
		ld hl, $1D0B
		jr ++++
	
++:	
		ld hl, $1CEB
		jr ++++
	
+++:	
		ld hl, $1CFB
++++:	
		call _LABEL_2038_
_LABEL_1BF3_:	
		ld (_RAM_C1DC_), hl
		ld a, (_RAM_C07D_)
		or a
		jr nz, _LABEL_1C15_
		ld a, (_RAM_C1E5_)
		or a
		jr nz, _LABEL_1C15_
		ld a, (_RAM_C1C1_)
		or a
		jr nz, _LABEL_1C15_
		ld hl, _RAM_C1E1_
		ld a, (hl)
		or a
		jr z, _LABEL_1C15_
		inc hl
		ld a, (hl)
		cpl
		ld (hl), a
		or a
		ret z
_LABEL_1C15_:	
		ld ix, _RAM_C091_
		ld a, (_RAM_C1B9_)
		ld e, a
		ld a, (ix+8)
		add a, e
		cp $AE
		jr c, _LABEL_1C32_
		ld d, a
		ld a, (_RAM_C1C1_)
		or a
		jr z, +
		ld a, d
		cp $E0
		jp nc, _LABEL_1CBC_
_LABEL_1C32_:	
		ld (ix+8), a
		ld (ix+12), a
		ld a, (ix+0)
		ld e, a
		ld a, (_RAM_C1B9_)
		add a, e
		ld (ix+0), a
		ld (ix+4), a
+:	
		ld a, (_RAM_C1BA_)
		ld e, a
		ld a, (ix+1)
		add a, e
		cp $00
		ret c
		cp $F0
		ret nc
		ld (ix+1), a
		ld (ix+5), a
		ld a, (ix+9)
		ld e, a
		ld a, (_RAM_C1BA_)
		add a, e
		ld (ix+9), a
		ld (ix+13), a
		ld iy, (_RAM_C1DC_)
		ld a, (iy+0)
		ld (ix+2), a
		ld a, (iy+1)
		ld (ix+3), a
		ld a, (iy+2)
		ld (ix+6), a
		ld a, (iy+3)
		ld (ix+7), a
		ld a, (iy+4)
		ld (ix+10), a
		ld a, (iy+5)
		ld (ix+11), a
		ld a, (iy+6)
		ld (ix+14), a
		ld a, (iy+7)
		ld (ix+15), a
		ld a, (_RAM_C1C1_)
		and $60
		ret nz
		ld a, (ix+0)
		cp $F8
		ret nc
		cp $08
		ret nc
		ld a, (ix+1)
		cp $7D
		ret c
		cp $AD
		ret nc
		ld hl, _RAM_C07C_
		ld a, (hl)
		or $04
		ld (hl), a
		ret
	
_LABEL_1CBC_:	
		push af
		ld hl, _RAM_C1C1_
		bit 6, (hl)
		jr nz, +
		pop af
_LABEL_1CC5_:	
		ld hl, _RAM_C1C1_
		ld (hl), $40
		ld hl, _RAM_C07C_
		ld a, (hl)
		or $02
		ld (hl), a
		ret
	
+:	
		pop af
		cp $E0
		jp nz, _LABEL_1C32_
		ld (hl), $00
		ret
	
; Data from 1CDB to 1CE2 (8 bytes)	
_DATA_1CDB_:	
	.db $08 $04 $10 $0A $0C $04 $14 $0A
	
; Data from 1CE3 to 1CFA (24 bytes)	
_DATA_1CE3_:	
	.db $18 $04 $20 $0A $1C $04 $24 $0A $68 $04 $70 $0A $6C $04 $74 $0A
	.db $78 $04 $80 $0A $7C $04 $84 $0A
	
; Data from 1CFB to 1D02 (8 bytes)	
_DATA_1CFB_:	
	.db $28 $04 $30 $0A $2C $04 $34 $0A
	
; Data from 1D03 to 1D1A (24 bytes)	
_DATA_1D03_:	
	.db $38 $04 $40 $0A $3C $04 $44 $0A $48 $04 $50 $0A $4C $04 $54 $0A
	.db $58 $04 $60 $0A $5C $04 $64 $0A
	
; Data from 1D1B to 1D22 (8 bytes)	
_DATA_1D1B_:	
	.db $78 $04 $88 $0A $7C $04 $84 $0A
	
_LABEL_1D23_:	
		ld a, $01
		ld (_RAM_C1E1_), a
		ld de, $0000
		xor a
		ld (_RAM_C1E5_), a
		ld a, (_RAM_C07D_)
		or a
		jr nz, +
		ld a, (_RAM_C1C1_)
		rlca
		jp c, _LABEL_1DCA_
		rlca
		jp c, _LABEL_1898_
		rlca
		jp c, _LABEL_1898_
+:	
		ld a, (_RAM_C1C2_)
		rrca
		jp c, _LABEL_1F2D_
		rrca
		jp c, _LABEL_1F38_
		rrca
		jp c, _LABEL_1F43_
		rrca
		jp c, _LABEL_1F4E_
		rrca
		jp c, _LABEL_1F59_
		ld hl, _RAM_C1A7_
		ld a, (hl)
		and $0F
		or a
		jr z, +
		inc hl
		ld (hl), a
+:	
		ld a, (_RAM_C07D_)
		or a
		jp nz, _LABEL_1EEB_
		ld a, (_RAM_C1C5_)
		cp $60
		jp c, _LABEL_1DD2_
		cp $77
		jp c, _LABEL_1DD2_
		cp $7A
		jp c, _LABEL_1E1A_
		cp $7E
		jp c, _LABEL_1E5E_
		cp $98
		jp c, +
		cp $B8
		jp c, _LABEL_1EEB_
		cp $E6
		jp c, +
		cp $F7
		jp c, _LABEL_1EEB_
+:	
		cp $7E
		jp z, _LABEL_1EA2_
		cp $7F
		jp z, _LABEL_1EA2_
		cp $83
		jp z, _LABEL_1EA2_
		cp $84
		jp z, _LABEL_1EA2_
		cp $87
		jp z, _LABEL_1EA2_
		cp $93
		jp z, _LABEL_1EA2_
		call _LABEL_2021_
		ld hl, _RAM_C1C1_
		ld a, $80
		or (hl)
		ld (hl), a
		ld hl, _RAM_C07C_
		ld a, $02
		or (hl)
		ld (hl), a
		jp _LABEL_1BC4_
	
_LABEL_1DCA_:	
		ld b, $05
		call _LABEL_210_
		jp _LABEL_1CC5_
	
_LABEL_1DD2_:	
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		rrca
		jp c, _LABEL_1F59_
		ret
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F2D_
		ld e, $FF
		jp _LABEL_1F64_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F38_
		ld e, $01
		jp _LABEL_1F64_
	
+++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F43_
		ld d, $FF
		jp _LABEL_1F64_
	
++++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F4E_
		ld d, $01
		jp _LABEL_1F64_
	
_LABEL_1E1A_:	
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		rrca
		jp c, _LABEL_1F59_
		ret
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F2D_
		jp _LABEL_1F64_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F38_
		jp _LABEL_1F64_
	
+++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F43_
		ld d, $FF
		jp _LABEL_1F64_
	
++++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F4E_
		ld d, $01
		jp _LABEL_1F64_
	
_LABEL_1E5E_:	
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		rrca
		jp c, _LABEL_1F59_
		ret
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F2D_
		ld e, $FF
		jp _LABEL_1F64_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F38_
		ld e, $01
		jp _LABEL_1F64_
	
+++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F43_
		jp _LABEL_1F64_
	
++++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F4E_
		jp _LABEL_1F64_
	
_LABEL_1EA2_:	
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		rrca
		jp c, _LABEL_1F59_
		ret
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F2D_
		ld e, $FF
		jp _LABEL_1F64_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F38_
		jp _LABEL_1F64_
	
	; Data from 1ECE to 1ED0 (3 bytes)
	.db $C3 $C4 $1B
	
+++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F43_
		ld d, $FF
		jp _LABEL_1F64_
	
++++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F4E_
		ld d, $01
		jp _LABEL_1F64_
	
_LABEL_1EEB_:	
		ld a, (_RAM_C1A7_)
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		rrca
		jp c, _LABEL_1F59_
		jp _LABEL_1C15_
	
+:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F2D_
		jp _LABEL_1BC4_
	
++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F38_
		jp _LABEL_1BC4_
	
+++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F43_
		jp _LABEL_1BC4_
	
++++:	
		ld a, (_RAM_C1A7_)
		and $10
		jp nz, _LABEL_1F4E_
		jp _LABEL_1BC4_
	
_LABEL_1F2D_:	
		ld hl, _DATA_1F95_
		ld a, $01
		ld (_RAM_C1C2_), a
		jp +
	
_LABEL_1F38_:	
		ld hl, _DATA_1FDB_
		ld a, $02
		ld (_RAM_C1C2_), a
		jp +
	
_LABEL_1F43_:	
		ld hl, _DATA_1B38_
		ld a, $04
		ld (_RAM_C1C2_), a
		jp +
	
_LABEL_1F4E_:	
		ld hl, _DATA_1AF2_
		ld a, $08
		ld (_RAM_C1C2_), a
		jp +
	
_LABEL_1F59_:	
		ld hl, _DATA_1B7E_
		ld a, $10
		ld (_RAM_C1C2_), a
		jp +
	
_LABEL_1F64_:	
		ld hl, _RAM_C1B9_
		ld (hl), e
		inc hl
		ld (hl), d
		jp _LABEL_1BC4_
	
+:	
		ld a, $01
		ld (_RAM_C1E5_), a
		ld bc, _RAM_C1C4_
		ld a, (bc)
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (hl)
		ld (_RAM_C1B9_), a
		inc hl
		ld a, (hl)
		ld (_RAM_C1BA_), a
		ld a, (bc)
		inc a
		ld (bc), a
		ld a, (bc)
		cp $23
		jp nz, _LABEL_1BC4_
		xor a
		ld (bc), a
		ld (_RAM_C1C2_), a
		jp _LABEL_1BC4_
	
; Data from 1F95 to 1FDA (70 bytes)	
_DATA_1F95_:	
	.db $01 $00 $01 $00 $01 $00 $01
	.dsb 19, $00
	.dsb 9, $FF
	.db $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF
	.db $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $01 $FF $01 $FF
	.db $01 $FF $01
	
; Data from 1FDB to 2020 (70 bytes)	
_DATA_1FDB_:	
	.db $FF $00 $FF $00 $FF $00 $FF
	.dsb 19, $00
	.dsb 9, $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01
	.db $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $00 $01 $FF $01 $FF $01
	.db $FF $01 $FF
	
_LABEL_2021_:	
		ld iy, _RAM_C0A1_
		ld ix, _RAM_C099_
		ld a, (ix+0)
		ld (iy+0), a
		ld a, (ix+1)
		ld (iy+1), a
		jp _LABEL_790_
	
_LABEL_2038_:	
		ld a, (ix+3)
		or a
		jr z, +
		dec (ix+3)
		jr ++
	
+:	
		ld a, (ix+0)
		ld (ix+3), a
++:	
		ld a, (ix+2)
		ld c, a
		add a, a
		add a, a
		add a, a
		ld e, a
		ld d, $00
		add hl, de
		ld a, (ix+0)
		sub (ix+3)
		ret nz
		ld a, c
		inc a
		cp (ix+1)
		jr c, +
		xor a
+:	
		ld (ix+2), a
		ret
	
_LABEL_2067_:	
		ld hl, _RAM_C1CD_
		ld a, (hl)
		or a
		ret nz
		xor a
		ld de, _RAM_C065_
		ld hl, _RAM_C080_
		ld b, $03
-:	
		ld a, (de)
		adc a, (hl)
		daa
		ld (de), a
		inc hl
		inc de
		djnz -
		ld bc, _RAM_C1C3_
		ld a, (bc)
		res 1, a
		ld (bc), a
		ld hl, _RAM_C07E_
		ld a, (hl)
		or a
		jr nz, +
		dec de
		ld a, (de)
		cp $01
		jr c, +
		ld (hl), $01
		ld a, (bc)
		set 1, a
		ld (bc), a
		ld a, (_RAM_C069_)
		inc a
		ld (_RAM_C069_), a
+:	
		xor a
		ld de, _RAM_C067_
		ld hl, _RAM_C06D_
		ld a, (de)
		sub (hl)
		jr c, +++
		jr z, +
		jr ++
	
+:	
		dec hl
		dec de
		ld a, (de)
		sub (hl)
		jr c, +++
		jr z, +
		jr ++
	
+:	
		dec hl
		dec de
		ld a, (de)
		sub (hl)
		jr c, +++
		jr z, +++
++:	
		ld hl, _RAM_C1C3_
		ld a, $01
		or (hl)
		ld (hl), a
		ld hl, _RAM_C065_
		ld de, _RAM_C06B_
		ld bc, $0003
		ldir
+++:	
		ld a, (_RAM_C1C1_)
		and $80
		ret nz
		ld a, (_RAM_C1CC_)
		or a
		ret nz
		xor a
		ld hl, _RAM_C06E_
		ld b, $50
		ld a, (hl)
		sub b
		daa
		ld (hl), a
		inc hl
		ld b, $00
		ld a, (hl)
		sbc a, b
		daa
		ld (hl), a
		ld hl, _RAM_C06E_
		ld a, (hl)
		or a
		ret nz
		inc hl
		ld a, (hl)
		or a
		ret nz
		ld a, (hl)
		or a
		ret nz
		ld hl, _RAM_C07C_
		ld a, (hl)
		or $02
		ld (hl), a
		ld hl, _RAM_C1C1_
		ld b, $21
		ld a, (_RAM_C06A_)
		or a
		jr nz, +
		ld b, $20
+:	
		ld (hl), b
		ret
	
_LABEL_2111_:	
		push de
		push hl
		ld de, _RAM_C083_
		ld bc, $0007
		ldir
		pop hl
		call _LABEL_256F_
		pop hl
		ld a, (_RAM_C08C_)
		cp $02
		jr c, ++
		jr z, +
		ld de, _RAM_C08B_
		ld bc, $0605
		jr +++
	
+:	
		ld de, _RAM_C089_
		ld bc, $0403
		jr +++
	
++:	
		ld de, _RAM_C087_
		ld bc, $0201
+++:	
		call _LABEL_205_
-:	
		ld a, c
		or a
		jr z, +
		dec c
		ld a, (de)
		cp $30
		jr nz, +
		ld a, $20
		jr ++
	
+:	
		ld c, $00
		ld a, (de)
++:	
		out (Port_VDPData), a
		push af
		push af
		pop af
		pop af
		dec de
		djnz -
		ret
	
_LABEL_215D_:	
		ld hl, _RAM_C1DB_
		ld a, (_RAM_C1C1_)
		bit 6, a
		jp nz, _LABEL_21EC_
		bit 5, a
		jp nz, _LABEL_2203_
		bit 7, a
		jp nz, _LABEL_2203_
		bit 4, a
		jp nz, _LABEL_21FA_
		bit 3, a
		jp nz, _LABEL_21FA_
		ld de, _RAM_C07C_
		ld a, (de)
		and $02
		ret nz
		bit 1, (hl)
		jr z, +
		ld (hl), $00
		ld a, $88
		jp _LABEL_222A_
	
+:	
		ld a, (_RAM_C1C2_)
		and $1F
		jp nz, _LABEL_2223_
		bit 2, (hl)
		jr z, +
		ld (hl), $00
+:	
		ld a, (_RAM_C1A8_)
		rrca
		jp c, +++
		rrca
		jp c, ++
		rrca
		jp c, +
		rrca
		ret nc
		ld hl, (_RAM_C1DC_)
		ld a, (hl)
		cp $08
		jr ++++
	
+:	
		ld hl, (_RAM_C1DC_)
		ld a, (hl)
		cp $28
		jr ++++
	
++:	
		ld hl, (_RAM_C1DC_)
		ld a, (hl)
		cp $68
		jr ++++
	
+++:	
		ld hl, (_RAM_C1DC_)
		ld a, (hl)
		cp $48
++++:	
		jr nz, +
		ld a, (_RAM_C1BE_)
		or a
		jr nz, +
		ld a, (_RAM_C1DB_)
		bit 3, a
		ret nz
		ld a, $08
		ld (_RAM_C1DB_), a
		ld a, $10
		ld (_RAM_C080_), a
		ld a, $85
		jr _LABEL_222A_
	
+:	
		xor a
		ld (_RAM_C1DB_), a
		ret
	
_LABEL_21EC_:	
		bit 0, (hl)
		ret nz
		ld a, (_RAM_C06A_)
		or a
		ret nz
		ld (hl), $01
		ld a, $81
		jr _LABEL_222A_
	
_LABEL_21FA_:	
		bit 1, (hl)
		ret nz
		ld (hl), $02
		ld a, $87
		jr _LABEL_222A_
	
_LABEL_2203_:	
		ld a, (hl)
		and $03
		ret nz
		ld a, (_RAM_C06A_)
		or a
		jr nz, +
		ld (hl), $02
		ld a, $87
		jr _LABEL_222A_
	
+:	
		ld (hl), $01
		ld a, (_RAM_C1C1_)
		rrca
		jr nc, +
		ld a, $81
		jr _LABEL_222A_
	
+:	
		ld a, $82
		jr _LABEL_222A_
	
_LABEL_2223_:	
		bit 2, (hl)
		ret nz
		ld (hl), $04
		ld a, $86
_LABEL_222A_:	
		ld (_RAM_C1E6_), a
		ret
	
; Data from 222E to 2231 (4 bytes)	
_DATA_222E_:	
	.db $E0 $00 $00 $10
	
; Data from 2232 to 2235 (4 bytes)	
_DATA_2232_:	
	.db $10 $40 $00 $10
	
; Data from 2236 to 2239 (4 bytes)	
_DATA_2236_:	
	.db $10 $20 $D0 $00
	
; Data from 223A to 223D (4 bytes)	
_DATA_223A_:	
	.db $10 $20 $10 $40
	
_LABEL_223E_:	
		ld hl, _RAM_C1DE_
		ld b, $07
		ld iy, _RAM_C0B9_
		ld a, (_RAM_C1C2_)
		or a
		jp nz, +++
		ld a, (hl)
		and $40
		jr z, ++
		ld ix, _RAM_C080_
		ld (ix+0), $00
		ld (ix+1), $01
		ld (ix+2), $00
		ld iy, _RAM_C13D_
-:	
		ld a, (iy+0)
		bit 6, a
		jr nz, +
		ld de, $0008
		add iy, de
		djnz -
		jr ++
	
+:	
		and $BF
		ld (iy+0), a
++:	
		ld (hl), $00
		ret
	
+++:	
		ld de, _RAM_C1A8_
		ld a, (de)
		and $0F
		or (hl)
		ld (hl), a
		rrca
		jr c, +
		rrca
		jr c, ++
		rrca
		jr c, +++
		rrca
		jr c, ++++
		ret
	
+:	
		ld a, (hl)
		bit 7, a
		jr nz, +++++
		ld hl, _DATA_222E_
		jp _LABEL_233D_
	
++:	
		ld a, (hl)
		bit 7, a
		jr nz, +++++
		ld hl, _DATA_2232_
		jp _LABEL_233D_
	
+++:	
		ld a, (hl)
		bit 7, a
		jr nz, +++++
		ld hl, _DATA_2236_
		jp _LABEL_233D_
	
++++:	
		bit 7, (hl)
		jr nz, +++++
		ld hl, _DATA_223A_
		jp _LABEL_233D_
	
+++++:	
		push iy
		ld iy, _RAM_C13D_
-:	
		ld a, (iy+0)
		and $40
		jr nz, +
		ld de, $0008
		add iy, de
		djnz -
		pop iy
		ret
	
+:	
		push iy
		pop hl
		ld de, $C13D
		or a
		sbc hl, de
		rr h
		rr l
		pop de
		add hl, de
		push hl
		pop iy
		ld de, _RAM_C18D_
		ld hl, _DATA_246E_
		call _LABEL_251C_
		ld iy, _RAM_C091_
		ld de, _RAM_C191_
		ld hl, _DATA_248A_
		call _LABEL_251C_
		ld de, _RAM_C1A8_
		ld a, (de)
		rrca
		jr c, ++
		rrca
		jr c, +
		rrca
		jr c, +++
		rrca
		jr c, ++++
		ret
	
+:	
		ld a, (_RAM_C192_)
		ld hl, _RAM_C18D_
		sub (hl)
		ret nc
		jr +++++
	
++:	
		ld a, (_RAM_C191_)
		ld hl, _RAM_C18E_
		sub (hl)
		ret c
		jr +++++
	
+++:	
		ld a, (_RAM_C194_)
		ld hl, _RAM_C18F_
		sub (hl)
		ret nc
		jr +++++
	
++++:	
		ld a, (_RAM_C193_)
		ld hl, _RAM_C190_
		sub (hl)
		ret c
+++++:	
		ld hl, _RAM_C1DE_
		ld a, $40
		or (hl)
		ld (hl), a
		ret
	
_LABEL_233D_:	
		push iy
		ld iy, _RAM_C091_
		ld de, _RAM_C191_
		call _LABEL_251C_
		pop iy
-:	
		ld de, _RAM_C18D_
		ld hl, _DATA_246E_
		call _LABEL_251C_
		call _LABEL_24F5_
		jr c, +
		ld de, $0004
		add iy, de
		djnz -
		ret
	
+:	
		ld hl, _RAM_C1DE_
		ld a, $80
		or (hl)
		ld (hl), a
		push iy
		pop hl
		ld de, $C0B9
		or a
		sbc hl, de
		rl l
		rl h
		ld de, _RAM_C13D_
		add hl, de
		push hl
		pop iy
		ld a, $40
		or (iy+0)
		ld (iy+0), a
		ret
	
_LABEL_2385_:	
		ld hl, _RAM_C1A4_
		ld a, (hl)
		rrca
		jp c, +
		rrca
		jp c, ++
		rrca
		jp c, _LABEL_23D3_
		rrca
		jp c, _LABEL_23FC_
		ld (hl), $01
		ret
	
+:	
		ld ix, _RAM_C115_
		ld iy, _RAM_C0A5_
		ld b, $05
		call _LABEL_2443_
		ld (hl), $02
		ret nc
		ld hl, _RAM_C1C1_
		ld (hl), $10
		ld (ix+0), $00
		ld (iy+0), $F0
		ld (iy+1), $F0
		ret
	
++:	
		ld ix, _RAM_C13D_
		ld iy, _RAM_C0B9_
		ld b, $03
		call _LABEL_2443_
		ld (hl), $04
		ret nc
		ld (ix+0), $81
		ret
	
_LABEL_23D3_:	
		ld a, (_RAM_C1C2_)
		and $1F
		jr nz, +
		ld ix, _RAM_C155_
		ld iy, _RAM_C0C5_
		ld b, $04
		call _LABEL_2443_
		ld (hl), $08
		ret nc
		ld hl, _RAM_C1C1_
		ld a, (hl)
		or $81
		ld (hl), a
		ld hl, _RAM_C07C_
		ld a, (hl)
		or $02
		ld (hl), a
		ret
	
+:	
		ld (hl), $08
		ret
	
_LABEL_23FC_:	
		ld ix, _RAM_C175_
		ld iy, _RAM_C0D5_
		ld b, $03
		call _LABEL_2443_
		ld (hl), $01
		jr nc, +
		ld a, (_RAM_C07C_)
		and $02
		ret nz
		ld (ix+0), $81
		ld a, $01
		ld (_RAM_C07D_), a
		ld hl, _RAM_C1C1_
		ld a, (hl)
		bit 5, a
		jr nz, +
		and $7F
		ld (hl), a
		ld hl, _RAM_C07C_
		ld a, (hl)
		and $FD
		ld (hl), a
		ret
	
+:	
		xor a
		ld (_RAM_C07D_), a
		ld hl, _RAM_C175_
		ld de, $0008
		ld b, $03
-:	
		ld a, (hl)
		and $FE
		ld (hl), a
		add hl, de
		djnz -
		ret
	
_LABEL_2443_:	
		push hl
-:	
		ld a, (ix+0)
		bit 7, a
		jr z, +
		push ix
		push iy
		push bc
		call _LABEL_2492_
		pop bc
		pop iy
		pop ix
		jr c, ++
+:	
		ld de, $0008
		add ix, de
		ld de, $0004
		add iy, de
		djnz -
		scf
		ccf
++:	
		pop hl
		ret
	
; Data from 246A to 246D (4 bytes)	
_DATA_246A_:	
	.db $08 $0A $08 $0A
	
; Data from 246E to 2471 (4 bytes)	
_DATA_246E_:	
	.db $06 $0B $06 $0B
	
; Data from 2472 to 2475 (4 bytes)	
_DATA_2472_:	
	.db $01 $06 $06 $0A
	
; Data from 2476 to 2479 (4 bytes)	
_DATA_2476_:	
	.db $0A $0F $01 $08
	
; Data from 247A to 247D (4 bytes)	
_DATA_247A_:	
	.db $01 $08 $01 $06
	
; Data from 247E to 2481 (4 bytes)	
_DATA_247E_:	
	.db $01 $08 $0B $0F
	
; Data from 2482 to 2485 (4 bytes)	
_DATA_2482_:	
	.db $02 $0D $01 $10
	
; Data from 2486 to 2489 (4 bytes)	
_DATA_2486_:	
	.db $06 $0E $03 $0E
	
; Data from 248A to 248D (4 bytes)	
_DATA_248A_:	
	.db $18 $20 $04 $0E
	
; Data from 248E to 2491 (4 bytes)	
_DATA_248E_:	
	.db $09 $20 $04 $0E
	
_LABEL_2492_:	
		ld a, (_RAM_C1A4_)
		rrca
		jr c, ++++
		rrca
		jr c, _LABEL_24DD_
		rrca
		jr c, ++
		rrca
		ret nc
		ld hl, _DATA_2486_
		ld a, (iy+2)
		cp $C4
		jr nz, +
		ld hl, _DATA_2482_
+:	
		ld de, _DATA_248A_
		jr +++++
	
++:	
		ld hl, _DATA_2472_
		ld a, (ix+0)
		rrca
		jr c, +++
		rrca
		jr c, ++
		rrca
		jr c, +
		rrca
		ret nc
		ld hl, _DATA_247E_
		jr +++
	
+:	
		ld hl, _DATA_247A_
		jr +++
	
++:	
		ld hl, _DATA_2476_
+++:	
		ld de, _DATA_248A_
		jr +++++
	
++++:	
		ld hl, _DATA_246A_
		ld de, _DATA_248E_
		jr +++++
	
_LABEL_24DD_:	
		ld hl, _DATA_246E_
		ld de, _DATA_248A_
+++++:	
		push de
		ld de, _RAM_C18D_
		call _LABEL_251C_
		pop hl
		ld de, _RAM_C191_
		ld iy, _RAM_C091_
		call _LABEL_251C_
_LABEL_24F5_:	
		ld hl, _RAM_C191_
		ld ix, _RAM_C18D_
		ld a, (hl)
		sub (ix+1)
		jr nc, +
		inc hl
		ld a, (hl)
		sub (ix+0)
		jr c, +
		inc hl
		ld a, (hl)
		sub (ix+3)
		jr nc, +
		inc hl
		ld a, (hl)
		sub (ix+2)
		jr c, +
		scf
		ret
	
+:	
		scf
		ccf
		ret
	
_LABEL_251C_:	
		ld a, (iy+0)
		add a, (hl)
		ld (de), a
		inc hl
		inc de
		ld a, (iy+0)
		add a, (hl)
		ld (de), a
		inc hl
		inc de
		ld a, (iy+1)
		add a, (hl)
		ld (de), a
		inc hl
		inc de
		ld a, (iy+1)
		add a, (hl)
		ld (de), a
		ret
	
_LABEL_2537_:	
		ld a, (ix+1)
		add a, c
		and $F8
		rrca
		rrca
		rrca
		ld e, a
		ld d, $00
		ld a, (ix+0)
		add a, b
		and $F8
		rrca
		rrca
		rrca
		add a, a
		add a, a
		ld l, a
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, de
		ld de, $3800
		add hl, de
		ld a, $3B
		cp h
		jp z, +
		ld a, l
		out (Port_VDPAddress), a
		ld a, h
		out (Port_VDPAddress), a
		push af
		push af
		pop af
		pop af
		in a, (Port_VDPData)
		ret
	
+:	
		ld a, $20
		ret
	
_LABEL_256F_:	
		xor a
		ld hl, _RAM_C083_
		ld de, _RAM_C086_
		ld a, (_RAM_C08C_)
		ld c, a
		ld b, a
		cp $04
		ccf
		ret c
-:	
		ld a, (hl)
		and $0F
		cp $0A
		ccf
		ret c
		ld a, (hl)
		and $F0
		cp $A0
		ccf
		ret c
		inc hl
		djnz -
		ld hl, $C083
		xor a
		ld b, $03
-:	
		rrd
		or $30
		ld (de), a
		inc de
		rrd
		or $30
		ld (de), a
		dec c
		jr z, +
		inc de
		inc hl
		djnz -
+:	
		djnz +
		xor a
		ret
	
+:	
		ld c, $01
		inc de
		inc hl
		ld (hl), $00
		jr -
	
_LABEL_25B4_:	
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
	
; Data from 25C0 to 260D (78 bytes)	
_DATA_25C0_:	
	.db $60 $61 $62 $63 $20 $20 $20 $20 $20 $20 $20 $64 $65 $66 $67 $68
	.db $69 $20 $6A $6B $6C $6D $6E $6F $70 $71 $72 $73 $74 $75 $76 $77
	.db $78 $79 $7A $7B $7C $7D $7E $7F $80 $81 $82 $83 $84 $85 $86 $87
	.db $88 $89 $8A $8B $8C $8D $8E $8F $90 $91 $92 $93 $94 $95 $96 $97
	.db $20 $20 $98 $99 $9A $9B $9C $20 $9D $9E $9F $A0 $20 $20
	
; Data from 260E to 265B (78 bytes)	
_DATA_260E_:	
	.db $A1 $A2 $A3
	.dsb 10, $20
	.db $A4 $A5 $A6 $A7 $A8 $A9 $AA $AB $AC $AD $AE $AF $B0 $B1 $B2 $B3
	.db $B4 $B5 $B6 $B7 $B8 $B9 $BA $BB $BC $BD $BE $BF $C0 $C1 $C2 $C3
	.db $C4 $C5 $C6 $C7 $C8 $C9 $CA $CB $CC $CD $CE $CF $D0 $D1 $D2 $D3
	.db $D4 $D5 $D6 $D7 $20 $20 $20 $20 $20 $20 $20 $D8 $D9 $DA $DB $20
	.db $20
	
; Data from 265C to 26A9 (78 bytes)	
_DATA_265C_:	
	.dsb 17, $20
	.db $DC $DD $DE $20 $20 $20 $DF $E0 $20 $20 $20 $20 $20 $E1 $E2 $E3
	.db $E4 $E5 $E6 $E7 $E8 $E9 $20 $20 $20 $20 $EA $EB $EC $ED $EE $EF
	.db $F0 $F1 $F2 $20 $20 $20 $20 $20 $20 $F3 $F4 $F5 $F6 $F7
	.dsb 15, $20
	
; Data from 26AA to 26F7 (78 bytes)	
_DATA_26AA_:	
	.dsb 13, $20
	.db $F8 $F9 $FA $FB $FC
	.dsb 9, $20
	.db $FD $FE $FF $00 $01 $02 $03 $04 $20 $20 $20 $20 $05 $06 $07 $08
	.db $09 $0A $0B $0C $0D $20 $20 $20 $20 $20 $20 $20 $20 $0E $0F $10
	.db $11
	.dsb 18, $20
	
; Data from 26F8 to 27F9 (258 bytes)	
_DATA_26F8_:	
	.db $10 $B0 $FF $FF $FF $FF $DF $DF $EF $EF $00 $87 $9F $BF $FF $FF
	.db $FD $F8 $00 $C0 $F1 $FB $FF $FF $FF $FF $00 $78 $FE $FF $FF $FF
	.db $FF $FF $00 $00 $00 $00 $00 $80 $80 $C0 $00 $00 $00 $01 $03 $03
	.db $03 $01 $F3 $F1 $F3 $FF $FF $FF $FF $FE $FF $FF $FF $FF $EF $C7
	.db $81 $00 $7F $FF $FD $FD $F9 $F1 $C0 $00 $EF $F7 $FF $FF $FB $F8
	.db $E0 $00 $F8 $F9 $FF $FF $DF $3F $7F $FF $FF $FF $FF $F7 $E7 $03
	.db $83 $C1 $CF $8F $8F $DF $FF $FF $FF $FE $C0 $C0 $C0 $80 $80 $00
	.db $00 $00 $00 $01 $01 $01 $00 $00 $00 $00 $FF $F3 $E1 $F3 $FF $FF
	.db $3E $00 $C0 $E0 $E0 $E0 $C0 $80 $00 $00 $78
	.dsb 119, $00
	
; Data from 27FA to 2A01 (520 bytes)	
_DATA_27FA_:	
	.db $00 $00 $00 $00 $00 $00 $01 $03 $00 $00 $00 $0F $3F $FF $FF $FF
	.db $00 $00 $00 $80 $E0 $F1 $FB $FF $00 $00 $00 $00 $00 $C0 $E0 $F0
	.db $00 $00 $00 $00 $00 $00 $3F $FF $00 $00 $00 $00 $00 $00 $00 $C0
	.db $07 $0F $1F $1F $3F $3F $7F $7F $FF $FF $FF $FF $FF $FC $F0 $E0
	.db $FF $FF $FF $FF $FF $7F $3F $1F $F0 $F0 $F0 $F0 $E0 $E0 $E0 $C0
	.db $00 $00 $00 $00 $01 $03 $03 $07 $00 $00 $00 $00 $F0 $FC $FE $FE
	.db $00 $00 $00 $00 $00 $00 $00 $1C $00 $00 $00 $00 $03 $07 $0F $1F
	.db $00 $03 $1F $FF $FF $FF $FF $FF $01 $83 $C7 $EF $EF
	.dsb 11, $FF
	.db $E0 $F0 $F8 $F8 $FC $FC $FC $FE $FF $FF $FF $FF $FF $FF $FF $FF
	.db $E0 $C0 $C0 $80 $80 $80 $80 $80 $1F $0F $0F $07 $00 $00 $00 $00
	.db $C0 $80 $83 $07 $0F $1F $3F $3F $00 $FC $FF $FF $FF $FF $FF $FF
	.db $07 $07 $03 $83 $C1 $E1 $E1 $F1 $FE $FE $FF $FF $FF $FF $FF $FF
	.db $7E $FF $FF $FF $FF $FF $FF $FF $3F $7F $7F $FF $FF $FF $FF $FF
	.db $FF $FF $CF $87 $87 $07 $0F $0F $FF $FF $FF $FF $FF $FF $FF $FF
	.db $E3 $C1 $81 $81 $83 $C7 $FF $FF $FE $FE $FE $FE $FE $FE $FE $FC
	.db $FF $FF $FF $FF $FF $7F $7F $7F $80 $C0 $E0 $E0 $F0 $F8 $FF $FF
	.db $00 $00 $00 $00 $3C $7E $FF $FF $7F $7F $7F $FF $FF $FE $FE $FE
	.db $FF $FF $9F $0F $0F $0F $07 $07 $F1 $F1 $FB $FB $FB $FF $FF $FF
	.db $FE $FE $FC $FC $FC $FC $FC $FC $FF $7F $7F $7F $7F $7F $FF $FF
	.db $FF $FF $FF $FF $BF $BF $9F $87 $9F
	.dsb 9, $FF
	.db $DF $DF $8F $07 $E3 $F9 $FF $FF $FF $FF $FF $FF $FF $FF $FC $FC
	.db $F8 $F8 $F0 $E0 $C0 $80 $3F $3F $1F $1F $0F $07 $03 $00
	.dsb 12, $FF
	.db $FE $FC $F8 $E0 $FF $FF $FF $FF $FF $7F $7F $3F $0F $0F $9F
	.dsb 9, $FF
	.db $F7 $F3 $E0 $E0 $FC $FE $FF $FF $FF $FF $FD $39 $FF $FF $FF $FF
	.db $FF $FF $FF $FF $8F $0F $1F $1F $1F $1F $0F $03 $FF $FF $FF $FF
	.db $FF $FC $F0 $E0 $FC $FC $FE $FE $FE $7E $7E $FE $7E $00 $00 $00
	.db $00 $00 $00 $00 $3F $00 $00 $00 $00 $00 $00 $00 $80 $00 $00 $00
	.db $00 $00 $00 $00 $3F $1F $0F $03 $00 $00 $00 $00 $FF $FF $FE $F8
	.db $00 $00 $00 $00 $C0 $80 $00 $00 $00 $00 $00 $00 $FE $3E $0C $00
	.db $00 $00 $00 $00 $07 $0F $0F $0F $07 $07 $03 $00 $C1 $E7 $FF $FF
	.db $FF $FF $FE $F8 $FC $FC $F8 $F0 $E0 $80 $00 $00
	
; Data from 2A02 to 2CF9 (760 bytes)	
_DATA_2A02_:	
	.db $00 $00 $00 $00 $00 $01 $07 $0F $00 $00 $00 $00 $01 $FF $FF $FF
	.db $00 $00 $00 $00 $F8 $FE $FF $FF $1F $1F $1F $1F $0F $07 $03 $03
	.db $FF $FF $FF $FF $FE $FE $FE $FE $FF $FF $FF $FF $7F $3F $3F $3F
	.db $80 $80 $C0 $C0 $C1 $C3 $C7 $CF $00 $00 $00 $7C $FF $FF $FF $FF
	.db $00 $00 $00 $01 $07 $CF $EF $FF $00 $01 $03 $E7 $F7 $FF $FF $FF
	.db $70 $F8 $FC $FC $FE $FE $FE $FE $00 $00 $00 $00 $01 $07 $0F $1F
	.db $00 $00 $00 $00 $F8 $FF $FF $FF $00 $00 $00 $00 $00 $01 $E3 $F7
	.db $00 $00 $00 $3F $FF $FF $FF $FF $00 $00 $00 $80 $E0 $F0 $F8 $FC
	.db $03 $03 $03 $03 $01 $01 $01 $01 $FE $FE $FF $FF $FF $FF $FF $FF
	.db $3F $7F $FF $FF $FF $FF $FF $FF $CF $DF $9F $BF $3F $3F $FF $FF
	.db $FF $FF $FF $E7 $E3 $C3 $C3 $C3
	.dsb 11, $FF
	.db $FD $FC $FC $FC $FC $FF $FF $FF $FF $FF $FF $FF $FF $3F $3F $7F
	.db $7F $7F $FF $FF $FF $FF $FF $FF $FF $C7 $87 $07 $07
	.dsb 12, $FF
	.db $F1 $E0 $E0 $C0 $FC $FE $FE $FF $FF $FF $FF $7F $01 $01 $01 $01
	.db $01 $01 $01 $03 $FF $FF $FE $FE $FE $FE $FE $FF $FF $FF $1F $0F
	.db $0F $0F $1F
	.dsb 9, $FF
	.db $87 $87 $87 $8F $CF $FF $FF $FF $FF $FD $FD $F9 $F9 $F9 $F3 $F3
	.db $FE $FE $FE $FF $FF $FF $FF $FF $7F $7F $7F $7F
	.dsb 12, $FF
	.db $0F $9F
	.dsb 10, $FF
	.db $DF $DF $CF $8F $C0 $C0 $E0 $E1 $E3 $FF $FF $FF $7F $FF $FF $FF
	.db $FF $FE $FC $FC $07 $07 $0F $0F $0F $0F $07 $03
	.dsb 14, $FF
	.db $FE $F8 $FF $FF $EF $E7 $C3 $80 $00 $00 $FF $FF $FF $FF $FF $FC
	.db $00 $00 $E7 $E7 $C7 $87 $03 $01 $00 $00 $FF $FF $FF $FF $F8 $C0
	.db $00 $00 $FF $BC $80 $00 $00 $00 $01 $03 $7F $7F $FF $FF $FF $FF
	.db $FC $F8 $FF $F8 $FE $FF $FF $FF $3F $1F $07 $07 $03 $01 $80 $80
	.db $C0 $C0 $FF $FF $FF $FF $FF $3F $00 $00 $F8 $F8 $F0 $E0 $C0 $00
	.db $00 $00 $03 $03 $03 $03 $01 $01 $00 $00 $FC $FF $FF $FF $FF $FF
	.db $FF $3F $3F $FF $FF $FF $FF $FF $FC $F0 $C0 $C0 $C0 $80 $80 $00
	.db $00 $00 $00 $00 $00 $00 $00 $01 $03 $03 $00 $00 $1E $7F $FF $FF
	.db $FF $FF $00 $00 $00 $B0 $F8 $F8 $F8 $F8 $00 $00 $00 $00 $00 $00
	.db $00 $38 $00 $00 $00 $00 $00 $00 $3C $FF $07 $0F $0F $0F $0F $0F
	.db $0F $0F $F1 $E0 $E0 $C0 $C0 $C0 $C0 $C0 $F0 $F0 $61 $07 $0F $1F
	.db $1F $3F $00 $00 $E0 $F0 $F8 $FC $FC $FE $00 $70 $F8 $FD $FF $7F
	.db $7F $FF $00 $01 $03 $C7 $F7 $FF $FF $FF $FD $FF $FF $FF $9F $1F
	.db $3F $FF $FF $FF $FF $FF $E3 $C3 $C7 $FF $80 $C0 $C0 $E0 $E0 $E0
	.db $E0 $E0 $0F $07 $07 $03 $03 $01 $00 $00 $E1 $F3 $FF $FF $FF $FF
	.db $FF $3E $BF $FE $FE $FE $FE $FE $EF $1F $7E $3F $3F $3F $3F $3F
	.db $7F $FD $FB $FB $F3 $F7 $F7 $FF $FF $FF $FF $FF $FF $FF $F7 $F3
	.db $E7 $E7 $FF $FB $F3 $E1 $FC $FE $CF $8F $FF $FF $FF $FF $FF $3C
	.db $00 $00 $C0 $C0 $80 $80 $00 $00 $00 $00 $1F $0F $03 $00 $00 $00
	.db $00 $00 $F8 $F0 $C0 $00 $00 $00 $00 $00 $77 $07 $03 $00 $00 $00
	.db $00 $00 $EF $EF $C7 $07 $03 $00 $00 $00 $9F $FE $FE $FC $F8 $E0
	.db $00 $00 $00 $00 $00 $01 $03 $03 $03 $01 $00 $00 $00 $FE $FF $FF
	.db $FF $FF $00 $00 $00 $00 $80 $C0 $C0 $E1 $00 $00 $00 $00 $00 $00
	.db $00 $C7 $00 $00 $00 $00 $00 $00 $0E $DF $F3 $F3 $F3 $F7 $FF $FF
	.db $FF $FF $E7 $EF $FF $DF $9F $DF $FE $FE $F7 $FB $FF $FF $FF $3F
	.db $3F $3F
	
; Data from 2CFA to 3359 (1632 bytes)	
_DATA_2CFA_:	
	.incbin "data/File00_02CFA_03359.dat"
	
; Data from 335A to 3369 (16 bytes)	
_DATA_335A_:	
	.db $97 $10 $08 $04 $97 $10 $10 $0A $A7 $10 $0C $04 $A7 $10 $14 $0A
	
; Data from 336A to 3549 (480 bytes)	
_DATA_336A_:	
	.db $00 $00 $00 $00 $00 $00 $00 $00 $20 $20 $20 $20 $20 $00 $20 $00
	.db $50 $50 $50 $00 $00 $00 $00 $00 $50 $50 $F8 $50 $F8 $50 $50 $00
	.db $20 $78 $A0 $70 $28 $F0 $20 $00 $C0 $C8 $10 $20 $40 $98 $18 $00
	.db $40 $A0 $A0 $40 $A8 $90 $68 $00 $20 $20 $20 $00 $00 $00 $00 $00
	.db $20 $40 $80 $80 $80 $40 $20 $00 $20 $10 $08 $08 $08 $10 $20 $00
	.db $20 $A8 $70 $20 $70 $A8 $20 $00 $00 $20 $20 $F8 $20 $20 $00 $00
	.db $00 $00 $00 $00 $20 $20 $40 $00 $00 $00 $00 $F8
	.dsb 10, $00
	.db $20 $00 $00 $08 $10 $20 $40 $80 $00 $00 $70 $88 $98 $A8 $C8 $88
	.db $70 $00 $20 $60 $20 $20 $20 $20 $70 $00 $70 $88 $08 $30 $40 $80
	.db $F8 $00 $F8 $08 $10 $30 $08 $88 $70 $00 $10 $30 $50 $90 $F8 $10
	.db $10 $00 $F8 $80 $F0 $08 $08 $88 $70 $00 $38 $40 $80 $F0 $88 $88
	.db $70 $00 $F8 $08 $10 $20 $40 $40 $40 $00 $70 $88 $88 $70 $88 $88
	.db $70 $00 $70 $88 $88 $78 $08 $10 $E0 $00 $00 $00 $20 $00 $20 $00
	.db $00 $00 $00 $00 $20 $00 $20 $20 $40 $00 $10 $20 $40 $80 $40 $20
	.db $10 $00 $00 $00 $F8 $00 $F8 $00 $00 $00 $40 $20 $10 $08 $10 $20
	.db $40 $00 $70 $88 $10 $20 $20 $00 $20 $00 $70 $88 $A8 $B8 $B0 $80
	.db $78 $00 $20 $50 $88 $88 $F8 $88 $88 $00 $F0 $88 $88 $F0 $88 $88
	.db $F0 $00 $70 $88 $80 $80 $80 $88 $70 $00 $F0 $88 $88 $88 $88 $88
	.db $F0 $00 $F8 $80 $80 $F0 $80 $80 $F8 $00 $F8 $80 $80 $F0 $80 $80
	.db $80 $00 $78 $80 $80 $80 $98 $88 $78 $00 $88 $88 $88 $F8 $88 $88
	.db $88 $00 $70 $20 $20 $20 $20 $20 $70 $00 $08 $08 $08 $08 $08 $88
	.db $70 $00 $88 $90 $A0 $C0 $A0 $90 $88 $00 $80 $80 $80 $80 $80 $80
	.db $F8 $00 $88 $D8 $A8 $A8 $88 $88 $88 $00 $88 $88 $C8 $A8 $98 $88
	.db $88 $00 $70 $88 $88 $88 $88 $88 $70 $00 $F0 $88 $88 $F0 $80 $80
	.db $80 $00 $70 $88 $88 $88 $A8 $90 $68 $00 $F0 $88 $88 $F0 $A0 $90
	.db $88 $00 $70 $88 $80 $70 $08 $88 $70 $00 $F8 $20 $20 $20 $20 $20
	.db $20 $00 $88 $88 $88 $88 $88 $88 $70 $00 $88 $88 $88 $88 $88 $50
	.db $20 $00 $88 $88 $88 $A8 $A8 $D8 $88 $00 $88 $88 $50 $20 $50 $88
	.db $88 $00 $88 $88 $50 $20 $20 $20 $20 $00 $F8 $08 $10 $20 $40 $80
	.db $F8 $00 $7E $81 $9D $A1 $A1 $9D $81 $7E
	
; Data from 354A to 3989 (1088 bytes)	
_DATA_354A_:	
	.dsb 40, $00
	.db $FF $81 $81 $81 $81 $81 $81 $81
	.dsb 17, $00
	.db $08 $2A $3E $7E $3C $00 $00 $FF $7F $3F $1F $0F $07 $03 $01 $7F
	.db $3F $1F $0F $07 $03 $01 $00 $99 $11 $11 $11 $11 $11 $77 $66 $00
	.db $00 $00 $00 $00 $00 $00 $00 $FF $00 $00 $00 $00 $00 $00 $00 $FF
	.db $80 $80 $80 $80 $80 $80 $80 $80 $00 $00 $00 $00 $00 $00 $00 $FF
	.db $01 $01 $01 $01 $01 $01 $01 $01 $00 $00 $00 $00 $00 $00 $00 $01
	.db $01 $01 $01 $01 $01 $01 $01 $80 $80 $80 $80 $80 $80 $80 $80 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $FF
	.db $FF $80 $80 $FF $FF $80 $80 $FF $FF $01 $01 $FF $FF $01 $01 $00
	.db $01 $1D $3F $3F $67 $4D $5B $E0 $F0 $C0 $B8 $F8 $FC $CE $EE $01
	.db $03 $03 $03 $06 $06 $06 $06 $F6 $72 $7A $38 $38 $18 $10 $10 $00
	.db $00 $00 $00 $00 $00 $00 $00 $FF $00 $00 $00 $00 $00 $00 $00 $FF
	.db $01 $01 $01 $01 $01 $01 $01 $01 $00 $00 $00 $00 $00 $00 $00 $FF
	.db $80 $80 $80 $80 $80 $80 $80 $01 $01 $01 $01 $01 $01 $01 $01 $80
	.db $80 $80 $80 $80 $80 $80 $80 $00 $01 $1D $3F $3F $67 $4D $5B $E0
	.db $F0 $C0 $B8 $F8 $FC $CE $EE $01 $03 $03 $03 $06 $06 $06 $06 $F6
	.db $72 $7A $38 $38 $18 $10 $10 $07 $0F $03 $1D $1F $3F $73 $77 $00
	.db $80 $B8 $FC $FC $E6 $B2 $DA $6F $4E $5E $1C $1C $18 $80 $80 $80
	.db $C0 $C0 $C0 $E0 $60 $60 $60 $00 $00 $00 $00 $00 $00 $00 $00 $FF
	.db $00 $00 $00 $00 $00 $00 $00 $80 $00 $00 $00 $00 $00 $00 $00 $01
	.db $00 $00 $00 $00 $00 $00 $00 $FF $80 $80 $80 $80 $80 $80 $80 $FF
	.dsb 15, $01
	.db $80 $80 $80 $80 $80 $80 $80 $80 $FF $BF $9F $8F $87 $83 $81 $80
	.db $7F $00 $00 $00 $00 $00 $00 $00 $00 $01 $8D $3F $3F $67 $4D $5B
	.db $E0 $F0 $C0 $B8 $F8 $FC $CE $EE $01 $03 $03 $03 $06 $06 $06 $06
	.db $F6 $72 $7A $38 $38 $18 $10 $10 $0C $0C $0C $1C $18 $18 $38 $38
	.db $7F $3F $1F $0F $07 $03 $01 $00 $07 $0F $03 $8D $8F $3F $73 $77
	.db $00 $80 $B8 $FC $FC $E6 $B2 $DA $6F $4E $5E $1C $1C $18 $80 $80
	.db $80 $C0 $C0 $C0 $E0 $60 $60 $60 $7F $3F $1F $0F $07 $03 $01 $00
	.db $30 $30 $30 $38 $18 $18 $1C $1C $0C $0C $0C $1C $18 $18 $38 $38
	.db $99 $11 $11 $11 $11 $11 $77 $66 $00 $00 $00 $00 $00 $00 $00 $00
	.db $FB $58 $58 $00 $00 $00 $00 $00 $EE $BA $BA $0C $00 $00 $00 $00
	.db $6E $AF $00 $00 $00 $00 $00 $00 $67 $02 $32 $00 $00 $00 $00 $00
	.db $7E $14 $74 $00 $00 $00 $00 $00 $FF $71 $FF $EF $A5 $A5 $81 $81
	.db $FF $C3 $E7 $FB $BA $10 $12 $12 $91 $10 $11 $01 $10 $10 $00 $00
	.db $02 $02 $20 $22 $02 $20 $20 $00 $04 $44 $44 $44 $44 $44 $40 $00
	.db $00 $00 $00 $20 $22 $22 $22 $20 $41 $41 $01 $01 $09 $08 $08 $00
	.db $20 $20 $00 $04 $04 $04 $04 $00 $00 $00 $04 $04 $00 $00 $00 $00
	.db $FF $FE $01 $01 $01 $01 $01 $01 $FF $FF $80 $80 $80 $80 $80 $80
	.db $00 $00 $00 $01 $01 $07 $05 $07 $1C $7F $FF $C9 $80 $D6 $C9 $80
	.db $00 $00 $80 $C0 $C0 $F0 $D0 $F0 $03 $07 $0F $1F $3F $7F $7F $FF
	.db $FF $D5 $EB $E3 $FF $EB $FF $9C $E0 $C0 $F0 $F8 $FC $FC $FE $FE
	.db $00 $01 $01 $01 $01 $01 $01 $00 $FE $FC $78 $04 $82 $83 $82 $AA
	.db $08 $10 $08 $08 $08 $0C $F3 $00 $37 $1D $0D $05 $05 $45 $C6 $0E
	.db $00 $80 $80 $80 $80 $00 $00 $00 $AA $1F $07 $01 $03 $07 $03 $0F
	.db $08 $01 $C3 $FF $F3 $E1 $F3 $F0 $FC $F8 $E0 $F0 $FE $F8 $C0 $00
	.db $00 $00 $01 $03 $03 $0F $0D $0F $38 $FE $FF $A3 $01 $6D $A3 $01
	.db $00 $00 $00 $80 $80 $E0 $A0 $E0 $07 $03 $0F $1F $3F $7F $7F $FF
	.db $FF $AB $FF $D7 $FF $FF $FF $39 $C0 $E0 $F0 $F8 $FC $FE $FE $FF
	.db $00 $01 $01 $01 $01 $00 $00 $00 $EC $D8 $D0 $A0 $A0 $A4 $63 $70
	.db $10 $20 $10 $10 $10 $30 $CF $00 $7F $3F $1C $20 $41 $C1 $41 $55
	.db $00 $80 $80 $80 $80 $80 $80 $00 $3F $1F $07 $0F $7F $1F $03 $00
	.db $10 $80 $C3 $FF $CF $87 $CF $0F $55 $F8 $E0 $80 $C0 $E0 $C0 $F0
	.db $03 $07 $0F $1F $1F $3F $3F $EF $FF $D5 $E3 $EB $FF $FF $FF $1C
	.db $E0 $F0 $F8 $FC $FC $FE $FE $7F $00 $00 $00 $01 $01 $01 $01 $00
	.db $7C $F8 $F8 $F8 $C4 $8E $85 $8C $08 $10 $08 $08 $08 $18 $E7 $00
	.db $1F $0F $0F $0F $11 $58 $90 $18 $C6 $0F $07 $03 $07 $0F $07 $1F
	.db $08 $80 $E3 $FF $E3 $C1 $E3 $E3 $31 $F8 $80 $E0 $F0 $F8 $F0 $FC
	.dsb 16, $00
	
; Data from 398A to 3E41 (1208 bytes)	
_DATA_398A_:	
	.dsb 11, $00
	.db $10 $54 $38 $00 $00 $00 $00 $00 $00 $00 $00 $04 $0C
	.dsb 14, $00
	.db $84 $CC $00 $00 $00 $00 $00 $00 $80 $C0 $01 $01 $01 $03 $0F $03
	.db $03 $07 $00 $00 $00 $00 $00 $00 $80 $C0 $03
	.dsb 10, $01
	.db $03 $0F $03
	.dsb 10, $01
	.db $C0 $80 $00 $00 $00 $00 $00 $00 $1C $08 $08 $00 $00 $00 $00 $00
	.db $01 $01 $01 $01 $01 $01 $01 $01 $00 $00 $00 $00 $00 $00 $00 $00
	.db $01 $01 $01 $01 $01 $01 $03 $07 $00 $80 $E0 $80 $00 $00 $00 $00
	.db $01 $01 $01 $01 $01 $01 $03 $07 $00 $80 $E0 $80 $00 $00 $80 $C0
	.db $C0 $80 $00 $00 $00 $00 $00 $00 $01 $01 $01 $01 $01 $01 $03 $0C
	.db $C0 $80 $E0 $80 $00 $00 $00 $00 $01 $01 $03 $0F $03 $01 $03 $07
	.db $03 $7F $0F $00 $00 $00 $44 $EE $FC $E0 $FF $00 $00 $00 $44 $EE
	.db $00 $00 $FF $00 $00 $00 $44 $EE $FF $FF $C3 $81 $81 $08 $08 $08
	.db $08
	.dsb 11, $18
	.db $F8 $F8 $F8 $F8 $08 $08 $08 $08 $08 $08 $08 $08 $00 $00 $00 $00
	.db $00 $00 $44 $EE $0C $0C $04 $04 $00 $00 $44 $EE $BB $11 $00 $00
	.db $00 $00 $00 $00 $BB $11 $80 $80 $80 $80 $80 $80 $00 $00 $00 $00
	.db $00 $00 $00 $00 $E0 $C0 $80 $80 $80 $80 $C4 $EE $07 $03 $01 $01
	.db $01 $01 $47 $EF $80 $80 $80 $80 $80 $80 $00 $00 $00 $00 $00 $80
	.db $80 $80 $80 $80 $E0 $C0 $80 $80 $80 $80 $C4 $EE $3B $11 $00 $00
	.db $00 $00 $00 $00 $B8 $10
	.dsb 14, $00
	.db $BB $91 $80 $80 $80 $80 $00 $00 $BB $91 $80 $80 $80 $80 $80 $80
	.db $01 $03 $0F $03 $01 $01 $01 $01
	.dsb 32, $80
	.db $00 $00 $00 $00 $00 $00 $00 $00 $0C $0C $04 $04 $80 $80 $C4 $EE
	.dsb 36, $00
	.db $1E $3F $EF $6F $66 $3E $0D $01 $01 $01 $00 $00 $00 $00 $40 $40
	.db $7E $C1 $00 $FF $FF $FF $BC $80 $80 $00 $00 $00 $00 $00 $00 $00
	.db $00 $C0 $60 $30 $C8 $FD $1F $03
	.dsb 9, $00
	.db $20 $60 $40 $C0 $80 $C0 $00 $C0 $70 $00 $00 $00 $00 $00 $00 $1C
	.db $3F $7F $6F $67 $3F $0E
	.dsb 9, $00
	.db $FC $C7 $80 $FF $7F $7F $DC $C0 $60 $20 $00 $00 $00 $00 $01 $07
	.db $3F $D9 $30 $E0 $C0 $80 $00 $00 $00 $00 $00 $00 $00 $E0 $80 $00
	.db $80 $80 $C0 $40 $20 $20
	.dsb 10, $00
	.db $04 $04 $02 $02 $03 $01 $03 $00 $03 $0E $00 $00 $00 $00 $00 $00
	.db $00 $03 $06 $0C $13 $BF $F8 $C0 $00 $00 $00 $00 $00 $00 $02 $02
	.db $7E $87 $01 $FF $FE $FE $03 $03 $03 $01 $00 $00 $00 $00 $00 $00
	.db $F0 $F8 $FC $EC $CC $F8 $60 $00 $00 $00 $00 $00 $00 $07 $01 $00
	.db $01 $01 $03 $02 $04 $04 $00 $00 $00 $00 $00 $00 $00 $00 $80 $E0
	.db $FC $9B $0C $07 $03 $01 $00 $00 $00 $00 $00 $00 $00 $00 $04 $02
	.db $3F $E3 $01 $FF $FE $FE $3B $03 $06 $04 $00 $00 $00 $00 $00 $00
	.db $38 $FC $FE $F6 $E6 $FC $70
	.dsb 11, $00
	.db $78 $FE $BB $29 $0F $57 $7F $3E $0D $00 $E0 $30 $18 $0C $1E $36
	.db $63 $43 $03 $85 $4B $72 $4E $FC $BC $D8 $0E $0C $18 $30 $78 $6C
	.db $C6 $C2 $C0 $A1 $D2 $4E $72 $3F $3D $1B $00 $00 $00 $00 $00 $00
	.db $1E $7F $DD $94 $F0 $EA $FE $EC $B0 $00 $00 $00 $00 $01 $01 $07
	.db $05 $07 $1C $7F $FF $C9 $80 $B6 $C9 $80 $00 $00 $80 $C0 $C0 $F0
	.db $D0 $F0 $03 $07 $0F $1F $3F $7F $7F $FF $FF $D5 $FF $EB $E3 $EB
	.db $FF $9C $E0 $C0 $F0 $F8 $FC $FC $FE $FE $00 $01 $01 $01 $01 $01
	.db $01 $00 $FE $FC $78 $04 $82 $83 $82 $AA $08 $10 $08 $08 $08 $0C
	.db $F3 $00 $37 $1B $0B $05 $05 $25 $C6 $0E $00 $80 $80 $80 $80 $00
	.db $00 $00 $AA $1F $07 $01 $03 $07 $03 $0F $08 $01 $C3 $FF $F3 $E1
	.db $F3 $F0 $FC $F8 $E0 $F0 $FE $F8 $C0 $00 $00 $00 $01 $03 $03 $0F
	.db $0B $0F $38 $FE $FF $93 $01 $6D $93 $01 $00 $00 $00 $80 $80 $E0
	.db $A0 $E0 $07 $03 $0F $1F $3F $7F $7F $FF $FF $AB $FF $D7 $FF $FF
	.db $FF $39 $C0 $E0 $F0 $F8 $FC $FE $FE $FF $00 $01 $01 $01 $01 $00
	.db $00 $00 $EC $D8 $D0 $A0 $A0 $A4 $63 $60 $10 $E0 $10 $10 $10 $30
	.db $CF $00 $7F $3F $1E $20 $41 $C1 $41 $55 $00 $80 $80 $80 $80 $80
	.db $80 $00 $3F $1F $0E $0F $7F $1F $03 $00 $10 $80 $C3 $FF $CF $17
	.db $CF $0F $55 $F8 $E0 $80 $C0 $E0 $C0 $F0 $03 $07 $0F $1F $1F $3F
	.db $3F $7F $FF $D5 $E3 $EB $FF $FF $FF $1C $E0 $F0 $F8 $FC $FC $FE
	.db $FE $7F $00 $00 $01 $01 $01 $01 $01 $00 $FC $F8 $F8 $F8 $C4 $8E
	.db $85 $8C $08 $10 $08 $08 $08 $18 $E7 $00 $1F $0F $0F $0F $11 $58
	.db $90 $18 $C6 $0F $07 $03 $07 $0F $07 $1F $08 $80 $E3 $FF $E3 $C1
	.db $E3 $E3 $31 $F8 $F0 $E0 $F0 $F8 $F0 $FC $00 $00 $01 $07 $1F $3F
	.db $3F $7F
	.dsb 10, $00
	.db $E1 $FF $F9 $FC $FE $FF $00 $80 $40 $3C $9F $FC $F8 $F3 $00 $00
	.db $00 $00 $9E $FF $F3 $DF $7F $6F $0B $1F $47 $08 $01 $06 $FF $FF
	.db $FF $7B $1D $02 $C7 $09 $E3 $FF $FF $FF $F8 $FE $07 $0F $EE $FE
	.db $FC $F8 $61 $03 $DC $9C $00 $00 $00 $00 $79 $FF $CF $FB $00 $01
	.db $02 $04 $F9 $3F $1F $CF $00 $00 $87 $FF $9F $3F $7F $FF $00 $00
	.db $8F $EF $F8 $FC $FC $FE $77 $7F $30 $1F $86 $C0 $3B $39 $C7 $FF
	.db $FF $FF $1F $7F $E0 $F0 $FF $FF $FF $C0 $A0 $40 $E3 $90 $FE $F6
	.db $D0 $F8 $E2 $10 $80 $60
	
; Data from 3E42 to 3FFF (446 bytes)	
_DATA_3E42_:	
	.db $00 $F0
	.dsb 40, $0B
	.db $16 $16 $16 $16 $16 $16 $16 $16
	.dsb 16, $0B
	.db $2B $2B $2B $2B $2B $2B $2B $2B $80 $8B $8B $8B $8B $8B $8B $8B
	.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1 $8A $1A $1A $1A $1A $1A $1A $18
	.db $09 $09 $09 $09 $09 $09 $09 $09 $10 $09 $09 $09 $09 $09 $09 $09
	.db $10 $19 $19 $19 $19 $19 $19 $19 $19 $09 $09 $09 $09 $09 $09 $09
	.db $10 $19 $19 $19 $19 $19 $19 $19 $19 $09 $09 $09 $09 $09 $09 $09
	.dsb 16, $19
	.db $10 $10 $19 $A9 $A0 $10 $19 $A9 $10 $10 $19 $A9 $A0 $10 $19 $A9
	.db $A0 $10 $19 $A9 $A0 $10 $19 $A9 $A0 $10 $19 $A9 $A0 $10 $19 $A9
	.db $10 $10 $18 $A8 $A0 $10 $18 $A8 $10 $10 $18 $A8 $A0 $10 $18 $A8
	.db $A0 $10 $18 $A8 $A0 $10 $18 $A8 $A0 $10 $18 $A8 $A0 $10 $18 $A8
	.db $A0 $10 $18 $A8 $A0 $10 $18 $18 $A0 $10 $18 $A8 $A0 $10 $18 $18
	.db $10 $10 $16 $A6 $A0 $10 $16 $A6 $10 $10 $16 $A6 $A0 $10 $16 $A6
	.db $A0 $10 $16 $A6 $A0 $10 $16 $A6 $A0 $10 $16 $A6 $A0 $10 $16 $A6
	.db $A0 $10 $16 $A6 $A0 $10 $16 $16 $A0 $10 $16 $A6 $A0 $10 $16 $16
	.db $09
	.dsb 15, $C9
	.db $E9 $E9 $E9 $E9 $E9 $E9 $E9 $E9 $C9 $C9 $C9 $C9 $C9 $C9 $C9 $C9
	.db $08 $08 $08 $08 $08 $08 $08 $08 $10 $08 $08 $08 $08 $08 $08 $08
	.db $10
	.dsb 9, $18
	.db $08 $08 $08 $08 $08 $08 $10
	.dsb 23, $18
	.db $09
	.dsb 15, $C9
	.db $E9 $E9 $E9 $E9 $E9 $E9 $E9 $E9 $C9 $C9 $C9 $C9 $C9 $C9 $C9 $C9
	.db $C8 $C8 $C8 $C8 $C8 $C8 $C8 $C8 $08
	.dsb 15, $C8
	.db $E8 $E8 $E8 $E8 $E8 $E8 $E8 $E8 $06 $06 $06 $06
	
.BANK 1 SLOT 1	
.ORG $0000	
	
	; Data from 4000 to 403F (64 bytes)
	.db $06 $06 $06 $06 $10 $06 $06 $06 $06 $06 $06 $06 $16 $06 $06 $06
	.db $06 $06 $06 $06 $16 $06 $06 $06 $06 $06 $06 $06 $10 $16 $16 $16
	.db $16 $16 $16 $16 $10
	.dsb 27, $16
	
; Data from 4040 to 408F (80 bytes)	
_DATA_4040_:	
	.db $16 $16 $16 $16 $16 $06 $06 $06 $06 $06 $06 $06 $06
	.dsb 15, $C6
	.db $E6 $E6 $E6 $E6 $E6 $E6 $E6 $E6 $C6 $C6 $C6 $C6 $C6 $C6 $C6 $C6
	.db $E6 $E6 $E6 $E6 $E6 $E6 $E6 $E6 $16 $16 $16 $16 $16 $16 $16 $16
	.db $C9 $C9 $C9 $C9 $C9 $C9 $C9 $C9 $09
	.dsb 11, $C9
	
_LABEL_4090_:	
		ret
	
	; Data from 4091 to 4273 (483 bytes)
	.db $C9 $C9 $C9 $E9 $E9 $E9 $E9 $E9 $E9 $E9 $E9 $E6 $E6 $E6 $E6 $E6
	.db $E6 $E6 $E6
	.dsb 16, $E9
	.db $5A $1A $1A $1A $1A $1A $1A $15 $05 $05 $05 $05 $05 $05 $05 $05
	.db $6F $6F $F5 $05 $05 $05 $05 $05 $6F $F5 $F5 $05 $05 $05 $05 $05
	.db $6F $5F $05 $05 $05 $05 $05 $05 $6F $6F $F5 $05 $05 $05 $05 $05
	.db $6F $6F $F5 $05 $05 $05 $05 $05 $90 $F9 $F0 $F5 $F5 $F5 $F5 $F5
	.db $90 $F9 $F9
	.dsb 11, $F5
	.db $05 $05 $F5 $F5 $F5 $F5 $F5 $F5 $F5 $05 $F5 $F5 $F5 $F5 $F5 $F5
	.db $F5 $05 $05 $05 $05
	.dsb 12, $F5
	.db $05 $F5 $F5 $05 $F5 $F5 $F5 $F5 $05 $05 $05 $F5 $F5 $05 $05 $05
	.db $05
	.dsb 19, $00
	.db $10 $10 $10 $10 $10 $10 $10 $10 $1E $1E $1E $1E $1E $00 $00
	.dsb 15, $10
	.db $1F $18 $18 $10 $1F $10 $1E $10 $10 $10 $10 $10 $10 $10 $10 $00
	.db $10 $10 $10 $10 $10 $10 $00
	.dsb 15, $1E
	.db $0E $1E $1E $1E $1E $1E $1E $1E $1E $00 $10 $10 $10 $10 $00 $00
	.db $00 $1E $1B $1B $1B $1B $1B $1B $1B $1E $1E $1E $10
	.dsb 11, $1B
	.db $0B $00 $00
	.dsb 9, $10
	.db $1E $1E $1E $1E $1E $00 $00 $00
	.dsb 14, $10
	.db $1E $10 $1E $10 $10 $10 $1E $10 $10 $10 $10 $10 $10 $10 $10 $00
	.db $10 $10 $10 $10 $00 $00 $00
	.dsb 15, $1E
	.db $0E $1E $1E $1E $1E $1E $1E $1E $1E $00 $10 $10 $10 $10 $10 $10
	.db $00 $1B $1B $1B $1B $1B $1B $1B $0B $1E $1E $1E $10 $1B $1B $1B
	.db $1B $1E $1B $1B $1B $1B $1B $1B $1B
	.dsb 9, $10
	.db $1E $18 $1E $10 $10 $10 $1E $10 $10 $10 $10 $10 $10 $10 $1E $00
	.db $00 $00 $10 $10 $10 $10 $00
	.dsb 15, $1E
	.db $0E
	.dsb 9, $1E
	.db $1B $1B $1B $1B $1B $1B $1B $1E $1E $1E $10 $1B $1B $1B $1B $1E
	.db $1B $1B $1B $1B $1B $1B $1B
	
; Data from 4274 to 472B (1208 bytes)	
_DATA_4274_:	
	.dsb 11, $03
	.db $C3 $C3 $C3 $03 $03 $03 $03 $03 $03 $03 $03
	.dsb 10, $83
	.db $03 $03 $03 $03 $03 $03 $83 $83 $03 $03 $03 $03 $03 $03
	.dsb 10, $83
	.db $03 $03 $03 $03 $03 $03 $83 $83 $53 $53 $63
	.dsb 21, $83
	.db $53 $53 $03 $03 $03 $03 $03 $03 $53 $53 $53 $03 $03 $03 $03 $03
	.db $A3 $A3 $A3 $A3 $A3 $A3 $A3 $A3 $00 $00 $00 $00 $00 $00 $00 $00
	.db $F3 $83 $83 $83 $83 $83 $83 $83 $03 $83 $83 $83 $03 $03 $03 $03
	.db $83 $83 $83 $83 $83 $83 $83 $83 $03 $83 $83 $83 $03 $03 $83 $83
	.db $A3 $A3 $03 $03 $03 $03 $03 $03 $A3 $A3 $A3 $A3 $A3 $A3 $83 $83
	.db $53 $53 $83 $83 $03 $03 $03 $03 $83 $83 $83 $83 $83 $83 $83 $83
	.db $BA $BA $BA $0A $0A $0A $FA $FA $BA $BA $BA $0A $0A $0A $FA $FA
	.db $0A $0A $B0 $0A $0A $0A $FA $FA $80 $80 $8A $8A $8A
	.dsb 27, $BA
	.db $08 $08 $08 $08 $08 $08 $F8 $F8 $18 $18 $18 $18 $08 $08 $F8 $F8
	.db $F5 $F5 $05 $05 $05 $05 $05 $05 $F5 $F5 $85 $85 $85 $85 $85 $85
	.db $05 $05 $05 $05 $05 $05 $05 $05 $18 $18 $18 $18 $F8 $F8 $F8 $F8
	.db $18 $18 $18 $18 $F8 $F8 $F8 $F8 $85 $85 $85 $F5 $F5 $F5 $05 $05
	.db $05 $05 $05 $85 $85 $85 $85 $85 $18 $18 $18 $18 $F8 $F8 $F8 $F8
	.db $F5 $F5 $05 $05 $05 $05 $05 $05 $F5 $F5 $05 $05 $05 $05 $05 $05
	.db $00 $00 $00 $00 $00 $00 $00 $00 $F5 $F5 $F5 $F5 $F5 $F5 $05 $05
	.db $F5 $F5 $85 $85 $85 $85 $85 $85 $83 $83 $83 $83 $83 $83 $83 $83
	.dsb 32, $85
	.db $00 $00 $00 $00 $00 $00 $00 $00 $18 $18 $18 $18 $F8 $F8 $F8 $F8
	.dsb 32, $00
	.db $05 $05 $05 $05
	.dsb 10, $B5
	.db $05 $05 $05 $05 $B5 $B5 $B5 $BE $BE $B5 $B5 $B5 $B5 $B5 $B5 $05
	.db $05 $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $B5 $B5 $B5 $B5
	.dsb 9, $05
	.db $B5 $B5 $B5 $B5 $B5 $B5 $05 $B5 $B5 $05 $05 $05 $05 $05 $05 $B5
	.db $B5 $B5 $B5 $B5 $B5 $B5
	.dsb 9, $05
	.db $B5 $BE $BE $B5 $B5 $B5 $B5 $B5 $B5 $B5 $05 $05 $05 $05 $B5 $B5
	.db $B5 $B5 $B5 $B5 $B5 $B5 $05 $05 $05 $05 $05 $05 $05 $B5 $B5 $05
	.db $B5 $B5 $B5 $B5 $B5 $B5
	.dsb 10, $05
	.dsb 10, $B5
	.db $05 $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $B5 $B5 $B5 $B5 $05 $05
	.db $05 $05 $05 $05 $B5 $B5 $B5 $BE $BE $B5 $B5 $B5 $B5 $B5 $B5 $B5
	.db $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $B5 $B5 $B5 $B5 $05 $05 $05
	.db $05 $05 $05
	.dsb 9, $B5
	.db $05 $05 $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $B5 $B5 $B5 $B5 $B5
	.db $05 $05 $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $BE $BE $B5 $B5 $B5
	.db $B5 $B5 $B5 $B5 $05 $05 $05 $05 $05 $05 $B5 $B5 $B5 $B5 $B5 $B5
	.db $B5
	.dsb 11, $05
	.dsb 9, $B5
	.db $05
	.dsb 32, $B5
	.db $05 $05 $05 $05 $05 $05
	.dsb 9, $B5
	.db $05 $03 $03 $03 $13 $13 $13 $13 $13 $13 $13 $10 $1E $1E $1E $1E
	.db $1E $03 $03
	.dsb 13, $13
	.db $10 $10 $1E $10 $18 $18 $1E $10 $1E $13 $13 $13 $13 $13 $13 $13
	.db $13 $03 $13 $13 $13 $13 $13 $13 $03
	.dsb 15, $1E
	.db $0E $1E $1E $1E $1E $1E $1E $1E $1E $03 $13 $13 $13 $13 $03 $03
	.db $03 $1E $13 $13 $13 $13 $13 $13 $13 $1E $1E $1E $10
	.dsb 11, $13
	.db $03 $03 $03 $13 $13 $13 $13 $13 $13 $13 $13 $10 $1E $1E $1E $1E
	.db $1E $03 $03 $03
	.dsb 12, $13
	.db $10 $10 $1E $10 $1E $10 $10 $10 $1E $13 $13 $13 $13 $13 $13 $13
	.db $10 $03 $13 $13 $13 $13 $03 $03 $03
	.dsb 15, $1E
	.db $0E $1E $1E $1E $1E $1E $1E $1E $1E $03 $13 $13 $13 $13 $13 $13
	.db $03 $13 $13 $13 $13 $13 $13 $13 $03 $1E $1E $1E $10 $13 $13 $13
	.db $13 $1E
	.dsb 15, $13
	.db $10 $1E $18 $1E $10 $10 $10 $1E $13 $13 $13 $13 $13 $13 $13 $1E
	.db $03 $03 $13 $13 $13 $13 $13 $03 $1E $1E $1E $1E $1E $1E $1E $0E
	.dsb 17, $1E
	.db $13 $13 $13 $13 $13 $13 $13 $1E $1E $1E $10 $13 $13 $13 $13 $1E
	.db $13 $13 $13 $13 $13 $13 $13 $05 $05 $E5 $E5 $E5 $E5 $E5 $E5 $00
	.db $00 $00 $00 $00 $00 $00 $00 $05 $05 $E5 $E5 $E5 $E5 $E5 $E0 $05
	.db $E5 $E5 $E5 $E5 $E1 $EF $E1 $05 $05 $05 $05 $E5 $E5 $E5 $E5 $E5
	.db $EF $EF $F5 $F5 $F5 $F5 $F5 $E0 $E0 $E0 $EF $EF $EF $F5 $F5 $EF
	.db $E0 $E0 $E0 $E9 $E8 $EF $F5 $E5 $E5 $E5 $E5 $E9 $E8 $EF $F5 $05
	.db $05 $05 $05 $E5 $E5 $E5 $E5 $05 $E5 $E5 $E5 $E5 $E1 $EF $E1 $05
	.db $05 $E5 $E0 $E5 $E5 $E5 $E0 $05 $05
	.dsb 10, $E5
	.db $E9 $E8 $EF $F5 $EF $E0 $E0 $E0 $E9 $E8 $EF $F5 $E0 $E0 $E0 $EF
	.db $EF $EF $F5 $F5 $E5 $EF $EF $F5 $F5 $F5 $F5 $F5
	
; Data from 472C to 4A2B (768 bytes)	
_DATA_472C_:	
	.dsb 112, $20
	.db $61 $61 $61 $61 $61 $61 $63 $63
	.dsb 20, $20
	.db $61 $61 $61 $62 $6E $6D $6D $6D $6D $6D $6D $70
	.dsb 12, $20
	.db $61 $61 $61 $68 $61 $61 $61 $62 $6E $6D $6D $6D $6F $6C $6C $6C
	.db $6C $6C $6C $71 $64 $61 $63 $61 $61 $61 $61 $61 $20 $20 $67 $62
	.db $6D $6D $70 $74 $75 $6E $6D $6D $6F $6C $6C $6C $6C $6C $8F $90
	.db $6C $6C $6C $6C $6D $6D $6D $6D $6D $6D $6D $6D $20 $20 $61 $61
	.db $6C $6C $72 $76 $77 $73 $6C $6C $6C $6C $6C $6C $6C $6C $91 $92
	.db $6C $A7 $A8
	.dsb 9, $6C
	.db $20 $20 $89 $8A $64 $61 $61 $61 $61 $6C $6C $61 $61 $6C $6C $61
	.db $61 $61 $AD $6C $6C $A9 $AA $84 $85 $6C $6C $6C $6C $6C $6C $6C
	.db $20 $20 $88 $8B $89 $89 $89 $89 $8A $6C $6C $8C $8A $6C $6C $8C
	.db $89 $8A $64 $61 $61 $6C $AC $86 $87 $6C $6C $6C $6C $6C $6C $6C
	.db $20 $20 $88 $88 $88 $93 $94 $88 $8D $B5 $B6 $8E $8D $B5 $B6 $8E
	.db $88 $8B $89 $89 $8A $64 $61 $61 $61 $61 $61 $61 $61 $6C $6C $6C
	.db $20 $20 $88 $88 $88 $95 $96 $88 $8D $B7 $B8 $8E $8D $B7 $B8 $8E
	.db $88 $88 $88 $88 $8B $89 $89 $8A $78 $79 $8C $89 $89 $64 $67 $6C
	.db $20 $20 $88 $88 $88 $61 $61 $61 $6B $AE $AE $6B $6B $AE $AE $6B
	.db $69 $88 $88 $88 $88 $88 $88 $8D $7A $7B $8E $88 $88 $61 $61 $6C
	.db $20 $20 $67 $61 $62 $98 $98 $9C $8D $B9 $BA $8E $8D $B9 $BA $8E
	.db $6A $69 $88 $88 $88 $88 $88 $8D $7A $7B $8E $61 $62 $9B $9C $6C
	.db $20 $20 $61 $61 $61 $97 $97 $9D $8D $BB $BC $8E $8D $BB $BC $8E
	.db $9F $6A $69 $88 $88 $88 $88 $8D $7C $7D $8E $61 $62 $9E $9D $6C
	.db $61 $62 $9B $98 $9C $64 $61 $61 $61 $61 $BD $8E $8D $AF $BD $8E
	.db $9E $A6 $6A $64 $61 $88 $88 $61 $61 $61 $62 $9B $98 $99 $9D $6C
	.db $98 $98 $99 $97 $9A $98 $98 $98 $98 $9C $64 $61 $61 $BB $AF $8E
	.db $9E $97 $A0 $98 $9C $88 $88 $9B $98 $98 $98 $99 $97 $97 $9D $6C
	.dsb 9, $97
	.db $9D $7E $7F $65 $64 $61 $61 $9E $97 $97 $97 $9D $88 $88 $9E $97
	.db $97 $97 $97 $97 $97 $9D $6C $97 $97 $97 $97 $97 $97 $97 $A1 $A2
	.db $9D $80 $81 $9E $98 $98 $98 $64 $67 $97 $97 $9D $88 $88 $9E $97
	.db $97 $97 $97 $97 $97 $9D $6C $97 $97 $97 $97 $97 $97 $97 $A3 $A4
	.db $9D $82 $83 $9E $97 $97 $97 $61 $61 $97 $97 $9D $88 $88 $9E $97
	.db $97 $97 $97 $97 $97 $9D $6C $97 $97 $97 $97 $97 $97 $97 $A5 $97
	.db $97 $61 $61 $61 $61 $61 $62 $9B $9C $97 $97 $9D $B3 $B4 $9E $97
	.db $97 $97 $97 $97 $97 $9D $B4 $97 $97 $97 $97 $97 $97 $61 $61 $61
	.db $62 $9B $98 $98 $98 $98 $98 $99 $9D $B0 $B1 $B2 $AF $AF $B0 $B1
	.db $B2 $B3 $B4 $B0 $B1 $B2 $AF $61 $61 $61 $61 $61 $62 $9B $98 $98
	.db $98 $99 $97 $97 $97 $97 $97 $97 $9D
	.dsb 14, $AF
	.db $98 $98 $98 $98 $98 $98 $99
	.dsb 10, $97
	.db $9D
	.dsb 14, $AF
	
; Data from 4A2C to 4D2B (768 bytes)	
_DATA_4A2C_:	
	.db $20 $20 $20 $20 $20 $20 $20 $60 $60 $20 $20 $20 $20 $20 $20 $20
	.dsb 9, $60
	.dsb 14, $20
	.db $60 $60 $20 $20 $20 $20 $20 $20 $20
	.dsb 9, $60
	.db $20 $20 $20 $20 $20 $20 $20 $60 $60 $62 $61 $62 $60 $60 $60 $60
	.db $60 $60 $60 $62
	.dsb 12, $60
	.db $20 $20 $20 $20 $20 $20 $20 $7E $7E $7F $7E $7F $7E $7E $7E $7E
	.db $7E $7E $7E $7F $7E $7E $7E
	.dsb 9, $60
	.db $20 $20 $60 $61 $20 $20 $20
	.dsb 16, $80
	.db $65 $60 $60 $62 $60 $66 $7E $7E $60 $20 $20 $20 $20 $20 $20 $20
	.dsb 16, $82
	.db $83 $7E $7E $7F $7E $84 $81 $80 $67 $62
	.dsb 11, $60
	.db $68 $86
	.dsb 9, $82
	.db $88 $80 $80 $80 $80 $89 $85 $82 $87 $7F $7E $7E $7E $7E $7E $7E
	.db $60 $60 $60 $60 $60 $69 $8F
	.dsb 17, $82
	.db $88 $80 $80 $80 $80 $80 $80 $80 $60 $60 $60 $60 $60 $6A $91 $82
	.db $82 $6B $70 $60 $68 $86 $82 $82 $6B $60 $6C $60 $60 $60 $68 $86
	.db $82 $82 $82 $82 $82 $82 $82 $82 $60 $60 $60 $60 $60 $6D $77 $78
	.db $79 $60 $60 $60 $69 $8F $82 $82 $60 $60 $60 $60 $60 $60 $68 $86
	.db $82 $82 $82 $6B $60 $6C $60 $60 $60 $60 $62 $60 $60 $6F $8C $80
	.db $80 $70 $60 $60 $6A $91 $82 $82 $60 $60 $60 $60 $60 $60 $6D $8E
	.db $82 $82 $82 $60 $60 $60 $60 $60 $7E $7E $7F $7E $7A $84 $85 $82
	.db $82 $65 $60 $62 $71 $91 $82 $82 $65 $62 $60 $60 $62 $60 $6F $77
	.db $78 $79 $79 $72 $60 $60 $62 $60 $80 $80 $80 $80 $7B $89 $82 $82
	.db $82 $87 $7A $7F $84 $85 $82 $82 $87 $7F $7E $7E $7F $7E $84 $80
	.db $80 $80 $80 $87 $7E $7A $7F $7E $82 $82 $82 $82 $7C $82 $82 $82
	.db $82 $88 $7B $80 $89 $82 $82 $82 $88 $80 $80 $80 $80 $80 $89 $82
	.db $82 $82 $82 $88 $80 $7B $80 $80 $82 $82 $82 $82 $7D $82 $82 $82
	.db $82 $82 $7C
	.dsb 18, $82
	.db $7C $82 $82 $82 $82 $82 $82 $73 $60 $68 $86 $82 $82 $6B $60 $60
	.db $6C $68 $86 $82 $82 $82 $6B $6C $60 $68 $86 $82 $82 $82 $82 $82
	.db $7D $82 $82 $82 $82 $82 $82 $60 $60 $69 $8F $82 $82 $72 $60 $62
	.db $60 $74 $77 $78 $79 $79 $60 $60 $60 $6A $91 $82 $82 $75 $60 $60
	.db $60 $68 $86 $60 $60 $68 $86 $70 $60 $6A $91 $82 $82 $83 $7E $7F
	.db $7E $84 $8B $80 $80 $80 $70 $60 $60 $6D $91 $82 $82 $60 $60 $60
	.db $60 $60 $90 $60 $61 $6A $91 $64 $60 $71 $91 $82 $82 $88 $80 $80
	.db $80 $89 $82 $82 $82 $82 $60 $60 $60 $6A $77 $78 $79 $65 $60 $62
	.db $60 $76 $85 $60 $60 $6A $91 $93 $7E $84 $85
	.dsb 11, $82
	.db $60 $60 $60 $60 $8C $80 $80 $83 $7E $7F $7E $84 $85 $60 $60 $6A
	.db $91 $88 $80 $89
	.dsb 12, $82
	.db $65 $60 $62 $71 $91 $82 $82 $88 $80 $80 $80 $89 $82 $60 $60 $60
	.db $60 $61 $60 $61 $60 $60 $60 $61 $68 $86 $82 $82 $82 $82 $82 $82
	.db $83 $7E $7F $84 $85 $82 $82 $82 $82 $82 $82 $82 $82 $60 $60 $61
	.db $61 $60 $60 $60 $61 $60 $60 $60 $6A $91 $82 $82 $82 $82 $82 $82
	.db $88 $80 $80 $89
	.dsb 9, $82
	.db $60 $61 $60 $60 $61 $60 $60 $60 $61 $60 $60 $6A $91 $82 $82 $82
	.db $82 $82 $82 $75
	.dsb 11, $82
	.db $68
	
_LABEL_4D2C_:	
		call _LABEL_5107_
		ld ix, _RAM_C1E8_
		ld b, $04
-:	
		push bc
		bit 7, (ix+0)
		call nz, +
		ld de, $0020
		add ix, de
		pop bc
		djnz -
		ret
	
+:	
		bit 4, (ix+0)
		jp nz, _LABEL_5076_
		ld e, (ix+3)
		ld d, (ix+4)
		inc de
		ld (ix+3), e
		ld (ix+4), d
		ld l, (ix+5)
		ld h, (ix+6)
		or a
		sbc hl, de
		call z, _LABEL_4ECE_
		ld e, (ix+17)
		ld d, (ix+18)
		ld a, e
		or d
		jr nz, +
		ld (ix+23), $0F
		jp _LABEL_4E43_
	
+:	
		bit 5, (ix+0)
		jr nz, ++
		ld a, (ix+11)
		or a
		jr nz, +
		ld (ix+19), e
		ld (ix+20), d
		jr _LABEL_4DE4_
	
+:	
		dec a
		ld hl, $52FC
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
		call _LABEL_4E9B_
		jr _LABEL_4DE4_
	
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
		call _LABEL_52DD_
		ld e, (ix+5)
		call _LABEL_52E9_
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
_LABEL_4DE4_:	
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
		ld hl, $52FC
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
		call _LABEL_4E61_
++:	
		bit 6, (ix+0)
		jr nz, _LABEL_4E43_
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_4E56_
		add hl, bc
		ld c, (hl)
		ld a, (ix+19)
		and $0F
		or c
		call _LABEL_5096_
		ld a, (ix+19)
		and $F0
		or (ix+20)
		rrca
		rrca
		rrca
		rrca
		call _LABEL_5096_
_LABEL_4E43_:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_4E5A_
		add hl, bc
		ld a, (hl)
		or (ix+23)
		jp _LABEL_5096_
	
; Data from 4E56 to 4E59 (4 bytes)	
_DATA_4E56_:	
	.db $80 $A0 $C0 $C0
	
; Data from 4E5A to 4E5D (4 bytes)	
_DATA_4E5A_:	
	.db $90 $B0 $D0 $F0
	
-:	
		ld (ix+15), a
_LABEL_4E61_:	
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
		jr _LABEL_4E61_
	
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
_LABEL_4E9B_:	
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
		jr _LABEL_4E9B_
	
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
	
_LABEL_4ECE_:	
		ld e, (ix+7)
		ld d, (ix+8)
_LABEL_4ED4_:	
		ld a, (de)
		inc de
		or a
		jp m, _LABEL_4F53_
		bit 3, (ix+0)
		jr nz, _LABEL_4F39_
		or a
		jr z, +
		add a, (ix+9)
+:	
		ld hl, _DATA_5263_
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
		jr z, _LABEL_4F13_
		ld a, (de)
		inc de
		add a, (ix+9)
		ld hl, _DATA_5263_
		ld c, a
		ld b, $00
		add hl, bc
		add hl, bc
		ld a, (hl)
		ld (ix+21), a
		inc hl
		ld a, (hl)
		ld (ix+22), a
_LABEL_4F13_:	
		push de
		ld a, (de)
		ld h, a
		ld e, (ix+2)
		call _LABEL_52DD_
		pop de
		ld (ix+5), l
		ld (ix+6), h
		xor a
		ld (ix+15), a
		ld (ix+16), a
_LABEL_4F2A_:	
		inc de
		ld (ix+7), e
		ld (ix+8), d
		xor a
		ld (ix+3), a
		ld (ix+4), a
		ret
	
_LABEL_4F39_:	
		ld (ix+18), a
		ld a, (de)
		inc de
		ld (ix+17), a
		bit 5, (ix+0)
		jr z, _LABEL_4F13_
		ld a, (de)
		inc de
		ld (ix+22), a
		ld a, (de)
		inc de
		ld (ix+21), a
		jr _LABEL_4F13_
	
_LABEL_4F53_:	
		ld hl, +	; Overriding return address
		push hl
		and $3F
		ld hl, _DATA_4F6A_
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
		jp _LABEL_4ED4_
	
; Jump Table from 4F6A to 4F91 (20 entries, indexed by unknown)	
_DATA_4F6A_:	
	.dw _LABEL_5039_ _LABEL_4F92_ _LABEL_4F97_ _LABEL_4FAC_ _LABEL_505E_ _LABEL_4FC0_ _LABEL_4FD7_ _LABEL_4FDC_
	.dw _LABEL_4FE7_ _LABEL_5002_ _LABEL_4FE1_ _LABEL_5015_ _LABEL_501D_ _LABEL_5035_ _LABEL_503B_ _LABEL_5041_
	.dw _LABEL_5047_ _LABEL_504D_ _LABEL_5055_ _LABEL_5068_
	
; 2nd entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4F92_:	
		ld a, (de)
		ld (ix+2), a
		ret
	
; 3rd entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4F97_:	
		ld a, (de)
		ld (ix+13), a
		ret
	
	; Data from 4F9C to 4FAB (16 bytes)
	.db $0F $0E $0D $0C $0B $0A $09 $07 $08 $06 $05 $04 $03 $02 $01 $00
	
; 4th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FAC_:	
		ld a, (de)
		push de
		ld e, a
		ld h, (ix+2)
		call _LABEL_52DD_
		ld (ix+3), l
		ld (ix+4), h
		pop de
		pop hl
		jp _LABEL_4F2A_
	
; 6th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FC0_:	
		ld a, (de)
		or $E0
		push af
		call _LABEL_5096_
		pop af
		or $FC
		inc a
		jr nz, +
		res 6, (ix+0)
		ret
	
+:	
		set 6, (ix+0)
		ret
	
; 7th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FD7_:	
		ld a, (de)
		ld (ix+12), a
		ret
	
; 8th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FDC_:	
		ld a, (de)
		ld (ix+11), a
		ret
	
; 11th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FE1_:	
		ex de, hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		dec de
		ret
	
; 9th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_4FE7_:	
		ld a, (de)
		ld c, a
		inc de
		ld a, (de)
		ld b, a
		push bc
		push ix
		pop hl
		dec (ix+10)
		ld c, (ix+10)
		dec (ix+10)
		ld b, $00
		add hl, bc
		ld (hl), d
		dec hl
		ld (hl), e
		pop de
		dec de
		ret
	
; 10th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5002_:	
		push ix
		pop hl
		ld c, (ix+10)
		ld b, $00
		add hl, bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		inc (ix+10)
		inc (ix+10)
		ret
	
; 12th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5015_:	
		ld a, (de)
		add a, (ix+9)
		ld (ix+9), a
		ret
	
; 13th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_501D_:	
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
		jp nz, _LABEL_4FE1_
		inc de
		ret
	
; 14th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5035_:	
		set 5, (ix+0)
; 1st entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5039_:	
		dec de
		ret
	
; 15th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_503B_:	
		res 5, (ix+0)
		dec de
		ret
	
; 16th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5041_:	
		set 3, (ix+0)
		dec de
		ret
	
; 17th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5047_:	
		res 3, (ix+0)
		dec de
		ret
	
; 18th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_504D_:	
		ld a, (de)
		or (ix+0)
		ld (ix+0), a
		ret
	
; 19th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5055_:	
		ld a, (de)
		cpl
		and (ix+0)
		ld (ix+0), a
		ret
	
; 5th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_505E_:	
		call +
		ld (ix+0), $00
		pop hl
		pop hl
		ret
	
; 20th entry of Jump Table from 4F6A (indexed by unknown)	
_LABEL_5068_:	
		call +
		ld (ix+0), $00
		pop hl
		pop hl
		xor a
		ld (_RAM_C1E7_), a
		ret
	
_LABEL_5076_:	
		dec (ix+4)
		ret nz
		ld a, (ix+3)
		ld (ix+4), a
		ld l, (ix+5)
		ld h, (ix+6)
		jp (hl)
	
+:	
		ld a, (ix+1)
		and $0F
		ld c, a
		ld b, $00
		ld hl, _DATA_4E5A_
		add hl, bc
		ld a, (hl)
		or $0F
_LABEL_5096_:	
		bit 2, (ix+0)
		ret nz
		ld i, a
		ld a, (ix+1)
		and $F0
		cp $30
		jr z, +
		ld a, i
		out (Port_PSG), a
		ret
	
+:	
		ld a, i
		ret
	
	; Data from 50AE to 50E7 (58 bytes)
	.db $21 $08 $C2 $11 $09 $C2 $01 $1F $00 $36 $00 $ED $B0 $3E $BF $D3
	.db $7F $C9 $21 $28 $C2 $11 $29 $C2 $01 $3F $00 $36 $00 $ED $B0 $3E
	.db $DF $D3 $7F $3E $FF $D3 $7F $C9 $21 $E8 $C1 $11 $E9 $C1 $01 $1F
	.db $00 $36 $00 $ED $B0 $3E $9F $D3 $7F $C9
	
-:	
		ld hl, _RAM_C1E8_
		ld de, _RAM_C1E8_ + 1
		ld bc, $0080
		ld (hl), $00
		ldir
		xor a
		ld (_RAM_C1E7_), a
_LABEL_50F9_:	
		ld hl, _DATA_5103_
		ld c, Port_PSG
		ld b, $04
		otir
		ret
	
; Data from 5103 to 5106 (4 bytes)	
_DATA_5103_:	
	.db $9F $BF $DF $FF
	
_LABEL_5107_:	
		ld a, (_RAM_C1E6_)
		bit 7, a
		jp z, -
		cp $00
		jp z, -
		cp $FF
		jp z, -
		ld hl, $5139
		ld bc, $000E
		cpdr
		ret nz
		ld hl, $513A
		add hl, bc
		add hl, bc
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		jp (hl)
	
	; Data from 512C to 5262 (311 bytes)
	.db $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A $8B $8C $8D $8E $56 $51
	.db $64 $51 $73 $51 $82 $51 $91 $51 $A0 $51 $AF $51 $BE $51 $CD $51
	.db $E1 $51 $F7 $51 $03 $52 $12 $52 $21 $52 $CD $E8 $50 $21 $19 $53
	.db $11 $E8 $C1 $AF $08 $C3 $30 $52 $CD $E8 $50 $21 $14 $54 $11 $E8
	.db $C1 $3E $01 $08 $C3 $30 $52 $CD $E8 $50 $21 $2E $55 $11 $E8 $C1
	.db $3E $02 $08 $C3 $30 $52 $CD $E8 $50 $21 $06 $56 $11 $E8 $C1 $3E
	.db $03 $08 $C3 $30 $52 $CD $AE $50 $21 $E0 $57 $11 $08 $C2 $3E $04
	.db $08 $C3 $30 $52 $CD $AE $50 $21 $15 $58 $11 $08 $C2 $3E $05 $08
	.db $C3 $30 $52 $CD $AE $50 $21 $4C $58 $11 $08 $C2 $3E $06 $08 $C3
	.db $30 $52 $CD $AE $50 $21 $CE $58 $11 $08 $C2 $3E $07 $08 $C3 $30
	.db $52 $CD $C0 $50 $21 $E7 $C1 $36 $02 $21 $F8 $58 $11 $28 $C2 $3E
	.db $08 $08 $C3 $30 $52 $3A $E7 $C1 $FE $02 $30 $6D $CD $C0 $50 $21
	.db $25 $59 $11 $28 $C2 $3E $09 $08 $C3 $30 $52 $21 $56 $59 $11 $48
	.db $C2 $3E $0A $08 $C3 $30 $52 $CD $E8 $50 $21 $B2 $59 $11 $E8 $C1
	.db $3E $0B $08 $C3 $30 $52 $CD $E8 $50 $21 $FF $59 $11 $E8 $C1 $3E
	.db $0C $08 $C3 $30 $52 $CD $E8 $50 $21 $5E $5A $11 $E8 $C1 $3E $0D
	.db $08 $C3 $30 $52 $7E $23 $66 $6F $46 $23 $C5 $7E $23 $E5 $FE $FF
	.db $28 $1D $66 $6F $01 $0E $00 $ED $B0 $08 $12 $08 $13 $AF $06 $11
	.db $12 $13 $10 $FC $E1 $23 $C1 $10 $E1 $3E $80 $32 $E6 $C1 $C9 $EB
	.db $01 $20 $00 $09 $EB $18 $ED
	
; Data from 5263 to 52DC (122 bytes)	
_DATA_5263_:	
	.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
	.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
	.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
	.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
	.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
	.db $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00
	.db $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00
	.db $2B $00 $28 $00 $26 $00 $24 $00 $22 $00
	
_LABEL_52DD_:	
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
	
_LABEL_52E9_:	
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
	
	; Data from 52FC to 5853 (1368 bytes)
	.incbin "data/File01_052FC_05853.dat"
	
_LABEL_5854_:	
		ld hl, $0000
		nop
		ld bc, $6000
		ld e, b
		rst $30	; _LABEL_30_
		jr nz, +
+:	
		nop
		add a, d
		rrca
		add a, c
		ld (bc), a
		add a, (hl)
		ld bc, $0087
		adc a, l
		inc l
		inc l
		ld (bc), a
		add a, d
		rrca
		inc l
		dec hl
		ld (bc), a
		dec hl
		dec hl
		ld (bc), a
		add a, d
		ld c, $2B
		ld hl, (_DATA_2A02_)
		ld hl, ($8202)
		dec c
		ld hl, ($0229)
		add hl, hl
		add hl, hl
		ld (bc), a
		add a, d
		inc c
		add hl, hl
		jr z, +
		jr z, ++
+:	
		ld (bc), a
		add a, (hl)
		nop
		add a, d
		dec bc
		jr z, +++
		ld (bc), a
		daa
		daa
		ld (bc), a
		add a, d
		ld a, (bc)
		daa
		ld h, $02
		ld h, $26
		ld (bc), a
		add a, d
		ld a, (bc)
		ld h, $25
		ld (bc), a
		dec h
		dec h
		ld (bc), a
		add a, d
		add hl, bc
		dec h
		inc h
		ld (bc), a
		inc h
		inc h
		ld (bc), a
		add a, d
		add hl, bc
		inc h
		inc hl
		ld (bc), a
++:	
		inc hl
		inc hl
		ld (bc), a
		add a, d
		ex af, af'
		inc hl
+++:	
		ld ($2203), hl
		ld ($8203), hl
		ld b, $22
		ld hl, $2103
		ld hl, $8403
		ret
	
	; Data from 58C8 to 7FFF (10040 bytes)
	.db $58 $DD $EE $FF $EE $00 $D2 $58 $EE $58 $01 $D5 $58 $80 $21 $00
	.db $00 $00 $01 $00 $E2 $58 $FB $20 $00 $00 $82 $0F $81 $02 $86 $01
	.db $8D $2D $32 $01 $8E $84 $F2 $58 $F4 $58 $DF $01 $EF $B8 $53 $02
	.db $FC $58 $18 $59 $01 $FF $58 $80 $22 $00 $00 $00 $01 $00 $0C $59
	.db $02 $20 $00 $00 $82 $0F $81 $04 $86 $01 $8D $1B $37 $01 $8E $93
	.db $1A $59 $CE $FF $FF $FF $EC $97 $79 $A7 $43 $21 $01 $2B $59 $48
	.db $59 $50 $59 $01 $2E $59 $80 $22 $00 $00 $00 $01 $00 $3B $59 $00
	.db $20 $00 $00 $82 $0F $81 $01 $86 $01 $87 $01 $8D $22 $24 $03 $84
	.db $4A $59 $FF $DB $97 $53 $21 $01 $52 $59 $FE $DD $EF $00 $5A $59
	.db $A7 $59 $01 $5D $59 $80 $23 $00 $00 $00 $01 $00 $6A $59 $02 $20
	.db $00 $00 $82 $0C $81 $02 $86 $00 $85 $07 $8D $8F $00 $01 $00 $1E
	.db $02 $00 $1E $00 $01 $02 $00 $01 $00 $1E $02 $00 $1E $00 $01 $02
	.db $00 $01 $00 $1E $02 $00 $1E $00 $01 $02 $00 $01 $00 $1E $02 $00
	.db $1E $00 $01 $02 $00 $01 $00 $1E $02 $00 $1E $00 $01 $08 $84 $A9
	.db $59 $FE $DC $BA $98 $76 $54 $32 $11 $02 $B6 $59 $EF $59 $01 $B9
	.db $59 $80 $20 $00 $00 $00 $01 $00 $C6 $59 $07 $20 $00 $00 $82 $0D
	.db $81 $02 $86 $01 $05 $08 $02 $08 $07 $08 $02 $04 $05 $08 $02 $08
	.db $07 $08 $02 $08 $05 $08 $02 $08 $07 $08 $02 $04 $05 $08 $02 $08
	.db $07 $08 $02 $08 $8A $CC $59 $F3 $59 $F7 $59 $FF $ED $CB $02 $FF
	.db $FF $DD $BB $AA $88 $66 $02 $05 $5A $4C $5A $59 $5A $01 $08 $5A
	.db $80 $20 $00 $00 $00 $01 $00 $15 $5A $FB $20 $00 $00 $82 $0D $81
	.db $01 $87 $00 $86 $01 $0E $10 $1F $10 $1C $10 $1A $10 $0E $0C $86
	.db $02 $0E $04 $86 $01 $1F $10 $1C $10 $1A $10 $10 $10 $1C $10 $1A
	.db $10 $17 $10 $10 $0C $86 $02 $10 $04 $86 $01 $1C $10 $1A $10 $17
	.db $10 $8A $1D $5A $50 $5A $56 $5A $FF $ED $CB $A8 $53 $02 $DF $FD
	.db $02 $5B $5A $CD $ED $00 $62 $5A $48 $5B $04 $6B $5A $78 $5A $85
	.db $5A $92 $5A $80 $20 $00 $00 $00 $01 $00 $9F $5A $07 $20 $00 $00
	.db $80 $21 $00 $00 $00 $01 $00 $C8 $5A $03 $20 $00 $00 $80 $22 $00
	.db $00 $00 $01 $00 $0A $5B $04 $20 $00 $00 $00 $23 $00 $00 $00 $01
	.db $00 $C8 $5A $05 $20 $00 $00 $82 $0F $81 $02 $86 $01 $05 $08 $02
	.db $08 $07 $08 $02 $04 $05 $08 $02 $08 $07 $08 $02 $08 $05 $08 $02
	.db $08 $07 $08 $02 $04 $05 $08 $02 $08 $07 $08 $02 $08 $8A $A5 $5A
	.db $82 $0E $81 $02 $86 $02 $87 $00 $8D $22 $24 $04 $00 $00 $04 $22
	.db $24 $04 $00 $00 $04 $22 $24 $02 $00 $00 $02 $22 $24 $04 $00 $00
	.db $04 $22 $24 $02 $00 $00 $02 $22 $24 $04 $00 $00 $04 $22 $24 $02
	.db $00 $00 $02 $22 $24 $04 $00 $00 $04 $22 $24 $04 $00 $00 $04 $8A
	.db $D0 $5A $82 $0B $81 $02 $86 $02 $87 $00 $24 $08 $1D $08 $16 $08
	.db $00 $18 $8D $35 $30 $04 $35 $30 $04 $35 $30 $04 $35 $30 $04 $35
	.db $30 $04 $8E $00 $20 $24 $08 $1D $08 $16 $08 $00 $10 $8D $29 $30
	.db $04 $29 $30 $04 $29 $30 $04 $29 $3C $04 $8E $00 $18 $8A $12 $5B
	.db $4C $5B $4F $5B $FD $B8 $02 $FF $DB $97 $53 $21 $01 $FF $C9 $02
	.db $07
	.dsb 1191, $FF
	.dsb 8192, $00
	
