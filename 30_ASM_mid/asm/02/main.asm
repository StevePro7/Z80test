	
; This disassembly was created using Emulicious (http://www.emulicious.net)	
	
_LABEL_0_:	
		di
		im 1
		jp _LABEL_70_
	
; Data from 6 to 7 (2 bytes)	
_SMS_crt0_RST08:	
	.db $00 $00
	
_LABEL_8_:	
		ld c, Port_VDPAddress
		di
		out (c), l
		out (c), h
		ei
		ret
	
; Data from 11 to 37 (39 bytes)	
_SMS_crt0_RST18:	
	.db $00 $00 $00 $00 $00 $00 $00 $7D $D3 $BE $7C $D6 $00 $00 $D3 $BE
	.db $C9
	.dsb 22, $00
	
_LABEL_38_:	
		jp _SMS_isr
	
	; Data from 3B to 65 (43 bytes)
	.dsb 43, $00
	
_LABEL_66_:	
		jp _SMS_nmi_isr
	
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
		ld hl, Lmain.main$global_pause$1_0$60	; Lmain.main$global_pause$1_0$60 = $C000
		ld (hl), a
		ld de, PSGMusicStatus	; PSGMusicStatus = $C001
		ld bc, $1FF0
		ldir
		call gsinit
		call _SMS_init
		ei
		call A$main$80
		jp _exit
	
_OUTI128:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
_OUTI64:	
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
		outi
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
	
	; Data from 19A to 1FF (102 bytes)
	.dsb 102, $00
	
; Data from 200 to 203 (4 bytes)	
__clock:	
	.db $3E $02 $CF $C9
	
_exit:	
		ld a, $00
		rst $08	; _LABEL_8_
-:	
		halt
		jr -
	
A$main$80:	
C$main.c$3$0_0$60:	
C$main.c$9$1_0$60:	
G$main$0$0:	
_main:	
		call A$asm_manager$59
		call A$_sms_manager$135
		call A$_sms_manager$169
		call A$_sms_manager$975
		ld a, l
		push af
		inc sp
		call A$_sms_manager$353
		inc sp
		call A$_sms_manager$376
		call A$_sms_manager$996
		push hl
		call A$_sms_manager$418
		ld h, $01
		ex (sp), hl
		inc sp
		call A$screen_manager$72
		inc sp
		call A$_sms_manager$148
A$main$124:	
C$main.c$23$3_0$62:	
		call A$_sms_manager$899
		ld a, l
		or a
		jr z, A$main$158
		call A$_sms_manager$919
		ld iy, Lmain.main$global_pause$1_0$60	; Lmain.main$global_pause$1_0$60 = $C000
		ld a, (iy+0)
		xor $01
		ld (Lmain.main$global_pause$1_0$60), a	; Lmain.main$global_pause$1_0$60 = $C000
		bit 0, (iy+0)
		jr z, A$main$153
		call A$_snd_manager$304
		jr A$main$158
	
A$main$153:	
C$main.c$33$5_0$65:	
		call A$_snd_manager$324
A$main$158:	
C$main.c$37$3_0$62:	
		ld hl, Lmain.main$global_pause$1_0$60	; Lmain.main$global_pause$1_0$60 = $C000
		bit 0, (hl)
		jr nz, A$main$124
		call A$_sms_manager$799
		call A$input_manager$64
		call A$screen_manager$121
		call A$_sms_manager$819
		call A$_sms_manager$839
		call A$_sms_manager$859
		call A$_snd_manager$344
		call A$_snd_manager$364
		jr A$main$124
	
_PSGStop:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		ret z
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr nz, +
		ld a, $DF
		out (Port_PSG), a
+:	
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr nz, +
		ld a, $FF
		out (Port_PSG), a
+:	
		ld hl, PSGMusicStatus	; PSGMusicStatus = $C001
		ld (hl), $00
		ret
	
; Data from 29E to 2E9 (76 bytes)	
_PSGResume:	
	.db $3A $01 $C0 $B7 $C0 $3A $0F $C0 $F6 $90 $D3 $7F $3A $10 $C0 $F6
	.db $B0 $D3 $7F $3A $16 $C0 $B7 $20 $17 $3A $13 $C0 $E6 $0F $F6 $C0
	.db $D3 $7F $3A $14 $C0 $E6 $3F $D3 $7F $3A $11 $C0 $F6 $D0 $D3 $7F
	.db $3A $17 $C0 $B7 $20 $10 $3A $15 $C0 $E6 $0F $F6 $E0 $D3 $7F $3A
	.db $12 $C0 $F6 $F0 $D3 $7F $21 $01 $C0 $36 $01 $C9
	
; Data from 2EA to 316 (45 bytes)	
_PSGPlay:	
	.db $CD $77 $02 $21 $09 $C0 $36 $01 $D1 $C1 $C5 $D5 $ED $43 $02 $C0
	.db $ED $43 $04 $C0 $ED $43 $06 $C0 $21 $08 $C0 $36 $00 $21 $0C $C0
	.db $36 $00 $21 $0A $C0 $36 $9F $21 $01 $C0 $36 $01 $C9
	
; Data from 317 to 31C (6 bytes)	
_PSGCancelLoop:	
	.db $21 $09 $C0 $36 $00 $C9
	
; Data from 31D to 32B (15 bytes)	
_PSGPlayNoRepeat:	
	.db $C1 $E1 $E5 $C5 $E5 $CD $EA $02 $F1 $21 $09 $C0 $36 $00 $C9
	
; Data from 32C to 333 (8 bytes)	
_PSGGetStatus:	
	.db $FD $21 $01 $C0 $FD $6E $00 $C9
	
_PSGSilenceChannels:	
		ld a, $9F
		out (Port_PSG), a
		ld a, $BF
		out (Port_PSG), a
		ld a, $DF
		out (Port_PSG), a
		ld a, $FF
		out (Port_PSG), a
		ret
	
_PSGRestoreVolumes:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld iy, PSGMusicVolumeAttenuation	; PSGMusicVolumeAttenuation = $C00B
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, _LABEL_3BD_
		ld a, (PSGChan0Volume)	; PSGChan0Volume = $C00F
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
		ld de, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan0Volume)	; PSGChan0Volume = $C00F
		and $0F
		add a, c
		ld e, a
		rla
		sbc a, a
++:	
		ld a, e
		or $90
		out (Port_PSG), a
		ld a, (PSGChan1Volume)	; PSGChan1Volume = $C010
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
		ld de, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan1Volume)	; PSGChan1Volume = $C010
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
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, +
		ld a, (PSGSFXChan2Volume)	; PSGSFXChan2Volume = $C018
		or $D0
		out (Port_PSG), a
		jr +++
	
+:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, +++
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
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
		ld de, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
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
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr z, +
		ld a, (PSGSFXChan3Volume)	; PSGSFXChan3Volume = $C019
		or $F0
		out (Port_PSG), a
		jr +++
	
+:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, +++
		ld a, (PSGChan3Volume)	; PSGChan3Volume = $C012
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
		ld bc, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan3Volume)	; PSGChan3Volume = $C012
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
_PSGSetMusicVolumeAttenuation:	
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
	
_PSGSFXStop:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		jp z, _LABEL_5F8_
		ld iy, PSGMusicVolumeAttenuation	; PSGMusicVolumeAttenuation = $C00B
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_5A7_
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, _LABEL_59E_
		ld a, (PSGChan2LowTone)	; PSGChan2LowTone = $C013
		and $0F
		or $C0
		out (Port_PSG), a
		ld a, (PSGChan2HighTone)	; PSGChan2HighTone = $C014
		and $3F
		out (Port_PSG), a
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
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
		ld de, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
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
		ld hl, PSGChannel2SFX	; PSGChannel2SFX = $C016
		ld (hl), $00
_LABEL_5A7_:	
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr z, _LABEL_5F3_
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, +++
		ld a, (PSGChan3LowTone)	; PSGChan3LowTone = $C015
		and $0F
		or $E0
		out (Port_PSG), a
		ld a, (PSGChan3Volume)	; PSGChan3Volume = $C012
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
		ld bc, _SMS_crt0_RST18 - 2	; _SMS_crt0_RST18 - 2 = $000F
		jr ++
	
+:	
		ld a, (PSGChan3Volume)	; PSGChan3Volume = $C012
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
		ld hl, PSGChannel3SFX	; PSGChannel3SFX = $C017
		ld (hl), $00
_LABEL_5F3_:	
		ld hl, PSGSFXStatus	; PSGSFXStatus = $C01A
		ld (hl), $00
_LABEL_5F8_:	
		ld sp, ix
		pop ix
		ret
	
; Data from 5FD to 649 (77 bytes)	
_PSGSFXPlay:	
	.db $CD $33 $05 $21 $22 $C0 $36 $00 $D1 $C1 $C5 $D5 $ED $43 $1B $C0
	.db $ED $43 $1D $C0 $ED $43 $1F $C0 $21 $21 $C0 $36 $00 $21 $23 $C0
	.db $36 $00 $21 $04 $00 $39 $4E $CB $41 $28 $05 $11 $01 $00 $18 $03
	.db $11 $00 $00 $21 $16 $C0 $73 $CB $49 $28 $05 $01 $01 $00 $18 $03
	.db $01 $00 $00 $21 $17 $C0 $71 $21 $1A $C0 $36 $01 $C9
	
; Data from 64A to 64F (6 bytes)	
_PSGSFXCancelLoop:	
	.db $21 $22 $C0 $36 $00 $C9
	
; Data from 650 to 657 (8 bytes)	
_PSGSFXGetStatus:	
	.db $FD $21 $1A $C0 $FD $6E $00 $C9
	
; Data from 658 to 678 (33 bytes)	
_PSGSFXPlayLoop:	
	.db $FD $21 $04 $00 $FD $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD
	.db $6E $00 $FD $66 $01 $E5 $CD $FD $05 $F1 $33 $21 $22 $C0 $36 $01
	.db $C9
	
_PSGFrame:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		ret z
		ld a, (PSGMusicSkipFrames)	; PSGMusicSkipFrames = $C008
		or a
		jp nz, _LABEL_70D_
		ld hl, (PSGMusicPointer)	; PSGMusicPointer = $C004
_LABEL_688_:	
		ld b, (hl)
		inc hl
		ld a, (PSGMusicSubstringLen)	; PSGMusicSubstringLen = $C00C
		or a
		jr z, +
		dec a
		ld (PSGMusicSubstringLen), a	; PSGMusicSubstringLen = $C00C
		jr nz, +
		ld hl, (PSGMusicSubstringRetAddr)	; PSGMusicSubstringRetAddr = $C00D
+:	
		ld a, b
		cp $80
		jr c, _LABEL_712_
		ld (PSGMusicLastLatch), a	; PSGMusicLastLatch = $C00A
		bit 4, a
		jr nz, ++
		bit 6, a
		jp z, _LABEL_739_
		bit 5, a
		jr z, +
		ld (PSGChan3LowTone), a	; PSGChan3LowTone = $C015
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jp nz, _LABEL_688_
		ld a, (PSGChan3LowTone)	; PSGChan3LowTone = $C015
		and $03
		cp $03
		jr nz, _LABEL_738_
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		jr z, _LABEL_738_
		ld (PSGChannel3SFX), a	; PSGChannel3SFX = $C017
		ld a, $FF
		out (Port_PSG), a
		jp _LABEL_688_
	
+:	
		ld (PSGChan2LowTone), a	; PSGChan2LowTone = $C013
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_738_
		jp _LABEL_688_
	
++:	
		bit 6, a
		jr nz, ++
		bit 5, a
		jr z, +
		ld (PSGChan1Volume), a	; PSGChan1Volume = $C010
		jp _LABEL_73F_
	
+:	
		ld (PSGChan0Volume), a	; PSGChan0Volume = $C00F
		jp _LABEL_73F_
	
++:	
		bit 5, a
		jr z, +
		ld (PSGChan3Volume), a	; PSGChan3Volume = $C012
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr z, _LABEL_73E_
		jp _LABEL_688_
	
+:	
		ld (PSGChan2Volume), a	; PSGChan2Volume = $C011
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_73E_
		jp _LABEL_688_
	
_LABEL_70D_:	
		dec a
		ld (PSGMusicSkipFrames), a	; PSGMusicSkipFrames = $C008
		ret
	
_LABEL_712_:	
		cp $40
		jr c, +
		ld a, (PSGMusicLastLatch)	; PSGMusicLastLatch = $C00A
		jp +++
	
+:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (PSGMusicSkipFrames), a	; PSGMusicSkipFrames = $C008
+:	
		ld (PSGMusicPointer), hl	; PSGMusicPointer = $C004
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
		ld a, (PSGMusicVolumeAttenuation)	; PSGMusicVolumeAttenuation = $C00B
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
		ld (PSGMusicLoopPoint), hl	; PSGMusicLoopPoint = $C006
		jp _LABEL_688_
	
+++++:	
		ld a, (PSGLoopFlag)	; PSGLoopFlag = $C009
		or a
		jp z, _PSGStop
		ld hl, (PSGMusicLoopPoint)	; PSGMusicLoopPoint = $C006
		jp _LABEL_688_
	
_LABEL_771_:	
		sub $04
		ld (PSGMusicSubstringLen), a	; PSGMusicSubstringLen = $C00C
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (PSGMusicSubstringRetAddr), hl	; PSGMusicSubstringRetAddr = $C00D
		ld hl, (PSGMusicStart)	; PSGMusicStart = $C002
		add hl, bc
		jp _LABEL_688_
	
++++++:	
		ld a, b
		ld (PSGChan2HighTone), a	; PSGChan2HighTone = $C014
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_738_
		jp _LABEL_688_
	
	; Data from 791 to 791 (1 bytes)
	.db $C9
	
_PSGSFXFrame:	
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		ret z
		ld a, (PSGSFXSkipFrames)	; PSGSFXSkipFrames = $C021
		or a
		jp nz, +++
		ld hl, (PSGSFXPointer)	; PSGSFXPointer = $C01D
_LABEL_7A1_:	
		ld b, (hl)
		inc hl
		ld a, (PSGSFXSubstringLen)	; PSGSFXSubstringLen = $C023
		or a
		jr z, +
		dec a
		ld (PSGSFXSubstringLen), a	; PSGSFXSubstringLen = $C023
		jr nz, +
		ld hl, (PSGSFXSubstringRetAddr)	; PSGSFXSubstringRetAddr = $C024
+:	
		ld a, b
		cp $40
		jp c, ++++
		bit 4, a
		jr z, ++
		bit 5, a
		jr nz, +
		ld (PSGSFXChan2Volume), a	; PSGSFXChan2Volume = $C018
		jr ++
	
+:	
		ld (PSGSFXChan3Volume), a	; PSGSFXChan3Volume = $C019
++:	
		out (Port_PSG), a
		jp _LABEL_7A1_
	
+++:	
		dec a
		ld (PSGSFXSkipFrames), a	; PSGSFXSkipFrames = $C021
		ret
	
++++:	
		cp $38
		jr z, +
		jr c, ++
		and $07
		ld (PSGSFXSkipFrames), a	; PSGSFXSkipFrames = $C021
+:	
		ld (PSGSFXPointer), hl	; PSGSFXPointer = $C01D
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
		ld (PSGSFXLoopPoint), hl	; PSGSFXLoopPoint = $C01F
		jp _LABEL_7A1_
	
++:	
		ld a, (PSGSFXLoopFlag)	; PSGSFXLoopFlag = $C022
		or a
		jp z, _PSGSFXStop
		ld hl, (PSGSFXLoopPoint)	; PSGSFXLoopPoint = $C01F
		ld (PSGSFXPointer), hl	; PSGSFXPointer = $C01D
		jp _LABEL_7A1_
	
+++:	
		sub $04
		ld (PSGSFXSubstringLen), a	; PSGSFXSubstringLen = $C023
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (PSGSFXSubstringRetAddr), hl	; PSGSFXSubstringRetAddr = $C024
		ld hl, (PSGSFXStart)	; PSGSFXStart = $C01B
		add hl, bc
		jp _LABEL_7A1_
	
	; Data from 817 to 817 (1 bytes)
	.db $C9
	
A$_sms_manager$135:	
C$_sms_manager.c$11$0_0$74:	
C$_sms_manager.c$13$1_0$74:	
C$_sms_manager.c$14$1_0$74:	
G$devkit_SMS_init$0$0:	
XG$devkit_SMS_init$0$0:	
_devkit_SMS_init:	
		jp _SMS_init
	
A$_sms_manager$148:	
C$_sms_manager.c$15$1_0$75:	
C$_sms_manager.c$17$1_0$75:	
G$devkit_SMS_displayOn$0$0:	
_devkit_SMS_displayOn:	
		ld hl, $0140
		jp _SMS_VDPturnOnFeature
	
A$_sms_manager$169:	
C$_sms_manager.c$19$1_0$76:	
C$_sms_manager.c$21$1_0$76:	
G$devkit_SMS_displayOff$0$0:	
_devkit_SMS_displayOff:	
		ld hl, $0140
		jp _SMS_VDPturnOffFeature
	
; Data from 827 to 82A (4 bytes)	
A$_sms_manager$190:	
C$_sms_manager.c$23$1_0$78:	
C$_sms_manager.c$25$1_0$78:	
G$devkit_SMS_mapROMBank$0$0:	
_devkit_SMS_mapROMBank:	
	.db $FD $21 $02 $00
	
; Data from 82B to 82C (2 bytes)	
A$_sms_manager$191:	
	.db $FD $39
	
; Data from 82D to 82F (3 bytes)	
A$_sms_manager$192:	
	.db $FD $7E $00
	
; Data from 830 to 832 (3 bytes)	
A$_sms_manager$193:	
	.db $32 $FF $FF
	
; Data from 833 to 833 (1 bytes)	
A$_sms_manager$201:	
C$_sms_manager.c$26$1_0$78:	
XG$devkit_SMS_mapROMBank$0$0:	
	.db $C9
	
; Data from 834 to 837 (4 bytes)	
A$_sms_manager$214:	
C$_sms_manager.c$28$1_0$80:	
C$_sms_manager.c$30$1_0$80:	
G$devkit_SMS_setBGScrollX$0$0:	
_devkit_SMS_setBGScrollX:	
	.db $FD $21 $02 $00
	
; Data from 838 to 839 (2 bytes)	
A$_sms_manager$215:	
	.db $FD $39
	
; Data from 83A to 83C (3 bytes)	
A$_sms_manager$216:	
	.db $FD $6E $00
	
; Data from 83D to 83F (3 bytes)	
A$_sms_manager$224:	
C$_sms_manager.c$31$1_0$80:	
XG$devkit_SMS_setBGScrollX$0$0:	
	.db $C3 $EB $11
	
; Data from 840 to 843 (4 bytes)	
A$_sms_manager$237:	
C$_sms_manager.c$32$1_0$82:	
C$_sms_manager.c$34$1_0$82:	
G$devkit_SMS_setBGScrollY$0$0:	
_devkit_SMS_setBGScrollY:	
	.db $FD $21 $02 $00
	
; Data from 844 to 845 (2 bytes)	
A$_sms_manager$238:	
	.db $FD $39
	
; Data from 846 to 848 (3 bytes)	
A$_sms_manager$239:	
	.db $FD $6E $00
	
; Data from 849 to 84B (3 bytes)	
A$_sms_manager$247:	
C$_sms_manager.c$35$1_0$82:	
XG$devkit_SMS_setBGScrollY$0$0:	
	.db $C3 $F5 $11
	
; Data from 84C to 84E (3 bytes)	
A$_sms_manager$260:	
C$_sms_manager.c$37$1_0$83:	
C$_sms_manager.c$39$1_0$83:	
G$devkit_SMS_enableSRAM$0$0:	
_devkit_SMS_enableSRAM:	
	.db $21 $FC $FF
	
; Data from 84F to 850 (2 bytes)	
A$_sms_manager$261:	
	.db $36 $08
	
; Data from 851 to 851 (1 bytes)	
A$_sms_manager$269:	
C$_sms_manager.c$40$1_0$83:	
XG$devkit_SMS_enableSRAM$0$0:	
	.db $C9
	
; Data from 852 to 855 (4 bytes)	
A$_sms_manager$282:	
C$_sms_manager.c$41$1_0$85:	
C$_sms_manager.c$43$1_0$85:	
G$devkit_SMS_enableSRAMBank$0$0:	
_devkit_SMS_enableSRAMBank:	
	.db $FD $21 $02 $00
	
; Data from 856 to 857 (2 bytes)	
A$_sms_manager$283:	
	.db $FD $39
	
; Data from 858 to 85A (3 bytes)	
A$_sms_manager$284:	
	.db $FD $7E $00
	
; Data from 85B to 85B (1 bytes)	
A$_sms_manager$285:	
	.db $87
	
; Data from 85C to 85C (1 bytes)	
A$_sms_manager$286:	
	.db $87
	
; Data from 85D to 85E (2 bytes)	
A$_sms_manager$287:	
	.db $CB $DF
	
; Data from 85F to 860 (2 bytes)	
A$_sms_manager$288:	
	.db $E6 $0C
	
; Data from 861 to 863 (3 bytes)	
A$_sms_manager$289:	
	.db $32 $FC $FF
	
; Data from 864 to 864 (1 bytes)	
A$_sms_manager$297:	
C$_sms_manager.c$44$1_0$85:	
XG$devkit_SMS_enableSRAMBank$0$0:	
	.db $C9
	
; Data from 865 to 867 (3 bytes)	
A$_sms_manager$310:	
C$_sms_manager.c$45$1_0$86:	
C$_sms_manager.c$47$1_0$86:	
G$devkit_SMS_disableSRAM$0$0:	
_devkit_SMS_disableSRAM:	
	.db $21 $FC $FF
	
; Data from 868 to 869 (2 bytes)	
A$_sms_manager$311:	
	.db $36 $00
	
; Data from 86A to 86A (1 bytes)	
A$_sms_manager$319:	
C$_sms_manager.c$48$1_0$86:	
XG$devkit_SMS_disableSRAM$0$0:	
	.db $C9
	
; Data from 86B to 86D (3 bytes)	
A$_sms_manager$332:	
C$_sms_manager.c$49$1_0$87:	
C$_sms_manager.c$51$1_0$87:	
G$devkit_SMS_SRAM$0$0:	
_devkit_SMS_SRAM:	
	.db $21 $00 $80
	
; Data from 86E to 86E (1 bytes)	
A$_sms_manager$340:	
C$_sms_manager.c$52$1_0$87:	
XG$devkit_SMS_SRAM$0$0:	
	.db $C9
	
A$_sms_manager$353:	
C$_sms_manager.c$55$1_0$89:	
C$_sms_manager.c$57$1_0$89:	
G$devkit_SMS_setSpriteMode$0$0:	
_devkit_SMS_setSpriteMode:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _SMS_setSpriteMode
	
A$_sms_manager$376:	
C$_sms_manager.c$59$1_0$90:	
C$_sms_manager.c$61$1_0$90:	
G$devkit_SMS_useFirstHalfTilesfo:	
_devkit_SMS_useFirstHalfTilesfor:	
		ld l, $00
		jp _SMS_useFirstHalfTilesforSprites
	
; Data from 880 to 881 (2 bytes)	
A$_sms_manager$397:	
C$_sms_manager.c$63$1_0$91:	
C$_sms_manager.c$65$1_0$91:	
G$devkit_SMS_useFirstHalfTilesfo:	
_devkit_SMS_useFirstHalfTilesfor:	
	.db $2E $01
	
; Data from 882 to 884 (3 bytes)	
A$_sms_manager$405:	
C$_sms_manager.c$66$1_0$91:	
XG$devkit_SMS_useFirstHalfTilesf:	
	.db $C3 $09 $12
	
A$_sms_manager$418:	
C$_sms_manager.c$67$1_0$93:	
C$_sms_manager.c$69$1_0$93:	
G$devkit_SMS_VDPturnOnFeature$0$:	
_devkit_SMS_VDPturnOnFeature:	
		pop bc
		pop hl
		push hl
		push bc
		jp _SMS_VDPturnOnFeature
	
; Data from 88C to 88F (4 bytes)	
A$_sms_manager$442:	
C$_sms_manager.c$72$1_0$95:	
C$_sms_manager.c$74$1_0$95:	
G$devkit_SMS_loadPSGaidencompres:	
_devkit_SMS_loadPSGaidencompress:	
	.db $FD $21 $04 $00
	
; Data from 890 to 891 (2 bytes)	
A$_sms_manager$443:	
	.db $FD $39
	
; Data from 892 to 894 (3 bytes)	
A$_sms_manager$444:	
	.db $FD $6E $00
	
; Data from 895 to 897 (3 bytes)	
A$_sms_manager$445:	
	.db $FD $66 $01
	
; Data from 898 to 898 (1 bytes)	
A$_sms_manager$446:	
	.db $E5
	
; Data from 899 to 89A (2 bytes)	
A$_sms_manager$447:	
	.db $FD $2B
	
; Data from 89B to 89C (2 bytes)	
A$_sms_manager$448:	
	.db $FD $2B
	
; Data from 89D to 89F (3 bytes)	
A$_sms_manager$449:	
	.db $FD $6E $00
	
; Data from 8A0 to 8A2 (3 bytes)	
A$_sms_manager$450:	
	.db $FD $66 $01
	
; Data from 8A3 to 8A3 (1 bytes)	
A$_sms_manager$451:	
	.db $E5
	
; Data from 8A4 to 8A6 (3 bytes)	
A$_sms_manager$452:	
	.db $CD $0F $16
	
; Data from 8A7 to 8A7 (1 bytes)	
A$_sms_manager$453:	
	.db $F1
	
; Data from 8A8 to 8A8 (1 bytes)	
A$_sms_manager$454:	
	.db $F1
	
; Data from 8A9 to 8A9 (1 bytes)	
A$_sms_manager$462:	
C$_sms_manager.c$75$1_0$95:	
XG$devkit_SMS_loadPSGaidencompre:	
	.db $C9
	
; Data from 8AA to 8AB (2 bytes)	
A$_sms_manager$475:	
C$_sms_manager.c$76$1_0$97:	
C$_sms_manager.c$78$1_0$97:	
G$devkit_SMS_loadSTMcompressedTi:	
_devkit_SMS_loadSTMcompressedTil:	
	.db $3E $20
	
; Data from 8AC to 8AC (1 bytes)	
A$_sms_manager$476:	
	.db $F5
	
; Data from 8AD to 8AD (1 bytes)	
A$_sms_manager$477:	
	.db $33
	
; Data from 8AE to 8B1 (4 bytes)	
A$_sms_manager$478:	
	.db $FD $21 $05 $00
	
; Data from 8B2 to 8B3 (2 bytes)	
A$_sms_manager$479:	
	.db $FD $39
	
; Data from 8B4 to 8B6 (3 bytes)	
A$_sms_manager$480:	
	.db $FD $6E $00
	
; Data from 8B7 to 8B9 (3 bytes)	
A$_sms_manager$481:	
	.db $FD $66 $01
	
; Data from 8BA to 8BA (1 bytes)	
A$_sms_manager$482:	
	.db $E5
	
; Data from 8BB to 8BC (2 bytes)	
A$_sms_manager$483:	
	.db $FD $2B
	
; Data from 8BD to 8BF (3 bytes)	
A$_sms_manager$484:	
	.db $FD $7E $00
	
; Data from 8C0 to 8C0 (1 bytes)	
A$_sms_manager$485:	
	.db $F5
	
; Data from 8C1 to 8C1 (1 bytes)	
A$_sms_manager$486:	
	.db $33
	
; Data from 8C2 to 8C3 (2 bytes)	
A$_sms_manager$487:	
	.db $FD $2B
	
; Data from 8C4 to 8C6 (3 bytes)	
A$_sms_manager$488:	
	.db $FD $7E $00
	
; Data from 8C7 to 8C7 (1 bytes)	
A$_sms_manager$489:	
	.db $F5
	
; Data from 8C8 to 8C8 (1 bytes)	
A$_sms_manager$490:	
	.db $33
	
; Data from 8C9 to 8CB (3 bytes)	
A$_sms_manager$491:	
	.db $CD $2D $14
	
; Data from 8CC to 8CC (1 bytes)	
A$_sms_manager$492:	
	.db $F1
	
; Data from 8CD to 8CD (1 bytes)	
A$_sms_manager$493:	
	.db $F1
	
; Data from 8CE to 8CE (1 bytes)	
A$_sms_manager$494:	
	.db $33
	
; Data from 8CF to 8CF (1 bytes)	
A$_sms_manager$502:	
C$_sms_manager.c$79$1_0$97:	
XG$devkit_SMS_loadSTMcompressedT:	
	.db $C9
	
; Data from 8D0 to 8D0 (1 bytes)	
A$_sms_manager$515:	
C$_sms_manager.c$81$1_0$99:	
C$_sms_manager.c$83$1_0$99:	
G$devkit_SMS_loadBGPalette$0$0:	
_devkit_SMS_loadBGPalette:	
	.db $C1
	
; Data from 8D1 to 8D1 (1 bytes)	
A$_sms_manager$516:	
	.db $E1
	
; Data from 8D2 to 8D2 (1 bytes)	
A$_sms_manager$517:	
	.db $E5
	
; Data from 8D3 to 8D3 (1 bytes)	
A$_sms_manager$518:	
	.db $C5
	
; Data from 8D4 to 8D6 (3 bytes)	
A$_sms_manager$526:	
C$_sms_manager.c$84$1_0$99:	
XG$devkit_SMS_loadBGPalette$0$0:	
	.db $C3 $8A $12
	
; Data from 8D7 to 8D7 (1 bytes)	
A$_sms_manager$539:	
C$_sms_manager.c$85$1_0$101:	
C$_sms_manager.c$87$1_0$101:	
G$devkit_SMS_loadSpritePalette$0:	
_devkit_SMS_loadSpritePalette:	
	.db $C1
	
; Data from 8D8 to 8D8 (1 bytes)	
A$_sms_manager$540:	
	.db $E1
	
; Data from 8D9 to 8D9 (1 bytes)	
A$_sms_manager$541:	
	.db $E5
	
; Data from 8DA to 8DA (1 bytes)	
A$_sms_manager$542:	
	.db $C5
	
; Data from 8DB to 8DD (3 bytes)	
A$_sms_manager$550:	
C$_sms_manager.c$88$1_0$101:	
XG$devkit_SMS_loadSpritePalette$:	
	.db $C3 $9E $12
	
; Data from 8DE to 8E1 (4 bytes)	
A$_sms_manager$563:	
C$_sms_manager.c$89$1_0$103:	
C$_sms_manager.c$91$1_0$103:	
G$devkit_SMS_setBGPaletteColor$0:	
_devkit_SMS_setBGPaletteColor:	
	.db $FD $21 $04 $00
	
; Data from 8E2 to 8E3 (2 bytes)	
A$_sms_manager$564:	
	.db $FD $39
	
; Data from 8E4 to 8E6 (3 bytes)	
A$_sms_manager$565:	
	.db $FD $7E $00
	
; Data from 8E7 to 8E7 (1 bytes)	
A$_sms_manager$566:	
	.db $87
	
; Data from 8E8 to 8E8 (1 bytes)	
A$_sms_manager$567:	
	.db $87
	
; Data from 8E9 to 8EA (2 bytes)	
A$_sms_manager$568:	
	.db $FD $2B
	
; Data from 8EB to 8ED (3 bytes)	
A$_sms_manager$569:	
	.db $FD $B6 $00
	
; Data from 8EE to 8EE (1 bytes)	
A$_sms_manager$570:	
	.db $4F
	
; Data from 8EF to 8F0 (2 bytes)	
A$_sms_manager$571:	
	.db $FD $23
	
; Data from 8F1 to 8F2 (2 bytes)	
A$_sms_manager$572:	
	.db $FD $23
	
; Data from 8F3 to 8F5 (3 bytes)	
A$_sms_manager$573:	
	.db $FD $7E $00
	
; Data from 8F6 to 8F6 (1 bytes)	
A$_sms_manager$574:	
	.db $87
	
; Data from 8F7 to 8F7 (1 bytes)	
A$_sms_manager$575:	
	.db $87
	
; Data from 8F8 to 8F8 (1 bytes)	
A$_sms_manager$576:	
	.db $87
	
; Data from 8F9 to 8F9 (1 bytes)	
A$_sms_manager$577:	
	.db $87
	
; Data from 8FA to 8FA (1 bytes)	
A$_sms_manager$578:	
	.db $B1
	
; Data from 8FB to 8FB (1 bytes)	
A$_sms_manager$582:	
C$_sms_manager.c$92$1_0$103:	
	.db $F5
	
; Data from 8FC to 8FC (1 bytes)	
A$_sms_manager$583:	
	.db $33
	
; Data from 8FD to 8FE (2 bytes)	
A$_sms_manager$584:	
	.db $FD $2B
	
; Data from 8FF to 900 (2 bytes)	
A$_sms_manager$585:	
	.db $FD $2B
	
; Data from 901 to 902 (2 bytes)	
A$_sms_manager$586:	
	.db $FD $2B
	
; Data from 903 to 905 (3 bytes)	
A$_sms_manager$587:	
	.db $FD $7E $00
	
; Data from 906 to 906 (1 bytes)	
A$_sms_manager$588:	
	.db $F5
	
; Data from 907 to 907 (1 bytes)	
A$_sms_manager$589:	
	.db $33
	
; Data from 908 to 90A (3 bytes)	
A$_sms_manager$590:	
	.db $CD $62 $12
	
; Data from 90B to 90B (1 bytes)	
A$_sms_manager$591:	
	.db $F1
	
; Data from 90C to 90C (1 bytes)	
A$_sms_manager$599:	
C$_sms_manager.c$93$1_0$103:	
XG$devkit_SMS_setBGPaletteColor$:	
	.db $C9
	
; Data from 90D to 910 (4 bytes)	
A$_sms_manager$612:	
C$_sms_manager.c$94$1_0$105:	
C$_sms_manager.c$96$1_0$105:	
G$devkit_SMS_setSpritePaletteCol:	
_devkit_SMS_setSpritePaletteColo:	
	.db $FD $21 $04 $00
	
; Data from 911 to 912 (2 bytes)	
A$_sms_manager$613:	
	.db $FD $39
	
; Data from 913 to 915 (3 bytes)	
A$_sms_manager$614:	
	.db $FD $7E $00
	
; Data from 916 to 916 (1 bytes)	
A$_sms_manager$615:	
	.db $87
	
; Data from 917 to 917 (1 bytes)	
A$_sms_manager$616:	
	.db $87
	
; Data from 918 to 919 (2 bytes)	
A$_sms_manager$617:	
	.db $FD $2B
	
; Data from 91A to 91C (3 bytes)	
A$_sms_manager$618:	
	.db $FD $B6 $00
	
; Data from 91D to 91D (1 bytes)	
A$_sms_manager$619:	
	.db $4F
	
; Data from 91E to 91F (2 bytes)	
A$_sms_manager$620:	
	.db $FD $23
	
; Data from 920 to 921 (2 bytes)	
A$_sms_manager$621:	
	.db $FD $23
	
; Data from 922 to 924 (3 bytes)	
A$_sms_manager$622:	
	.db $FD $7E $00
	
; Data from 925 to 925 (1 bytes)	
A$_sms_manager$623:	
	.db $87
	
; Data from 926 to 926 (1 bytes)	
A$_sms_manager$624:	
	.db $87
	
; Data from 927 to 927 (1 bytes)	
A$_sms_manager$625:	
	.db $87
	
; Data from 928 to 928 (1 bytes)	
A$_sms_manager$626:	
	.db $87
	
; Data from 929 to 929 (1 bytes)	
A$_sms_manager$627:	
	.db $B1
	
; Data from 92A to 92A (1 bytes)	
A$_sms_manager$631:	
C$_sms_manager.c$97$1_0$105:	
	.db $F5
	
; Data from 92B to 92B (1 bytes)	
A$_sms_manager$632:	
	.db $33
	
; Data from 92C to 92D (2 bytes)	
A$_sms_manager$633:	
	.db $FD $2B
	
; Data from 92E to 92F (2 bytes)	
A$_sms_manager$634:	
	.db $FD $2B
	
; Data from 930 to 931 (2 bytes)	
A$_sms_manager$635:	
	.db $FD $2B
	
; Data from 932 to 934 (3 bytes)	
A$_sms_manager$636:	
	.db $FD $7E $00
	
; Data from 935 to 935 (1 bytes)	
A$_sms_manager$637:	
	.db $F5
	
; Data from 936 to 936 (1 bytes)	
A$_sms_manager$638:	
	.db $33
	
; Data from 937 to 939 (3 bytes)	
A$_sms_manager$639:	
	.db $CD $76 $12
	
; Data from 93A to 93A (1 bytes)	
A$_sms_manager$640:	
	.db $F1
	
; Data from 93B to 93B (1 bytes)	
A$_sms_manager$648:	
C$_sms_manager.c$98$1_0$105:	
XG$devkit_SMS_setSpritePaletteCo:	
	.db $C9
	
; Data from 93C to 93D (2 bytes)	
A$_sms_manager$658:	
C$_sms_manager.c$100$1_0$107:	
G$devkit_SMS_setNextTileatXY$0$0:	
_devkit_SMS_setNextTileatXY:	
	.db $DD $E5
	
; Data from 93E to 941 (4 bytes)	
A$_sms_manager$659:	
	.db $DD $21 $00 $00
	
; Data from 942 to 943 (2 bytes)	
A$_sms_manager$660:	
	.db $DD $39
	
; Data from 944 to 946 (3 bytes)	
A$_sms_manager$664:	
C$_sms_manager.c$102$1_0$107:	
	.db $DD $6E $05
	
; Data from 947 to 948 (2 bytes)	
A$_sms_manager$665:	
	.db $26 $00
	
; Data from 949 to 949 (1 bytes)	
A$_sms_manager$666:	
	.db $29
	
; Data from 94A to 94A (1 bytes)	
A$_sms_manager$667:	
	.db $29
	
; Data from 94B to 94B (1 bytes)	
A$_sms_manager$668:	
	.db $29
	
; Data from 94C to 94C (1 bytes)	
A$_sms_manager$669:	
	.db $29
	
; Data from 94D to 94D (1 bytes)	
A$_sms_manager$670:	
	.db $29
	
; Data from 94E to 94E (1 bytes)	
A$_sms_manager$671:	
	.db $29
	
; Data from 94F to 94F (1 bytes)	
A$_sms_manager$672:	
	.db $4D
	
; Data from 950 to 950 (1 bytes)	
A$_sms_manager$673:	
	.db $7C
	
; Data from 951 to 952 (2 bytes)	
A$_sms_manager$674:	
	.db $F6 $78
	
; Data from 953 to 953 (1 bytes)	
A$_sms_manager$675:	
	.db $47
	
; Data from 954 to 956 (3 bytes)	
A$_sms_manager$676:	
	.db $DD $6E $04
	
; Data from 957 to 958 (2 bytes)	
A$_sms_manager$677:	
	.db $26 $00
	
; Data from 959 to 959 (1 bytes)	
A$_sms_manager$678:	
	.db $29
	
; Data from 95A to 95A (1 bytes)	
A$_sms_manager$679:	
	.db $7D
	
; Data from 95B to 95B (1 bytes)	
A$_sms_manager$680:	
	.db $B1
	
; Data from 95C to 95C (1 bytes)	
A$_sms_manager$681:	
	.db $6F
	
; Data from 95D to 95D (1 bytes)	
A$_sms_manager$682:	
	.db $7C
	
; Data from 95E to 95E (1 bytes)	
A$_sms_manager$683:	
	.db $B0
	
; Data from 95F to 95F (1 bytes)	
A$_sms_manager$684:	
	.db $67
	
; Data from 960 to 961 (2 bytes)	
A$_sms_manager$692:	
C$_sms_manager.c$103$1_0$107:	
XG$devkit_SMS_setNextTileatXY$0$:	
	.db $DD $E1
	
; Data from 962 to 964 (3 bytes)	
A$_sms_manager$693:	
	.db $C3 $06 $00
	
; Data from 965 to 965 (1 bytes)	
A$_sms_manager$706:	
C$_sms_manager.c$104$1_0$109:	
C$_sms_manager.c$106$1_0$109:	
G$devkit_SMS_setTile$0$0:	
_devkit_SMS_setTile:	
	.db $C1
	
; Data from 966 to 966 (1 bytes)	
A$_sms_manager$707:	
	.db $E1
	
; Data from 967 to 967 (1 bytes)	
A$_sms_manager$708:	
	.db $E5
	
; Data from 968 to 968 (1 bytes)	
A$_sms_manager$709:	
	.db $C5
	
; Data from 969 to 96B (3 bytes)	
A$_sms_manager$717:	
C$_sms_manager.c$107$1_0$109:	
XG$devkit_SMS_setTile$0$0:	
	.db $C3 $11 $00
	
; Data from 96C to 96F (4 bytes)	
A$_sms_manager$730:	
C$_sms_manager.c$108$1_0$111:	
C$_sms_manager.c$110$1_0$111:	
G$devkit_SMS_setTilePriority$0$0:	
_devkit_SMS_setTilePriority:	
	.db $FD $21 $02 $00
	
; Data from 970 to 971 (2 bytes)	
A$_sms_manager$731:	
	.db $FD $39
	
; Data from 972 to 974 (3 bytes)	
A$_sms_manager$732:	
	.db $FD $6E $00
	
; Data from 975 to 975 (1 bytes)	
A$_sms_manager$733:	
	.db $AF
	
; Data from 976 to 977 (2 bytes)	
A$_sms_manager$734:	
	.db $F6 $18
	
; Data from 978 to 978 (1 bytes)	
A$_sms_manager$735:	
	.db $67
	
; Data from 979 to 97B (3 bytes)	
A$_sms_manager$743:	
C$_sms_manager.c$111$1_0$111:	
XG$devkit_SMS_setTilePriority$0$:	
	.db $C3 $11 $00
	
; Data from 97C to 97F (4 bytes)	
A$_sms_manager$756:	
C$_sms_manager.c$113$1_0$113:	
C$_sms_manager.c$115$1_0$113:	
G$devkit_SMS_addSprite$0$0:	
_devkit_SMS_addSprite:	
	.db $FD $21 $04 $00
	
; Data from 980 to 981 (2 bytes)	
A$_sms_manager$757:	
	.db $FD $39
	
; Data from 982 to 984 (3 bytes)	
A$_sms_manager$758:	
	.db $FD $7E $00
	
; Data from 985 to 985 (1 bytes)	
A$_sms_manager$759:	
	.db $F5
	
; Data from 986 to 986 (1 bytes)	
A$_sms_manager$760:	
	.db $33
	
; Data from 987 to 988 (2 bytes)	
A$_sms_manager$761:	
	.db $FD $2B
	
; Data from 989 to 98B (3 bytes)	
A$_sms_manager$762:	
	.db $FD $7E $00
	
; Data from 98C to 98C (1 bytes)	
A$_sms_manager$763:	
	.db $F5
	
; Data from 98D to 98D (1 bytes)	
A$_sms_manager$764:	
	.db $33
	
; Data from 98E to 98F (2 bytes)	
A$_sms_manager$765:	
	.db $FD $2B
	
; Data from 990 to 992 (3 bytes)	
A$_sms_manager$766:	
	.db $FD $7E $00
	
; Data from 993 to 993 (1 bytes)	
A$_sms_manager$767:	
	.db $F5
	
; Data from 994 to 994 (1 bytes)	
A$_sms_manager$768:	
	.db $33
	
; Data from 995 to 997 (3 bytes)	
A$_sms_manager$769:	
	.db $CD $BC $12
	
; Data from 998 to 998 (1 bytes)	
A$_sms_manager$770:	
	.db $F1
	
; Data from 999 to 999 (1 bytes)	
A$_sms_manager$771:	
	.db $33
	
; Data from 99A to 99A (1 bytes)	
A$_sms_manager$779:	
C$_sms_manager.c$116$1_0$113:	
XG$devkit_SMS_addSprite$0$0:	
	.db $C9
	
A$_sms_manager$799:	
C$_sms_manager.c$117$1_0$114:	
C$_sms_manager.c$119$1_0$114:	
C$_sms_manager.c$120$1_0$114:	
G$devkit_SMS_initSprites$0$0:	
XG$devkit_SMS_initSprites$0$0:	
_devkit_SMS_initSprites:	
		jp _SMS_initSprites
	
A$_sms_manager$819:	
C$_sms_manager.c$121$1_0$115:	
C$_sms_manager.c$123$1_0$115:	
C$_sms_manager.c$124$1_0$115:	
G$devkit_SMS_finalizeSprites$0$0:	
XG$devkit_SMS_finalizeSprites$0$:	
_devkit_SMS_finalizeSprites:	
		jp _SMS_finalizeSprites
	
A$_sms_manager$839:	
C$_sms_manager.c$125$1_0$116:	
C$_sms_manager.c$127$1_0$116:	
C$_sms_manager.c$128$1_0$116:	
G$devkit_SMS_waitForVBlank$0$0:	
XG$devkit_SMS_waitForVBlank$0$0:	
_devkit_SMS_waitForVBlank:	
		jp _SMS_waitForVBlank
	
A$_sms_manager$859:	
C$_sms_manager.c$129$1_0$117:	
C$_sms_manager.c$131$1_0$117:	
C$_sms_manager.c$132$1_0$117:	
G$devkit_SMS_copySpritestoSAT$0$:	
XG$devkit_SMS_copySpritestoSAT$0:	
_devkit_SMS_copySpritestoSAT:	
		jp _UNSAFE_SMS_copySpritestoSAT
	
; Data from 9A7 to 9A9 (3 bytes)	
A$_sms_manager$879:	
C$_sms_manager.c$133$1_0$118:	
C$_sms_manager.c$135$1_0$118:	
C$_sms_manager.c$136$1_0$118:	
G$devkit_UNSAFE_SMS_copySpritest:	
XG$devkit_UNSAFE_SMS_copySprites:	
_devkit_UNSAFE_SMS_copySpritesto:	
	.db $C3 $E5 $10
	
A$_sms_manager$899:	
C$_sms_manager.c$138$1_0$119:	
C$_sms_manager.c$140$1_0$119:	
C$_sms_manager.c$141$1_0$119:	
G$devkit_SMS_queryPauseRequested:	
XG$devkit_SMS_queryPauseRequeste:	
_devkit_SMS_queryPauseRequested:	
		jp _SMS_queryPauseRequested
	
A$_sms_manager$919:	
C$_sms_manager.c$142$1_0$120:	
C$_sms_manager.c$144$1_0$120:	
C$_sms_manager.c$145$1_0$120:	
G$devkit_SMS_resetPauseRequest$0:	
XG$devkit_SMS_resetPauseRequest$:	
_devkit_SMS_resetPauseRequest:	
		jp _SMS_resetPauseRequest
	
; Data from 9B0 to 9B2 (3 bytes)	
A$_sms_manager$932:	
C$_sms_manager.c$148$1_0$121:	
C$_sms_manager.c$150$1_0$121:	
G$devkit_isCollisionDetected$0$0:	
_devkit_isCollisionDetected:	
	.db $3A $31 $C0
	
; Data from 9B3 to 9B4 (2 bytes)	
A$_sms_manager$933:	
	.db $E6 $20
	
; Data from 9B5 to 9B5 (1 bytes)	
A$_sms_manager$934:	
	.db $6F
	
; Data from 9B6 to 9B6 (1 bytes)	
A$_sms_manager$942:	
C$_sms_manager.c$151$1_0$121:	
XG$devkit_isCollisionDetected$0$:	
	.db $C9
	
A$_sms_manager$962:	
C$_sms_manager.c$154$1_0$122:	
C$_sms_manager.c$156$1_0$122:	
C$_sms_manager.c$157$1_0$122:	
G$devkit_SMS_getKeysStatus$0$0:	
XG$devkit_SMS_getKeysStatus$0$0:	
_devkit_SMS_getKeysStatus:	
		jp _SMS_getKeysStatus
	
A$_sms_manager$975:	
C$_sms_manager.c$160$1_0$123:	
C$_sms_manager.c$162$1_0$123:	
G$devkit_SPRITEMODE_NORMAL$0$0:	
_devkit_SPRITEMODE_NORMAL:	
		ld l, $00
		ret
	
A$_sms_manager$996:	
C$_sms_manager.c$164$1_0$124:	
C$_sms_manager.c$166$1_0$124:	
G$devkit_VDPFEATURE_HIDEFIRSTCOL:	
_devkit_VDPFEATURE_HIDEFIRSTCOL:	
		ld hl, $0020
		ret
	
; Data from 9C1 to 9C3 (3 bytes)	
A$_sms_manager$1017:	
C$_sms_manager.c$168$1_0$125:	
C$_sms_manager.c$170$1_0$125:	
G$devkit_TILE_PRIORITY$0$0:	
_devkit_TILE_PRIORITY:	
	.db $21 $00 $10
	
; Data from 9C4 to 9C4 (1 bytes)	
A$_sms_manager$1025:	
C$_sms_manager.c$171$1_0$125:	
XG$devkit_TILE_PRIORITY$0$0:	
	.db $C9
	
; Data from 9C5 to 9C7 (3 bytes)	
A$_sms_manager$1038:	
C$_sms_manager.c$172$1_0$126:	
C$_sms_manager.c$174$1_0$126:	
G$devkit_TILE_USE_SPRITE_PALETTE:	
_devkit_TILE_USE_SPRITE_PALETTE:	
	.db $21 $00 $08
	
; Data from 9C8 to 9C8 (1 bytes)	
A$_sms_manager$1046:	
C$_sms_manager.c$175$1_0$126:	
XG$devkit_TILE_USE_SPRITE_PALETT:	
	.db $C9
	
; Data from 9C9 to 9D6 (14 bytes)	
F_sms_manager$__str_0$0_0$0:	
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00
	
; Data from 9D7 to 9E0 (10 bytes)	
F_sms_manager$__str_1$0_0$0:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	
; Data from 9E1 to A1C (60 bytes)	
F_sms_manager$__str_2$0_0$0:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00
	
; Data from A1D to A1D (1 bytes)	
A$_snd_manager$83:	
C$_snd_manager.c$11$1_0$31:	
C$_snd_manager.c$9$0_0$31:	
G$devkit_PSGPlay$0$0:	
_devkit_PSGPlay:	
	.db $C1
	
; Data from A1E to A1E (1 bytes)	
A$_snd_manager$84:	
	.db $E1
	
; Data from A1F to A1F (1 bytes)	
A$_snd_manager$85:	
	.db $E5
	
; Data from A20 to A20 (1 bytes)	
A$_snd_manager$86:	
	.db $C5
	
; Data from A21 to A21 (1 bytes)	
A$_snd_manager$87:	
	.db $E5
	
; Data from A22 to A24 (3 bytes)	
A$_snd_manager$88:	
	.db $CD $EA $02
	
; Data from A25 to A25 (1 bytes)	
A$_snd_manager$89:	
	.db $F1
	
; Data from A26 to A26 (1 bytes)	
A$_snd_manager$97:	
C$_snd_manager.c$12$1_0$31:	
XG$devkit_PSGPlay$0$0:	
	.db $C9
	
; Data from A27 to A27 (1 bytes)	
A$_snd_manager$110:	
C$_snd_manager.c$13$1_0$33:	
C$_snd_manager.c$15$1_0$33:	
G$devkit_PSGPlayNoRepeat$0$0:	
_devkit_PSGPlayNoRepeat:	
	.db $C1
	
; Data from A28 to A28 (1 bytes)	
A$_snd_manager$111:	
	.db $E1
	
; Data from A29 to A29 (1 bytes)	
A$_snd_manager$112:	
	.db $E5
	
; Data from A2A to A2A (1 bytes)	
A$_snd_manager$113:	
	.db $C5
	
; Data from A2B to A2B (1 bytes)	
A$_snd_manager$114:	
	.db $E5
	
; Data from A2C to A2E (3 bytes)	
A$_snd_manager$115:	
	.db $CD $1D $03
	
; Data from A2F to A2F (1 bytes)	
A$_snd_manager$116:	
	.db $F1
	
; Data from A30 to A30 (1 bytes)	
A$_snd_manager$124:	
C$_snd_manager.c$16$1_0$33:	
XG$devkit_PSGPlayNoRepeat$0$0:	
	.db $C9
	
; Data from A31 to A33 (3 bytes)	
A$_snd_manager$144:	
C$_snd_manager.c$17$1_0$35:	
C$_snd_manager.c$19$1_0$35:	
C$_snd_manager.c$20$1_0$35:	
G$devkit_PSGStop$0$0:	
XG$devkit_PSGStop$0$0:	
_devkit_PSGStop:	
	.db $C3 $77 $02
	
; Data from A34 to A36 (3 bytes)	
A$_snd_manager$164:	
C$_snd_manager.c$21$1_0$37:	
C$_snd_manager.c$23$1_0$37:	
C$_snd_manager.c$24$1_0$37:	
G$devkit_PSGResume$0$0:	
XG$devkit_PSGResume$0$0:	
_devkit_PSGResume:	
	.db $C3 $9E $02
	
; Data from A37 to A39 (3 bytes)	
A$_snd_manager$184:	
C$_snd_manager.c$25$1_0$39:	
C$_snd_manager.c$27$1_0$39:	
C$_snd_manager.c$28$1_0$39:	
G$devkit_PSGGetStatus$0$0:	
XG$devkit_PSGGetStatus$0$0:	
_devkit_PSGGetStatus:	
	.db $C3 $2C $03
	
; Data from A3A to A3C (3 bytes)	
A$_snd_manager$197:	
C$_snd_manager.c$29$1_0$41:	
C$_snd_manager.c$31$1_0$41:	
G$devkit_PSGSetMusicVolumeAttenu:	
_devkit_PSGSetMusicVolumeAttenua:	
	.db $21 $02 $00
	
; Data from A3D to A3D (1 bytes)	
A$_snd_manager$198:	
	.db $39
	
; Data from A3E to A3E (1 bytes)	
A$_snd_manager$199:	
	.db $7E
	
; Data from A3F to A3F (1 bytes)	
A$_snd_manager$200:	
	.db $F5
	
; Data from A40 to A40 (1 bytes)	
A$_snd_manager$201:	
	.db $33
	
; Data from A41 to A43 (3 bytes)	
A$_snd_manager$202:	
	.db $CD $44 $04
	
; Data from A44 to A44 (1 bytes)	
A$_snd_manager$203:	
	.db $33
	
; Data from A45 to A45 (1 bytes)	
A$_snd_manager$211:	
C$_snd_manager.c$32$1_0$41:	
XG$devkit_PSGSetMusicVolumeAtten:	
	.db $C9
	
; Data from A46 to A49 (4 bytes)	
A$_snd_manager$224:	
C$_snd_manager.c$34$1_0$43:	
C$_snd_manager.c$36$1_0$43:	
G$devkit_PSGSFXPlay$0$0:	
_devkit_PSGSFXPlay:	
	.db $FD $21 $04 $00
	
; Data from A4A to A4B (2 bytes)	
A$_snd_manager$225:	
	.db $FD $39
	
; Data from A4C to A4E (3 bytes)	
A$_snd_manager$226:	
	.db $FD $7E $00
	
; Data from A4F to A4F (1 bytes)	
A$_snd_manager$227:	
	.db $F5
	
; Data from A50 to A50 (1 bytes)	
A$_snd_manager$228:	
	.db $33
	
; Data from A51 to A52 (2 bytes)	
A$_snd_manager$229:	
	.db $FD $2B
	
; Data from A53 to A54 (2 bytes)	
A$_snd_manager$230:	
	.db $FD $2B
	
; Data from A55 to A57 (3 bytes)	
A$_snd_manager$231:	
	.db $FD $6E $00
	
; Data from A58 to A5A (3 bytes)	
A$_snd_manager$232:	
	.db $FD $66 $01
	
; Data from A5B to A5B (1 bytes)	
A$_snd_manager$233:	
	.db $E5
	
; Data from A5C to A5E (3 bytes)	
A$_snd_manager$234:	
	.db $CD $FD $05
	
; Data from A5F to A5F (1 bytes)	
A$_snd_manager$235:	
	.db $F1
	
; Data from A60 to A60 (1 bytes)	
A$_snd_manager$236:	
	.db $33
	
; Data from A61 to A61 (1 bytes)	
A$_snd_manager$244:	
C$_snd_manager.c$37$1_0$43:	
XG$devkit_PSGSFXPlay$0$0:	
	.db $C9
	
; Data from A62 to A64 (3 bytes)	
A$_snd_manager$264:	
C$_snd_manager.c$38$1_0$45:	
C$_snd_manager.c$40$1_0$45:	
C$_snd_manager.c$41$1_0$45:	
G$devkit_PSGSFXStop$0$0:	
XG$devkit_PSGSFXStop$0$0:	
_devkit_PSGSFXStop:	
	.db $C3 $33 $05
	
; Data from A65 to A67 (3 bytes)	
A$_snd_manager$284:	
C$_snd_manager.c$42$1_0$47:	
C$_snd_manager.c$44$1_0$47:	
C$_snd_manager.c$45$1_0$47:	
G$devkit_PSGSFXGetStatus$0$0:	
XG$devkit_PSGSFXGetStatus$0$0:	
_devkit_PSGSFXGetStatus:	
	.db $C3 $50 $06
	
A$_snd_manager$304:	
C$_snd_manager.c$47$1_0$49:	
C$_snd_manager.c$49$1_0$49:	
C$_snd_manager.c$50$1_0$49:	
G$devkit_PSGSilenceChannels$0$0:	
XG$devkit_PSGSilenceChannels$0$0:	
_devkit_PSGSilenceChannels:	
		jp _PSGSilenceChannels
	
A$_snd_manager$324:	
C$_snd_manager.c$51$1_0$51:	
C$_snd_manager.c$53$1_0$51:	
C$_snd_manager.c$54$1_0$51:	
G$devkit_PSGRestoreVolumes$0$0:	
XG$devkit_PSGRestoreVolumes$0$0:	
_devkit_PSGRestoreVolumes:	
		jp _PSGRestoreVolumes
	
A$_snd_manager$344:	
C$_snd_manager.c$56$1_0$53:	
C$_snd_manager.c$58$1_0$53:	
C$_snd_manager.c$59$1_0$53:	
G$devkit_PSGFrame$0$0:	
XG$devkit_PSGFrame$0$0:	
_devkit_PSGFrame:	
		jp _PSGFrame
	
A$_snd_manager$364:	
C$_snd_manager.c$60$1_0$55:	
C$_snd_manager.c$62$1_0$55:	
C$_snd_manager.c$63$1_0$55:	
G$devkit_PSGSFXFrame$0$0:	
XG$devkit_PSGSFXFrame$0$0:	
_devkit_PSGSFXFrame:	
		jp _PSGSFXFrame
	
; Data from A74 to A75 (2 bytes)	
A$_snd_manager$377:	
C$_snd_manager.c$66$1_0$56:	
C$_snd_manager.c$68$1_0$56:	
G$devkit_SFX_CHANNEL2$0$0:	
_devkit_SFX_CHANNEL2:	
	.db $2E $01
	
; Data from A76 to A76 (1 bytes)	
A$_snd_manager$385:	
C$_snd_manager.c$69$1_0$56:	
XG$devkit_SFX_CHANNEL2$0$0:	
	.db $C9
	
; Data from A77 to A78 (2 bytes)	
A$_snd_manager$398:	
C$_snd_manager.c$70$1_0$57:	
C$_snd_manager.c$72$1_0$57:	
G$devkit_SFX_CHANNEL3$0$0:	
_devkit_SFX_CHANNEL3:	
	.db $2E $02
	
; Data from A79 to A79 (1 bytes)	
A$_snd_manager$406:	
C$_snd_manager.c$73$1_0$57:	
XG$devkit_SFX_CHANNEL3$0$0:	
	.db $C9
	
; Data from A7A to A7B (2 bytes)	
A$_snd_manager$419:	
C$_snd_manager.c$74$1_0$58:	
C$_snd_manager.c$76$1_0$58:	
G$devkit_SFX_CHANNELS2AND3$0$0:	
_devkit_SFX_CHANNELS2AND3:	
	.db $2E $03
	
; Data from A7C to A7C (1 bytes)	
A$_snd_manager$427:	
C$_snd_manager.c$77$1_0$58:	
XG$devkit_SFX_CHANNELS2AND3$0$0:	
	.db $C9
	
A$asm_manager$59:	
C$asm_manager.c$11$0_0$1:	
C$asm_manager.c$30$1_0$1:	
G$engine_asm_manager_clear_VRAM$:	
_engine_asm_manager_clear_VRAM:	
		ld a, $00
		out (Port_VDPAddress), a
		ld a, $40
		out (Port_VDPAddress), a
		ld bc, $4000
A$asm_manager$65:	
		ld a, $00
		out (Port_VDPData), a
		dec bc
		ld a, b
		or c
		jp nz, A$asm_manager$65
		ret
	
; Data from A93 to A95 (3 bytes)	
A$audio_manager$60:	
C$audio_manager.c$18$0_0$15:	
C$audio_manager.c$20$1_0$15:	
G$engine_audio_manager_sfx_right:	
_engine_audio_manager_sfx_right:	
	.db $21 $61 $10
	
; Data from A96 to A96 (1 bytes)	
A$audio_manager$61:	
	.db $E5
	
; Data from A97 to A99 (3 bytes)	
A$audio_manager$62:	
	.db $CD $AE $0A
	
; Data from A9A to A9A (1 bytes)	
A$audio_manager$63:	
	.db $F1
	
; Data from A9B to A9B (1 bytes)	
A$audio_manager$71:	
C$audio_manager.c$21$1_0$15:	
XG$engine_audio_manager_sfx_righ:	
	.db $C9
	
; Data from A9C to A9E (3 bytes)	
A$audio_manager$84:	
C$audio_manager.c$22$1_0$16:	
C$audio_manager.c$24$1_0$16:	
G$engine_audio_manager_sfx_wrong:	
_engine_audio_manager_sfx_wrong:	
	.db $21 $81 $10
	
; Data from A9F to A9F (1 bytes)	
A$audio_manager$85:	
	.db $E5
	
; Data from AA0 to AA2 (3 bytes)	
A$audio_manager$86:	
	.db $CD $AE $0A
	
; Data from AA3 to AA3 (1 bytes)	
A$audio_manager$87:	
	.db $F1
	
; Data from AA4 to AA4 (1 bytes)	
A$audio_manager$95:	
C$audio_manager.c$25$1_0$16:	
XG$engine_audio_manager_sfx_wron:	
	.db $C9
	
; Data from AA5 to AA7 (3 bytes)	
A$audio_manager$108:	
C$audio_manager.c$26$1_0$17:	
C$audio_manager.c$28$1_0$17:	
G$engine_audio_manager_sfx_cheat:	
_engine_audio_manager_sfx_cheat:	
	.db $21 $3E $10
	
; Data from AA8 to AA8 (1 bytes)	
A$audio_manager$109:	
	.db $E5
	
; Data from AA9 to AAB (3 bytes)	
A$audio_manager$110:	
	.db $CD $AE $0A
	
; Data from AAC to AAC (1 bytes)	
A$audio_manager$111:	
	.db $F1
	
; Data from AAD to AAD (1 bytes)	
A$audio_manager$119:	
C$audio_manager.c$29$1_0$17:	
XG$engine_audio_manager_sfx_chea:	
	.db $C9
	
; Data from AAE to AB0 (3 bytes)	
A$audio_manager$132:	
C$audio_manager.c$31$1_0$19:	
C$audio_manager.c$36$1_0$19:	
Faudio_manager$play_sfx$0$0:	
	.db $CD $65 $0A
	
; Data from AB1 to AB1 (1 bytes)	
A$audio_manager$133:	
	.db $7D
	
; Data from AB2 to AB2 (1 bytes)	
A$audio_manager$137:	
C$audio_manager.c$37$1_0$19:	
	.db $B7
	
; Data from AB3 to AB3 (1 bytes)	
A$audio_manager$141:	
C$audio_manager.c$39$2_0$20:	
	.db $C0
	
; Data from AB4 to AB6 (3 bytes)	
A$audio_manager$145:	
C$audio_manager.c$42$1_0$19:	
	.db $CD $74 $0A
	
; Data from AB7 to AB7 (1 bytes)	
A$audio_manager$146:	
	.db $65
	
; Data from AB8 to AB8 (1 bytes)	
A$audio_manager$147:	
	.db $D1
	
; Data from AB9 to AB9 (1 bytes)	
A$audio_manager$148:	
	.db $C1
	
; Data from ABA to ABA (1 bytes)	
A$audio_manager$149:	
	.db $C5
	
; Data from ABB to ABB (1 bytes)	
A$audio_manager$150:	
	.db $D5
	
; Data from ABC to ABC (1 bytes)	
A$audio_manager$151:	
	.db $E5
	
; Data from ABD to ABD (1 bytes)	
A$audio_manager$152:	
	.db $33
	
; Data from ABE to ABE (1 bytes)	
A$audio_manager$153:	
	.db $C5
	
; Data from ABF to AC1 (3 bytes)	
A$audio_manager$154:	
	.db $CD $46 $0A
	
; Data from AC2 to AC2 (1 bytes)	
A$audio_manager$155:	
	.db $F1
	
; Data from AC3 to AC3 (1 bytes)	
A$audio_manager$156:	
	.db $33
	
; Data from AC4 to AC4 (1 bytes)	
A$audio_manager$164:	
C$audio_manager.c$43$1_0$19:	
XFaudio_manager$play_sfx$0$0:	
	.db $C9
	
; Data from AC5 to AC7 (3 bytes)	
A$content_manager$57:	
C$content_manager.c$10$0_0$17:	
C$content_manager.c$12$1_0$17:	
G$engine_content_manager_load_ti:	
_engine_content_manager_load_til:	
	.db $21 $00 $00
	
; Data from AC8 to AC8 (1 bytes)	
A$content_manager$58:	
	.db $E5
	
; Data from AC9 to ACB (3 bytes)	
A$content_manager$59:	
	.db $21 $A7 $0D
	
; Data from ACC to ACC (1 bytes)	
A$content_manager$60:	
	.db $E5
	
; Data from ACD to ACF (3 bytes)	
A$content_manager$61:	
	.db $CD $8C $08
	
; Data from AD0 to AD0 (1 bytes)	
A$content_manager$62:	
	.db $F1
	
; Data from AD1 to AD3 (3 bytes)	
A$content_manager$66:	
C$content_manager.c$13$1_0$17:	
	.db $21 $17 $0D
	
; Data from AD4 to AD4 (1 bytes)	
A$content_manager$67:	
	.db $E3
	
; Data from AD5 to AD7 (3 bytes)	
A$content_manager$68:	
	.db $CD $D0 $08
	
; Data from AD8 to AD8 (1 bytes)	
A$content_manager$69:	
	.db $F1
	
; Data from AD9 to AD9 (1 bytes)	
A$content_manager$77:	
C$content_manager.c$14$1_0$17:	
XG$engine_content_manager_load_t:	
	.db $C9
	
; Data from ADA to ADB (2 bytes)	
A$font_manager$56:	
C$font_manager.c$10$0_0$21:	
G$engine_font_manager_draw_char$:	
_engine_font_manager_draw_char:	
	.db $DD $E5
	
; Data from ADC to ADF (4 bytes)	
A$font_manager$57:	
	.db $DD $21 $00 $00
	
; Data from AE0 to AE1 (2 bytes)	
A$font_manager$58:	
	.db $DD $39
	
; Data from AE2 to AE4 (3 bytes)	
A$font_manager$65:	
C$font_manager.c$12$2_0$21:	
C$font_manager.c$13$1_0$21:	
	.db $DD $7E $04
	
; Data from AE5 to AE6 (2 bytes)	
A$font_manager$66:	
	.db $C6 $E0
	
; Data from AE7 to AE7 (1 bytes)	
A$font_manager$67:	
	.db $4F
	
; Data from AE8 to AE8 (1 bytes)	
A$font_manager$71:	
C$font_manager.c$14$1_0$21:	
	.db $C5
	
; Data from AE9 to AEB (3 bytes)	
A$font_manager$72:	
	.db $DD $66 $06
	
; Data from AEC to AEE (3 bytes)	
A$font_manager$73:	
	.db $DD $6E $05
	
; Data from AEF to AEF (1 bytes)	
A$font_manager$74:	
	.db $E5
	
; Data from AF0 to AF2 (3 bytes)	
A$font_manager$75:	
	.db $CD $3C $09
	
; Data from AF3 to AF3 (1 bytes)	
A$font_manager$76:	
	.db $F1
	
; Data from AF4 to AF4 (1 bytes)	
A$font_manager$77:	
	.db $C1
	
; Data from AF5 to AF7 (3 bytes)	
A$font_manager$81:	
C$font_manager.c$15$1_0$21:	
	.db $3A $27 $0D
	
; Data from AF8 to AF8 (1 bytes)	
A$font_manager$82:	
	.db $6F
	
; Data from AF9 to AFA (2 bytes)	
A$font_manager$83:	
	.db $26 $00
	
; Data from AFB to AFC (2 bytes)	
A$font_manager$84:	
	.db $06 $00
	
; Data from AFD to AFD (1 bytes)	
A$font_manager$85:	
	.db $09
	
; Data from AFE to AFE (1 bytes)	
A$font_manager$86:	
	.db $E5
	
; Data from AFF to B01 (3 bytes)	
A$font_manager$87:	
	.db $CD $65 $09
	
; Data from B02 to B02 (1 bytes)	
A$font_manager$88:	
	.db $F1
	
; Data from B03 to B04 (2 bytes)	
A$font_manager$92:	
	.db $DD $E1
	
; Data from B05 to B05 (1 bytes)	
A$font_manager$97:	
C$font_manager.c$16$1_0$21:	
XG$engine_font_manager_draw_char:	
	.db $C9
	
; Data from B06 to B07 (2 bytes)	
A$font_manager$107:	
C$font_manager.c$18$1_0$23:	
G$engine_font_manager_draw_text$:	
_engine_font_manager_draw_text:	
	.db $DD $E5
	
; Data from B08 to B0B (4 bytes)	
A$font_manager$108:	
	.db $DD $21 $00 $00
	
; Data from B0C to B0D (2 bytes)	
A$font_manager$109:	
	.db $DD $39
	
; Data from B0E to B0E (1 bytes)	
A$font_manager$110:	
	.db $3B
	
; Data from B0F to B11 (3 bytes)	
A$font_manager$117:	
C$font_manager.c$20$2_0$23:	
C$font_manager.c$23$1_0$23:	
	.db $DD $7E $06
	
; Data from B12 to B14 (3 bytes)	
A$font_manager$118:	
	.db $DD $77 $FF
	
; Data from B15 to B16 (2 bytes)	
A$font_manager$119:	
	.db $0E $00
	
; Data from B17 to B19 (3 bytes)	
A$font_manager$121:	
	.db $DD $6E $04
	
; Data from B1A to B1C (3 bytes)	
A$font_manager$122:	
	.db $DD $66 $05
	
; Data from B1D to B1E (2 bytes)	
A$font_manager$123:	
	.db $06 $00
	
; Data from B1F to B1F (1 bytes)	
A$font_manager$124:	
	.db $09
	
; Data from B20 to B20 (1 bytes)	
A$font_manager$125:	
	.db $7E
	
; Data from B21 to B21 (1 bytes)	
A$font_manager$126:	
	.db $B7
	
; Data from B22 to B23 (2 bytes)	
A$font_manager$127:	
	.db $28 $32
	
; Data from B24 to B25 (2 bytes)	
A$font_manager$131:	
C$font_manager.c$25$2_0$24:	
	.db $C6 $E0
	
; Data from B26 to B26 (1 bytes)	
A$font_manager$132:	
	.db $47
	
; Data from B27 to B29 (3 bytes)	
A$font_manager$136:	
C$font_manager.c$26$2_0$24:	
	.db $DD $56 $FF
	
; Data from B2A to B2C (3 bytes)	
A$font_manager$137:	
	.db $DD $34 $FF
	
; Data from B2D to B2F (3 bytes)	
A$font_manager$138:	
	.db $DD $7E $FF
	
; Data from B30 to B32 (3 bytes)	
A$font_manager$139:	
	.db $DD $77 $06
	
; Data from B33 to B33 (1 bytes)	
A$font_manager$140:	
	.db $C5
	
; Data from B34 to B36 (3 bytes)	
A$font_manager$141:	
	.db $DD $7E $07
	
; Data from B37 to B37 (1 bytes)	
A$font_manager$142:	
	.db $F5
	
; Data from B38 to B38 (1 bytes)	
A$font_manager$143:	
	.db $33
	
; Data from B39 to B39 (1 bytes)	
A$font_manager$144:	
	.db $D5
	
; Data from B3A to B3A (1 bytes)	
A$font_manager$145:	
	.db $33
	
; Data from B3B to B3D (3 bytes)	
A$font_manager$146:	
	.db $CD $3C $09
	
; Data from B3E to B3E (1 bytes)	
A$font_manager$147:	
	.db $F1
	
; Data from B3F to B3F (1 bytes)	
A$font_manager$148:	
	.db $C1
	
; Data from B40 to B42 (3 bytes)	
A$font_manager$152:	
C$font_manager.c$27$2_0$24:	
	.db $3A $27 $0D
	
; Data from B43 to B43 (1 bytes)	
A$font_manager$153:	
	.db $5F
	
; Data from B44 to B45 (2 bytes)	
A$font_manager$154:	
	.db $16 $00
	
; Data from B46 to B46 (1 bytes)	
A$font_manager$155:	
	.db $78
	
; Data from B47 to B47 (1 bytes)	
A$font_manager$156:	
	.db $6F
	
; Data from B48 to B48 (1 bytes)	
A$font_manager$157:	
	.db $17
	
; Data from B49 to B49 (1 bytes)	
A$font_manager$158:	
	.db $9F
	
; Data from B4A to B4A (1 bytes)	
A$font_manager$159:	
	.db $67
	
; Data from B4B to B4B (1 bytes)	
A$font_manager$160:	
	.db $19
	
; Data from B4C to B4C (1 bytes)	
A$font_manager$161:	
	.db $C5
	
; Data from B4D to B4D (1 bytes)	
A$font_manager$162:	
	.db $E5
	
; Data from B4E to B50 (3 bytes)	
A$font_manager$163:	
	.db $CD $65 $09
	
; Data from B51 to B51 (1 bytes)	
A$font_manager$164:	
	.db $F1
	
; Data from B52 to B52 (1 bytes)	
A$font_manager$165:	
	.db $C1
	
; Data from B53 to B53 (1 bytes)	
A$font_manager$169:	
C$font_manager.c$28$2_0$24:	
	.db $0C
	
; Data from B54 to B55 (2 bytes)	
A$font_manager$170:	
	.db $18 $C1
	
; Data from B56 to B56 (1 bytes)	
A$font_manager$175:	
	.db $33
	
; Data from B57 to B58 (2 bytes)	
A$font_manager$176:	
	.db $DD $E1
	
; Data from B59 to B59 (1 bytes)	
A$font_manager$181:	
C$font_manager.c$30$1_0$23:	
XG$engine_font_manager_draw_text:	
	.db $C9
	
; Data from B5A to B5B (2 bytes)	
A$font_manager$191:	
C$font_manager.c$32$1_0$27:	
G$engine_font_manager_draw_data$:	
_engine_font_manager_draw_data:	
	.db $DD $E5
	
; Data from B5C to B5F (4 bytes)	
A$font_manager$192:	
	.db $DD $21 $00 $00
	
; Data from B60 to B61 (2 bytes)	
A$font_manager$193:	
	.db $DD $39
	
; Data from B62 to B62 (1 bytes)	
A$font_manager$194:	
	.db $F5
	
; Data from B63 to B65 (3 bytes)	
A$font_manager$201:	
C$font_manager.c$34$2_0$27:	
	.db $DD $7E $06
	
; Data from B66 to B68 (3 bytes)	
A$font_manager$202:	
	.db $DD $77 $FE
	
; Data from B69 to B69 (1 bytes)	
A$font_manager$203:	
	.db $AF
	
; Data from B6A to B6C (3 bytes)	
A$font_manager$204:	
	.db $DD $77 $FF
	
; Data from B6D to B6F (3 bytes)	
A$font_manager$209:	
C$font_manager.c$44$2_0$27:	
	.db $21 $0A $00
	
; Data from B70 to B70 (1 bytes)	
A$font_manager$210:	
	.db $E5
	
; Data from B71 to B73 (3 bytes)	
A$font_manager$211:	
	.db $DD $6E $04
	
; Data from B74 to B76 (3 bytes)	
A$font_manager$212:	
	.db $DD $66 $05
	
; Data from B77 to B77 (1 bytes)	
A$font_manager$213:	
	.db $E5
	
; Data from B78 to B7A (3 bytes)	
A$font_manager$214:	
	.db $CD $A4 $10
	
; Data from B7B to B7B (1 bytes)	
A$font_manager$215:	
	.db $F1
	
; Data from B7C to B7C (1 bytes)	
A$font_manager$216:	
	.db $F1
	
; Data from B7D to B7D (1 bytes)	
A$font_manager$217:	
	.db $5D
	
; Data from B7E to B7E (1 bytes)	
A$font_manager$218:	
	.db $54
	
; Data from B7F to B7F (1 bytes)	
A$font_manager$222:	
C$font_manager.c$45$2_0$27:	
	.db $E5
	
; Data from B80 to B80 (1 bytes)	
A$font_manager$223:	
	.db $D5
	
; Data from B81 to B83 (3 bytes)	
A$font_manager$224:	
	.db $01 $0A $00
	
; Data from B84 to B84 (1 bytes)	
A$font_manager$225:	
	.db $C5
	
; Data from B85 to B87 (3 bytes)	
A$font_manager$226:	
	.db $DD $4E $04
	
; Data from B88 to B8A (3 bytes)	
A$font_manager$227:	
	.db $DD $46 $05
	
; Data from B8B to B8B (1 bytes)	
A$font_manager$228:	
	.db $C5
	
; Data from B8C to B8E (3 bytes)	
A$font_manager$229:	
	.db $CD $FD $16
	
; Data from B8F to B8F (1 bytes)	
A$font_manager$230:	
	.db $F1
	
; Data from B90 to B90 (1 bytes)	
A$font_manager$231:	
	.db $F1
	
; Data from B91 to B91 (1 bytes)	
A$font_manager$232:	
	.db $45
	
; Data from B92 to B92 (1 bytes)	
A$font_manager$233:	
	.db $D1
	
; Data from B93 to B93 (1 bytes)	
A$font_manager$234:	
	.db $E1
	
; Data from B94 to B96 (3 bytes)	
A$font_manager$238:	
C$font_manager.c$47$3_0$28:	
	.db $DD $75 $04
	
; Data from B97 to B99 (3 bytes)	
A$font_manager$239:	
	.db $DD $74 $05
	
; Data from B9A to B9A (1 bytes)	
A$font_manager$243:	
C$font_manager.c$48$3_0$28:	
	.db $78
	
; Data from B9B to B9C (2 bytes)	
A$font_manager$244:	
	.db $C6 $10
	
; Data from B9D to B9D (1 bytes)	
A$font_manager$245:	
	.db $4F
	
; Data from B9E to B9E (1 bytes)	
A$font_manager$249:	
C$font_manager.c$49$3_0$28:	
	.db $7A
	
; Data from B9F to B9F (1 bytes)	
A$font_manager$250:	
	.db $B3
	
; Data from BA0 to BA1 (2 bytes)	
A$font_manager$251:	
	.db $20 $0B
	
; Data from BA2 to BA2 (1 bytes)	
A$font_manager$252:	
	.db $B0
	
; Data from BA3 to BA4 (2 bytes)	
A$font_manager$253:	
	.db $20 $08
	
; Data from BA5 to BA7 (3 bytes)	
A$font_manager$254:	
	.db $DD $7E $FF
	
; Data from BA8 to BA8 (1 bytes)	
A$font_manager$255:	
	.db $B7
	
; Data from BA9 to BAA (2 bytes)	
A$font_manager$256:	
	.db $28 $02
	
; Data from BAB to BAC (2 bytes)	
A$font_manager$260:	
C$font_manager.c$52$4_0$29:	
	.db $0E $00
	
; Data from BAD to BAF (3 bytes)	
A$font_manager$265:	
C$font_manager.c$55$3_0$28:	
	.db $DD $46 $FE
	
; Data from BB0 to BB2 (3 bytes)	
A$font_manager$266:	
	.db $DD $35 $FE
	
; Data from BB3 to BB5 (3 bytes)	
A$font_manager$267:	
	.db $DD $7E $FE
	
; Data from BB6 to BB8 (3 bytes)	
A$font_manager$268:	
	.db $DD $77 $06
	
; Data from BB9 to BB9 (1 bytes)	
A$font_manager$269:	
	.db $C5
	
; Data from BBA to BBC (3 bytes)	
A$font_manager$270:	
	.db $DD $7E $07
	
; Data from BBD to BBD (1 bytes)	
A$font_manager$271:	
	.db $F5
	
; Data from BBE to BBE (1 bytes)	
A$font_manager$272:	
	.db $33
	
; Data from BBF to BBF (1 bytes)	
A$font_manager$273:	
	.db $C5
	
; Data from BC0 to BC0 (1 bytes)	
A$font_manager$274:	
	.db $33
	
; Data from BC1 to BC3 (3 bytes)	
A$font_manager$275:	
	.db $CD $3C $09
	
; Data from BC4 to BC4 (1 bytes)	
A$font_manager$276:	
	.db $F1
	
; Data from BC5 to BC5 (1 bytes)	
A$font_manager$277:	
	.db $C1
	
; Data from BC6 to BC8 (3 bytes)	
A$font_manager$281:	
C$font_manager.c$56$3_0$28:	
	.db $3A $27 $0D
	
; Data from BC9 to BC9 (1 bytes)	
A$font_manager$282:	
	.db $6F
	
; Data from BCA to BCB (2 bytes)	
A$font_manager$283:	
	.db $26 $00
	
; Data from BCC to BCC (1 bytes)	
A$font_manager$284:	
	.db $79
	
; Data from BCD to BCD (1 bytes)	
A$font_manager$285:	
	.db $17
	
; Data from BCE to BCE (1 bytes)	
A$font_manager$286:	
	.db $9F
	
; Data from BCF to BCF (1 bytes)	
A$font_manager$287:	
	.db $47
	
; Data from BD0 to BD0 (1 bytes)	
A$font_manager$288:	
	.db $09
	
; Data from BD1 to BD1 (1 bytes)	
A$font_manager$289:	
	.db $E5
	
; Data from BD2 to BD4 (3 bytes)	
A$font_manager$290:	
	.db $CD $65 $09
	
; Data from BD5 to BD5 (1 bytes)	
A$font_manager$291:	
	.db $F1
	
; Data from BD6 to BD8 (3 bytes)	
A$font_manager$295:	
C$font_manager.c$42$2_0$27:	
	.db $DD $34 $FF
	
; Data from BD9 to BDB (3 bytes)	
A$font_manager$296:	
	.db $DD $7E $FF
	
; Data from BDC to BDD (2 bytes)	
A$font_manager$297:	
	.db $D6 $05
	
; Data from BDE to BDF (2 bytes)	
A$font_manager$298:	
	.db $38 $8D
	
; Data from BE0 to BE1 (2 bytes)	
A$font_manager$302:	
	.db $DD $F9
	
; Data from BE2 to BE3 (2 bytes)	
A$font_manager$303:	
	.db $DD $E1
	
; Data from BE4 to BE4 (1 bytes)	
A$font_manager$308:	
C$font_manager.c$58$2_0$27:	
XG$engine_font_manager_draw_data:	
	.db $C9
	
A$input_manager$64:	
C$input_manager.c$10$0_0$19:	
C$input_manager.c$12$1_0$19:	
G$engine_input_manager_update$0$:	
_engine_input_manager_update:	
		ld hl, (Finput_manager$curr_joypad1$0_0$)	; Finput_manager$curr_joypad1$0_0$ = $C11B
		ld (Finput_manager$prev_joypad1$0_0$), hl	; Finput_manager$prev_joypad1$0_0$ = $C11D
		call A$_sms_manager$962
		ld (Finput_manager$curr_joypad1$0_0$), hl	; Finput_manager$curr_joypad1$0_0$ = $C11B
		ret
	
; Data from BF2 to BF4 (3 bytes)	
A$input_manager$91:	
C$input_manager.c$17$1_0$21:	
C$input_manager.c$19$1_0$21:	
G$engine_input_manager_hold$0$0:	
_engine_input_manager_hold:	
	.db $21 $02 $00
	
; Data from BF5 to BF5 (1 bytes)	
A$input_manager$92:	
	.db $39
	
; Data from BF6 to BF6 (1 bytes)	
A$input_manager$93:	
	.db $4E
	
; Data from BF7 to BF8 (2 bytes)	
A$input_manager$94:	
	.db $06 $00
	
; Data from BF9 to BFC (4 bytes)	
A$input_manager$95:	
	.db $FD $21 $1B $C1
	
; Data from BFD to BFF (3 bytes)	
A$input_manager$96:	
	.db $FD $7E $00
	
; Data from C00 to C00 (1 bytes)	
A$input_manager$97:	
	.db $A1
	
; Data from C01 to C01 (1 bytes)	
A$input_manager$98:	
	.db $5F
	
; Data from C02 to C04 (3 bytes)	
A$input_manager$99:	
	.db $FD $7E $01
	
; Data from C05 to C05 (1 bytes)	
A$input_manager$100:	
	.db $A0
	
; Data from C06 to C06 (1 bytes)	
A$input_manager$101:	
	.db $B3
	
; Data from C07 to C08 (2 bytes)	
A$input_manager$102:	
	.db $28 $10
	
; Data from C09 to C0C (4 bytes)	
A$input_manager$103:	
	.db $FD $21 $1D $C1
	
; Data from C0D to C0F (3 bytes)	
A$input_manager$104:	
	.db $FD $7E $00
	
; Data from C10 to C10 (1 bytes)	
A$input_manager$105:	
	.db $A1
	
; Data from C11 to C11 (1 bytes)	
A$input_manager$106:	
	.db $4F
	
; Data from C12 to C14 (3 bytes)	
A$input_manager$107:	
	.db $FD $7E $01
	
; Data from C15 to C15 (1 bytes)	
A$input_manager$108:	
	.db $A0
	
; Data from C16 to C16 (1 bytes)	
A$input_manager$109:	
	.db $B1
	
; Data from C17 to C18 (2 bytes)	
A$input_manager$110:	
	.db $28 $03
	
; Data from C19 to C1A (2 bytes)	
A$input_manager$112:	
	.db $2E $00
	
; Data from C1B to C1B (1 bytes)	
A$input_manager$113:	
	.db $C9
	
; Data from C1C to C1D (2 bytes)	
A$input_manager$115:	
	.db $2E $01
	
; Data from C1E to C1E (1 bytes)	
A$input_manager$123:	
C$input_manager.c$20$1_0$21:	
XG$engine_input_manager_hold$0$0:	
	.db $C9
	
; Data from C1F to C21 (3 bytes)	
A$input_manager$136:	
C$input_manager.c$22$1_0$23:	
C$input_manager.c$24$1_0$23:	
G$engine_input_manager_move$0$0:	
_engine_input_manager_move:	
	.db $21 $02 $00
	
; Data from C22 to C22 (1 bytes)	
A$input_manager$137:	
	.db $39
	
; Data from C23 to C23 (1 bytes)	
A$input_manager$138:	
	.db $7E
	
; Data from C24 to C26 (3 bytes)	
A$input_manager$139:	
	.db $21 $1B $C1
	
; Data from C27 to C27 (1 bytes)	
A$input_manager$140:	
	.db $4E
	
; Data from C28 to C28 (1 bytes)	
A$input_manager$141:	
	.db $A1
	
; Data from C29 to C29 (1 bytes)	
A$input_manager$142:	
	.db $6F
	
; Data from C2A to C2A (1 bytes)	
A$input_manager$150:	
C$input_manager.c$25$1_0$23:	
XG$engine_input_manager_move$0$0:	
	.db $C9
	
A$screen_manager$72:	
C$screen_manager.c$15$0_0$6:	
C$screen_manager.c$17$1_0$6:	
G$engine_screen_manager_init$0$0:	
_engine_screen_manager_init:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (Fscreen_manager$next_screen_type), a	; Fscreen_manager$next_screen_type = $C027
		ld hl, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C026
		ld (hl), $00
		ld hl, A$none_screen$60	; A$none_screen$60 = $0C94
		ld (Fscreen_manager$load_method$0_0$), hl	; Fscreen_manager$load_method$0_0$ = $C028
		ld hl, A$splash_screen$64	; A$splash_screen$64 = $0C9C
		ld (Fscreen_manager$load_method$0_0$ + 2), hl	; Fscreen_manager$load_method$0_0$ + 2 = $C02A
		ld hl, A$none_screen$73	; A$none_screen$73 = $0C95
		ld (Fscreen_manager$update_method$0_), hl	; Fscreen_manager$update_method$0_ = $C02C
		ld hl, A$splash_screen$106	; A$splash_screen$106 = $0CBE
		ld (Fscreen_manager$update_method$0_ + 2), hl	; Fscreen_manager$update_method$0_ + 2 = $C02E
		ret
	
A$screen_manager$121:	
C$screen_manager.c$29$1_0$7:	
C$screen_manager.c$31$1_0$7:	
G$engine_screen_manager_update$0:	
_engine_screen_manager_update:	
		ld a, (Fscreen_manager$curr_screen_type)	; Fscreen_manager$curr_screen_type = $C026
		ld iy, Fscreen_manager$next_screen_type	; Fscreen_manager$next_screen_type = $C027
		sub (iy+0)
		jr z, A$screen_manager$148
		ld a, (iy+0)
		ld iy, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C026
		ld (iy+0), a
		ld bc, Fscreen_manager$load_method$0_0$	; Fscreen_manager$load_method$0_0$ = $C028
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		call ___sdcc_call_hl
A$screen_manager$148:	
C$screen_manager.c$37$1_0$7:	
		ld bc, Fscreen_manager$update_method$0_	; Fscreen_manager$update_method$0_ = $C02C
		ld iy, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C026
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld hl, Fscreen_manager$next_screen_type	; Fscreen_manager$next_screen_type = $C027
		push hl
		ld l, c
		ld h, b
		call ___sdcc_call_hl
		pop af
		ret
	
; Data from C94 to C94 (1 bytes)	
A$none_screen$60:	
C$none_screen.c$4$0_0$3:	
C$none_screen.c$6$0_0$3:	
G$screen_none_screen_load$0$0:	
XG$screen_none_screen_load$0$0:	
_screen_none_screen_load:	
	.db $C9
	
; Data from C95 to C95 (1 bytes)	
A$none_screen$73:	
C$none_screen.c$10$1_0$5:	
C$none_screen.c$8$0_0$5:	
G$screen_none_screen_update$0$0:	
_screen_none_screen_update:	
	.db $D1
	
; Data from C96 to C96 (1 bytes)	
A$none_screen$74:	
	.db $C1
	
; Data from C97 to C97 (1 bytes)	
A$none_screen$75:	
	.db $C5
	
; Data from C98 to C98 (1 bytes)	
A$none_screen$76:	
	.db $D5
	
; Data from C99 to C99 (1 bytes)	
A$none_screen$77:	
	.db $AF
	
; Data from C9A to C9A (1 bytes)	
A$none_screen$78:	
	.db $02
	
; Data from C9B to C9B (1 bytes)	
A$none_screen$86:	
C$none_screen.c$11$1_0$5:	
XG$screen_none_screen_update$0$0:	
	.db $C9
	
; Data from C9C to C9E (3 bytes)	
A$splash_screen$64:	
C$splash_screen.c$10$0_0$23:	
C$splash_screen.c$12$1_0$23:	
G$screen_splash_screen_load$0$0:	
_screen_splash_screen_load:	
	.db $CD $21 $08
	
; Data from C9F to CA1 (3 bytes)	
A$splash_screen$68:	
C$splash_screen.c$13$1_0$23:	
	.db $CD $C5 $0A
	
; Data from CA2 to CA4 (3 bytes)	
A$splash_screen$72:	
C$splash_screen.c$15$1_0$23:	
	.db $11 $0A $0A
	
; Data from CA5 to CA5 (1 bytes)	
A$splash_screen$73:	
	.db $D5
	
; Data from CA6 to CA8 (3 bytes)	
A$splash_screen$74:	
	.db $21 $B2 $0C
	
; Data from CA9 to CA9 (1 bytes)	
A$splash_screen$75:	
	.db $E5
	
; Data from CAA to CAC (3 bytes)	
A$splash_screen$76:	
	.db $CD $06 $0B
	
; Data from CAD to CAD (1 bytes)	
A$splash_screen$77:	
	.db $F1
	
; Data from CAE to CAE (1 bytes)	
A$splash_screen$78:	
	.db $F1
	
; Data from CAF to CB1 (3 bytes)	
A$splash_screen$89:	
C$splash_screen.c$16$1_0$23:	
C$splash_screen.c$17$1_0$23:	
XG$screen_splash_screen_load$0$0:	
	.db $C3 $1B $08
	
; Data from CB2 to CBD (12 bytes)	
Fsplash_screen$__str_0$0_0$0:	
	.db $48 $45 $4C $4C $4F $20 $57 $4F $52 $4C $44 $00
	
; Data from CBE to CBF (2 bytes)	
A$splash_screen$106:	
C$splash_screen.c$19$1_0$25:	
C$splash_screen.c$23$1_0$25:	
G$screen_splash_screen_update$0$:	
_screen_splash_screen_update:	
	.db $3E $04
	
; Data from CC0 to CC0 (1 bytes)	
A$splash_screen$107:	
	.db $F5
	
; Data from CC1 to CC1 (1 bytes)	
A$splash_screen$108:	
	.db $33
	
; Data from CC2 to CC4 (3 bytes)	
A$splash_screen$109:	
	.db $CD $F2 $0B
	
; Data from CC5 to CC5 (1 bytes)	
A$splash_screen$110:	
	.db $33
	
; Data from CC6 to CC6 (1 bytes)	
A$splash_screen$111:	
	.db $7D
	
; Data from CC7 to CC7 (1 bytes)	
A$splash_screen$115:	
C$splash_screen.c$24$1_0$25:	
	.db $B7
	
; Data from CC8 to CC9 (2 bytes)	
A$splash_screen$116:	
	.db $28 $03
	
; Data from CCA to CCC (3 bytes)	
A$splash_screen$120:	
C$splash_screen.c$26$2_0$26:	
	.db $CD $9C $0A
	
; Data from CCD to CCE (2 bytes)	
A$splash_screen$125:	
C$splash_screen.c$28$1_0$25:	
	.db $3E $08
	
; Data from CCF to CCF (1 bytes)	
A$splash_screen$126:	
	.db $F5
	
; Data from CD0 to CD0 (1 bytes)	
A$splash_screen$127:	
	.db $33
	
; Data from CD1 to CD3 (3 bytes)	
A$splash_screen$128:	
	.db $CD $F2 $0B
	
; Data from CD4 to CD4 (1 bytes)	
A$splash_screen$129:	
	.db $33
	
; Data from CD5 to CD5 (1 bytes)	
A$splash_screen$130:	
	.db $7D
	
; Data from CD6 to CD6 (1 bytes)	
A$splash_screen$134:	
C$splash_screen.c$29$1_0$25:	
	.db $B7
	
; Data from CD7 to CD8 (2 bytes)	
A$splash_screen$135:	
	.db $28 $03
	
; Data from CD9 to CDB (3 bytes)	
A$splash_screen$139:	
C$splash_screen.c$31$2_0$27:	
	.db $CD $93 $0A
	
; Data from CDC to CDD (2 bytes)	
A$splash_screen$144:	
C$splash_screen.c$33$1_0$25:	
	.db $3E $02
	
; Data from CDE to CDE (1 bytes)	
A$splash_screen$145:	
	.db $F5
	
; Data from CDF to CDF (1 bytes)	
A$splash_screen$146:	
	.db $33
	
; Data from CE0 to CE2 (3 bytes)	
A$splash_screen$147:	
	.db $CD $F2 $0B
	
; Data from CE3 to CE3 (1 bytes)	
A$splash_screen$148:	
	.db $33
	
; Data from CE4 to CE4 (1 bytes)	
A$splash_screen$149:	
	.db $7D
	
; Data from CE5 to CE5 (1 bytes)	
A$splash_screen$153:	
C$splash_screen.c$34$1_0$25:	
	.db $B7
	
; Data from CE6 to CE7 (2 bytes)	
A$splash_screen$154:	
	.db $28 $03
	
; Data from CE8 to CEA (3 bytes)	
A$splash_screen$158:	
C$splash_screen.c$36$2_0$28:	
	.db $CD $A5 $0A
	
; Data from CEB to CEC (2 bytes)	
A$splash_screen$163:	
C$splash_screen.c$38$1_0$25:	
	.db $3E $10
	
; Data from CED to CED (1 bytes)	
A$splash_screen$164:	
	.db $F5
	
; Data from CEE to CEE (1 bytes)	
A$splash_screen$165:	
	.db $33
	
; Data from CEF to CF1 (3 bytes)	
A$splash_screen$166:	
	.db $CD $F2 $0B
	
; Data from CF2 to CF2 (1 bytes)	
A$splash_screen$167:	
	.db $33
	
; Data from CF3 to CF3 (1 bytes)	
A$splash_screen$168:	
	.db $7D
	
; Data from CF4 to CF4 (1 bytes)	
A$splash_screen$172:	
C$splash_screen.c$39$1_0$25:	
	.db $B7
	
; Data from CF5 to CF6 (2 bytes)	
A$splash_screen$173:	
	.db $28 $0D
	
; Data from CF7 to CF9 (3 bytes)	
A$splash_screen$177:	
C$splash_screen.c$41$2_0$29:	
	.db $11 $0A $0C
	
; Data from CFA to CFA (1 bytes)	
A$splash_screen$178:	
	.db $D5
	
; Data from CFB to CFD (3 bytes)	
A$splash_screen$179:	
	.db $21 $0B $0D
	
; Data from CFE to CFE (1 bytes)	
A$splash_screen$180:	
	.db $E5
	
; Data from CFF to D01 (3 bytes)	
A$splash_screen$181:	
	.db $CD $06 $0B
	
; Data from D02 to D02 (1 bytes)	
A$splash_screen$182:	
	.db $F1
	
; Data from D03 to D03 (1 bytes)	
A$splash_screen$183:	
	.db $F1
	
; Data from D04 to D04 (1 bytes)	
A$splash_screen$188:	
C$splash_screen.c$44$1_0$25:	
	.db $C1
	
; Data from D05 to D05 (1 bytes)	
A$splash_screen$189:	
	.db $E1
	
; Data from D06 to D06 (1 bytes)	
A$splash_screen$190:	
	.db $E5
	
; Data from D07 to D07 (1 bytes)	
A$splash_screen$191:	
	.db $C5
	
; Data from D08 to D09 (2 bytes)	
A$splash_screen$192:	
	.db $36 $01
	
; Data from D0A to D0A (1 bytes)	
A$splash_screen$200:	
C$splash_screen.c$45$1_0$25:	
XG$screen_splash_screen_update$0:	
	.db $C9
	
; Data from D0B to D16 (12 bytes)	
Fsplash_screen$__str_1$0_0$0:	
	.db $48 $45 $4C $4C $4F $20 $57 $4F $52 $4C $44 $00
	
; Data from D17 to D26 (16 bytes)	
G$font__palette__bin$0_0$0:	
_font__palette__bin:	
	.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
	
; Data from D27 to DA6 (128 bytes)	
G$font__tilemap__bin$0_0$0:	
_font__tilemap__bin:	
	.db $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
	.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
	.db $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $15 $00 $16 $00 $17 $00
	.db $18 $00 $19 $00 $1A $00 $1B $00 $1C $00 $1D $00 $1E $00 $1F $00
	.db $20 $00 $21 $00 $22 $00 $23 $00 $24 $00 $25 $00 $26 $00 $27 $00
	.db $28 $00 $29 $00 $2A $00 $2B $00 $2C $00 $2D $00 $2E $00 $2F $00
	.db $30 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00 $36 $00 $37 $00
	.db $38 $00 $39 $00 $3A $00 $3B $00 $3C $00 $3D $00 $3E $00 $3F $00
	
; Data from DA7 to 103D (663 bytes)	
G$font__tiles__psgcompr$0_0$0:	
_font__tiles__psgcompr:	
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
	.db $AA $FE $00 $7F $00 $00 $00
	
; Data from 103E to 1060 (35 bytes)	
G$sfx_cheat_psg$0_0$0:	
_sfx_cheat_psg:	
	.db $CE $4B $D0 $3B $D1 $38 $CF $47 $08 $02 $00 $C7 $49 $0A $02 $00
	.db $09 $02 $00 $45 $D0 $3B $D1 $3B $D2 $3A $D3 $39 $D4 $39 $C3 $55
	.db $DF $3C $00
	
; Data from 1061 to 1080 (32 bytes)	
G$sfx_right_psg$0_0$0:	
_sfx_right_psg:	
	.db $C5 $4D $D0 $3B $CE $48 $3B $C7 $44 $D5 $3A $CA $46 $3B $C5 $4D
	.db $DA $3A $09 $04 $00 $DB $3B $CA $46 $DD $3A $C0 $40 $DF $38 $00
	
; Data from 1081 to 10A3 (35 bytes)	
G$sfx_wrong_psg$0_0$0:	
_sfx_wrong_psg:	
	.db $C5 $4D $D0 $3B $C0 $4A $3B $C7 $49 $3B $CE $48 $D5 $3B $C5 $4D
	.db $3B $C0 $4A $3B $C7 $49 $DA $3B $CE $48 $3B $C0 $49 $3B $C0 $40
	.db $DF $3B $00
	
; Data from 10A4 to 10AB (8 bytes)	
__divuint:	
	.db $F1 $E1 $D1 $D5 $E5 $F5 $18 $0A
	
; Data from 10AC to 10B2 (7 bytes)	
__divuchar:	
	.db $21 $03 $00 $39 $5E $2B $6E
	
; Data from 10B3 to 10B5 (3 bytes)	
__divu8:	
	.db $26 $00 $54
	
; Data from 10B6 to 10E4 (47 bytes)	
__divu16:	
	.db $7B $E6 $80 $B2 $20 $10 $06 $10 $ED $6A $17 $93 $30 $01 $83 $3F
	.db $ED $6A $10 $F6 $5F $C9 $06 $09 $7D $6C $26 $00 $CB $1D $ED $6A
	.db $ED $52 $30 $01 $19 $3F $17 $10 $F5 $CB $10 $50 $5F $EB $C9
	
_UNSAFE_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableY	; SpriteTableY = $C038
		call _OUTI64
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableXN	; SpriteTableXN = $C078
		jp _OUTI128
	
; Data from 10FD to 1119 (29 bytes)	
_UNSAFE_SMS_VRAMmemcpy32:	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01
	
; Data from 111A to 1136 (29 bytes)	
_UNSAFE_SMS_VRAMmemcpy64:	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01
	
; Data from 1137 to 1153 (29 bytes)	
_UNSAFE_SMS_VRAMmemcpy128:	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $99 $00
	
_SMS_init:	
		ld hl, $0000
		push hl
		call _SMS_setSpritePaletteColor
		pop af
		ld c, $00
-:	
		ld hl, _VDPReg_init	; _VDPReg_init = $11A8
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
		call _SMS_initSprites
		call _SMS_finalizeSprites
		call _SMS_copySpritestoSAT
		call _SMS_resetPauseRequest
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
		ld hl, VDPType	; VDPType = $C033
		ld (hl), $80
		ret
	
+:	
		ld hl, VDPType	; VDPType = $C033
		ld (hl), $40
		ret
	
; Data from 11A8 to 11B2 (11 bytes)	
_VDPReg_init:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF
	
; Data from 11B3 to 11BA (8 bytes)	
_SMS_VDPType:	
	.db $FD $21 $33 $C0 $FD $6E $00 $C9
	
_SMS_VDPturnOnFeature:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C11F
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
	
_SMS_VDPturnOffFeature:	
		ld a, l
		ld e, h
		cpl
		ld b, a
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C11F
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
	
; Data from 11EB to 11F4 (10 bytes)	
_SMS_setBGScrollX:	
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9
	
; Data from 11F5 to 11FE (10 bytes)	
_SMS_setBGScrollY:	
	.db $F3 $7D $D3 $BF $3E $89 $D3 $BF $FB $C9
	
; Data from 11FF to 1208 (10 bytes)	
_SMS_setBackdropColor:	
	.db $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
	
_SMS_useFirstHalfTilesforSprites:	
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
	
_SMS_setSpriteMode:	
		ld c, l
		bit 0, c
		jr z, +
		push bc
		ld hl, $0102
		call _SMS_VDPturnOnFeature
		pop bc
		ld hl, spritesHeight	; spritesHeight = $C121
		ld (hl), $10
		jr ++
	
+:	
		push bc
		ld hl, $0102
		call _SMS_VDPturnOffFeature
		pop bc
		ld hl, spritesHeight	; spritesHeight = $C121
		ld (hl), $08
++:	
		bit 1, c
		jr z, +
		ld hl, $0101
		call _SMS_VDPturnOnFeature
		ld hl, spritesWidth	; spritesWidth = $C122
		ld (hl), $10
		ld iy, spritesHeight	; spritesHeight = $C121
		sla (iy+0)
		ret
	
+:	
		ld hl, $0101
		call _SMS_VDPturnOffFeature
		ld hl, spritesWidth	; spritesWidth = $C122
		ld (hl), $08
		ret
	
; Data from 1262 to 1275 (20 bytes)	
_SMS_setBGPaletteColor:	
	.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	.db $7E $D3 $BE $C9
	
_SMS_setSpritePaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, PSGChan1Volume	; PSGChan1Volume = $C010
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, _SMS_crt0_RST08 - 3	; _SMS_crt0_RST08 - 3 = $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
; Data from 128A to 129D (20 bytes)	
_SMS_loadBGPalette:	
	.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9
	
; Data from 129E to 12B1 (20 bytes)	
_SMS_loadSpritePalette:	
	.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9
	
; Data from 12B2 to 12B5 (4 bytes)	
_SMS_setColor:	
	.db $7D $D3 $BE $C9
	
_SMS_initSprites:	
		ld hl, SpriteNextFree	; SpriteNextFree = $C0F8
		ld (hl), $00
		ret
	
; Data from 12BC to 1310 (85 bytes)	
_SMS_addSprite:	
	.db $3A $F8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $38 $21 $F8 $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $F8 $C0 $87 $4F $21 $78 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $F8 $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_SMS_finalizeSprites:	
		ld a, (SpriteNextFree)	; SpriteNextFree = $C0F8
		sub $40
		ret nc
		ld bc, SpriteTableY	; SpriteTableY = $C038
		ld hl, (SpriteNextFree)	; SpriteNextFree = $C0F8
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, SpriteTableY	; SpriteTableY = $C038
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
		ld bc, SpriteTableXN	; SpriteTableXN = $C078
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
	
_SMS_waitForVBlank:	
		ld hl, VDPBlank	; VDPBlank = $C030
		ld (hl), $00
-:	
		ld hl, VDPBlank	; VDPBlank = $C030
		bit 0, (hl)
		jr z, -
		ret
	
_SMS_getKeysStatus:	
		ld hl, (KeysStatus)	; KeysStatus = $C034
		ret
	
; Data from 135D to 1379 (29 bytes)	
_SMS_getKeysPressed:	
	.db $FD $21 $36 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $34 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9
	
; Data from 137A to 1390 (23 bytes)	
_SMS_getKeysHeld:	
	.db $3A $34 $C0 $FD $21 $36 $C0 $FD $A6 $00 $6F $3A $35 $C0 $FD $21
	.db $36 $C0 $FD $A6 $01 $67 $C9
	
; Data from 1391 to 13AD (29 bytes)	
_SMS_getKeysReleased:	
	.db $FD $21 $34 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $79 $FD
	.db $21 $36 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67 $C9
	
_SMS_queryPauseRequested:	
		ld iy, PauseRequested	; PauseRequested = $C032
		ld l, (iy+0)
		ret
	
_SMS_resetPauseRequest:	
		ld hl, PauseRequested	; PauseRequested = $C032
		ld (hl), $00
		ret
	
; Data from 13BC to 13CC (17 bytes)	
_SMS_setLineInterruptHandler:	
	.db $21 $02 $00 $39 $7E $32 $F9 $C0 $21 $03 $00 $39 $7E $32 $FA $C0
	.db $C9
	
; Data from 13CD to 13DB (15 bytes)	
_SMS_setLineCounter:	
	.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	
; Data from 13DC to 13DF (4 bytes)	
_SMS_getVCount:	
	.db $DB $7E $6F $C9
	
; Data from 13E0 to 13E3 (4 bytes)	
_SMS_getHCount:	
	.db $DB $7F $6F $C9
	
_SMS_isr:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (SMS_VDPFlags), a	; SMS_VDPFlags = $C031
		rlca
		jr nc, +
		ld hl, VDPBlank	; VDPBlank = $C030
		ld (hl), $01
		ld hl, (KeysStatus)	; KeysStatus = $C034
		ld (PreviousKeysStatus), hl	; PreviousKeysStatus = $C036
		in a, (Port_IOPort1)
		cpl
		ld hl, KeysStatus	; KeysStatus = $C034
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
		ld hl, (SMS_theLineInterruptHandler)	; SMS_theLineInterruptHandler = $C0F9
		call ___sdcc_call_hl
		pop iy
		pop de
		pop bc
++:	
		pop hl
		pop af
		ei
		reti
	
_SMS_nmi_isr:	
		push af
		push bc
		push de
		push hl
		push iy
		ld hl, PauseRequested	; PauseRequested = $C032
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
; Data from 142D to 160D (481 bytes)	
_SMS_loadSTMcompressedTileMapAre:	
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
	
___sdcc_call_hl:	
		jp (hl)
	
; Data from 160F to 16F0 (226 bytes)	
_SMS_loadPSGaidencompressedTiles:	
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
	.db $16 $C9
	
; Data from 16F1 to 16FC (12 bytes)	
__moduchar:	
	.db $21 $03 $00 $39 $5E $2B $6E $CD $B3 $10 $EB $C9
	
; Data from 16FD to 1707 (11 bytes)	
__moduint:	
	.db $F1 $E1 $D1 $D5 $E5 $F5 $CD $B6 $10 $EB $C9
	
; Data from 1708 to 1709 (2 bytes)	
Finput_manager$__xinit_curr_joyp:	
	.db $00 $00
	
; Data from 170A to 170F (6 bytes)	
Finput_manager$__xinit_prev_joyp:	
	.db $00 $00 $04 $20 $08 $08
	
gsinit:	
		ld bc, _SMS_crt0_RST08 + 2	; _SMS_crt0_RST08 + 2 = $0008
		ld a, b
		or c
		jr z, +
		ld de, Finput_manager$curr_joypad1$0_0$	; Finput_manager$curr_joypad1$0_0$ = $C11B
		ld hl, Finput_manager$__xinit_curr_joyp	; Finput_manager$__xinit_curr_joyp = $1708
		ldir
+:	
		ret
	
	; Data from 1720 to 7F8B (26732 bytes)
	.dsb 26732, $00
	
; Data from 7F8C to 7FC7 (60 bytes)	
G$__SMS__SDSC_descr$0_0$0:	
___SMS__SDSC_descr:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00
	
; Data from 7FC8 to 7FD1 (10 bytes)	
G$__SMS__SDSC_name$0_0$0:	
___SMS__SDSC_name:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	
; Data from 7FD2 to 7FDF (14 bytes)	
G$__SMS__SDSC_author$0_0$0:	
___SMS__SDSC_author:	
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00
	
; Data from 7FE0 to 7FEF (16 bytes)	
G$__SMS__SDSC_signature$0_0$0:	
___SMS__SDSC_signature:	
	.db $53 $44 $53 $43 $01 $00 $27 $03 $21 $20 $D2 $7F $C8 $7F $8C $7F
	
; Data from 7FF0 to 7FFF (16 bytes)	
G$__SMS__SEGA_signature$0_0$0:	
___SMS__SEGA_signature:	
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $A0 $CF $99 $99 $00 $4C