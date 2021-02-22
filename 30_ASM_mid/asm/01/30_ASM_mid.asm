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
_RAM_C026_ db		
_RAM_C027_ db		
_RAM_C028_ dw		
_RAM_C02A_ dw		
_RAM_C02C_ dw		
_RAM_C02E_ dw		
_RAM_C030_ db		
_RAM_C031_ db		
_RAM_C032_ db		
_RAM_C033_ db		
_RAM_C034_ dw		
_RAM_C036_ dw		
_RAM_C038_ db		
.ende		
		
.enum $C078 export		
_RAM_C078_ db		
.ende		
		
.enum $C0F8 export		
_RAM_C0F8_ db		
_RAM_C0F9_ dw		
.ende		
		
.enum $C11B export		
_RAM_C11B_ dw		
_RAM_C11D_ dw		
_RAM_C11F_ db		
.ende		
		
.enum $C121 export		
_RAM_C121_ db		
_RAM_C122_ db		
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
			jp _LABEL_13E4_
		
		; Data from 3B to 65 (43 bytes)
		.dsb 43, $00
		
_LABEL_66_:		
			jp _LABEL_141A_
		
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
			call _LABEL_1710_
			call _LABEL_1154_
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
			call _LABEL_A7D_
			call _LABEL_818_
			call _LABEL_821_
			call _LABEL_9BA_
		ld a, l	
		push af	
		inc sp	
		call _LABEL_86F_	
		inc sp	
		call _LABEL_87B_	
		call _LABEL_9BD_	
		push hl	
		call _LABEL_885_	
		ld h, $01	
		ex (sp), hl	
		inc sp	
		call _LABEL_C2B_	
		inc sp	
		call _LABEL_81B_	
_LABEL_232_:		
		call _LABEL_9AA_	
		ld a, l	
		or a	
		jr z, ++	
		call _LABEL_9AD_	
		ld iy, _RAM_C000_	
		ld a, (iy+0)	
		xor $01	
		ld (_RAM_C000_), a	
		bit 0, (iy+0)	
		jr z, +	
		call _LABEL_A68_	
		jr ++	
		
+:		
		call _LABEL_A6B_	
++:		
		ld hl, _RAM_C000_	
		bit 0, (hl)	
		jr nz, _LABEL_232_	
		call _LABEL_99B_	
		call _LABEL_BE5_	
		call _LABEL_C51_	
		call _LABEL_99E_	
		call _LABEL_9A1_	
		call _LABEL_9A4_	
		call _LABEL_A6E_	
		call _LABEL_A71_	
		jr _LABEL_232_	
		
_LABEL_277_:		
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
		
	; Data from 29E to 333 (150 bytes)	
	.db $3A $01 $C0 $B7 $C0 $3A $0F $C0 $F6 $90 $D3 $7F $3A $10 $C0 $F6	
	.db $B0 $D3 $7F $3A $16 $C0 $B7 $20 $17 $3A $13 $C0 $E6 $0F $F6 $C0	
	.db $D3 $7F $3A $14 $C0 $E6 $3F $D3 $7F $3A $11 $C0 $F6 $D0 $D3 $7F	
	.db $3A $17 $C0 $B7 $20 $10 $3A $15 $C0 $E6 $0F $F6 $E0 $D3 $7F $3A	
	.db $12 $C0 $F6 $F0 $D3 $7F $21 $01 $C0 $36 $01 $C9 $CD $77 $02 $21	
	.db $09 $C0 $36 $01 $D1 $C1 $C5 $D5 $ED $43 $02 $C0 $ED $43 $04 $C0	
	.db $ED $43 $06 $C0 $21 $08 $C0 $36 $00 $21 $0C $C0 $36 $00 $21 $0A	
	.db $C0 $36 $9F $21 $01 $C0 $36 $01 $C9 $21 $09 $C0 $36 $00 $C9 $C1	
	.db $E1 $E5 $C5 $E5 $CD $EA $02 $F1 $21 $09 $C0 $36 $00 $C9 $FD $21	
	.db $01 $C0 $FD $6E $00 $C9	
		
_LABEL_334_:		
		ld a, $9F	
		out (Port_PSG), a	
		ld a, $BF	
		out (Port_PSG), a	
		ld a, $DF	
		out (Port_PSG), a	
		ld a, $FF	
		out (Port_PSG), a	
		ret	
		
_LABEL_345_:		
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
		jr z, _LABEL_3BD_	
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
_LABEL_3BD_:		
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
		
	; Data from 444 to 532 (239 bytes)	
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD $7E $04 $32 $0B $C0 $3A	
	.db $01 $C0 $B7 $CA $2E $05 $3A $0F $C0 $E6 $0F $4F $1E $00 $FD $21	
	.db $0B $C0 $FD $7E $00 $DD $77 $FE $AF $DD $77 $FF $79 $DD $86 $FE	
	.db $47 $7B $DD $8E $FF $5F $FD $4E $00 $3E $0F $B8 $3E $00 $9B $E2	
	.db $88 $04 $EE $80 $F2 $90 $04 $11 $0F $00 $18 $09 $3A $0F $C0 $E6	
	.db $0F $81 $5F $17 $9F $7B $F6 $90 $D3 $7F $3A $10 $C0 $E6 $0F $5F	
	.db $16 $00 $E1 $E5 $19 $3E $0F $BD $3E $00 $9C $E2 $B4 $04 $EE $80	
	.db $F2 $BC $04 $11 $0F $00 $18 $09 $3A $10 $C0 $E6 $0F $81 $5F $17	
	.db $9F $7B $F6 $B0 $D3 $7F $3A $16 $C0 $B7 $20 $2C $3A $11 $C0 $E6	
	.db $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2 $E6 $04	
	.db $EE $80 $F2 $EE $04 $11 $0F $00 $18 $09 $3A $11 $C0 $E6 $0F $81	
	.db $5F $17 $9F $7B $F6 $D0 $D3 $7F $3A $17 $C0 $B7 $20 $2C $3A $12	
	.db $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2	
	.db $18 $05 $EE $80 $F2 $20 $05 $01 $0F $00 $18 $09 $3A $12 $C0 $E6	
	.db $0F $81 $4F $17 $9F $79 $F6 $F0 $D3 $7F $DD $F9 $DD $E1 $C9	
		
_LABEL_533_:		
		push ix	
		ld ix, $0000	
		add ix, sp	
		push af	
		ld a, (_RAM_C01A_)	
		or a	
		jp z, _LABEL_5F8_	
		ld iy, _RAM_C00B_	
		ld a, (iy+0)	
		ld (ix-2), a	
		xor a	
		ld (ix-1), a	
		ld c, (iy+0)	
		ld a, (_RAM_C016_)	
		or a	
		jr z, _LABEL_5A7_	
		ld a, (_RAM_C001_)	
		or a	
		jr z, _LABEL_59E_	
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
		
_LABEL_59E_:		
		ld a, $DF	
		out (Port_PSG), a	
+:		
		ld hl, _RAM_C016_	
		ld (hl), $00	
_LABEL_5A7_:		
		ld a, (_RAM_C017_)	
		or a	
		jr z, _LABEL_5F3_	
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
_LABEL_5F3_:		
		ld hl, _RAM_C01A_	
		ld (hl), $00	
_LABEL_5F8_:		
		ld sp, ix	
		pop ix	
		ret	
		
	; Data from 5FD to 678 (124 bytes)	
	.db $CD $33 $05 $21 $22 $C0 $36 $00 $D1 $C1 $C5 $D5 $ED $43 $1B $C0	
	.db $ED $43 $1D $C0 $ED $43 $1F $C0 $21 $21 $C0 $36 $00 $21 $23 $C0	
	.db $36 $00 $21 $04 $00 $39 $4E $CB $41 $28 $05 $11 $01 $00 $18 $03	
	.db $11 $00 $00 $21 $16 $C0 $73 $CB $49 $28 $05 $01 $01 $00 $18 $03	
	.db $01 $00 $00 $21 $17 $C0 $71 $21 $1A $C0 $36 $01 $C9 $21 $22 $C0	
	.db $36 $00 $C9 $FD $21 $1A $C0 $FD $6E $00 $C9 $FD $21 $04 $00 $FD	
	.db $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD $6E $00 $FD $66 $01	
	.db $E5 $CD $FD $05 $F1 $33 $21 $22 $C0 $36 $01 $C9	
		
_LABEL_679_:		
		ld a, (_RAM_C001_)	
		or a	
		ret z	
		ld a, (_RAM_C008_)	
		or a	
		jp nz, _LABEL_70D_	
		ld hl, (_RAM_C004_)	
_LABEL_688_:		
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
		jr c, _LABEL_712_	
		ld (_RAM_C00A_), a	
		bit 4, a	
		jr nz, ++	
		bit 6, a	
		jp z, _LABEL_739_	
		bit 5, a	
		jr z, +	
		ld (_RAM_C015_), a	
		ld a, (_RAM_C017_)	
		or a	
		jp nz, _LABEL_688_	
		ld a, (_RAM_C015_)	
		and $03	
		cp $03	
		jr nz, _LABEL_738_	
		ld a, (_RAM_C01A_)	
		or a	
		jr z, _LABEL_738_	
		ld (_RAM_C017_), a	
		ld a, $FF	
		out (Port_PSG), a	
		jp _LABEL_688_	
		
+:		
		ld (_RAM_C013_), a	
		ld a, (_RAM_C016_)	
		or a	
		jr z, _LABEL_738_	
		jp _LABEL_688_	
		
++:		
		bit 6, a	
		jr nz, ++	
		bit 5, a	
		jr z, +	
		ld (_RAM_C010_), a	
		jp _LABEL_73F_	
		
+:		
		ld (_RAM_C00F_), a	
		jp _LABEL_73F_	
		
++:		
		bit 5, a	
		jr z, +	
		ld (_RAM_C012_), a	
		ld a, (_RAM_C017_)	
		or a	
		jr z, _LABEL_73E_	
		jp _LABEL_688_	
		
+:		
		ld (_RAM_C011_), a	
		ld a, (_RAM_C016_)	
		or a	
		jr z, _LABEL_73E_	
		jp _LABEL_688_	
		
_LABEL_70D_:		
		dec a	
		ld (_RAM_C008_), a	
		ret	
		
_LABEL_712_:		
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
		jr nc, _LABEL_771_	
		cp $00	
		jr z, +++++	
		cp $01	
		jr z, ++++	
		ret	
		
_LABEL_738_:		
		ld a, b	
_LABEL_739_:		
		out (Port_PSG), a	
		jp _LABEL_688_	
		
_LABEL_73E_:		
		ld a, b	
_LABEL_73F_:		
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
		jp _LABEL_688_	
		
+++:		
		bit 6, a	
		jr nz, ++++++	
		jp _LABEL_738_	
		
++++:		
		ld (_RAM_C006_), hl	
		jp _LABEL_688_	
		
+++++:		
		ld a, (_RAM_C009_)	
		or a	
		jp z, _LABEL_277_	
		ld hl, (_RAM_C006_)	
		jp _LABEL_688_	
		
_LABEL_771_:		
		sub $04	
		ld (_RAM_C00C_), a	
		ld c, (hl)	
		inc hl	
		ld b, (hl)	
		inc hl	
		ld (_RAM_C00D_), hl	
		ld hl, (_RAM_C002_)	
		add hl, bc	
		jp _LABEL_688_	
		
++++++:		
		ld a, b	
		ld (_RAM_C014_), a	
		ld a, (_RAM_C016_)	
		or a	
		jr z, _LABEL_738_	
		jp _LABEL_688_	
		
	; Data from 791 to 791 (1 bytes)	
	.db $C9	
		
_LABEL_792_:		
		ld a, (_RAM_C01A_)	
		or a	
		ret z	
		ld a, (_RAM_C021_)	
		or a	
		jp nz, +++	
		ld hl, (_RAM_C01D_)	
_LABEL_7A1_:		
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
		jp _LABEL_7A1_	
		
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
		jp _LABEL_7A1_	
		
++:		
		ld a, (_RAM_C022_)	
		or a	
		jp z, _LABEL_533_	
		ld hl, (_RAM_C01F_)	
		ld (_RAM_C01D_), hl	
		jp _LABEL_7A1_	
		
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
		jp _LABEL_7A1_	
		
	; Data from 817 to 817 (1 bytes)	
	.db $C9	
		
_LABEL_818_:		
		jp _LABEL_1154_	
		
_LABEL_81B_:		
		ld hl, $0140	
		jp _LABEL_11BB_	
		
_LABEL_821_:		
		ld hl, $0140	
		jp _LABEL_11D2_	
		
	; Data from 827 to 86E (72 bytes)	
	.db $FD $21 $02 $00 $FD $39 $FD $7E $00 $32 $FF $FF $C9 $FD $21 $02	
	.db $00 $FD $39 $FD $6E $00 $C3 $EB $11 $FD $21 $02 $00 $FD $39 $FD	
	.db $6E $00 $C3 $F5 $11 $21 $FC $FF $36 $08 $C9 $FD $21 $02 $00 $FD	
	.db $39 $FD $7E $00 $87 $87 $CB $DF $E6 $0C $32 $FC $FF $C9 $21 $FC	
	.db $FF $36 $00 $C9 $21 $00 $80 $C9	
		
_LABEL_86F_:		
		ld iy, $0002	
		add iy, sp	
		ld l, (iy+0)	
		jp _LABEL_121D_	
		
_LABEL_87B_:		
		ld l, $00	
		jp _LABEL_1209_	
		
	; Data from 880 to 884 (5 bytes)	
	.db $2E $01 $C3 $09 $12	
		
_LABEL_885_:		
		pop bc	
		pop hl	
		push hl	
		push bc	
		jp _LABEL_11BB_	
		
	; Data from 88C to 99A (271 bytes)	
	.db $FD $21 $04 $00 $FD $39 $FD $6E $00 $FD $66 $01 $E5 $FD $2B $FD	
	.db $2B $FD $6E $00 $FD $66 $01 $E5 $CD $0F $16 $F1 $F1 $C9 $3E $20	
	.db $F5 $33 $FD $21 $05 $00 $FD $39 $FD $6E $00 $FD $66 $01 $E5 $FD	
	.db $2B $FD $7E $00 $F5 $33 $FD $2B $FD $7E $00 $F5 $33 $CD $2D $14	
	.db $F1 $F1 $33 $C9 $C1 $E1 $E5 $C5 $C3 $8A $12 $C1 $E1 $E5 $C5 $C3	
	.db $9E $12 $FD $21 $04 $00 $FD $39 $FD $7E $00 $87 $87 $FD $2B $FD	
	.db $B6 $00 $4F $FD $23 $FD $23 $FD $7E $00 $87 $87 $87 $87 $B1 $F5	
	.db $33 $FD $2B $FD $2B $FD $2B $FD $7E $00 $F5 $33 $CD $62 $12 $F1	
	.db $C9 $FD $21 $04 $00 $FD $39 $FD $7E $00 $87 $87 $FD $2B $FD $B6	
	.db $00 $4F $FD $23 $FD $23 $FD $7E $00 $87 $87 $87 $87 $B1 $F5 $33	
	.db $FD $2B $FD $2B $FD $2B $FD $7E $00 $F5 $33 $CD $76 $12 $F1 $C9	
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $DD $6E $05 $26 $00 $29 $29 $29	
	.db $29 $29 $29 $4D $7C $F6 $78 $47 $DD $6E $04 $26 $00 $29 $7D $B1	
	.db $6F $7C $B0 $67 $DD $E1 $C3 $06 $00 $C1 $E1 $E5 $C5 $C3 $11 $00	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $AF $F6 $18 $67 $C3 $11 $00	
	.db $FD $21 $04 $00 $FD $39 $FD $7E $00 $F5 $33 $FD $2B $FD $7E $00	
	.db $F5 $33 $FD $2B $FD $7E $00 $F5 $33 $CD $BC $12 $F1 $33 $C9	
		
_LABEL_99B_:		
		jp _LABEL_12B6_	
		
_LABEL_99E_:		
		jp _LABEL_1311_	
		
_LABEL_9A1_:		
		jp _LABEL_134C_	
		
_LABEL_9A4_:		
		jp _LABEL_10E5_	
		
	; Data from 9A7 to 9A9 (3 bytes)	
	.db $C3 $E5 $10	
		
_LABEL_9AA_:		
		jp _LABEL_13AE_	
		
_LABEL_9AD_:		
		jp _LABEL_13B6_	
		
	; Data from 9B0 to 9B6 (7 bytes)	
	.db $3A $31 $C0 $E6 $20 $6F $C9	
		
_LABEL_9B7_:		
		jp _LABEL_1359_	
		
_LABEL_9BA_:		
		ld l, $00	
		ret	
		
_LABEL_9BD_:		
		ld hl, $0020	
		ret	
		
	; Data from 9C1 to A67 (167 bytes)	
	.db $21 $00 $10 $C9 $21 $00 $08 $C9 $53 $74 $65 $76 $65 $6E $20 $42	
	.db $6F $6C $61 $6E $64 $00 $56 $61 $6E $20 $48 $61 $6C $65 $6E $00	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64	
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20	
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20	
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00 $C1 $E1 $E5 $C5	
	.db $E5 $CD $EA $02 $F1 $C9 $C1 $E1 $E5 $C5 $E5 $CD $1D $03 $F1 $C9	
	.db $C3 $77 $02 $C3 $9E $02 $C3 $2C $03 $21 $02 $00 $39 $7E $F5 $33	
	.db $CD $44 $04 $33 $C9 $FD $21 $04 $00 $FD $39 $FD $7E $00 $F5 $33	
	.db $FD $2B $FD $2B $FD $6E $00 $FD $66 $01 $E5 $CD $FD $05 $F1 $33	
	.db $C9 $C3 $33 $05 $C3 $50 $06	
		
_LABEL_A68_:		
		jp _LABEL_334_	
		
_LABEL_A6B_:		
		jp _LABEL_345_	
		
_LABEL_A6E_:		
		jp _LABEL_679_	
		
_LABEL_A71_:		
		jp _LABEL_792_	
		
	; Data from A74 to A7C (9 bytes)	
	.db $2E $01 $C9 $2E $02 $C9 $2E $03 $C9	
		
_LABEL_A7D_:		
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
		
	; Data from A93 to BE4 (338 bytes)	
	.db $21 $61 $10 $E5 $CD $AE $0A $F1 $C9 $21 $81 $10 $E5 $CD $AE $0A	
	.db $F1 $C9 $21 $3E $10 $E5 $CD $AE $0A $F1 $C9 $CD $65 $0A $7D $B7	
	.db $C0 $CD $74 $0A $65 $D1 $C1 $C5 $D5 $E5 $33 $C5 $CD $46 $0A $F1	
	.db $33 $C9 $21 $00 $00 $E5 $21 $A7 $0D $E5 $CD $8C $08 $F1 $21 $17	
	.db $0D $E3 $CD $D0 $08 $F1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $DD	
	.db $7E $04 $C6 $E0 $4F $C5 $DD $66 $06 $DD $6E $05 $E5 $CD $3C $09	
	.db $F1 $C1 $3A $27 $0D $6F $26 $00 $06 $00 $09 $E5 $CD $65 $09 $F1	
	.db $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $3B $DD $7E $06 $DD	
	.db $77 $FF $0E $00 $DD $6E $04 $DD $66 $05 $06 $00 $09 $7E $B7 $28	
	.db $32 $C6 $E0 $47 $DD $56 $FF $DD $34 $FF $DD $7E $FF $DD $77 $06	
	.db $C5 $DD $7E $07 $F5 $33 $D5 $33 $CD $3C $09 $F1 $C1 $3A $27 $0D	
	.db $5F $16 $00 $78 $6F $17 $9F $67 $19 $C5 $E5 $CD $65 $09 $F1 $C1	
	.db $0C $18 $C1 $33 $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $F5	
	.db $DD $7E $06 $DD $77 $FE $AF $DD $77 $FF $21 $0A $00 $E5 $DD $6E	
	.db $04 $DD $66 $05 $E5 $CD $A4 $10 $F1 $F1 $5D $54 $E5 $D5 $01 $0A	
	.db $00 $C5 $DD $4E $04 $DD $46 $05 $C5 $CD $FD $16 $F1 $F1 $45 $D1	
	.db $E1 $DD $75 $04 $DD $74 $05 $78 $C6 $10 $4F $7A $B3 $20 $0B $B0	
	.db $20 $08 $DD $7E $FF $B7 $28 $02 $0E $00 $DD $46 $FE $DD $35 $FE	
	.db $DD $7E $FE $DD $77 $06 $C5 $DD $7E $07 $F5 $33 $C5 $33 $CD $3C	
	.db $09 $F1 $C1 $3A $27 $0D $6F $26 $00 $79 $17 $9F $47 $09 $E5 $CD	
	.db $65 $09 $F1 $DD $34 $FF $DD $7E $FF $D6 $05 $38 $8D $DD $F9 $DD	
	.db $E1 $C9	
		
_LABEL_BE5_:		
		ld hl, (_RAM_C11B_)	
		ld (_RAM_C11D_), hl	
		call _LABEL_9B7_	
		ld (_RAM_C11B_), hl	
		ret	
		
	; Data from BF2 to C2A (57 bytes)	
	.db $21 $02 $00 $39 $4E $06 $00 $FD $21 $1B $C1 $FD $7E $00 $A1 $5F	
	.db $FD $7E $01 $A0 $B3 $28 $10 $FD $21 $1D $C1 $FD $7E $00 $A1 $4F	
	.db $FD $7E $01 $A0 $B1 $28 $03 $2E $00 $C9 $2E $01 $C9 $21 $02 $00	
	.db $39 $7E $21 $1B $C1 $4E $A1 $6F $C9	
		
_LABEL_C2B_:		
		ld hl, $0002	
		add hl, sp	
		ld a, (hl)	
		ld (_RAM_C027_), a	
		ld hl, _RAM_C026_	
		ld (hl), $00	
		ld hl, $0C94	
		ld (_RAM_C028_), hl	
		ld hl, $0C9C	
		ld (_RAM_C02A_), hl	
		ld hl, $0C95	
		ld (_RAM_C02C_), hl	
		ld hl, $0CBE	
		ld (_RAM_C02E_), hl	
		ret	
		
_LABEL_C51_:		
		ld a, (_RAM_C026_)	
		ld iy, _RAM_C027_	
		sub (iy+0)	
		jr z, +	
		ld a, (iy+0)	
		ld iy, _RAM_C026_	
		ld (iy+0), a	
		ld bc, _RAM_C028_	
		ld l, (iy+0)	
		ld h, $00	
		add hl, hl	
		add hl, bc	
		ld c, (hl)	
		inc hl	
		ld h, (hl)	
		ld l, c	
		call _LABEL_160E_	
+:		
		ld bc, _RAM_C02C_	
		ld iy, _RAM_C026_	
		ld l, (iy+0)	
		ld h, $00	
		add hl, hl	
		add hl, bc	
		ld c, (hl)	
		inc hl	
		ld b, (hl)	
		ld hl, $C027	
		push hl	
		ld l, c	
		ld h, b	
		call _LABEL_160E_	
		pop af	
		ret	
		
	; Data from C94 to 10E4 (1105 bytes)	
	.incbin ...	
		
_LABEL_10E5_:		
		ld hl, $7F00	
		rst $08	; _LABEL_8_	
		ld c, Port_VDPData	
		ld hl, _RAM_C038_	
		call _LABEL_119_	
		ld hl, $7F80	
		rst $08	; _LABEL_8_	
		ld c, Port_VDPData	
		ld hl, _RAM_C078_	
		jp _LABEL_99_	
		
	; Data from 10FD to 1153 (87 bytes)	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF	
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01 $FD $21 $02	
	.db $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21	
	.db $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01 $FD $21 $02 $00 $FD $39	
	.db $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21 $04 $00 $39	
	.db $7E $23 $66 $6F $C3 $99 $00	
		
_LABEL_1154_:		
		ld hl, $0000	
		push hl	
		call _LABEL_1276_	
		pop af	
		ld c, $00	
-:		
		ld hl, _DATA_11A8_	
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
		call _LABEL_12B6_	
		call _LABEL_1311_	
		call _LABEL_1323_	
		call _LABEL_13B6_	
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
		ld hl, _RAM_C033_	
		ld (hl), $80	
		ret	
		
+:		
		ld hl, _RAM_C033_	
		ld (hl), $40	
		ret	
		
; Data from 11A8 to 11BA (19 bytes)		
_DATA_11A8_:		
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $33 $C0 $FD	
	.db $6E $00 $C9	
		
_LABEL_11BB_:		
		ld c, l	
		ld e, h	
		ld d, $00	
		ld hl, _RAM_C11F_	
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
		
_LABEL_11D2_:		
		ld a, l	
		ld e, h	
		cpl	
		ld b, a	
		ld d, $00	
		ld hl, $C11F	
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
		
	; Data from 11EB to 1208 (30 bytes)	
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $89	
	.db $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9	
		
_LABEL_1209_:		
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
		
_LABEL_121D_:		
		ld c, l	
		bit 0, c	
		jr z, +	
		push bc	
		ld hl, $0102	
		call _LABEL_11BB_	
		pop bc	
		ld hl, _RAM_C121_	
		ld (hl), $10	
		jr ++	
		
+:		
		push bc	
		ld hl, $0102	
		call _LABEL_11D2_	
		pop bc	
		ld hl, _RAM_C121_	
		ld (hl), $08	
++:		
		bit 1, c	
		jr z, +	
		ld hl, $0101	
		call _LABEL_11BB_	
		ld hl, _RAM_C122_	
		ld (hl), $10	
		ld iy, _RAM_C121_	
		sla (iy+0)	
		ret	
		
+:		
		ld hl, $0101	
		call _LABEL_11D2_	
		ld hl, _RAM_C122_	
		ld (hl), $08	
		ret	
		
	; Data from 1262 to 1275 (20 bytes)	
	.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39	
	.db $7E $D3 $BE $C9	
		
_LABEL_1276_:		
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
		
	; Data from 128A to 12B5 (44 bytes)	
	.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED	
	.db $A3 $20 $FC $C9 $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06	
	.db $10 $0E $BE $ED $A3 $20 $FC $C9 $7D $D3 $BE $C9	
		
_LABEL_12B6_:		
		ld hl, _RAM_C0F8_	
		ld (hl), $00	
		ret	
		
	; Data from 12BC to 1310 (85 bytes)	
	.db $3A $F8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00	
	.db $D6 $D1 $28 $3E $3E $38 $21 $F8 $C0 $86 $4F $3E $C0 $CE $00 $47	
	.db $FD $5E $00 $1D $7B $02 $3A $F8 $C0 $87 $4F $21 $78 $C0 $06 $00	
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00	
	.db $FD $39 $FD $7E $00 $77 $FD $21 $F8 $C0 $FD $4E $00 $FD $34 $00	
	.db $69 $C9 $2E $FF $C9	
		
_LABEL_1311_:		
		ld a, (_RAM_C0F8_)	
		sub $40	
		ret nc	
		ld bc, $C038	
		ld hl, (_RAM_C0F8_)	
		ld h, $00	
		add hl, bc	
		ld (hl), $D0	
		ret	
		
_LABEL_1323_:		
		ld hl, $7F00	
		rst $08	; _LABEL_8_	
		ld bc, _RAM_C038_	
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
		ld bc, _RAM_C078_	
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
		
_LABEL_134C_:		
		ld hl, _RAM_C030_	
		ld (hl), $00	
-:		
		ld hl, _RAM_C030_	
		bit 0, (hl)	
		jr z, -	
		ret	
		
_LABEL_1359_:		
		ld hl, (_RAM_C034_)	
		ret	
		
	; Data from 135D to 13AD (81 bytes)	
	.db $FD $21 $36 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21	
	.db $34 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9 $3A $34 $C0	
	.db $FD $21 $36 $C0 $FD $A6 $00 $6F $3A $35 $C0 $FD $21 $36 $C0 $FD	
	.db $A6 $01 $67 $C9 $FD $21 $34 $C0 $FD $7E $00 $2F $4F $FD $7E $01	
	.db $2F $47 $79 $FD $21 $36 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67	
	.db $C9	
		
_LABEL_13AE_:		
		ld iy, _RAM_C032_	
		ld l, (iy+0)	
		ret	
		
_LABEL_13B6_:		
		ld hl, _RAM_C032_	
		ld (hl), $00	
		ret	
		
	; Data from 13BC to 13E3 (40 bytes)	
	.db $21 $02 $00 $39 $7E $32 $F9 $C0 $21 $03 $00 $39 $7E $32 $FA $C0	
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9	
	.db $DB $7E $6F $C9 $DB $7F $6F $C9	
		
_LABEL_13E4_:		
		push af	
		push hl	
		in a, (Port_VDPStatus)	
		ld (_RAM_C031_), a	
		rlca	
		jr nc, +	
		ld hl, _RAM_C030_	
		ld (hl), $01	
		ld hl, (_RAM_C034_)	
		ld (_RAM_C036_), hl	
		in a, (Port_IOPort1)	
		cpl	
		ld hl, _RAM_C034_	
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
		ld hl, (_RAM_C0F9_)	
		call _LABEL_160E_	
		pop iy	
		pop de	
		pop bc	
++:		
		pop hl	
		pop af	
		ei	
		reti	
		
_LABEL_141A_:		
		push af	
		push bc	
		push de	
		push hl	
		push iy	
		ld hl, _RAM_C032_	
		ld (hl), $01	
		pop iy	
		pop hl	
		pop de	
		pop bc	
		pop af	
		retn	
		
	; Data from 142D to 160D (481 bytes)	
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $21 $F0 $FF $39 $F9 $DD $36 $FE	
	.db $00 $DD $36 $FF $00 $DD $36 $F3 $00 $DD $36 $F4 $00 $DD $6E $05	
	.db $26 $00 $29 $29 $29 $29 $29 $29 $DD $75 $FC $7C $F6 $78 $DD $77	
	.db $FD $DD $7E $04 $DD $77 $FA $DD $36 $FB $00 $DD $CB $FA $26 $DD	
	.db $CB $FB $16 $DD $7E $FC $DD $B6 $FA $5F $DD $7E $FD $DD $B6 $FB	
	.db $57 $DD $7E $08 $DD $77 $FA $DD $77 $F1 $DD $36 $F0 $00 $6B $62	
	.db $CF $DD $6E $06 $DD $66 $07 $7E $DD $77 $F2 $23 $DD $75 $06 $DD	
	.db $74 $07 $DD $7E $06 $DD $77 $FC $DD $7E $07 $DD $77 $FD $DD $7E	
	.db $F2 $E6 $02 $DD $77 $F9 $DD $7E $F2 $0F $0F $E6 $3F $DD $77 $F8	
	.db $DD $CB $F2 $46 $CA $66 $15 $DD $36 $F6 $00 $DD $7E $FF $DD $77	
	.db $F7 $DD $4E $FC $DD $46 $FD $03 $DD $6E $FC $DD $66 $FD $6E $DD	
	.db $7E $F8 $C6 $02 $DD $77 $F5 $26 $00 $7D $DD $B6 $F6 $6F $7C $DD	
	.db $B6 $F7 $67 $DD $7E $F9 $B7 $28 $3C $DD $71 $06 $DD $70 $07 $4D	
	.db $44 $DD $6E $F5 $7D $B7 $CA $DF $15 $E5 $69 $60 $DF $E1 $DD $35	
	.db $F1 $DD $7E $F1 $B7 $20 $15 $7B $C6 $40 $5F $7A $CE $00 $57 $E5	
	.db $C5 $6B $62 $CF $C1 $E1 $DD $7E $FA $DD $77 $F1 $3E $01 $95 $30	
	.db $01 $03 $2D $18 $CF $DD $71 $06 $DD $70 $07 $DD $75 $FE $DD $74	
	.db $FF $DD $46 $F5 $78 $B7 $CA $EF $15 $DD $6E $FE $DD $66 $FF $DF	
	.db $DD $35 $F1 $DD $7E $F1 $B7 $20 $0D $21 $40 $00 $19 $5D $54 $CF	
	.db $DD $7E $FA $DD $77 $F1 $05 $18 $DB $DD $7E $F9 $B7 $28 $29 $DD	
	.db $CB $F2 $56 $28 $10 $DD $7E $FE $DD $77 $F3 $DD $7E $FF $DD $77	
	.db $F4 $DD $36 $F0 $01 $DD $4E $F2 $CB $39 $CB $39 $CB $39 $DD $71	
	.db $FF $DD $36 $FE $00 $C3 $8E $14 $DD $6E $F8 $7D $B7 $28 $6D $DD	
	.db $7E $FF $DD $77 $F6 $DD $36 $F7 $00 $DD $4E $FC $DD $46 $FD $DD	
	.db $75 $F5 $DD $7E $F5 $B7 $28 $34 $0A $D3 $BE $03 $00 $00 $00 $DD	
	.db $7E $F6 $D3 $BE $DD $35 $F1 $DD $7E $F1 $B7 $20 $10 $21 $40 $00	
	.db $19 $EB $C5 $6B $62 $CF $C1 $DD $7E $FA $DD $77 $F1 $DD $35 $F5	
	.db $18 $D0 $DD $71 $FE $DD $70 $FF $18 $08 $18 $06 $DD $71 $06 $DD	
	.db $70 $07 $DD $CB $F0 $46 $CA $8E $14 $DD $7E $F3 $DD $77 $FE $DD	
	.db $7E $F4 $DD $77 $FF $DD $36 $F0 $00 $C3 $8E $14 $DD $F9 $DD $E1	
	.db $C9	
		
_LABEL_160E_:		
		jp (hl)	
		
	; Data from 160F to 1707 (249 bytes)	
	.db $FD $21 $04 $00 $FD $39 $FD $6E $00 $FD $66 $01 $29 $29 $29 $29	
	.db $29 $CB $F4 $CF $C1 $DD $E1 $DD $E5 $C5 $DD $4E $00 $DD $23 $DD	
	.db $46 $00 $DD $23 $C5 $06 $04 $11 $FB $C0 $DD $4E $00 $DD $23 $CB	
	.db $01 $30 $43 $CB $01 $38 $3B $DD $7E $00 $DD $23 $EB $57 $E6 $03	
	.db $87 $87 $87 $5F $7A $16 $00 $FD $21 $FB $C0 $FD $19 $EB $FE $03	
	.db $38 $3E $FE $10 $38 $14 $FE $13 $38 $3B $FE $20 $38 $0C $FE $23	
	.db $38 $38 $FE $40 $38 $04 $FE $43 $38 $39 $67 $DD $6E $00 $DD $23	
	.db $18 $0A $26 $00 $18 $06 $CB $01 $9F $6F $26 $FF $C5 $06 $08 $7D	
	.db $CB $04 $38 $05 $DD $7E $00 $DD $23 $12 $13 $10 $F2 $C1 $18 $31	
	.db $21 $00 $FF $18 $15 $21 $FF $FF $18 $10 $DD $66 $00 $2E $00 $DD	
	.db $23 $18 $07 $DD $66 $00 $2E $FF $DD $23 $C5 $06 $08 $FD $7E $00	
	.db $FD $23 $AD $CB $04 $38 $05 $DD $7E $00 $DD $23 $12 $13 $10 $ED	
	.db $C1 $05 $C2 $3E $16 $11 $08 $00 $4B $21 $FB $C0 $06 $04 $E5 $7E	
	.db $D3 $BE $19 $10 $FA $E1 $23 $0D $20 $F2 $C1 $0B $78 $B1 $C2 $33	
	.db $16 $C9 $21 $03 $00 $39 $5E $2B $6E $CD $B3 $10 $EB $C9 $F1 $E1	
	.db $D1 $D5 $E5 $F5 $CD $B6 $10 $EB $C9	
		
; Data from 1708 to 170F (8 bytes)		
_DATA_1708_:		
	.db $00 $00 $00 $00 $04 $20 $08 $08	
		
_LABEL_1710_:		
		ld bc, $0008	
		ld a, b	
		or c	
		jr z, +	
		ld de, _RAM_C11B_	
		ld hl, _DATA_1708_	
		ldir	
+:		
		ret	
		
	; Data from 1720 to 7FEF (26832 bytes)	
	.dsb 26732, $00	
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
		.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $A0 $CF $99 $99 $00 $4C
		
	
	; This disassembly was created using Emulicious (http://www.emulicious.net)
		ld b, l
		push bc
		inc sp
		call _LABEL_867_
		inc sp
		call _LABEL_873_
		call _LABEL_997_
		push hl
		call _LABEL_87D_
		ld h, $01
		ex (sp), hl
		inc sp
		call _LABEL_BFC_
		inc sp
		call _LABEL_81B_
_LABEL_232_:	
		call _LABEL_984_
		ld a, l
		or a
		jr z, ++
		call _LABEL_987_
		ld iy, _RAM_C000_
		ld a, (iy+0)
		xor $01
		ld (iy+0), a
		bit 0, (iy+0)
		jr z, +
		call _LABEL_A3B_
		jr ++
	
+:	
		call _LABEL_A3E_
++:	
		ld hl, _RAM_C000_
		bit 0, (hl)
		jr nz, _LABEL_232_
		call _LABEL_975_
		call _LABEL_BB7_
		call _LABEL_C22_
		call _LABEL_978_
		call _LABEL_97B_
		call _LABEL_97E_
		call _LABEL_A41_
		call _LABEL_A44_
		jr _LABEL_232_
	
_LABEL_277_:	
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
	
	; Data from 29E to 333 (150 bytes)
	.db $3A $01 $C0 $B7 $C0 $3A $0F $C0 $F6 $90 $D3 $7F $3A $10 $C0 $F6
	.db $B0 $D3 $7F $3A $16 $C0 $B7 $20 $17 $3A $13 $C0 $E6 $0F $F6 $C0
	.db $D3 $7F $3A $14 $C0 $E6 $3F $D3 $7F $3A $11 $C0 $F6 $D0 $D3 $7F
	.db $3A $17 $C0 $B7 $20 $10 $3A $15 $C0 $E6 $0F $F6 $E0 $D3 $7F $3A
	.db $12 $C0 $F6 $F0 $D3 $7F $21 $01 $C0 $36 $01 $C9 $CD $77 $02 $21
	.db $09 $C0 $36 $01 $D1 $C1 $C5 $D5 $ED $43 $02 $C0 $ED $43 $04 $C0
	.db $ED $43 $06 $C0 $21 $08 $C0 $36 $00 $21 $0C $C0 $36 $00 $21 $0A
	.db $C0 $36 $9F $21 $01 $C0 $36 $01 $C9 $21 $09 $C0 $36 $00 $C9 $C1
	.db $E1 $E5 $C5 $E5 $CD $EA $02 $F1 $21 $09 $C0 $36 $00 $C9 $FD $21
	.db $01 $C0 $FD $6E $00 $C9
	
_LABEL_334_:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ret
	
_LABEL_345_:	
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
		jr z, _LABEL_3BD_
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
_LABEL_3BD_:	
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
	
	; Data from 444 to 532 (239 bytes)
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD $7E $04 $32 $0B $C0 $3A
	.db $01 $C0 $B7 $CA $2E $05 $3A $0F $C0 $E6 $0F $4F $1E $00 $FD $21
	.db $0B $C0 $FD $7E $00 $DD $77 $FE $AF $DD $77 $FF $79 $DD $86 $FE
	.db $47 $7B $DD $8E $FF $5F $FD $4E $00 $3E $0F $B8 $3E $00 $9B $E2
	.db $88 $04 $EE $80 $F2 $90 $04 $11 $0F $00 $18 $09 $3A $0F $C0 $E6
	.db $0F $81 $5F $17 $9F $7B $F6 $90 $D3 $7F $3A $10 $C0 $E6 $0F $5F
	.db $16 $00 $E1 $E5 $19 $3E $0F $BD $3E $00 $9C $E2 $B4 $04 $EE $80
	.db $F2 $BC $04 $11 $0F $00 $18 $09 $3A $10 $C0 $E6 $0F $81 $5F $17
	.db $9F $7B $F6 $B0 $D3 $7F $3A $16 $C0 $B7 $20 $2C $3A $11 $C0 $E6
	.db $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2 $E6 $04
	.db $EE $80 $F2 $EE $04 $11 $0F $00 $18 $09 $3A $11 $C0 $E6 $0F $81
	.db $5F $17 $9F $7B $F6 $D0 $D3 $7F $3A $17 $C0 $B7 $20 $2C $3A $12
	.db $C0 $E6 $0F $6F $26 $00 $D1 $D5 $19 $3E $0F $BD $3E $00 $9C $E2
	.db $18 $05 $EE $80 $F2 $20 $05 $01 $0F $00 $18 $09 $3A $12 $C0 $E6
	.db $0F $81 $4F $17 $9F $79 $F6 $F0 $D3 $7F $DD $F9 $DD $E1 $C9
	
_LABEL_533_:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (_RAM_C01A_)
		or a
		jp z, _LABEL_5F8_
		ld iy, _RAM_C00B_
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_5A7_
		ld a, (_RAM_C001_)
		or a
		jr z, _LABEL_59E_
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
	
_LABEL_59E_:	
		ld a, $DF
		out (Port_PSG), a
+:	
		ld hl, _RAM_C016_
		ld (hl), $00
_LABEL_5A7_:	
		ld a, (_RAM_C017_)
		or a
		jr z, _LABEL_5F3_
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
_LABEL_5F3_:	
		ld hl, _RAM_C01A_
		ld (hl), $00
_LABEL_5F8_:	
		ld sp, ix
		pop ix
		ret
	
	; Data from 5FD to 678 (124 bytes)
	.db $CD $33 $05 $21 $22 $C0 $36 $00 $D1 $C1 $C5 $D5 $ED $43 $1B $C0
	.db $ED $43 $1D $C0 $ED $43 $1F $C0 $21 $21 $C0 $36 $00 $21 $23 $C0
	.db $36 $00 $21 $04 $00 $39 $4E $CB $41 $28 $05 $11 $01 $00 $18 $03
	.db $11 $00 $00 $21 $16 $C0 $73 $CB $49 $28 $05 $01 $01 $00 $18 $03
	.db $01 $00 $00 $21 $17 $C0 $71 $21 $1A $C0 $36 $01 $C9 $21 $22 $C0
	.db $36 $00 $C9 $FD $21 $1A $C0 $FD $6E $00 $C9 $FD $21 $04 $00 $FD
	.db $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD $6E $00 $FD $66 $01
	.db $E5 $CD $FD $05 $F1 $33 $21 $22 $C0 $36 $01 $C9
	
_LABEL_679_:	
		ld a, (_RAM_C001_)
		or a
		ret z
		ld a, (_RAM_C008_)
		or a
		jp nz, _LABEL_70D_
		ld hl, (_RAM_C004_)
_LABEL_688_:	
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
		jr c, _LABEL_712_
		ld (_RAM_C00A_), a
		bit 4, a
		jr nz, ++
		bit 6, a
		jp z, _LABEL_739_
		bit 5, a
		jr z, +
		ld (_RAM_C015_), a
		ld a, (_RAM_C017_)
		or a
		jp nz, _LABEL_688_
		ld a, (_RAM_C015_)
		and $03
		cp $03
		jr nz, _LABEL_738_
		ld a, (_RAM_C01A_)
		or a
		jr z, _LABEL_738_
		ld (_RAM_C017_), a
		ld a, $FF
		out (Port_PSG), a
		jp _LABEL_688_
	
+:	
		ld (_RAM_C013_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_738_
		jp _LABEL_688_
	
++:	
		bit 6, a
		jr nz, ++
		bit 5, a
		jr z, +
		ld (_RAM_C010_), a
		jp _LABEL_73F_
	
+:	
		ld (_RAM_C00F_), a
		jp _LABEL_73F_
	
++:	
		bit 5, a
		jr z, +
		ld (_RAM_C012_), a
		ld a, (_RAM_C017_)
		or a
		jr z, _LABEL_73E_
		jp _LABEL_688_
	
+:	
		ld (_RAM_C011_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_73E_
		jp _LABEL_688_
	
_LABEL_70D_:	
		dec a
		ld (_RAM_C008_), a
		ret
	
_LABEL_712_:	
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
		jr nc, _LABEL_771_
		cp $00
		jr z, +++++
		cp $01
		jr z, ++++
		ret
	
_LABEL_738_:	
		ld a, b
_LABEL_739_:	
		out (Port_PSG), a
		jp _LABEL_688_
	
_LABEL_73E_:	
		ld a, b
_LABEL_73F_:	
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
		jp _LABEL_688_
	
+++:	
		bit 6, a
		jr nz, ++++++
		jp _LABEL_738_
	
++++:	
		ld (_RAM_C006_), hl
		jp _LABEL_688_
	
+++++:	
		ld a, (_RAM_C009_)
		or a
		jp z, _LABEL_277_
		ld hl, (_RAM_C006_)
		jp _LABEL_688_
	
_LABEL_771_:	
		sub $04
		ld (_RAM_C00C_), a
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (_RAM_C00D_), hl
		ld hl, (_RAM_C002_)
		add hl, bc
		jp _LABEL_688_
	
++++++:	
		ld a, b
		ld (_RAM_C014_), a
		ld a, (_RAM_C016_)
		or a
		jr z, _LABEL_738_
		jp _LABEL_688_
	
	; Data from 791 to 791 (1 bytes)
	.db $C9
	
_LABEL_792_:	
		ld a, (_RAM_C01A_)
		or a
		ret z
		ld a, (_RAM_C021_)
		or a
		jp nz, +++
		ld hl, (_RAM_C01D_)
_LABEL_7A1_:	
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
		jp _LABEL_7A1_
	
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
		jp _LABEL_7A1_
	
++:	
		ld a, (_RAM_C022_)
		or a
		jp z, _LABEL_533_
		ld hl, (_RAM_C01F_)
		ld (_RAM_C01D_), hl
		jp _LABEL_7A1_
	
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
		jp _LABEL_7A1_
	
	; Data from 817 to 817 (1 bytes)
	.db $C9
	
_LABEL_818_:	
		jp _LABEL_1125_
	
_LABEL_81B_:	
		ld hl, $0140
		jp _LABEL_118C_
	
_LABEL_821_:	
		ld hl, $0140
		jp _LABEL_11A3_
	
	; Data from 827 to 866 (64 bytes)
	.db $21 $02 $00 $39 $7E $32 $FF $FF $C9 $FD $21 $02 $00 $FD $39 $FD
	.db $6E $00 $C3 $BC $11 $FD $21 $02 $00 $FD $39 $FD $6E $00 $C3 $C6
	.db $11 $21 $FC $FF $36 $08 $C9 $21 $02 $00 $39 $7E $87 $87 $CB $DF
	.db $E6 $0C $32 $FC $FF $C9 $21 $FC $FF $36 $00 $C9 $21 $00 $80 $C9
	
_LABEL_867_:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _LABEL_11EE_
	
_LABEL_873_:	
		ld l, $00
		jp _LABEL_11DA_
	
	; Data from 878 to 87C (5 bytes)
	.db $2E $01 $C3 $DA $11
	
_LABEL_87D_:	
		pop bc
		pop hl
		push hl
		push bc
		jp _LABEL_118C_
	
	; Data from 884 to 974 (241 bytes)
	.db $21 $04 $00 $39 $4E $23 $46 $C5 $21 $04 $00 $39 $4E $23 $46 $C5
	.db $CD $E0 $15 $F1 $F1 $C9 $3E $20 $F5 $33 $21 $05 $00 $39 $4E $23
	.db $46 $C5 $21 $06 $00 $39 $7E $F5 $33 $21 $06 $00 $39 $7E $F5 $33
	.db $CD $FE $13 $F1 $F1 $33 $C9 $C1 $E1 $E5 $C5 $C3 $5B $12 $C1 $E1
	.db $E5 $C5 $C3 $6F $12 $21 $04 $00 $39 $7E $87 $87 $21 $03 $00 $39
	.db $B6 $4F $21 $05 $00 $39 $7E $07 $07 $07 $07 $E6 $F0 $B1 $47 $C5
	.db $33 $21 $03 $00 $39 $7E $F5 $33 $CD $33 $12 $F1 $C9 $21 $04 $00
	.db $39 $7E $87 $87 $21 $03 $00 $39 $B6 $4F $21 $05 $00 $39 $7E $07
	.db $07 $07 $07 $E6 $F0 $B1 $47 $C5 $33 $21 $03 $00 $39 $7E $F5 $33
	.db $CD $47 $12 $F1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $DD $6E $05
	.db $26 $00 $29 $29 $29 $29 $29 $29 $4D $7C $F6 $78 $47 $DD $6E $04
	.db $26 $00 $29 $7D $B1 $6F $7C $B0 $67 $DD $E1 $C3 $06 $00 $C1 $E1
	.db $E5 $C5 $C3 $11 $00 $FD $21 $02 $00 $FD $39 $FD $6E $00 $3E $00
	.db $F6 $18 $67 $C3 $11 $00 $21 $04 $00 $39 $46 $C5 $33 $21 $04 $00
	.db $39 $7E $F5 $33 $21 $04 $00 $39 $7E $F5 $33 $CD $8D $12 $F1 $33
	.db $C9
	
_LABEL_975_:	
		jp _LABEL_1287_
	
_LABEL_978_:	
		jp _LABEL_12E2_
	
_LABEL_97B_:	
		jp _LABEL_131D_
	
_LABEL_97E_:	
		jp _LABEL_10B6_
	
	; Data from 981 to 983 (3 bytes)
	.db $C3 $B6 $10
	
_LABEL_984_:	
		jp _LABEL_137F_
	
_LABEL_987_:	
		jp _LABEL_1387_
	
	; Data from 98A to 990 (7 bytes)
	.db $3A $31 $C0 $E6 $20 $6F $C9
	
_LABEL_991_:	
		jp _LABEL_132A_
	
_LABEL_994_:	
		ld l, $00
		ret
	
_LABEL_997_:	
		ld hl, $0020
		ret
	
	; Data from 99B to A3A (160 bytes)
	.db $21 $00 $10 $C9 $21 $00 $08 $C9 $53 $74 $65 $76 $65 $6E $20 $42
	.db $6F $6C $61 $6E $64 $00 $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00 $C1 $E1 $E5 $C5
	.db $E5 $CD $EA $02 $F1 $C9 $C1 $E1 $E5 $C5 $E5 $CD $1D $03 $F1 $C9
	.db $C3 $77 $02 $C3 $9E $02 $C3 $2C $03 $21 $02 $00 $39 $7E $F5 $33
	.db $CD $44 $04 $33 $C9 $21 $04 $00 $39 $7E $F5 $33 $21 $03 $00 $39
	.db $4E $23 $46 $C5 $CD $FD $05 $F1 $33 $C9 $C3 $33 $05 $C3 $50 $06
	
_LABEL_A3B_:	
		jp _LABEL_334_
	
_LABEL_A3E_:	
		jp _LABEL_345_
	
_LABEL_A41_:	
		jp _LABEL_679_
	
_LABEL_A44_:	
		jp _LABEL_792_
	
	; Data from A47 to A4F (9 bytes)
	.db $2E $01 $C9 $2E $02 $C9 $2E $03 $C9
	
_LABEL_A50_:	
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
	
	; Data from A66 to BB6 (337 bytes)
	.db $21 $32 $10 $E5 $CD $81 $0A $F1 $C9 $21 $52 $10 $E5 $CD $81 $0A
	.db $F1 $C9 $21 $0F $10 $E5 $CD $81 $0A $F1 $C9 $CD $38 $0A $7D $B7
	.db $C0 $CD $47 $0A $65 $D1 $C1 $C5 $D5 $E5 $33 $C5 $CD $20 $0A $F1
	.db $33 $C9 $21 $00 $00 $E5 $21 $78 $0D $E5 $CD $84 $08 $F1 $F1 $01
	.db $E8 $0C $C5 $CD $BB $08 $F1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39
	.db $DD $7E $04 $C6 $E0 $4F $C5 $DD $66 $06 $DD $6E $05 $E5 $CD $19
	.db $09 $F1 $C1 $21 $F8 $0C $6E $26 $00 $06 $00 $09 $E5 $CD $42 $09
	.db $F1 $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $3B $DD $4E $06
	.db $DD $36 $FF $00 $DD $7E $04 $DD $86 $FF $5F $DD $7E $05 $CE $00
	.db $57 $1A $B7 $28 $2D $C6 $E0 $47 $51 $0C $DD $71 $06 $C5 $DD $7E
	.db $07 $F5 $33 $D5 $33 $CD $19 $09 $F1 $C1 $21 $F8 $0C $5E $16 $00
	.db $78 $6F $17 $9F $67 $19 $C5 $E5 $CD $42 $09 $F1 $C1 $DD $34 $FF
	.db $18 $C2 $33 $DD $E1 $C9 $DD $E5 $DD $21 $00 $00 $DD $39 $F5 $DD
	.db $7E $06 $DD $77 $FF $DD $36 $FE $00 $21 $0A $00 $E5 $DD $6E $04
	.db $DD $66 $05 $E5 $CD $75 $10 $F1 $F1 $5D $54 $E5 $D5 $01 $0A $00
	.db $C5 $DD $4E $04 $DD $46 $05 $C5 $CD $CE $16 $F1 $F1 $45 $D1 $E1
	.db $DD $75 $04 $DD $74 $05 $78 $C6 $10 $4F $7A $B3 $20 $0B $B0 $20
	.db $08 $DD $7E $FE $B7 $28 $02 $0E $00 $DD $46 $FF $DD $35 $FF $DD
	.db $7E $FF $DD $77 $06 $C5 $DD $7E $07 $F5 $33 $C5 $33 $CD $19 $09
	.db $F1 $C1 $21 $F8 $0C $6E $26 $00 $79 $17 $9F $47 $09 $E5 $CD $42
	.db $09 $F1 $DD $34 $FE $DD $7E $FE $D6 $05 $38 $8D $DD $F9 $DD $E1
	.db $C9
	
_LABEL_BB7_:	
		ld hl, (_RAM_C11B_)
		ld (_RAM_C11D_), hl
		call _LABEL_991_
		ld (_RAM_C11B_), hl
		ret
	
	; Data from BC4 to BFB (56 bytes)
	.db $21 $02 $00 $39 $4E $06 $00 $FD $21 $1B $C1 $FD $7E $00 $A1 $5F
	.db $FD $7E $01 $A0 $B3 $28 $10 $79 $FD $21 $1D $C1 $FD $A6 $00 $4F
	.db $78 $FD $A6 $01 $B1 $28 $03 $2E $00 $C9 $2E $01 $C9 $21 $02 $00
	.db $39 $4E $3A $1B $C1 $A1 $6F $C9
	
_LABEL_BFC_:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (_RAM_C027_), a
		ld hl, _RAM_C026_
		ld (hl), $00
		ld hl, $0C65
		ld (_RAM_C028_), hl
		ld hl, $0C6D
		ld (_RAM_C02A_), hl
		ld hl, $0C66
		ld (_RAM_C02C_), hl
		ld hl, $0C8F
		ld (_RAM_C02E_), hl
		ret
	
_LABEL_C22_:	
		ld a, (_RAM_C026_)
		ld iy, _RAM_C027_
		sub (iy+0)
		jr z, +
		ld a, (iy+0)
		ld iy, _RAM_C026_
		ld (iy+0), a
		ld bc, _RAM_C028_
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		call _LABEL_15DF_
+:	
		ld bc, _RAM_C02C_
		ld iy, _RAM_C026_
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld hl, $C027
		push hl
		ld l, c
		ld h, b
		call _LABEL_15DF_
		pop af
		ret
	
	; Data from C65 to 10B5 (1105 bytes)
	.incbin ...
	
_LABEL_10B6_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, _RAM_C038_
		call _LABEL_119_
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, _RAM_C078_
		jp _LABEL_99_
	
	; Data from 10CE to 1124 (87 bytes)
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01 $FD $21 $02
	.db $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21
	.db $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01 $FD $21 $02 $00 $FD $39
	.db $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF $0E $BE $21 $04 $00 $39
	.db $7E $23 $66 $6F $C3 $99 $00
	
_LABEL_1125_:	
		ld hl, $0000
		push hl
		call _LABEL_1247_
		pop af
		ld c, $00
-:	
		ld hl, _DATA_1179_
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
		call _LABEL_1287_
		call _LABEL_12E2_
		call _LABEL_12F4_
		call _LABEL_1387_
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
		ld hl, _RAM_C033_
		ld (hl), $80
		ret
	
+:	
		ld hl, _RAM_C033_
		ld (hl), $40
		ret
	
; Data from 1179 to 118B (19 bytes)	
_DATA_1179_:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF $FD $21 $33 $C0 $FD
	.db $6E $00 $C9
	
_LABEL_118C_:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, _RAM_C11F_
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
	
_LABEL_11A3_:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, $C11F
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
	
	; Data from 11BC to 11D9 (30 bytes)
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $89
	.db $D3 $BF $FB $C9 $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
	
_LABEL_11DA_:	
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
	
_LABEL_11EE_:	
		ld c, l
		bit 0, c
		jr z, +
		push bc
		ld hl, $0102
		call _LABEL_118C_
		pop bc
		ld hl, _RAM_C121_
		ld (hl), $10
		jr ++
	
+:	
		push bc
		ld hl, $0102
		call _LABEL_11A3_
		pop bc
		ld hl, _RAM_C121_
		ld (hl), $08
++:	
		bit 1, c
		jr z, +
		ld hl, $0101
		call _LABEL_118C_
		ld hl, _RAM_C122_
		ld (hl), $10
		ld iy, _RAM_C121_
		sla (iy+0)
		ret
	
+:	
		ld hl, $0101
		call _LABEL_11A3_
		ld hl, _RAM_C122_
		ld (hl), $08
		ret
	
	; Data from 1233 to 1246 (20 bytes)
	.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	.db $7E $D3 $BE $C9
	
_LABEL_1247_:	
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
	
	; Data from 125B to 1286 (44 bytes)
	.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9 $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06
	.db $10 $0E $BE $ED $A3 $20 $FC $C9 $7D $D3 $BE $C9
	
_LABEL_1287_:	
		ld hl, _RAM_C0F8_
		ld (hl), $00
		ret
	
	; Data from 128D to 12E1 (85 bytes)
	.db $3A $F8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $38 $21 $F8 $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $F8 $C0 $87 $4F $21 $78 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $F8 $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_LABEL_12E2_:	
		ld a, (_RAM_C0F8_)
		sub $40
		ret nc
		ld bc, $C038
		ld hl, (_RAM_C0F8_)
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_LABEL_12F4_:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, _RAM_C038_
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
		ld bc, _RAM_C078_
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
	
_LABEL_131D_:	
		ld hl, _RAM_C030_
		ld (hl), $00
-:	
		ld hl, _RAM_C030_
		bit 0, (hl)
		jr z, -
		ret
	
_LABEL_132A_:	
		ld hl, (_RAM_C034_)
		ret
	
	; Data from 132E to 137E (81 bytes)
	.db $FD $21 $36 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $34 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9 $3A $34 $C0
	.db $FD $21 $36 $C0 $FD $A6 $00 $6F $3A $35 $C0 $FD $21 $36 $C0 $FD
	.db $A6 $01 $67 $C9 $FD $21 $34 $C0 $FD $7E $00 $2F $4F $FD $7E $01
	.db $2F $47 $79 $FD $21 $36 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67
	.db $C9
	
_LABEL_137F_:	
		ld iy, _RAM_C032_
		ld l, (iy+0)
		ret
	
_LABEL_1387_:	
		ld hl, _RAM_C032_
		ld (hl), $00
		ret
	
	; Data from 138D to 13B4 (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $F9 $C0 $21 $03 $00 $39 $7E $32 $FA $C0
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_LABEL_13B5_:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (_RAM_C031_), a
		rlca
		jr nc, +
		ld hl, _RAM_C030_
		ld (hl), $01
		ld hl, (_RAM_C034_)
		ld (_RAM_C036_), hl
		in a, (Port_IOPort1)
		cpl
		ld hl, _RAM_C034_
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
		ld hl, (_RAM_C0F9_)
		call _LABEL_15DF_
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
_LABEL_13EB_:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, _RAM_C032_
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
	; Data from 13FE to 15DE (481 bytes)
	.db $DD $E5 $DD $21 $00 $00 $DD $39 $21 $F0 $FF $39 $F9 $DD $36 $FE
	.db $00 $DD $36 $FF $00 $DD $36 $F3 $00 $DD $36 $F4 $00 $DD $6E $05
	.db $26 $00 $29 $29 $29 $29 $29 $29 $DD $75 $FC $7C $F6 $78 $DD $77
	.db $FD $DD $7E $04 $DD $77 $FA $DD $36 $FB $00 $DD $CB $FA $26 $DD
	.db $CB $FB $16 $DD $7E $FC $DD $B6 $FA $5F $DD $7E $FD $DD $B6 $FB
	.db $57 $DD $7E $08 $DD $77 $FA $DD $77 $F1 $DD $36 $F0 $00 $6B $62
	.db $CF $DD $6E $06 $DD $66 $07 $7E $DD $77 $F2 $23 $DD $75 $06 $DD
	.db $74 $07 $DD $7E $06 $DD $77 $FC $DD $7E $07 $DD $77 $FD $DD $7E
	.db $F2 $E6 $02 $DD $77 $F9 $DD $7E $F2 $0F $0F $E6 $3F $DD $77 $F8
	.db $DD $CB $F2 $46 $CA $37 $15 $DD $36 $F6 $00 $DD $7E $FF $DD $77
	.db $F7 $DD $4E $FC $DD $46 $FD $03 $DD $6E $FC $DD $66 $FD $6E $DD
	.db $7E $F8 $C6 $02 $DD $77 $F5 $26 $00 $7D $DD $B6 $F6 $6F $7C $DD
	.db $B6 $F7 $67 $DD $7E $F9 $B7 $28 $3C $DD $71 $06 $DD $70 $07 $4D
	.db $44 $DD $6E $F5 $7D $B7 $CA $B0 $15 $E5 $69 $60 $DF $E1 $DD $35
	.db $F1 $DD $7E $F1 $B7 $20 $15 $7B $C6 $40 $5F $7A $CE $00 $57 $E5
	.db $C5 $6B $62 $CF $C1 $E1 $DD $7E $FA $DD $77 $F1 $3E $01 $95 $30
	.db $01 $03 $2D $18 $CF $DD $71 $06 $DD $70 $07 $DD $75 $FE $DD $74
	.db $FF $DD $46 $F5 $78 $B7 $CA $C0 $15 $DD $6E $FE $DD $66 $FF $DF
	.db $DD $35 $F1 $DD $7E $F1 $B7 $20 $0D $21 $40 $00 $19 $5D $54 $CF
	.db $DD $7E $FA $DD $77 $F1 $05 $18 $DB $DD $7E $F9 $B7 $28 $29 $DD
	.db $CB $F2 $56 $28 $10 $DD $7E $FE $DD $77 $F3 $DD $7E $FF $DD $77
	.db $F4 $DD $36 $F0 $01 $DD $4E $F2 $CB $39 $CB $39 $CB $39 $DD $71
	.db $FF $DD $36 $FE $00 $C3 $5F $14 $DD $6E $F8 $7D $B7 $28 $6D $DD
	.db $7E $FF $DD $77 $F6 $DD $36 $F7 $00 $DD $4E $FC $DD $46 $FD $DD
	.db $75 $F5 $DD $7E $F5 $B7 $28 $34 $0A $D3 $BE $03 $00 $00 $00 $DD
	.db $7E $F6 $D3 $BE $DD $35 $F1 $DD $7E $F1 $B7 $20 $10 $21 $40 $00
	.db $19 $EB $C5 $6B $62 $CF $C1 $DD $7E $FA $DD $77 $F1 $DD $35 $F5
	.db $18 $D0 $DD $71 $FE $DD $70 $FF $18 $08 $18 $06 $DD $71 $06 $DD
	.db $70 $07 $DD $CB $F0 $46 $CA $5F $14 $DD $7E $F3 $DD $77 $FE $DD
	.db $7E $F4 $DD $77 $FF $DD $36 $F0 $00 $C3 $5F $14 $DD $F9 $DD $E1
	.db $C9
	
_LABEL_15DF_:	
		jp (hl)
	
	; Data from 15E0 to 16D8 (249 bytes)
	.db $FD $21 $04 $00 $FD $39 $FD $6E $00 $FD $66 $01 $29 $29 $29 $29
	.db $29 $CB $F4 $CF $C1 $DD $E1 $DD $E5 $C5 $DD $4E $00 $DD $23 $DD
	.db $46 $00 $DD $23 $C5 $06 $04 $11 $FB $C0 $DD $4E $00 $DD $23 $CB
	.db $01 $30 $43 $CB $01 $38 $3B $DD $7E $00 $DD $23 $EB $57 $E6 $03
	.db $87 $87 $87 $5F $7A $16 $00 $FD $21 $FB $C0 $FD $19 $EB $FE $03
	.db $38 $3E $FE $10 $38 $14 $FE $13 $38 $3B $FE $20 $38 $0C $FE $23
	.db $38 $38 $FE $40 $38 $04 $FE $43 $38 $39 $67 $DD $6E $00 $DD $23
	.db $18 $0A $26 $00 $18 $06 $CB $01 $9F $6F $26 $FF $C5 $06 $08 $7D
	.db $CB $04 $38 $05 $DD $7E $00 $DD $23 $12 $13 $10 $F2 $C1 $18 $31
	.db $21 $00 $FF $18 $15 $21 $FF $FF $18 $10 $DD $66 $00 $2E $00 $DD
	.db $23 $18 $07 $DD $66 $00 $2E $FF $DD $23 $C5 $06 $08 $FD $7E $00
	.db $FD $23 $AD $CB $04 $38 $05 $DD $7E $00 $DD $23 $12 $13 $10 $ED
	.db $C1 $05 $C2 $0F $16 $11 $08 $00 $4B $21 $FB $C0 $06 $04 $E5 $7E
	.db $D3 $BE $19 $10 $FA $E1 $23 $0D $20 $F2 $C1 $0B $78 $B1 $C2 $04
	.db $16 $C9 $21 $03 $00 $39 $5E $2B $6E $CD $84 $10 $EB $C9 $F1 $E1
	.db $D1 $D5 $E5 $F5 $CD $87 $10 $EB $C9
	
; Data from 16D9 to 16E0 (8 bytes)	
_DATA_16D9_:	
	.db $00 $00 $00 $00 $04 $20 $08 $08
	
_LABEL_16E1_:	
		ld bc, $0008
		ld a, b
		or c
		jr z, +
		ld de, _RAM_C11B_
		ld hl, _DATA_16D9_
		ldir
+:	
		ret
	
	; Data from 16F1 to 7FEF (26879 bytes)
	.dsb 26779, $00
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00 $56 $61 $6E $20
	.db $48 $61 $6C $65 $6E $00 $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C
	.db $61 $6E $64 $00 $53 $44 $53 $43 $01 $00 $27 $03 $21 $20 $D2 $7F
	.db $C8 $7F $8C $7F