	
; This disassembly was created using Emulicious (http://www.emulicious.net)	
	
_LABEL_0_:	
		di
		im 1
		jp _LABEL_70_
	
_SMS_crt0_RST08:	
		nop
		nop
_LABEL_8_:	
		ld c, Port_VDPAddress
		di
		out (c), l
		out (c), h
		ei
		ret
	
_SMS_crt0_RST18:	
		nop
		nop
		nop
		nop
		nop
		nop
		nop
_LABEL_18_:	
		ld a, l
		out (Port_VDPData), a
		ld a, h
		sub $00
		nop
		out (Port_VDPData), a
		ret
	
	; Data from 22 to 37 (22 bytes)
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
		ld hl, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
		ld (hl), a
		ld de, PSGMusicStatus	; PSGMusicStatus = $C001
		ld bc, $1FF0
		ldir
		call gsinit
		call _SMS_init
		ei
		call A$main$83
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
	
A$main$83:	
C$main.c$3$0$0:	
C$main.c$9$1$55:	
G$main$0$0:	
_main:	
		call A$asm_manager$59
		call A$_sms_manager$132
		call A$_sms_manager$163
		call A$_sms_manager$887
		ld b, l
		push bc
		inc sp
		call A$_sms_manager$323
		inc sp
		call A$_sms_manager$343
		call A$_sms_manager$905
		push hl
		call A$_sms_manager$379
		pop af
		call A$content_manager$65
		call A$content_manager$263
		call A$scroll_manager$61
		ld a, $01
		push af
		inc sp
		call A$screen_manager$80
		inc sp
		call A$_sms_manager$145
A$main$140:	
C$main.c$27$3$57:	
		call A$_sms_manager$820
		ld a, l
		or a
		jr z, A$main$174
		call A$_sms_manager$837
		ld iy, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
		ld a, (iy+0)
		xor $01
		ld (iy+0), a
		bit 0, (iy+0)
		jr z, A$main$169
		call A$_snd_manager$275
		jr A$main$174
	
A$main$169:	
C$main.c$37$5$60:	
		call A$_snd_manager$292
A$main$174:	
C$main.c$41$3$57:	
		ld hl, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
		bit 0, (hl)
		jr nz, A$main$140
		call A$_sms_manager$735
		call A$input_manager$64
		call A$screen_manager$166
		call A$_sms_manager$752
		call A$_sms_manager$769
		call A$_sms_manager$786
		call A$_snd_manager$309
		call A$_snd_manager$326
		jr A$main$140
	
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
	
_PSGResume:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		ret nz
		ld a, (PSGChan0Volume)	; PSGChan0Volume = $C00F
		or $90
		out (Port_PSG), a
		ld a, (PSGChan1Volume)	; PSGChan1Volume = $C010
		or $B0
		out (Port_PSG), a
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr nz, +
		ld a, (PSGChan2LowTone)	; PSGChan2LowTone = $C013
		and $0F
		or $C0
		out (Port_PSG), a
		ld a, (PSGChan2HighTone)	; PSGChan2HighTone = $C014
		and $3F
		out (Port_PSG), a
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
		or $D0
		out (Port_PSG), a
+:	
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr nz, +
		ld a, (PSGChan3LowTone)	; PSGChan3LowTone = $C015
		and $0F
		or $E0
		out (Port_PSG), a
		ld a, (PSGChan3Volume)	; PSGChan3Volume = $C012
		or $F0
		out (Port_PSG), a
+:	
		ld hl, PSGMusicStatus	; PSGMusicStatus = $C001
		ld (hl), $01
		ret
	
_PSGPlay:	
		call _PSGStop
		ld hl, PSGLoopFlag	; PSGLoopFlag = $C009
		ld (hl), $01
		pop de
		pop bc
		push bc
		push de
		ld (PSGMusicStart), bc	; PSGMusicStart = $C002
		ld (PSGMusicPointer), bc	; PSGMusicPointer = $C004
		ld (PSGMusicLoopPoint), bc	; PSGMusicLoopPoint = $C006
		ld hl, PSGMusicSkipFrames	; PSGMusicSkipFrames = $C008
		ld (hl), $00
		ld hl, PSGMusicSubstringLen	; PSGMusicSubstringLen = $C00C
		ld (hl), $00
		ld hl, PSGMusicLastLatch	; PSGMusicLastLatch = $C00A
		ld (hl), $9F
		ld hl, PSGMusicStatus	; PSGMusicStatus = $C001
		ld (hl), $01
		ret
	
; Data from 321 to 326 (6 bytes)	
_PSGCancelLoop:	
	.db $21 $09 $C0 $36 $00 $C9
	
_PSGPlayNoRepeat:	
		pop bc
		pop hl
		push hl
		push bc
		push hl
		call _PSGPlay
		pop af
		ld hl, PSGLoopFlag	; PSGLoopFlag = $C009
		ld (hl), $00
		ret
	
_PSGGetStatus:	
		ld iy, PSGMusicStatus	; PSGMusicStatus = $C001
		ld l, (iy+0)
		ret
	
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
		jr z, _LABEL_3C7_
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
		ld de, $000F
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
		ld de, $000F
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
_LABEL_3C7_:	
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
		ld de, $000F
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
		ld bc, $000F
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
	
_PSGSetMusicVolumeAttenuation:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (ix+4)
		ld (PSGMusicVolumeAttenuation), a	; PSGMusicVolumeAttenuation = $C00B
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jp z, _LABEL_538_
		ld a, (PSGChan0Volume)	; PSGChan0Volume = $C00F
		and $0F
		ld c, a
		ld e, $00
		ld iy, PSGMusicVolumeAttenuation	; PSGMusicVolumeAttenuation = $C00B
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld a, c
		add a, (ix-2)
		ld b, a
		ld a, e
		adc a, (ix-1)
		ld e, a
		ld c, (iy+0)
		ld a, $0F
		cp b
		ld a, $00
		sbc a, e
		jp po, +
		xor $80
+:	
		jp p, +
		ld de, $000F
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
		ld de, $000F
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
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr nz, +++
		ld a, (PSGChan2Volume)	; PSGChan2Volume = $C011
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
		ld de, $000F
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
		jr nz, _LABEL_538_
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
		ld bc, $000F
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
_LABEL_538_:	
		ld sp, ix
		pop ix
		ret
	
_PSGSFXStop:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		jp z, _LABEL_602_
		ld iy, PSGMusicVolumeAttenuation	; PSGMusicVolumeAttenuation = $C00B
		ld a, (iy+0)
		ld (ix-2), a
		xor a
		ld (ix-1), a
		ld c, (iy+0)
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_5B1_
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		jr z, _LABEL_5A8_
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
		ld de, $000F
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
	
_LABEL_5A8_:	
		ld a, $DF
		out (Port_PSG), a
+:	
		ld hl, PSGChannel2SFX	; PSGChannel2SFX = $C016
		ld (hl), $00
_LABEL_5B1_:	
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr z, _LABEL_5FD_
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
		ld bc, $000F
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
_LABEL_5FD_:	
		ld hl, PSGSFXStatus	; PSGSFXStatus = $C01A
		ld (hl), $00
_LABEL_602_:	
		ld sp, ix
		pop ix
		ret
	
_PSGSFXPlay:	
		call _PSGSFXStop
		ld hl, PSGSFXLoopFlag	; PSGSFXLoopFlag = $C022
		ld (hl), $00
		pop de
		pop bc
		push bc
		push de
		ld (PSGSFXStart), bc	; PSGSFXStart = $C01B
		ld (PSGSFXPointer), bc	; PSGSFXPointer = $C01D
		ld (PSGSFXLoopPoint), bc	; PSGSFXLoopPoint = $C01F
		ld hl, PSGSFXSkipFrames	; PSGSFXSkipFrames = $C021
		ld (hl), $00
		ld hl, PSGSFXSubstringLen	; PSGSFXSubstringLen = $C023
		ld (hl), $00
		ld hl, $0004
		add hl, sp
		ld c, (hl)
		bit 0, c
		jr z, +
		ld de, $0001
		jr ++
	
+:	
		ld de, $0000
++:	
		ld hl, PSGChannel2SFX	; PSGChannel2SFX = $C016
		ld (hl), e
		bit 1, c
		jr z, +
		ld bc, $0001
		jr ++
	
+:	
		ld bc, $0000
++:	
		ld hl, PSGChannel3SFX	; PSGChannel3SFX = $C017
		ld (hl), c
		ld hl, PSGSFXStatus	; PSGSFXStatus = $C01A
		ld (hl), $01
		ret
	
; Data from 654 to 659 (6 bytes)	
_PSGSFXCancelLoop:	
	.db $21 $22 $C0 $36 $00 $C9
	
_PSGSFXGetStatus:	
		ld iy, PSGSFXStatus	; PSGSFXStatus = $C01A
		ld l, (iy+0)
		ret
	
; Data from 662 to 682 (33 bytes)	
_PSGSFXPlayLoop:	
	.db $FD $21 $04 $00 $FD $39 $FD $7E $00 $F5 $33 $FD $2B $FD $2B $FD
	.db $6E $00 $FD $66 $01 $E5 $CD $07 $06 $F1 $33 $21 $22 $C0 $36 $01
	.db $C9
	
_PSGFrame:	
		ld a, (PSGMusicStatus)	; PSGMusicStatus = $C001
		or a
		ret z
		ld a, (PSGMusicSkipFrames)	; PSGMusicSkipFrames = $C008
		or a
		jp nz, _LABEL_717_
		ld hl, (PSGMusicPointer)	; PSGMusicPointer = $C004
_LABEL_692_:	
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
		jr c, _LABEL_71C_
		ld (PSGMusicLastLatch), a	; PSGMusicLastLatch = $C00A
		bit 4, a
		jr nz, ++
		bit 6, a
		jp z, _LABEL_743_
		bit 5, a
		jr z, +
		ld (PSGChan3LowTone), a	; PSGChan3LowTone = $C015
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jp nz, _LABEL_692_
		ld a, (PSGChan3LowTone)	; PSGChan3LowTone = $C015
		and $03
		cp $03
		jr nz, _LABEL_742_
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		jr z, _LABEL_742_
		ld (PSGChannel3SFX), a	; PSGChannel3SFX = $C017
		ld a, $FF
		out (Port_PSG), a
		jp _LABEL_692_
	
+:	
		ld (PSGChan2LowTone), a	; PSGChan2LowTone = $C013
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_742_
		jp _LABEL_692_
	
++:	
		bit 6, a
		jr nz, ++
		bit 5, a
		jr z, +
		ld (PSGChan1Volume), a	; PSGChan1Volume = $C010
		jp _LABEL_749_
	
+:	
		ld (PSGChan0Volume), a	; PSGChan0Volume = $C00F
		jp _LABEL_749_
	
++:	
		bit 5, a
		jr z, +
		ld (PSGChan3Volume), a	; PSGChan3Volume = $C012
		ld a, (PSGChannel3SFX)	; PSGChannel3SFX = $C017
		or a
		jr z, _LABEL_748_
		jp _LABEL_692_
	
+:	
		ld (PSGChan2Volume), a	; PSGChan2Volume = $C011
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_748_
		jp _LABEL_692_
	
_LABEL_717_:	
		dec a
		ld (PSGMusicSkipFrames), a	; PSGMusicSkipFrames = $C008
		ret
	
_LABEL_71C_:	
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
		jp _LABEL_692_
	
+++:	
		bit 6, a
		jr nz, ++++++
		jp _LABEL_742_
	
++++:	
		ld (PSGMusicLoopPoint), hl	; PSGMusicLoopPoint = $C006
		jp _LABEL_692_
	
+++++:	
		ld a, (PSGLoopFlag)	; PSGLoopFlag = $C009
		or a
		jp z, _PSGStop
		ld hl, (PSGMusicLoopPoint)	; PSGMusicLoopPoint = $C006
		jp _LABEL_692_
	
_LABEL_77B_:	
		sub $04
		ld (PSGMusicSubstringLen), a	; PSGMusicSubstringLen = $C00C
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld (PSGMusicSubstringRetAddr), hl	; PSGMusicSubstringRetAddr = $C00D
		ld hl, (PSGMusicStart)	; PSGMusicStart = $C002
		add hl, bc
		jp _LABEL_692_
	
++++++:	
		ld a, b
		ld (PSGChan2HighTone), a	; PSGChan2HighTone = $C014
		ld a, (PSGChannel2SFX)	; PSGChannel2SFX = $C016
		or a
		jr z, _LABEL_742_
		jp _LABEL_692_
	
	; Data from 79B to 79B (1 bytes)
	.db $C9
	
_PSGSFXFrame:	
		ld a, (PSGSFXStatus)	; PSGSFXStatus = $C01A
		or a
		ret z
		ld a, (PSGSFXSkipFrames)	; PSGSFXSkipFrames = $C021
		or a
		jp nz, +++
		ld hl, (PSGSFXPointer)	; PSGSFXPointer = $C01D
_LABEL_7AB_:	
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
		jp _LABEL_7AB_
	
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
		jp _LABEL_7AB_
	
++:	
		ld a, (PSGSFXLoopFlag)	; PSGSFXLoopFlag = $C022
		or a
		jp z, _PSGSFXStop
		ld hl, (PSGSFXLoopPoint)	; PSGSFXLoopPoint = $C01F
		ld (PSGSFXPointer), hl	; PSGSFXPointer = $C01D
		jp _LABEL_7AB_
	
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
		jp _LABEL_7AB_
	
	; Data from 821 to 821 (1 bytes)
	.db $C9
	
A$_sms_manager$132:	
C$_sms_manager.c$11$0$0:	
C$_sms_manager.c$13$1$74:	
C$_sms_manager.c$14$1$74:	
G$devkit_SMS_init$0$0:	
XG$devkit_SMS_init$0$0:	
_devkit_SMS_init:	
		jp _SMS_init
	
A$_sms_manager$145:	
C$_sms_manager.c$15$1$74:	
C$_sms_manager.c$17$1$75:	
G$devkit_SMS_displayOn$0$0:	
_devkit_SMS_displayOn:	
		ld hl, $0140
		jp _SMS_VDPturnOnFeature
	
A$_sms_manager$163:	
C$_sms_manager.c$19$1$75:	
C$_sms_manager.c$21$1$76:	
G$devkit_SMS_displayOff$0$0:	
_devkit_SMS_displayOff:	
		ld hl, $0140
		jp _SMS_VDPturnOffFeature
	
A$_sms_manager$181:	
C$_sms_manager.c$23$1$76:	
C$_sms_manager.c$25$1$78:	
G$devkit_SMS_mapROMBank$0$0:	
_devkit_SMS_mapROMBank:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (_RAM_FFFF_), a
		ret
	
A$_sms_manager$202:	
C$_sms_manager.c$28$1$78:	
C$_sms_manager.c$30$1$80:	
G$devkit_SMS_setBGScrollX$0$0:	
_devkit_SMS_setBGScrollX:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _SMS_setBGScrollX
	
A$_sms_manager$222:	
C$_sms_manager.c$32$1$80:	
C$_sms_manager.c$34$1$82:	
G$devkit_SMS_setBGScrollY$0$0:	
_devkit_SMS_setBGScrollY:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _SMS_setBGScrollY
	
A$_sms_manager$242:	
C$_sms_manager.c$37$1$82:	
C$_sms_manager.c$39$1$83:	
G$devkit_SMS_enableSRAM$0$0:	
_devkit_SMS_enableSRAM:	
		ld hl, _RAM_FFFC_
		ld (hl), $08
		ret
	
A$_sms_manager$261:	
C$_sms_manager.c$41$1$83:	
C$_sms_manager.c$43$1$85:	
G$devkit_SMS_enableSRAMBank$0$0:	
_devkit_SMS_enableSRAMBank:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		add a, a
		add a, a
		set 3, a
		and $0C
		ld (_RAM_FFFC_), a
		ret
	
A$_sms_manager$286:	
C$_sms_manager.c$45$1$85:	
C$_sms_manager.c$47$1$86:	
G$devkit_SMS_disableSRAM$0$0:	
_devkit_SMS_disableSRAM:	
		ld hl, _RAM_FFFC_
		ld (hl), $00
		ret
	
A$_sms_manager$305:	
C$_sms_manager.c$49$1$86:	
C$_sms_manager.c$51$1$87:	
G$devkit_SMS_SRAM$0$0:	
_devkit_SMS_SRAM:	
		ld hl, _SRAM_0_
		ret
	
A$_sms_manager$323:	
C$_sms_manager.c$55$1$87:	
C$_sms_manager.c$57$1$89:	
G$devkit_SMS_setSpriteMode$0$0:	
_devkit_SMS_setSpriteMode:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		jp _SMS_setSpriteMode
	
A$_sms_manager$343:	
C$_sms_manager.c$59$1$89:	
C$_sms_manager.c$61$1$90:	
G$devkit_SMS_useFirstHalfTilesfo:	
_devkit_SMS_useFirstHalfTilesfor:	
		ld l, $00
		jp _SMS_useFirstHalfTilesforSprites
	
A$_sms_manager$361:	
C$_sms_manager.c$63$1$90:	
C$_sms_manager.c$65$1$91:	
G$devkit_SMS_useFirstHalfTilesfo:	
_devkit_SMS_useFirstHalfTilesfor:	
		ld l, $01
		jp _SMS_useFirstHalfTilesforSprites
	
A$_sms_manager$379:	
C$_sms_manager.c$67$1$91:	
C$_sms_manager.c$69$1$93:	
G$devkit_SMS_VDPturnOnFeature$0$:	
_devkit_SMS_VDPturnOnFeature:	
		pop bc
		pop hl
		push hl
		push bc
		jp _SMS_VDPturnOnFeature
	
A$_sms_manager$400:	
C$_sms_manager.c$72$1$93:	
C$_sms_manager.c$74$1$95:	
G$devkit_SMS_loadPSGaidencompres:	
_devkit_SMS_loadPSGaidencompress:	
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
		call _SMS_loadPSGaidencompressedTiles
		pop af
		pop af
		ret
	
A$_sms_manager$432:	
C$_sms_manager.c$76$1$95:	
C$_sms_manager.c$78$1$97:	
G$devkit_SMS_loadSTMcompressedTi:	
_devkit_SMS_loadSTMcompressedTil:	
		ld a, $20
		push af
		inc sp
		ld hl, $0005
		add hl, sp
		ld c, (hl)
		inc hl
		ld b, (hl)
		push bc
		ld hl, $0006
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		ld hl, $0006
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call _SMS_loadSTMcompressedTileMapAre
		pop af
		pop af
		inc sp
		ret
	
A$_sms_manager$472:	
C$_sms_manager.c$81$1$97:	
C$_sms_manager.c$83$1$99:	
G$devkit_SMS_loadBGPalette$0$0:	
_devkit_SMS_loadBGPalette:	
		pop bc
		pop hl
		push hl
		push bc
		jp _SMS_loadBGPalette
	
A$_sms_manager$493:	
C$_sms_manager.c$85$1$99:	
C$_sms_manager.c$87$1$101:	
G$devkit_SMS_loadSpritePalette$0:	
_devkit_SMS_loadSpritePalette:	
		pop bc
		pop hl
		push hl
		push bc
		jp _SMS_loadSpritePalette
	
A$_sms_manager$514:	
C$_sms_manager.c$89$1$101:	
C$_sms_manager.c$91$1$103:	
G$devkit_SMS_setBGPaletteColor$0:	
_devkit_SMS_setBGPaletteColor:	
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		add a, a
		add a, a
		ld hl, $0003
		add hl, sp
		or (hl)
		ld c, a
		ld hl, $0005
		add hl, sp
		ld a, (hl)
		rlca
		rlca
		rlca
		rlca
		and $F0
		or c
		ld b, a
		push bc
		inc sp
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call _SMS_setBGPaletteColor
		pop af
		ret
	
A$_sms_manager$562:	
C$_sms_manager.c$94$1$103:	
C$_sms_manager.c$96$1$105:	
G$devkit_SMS_setSpritePaletteCol:	
_devkit_SMS_setSpritePaletteColo:	
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		add a, a
		add a, a
		ld hl, $0003
		add hl, sp
		or (hl)
		ld c, a
		ld hl, $0005
		add hl, sp
		ld a, (hl)
		rlca
		rlca
		rlca
		rlca
		and $F0
		or c
		ld b, a
		push bc
		inc sp
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call _SMS_setSpritePaletteColor
		pop af
		ret
	
A$_sms_manager$607:	
C$_sms_manager.c$100$1$105:	
G$devkit_SMS_setNextTileatXY$0$0:	
_devkit_SMS_setNextTileatXY:	
		push ix
		ld ix, $0000
		add ix, sp
		ld l, (ix+5)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld c, l
		ld a, h
		or $78
		ld b, a
		ld l, (ix+4)
		ld h, $00
		add hl, hl
		ld a, l
		or c
		ld l, a
		ld a, h
		or b
		ld h, a
		pop ix
		jp _SMS_crt0_RST08
	
A$_sms_manager$652:	
C$_sms_manager.c$104$1$107:	
C$_sms_manager.c$106$1$109:	
G$devkit_SMS_setTile$0$0:	
_devkit_SMS_setTile:	
		pop bc
		pop hl
		push hl
		push bc
		jp _SMS_crt0_RST18
	
A$_sms_manager$673:	
C$_sms_manager.c$108$1$109:	
C$_sms_manager.c$110$1$111:	
G$devkit_SMS_setTilePriority$0$0:	
_devkit_SMS_setTilePriority:	
		ld iy, $0002
		add iy, sp
		ld l, (iy+0)
		ld a, $00
		or $18
		ld h, a
		jp _SMS_crt0_RST18
	
A$_sms_manager$696:	
C$_sms_manager.c$113$1$111:	
C$_sms_manager.c$115$1$113:	
G$devkit_SMS_addSprite$0$0:	
_devkit_SMS_addSprite:	
		ld hl, $0004
		add hl, sp
		ld b, (hl)
		push bc
		inc sp
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call _SMS_addSprite
		pop af
		inc sp
		ret
	
A$_sms_manager$735:	
C$_sms_manager.c$117$1$113:	
C$_sms_manager.c$119$1$114:	
C$_sms_manager.c$120$1$114:	
G$devkit_SMS_initSprites$0$0:	
XG$devkit_SMS_initSprites$0$0:	
_devkit_SMS_initSprites:	
		jp _SMS_initSprites
	
A$_sms_manager$752:	
C$_sms_manager.c$121$1$114:	
C$_sms_manager.c$123$1$115:	
C$_sms_manager.c$124$1$115:	
G$devkit_SMS_finalizeSprites$0$0:	
XG$devkit_SMS_finalizeSprites$0$:	
_devkit_SMS_finalizeSprites:	
		jp _SMS_finalizeSprites
	
A$_sms_manager$769:	
C$_sms_manager.c$125$1$115:	
C$_sms_manager.c$127$1$116:	
C$_sms_manager.c$128$1$116:	
G$devkit_SMS_waitForVBlank$0$0:	
XG$devkit_SMS_waitForVBlank$0$0:	
_devkit_SMS_waitForVBlank:	
		jp _SMS_waitForVBlank
	
A$_sms_manager$786:	
C$_sms_manager.c$129$1$116:	
C$_sms_manager.c$131$1$117:	
C$_sms_manager.c$132$1$117:	
G$devkit_SMS_copySpritestoSAT$0$:	
XG$devkit_SMS_copySpritestoSAT$0:	
_devkit_SMS_copySpritestoSAT:	
		jp _UNSAFE_SMS_copySpritestoSAT
	
A$_sms_manager$803:	
C$_sms_manager.c$133$1$117:	
C$_sms_manager.c$135$1$118:	
C$_sms_manager.c$136$1$118:	
G$devkit_UNSAFE_SMS_copySpritest:	
XG$devkit_UNSAFE_SMS_copySprites:	
_devkit_UNSAFE_SMS_copySpritesto:	
		jp _UNSAFE_SMS_copySpritestoSAT
	
A$_sms_manager$820:	
C$_sms_manager.c$138$1$118:	
C$_sms_manager.c$140$1$119:	
C$_sms_manager.c$141$1$119:	
G$devkit_SMS_queryPauseRequested:	
XG$devkit_SMS_queryPauseRequeste:	
_devkit_SMS_queryPauseRequested:	
		jp _SMS_queryPauseRequested
	
A$_sms_manager$837:	
C$_sms_manager.c$142$1$119:	
C$_sms_manager.c$144$1$120:	
C$_sms_manager.c$145$1$120:	
G$devkit_SMS_resetPauseRequest$0:	
XG$devkit_SMS_resetPauseRequest$:	
_devkit_SMS_resetPauseRequest:	
		jp _SMS_resetPauseRequest
	
A$_sms_manager$850:	
C$_sms_manager.c$148$1$120:	
C$_sms_manager.c$150$1$121:	
G$devkit_isCollisionDetected$0$0:	
_devkit_isCollisionDetected:	
		ld a, (SMS_VDPFlags)	; SMS_VDPFlags = $C05C
		and $20
		ld l, a
		ret
	
A$_sms_manager$874:	
C$_sms_manager.c$154$1$121:	
C$_sms_manager.c$156$1$122:	
C$_sms_manager.c$157$1$122:	
G$devkit_SMS_getKeysStatus$0$0:	
XG$devkit_SMS_getKeysStatus$0$0:	
_devkit_SMS_getKeysStatus:	
		jp _SMS_getKeysStatus
	
A$_sms_manager$887:	
C$_sms_manager.c$160$1$122:	
C$_sms_manager.c$162$1$123:	
G$devkit_SPRITEMODE_NORMAL$0$0:	
_devkit_SPRITEMODE_NORMAL:	
		ld l, $00
		ret
	
A$_sms_manager$905:	
C$_sms_manager.c$164$1$123:	
C$_sms_manager.c$166$1$124:	
G$devkit_VDPFEATURE_HIDEFIRSTCOL:	
_devkit_VDPFEATURE_HIDEFIRSTCOL:	
		ld hl, $0020
		ret
	
A$_sms_manager$923:	
C$_sms_manager.c$168$1$124:	
C$_sms_manager.c$170$1$125:	
G$devkit_TILE_PRIORITY$0$0:	
_devkit_TILE_PRIORITY:	
		ld hl, $1000
		ret
	
A$_sms_manager$941:	
C$_sms_manager.c$172$1$125:	
C$_sms_manager.c$174$1$126:	
G$devkit_TILE_USE_SPRITE_PALETTE:	
_devkit_TILE_USE_SPRITE_PALETTE:	
		ld hl, $0800
		ret
	
; Data from 9AD to 9BA (14 bytes)	
F_sms_manager$__str_0$0$0:	
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00
	
; Data from 9BB to 9C4 (10 bytes)	
F_sms_manager$__str_1$0$0:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	
; Data from 9C5 to A00 (60 bytes)	
F_sms_manager$__str_2$0$0:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00
	
A$_snd_manager$83:	
C$_snd_manager.c$11$1$31:	
C$_snd_manager.c$9$0$0:	
G$devkit_PSGPlay$0$0:	
_devkit_PSGPlay:	
		pop bc
		pop hl
		push hl
		push bc
		push hl
		call _PSGPlay
		pop af
		ret
	
A$_snd_manager$107:	
C$_snd_manager.c$13$1$31:	
C$_snd_manager.c$15$1$33:	
G$devkit_PSGPlayNoRepeat$0$0:	
_devkit_PSGPlayNoRepeat:	
		pop bc
		pop hl
		push hl
		push bc
		push hl
		call _PSGPlayNoRepeat
		pop af
		ret
	
A$_snd_manager$135:	
C$_snd_manager.c$17$1$33:	
C$_snd_manager.c$19$1$35:	
C$_snd_manager.c$20$1$35:	
G$devkit_PSGStop$0$0:	
XG$devkit_PSGStop$0$0:	
_devkit_PSGStop:	
		jp _PSGStop
	
A$_snd_manager$152:	
C$_snd_manager.c$21$1$35:	
C$_snd_manager.c$23$1$37:	
C$_snd_manager.c$24$1$37:	
G$devkit_PSGResume$0$0:	
XG$devkit_PSGResume$0$0:	
_devkit_PSGResume:	
		jp _PSGResume
	
A$_snd_manager$169:	
C$_snd_manager.c$25$1$37:	
C$_snd_manager.c$27$1$39:	
C$_snd_manager.c$28$1$39:	
G$devkit_PSGGetStatus$0$0:	
XG$devkit_PSGGetStatus$0$0:	
_devkit_PSGGetStatus:	
		jp _PSGGetStatus
	
A$_snd_manager$182:	
C$_snd_manager.c$29$1$39:	
C$_snd_manager.c$31$1$41:	
G$devkit_PSGSetMusicVolumeAttenu:	
_devkit_PSGSetMusicVolumeAttenua:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call _PSGSetMusicVolumeAttenuation
		inc sp
		ret
	
A$_snd_manager$206:	
C$_snd_manager.c$34$1$41:	
C$_snd_manager.c$36$1$43:	
G$devkit_PSGSFXPlay$0$0:	
_devkit_PSGSFXPlay:	
		ld hl, $0004
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		ld hl, $0003
		add hl, sp
		ld c, (hl)
		inc hl
		ld b, (hl)
		push bc
		call _PSGSFXPlay
		pop af
		inc sp
		ret
	
A$_snd_manager$241:	
C$_snd_manager.c$38$1$43:	
C$_snd_manager.c$40$1$45:	
C$_snd_manager.c$41$1$45:	
G$devkit_PSGSFXStop$0$0:	
XG$devkit_PSGSFXStop$0$0:	
_devkit_PSGSFXStop:	
		jp _PSGSFXStop
	
A$_snd_manager$258:	
C$_snd_manager.c$42$1$45:	
C$_snd_manager.c$44$1$47:	
C$_snd_manager.c$45$1$47:	
G$devkit_PSGSFXGetStatus$0$0:	
XG$devkit_PSGSFXGetStatus$0$0:	
_devkit_PSGSFXGetStatus:	
		jp _PSGSFXGetStatus
	
A$_snd_manager$275:	
C$_snd_manager.c$47$1$47:	
C$_snd_manager.c$49$1$49:	
C$_snd_manager.c$50$1$49:	
G$devkit_PSGSilenceChannels$0$0:	
XG$devkit_PSGSilenceChannels$0$0:	
_devkit_PSGSilenceChannels:	
		jp _PSGSilenceChannels
	
A$_snd_manager$292:	
C$_snd_manager.c$51$1$49:	
C$_snd_manager.c$53$1$51:	
C$_snd_manager.c$54$1$51:	
G$devkit_PSGRestoreVolumes$0$0:	
XG$devkit_PSGRestoreVolumes$0$0:	
_devkit_PSGRestoreVolumes:	
		jp _PSGRestoreVolumes
	
A$_snd_manager$309:	
C$_snd_manager.c$56$1$51:	
C$_snd_manager.c$58$1$53:	
C$_snd_manager.c$59$1$53:	
G$devkit_PSGFrame$0$0:	
XG$devkit_PSGFrame$0$0:	
_devkit_PSGFrame:	
		jp _PSGFrame
	
A$_snd_manager$326:	
C$_snd_manager.c$60$1$53:	
C$_snd_manager.c$62$1$55:	
C$_snd_manager.c$63$1$55:	
G$devkit_PSGSFXFrame$0$0:	
XG$devkit_PSGSFXFrame$0$0:	
_devkit_PSGSFXFrame:	
		jp _PSGSFXFrame
	
A$_snd_manager$339:	
C$_snd_manager.c$66$1$55:	
C$_snd_manager.c$68$1$56:	
G$devkit_SFX_CHANNEL2$0$0:	
_devkit_SFX_CHANNEL2:	
		ld l, $01
		ret
	
A$_snd_manager$357:	
C$_snd_manager.c$70$1$56:	
C$_snd_manager.c$72$1$57:	
G$devkit_SFX_CHANNEL3$0$0:	
_devkit_SFX_CHANNEL3:	
		ld l, $02
		ret
	
A$_snd_manager$375:	
C$_snd_manager.c$74$1$57:	
C$_snd_manager.c$76$1$58:	
G$devkit_SFX_CHANNELS2AND3$0$0:	
_devkit_SFX_CHANNELS2AND3:	
		ld l, $03
		ret
	
A$asm_manager$59:	
C$asm_manager.c$11$0$0:	
C$asm_manager.c$30$1$1:	
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
	
A$audio_manager$60:	
C$audio_manager.c$18$0$0:	
C$audio_manager.c$20$1$15:	
G$engine_audio_manager_sfx_right:	
_engine_audio_manager_sfx_right:	
		ld hl, _sfx_right_psg	; _sfx_right_psg = $1A5C
		push hl
		call A$audio_manager$123
		pop af
		ret
	
A$audio_manager$81:	
C$audio_manager.c$22$1$15:	
C$audio_manager.c$24$1$16:	
G$engine_audio_manager_sfx_wrong:	
_engine_audio_manager_sfx_wrong:	
		ld hl, _sfx_wrong_psg	; _sfx_wrong_psg = $1A7C
		push hl
		call A$audio_manager$123
		pop af
		ret
	
A$audio_manager$102:	
C$audio_manager.c$26$1$16:	
C$audio_manager.c$28$1$17:	
G$engine_audio_manager_sfx_cheat:	
_engine_audio_manager_sfx_cheat:	
		ld hl, _sfx_cheat_psg	; _sfx_cheat_psg = $1A39
		push hl
		call A$audio_manager$123
		pop af
		ret
	
A$audio_manager$123:	
C$audio_manager.c$31$1$17:	
C$audio_manager.c$36$1$19:	
Faudio_manager$play_sfx$0$0:	
		call A$_snd_manager$258
		ld a, l
		or a
		ret nz
		call A$_snd_manager$339
		ld h, l
		pop de
		pop bc
		push bc
		push de
		push hl
		inc sp
		push bc
		call A$_snd_manager$206
		pop af
		inc sp
		ret
	
A$content_manager$65:	
C$content_manager.c$12$0$0:	
C$content_manager.c$14$1$17:	
G$engine_content_manager_load_ti:	
_engine_content_manager_load_til:	
		ld hl, $0000
		push hl
		ld hl, _font__tiles__psgcompr	; _font__tiles__psgcompr = $17A2
		push hl
		call A$_sms_manager$400
		pop af
		pop af
		ld bc, _font__palette__bin	; _font__palette__bin = $1712
		push bc
		call A$_sms_manager$472
		pop af
		ret
	
A$content_manager$96:	
C$content_manager.c$17$1$17:	
C$content_manager.c$19$1$18:	
G$engine_content_manager_load_sp:	
_engine_content_manager_load_spl:	
		ld a, $02
		push af
		inc sp
		call A$_sms_manager$181
		inc sp
		ld hl, $0040
		push hl
		ld hl, $8057
		push hl
		call A$_sms_manager$400
		pop af
		pop af
		ld bc, _SMS_crt0_RST18 - 1	; _SMS_crt0_RST18 - 1 = $0010
		push bc
		ld hl, $0000
		push hl
		call A$_sms_manager$432
		pop af
		pop af
		ld bc, $8000
		push bc
		call A$_sms_manager$472
		pop af
		ret
	
A$content_manager$145:	
C$content_manager.c$25$1$18:	
C$content_manager.c$27$1$19:	
G$engine_content_manager_load_ti:	
_engine_content_manager_load_tit:	
		ld a, $03
		push af
		inc sp
		call A$_sms_manager$181
		inc sp
		ld hl, $0040
		push hl
		ld hl, $8077
		push hl
		call A$_sms_manager$400
		pop af
		pop af
		ld bc, _SMS_crt0_RST18 - 1	; _SMS_crt0_RST18 - 1 = $0010
		push bc
		ld hl, $0000
		push hl
		call A$_sms_manager$432
		pop af
		pop af
		ld bc, $8000
		push bc
		call A$_sms_manager$472
		pop af
		ld hl, $0303
		push hl
		ld l, $0F
		push hl
		call A$_sms_manager$514
		pop af
		pop af
		ret
	
A$content_manager$204:	
C$content_manager.c$35$1$19:	
C$content_manager.c$37$1$20:	
G$engine_content_manager_load_ti:	
_engine_content_manager_load_tit:	
		ld a, $03
		push af
		inc sp
		call A$_sms_manager$181
		inc sp
		ld hl, $0040
		push hl
		ld hl, A$title_screen$347	; A$title_screen$347 = $1345
		push hl
		call A$_sms_manager$400
		pop af
		pop af
		ld bc, A$title_screen$264 + 1	; A$title_screen$264 + 1 = $12E8
		push bc
		ld hl, $0000
		push hl
		call A$_sms_manager$432
		pop af
		pop af
		ld bc, A$title_screen$246	; A$title_screen$246 = $12D8
		push bc
		call A$_sms_manager$472
		pop af
		ld hl, $0303
		push hl
		ld l, $0F
		push hl
		call A$_sms_manager$514
		pop af
		pop af
		ret
	
A$content_manager$263:	
C$content_manager.c$47$1$20:	
C$content_manager.c$50$1$21:	
G$engine_content_manager_load_sp:	
_engine_content_manager_load_spr:	
		ld hl, $0120
		push hl
		ld hl, _cursor__tiles__psgcompr	; _cursor__tiles__psgcompr = $1657
		push hl
		call A$_sms_manager$400
		pop af
		pop af
		ld bc, _cursor__palette__bin	; _cursor__palette__bin = $1647
		push bc
		call A$_sms_manager$493
		pop af
		ret
	
A$cursor_manager$68:	
C$cursor_manager.c$13$0$0:	
C$cursor_manager.c$15$1$23:	
G$engine_cursor_manager_init$0$0:	
_engine_cursor_manager_init:	
		ld bc, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		xor a
		ld (bc), a
		ld hl, G$global_cursor_object$0$0 + 1	; G$global_cursor_object$0$0 + 1 = $C027
		ld (hl), $00
		push bc
		ld a, $03
		push af
		inc sp
		ld hl, $0005
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call __divuchar
		pop af
		ld a, l
		pop bc
		ld (bc), a
		ld a, $03
		push af
		inc sp
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		push af
		inc sp
		call __moduchar
		pop af
		ld c, l
		ld hl, G$global_cursor_object$0$0 + 1	; G$global_cursor_object$0$0 + 1 = $C027
		ld (hl), c
		jp A$cursor_manager$682
	
A$cursor_manager$129:	
C$cursor_manager.c$24$1$23:	
G$engine_cursor_manager_load$0$0:	
_engine_cursor_manager_load:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		push af
		ld (ix-3), $00
A$cursor_manager$142:	
C$cursor_manager.c$33$2$26:	
		ld a, $4A
		add a, (ix-3)
		ld (ix-2), a
		ld a, $11
		adc a, $00
		ld (ix-1), a
		ld c, $00
A$cursor_manager$153:	
C$cursor_manager.c$35$5$29:	
		ld l, c
		add hl, hl
		add hl, bc
		ld a, l
		add a, (ix-3)
		ld e, a
		ld hl, G$cursor_gridX$0$0	; G$cursor_gridX$0$0 = $1146
		ld b, $00
		add hl, bc
		ld b, (hl)
		ld l, (ix-2)
		ld h, (ix-1)
		ld a, (hl)
		ld (ix-4), a
		ld h, $00
		ld l, e
		add hl, hl
		ld de, G$cursor_album$0$0	; G$cursor_album$0$0 = $C14A
		add hl, de
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, (ix-4)
		add a, (ix+4)
		push bc
		push af
		inc sp
		push bc
		inc sp
		push de
		call A$font_manager$104
		pop af
		pop af
		pop bc
		inc c
		ld a, c
		sub $04
		jr c, A$cursor_manager$153
		inc (ix-3)
		ld a, (ix-3)
		sub $03
		jr c, A$cursor_manager$142
		ld sp, ix
		pop ix
		ret
	
A$cursor_manager$235:	
C$cursor_manager.c$45$2$26:	
C$cursor_manager.c$47$1$30:	
C$cursor_manager.c$48$1$30:	
G$engine_cursor_manager_save$0$0:	
_engine_cursor_manager_save:	
		ld a, (G$global_cursor_object$0$0)	; G$global_cursor_object$0$0 = $C026
		ld c, a
		add a, a
		add a, c
		ld c, a
		ld hl, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		inc hl
		ld l, (hl)
		add hl, bc
		ret
	
A$cursor_manager$258:	
C$cursor_manager.c$51$1$30:	
G$engine_cursor_manager_draw$0$0:	
_engine_cursor_manager_draw:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		push af
		ld hl, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		inc hl
		inc hl
		ld c, (hl)
		ld hl, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		inc hl
		inc hl
		inc hl
		ld b, (hl)
		push bc
		ld hl, $0120
		push hl
		push bc
		call A$_sms_manager$696
		pop af
		pop af
		pop bc
		ld a, c
		add a, $28
		ld e, a
		push bc
		push de
		ld hl, $0125
		push hl
		push bc
		inc sp
		ld a, e
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, b
		add a, $10
		ld d, a
		push bc
		push de
		ld hl, $012C
		push hl
		ld e, c
		push de
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		push de
		ld hl, $0131
		push hl
		push de
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, c
		add a, $08
		ld (ix-1), a
		push bc
		push de
		ld hl, $0121
		push hl
		push bc
		inc sp
		ld a, (ix-1)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, c
		add a, $10
		ld (ix-2), a
		push bc
		push de
		ld hl, $0122
		push hl
		push bc
		inc sp
		ld a, (ix-2)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, c
		add a, $18
		ld (ix-4), a
		push bc
		push de
		ld hl, $0123
		push hl
		push bc
		inc sp
		ld a, (ix-4)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, c
		add a, $20
		ld (ix-3), a
		push bc
		push de
		ld hl, $0124
		push hl
		push bc
		inc sp
		ld a, (ix-3)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		ld a, b
		add a, $08
		ld b, a
		push bc
		push de
		ld hl, $0126
		push hl
		push bc
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		pop bc
		push de
		ld hl, $012B
		push hl
		push bc
		inc sp
		ld a, e
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		push de
		ld hl, $012D
		push hl
		push de
		inc sp
		ld a, (ix-1)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		push de
		ld hl, $012E
		push hl
		push de
		inc sp
		ld a, (ix-2)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		push de
		ld hl, $012F
		push hl
		push de
		inc sp
		ld a, (ix-4)
		push af
		inc sp
		call A$_sms_manager$696
		pop af
		pop af
		pop de
		ld hl, $0130
		push hl
		push de
		inc sp
		ld a, (ix-3)
		push af
		inc sp
		call A$_sms_manager$696
		ld sp, ix
		pop ix
		ret
	
A$cursor_manager$523:	
C$cursor_manager.c$81$1$31:	
C$cursor_manager.c$83$1$32:	
G$engine_cursor_manager_decX$0$0:	
_engine_cursor_manager_decX:	
		ld bc, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		ld a, (bc)
		or a
		jr nz, A$cursor_manager$540
		ld a, $03
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$540:	
C$cursor_manager.c$90$2$34:	
		add a, $FF
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$562:	
C$cursor_manager.c$95$1$32:	
C$cursor_manager.c$97$1$35:	
G$engine_cursor_manager_incX$0$0:	
_engine_cursor_manager_incX:	
		ld bc, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		ld a, (bc)
		cp $03
		jr nz, A$cursor_manager$579
		xor a
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$579:	
C$cursor_manager.c$104$2$37:	
		inc a
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$604:	
C$cursor_manager.c$109$1$35:	
C$cursor_manager.c$111$1$38:	
C$cursor_manager.c$112$1$38:	
G$engine_cursor_manager_decY$0$0:	
_engine_cursor_manager_decY:	
		ld bc, G$global_cursor_object$0$0 + 1	; G$global_cursor_object$0$0 + 1 = $C027
		ld a, (bc)
		or a
		jr nz, A$cursor_manager$618
		ld a, $02
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$618:	
C$cursor_manager.c$118$2$40:	
		add a, $FF
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$643:	
C$cursor_manager.c$123$1$38:	
C$cursor_manager.c$125$1$41:	
C$cursor_manager.c$126$1$41:	
G$engine_cursor_manager_incY$0$0:	
_engine_cursor_manager_incY:	
		ld bc, G$global_cursor_object$0$0 + 1	; G$global_cursor_object$0$0 + 1 = $C027
		ld a, (bc)
		cp $02
		jr nz, A$cursor_manager$657
		xor a
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$657:	
C$cursor_manager.c$132$2$43:	
		inc a
		ld (bc), a
		jp A$cursor_manager$682
	
A$cursor_manager$682:	
C$cursor_manager.c$138$1$41:	
C$cursor_manager.c$140$1$44:	
C$cursor_manager.c$141$1$44:	
Fcursor_manager$update_values$0$:	
		ld bc, G$cursor_gridX$0$0	; G$cursor_gridX$0$0 = $1146
		ld hl, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		ld l, (hl)
		ld h, $00
		add hl, bc
		ld c, (hl)
		ld de, G$cursor_gridY$0$0	; G$cursor_gridY$0$0 = $114A
		ld hl, G$global_cursor_object$0$0	; G$global_cursor_object$0$0 = $C026
		inc hl
		ld l, (hl)
		ld h, $00
		add hl, de
		ld e, (hl)
		dec c
		ld a, c
		rlca
		rlca
		rlca
		and $F8
		ld d, a
		ld hl, G$global_cursor_object$0$0 + 2	; G$global_cursor_object$0$0 + 2 = $C028
		ld (hl), d
		ld bc, G$global_cursor_object$0$0 + 3	; G$global_cursor_object$0$0 + 3 = $C029
		dec e
		ld a, e
		rlca
		rlca
		rlca
		and $F8
		ld e, a
		ld (bc), a
		inc d
		ld (hl), d
		dec e
		ld a, e
		ld (bc), a
		ret
	
A$font_manager$56:	
C$font_manager.c$10$0$0:	
G$engine_font_manager_draw_char$:	
_engine_font_manager_draw_char:	
		push ix
		ld ix, $0000
		add ix, sp
		ld a, (ix+4)
		add a, $E0
		ld c, a
		push bc
		ld h, (ix+6)
		ld l, (ix+5)
		push hl
		call A$_sms_manager$607
		pop af
		pop bc
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $1722
		ld l, (hl)
		ld h, $00
		ld b, $00
		add hl, bc
		push hl
		call A$_sms_manager$652
		pop af
		pop ix
		ret
	
A$font_manager$104:	
C$font_manager.c$18$1$21:	
G$engine_font_manager_draw_text$:	
_engine_font_manager_draw_text:	
		push ix
		ld ix, $0000
		add ix, sp
		dec sp
		ld c, (ix+6)
		ld (ix-1), $00
A$font_manager$117:	
		ld a, (ix+4)
		add a, (ix-1)
		ld e, a
		ld a, (ix+5)
		adc a, $00
		ld d, a
		ld a, (de)
		or a
		jr z, A$font_manager$169
		add a, $E0
		ld b, a
		ld d, c
		inc c
		ld (ix+6), c
		push bc
		ld a, (ix+7)
		push af
		inc sp
		push de
		inc sp
		call A$_sms_manager$607
		pop af
		pop bc
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $1722
		ld e, (hl)
		ld d, $00
		ld a, b
		ld l, a
		rla
		sbc a, a
		ld h, a
		add hl, de
		push bc
		push hl
		call A$_sms_manager$652
		pop af
		pop bc
		inc (ix-1)
		jr A$font_manager$117
	
A$font_manager$169:	
		inc sp
		pop ix
		ret
	
A$font_manager$185:	
C$font_manager.c$32$1$23:	
G$engine_font_manager_draw_data$:	
_engine_font_manager_draw_data:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		ld a, (ix+6)
		ld (ix-1), a
		ld (ix-2), $00
A$font_manager$202:	
C$font_manager.c$44$2$27:	
		ld hl, $000A
		push hl
		ld l, (ix+4)
		ld h, (ix+5)
		push hl
		call __divuint
		pop af
		pop af
		ld e, l
		ld d, h
		push hl
		push de
		ld bc, $000A
		push bc
		ld c, (ix+4)
		ld b, (ix+5)
		push bc
		call __moduint
		pop af
		pop af
		ld b, l
		pop de
		pop hl
		ld (ix+4), l
		ld (ix+5), h
		ld a, b
		add a, $10
		ld c, a
		ld a, d
		or e
		jr nz, A$font_manager$258
		or b
		jr nz, A$font_manager$258
		ld a, (ix-2)
		or a
		jr z, A$font_manager$258
		ld c, $00
A$font_manager$258:	
C$font_manager.c$55$3$28:	
		ld b, (ix-1)
		dec (ix-1)
		ld a, (ix-1)
		ld (ix+6), a
		push bc
		ld a, (ix+7)
		push af
		inc sp
		push bc
		inc sp
		call A$_sms_manager$607
		pop af
		pop bc
		ld hl, _font__tilemap__bin	; _font__tilemap__bin = $1722
		ld l, (hl)
		ld h, $00
		ld a, c
		rla
		sbc a, a
		ld b, a
		add hl, bc
		push hl
		call A$_sms_manager$652
		pop af
		inc (ix-2)
		ld a, (ix-2)
		sub $05
		jr c, A$font_manager$202
		ld sp, ix
		pop ix
		ret
	
A$input_manager$64:	
C$input_manager.c$10$0$0:	
C$input_manager.c$12$1$19:	
G$engine_input_manager_update$0$:	
_engine_input_manager_update:	
		ld hl, (Finput_manager$curr_joypad1$0$0)	; Finput_manager$curr_joypad1$0$0 = $C146
		ld (Finput_manager$prev_joypad1$0$0), hl	; Finput_manager$prev_joypad1$0$0 = $C148
		call A$_sms_manager$874
		ld (Finput_manager$curr_joypad1$0$0), hl	; Finput_manager$curr_joypad1$0$0 = $C146
		ret
	
A$input_manager$88:	
C$input_manager.c$17$1$19:	
C$input_manager.c$19$1$21:	
G$engine_input_manager_hold$0$0:	
_engine_input_manager_hold:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld iy, Finput_manager$curr_joypad1$0$0	; Finput_manager$curr_joypad1$0$0 = $C146
		ld a, (iy+0)
		and c
		ld e, a
		ld a, (iy+1)
		and b
		or e
		jr z, A$input_manager$109
		ld a, c
		ld iy, Finput_manager$prev_joypad1$0$0	; Finput_manager$prev_joypad1$0$0 = $C148
		and (iy+0)
		ld c, a
		ld a, b
		and (iy+1)
		or c
		jr z, A$input_manager$112
A$input_manager$109:	
		ld l, $00
		ret
	
A$input_manager$112:	
		ld l, $01
		ret
	
A$input_manager$130:	
C$input_manager.c$22$1$21:	
C$input_manager.c$24$1$23:	
G$engine_input_manager_move$0$0:	
_engine_input_manager_move:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld a, (Finput_manager$curr_joypad1$0$0)	; Finput_manager$curr_joypad1$0$0 = $C146
		and c
		ld l, a
		ret
	
A$record_manager$69:	
C$record_manager.c$12$0$0:	
C$record_manager.c$14$1$19:	
C$record_manager.c$15$1$19:	
G$engine_record_manager_init$0$0:	
_engine_record_manager_init:	
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		ret
	
A$record_manager$88:	
C$record_manager.c$17$1$19:	
G$engine_record_manager_load$0$0:	
_engine_record_manager_load:	
		push ix
		ld ix, $0000
		add ix, sp
		dec sp
		ld a, (G$global_record_object$0$0)	; G$global_record_object$0$0 = $C02A
		ld (ix-1), a
		ld l, a
		ld h, $00
		add hl, hl
		ld c, l
		ld b, h
		ld hl, G$record_tiles_data$0$0	; G$record_tiles_data$0$0 = $C162
		add hl, bc
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld hl, G$record_tilemap_data$0$0	; G$record_tilemap_data$0$0 = $C17A
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld a, (ix-1)
		add a, $89
		ld l, a
		ld a, $00
		adc a, $11
		ld h, a
		ld h, (hl)
		push bc
		push de
		push hl
		inc sp
		call A$_sms_manager$181
		inc sp
		pop de
		ld hl, $0000
		push hl
		push de
		call A$_sms_manager$400
		pop af
		ld hl, $0000
		ex (sp), hl
		call A$_sms_manager$432
		pop af
		pop af
		ld hl, (G$record_palette_data$0$0)	; G$record_palette_data$0$0 = $C192
		push hl
		call A$_sms_manager$472
		pop af
		inc sp
		pop ix
		ret
	
A$record_manager$177:	
C$record_manager.c$34$1$20:	
C$record_manager.c$36$1$21:	
G$engine_record_manager_decremen:	
_engine_record_manager_decrement:	
		ld bc, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld a, (bc)
		or a
		jr nz, A$record_manager$194
		ld a, $0B
		ld (bc), a
		ret
	
A$record_manager$194:	
C$record_manager.c$43$2$23:	
		add a, $FF
		ld (bc), a
		ret
	
A$record_manager$213:	
C$record_manager.c$46$1$21:	
C$record_manager.c$48$1$24:	
G$engine_record_manager_incremen:	
_engine_record_manager_increment:	
		ld bc, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld a, (bc)
		cp $0B
		jr nz, A$record_manager$230
		xor a
		ld (bc), a
		ret
	
A$record_manager$230:	
C$record_manager.c$55$2$26:	
		inc a
		ld (bc), a
		ret
	
A$screen_manager$80:	
C$screen_manager.c$19$0$0:	
C$screen_manager.c$21$1$10:	
G$engine_screen_manager_init$0$0:	
_engine_screen_manager_init:	
		ld hl, $0002
		add hl, sp
		ld a, (hl)
		ld (Fscreen_manager$next_screen_type), a	; Fscreen_manager$next_screen_type = $C02C
		ld hl, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C02B
		ld (hl), $00
		ld hl, $1195
		ld (Fscreen_manager$load_method$0$0), hl	; Fscreen_manager$load_method$0$0 = $C02D
		ld hl, $119D
		ld (Fscreen_manager$load_method$0$0 + 2), hl	; Fscreen_manager$load_method$0$0 + 2 = $C02F
		ld hl, $1220
		ld (_RAM_C031_), hl
		ld hl, $1389
		ld (_RAM_C033_), hl
		ld hl, $13EA
		ld (_RAM_C035_), hl
		ld hl, $14E2
		ld (_RAM_C037_), hl
		ld hl, $1196
		ld (Fscreen_manager$update_method$0$), hl	; Fscreen_manager$update_method$0$ = $C039
		ld hl, $11B9
		ld (Fscreen_manager$update_method$0$ + 2), hl	; Fscreen_manager$update_method$0$ + 2 = $C03B
		ld hl, $12BE
		ld (_RAM_C03D_), hl
		ld hl, $138F
		ld (_RAM_C03F_), hl
		ld hl, $144D
		ld (_RAM_C041_), hl
		ld hl, $14E8
		ld (_RAM_C043_), hl
		ret
	
A$screen_manager$166:	
C$screen_manager.c$41$1$10:	
C$screen_manager.c$43$1$11:	
G$engine_screen_manager_update$0:	
_engine_screen_manager_update:	
		ld a, (Fscreen_manager$curr_screen_type)	; Fscreen_manager$curr_screen_type = $C02B
		ld iy, Fscreen_manager$next_screen_type	; Fscreen_manager$next_screen_type = $C02C
		sub (iy+0)
		jr z, A$screen_manager$193
		ld a, (iy+0)
		ld iy, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C02B
		ld (iy+0), a
		ld bc, Fscreen_manager$load_method$0$0	; Fscreen_manager$load_method$0$0 = $C02D
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld h, (hl)
		ld l, c
		call ___sdcc_call_hl
A$screen_manager$193:	
C$screen_manager.c$49$1$11:	
		ld bc, Fscreen_manager$update_method$0$	; Fscreen_manager$update_method$0$ = $C039
		ld iy, Fscreen_manager$curr_screen_type	; Fscreen_manager$curr_screen_type = $C02B
		ld l, (iy+0)
		ld h, $00
		add hl, hl
		add hl, bc
		ld c, (hl)
		inc hl
		ld b, (hl)
		ld hl, Fscreen_manager$next_screen_type	; Fscreen_manager$next_screen_type = $C02C
		push hl
		ld l, c
		ld h, b
		call ___sdcc_call_hl
		pop af
		ret
	
A$scroll_manager$61:	
C$scroll_manager.c$10$1$18:	
C$scroll_manager.c$8$0$0:	
G$engine_scroll_manager_reset$0$:	
_engine_scroll_manager_reset:	
		xor a
		push af
		inc sp
		call A$scroll_manager$94
		inc sp
		xor a
		push af
		inc sp
		call A$_sms_manager$222
		inc sp
		ret
	
A$scroll_manager$94:	
C$scroll_manager.c$14$1$18:	
C$scroll_manager.c$16$1$20:	
C$scroll_manager.c$17$1$20:	
G$engine_scroll_manager_load$0$0:	
_engine_scroll_manager_load:	
		ld hl, G$global_scroll_object$0$0	; G$global_scroll_object$0$0 = $C045
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		ret
	
A$storage_manager$65:	
C$storage_manager.c$16$0$0:	
C$storage_manager.c$18$1$18:	
G$engine_storage_manager_availab:	
_engine_storage_manager_availabl:	
		call A$_sms_manager$305
		push hl
		call A$_sms_manager$242
		pop hl
		ld c, (hl)
		inc hl
		ld b, (hl)
		inc hl
		ld e, (hl)
		inc hl
		ld d, (hl)
		ld a, c
		sub $04
		jr nz, A$storage_manager$97
		ld a, b
		sub $B0
		jr nz, A$storage_manager$97
		ld a, e
		sub $E0
		jr nz, A$storage_manager$97
		ld a, d
		sub $AC
		jr nz, A$storage_manager$97
		ld a, $01
		jr A$storage_manager$99
	
A$storage_manager$97:	
		xor a
A$storage_manager$99:	
		ld l, a
		push hl
		call A$_sms_manager$286
		pop hl
		ret
	
A$storage_manager$126:	
C$storage_manager.c$27$1$18:	
C$storage_manager.c$29$1$19:	
G$engine_storage_manager_read$0$:	
_engine_storage_manager_read:	
		call A$_sms_manager$305
		push hl
		call A$_sms_manager$242
		pop iy
		ld c, (iy+4)
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld (hl), c
		jp A$_sms_manager$286
	
A$storage_manager$159:	
C$storage_manager.c$37$1$19:	
C$storage_manager.c$39$1$20:	
G$engine_storage_manager_write$0:	
_engine_storage_manager_write:	
		call A$_sms_manager$305
		push hl
		call A$_sms_manager$242
		pop bc
		ld l, c
		ld h, b
		ld (hl), $04
		inc hl
		ld (hl), $B0
		inc hl
		ld (hl), $E0
		inc hl
		ld (hl), $AC
		ld hl, $0004
		add hl, bc
		ex de, hl
		ld a, (G$global_record_object$0$0)	; G$global_record_object$0$0 = $C02A
		ld (de), a
		ld hl, $0005
		add hl, bc
		ld (hl), $FE
		jp A$_sms_manager$286
	
A$storage_manager$215:	
C$storage_manager.c$49$1$20:	
C$storage_manager.c$51$1$21:	
G$engine_storage_manager_erase$0:	
_engine_storage_manager_erase:	
		call A$_sms_manager$305
		push hl
		call A$_sms_manager$242
		pop bc
		ld l, c
		ld h, b
		xor a
		ld (hl), a
		inc hl
		ld (hl), a
		inc hl
		xor a
		ld (hl), a
		inc hl
		ld (hl), a
		ld hl, $0004
		add hl, bc
		ld (hl), $00
		ld hl, $0005
		add hl, bc
		ld (hl), $FE
		jp A$_sms_manager$286
	
A$timer_manager$70:	
C$timer_manager.c$11$1$4:	
C$timer_manager.c$12$1$4:	
C$timer_manager.c$9$0$0:	
G$engine_delay_manager_load$0$0:	
_engine_delay_manager_load:	
		ld hl, G$global_delay_object$0$0	; G$global_delay_object$0$0 = $C04C
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		inc hl
		ld a, (iy+1)
		ld (hl), a
		ld hl, $0000
		ld (G$global_delay_object$0$0 + 2), hl	; G$global_delay_object$0$0 + 2 = $C04E
		ret
	
A$timer_manager$103:	
C$timer_manager.c$15$1$4:	
C$timer_manager.c$17$1$5:	
C$timer_manager.c$20$1$5:	
G$engine_delay_manager_update$0$:	
_engine_delay_manager_update:	
		ld bc, (G$global_delay_object$0$0 + 2)	; G$global_delay_object$0$0 + 2 = $C04E
		inc bc
		ld (G$global_delay_object$0$0 + 2), bc	; G$global_delay_object$0$0 + 2 = $C04E
		ld hl, (G$global_delay_object$0$0)	; G$global_delay_object$0$0 = $C04C
		ld a, c
		sub l
		ld a, b
		sbc a, h
		ld a, $00
		rla
		xor $01
		ld c, a
		ld b, a
		or a
		jr z, A$timer_manager$133
		ld hl, $0000
		ld (G$global_delay_object$0$0 + 2), hl	; G$global_delay_object$0$0 + 2 = $C04E
A$timer_manager$133:	
C$timer_manager.c$27$1$5:	
		ld l, b
		ret
	
A$timer_manager$154:	
C$timer_manager.c$32$1$5:	
C$timer_manager.c$34$1$8:	
C$timer_manager.c$35$1$8:	
G$engine_reset_manager_load$0$0:	
_engine_reset_manager_load:	
		ld hl, G$global_reset_object$0$0	; G$global_reset_object$0$0 = $C050
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		inc hl
		ld a, (iy+1)
		ld (hl), a
		jp A$timer_manager$236
	
A$timer_manager$185:	
C$timer_manager.c$38$1$8:	
C$timer_manager.c$40$1$9:	
C$timer_manager.c$43$1$9:	
G$engine_reset_manager_update$0$:	
_engine_reset_manager_update:	
		ld bc, (G$global_reset_object$0$0 + 2)	; G$global_reset_object$0$0 + 2 = $C052
		inc bc
		ld (G$global_reset_object$0$0 + 2), bc	; G$global_reset_object$0$0 + 2 = $C052
		ld hl, (G$global_reset_object$0$0)	; G$global_reset_object$0$0 = $C050
		ld a, c
		sub l
		ld a, b
		sbc a, h
		ld a, $00
		rla
		xor $01
		ld c, a
		ld b, a
		or a
		jr z, A$timer_manager$215
		ld hl, $0000
		ld (G$global_reset_object$0$0 + 2), hl	; G$global_reset_object$0$0 + 2 = $C052
A$timer_manager$215:	
C$timer_manager.c$50$1$9:	
		ld l, b
		ret
	
A$timer_manager$236:	
C$timer_manager.c$52$1$9:	
C$timer_manager.c$54$1$11:	
C$timer_manager.c$55$1$11:	
G$engine_reset_manager_reset$0$0:	
_engine_reset_manager_reset:	
		ld hl, $0000
		ld (G$global_reset_object$0$0 + 2), hl	; G$global_reset_object$0$0 + 2 = $C052
		ret
	
; Data from 1146 to 1149 (4 bytes)	
G$cursor_gridX$0$0:	
_cursor_gridX:	
	.db $04 $0B $12 $19
	
; Data from 114A to 114C (3 bytes)	
G$cursor_gridY$0$0:	
_cursor_gridY:	
	.db $10 $13 $16
	
; Data from 114D to 1151 (5 bytes)	
Fcursor_object$__str_0$0$0:	
	.db $31 $39 $37 $38 $00
	
; Data from 1152 to 1156 (5 bytes)	
Fcursor_object$__str_1$0$0:	
	.db $31 $39 $37 $39 $00
	
; Data from 1157 to 115B (5 bytes)	
Fcursor_object$__str_2$0$0:	
	.db $31 $39 $38 $30 $00
	
; Data from 115C to 1160 (5 bytes)	
Fcursor_object$__str_3$0$0:	
	.db $31 $39 $38 $31 $00
	
; Data from 1161 to 1165 (5 bytes)	
Fcursor_object$__str_4$0$0:	
	.db $31 $39 $38 $32 $00
	
; Data from 1166 to 116A (5 bytes)	
Fcursor_object$__str_5$0$0:	
	.db $31 $39 $38 $34 $00
	
; Data from 116B to 116F (5 bytes)	
Fcursor_object$__str_6$0$0:	
	.db $31 $39 $38 $36 $00
	
; Data from 1170 to 1174 (5 bytes)	
Fcursor_object$__str_7$0$0:	
	.db $31 $39 $38 $38 $00
	
; Data from 1175 to 1179 (5 bytes)	
Fcursor_object$__str_8$0$0:	
	.db $31 $39 $39 $31 $00
	
; Data from 117A to 117E (5 bytes)	
Fcursor_object$__str_9$0$0:	
	.db $31 $39 $39 $35 $00
	
; Data from 117F to 1183 (5 bytes)	
Fcursor_object$__str_10$0$0:	
	.db $31 $39 $39 $38 $00
	
; Data from 1184 to 1188 (5 bytes)	
Fcursor_object$__str_11$0$0:	
	.db $32 $30 $31 $32 $00
	
; Data from 1189 to 1194 (12 bytes)	
G$record_tiles_bank$0$0:	
_record_tiles_bank:	
	.db $04 $05 $06 $07 $08 $09 $0A $0B $0C $0D $0E $0F
	
A$none_screen$60:	
C$none_screen.c$4$0$0:	
C$none_screen.c$6$0$0:	
G$screen_none_screen_load$0$0:	
XG$screen_none_screen_load$0$0:	
_screen_none_screen_load:	
		ret
	
A$none_screen$73:	
C$none_screen.c$10$1$4:	
C$none_screen.c$8$0$0:	
G$screen_none_screen_update$0$0:	
_screen_none_screen_update:	
		pop de
		pop bc
		push bc
		push de
		xor a
		ld (bc), a
		ret
	
A$splash_screen$69:	
C$splash_screen.c$14$0$0:	
C$splash_screen.c$16$1$25:	
G$screen_splash_screen_load$0$0:	
_screen_splash_screen_load:	
		call A$_sms_manager$163
		call A$content_manager$65
		call A$content_manager$96
		call A$_sms_manager$145
		ld hl, $0096
		push hl
		call A$timer_manager$70
		ld hl, $004B
		ex (sp), hl
		call A$timer_manager$154
		pop af
		ret
	
A$splash_screen$109:	
C$splash_screen.c$25$1$25:	
G$screen_splash_screen_update$0$:	
_screen_splash_screen_update:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		call A$timer_manager$103
		ld (ix-1), l
		ld a, $10
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld (ix-2), l
		ld a, $20
		push af
		inc sp
		call A$input_manager$130
		inc sp
		ld a, l
		or a
		jr z, A$splash_screen$174
		call A$timer_manager$185
		ld a, l
		or a
		jr z, A$splash_screen$179
		call A$storage_manager$215
		call A$timer_manager$236
		ld hl, $171C
		push hl
		ld hl, Fsplash_screen$__str_0$0$0	; Fsplash_screen$__str_0$0$0 = $121B
		push hl
		call A$font_manager$104
		pop af
		pop af
		jr A$splash_screen$179
	
A$splash_screen$174:	
C$splash_screen.c$48$2$30:	
		call A$timer_manager$236
A$splash_screen$179:	
C$splash_screen.c$53$1$27:	
		ld l, (ix+4)
		ld h, (ix+5)
		ld a, (ix-1)
		or a
		jr nz, A$splash_screen$194
		ld a, (ix-2)
		or a
		jr z, A$splash_screen$203
A$splash_screen$194:	
C$splash_screen.c$53$2$31:	
		ld (hl), $02
		jr A$splash_screen$205
	
A$splash_screen$203:	
C$splash_screen.c$57$1$27:	
		ld (hl), $01
A$splash_screen$205:	
		ld sp, ix
		pop ix
		ret
	
; Data from 121B to 121F (5 bytes)	
Fsplash_screen$__str_0$0$0:	
	.db $35 $31 $35 $30 $00
	
A$title_screen$81:	
C$title_screen.c$20$0$0:	
C$title_screen.c$22$1$28:	
C$title_screen.c$25$1$28:	
G$screen_title_screen_load$0$0:	
_screen_title_screen_load:	
		call A$_sms_manager$163
		call A$content_manager$65
		call A$content_manager$263
		call A$content_manager$145
		ld hl, $150A
		push hl
		ld hl, Ftitle_screen$__str_0$0$0	; Ftitle_screen$__str_0$0$0 = $129F
		push hl
		call A$font_manager$104
		pop af
		ld hl, $0C06
		ex (sp), hl
		ld hl, Ftitle_screen$__str_1$0$0	; Ftitle_screen$__str_1$0$0 = $12AB
		push hl
		call A$font_manager$104
		pop af
		ld hl, $0C14
		ex (sp), hl
		ld hl, Ftitle_screen$__str_2$0$0	; Ftitle_screen$__str_2$0$0 = $12B2
		push hl
		call A$font_manager$104
		pop af
		ld hl, $171C
		ex (sp), hl
		ld hl, Ftitle_screen$__str_3$0$0	; Ftitle_screen$__str_3$0$0 = $12B9
		push hl
		call A$font_manager$104
		pop af
		pop af
		call A$_sms_manager$145
		ld hl, $0032
		push hl
		call A$timer_manager$70
		ld hl, $004B
		ex (sp), hl
		call A$timer_manager$154
		pop af
		xor a
		push af
		inc sp
		call A$record_manager$69
		inc sp
		call A$storage_manager$65
		ld a, l
		or a
		jr z, A$title_screen$174
		call A$storage_manager$126
A$title_screen$174:	
C$title_screen.c$48$1$28:	
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld b, (hl)
		push bc
		inc sp
		call A$record_manager$69
		inc sp
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld b, (hl)
		push bc
		inc sp
		call A$cursor_manager$68
		inc sp
		ld hl, Ftitle_screen$event_stage$0$0	; Ftitle_screen$event_stage$0$0 = $C054
		ld (hl), $00
		ld hl, Ftitle_screen$flash$0$0	; Ftitle_screen$flash$0$0 = $C055
		ld (hl), $00
		ret
	
; Data from 129F to 12AA (12 bytes)	
Ftitle_screen$__str_0$0$0:	
	.db $50 $52 $45 $53 $53 $20 $53 $54 $41 $52 $54 $00
	
; Data from 12AB to 12B1 (7 bytes)	
Ftitle_screen$__str_1$0$0:	
	.db $52 $45 $43 $4F $52 $44 $00
	
; Data from 12B2 to 12B8 (7 bytes)	
Ftitle_screen$__str_2$0$0:	
	.db $43 $4F $56 $45 $52 $53 $00
	
; Data from 12B9 to 12BD (5 bytes)	
Ftitle_screen$__str_3$0$0:	
	.db $56 $31 $2E $30 $00
	
A$title_screen$229:	
C$title_screen.c$55$1$28:	
G$screen_title_screen_update$0$0:	
_screen_title_screen_update:	
		push ix
		ld ix, $0000
		add ix, sp
		push af
		dec sp
		ld a, (ix+4)
		ld (ix-2), a
		ld a, (ix+5)
		ld (ix-1), a
		ld a, (Ftitle_screen$event_stage$0$0)	; Ftitle_screen$event_stage$0$0 = $C054
		dec a
		jr nz, A$title_screen$299
		call A$timer_manager$185
		ld c, l
		ld a, c
		or a
		jr z, A$title_screen$280
		push bc
		ld hl, $150A
		push hl
		ld hl, Ftitle_screen$__str_4$0$0	; Ftitle_screen$__str_4$0$0 = $1371
		push hl
		call A$font_manager$104
		pop af
		ld hl, _font__palette__bin + 3	; _font__palette__bin + 3 = $1715
		ex (sp), hl
		ld hl, Ftitle_screen$__str_4$0$0	; Ftitle_screen$__str_4$0$0 = $1371
		push hl
		call A$font_manager$104
		pop af
		pop af
		pop bc
A$title_screen$280:	
C$title_screen.c$69$2$32:	
		ld a, c
		or a
		jr z, A$title_screen$286
		ld c, $03
		jr A$title_screen$288
	
A$title_screen$286:	
		ld c, $02
A$title_screen$288:	
		ld l, (ix-2)
		ld h, (ix-1)
		ld (hl), c
		jr A$title_screen$384
	
A$title_screen$299:	
C$title_screen.c$73$1$31:	
		call A$timer_manager$103
		ld (ix-3), l
		ld a, l
		or a
		jr z, A$title_screen$346
		ld hl, Ftitle_screen$flash$0$0	; Ftitle_screen$flash$0$0 = $C055
		ld a, $01
		sub (hl)
		ld (hl), a
		ld a, (Ftitle_screen$flash$0$0)	; Ftitle_screen$flash$0$0 = $C055
		or a
		jr z, A$title_screen$335
		ld hl, $150A
		push hl
		ld hl, Ftitle_screen$__str_4$0$0	; Ftitle_screen$__str_4$0$0 = $1371
		push hl
		call A$font_manager$104
		pop af
		pop af
		jr A$title_screen$346
	
A$title_screen$335:	
C$title_screen.c$83$3$36:	
		ld hl, $150A
		push hl
		ld hl, Ftitle_screen$__str_5$0$0	; Ftitle_screen$__str_5$0$0 = $137D
		push hl
		call A$font_manager$104
		pop af
		pop af
A$title_screen$346:	
C$title_screen.c$87$1$31:	
		ld a, $10
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$title_screen$380
		ld hl, $150A
		push hl
		ld hl, Ftitle_screen$__str_5$0$0	; Ftitle_screen$__str_5$0$0 = $137D
		push hl
		call A$font_manager$104
		pop af
		pop af
		call A$audio_manager$60
		ld hl, Ftitle_screen$event_stage$0$0	; Ftitle_screen$event_stage$0$0 = $C054
		ld (hl), $01
A$title_screen$380:	
C$title_screen.c$96$1$31:	
		ld l, (ix-2)
		ld h, (ix-1)
		ld (hl), $02
A$title_screen$384:	
		ld sp, ix
		pop ix
		ret
	
; Data from 1371 to 137C (12 bytes)	
Ftitle_screen$__str_4$0$0:	
	.dsb 11, $20
	.db $00
	
; Data from 137D to 1388 (12 bytes)	
Ftitle_screen$__str_5$0$0:	
	.db $50 $52 $45 $53 $53 $20 $53 $54 $41 $52 $54 $00
	
A$scroll_screen$62:	
C$scroll_screen.c$14$0$0:	
C$scroll_screen.c$16$1$24:	
G$screen_scroll_screen_load$0$0:	
_screen_scroll_screen_load:	
		ld hl, Fscroll_screen$offset$0$0	; Fscroll_screen$offset$0$0 = $C056
		ld (hl), $00
		ret
	
A$scroll_screen$78:	
C$scroll_screen.c$19$1$24:	
G$screen_scroll_screen_update$0$:	
_screen_scroll_screen_update:	
		dec sp
		ld a, (Fscroll_screen$offset$0$0)	; Fscroll_screen$offset$0$0 = $C056
		sub $20
		jr nz, A$scroll_screen$88
		ld a, $01
		jr A$scroll_screen$90
	
A$scroll_screen$88:	
		xor a
A$scroll_screen$90:	
		inc sp
		push af
		inc sp
		ld iy, Fscroll_screen$offset$0$0	; Fscroll_screen$offset$0$0 = $C056
		ld b, (iy+0)
		inc (iy+0)
		push bc
		inc sp
		call A$_sms_manager$222
		inc sp
		ld a, $10
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld c, l
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		inc hl
		ld h, (hl)
		ld l, a
		ld a, c
		or a
		jr nz, A$scroll_screen$136
		ld iy, $0000
		add iy, sp
		ld a, (iy+0)
		or a
		jr z, A$scroll_screen$160
A$scroll_screen$136:	
C$scroll_screen.c$30$2$27:	
		push hl
		ld a, $04
		push af
		inc sp
		call A$scroll_manager$94
		inc sp
		ld a, $20
		push af
		inc sp
		call A$_sms_manager$222
		inc sp
		pop hl
		ld (hl), $04
		jr A$scroll_screen$162
	
A$scroll_screen$160:	
C$scroll_screen.c$37$1$26:	
		ld (hl), $03
A$scroll_screen$162:	
		inc sp
		ret
	
A$select_screen$86:	
C$select_screen.c$22$0$0:	
C$select_screen.c$24$1$29:	
C$select_screen.c$25$1$29:	
G$screen_select_screen_load$0$0:	
_screen_select_screen_load:	
		ld a, (G$global_scroll_object$0$0)	; G$global_scroll_object$0$0 = $C045
		or a
		jr nz, A$select_screen$136
		call A$_sms_manager$163
		call A$asm_manager$59
		call A$content_manager$65
		call A$content_manager$204
		call A$content_manager$263
		ld hl, $0806
		push hl
		ld hl, Fselect_screen$__str_0$0$0	; Fselect_screen$__str_0$0$0 = $143F
		push hl
		call A$font_manager$104
		pop af
		ld hl, $0814
		ex (sp), hl
		ld hl, Fselect_screen$__str_1$0$0	; Fselect_screen$__str_1$0$0 = $1446
		push hl
		call A$font_manager$104
		pop af
		pop af
		call A$_sms_manager$145
A$select_screen$136:	
C$select_screen.c$38$1$29:	
		ld hl, G$global_scroll_object$0$0	; G$global_scroll_object$0$0 = $C045
		ld b, (hl)
		push bc
		inc sp
		call A$cursor_manager$129
		inc sp
		ld hl, $000F
		push hl
		call A$timer_manager$70
		ld hl, $004B
		ex (sp), hl
		call A$timer_manager$154
		pop af
		ld hl, Fselect_screen$event_stage$0$0	; Fselect_screen$event_stage$0$0 = $C057
		ld (hl), $00
		ld hl, Fselect_screen$flash$0$0	; Fselect_screen$flash$0$0 = $C058
		ld (hl), $01
		ret
	
; Data from 143F to 1445 (7 bytes)	
Fselect_screen$__str_0$0$0:	
	.db $52 $45 $43 $4F $52 $44 $00
	
; Data from 1446 to 144C (7 bytes)	
Fselect_screen$__str_1$0$0:	
	.db $43 $4F $56 $45 $52 $53 $00
	
A$select_screen$190:	
C$select_screen.c$47$1$29:	
C$select_screen.c$54$1$32:	
G$screen_select_screen_update$0$:	
_screen_select_screen_update:	
		ld a, (Fselect_screen$event_stage$0$0)	; Fselect_screen$event_stage$0$0 = $C057
		dec a
		jr nz, A$select_screen$250
		ld a, (Fselect_screen$flash$0$0)	; Fselect_screen$flash$0$0 = $C058
		or a
		jr z, A$select_screen$207
		call A$cursor_manager$258
A$select_screen$207:	
C$select_screen.c$61$2$33:	
		call A$timer_manager$103
		ld a, l
		or a
		jr z, A$select_screen$225
		ld hl, Fselect_screen$flash$0$0	; Fselect_screen$flash$0$0 = $C058
		ld a, $01
		sub (hl)
		ld (hl), a
A$select_screen$225:	
C$select_screen.c$67$2$33:	
		call A$timer_manager$185
		pop de
		pop bc
		push bc
		push de
		ld a, l
		or a
		jr z, A$select_screen$239
		ld a, $05
		jr A$select_screen$241
	
A$select_screen$239:	
		ld a, $04
A$select_screen$241:	
		ld (bc), a
		ret
	
A$select_screen$250:	
C$select_screen.c$72$1$32:	
		call A$cursor_manager$258
		ld a, $10
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$select_screen$294
		call A$cursor_manager$235
		ld b, l
		push bc
		inc sp
		call A$record_manager$69
		inc sp
		call A$audio_manager$60
		ld hl, Fselect_screen$event_stage$0$0	; Fselect_screen$event_stage$0$0 = $C057
		ld (hl), $01
		ret
	
A$select_screen$294:	
C$select_screen.c$85$1$32:	
		ld a, $04
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$select_screen$313
		call A$cursor_manager$523
A$select_screen$313:	
C$select_screen.c$90$1$32:	
		ld a, $08
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$select_screen$332
		call A$cursor_manager$562
A$select_screen$332:	
C$select_screen.c$95$1$32:	
		ld a, $01
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$select_screen$351
		call A$cursor_manager$604
A$select_screen$351:	
C$select_screen.c$100$1$32:	
		ld a, $02
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$select_screen$370
		call A$cursor_manager$643
A$select_screen$370:	
C$select_screen.c$106$1$32:	
		pop bc
		pop hl
		push hl
		push bc
		ld (hl), $04
		ret
	
A$record_screen$71:	
C$record_screen.c$16$0$0:	
C$record_screen.c$18$1$29:	
G$screen_record_screen_load$0$0:	
_screen_record_screen_load:	
		call A$scroll_manager$61
		jp A$record_screen$241
	
A$record_screen$89:	
C$record_screen.c$22$1$29:	
G$screen_record_screen_update$0$:	
_screen_record_screen_update:	
		push ix
		ld ix, $0000
		add ix, sp
		ld a, $04
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$record_screen$121
		call A$record_manager$177
		call A$record_screen$241
A$record_screen$121:	
C$record_screen.c$34$1$31:	
		ld a, $08
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld a, l
		or a
		jr z, A$record_screen$144
		call A$record_manager$213
		call A$record_screen$241
A$record_screen$144:	
C$record_screen.c$41$1$31:	
		ld a, $10
		push af
		inc sp
		call A$input_manager$88
		inc sp
		ld c, l
		push bc
		ld a, $20
		push af
		inc sp
		call A$input_manager$88
		inc sp
		pop bc
		ld e, (ix+4)
		ld d, (ix+5)
		ld a, c
		or a
		jr nz, A$record_screen$177
		or l
		jr z, A$record_screen$220
A$record_screen$177:	
C$record_screen.c$45$2$34:	
		push de
		xor a
		push af
		inc sp
		call A$_sms_manager$222
		inc sp
		pop de
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld b, (hl)
		push de
		push bc
		inc sp
		call A$record_manager$69
		inc sp
		pop de
		ld hl, G$global_record_object$0$0	; G$global_record_object$0$0 = $C02A
		ld b, (hl)
		push de
		push bc
		inc sp
		call A$cursor_manager$68
		inc sp
		call A$storage_manager$159
		pop de
		ld a, $04
		ld (de), a
		jr A$record_screen$223
	
A$record_screen$220:	
C$record_screen.c$55$1$31:	
		ld a, $05
		ld (de), a
A$record_screen$223:	
		pop ix
		ret
	
A$record_screen$241:	
C$record_screen.c$58$1$31:	
C$record_screen.c$60$1$35:	
Frecord_screen$load_record$0$0:	
		call A$_sms_manager$163
		call A$asm_manager$59
		call A$record_manager$88
		jp A$_sms_manager$145
	
; Data from 156F to 156F (1 bytes)	
A$detail_screen$60:	
C$detail_screen.c$12$0$0:	
C$detail_screen.c$15$0$0:	
G$screen_detail_screen_load$0$0:	
XG$screen_detail_screen_load$0$0:	
_screen_detail_screen_load:	
	.db $C9
	
; Data from 1570 to 1570 (1 bytes)	
A$detail_screen$73:	
C$detail_screen.c$17$0$0:	
C$detail_screen.c$19$1$25:	
G$screen_detail_screen_update$0$:	
_screen_detail_screen_update:	
	.db $C1
	
; Data from 1571 to 1571 (1 bytes)	
A$detail_screen$74:	
	.db $E1
	
; Data from 1572 to 1572 (1 bytes)	
A$detail_screen$75:	
	.db $E5
	
; Data from 1573 to 1573 (1 bytes)	
A$detail_screen$76:	
	.db $C5
	
; Data from 1574 to 1575 (2 bytes)	
A$detail_screen$77:	
	.db $36 $06
	
; Data from 1576 to 1576 (1 bytes)	
A$detail_screen$82:	
C$detail_screen.c$20$1$25:	
XG$screen_detail_screen_update$0:	
	.db $C9
	
; Data from 1577 to 1579 (3 bytes)	
A$test_screen$65:	
C$test_screen.c$13$0$0:	
C$test_screen.c$15$1$23:	
G$screen_test_screen_load$0$0:	
_screen_test_screen_load:	
	.db $CD $2B $08
	
; Data from 157A to 157C (3 bytes)	
A$test_screen$69:	
C$test_screen.c$16$1$23:	
	.db $CD $E3 $0A
	
; Data from 157D to 157F (3 bytes)	
A$test_screen$73:	
C$test_screen.c$17$1$23:	
	.db $21 $0A $15
	
; Data from 1580 to 1580 (1 bytes)	
A$test_screen$74:	
	.db $E5
	
; Data from 1581 to 1583 (3 bytes)	
A$test_screen$75:	
	.db $21 $93 $15
	
; Data from 1584 to 1584 (1 bytes)	
A$test_screen$76:	
	.db $E5
	
; Data from 1585 to 1587 (3 bytes)	
A$test_screen$77:	
	.db $CD $E9 $0D
	
; Data from 1588 to 1588 (1 bytes)	
A$test_screen$78:	
	.db $F1
	
; Data from 1589 to 1589 (1 bytes)	
A$test_screen$79:	
	.db $F1
	
; Data from 158A to 158C (3 bytes)	
A$test_screen$83:	
C$test_screen.c$18$1$23:	
	.db $CD $25 $08
	
; Data from 158D to 158F (3 bytes)	
A$test_screen$87:	
C$test_screen.c$20$1$23:	
	.db $21 $5A $C0
	
; Data from 1590 to 1591 (2 bytes)	
A$test_screen$88:	
	.db $36 $00
	
; Data from 1592 to 1592 (1 bytes)	
A$test_screen$93:	
C$test_screen.c$21$1$23:	
XG$screen_test_screen_load$0$0:	
	.db $C9
	
; Data from 1593 to 159E (12 bytes)	
Ftest_screen$__str_0$0$0:	
	.db $50 $52 $45 $53 $53 $20 $53 $54 $41 $52 $54 $00
	
; Data from 159F to 15A0 (2 bytes)	
A$test_screen$110:	
C$test_screen.c$23$1$23:	
C$test_screen.c$28$1$25:	
G$screen_test_screen_update$0$0:	
_screen_test_screen_update:	
	.db $3E $02
	
; Data from 15A1 to 15A1 (1 bytes)	
A$test_screen$111:	
	.db $F5
	
; Data from 15A2 to 15A2 (1 bytes)	
A$test_screen$112:	
	.db $33
	
; Data from 15A3 to 15A5 (3 bytes)	
A$test_screen$113:	
	.db $CD $00 $0F
	
; Data from 15A6 to 15A6 (1 bytes)	
A$test_screen$114:	
	.db $33
	
; Data from 15A7 to 15A7 (1 bytes)	
A$test_screen$118:	
C$test_screen.c$29$1$25:	
	.db $7D
	
; Data from 15A8 to 15A8 (1 bytes)	
A$test_screen$119:	
	.db $B7
	
; Data from 15A9 to 15AA (2 bytes)	
A$test_screen$120:	
	.db $28 $0D
	
; Data from 15AB to 15AD (3 bytes)	
A$test_screen$124:	
C$test_screen.c$32$2$26:	
	.db $3A $5A $C0
	
; Data from 15AE to 15AE (1 bytes)	
A$test_screen$125:	
	.db $F5
	
; Data from 15AF to 15AF (1 bytes)	
A$test_screen$126:	
	.db $33
	
; Data from 15B0 to 15B2 (3 bytes)	
A$test_screen$127:	
	.db $CD $46 $08
	
; Data from 15B3 to 15B3 (1 bytes)	
A$test_screen$128:	
	.db $33
	
; Data from 15B4 to 15B6 (3 bytes)	
A$test_screen$132:	
C$test_screen.c$34$2$26:	
	.db $21 $5A $C0
	
; Data from 15B7 to 15B7 (1 bytes)	
A$test_screen$133:	
	.db $34
	
; Data from 15B8 to 15B8 (1 bytes)	
A$test_screen$138:	
C$test_screen.c$38$1$25:	
	.db $C1
	
; Data from 15B9 to 15B9 (1 bytes)	
A$test_screen$139:	
	.db $E1
	
; Data from 15BA to 15BA (1 bytes)	
A$test_screen$140:	
	.db $E5
	
; Data from 15BB to 15BB (1 bytes)	
A$test_screen$141:	
	.db $C5
	
; Data from 15BC to 15BD (2 bytes)	
A$test_screen$142:	
	.db $36 $07
	
; Data from 15BE to 15BE (1 bytes)	
A$test_screen$147:	
C$test_screen.c$39$1$25:	
XG$screen_test_screen_update$0$0:	
	.db $C9
	
; Data from 15BF to 15C1 (3 bytes)	
A$func_screen$62:	
C$func_screen.c$15$0$0:	
C$func_screen.c$17$1$23:	
G$screen_func_screen_load$0$0:	
_screen_func_screen_load:	
	.db $CD $2B $08
	
; Data from 15C2 to 15C4 (3 bytes)	
A$func_screen$66:	
C$func_screen.c$18$1$23:	
	.db $CD $A2 $0A
	
; Data from 15C5 to 15C7 (3 bytes)	
A$func_screen$70:	
C$func_screen.c$19$1$23:	
	.db $CD $E3 $0A
	
; Data from 15C8 to 15CA (3 bytes)	
A$func_screen$74:	
C$func_screen.c$20$1$23:	
	.db $CD $51 $0B
	
; Data from 15CB to 15CD (3 bytes)	
A$func_screen$78:	
C$func_screen.c$21$1$23:	
	.db $21 $06 $0C
	
; Data from 15CE to 15CE (1 bytes)	
A$func_screen$79:	
	.db $E5
	
; Data from 15CF to 15D1 (3 bytes)	
A$func_screen$80:	
	.db $21 $23 $16
	
; Data from 15D2 to 15D2 (1 bytes)	
A$func_screen$81:	
	.db $E5
	
; Data from 15D3 to 15D5 (3 bytes)	
A$func_screen$82:	
	.db $CD $E9 $0D
	
; Data from 15D6 to 15D6 (1 bytes)	
A$func_screen$83:	
	.db $F1
	
; Data from 15D7 to 15D9 (3 bytes)	
A$func_screen$87:	
C$func_screen.c$22$1$23:	
	.db $21 $14 $0C
	
; Data from 15DA to 15DA (1 bytes)	
A$func_screen$88:	
	.db $E3
	
; Data from 15DB to 15DD (3 bytes)	
A$func_screen$89:	
	.db $21 $2A $16
	
; Data from 15DE to 15DE (1 bytes)	
A$func_screen$90:	
	.db $E5
	
; Data from 15DF to 15E1 (3 bytes)	
A$func_screen$91:	
	.db $CD $E9 $0D
	
; Data from 15E2 to 15E2 (1 bytes)	
A$func_screen$92:	
	.db $F1
	
; Data from 15E3 to 15E3 (1 bytes)	
A$func_screen$93:	
	.db $F1
	
; Data from 15E4 to 15E6 (3 bytes)	
A$func_screen$97:	
C$func_screen.c$24$1$23:	
	.db $21 $22 $16
	
; Data from 15E7 to 15E7 (1 bytes)	
A$func_screen$98:	
	.db $56
	
; Data from 15E8 to 15EA (3 bytes)	
A$func_screen$99:	
	.db $21 $21 $16
	
; Data from 15EB to 15EB (1 bytes)	
A$func_screen$100:	
	.db $5E
	
; Data from 15EC to 15EC (1 bytes)	
A$func_screen$101:	
	.db $D5
	
; Data from 15ED to 15EF (3 bytes)	
A$func_screen$102:	
	.db $21 $31 $16
	
; Data from 15F0 to 15F0 (1 bytes)	
A$func_screen$103:	
	.db $E5
	
; Data from 15F1 to 15F3 (3 bytes)	
A$func_screen$104:	
	.db $CD $E9 $0D
	
; Data from 15F4 to 15F4 (1 bytes)	
A$func_screen$105:	
	.db $F1
	
; Data from 15F5 to 15F5 (1 bytes)	
A$func_screen$106:	
	.db $F1
	
; Data from 15F6 to 15F8 (3 bytes)	
A$func_screen$110:	
C$func_screen.c$25$1$23:	
	.db $21 $22 $16
	
; Data from 15F9 to 15F9 (1 bytes)	
A$func_screen$111:	
	.db $46
	
; Data from 15FA to 15FC (3 bytes)	
A$func_screen$112:	
	.db $3A $21 $16
	
; Data from 15FD to 15FE (2 bytes)	
A$func_screen$113:	
	.db $C6 $07
	
; Data from 15FF to 15FF (1 bytes)	
A$func_screen$114:	
	.db $4F
	
; Data from 1600 to 1600 (1 bytes)	
A$func_screen$115:	
	.db $C5
	
; Data from 1601 to 1603 (3 bytes)	
A$func_screen$116:	
	.db $21 $36 $16
	
; Data from 1604 to 1604 (1 bytes)	
A$func_screen$117:	
	.db $E5
	
; Data from 1605 to 1607 (3 bytes)	
A$func_screen$118:	
	.db $CD $E9 $0D
	
; Data from 1608 to 1608 (1 bytes)	
A$func_screen$119:	
	.db $F1
	
; Data from 1609 to 1609 (1 bytes)	
A$func_screen$120:	
	.db $F1
	
; Data from 160A to 160C (3 bytes)	
A$func_screen$124:	
C$func_screen.c$26$1$23:	
	.db $21 $22 $16
	
; Data from 160D to 160D (1 bytes)	
A$func_screen$125:	
	.db $46
	
; Data from 160E to 1610 (3 bytes)	
A$func_screen$126:	
	.db $3A $21 $16
	
; Data from 1611 to 1612 (2 bytes)	
A$func_screen$127:	
	.db $C6 $0E
	
; Data from 1613 to 1613 (1 bytes)	
A$func_screen$128:	
	.db $4F
	
; Data from 1614 to 1614 (1 bytes)	
A$func_screen$129:	
	.db $C5
	
; Data from 1615 to 1617 (3 bytes)	
A$func_screen$130:	
	.db $21 $3B $16
	
; Data from 1618 to 1618 (1 bytes)	
A$func_screen$131:	
	.db $E5
	
; Data from 1619 to 161B (3 bytes)	
A$func_screen$132:	
	.db $CD $E9 $0D
	
; Data from 161C to 161C (1 bytes)	
A$func_screen$133:	
	.db $F1
	
; Data from 161D to 161D (1 bytes)	
A$func_screen$134:	
	.db $F1
	
; Data from 161E to 1620 (3 bytes)	
A$func_screen$142:	
C$func_screen.c$27$1$23:	
C$func_screen.c$32$1$23:	
XG$screen_func_screen_load$0$0:	
	.db $C3 $25 $08
	
; Data from 1621 to 1621 (1 bytes)	
Ffunc_screen$x$0$0:	
	.db $04
	
; Data from 1622 to 1622 (1 bytes)	
Ffunc_screen$y$0$0:	
	.db $14
	
; Data from 1623 to 1629 (7 bytes)	
Ffunc_screen$__str_0$0$0:	
	.db $52 $45 $43 $4F $52 $44 $00
	
; Data from 162A to 1630 (7 bytes)	
Ffunc_screen$__str_1$0$0:	
	.db $43 $4F $56 $45 $52 $53 $00
	
; Data from 1631 to 1635 (5 bytes)	
Ffunc_screen$__str_2$0$0:	
	.db $31 $39 $38 $34 $00
	
; Data from 1636 to 163A (5 bytes)	
Ffunc_screen$__str_3$0$0:	
	.db $31 $39 $38 $36 $00
	
; Data from 163B to 163F (5 bytes)	
Ffunc_screen$__str_4$0$0:	
	.db $31 $39 $38 $38 $00
	
; Data from 1640 to 1640 (1 bytes)	
A$func_screen$181:	
C$func_screen.c$34$1$23:	
C$func_screen.c$57$1$25:	
G$screen_func_screen_update$0$0:	
_screen_func_screen_update:	
	.db $C1
	
; Data from 1641 to 1641 (1 bytes)	
A$func_screen$182:	
	.db $E1
	
; Data from 1642 to 1642 (1 bytes)	
A$func_screen$183:	
	.db $E5
	
; Data from 1643 to 1643 (1 bytes)	
A$func_screen$184:	
	.db $C5
	
; Data from 1644 to 1645 (2 bytes)	
A$func_screen$185:	
	.db $36 $08
	
; Data from 1646 to 1646 (1 bytes)	
A$func_screen$190:	
C$func_screen.c$58$1$25:	
XG$screen_func_screen_update$0$0:	
	.db $C9
	
; Data from 1647 to 1656 (16 bytes)	
_cursor__palette__bin:	
	.db $00 $00 $15 $15 $2A $2A $15 $15 $2A $2A $2A $2A $3F $3F $3F $3F
	
; Data from 1657 to 1711 (187 bytes)	
_cursor__tiles__psgcompr:	
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
	
; Data from 1712 to 1721 (16 bytes)	
_font__palette__bin:	
	.db $00 $02 $08 $0A $20 $22 $28 $2A $3F $03 $0C $0F $30 $33 $3C $3F
	
; Data from 1722 to 17A1 (128 bytes)	
_font__tilemap__bin:	
	.db $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00 $07 $00
	.db $08 $00 $09 $00 $0A $00 $0B $00 $0C $00 $0D $00 $0E $00 $0F $00
	.db $10 $00 $11 $00 $12 $00 $13 $00 $14 $00 $15 $00 $16 $00 $17 $00
	.db $18 $00 $19 $00 $1A $00 $1B $00 $1C $00 $1D $00 $1E $00 $1F $00
	.db $20 $00 $21 $00 $22 $00 $23 $00 $24 $00 $25 $00 $26 $00 $27 $00
	.db $28 $00 $29 $00 $2A $00 $2B $00 $2C $00 $2D $00 $2E $00 $2F $00
	.db $30 $00 $31 $00 $32 $00 $33 $00 $34 $00 $35 $00 $36 $00 $37 $00
	.db $38 $00 $39 $00 $3A $00 $3B $00 $3C $00 $3D $00 $3E $00 $3F $00
	
; Data from 17A2 to 1A38 (663 bytes)	
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
	
; Data from 1A39 to 1A5B (35 bytes)	
_sfx_cheat_psg:	
	.db $CE $4B $D0 $3B $D1 $38 $CF $47 $08 $02 $00 $C7 $49 $0A $02 $00
	.db $09 $02 $00 $45 $D0 $3B $D1 $3B $D2 $3A $D3 $39 $D4 $39 $C3 $55
	.db $DF $3C $00
	
; Data from 1A5C to 1A7B (32 bytes)	
_sfx_right_psg:	
	.db $C5 $4D $D0 $3B $CE $48 $3B $C7 $44 $D5 $3A $CA $46 $3B $C5 $4D
	.db $DA $3A $09 $04 $00 $DB $3B $CA $46 $DD $3A $C0 $40 $DF $38 $00
	
; Data from 1A7C to 1A9E (35 bytes)	
_sfx_wrong_psg:	
	.db $C5 $4D $D0 $3B $C0 $4A $3B $C7 $49 $3B $CE $48 $D5 $3B $C5 $4D
	.db $3B $C0 $4A $3B $C7 $49 $DA $3B $CE $48 $3B $C0 $49 $3B $C0 $40
	.db $DF $3B $00
	
__divuint:	
		pop af
		pop hl
		pop de
		push de
		push hl
		push af
		jr __divu16
	
__divuchar:	
		ld hl, $0003
		add hl, sp
		ld e, (hl)
		dec hl
		ld l, (hl)
__divu8:	
		ld h, $00
		ld d, h
__divu16:	
		ld a, e
		and $80
		or d
		jr nz, ++
		ld b, $10
		adc hl, hl
-:	
		rla
		sub e
		jr nc, +
		add a, e
+:	
		ccf
		adc hl, hl
		djnz -
		ld e, a
		ret
	
++:	
		ld b, $09
		ld a, l
		ld l, h
		ld h, $00
		rr l
-:	
		adc hl, hl
		sbc hl, de
		jr nc, +
		add hl, de
+:	
		ccf
		rla
		djnz -
		rl b
		ld d, b
		ld e, a
		ex de, hl
		ret
	
_UNSAFE_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableY	; SpriteTableY = $C063
		call _OUTI64
		ld hl, $7F80
		rst $08	; _LABEL_8_
		ld c, Port_VDPData
		ld hl, SpriteTableXN	; SpriteTableXN = $C0A3
		jp _OUTI128
	
; Data from 1AF8 to 1B14 (29 bytes)	
_UNSAFE_SMS_VRAMmemcpy32:	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $59 $01
	
; Data from 1B15 to 1B31 (29 bytes)	
_UNSAFE_SMS_VRAMmemcpy64:	
	.db $FD $21 $02 $00 $FD $39 $FD $6E $00 $FD $7E $01 $CB $F7 $67 $CF
	.db $0E $BE $21 $04 $00 $39 $7E $23 $66 $6F $C3 $19 $01
	
; Data from 1B32 to 1B4E (29 bytes)	
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
		ld hl, _VDPReg_init	; _VDPReg_init = $1BA3
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
		ld hl, VDPType	; VDPType = $C05E
		ld (hl), $80
		ret
	
+:	
		ld hl, VDPType	; VDPType = $C05E
		ld (hl), $40
		ret
	
; Data from 1BA3 to 1BAD (11 bytes)	
_VDPReg_init:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF
	
; Data from 1BAE to 1BB5 (8 bytes)	
_SMS_VDPType:	
	.db $FD $21 $5E $C0 $FD $6E $00 $C9
	
_SMS_VDPturnOnFeature:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C1AA
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
		ld hl, VDPReg	; VDPReg = $C1AA
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
	
_SMS_setBGScrollX:	
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, $88
		out (Port_VDPAddress), a
		ei
		ret
	
_SMS_setBGScrollY:	
		di
		ld a, l
		out (Port_VDPAddress), a
		ld a, $89
		out (Port_VDPAddress), a
		ei
		ret
	
; Data from 1BFA to 1C03 (10 bytes)	
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
		ld hl, spritesHeight	; spritesHeight = $C1AC
		ld (hl), $10
		jr ++
	
+:	
		push bc
		ld hl, $0102
		call _SMS_VDPturnOffFeature
		pop bc
		ld hl, spritesHeight	; spritesHeight = $C1AC
		ld (hl), $08
++:	
		bit 1, c
		jr z, +
		ld hl, $0101
		call _SMS_VDPturnOnFeature
		ld hl, spritesWidth	; spritesWidth = $C1AD
		ld (hl), $10
		ld iy, spritesHeight	; spritesHeight = $C1AC
		sla (iy+0)
		ret
	
+:	
		ld hl, $0101
		call _SMS_VDPturnOffFeature
		ld hl, spritesWidth	; spritesWidth = $C1AD
		ld (hl), $08
		ret
	
_SMS_setBGPaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
_SMS_setSpritePaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, PSGChan1Volume	; PSGChan1Volume = $C010
		add hl, bc
		rst $08	; _LABEL_8_
		ld hl, $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret
	
_SMS_loadBGPalette:	
		ld de, Lmain.main$global_pause$1$55	; Lmain.main$global_pause$1$55 = $C000
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
	
_SMS_loadSpritePalette:	
		ld de, PSGChan1Volume	; PSGChan1Volume = $C010
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
	
; Data from 1CAD to 1CB0 (4 bytes)	
_SMS_setColor:	
	.db $7D $D3 $BE $C9
	
_SMS_initSprites:	
		ld hl, SpriteNextFree	; SpriteNextFree = $C123
		ld (hl), $00
		ret
	
_SMS_addSprite:	
		ld a, (SpriteNextFree)	; SpriteNextFree = $C123
		sub $40
		jr nc, _LABEL_1D09_
		ld iy, $0003
		add iy, sp
		ld a, (iy+0)
		sub $D1
		jr z, _LABEL_1D09_
		ld a, $63
		ld hl, SpriteNextFree	; SpriteNextFree = $C123
		add a, (hl)
		ld c, a
		ld a, $C0
		adc a, $00
		ld b, a
		ld e, (iy+0)
		dec e
		ld a, e
		ld (bc), a
		ld a, (SpriteNextFree)	; SpriteNextFree = $C123
		add a, a
		ld c, a
		ld hl, SpriteTableXN	; SpriteTableXN = $C0A3
		ld b, $00
		add hl, bc
		ld iy, $0002
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		inc hl
		ld iy, $0004
		add iy, sp
		ld a, (iy+0)
		ld (hl), a
		ld iy, SpriteNextFree	; SpriteNextFree = $C123
		ld c, (iy+0)
		inc (iy+0)
		ld l, c
		ret
	
_LABEL_1D09_:	
		ld l, $FF
		ret
	
_SMS_finalizeSprites:	
		ld a, (SpriteNextFree)	; SpriteNextFree = $C123
		sub $40
		ret nc
		ld bc, SpriteTableY	; SpriteTableY = $C063
		ld hl, (SpriteNextFree)	; SpriteNextFree = $C123
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, SpriteTableY	; SpriteTableY = $C063
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
		ld bc, SpriteTableXN	; SpriteTableXN = $C0A3
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
		ld hl, VDPBlank	; VDPBlank = $C05B
		ld (hl), $00
-:	
		ld hl, VDPBlank	; VDPBlank = $C05B
		bit 0, (hl)
		jr z, -
		ret
	
_SMS_getKeysStatus:	
		ld hl, (KeysStatus)	; KeysStatus = $C05F
		ret
	
; Data from 1D58 to 1D74 (29 bytes)	
_SMS_getKeysPressed:	
	.db $FD $21 $61 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $5F $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9
	
; Data from 1D75 to 1D8B (23 bytes)	
_SMS_getKeysHeld:	
	.db $3A $5F $C0 $FD $21 $61 $C0 $FD $A6 $00 $6F $3A $60 $C0 $FD $21
	.db $61 $C0 $FD $A6 $01 $67 $C9
	
; Data from 1D8C to 1DA8 (29 bytes)	
_SMS_getKeysReleased:	
	.db $FD $21 $5F $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $79 $FD
	.db $21 $61 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67 $C9
	
_SMS_queryPauseRequested:	
		ld iy, PauseRequested	; PauseRequested = $C05D
		ld l, (iy+0)
		ret
	
_SMS_resetPauseRequest:	
		ld hl, PauseRequested	; PauseRequested = $C05D
		ld (hl), $00
		ret
	
; Data from 1DB7 to 1DC7 (17 bytes)	
_SMS_setLineInterruptHandler:	
	.db $21 $02 $00 $39 $7E $32 $24 $C1 $21 $03 $00 $39 $7E $32 $25 $C1
	.db $C9
	
; Data from 1DC8 to 1DD6 (15 bytes)	
_SMS_setLineCounter:	
	.db $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	
; Data from 1DD7 to 1DDA (4 bytes)	
_SMS_getVCount:	
	.db $DB $7E $6F $C9
	
; Data from 1DDB to 1DDE (4 bytes)	
_SMS_getHCount:	
	.db $DB $7F $6F $C9
	
_SMS_isr:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (SMS_VDPFlags), a	; SMS_VDPFlags = $C05C
		rlca
		jr nc, +
		ld hl, VDPBlank	; VDPBlank = $C05B
		ld (hl), $01
		ld hl, (KeysStatus)	; KeysStatus = $C05F
		ld (PreviousKeysStatus), hl	; PreviousKeysStatus = $C061
		in a, (Port_IOPort1)
		cpl
		ld hl, KeysStatus	; KeysStatus = $C05F
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
		ld hl, (SMS_theLineInterruptHandler)	; SMS_theLineInterruptHandler = $C124
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
		ld hl, PauseRequested	; PauseRequested = $C05D
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
__moduchar:	
		ld hl, $0003
		add hl, sp
		ld e, (hl)
		dec hl
		ld l, (hl)
		call __divu8
		ex de, hl
		ret
	
__moduint:	
		pop af
		pop hl
		pop de
		push de
		push hl
		push af
		call __divu16
		ex de, hl
		ret
	
_SMS_loadSTMcompressedTileMapAre:	
		push ix
		ld ix, $0000
		add ix, sp
		ld hl, $FFF0
		add hl, sp
		ld sp, hl
		ld (ix-2), $00
		ld (ix-1), $00
		ld (ix-13), $00
		ld (ix-12), $00
		ld l, (ix+5)
		ld h, $00
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		add hl, hl
		ld (ix-4), l
		ld a, h
		or $78
		ld (ix-3), a
		ld a, (ix+4)
		ld (ix-6), a
		ld (ix-5), $00
		sla (ix-6)
		rl (ix-5)
		ld a, (ix-4)
		or (ix-6)
		ld e, a
		ld a, (ix-3)
		or (ix-5)
		ld d, a
		ld a, (ix+8)
		ld (ix-6), a
		ld (ix-15), a
		ld (ix-16), $00
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
_LABEL_1EA0_:	
		ld l, (ix+6)
		ld h, (ix+7)
		ld a, (hl)
		ld (ix-14), a
		inc hl
		ld (ix+6), l
		ld (ix+7), h
		ld a, (ix+6)
		ld (ix-4), a
		ld a, (ix+7)
		ld (ix-3), a
		ld a, (ix-14)
		and $02
		ld (ix-7), a
		ld a, (ix-14)
		rrca
		rrca
		and $3F
		ld (ix-8), a
		bit 0, (ix-14)
		jp z, _LABEL_1F78_
		ld (ix-10), $00
		ld a, (ix-1)
		ld (ix-9), a
		ld c, (ix-4)
		ld b, (ix-3)
		inc bc
		ld l, (ix-4)
		ld h, (ix-3)
		ld l, (hl)
		ld a, (ix-8)
		add a, $02
		ld (ix-11), a
		ld h, $00
		ld a, l
		or (ix-10)
		ld l, a
		ld a, h
		or (ix-9)
		ld h, a
		ld a, (ix-7)
		or a
		jr z, ++
		ld (ix+6), c
		ld (ix+7), b
		ld c, l
		ld b, h
		ld l, (ix-11)
-:	
		ld a, l
		or a
		jp z, _LABEL_1FF1_
		push hl
		ld l, c
		ld h, b
		rst $18	; _LABEL_18_
		pop hl
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld a, e
		add a, $40
		ld e, a
		ld a, d
		adc a, $00
		ld d, a
		push hl
		push bc
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
		pop bc
		pop hl
		ld a, (ix-6)
		ld (ix-15), a
+:	
		ld a, $01
		sub l
		jr nc, +
		inc bc
+:	
		dec l
		jr -
	
++:	
		ld (ix+6), c
		ld (ix+7), b
		ld (ix-2), l
		ld (ix-1), h
		ld b, (ix-11)
-:	
		ld a, b
		or a
		jp z, _LABEL_2001_
		ld l, (ix-2)
		ld h, (ix-1)
		rst $18	; _LABEL_18_
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld hl, $0040
		add hl, de
		ld e, l
		ld d, h
		rst $08	; _LABEL_8_
		ld a, (ix-6)
		ld (ix-15), a
+:	
		dec b
		jr -
	
_LABEL_1F78_:	
		ld a, (ix-7)
		or a
		jr z, ++
		bit 2, (ix-14)
		jr z, +
		ld a, (ix-2)
		ld (ix-13), a
		ld a, (ix-1)
		ld (ix-12), a
		ld (ix-16), $01
+:	
		ld c, (ix-14)
		srl c
		srl c
		srl c
		ld (ix-1), c
		ld (ix-2), $00
		jp _LABEL_1EA0_
	
++:	
		ld l, (ix-8)
		ld a, l
		or a
		jr z, _LABEL_201B_
		ld a, (ix-1)
		ld (ix-10), a
		ld (ix-9), $00
		ld c, (ix-4)
		ld b, (ix-3)
		ld (ix-11), l
-:	
		ld a, (ix-11)
		or a
		jr z, ++
		ld a, (bc)
		out (Port_VDPData), a
		inc bc
		nop
		nop
		nop
		ld a, (ix-10)
		out (Port_VDPData), a
		dec (ix-15)
		ld a, (ix-15)
		or a
		jr nz, +
		ld hl, $0040
		add hl, de
		ex de, hl
		push bc
		ld l, e
		ld h, d
		rst $08	; _LABEL_8_
		pop bc
		ld a, (ix-6)
		ld (ix-15), a
+:	
		dec (ix-11)
		jr -
	
_LABEL_1FF1_:	
		ld (ix-2), c
		ld (ix-1), b
		jr _LABEL_2001_
	
	; Data from 1FF9 to 1FFA (2 bytes)
	.db $18 $06
	
++:	
		ld (ix+6), c
		ld (ix+7), b
_LABEL_2001_:	
		bit 0, (ix-16)
		jp z, _LABEL_1EA0_
		ld a, (ix-13)
		ld (ix-2), a
		ld a, (ix-12)
		ld (ix-1), a
		ld (ix-16), $00
		jp _LABEL_1EA0_
	
_LABEL_201B_:	
		ld sp, ix
		pop ix
		ret
	
___sdcc_call_hl:	
		jp (hl)
	
_SMS_loadPSGaidencompressedTiles:	
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
_LABEL_2045_:	
		push bc
		ld b, $04
		ld de, decompBuffer	; decompBuffer = $C126
		ld c, (ix+0)
		inc ix
_LABEL_2050_:	
		rlc c
		jr nc, _LABEL_2097_
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
		ld iy, decompBuffer	; decompBuffer = $C126
		add iy, de
		ex de, hl
		cp $03
		jr c, _LABEL_20B1_
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
	
_LABEL_2097_:	
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
	
_LABEL_20B1_:	
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
		jp nz, _LABEL_2050_
		ld de, $0008
		ld c, e
		ld hl, decompBuffer	; decompBuffer = $C126
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
		jp nz, _LABEL_2045_
		ret
	
; Data from 2103 to 2104 (2 bytes)	
Finput_manager$__xinit_curr_joyp:	
	.db $00 $00
	
; Data from 2105 to 2106 (2 bytes)	
Finput_manager$__xinit_prev_joyp:	
	.db $00 $00
	
; Data from 2107 to 211E (24 bytes)	
Fcursor_object$__xinit_cursor_al:	
	.db $4D $11 $52 $11 $57 $11 $5C $11 $61 $11 $66 $11 $6B $11 $70 $11
	.db $75 $11 $7A $11 $7F $11 $84 $11
	
; Data from 211F to 2136 (24 bytes)	
Frecord_object$__xinit_record_ti:	
	.db $89 $80 $32 $81 $70 $80 $9F $80 $18 $81 $8D $80 $87 $80 $67 $80
	.db $67 $80 $9F $80 $C7 $80 $7A $80
	
; Data from 2137 to 214E (24 bytes)	
Frecord_object$__xinit_record_ti:	
	.db $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80 $10 $80
	.db $10 $80 $10 $80 $10 $80 $10 $80
	
; Data from 214F to 216A (28 bytes)	
Frecord_object$__xinit_record_pa:	
	.db $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80 $00 $80
	.db $00 $80 $00 $80 $00 $80 $00 $80 $04 $20 $08 $08
	
gsinit:	
		ld bc, $0068
		ld a, b
		or c
		jr z, +
		ld de, Finput_manager$curr_joypad1$0$0	; Finput_manager$curr_joypad1$0$0 = $C146
		ld hl, Finput_manager$__xinit_curr_joyp	; Finput_manager$__xinit_curr_joyp = $2103
		ldir
+:	
		ret
	
	; Data from 217B to 7F8B (24081 bytes)
	.dsb 24081, $00
	
; Data from 7F8C to 7FC7 (60 bytes)	
G$__SMS__SDSC_descr$0$0:	
___SMS__SDSC_descr:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $20 $52 $65 $63 $6F $72 $64
	.db $20 $43 $6F $76 $65 $72 $73 $20 $66 $6F $72 $20 $74 $68 $65 $20
	.db $53 $4D $53 $20 $50 $6F $77 $65 $72 $21 $20 $32 $30 $32 $31 $20
	.db $43 $6F $6D $70 $65 $74 $69 $74 $69 $6F $6E $00
	
; Data from 7FC8 to 7FD1 (10 bytes)	
G$__SMS__SDSC_name$0$0:	
___SMS__SDSC_name:	
	.db $56 $61 $6E $20 $48 $61 $6C $65 $6E $00
	
; Data from 7FD2 to 7FDF (14 bytes)	
G$__SMS__SDSC_author$0$0:	
___SMS__SDSC_author:	
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00
	
; Data from 7FE0 to 7FEF (16 bytes)	
G$__SMS__SDSC_signature$0$0:	
___SMS__SDSC_signature:	
	.db $53 $44 $53 $43 $01 $00 $27 $03 $21 $20 $D2 $7F $C8 $7F $8C $7F
	
; Data from 7FF0 to 7FFF (16 bytes)	
G$__SMS__SEGA_signature$0$0:	
___SMS__SEGA_signature:	
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $D5 $FF $99 $99 $00 $4C
	
; Data from 8000 to 800F (16 bytes)	
G$splash__palette__bin$0$0:	
_splash__palette__bin:	
	.db $00 $03 $01 $05 $05 $06 $06 $07 $07 $17 $1A $2A $0A $1F $0F $3F
	
; Data from 8010 to 8056 (71 bytes)	
G$splash__tilemap__stmcompr$0$0:	
_splash__tilemap__stmcompr:	
	.db $FD $40 $FD $40 $FD $40 $0D $40 $1B $41 $01 $40 $03 $49 $49 $40
	.db $3F $4B $35 $40 $3F $5C $35 $40 $3F $6D $5D $40 $03 $7E $FD $40
	.db $65 $40 $07 $80 $55 $40 $07 $83 $04 $42 $01 $40 $07 $86 $01 $40
	.db $03 $49 $41 $40 $33 $89 $41 $40 $33 $97 $41 $40 $33 $A5 $FD $40
	.db $FD $40 $FD $40 $11 $40 $00
	
; Data from 8057 to BFFF (16297 bytes)	
G$splash__tiles__psgcompr$0$0:	
_splash__tiles__psgcompr:	
	.incbin ...
	
; Data from C000 to C00F (16 bytes)	
G$VanHalenTitleGap__palette__bin:	
_VanHalenTitleGap__palette__bin:	
	.db $00 $00 $10 $14 $15 $05 $25 $38 $29 $39 $39 $2A $3A $3F $3E $2A
	
; Data from C010 to C076 (103 bytes)	
G$VanHalenTitleGap__tilemap__stm:	
_VanHalenTitleGap__tilemap__stmc:	
	.db $FD $40 $FD $40 $67 $41 $11 $40 $63 $5C $11 $40 $5F $76 $19 $40
	.db $5B $8F $19 $40 $5B $A7 $19 $40 $57 $BF $25 $40 $0F $D6 $04 $40
	.db $1B $DB $04 $40 $07 $E3 $01 $40 $04 $E6 $25 $40 $04 $E7 $0D $40
	.db $1B $E8 $59 $40 $16 $04 $E3 $17 $F0 $5D $40 $17 $F7 $5D $40 $13
	.db $FE $06 $5D $40 $04 $04 $06 $04 $BF $0B $05 $06 $6D $40 $07 $09
	.db $06 $69 $40 $0B $0C $06 $6D $40 $07 $10 $06 $6D $40 $04 $13 $02
	.db $FD $40 $FD $40 $31 $40 $00
	
; Data from C077 to D2D7 (4705 bytes)	
G$VanHalenTitleGap__tiles__psgco:	
_VanHalenTitleGap__tiles__psgcom:	
	.incbin ...
	
; Data from D2D8 to D2E7 (16 bytes)	
G$VanHalenTitleTop__palette__bin:	
_VanHalenTitleTop__palette__bin:	
	.db $00 $00 $10 $14 $15 $01 $25 $38 $29 $39 $39 $2A $3A $3F $3E $2A
	
; Data from D2E8 to D344 (93 bytes)	
G$VanHalenTitleTop__tilemap__stm:	
_VanHalenTitleTop__tilemap__stmc:	
	.db $01 $40 $67 $41 $11 $40 $63 $5C $11 $40 $63 $76 $15 $40 $5B $90
	.db $19 $40 $5B $A8 $19 $40 $57 $C0 $25 $40 $0B $D7 $01 $40 $1B $DB
	.db $04 $40 $0B $E3 $45 $40 $1B $E7 $59 $40 $1B $EF $5D $40 $13 $F7
	.db $61 $40 $0F $FD $22 $04 $8F $02 $61 $40 $0A $0F $02 $06 $6D $40
	.db $07 $07 $06 $69 $40 $0B $0A $06 $6D $40 $07 $0E $06 $6D $40 $04
	.db $11 $02 $FD $40 $FD $40 $FD $40 $FD $40 $29 $40 $00
	
; Data from D345 to FFFF (11451 bytes)	
G$VanHalenTitleTop__tiles__psgco:	
_VanHalenTitleTop__tiles__psgcom:	
	.incbin ...
	
; Data from 10000 to 1000F (16 bytes)	
G$VanHalen1978__palette__bin$0$0:	
_VanHalen1978__palette__bin:	
	.db $00 $00 $00 $00 $14 $01 $05 $15 $10 $25 $39 $02 $16 $1A $3A $1A
	
; Data from 10010 to 10088 (121 bytes)	
G$VanHalen1978__tilemap__stmcomp:	
_VanHalen1978__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $03 $01 $04 $00 $0F $03 $01 $00 $33 $08 $29 $00
	.db $07 $16 $09 $00 $07 $19 $04 $00 $1F $1C $25 $00 $4F $25 $21 $00
	.db $17 $3A $04 $00 $33 $41 $1D $00 $57 $4F $25 $00 $4F $66 $1D $00
	.db $57 $7B $19 $00 $5B $92 $19 $00 $26 $04 $6B $57 $AA $19 $00 $5B
	.db $C1 $31 $00 $43 $D9 $19 $00 $03 $EB $09 $00 $03 $ED $01 $00 $33
	.db $EF $15 $00 $5F $FD $06 $15 $00 $5F $16 $06 $19 $00 $5B $2F $06
	.db $19 $00 $5B $47 $06 $19 $00 $5B $5F $06 $19 $00 $5B $77 $06 $21
	.db $00 $04 $8F $02 $FD $00 $59 $00 $00
	
; Data from 10089 to 13FFF (16247 bytes)	
G$VanHalen1978__tiles__psgcompr$:	
_VanHalen1978__tiles__psgcompr:	
	.incbin ...
	
; Data from 14000 to 1400F (16 bytes)	
G$VanHalen1979__palette__bin$0$0:	
_VanHalen1979__palette__bin:	
	.db $00 $00 $10 $10 $10 $15 $29 $07 $1B $2A $2B $2F $3F $3F $3E $25
	
; Data from 14010 to 14131 (290 bytes)	
G$VanHalen1979__tilemap__stmcomp:	
_VanHalen1979__tilemap__stmcompr:	
	.db $FD $00 $81 $00 $33 $01 $04 $09 $03 $0F $26 $04 $0C $08 $11 $09
	.db $0F $12 $19 $00 $1B $17 $01 $09 $08 $1F $09 $0B $20 $03 $23 $05
	.db $09 $07 $25 $19 $00 $01 $09 $08 $28 $09 $26 $04 $23 $07 $29 $04
	.db $09 $26 $04 $08 $04 $09 $13 $2C $26 $04 $08 $05 $09 $07 $32 $15
	.db $00 $1B $35 $04 $20 $16 $04 $3C $04 $3D $01 $09 $07 $3E $16 $04
	.db $28 $03 $41 $04 $09 $0F $43 $15 $00 $5F $48 $15 $00 $04 $48 $5B
	.db $61 $15 $00 $5F $79 $15 $00 $04 $01 $5B $92 $15 $00 $04 $01 $16
	.db $04 $0C $05 $09 $33 $AA $01 $09 $0B $B8 $15 $00 $08 $01 $BC $16
	.db $04 $3C $08 $09 $BD $16 $04 $38 $03 $BE $04 $2B $3B $C0 $19 $00
	.db $04 $09 $36 $04 $1D $01 $09 $04 $D0 $16 $08 $BC $1D $23 $D1 $01
	.db $09 $0F $DB $15 $00 $08 $79 $3C $36 $04 $2B $03 $E0 $26 $04 $22
	.db $0B $E2 $04 $09 $13 $E6 $36 $04 $0C $01 $09 $0F $EC $19 $00 $01
	.db $09 $36 $04 $0C $05 $09 $26 $08 $28 $2B $04 $F1 $16 $04 $41 $04
	.db $09 $0B $F2 $04 $09 $16 $04 $23 $01 $09 $0F $F6 $19 $00 $19 $09
	.db $26 $04 $2B $01 $09 $07 $FB $05 $09 $17 $FE $02 $19 $00 $25 $09
	.db $0A $2F $05 $06 $15 $00 $04 $12 $06 $2D $09 $27 $13 $02 $19 $00
	.db $05 $09 $0A $03 $1E $06 $04 $09 $04 $20 $06 $0D $09 $2B $21 $02
	.db $19 $00 $05 $09 $0A $03 $2D $06 $11 $09 $2F $2F $02 $FD $00 $85
	.db $00 $00
	
; Data from 14132 to 17FFF (16078 bytes)	
G$VanHalen1979__tiles__psgcompr$:	
_VanHalen1979__tiles__psgcompr:	
	.incbin ...
	
; Data from 18000 to 1800F (16 bytes)	
G$VanHalen1980__palette__bin$0$0:	
_VanHalen1980__palette__bin:	
	.db $00 $00 $00 $14 $15 $15 $15 $15 $15 $2A $2A $2A $3F $3F $3F $29
	
; Data from 18010 to 1806F (96 bytes)	
G$VanHalen1980__tilemap__stmcomp:	
_VanHalen1980__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $5B $01 $19 $00 $5B $19 $19 $00 $5B $31 $19 $00
	.db $5B $49 $19 $00 $5B $61 $19 $00 $5B $79 $19 $00 $33 $91 $04 $85
	.db $1F $9F $19 $00 $5B $A8 $19 $00 $5B $C0 $19 $00 $5B $D8 $19 $00
	.db $5B $F0 $06 $19 $00 $5B $08 $06 $19 $00 $5B $20 $06 $19 $00 $5B
	.db $38 $06 $19 $00 $5B $50 $06 $19 $00 $5B $68 $06 $19 $00 $5B $80
	.db $06 $19 $00 $5B $98 $06 $49 $00 $0F $B0 $02 $FD $00 $21 $00 $00
	
; Data from 18070 to 1BFFF (16272 bytes)	
G$VanHalen1980__tiles__psgcompr$:	
_VanHalen1980__tiles__psgcompr:	
	.incbin ...
	
; Data from 1C000 to 1C00F (16 bytes)	
G$VanHalen1981__palette__bin$0$0:	
_VanHalen1981__palette__bin:	
	.db $00 $00 $00 $01 $05 $15 $15 $06 $16 $07 $06 $1B $1A $2F $2F $1A
	
; Data from 1C010 to 1C09E (143 bytes)	
G$VanHalen1981__tilemap__stmcomp:	
_VanHalen1981__tilemap__stmcompr:	
	.db $FD $00 $09 $00 $0C $01 $00 $02 $05 $00 $07 $03 $05 $00 $03 $06
	.db $10 $02 $08 $00 $09 $05 $00 $04 $0A $1D $00 $5B $0B $15 $00 $63
	.db $23 $15 $00 $5F $3D $15 $00 $5F $56 $15 $00 $5B $6F $19 $00 $5B
	.db $87 $19 $00 $5B $9F $19 $00 $5B $B7 $19 $00 $5B $CF $19 $00 $5F
	.db $E7 $15 $00 $0A $5B $00 $02 $04 $6E $15 $00 $0A $5B $18 $06 $19
	.db $00 $5B $30 $32 $04 $23 $02 $15 $00 $0A $5B $48 $06 $15 $00 $5F
	.db $60 $06 $19 $00 $5B $79 $06 $19 $00 $5B $91 $06 $19 $00 $5B $A9
	.db $06 $19 $00 $0F $C1 $02 $01 $00 $1A $08 $C3 $C5 $0A $04 $C6 $06
	.db $09 $00 $04 $C7 $26 $04 $02 $03 $C8 $02 $FD $00 $1D $00 $00
	
; Data from 1C09F to 1FFFF (16225 bytes)	
G$VanHalen1981__tiles__psgcompr$:	
_VanHalen1981__tiles__psgcompr:	
	.incbin ...
	
; Data from 20000 to 2000F (16 bytes)	
G$VanHalen1982__palette__bin$0$0:	
_VanHalen1982__palette__bin:	
	.db $00 $00 $01 $01 $01 $02 $02 $03 $03 $03 $03 $17 $3F $3F $2B $1B
	
; Data from 20010 to 20117 (264 bytes)	
G$VanHalen1982__tilemap__stmcomp:	
_VanHalen1982__tilemap__stmcompr:	
	.db $FD $00 $15 $00 $03 $01 $11 $00 $03 $03 $01 $00 $03 $05 $04 $00
	.db $07 $07 $16 $04 $08 $1D $00 $09 $0A $4B $0B $19 $00 $0D $0A $13
	.db $1F $2F $24 $19 $00 $11 $0A $0B $31 $05 $24 $08 $35 $24 $1F $36
	.db $19 $00 $19 $0A $07 $3F $19 $24 $0F $42 $19 $00 $04 $47 $15 $0A
	.db $0B $48 $11 $24 $13 $4C $19 $00 $03 $52 $1D $0A $03 $54 $0D $24
	.db $08 $56 $24 $0B $57 $19 $00 $0B $5B $11 $0A $08 $5F $0A $07 $60
	.db $09 $24 $0F $63 $19 $00 $08 $68 $24 $07 $69 $19 $0A $0B $6C $01
	.db $24 $0F $70 $19 $00 $13 $75 $1D $0A $03 $7B $01 $24 $0F $7D $19
	.db $00 $03 $82 $04 $24 $0F $84 $19 $0A $1B $89 $19 $00 $23 $91 $15
	.db $0A $17 $9B $19 $00 $04 $A2 $16 $04 $77 $0D $24 $0F $A3 $11 $0A
	.db $13 $A8 $19 $00 $04 $AE $19 $24 $07 $AF $19 $0A $0B $B2 $19 $00
	.db $04 $B6 $1D $24 $07 $B7 $19 $0A $04 $5F $03 $BA $19 $00 $04 $BC
	.db $25 $24 $03 $BD $1D $0A $04 $BF $19 $00 $04 $C0 $29 $24 $07 $C1
	.db $08 $0A $C4 $11 $0A $19 $00 $2F $C5 $04 $24 $36 $04 $37 $03 $D2
	.db $15 $0A $19 $00 $2F $D4 $26 $04 $B7 $01 $24 $03 $E1 $11 $0A $21
	.db $00 $08 $E3 $05 $0B $E4 $10 $00 $E8 $01 $E9 $16 $04 $07 $05 $00
	.db $16 $04 $E6 $FD $00 $21 $00 $00
	
; Data from 20118 to 23FFF (16104 bytes)	
G$VanHalen1982__tiles__psgcompr$:	
_VanHalen1982__tiles__psgcompr:	
	.incbin ...
	
; Data from 24000 to 2400F (16 bytes)	
G$VanHalen1984__palette__bin$0$0:	
_VanHalen1984__palette__bin:	
	.db $00 $15 $16 $1A $2B $2A $2B $2B $2F $2F $2F $3F $3F $3F $3E $2A
	
; Data from 24010 to 2408C (125 bytes)	
G$VanHalen1984__tilemap__stmcomp:	
_VanHalen1984__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $5B $01 $19 $00 $5B $19 $19 $00 $5B $31 $19 $00
	.db $5B $49 $19 $00 $5B $61 $19 $00 $5B $79 $19 $00 $5B $91 $19 $00
	.db $03 $A9 $16 $04 $92 $4B $AB $04 $A8 $19 $00 $08 $BF $91 $4F $C0
	.db $04 $A8 $19 $00 $57 $D5 $04 $A8 $19 $00 $57 $EC $02 $04 $A8 $19
	.db $00 $0A $57 $03 $02 $04 $A8 $19 $00 $0A $07 $1A $06 $04 $A8 $47
	.db $1D $02 $04 $A8 $19 $00 $0A $07 $30 $4B $32 $02 $04 $A8 $19 $00
	.db $05 $A8 $0A $4F $46 $02 $19 $00 $05 $A8 $0A $4F $5B $06 $19 $00
	.db $5B $70 $06 $19 $00 $5B $88 $02 $FD $00 $85 $00 $00
	
; Data from 2408D to 27FFF (16243 bytes)	
G$VanHalen1984__tiles__psgcompr$:	
_VanHalen1984__tiles__psgcompr:	
	.incbin ...
	
; Data from 28000 to 2800F (16 bytes)	
G$VanHalen1986__palette__bin$0$0:	
_VanHalen1986__palette__bin:	
	.db $00 $00 $00 $04 $01 $05 $15 $10 $16 $1A $1A $2A $2B $3F $2F $19
	
; Data from 28010 to 28086 (119 bytes)	
G$VanHalen1986__tilemap__stmcomp:	
_VanHalen1986__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $5F $01 $15 $00 $5F $1A $15 $00 $5B $33 $04 $32
	.db $15 $00 $5F $4B $15 $00 $5B $64 $19 $00 $1F $7C $01 $84 $0B $85
	.db $04 $84 $1B $89 $19 $00 $5B $91 $19 $00 $5B $A9 $19 $00 $5B $C1
	.db $19 $00 $5B $D9 $19 $00 $5B $F1 $06 $19 $00 $5B $09 $06 $19 $00
	.db $5B $21 $06 $19 $00 $5B $39 $06 $19 $00 $5F $51 $06 $15 $00 $03
	.db $6A $06 $04 $00 $53 $6C $06 $19 $00 $57 $82 $06 $1D $00 $33 $99
	.db $06 $04 $00 $04 $84 $0B $A7 $06 $01 $00 $04 $AB $06 $25 $00 $17
	.db $AC $02 $FD $00 $3D $00 $00
	
; Data from 28087 to 2BFFF (16249 bytes)	
G$VanHalen1986__tiles__psgcompr$:	
_VanHalen1986__tiles__psgcompr:	
	.incbin ...
	
; Data from 2C000 to 2C00F (16 bytes)	
G$VanHalen1988__palette__bin$0$0:	
_VanHalen1988__palette__bin:	
	.db $00 $00 $00 $00 $15 $15 $15 $15 $2A $2A $2A $3F $3F $3F $3F $2A
	
; Data from 2C010 to 2C066 (87 bytes)	
G$VanHalen1988__tilemap__stmcomp:	
_VanHalen1988__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $53 $01 $21 $00 $53 $17 $21 $00 $57 $2D $1D $00
	.db $5B $44 $19 $00 $5B $5C $19 $00 $5B $74 $19 $00 $5B $8C $19 $00
	.db $5B $A4 $19 $00 $5B $BC $19 $00 $5B $D4 $19 $00 $5B $EC $06 $19
	.db $00 $5B $04 $06 $19 $00 $5B $1C $06 $19 $00 $5B $34 $06 $19 $00
	.db $5B $4C $06 $19 $00 $5B $64 $06 $19 $00 $57 $7C $06 $1D $00 $57
	.db $93 $02 $FD $00 $89 $00 $00
	
; Data from 2C067 to 2FFFF (16281 bytes)	
G$VanHalen1988__tiles__psgcompr$:	
_VanHalen1988__tiles__psgcompr:	
	.incbin ...
	
; Data from 30000 to 3000F (16 bytes)	
G$VanHalen1991__palette__bin$0$0:	
_VanHalen1991__palette__bin:	
	.db $00 $00 $01 $01 $01 $01 $01 $01 $01 $01 $15 $15 $16 $16 $2B $2A
	
; Data from 30010 to 30066 (87 bytes)	
G$VanHalen1991__tilemap__stmcomp:	
_VanHalen1991__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $5B $01 $19 $00 $5B $19 $19 $00 $5B $31 $19 $00
	.db $5B $49 $19 $00 $5B $61 $19 $00 $5B $79 $19 $00 $5B $91 $19 $00
	.db $5B $A9 $19 $00 $5B $C1 $19 $00 $5B $D9 $15 $00 $5F $F1 $06 $19
	.db $00 $5B $0A $06 $19 $00 $5B $22 $06 $19 $00 $5B $3A $06 $19 $00
	.db $5B $52 $06 $19 $00 $5B $6A $06 $19 $00 $5B $82 $06 $19 $00 $5B
	.db $9A $02 $FD $00 $85 $00 $00
	
; Data from 30067 to 33FFF (16281 bytes)	
G$VanHalen1991__tiles__psgcompr$:	
_VanHalen1991__tiles__psgcompr:	
	.incbin ...
	
; Data from 34000 to 3400F (16 bytes)	
G$VanHalen1995__palette__bin$0$0:	
_VanHalen1995__palette__bin:	
	.db $00 $00 $00 $01 $01 $01 $15 $15 $06 $16 $16 $1B $1B $2F $3F $2B
	
; Data from 34010 to 3409E (143 bytes)	
G$VanHalen1995__tilemap__stmcomp:	
_VanHalen1995__tilemap__stmcompr:	
	.db $FD $00 $29 $00 $04 $01 $05 $00 $08 $01 $00 $01 $02 $16 $04 $02
	.db $31 $00 $5B $03 $19 $00 $5F $1B $15 $00 $5F $34 $11 $00 $63 $4D
	.db $11 $00 $5F $67 $19 $00 $5B $80 $19 $00 $5B $98 $19 $00 $2F $B0
	.db $04 $A2 $23 $BD $19 $00 $5B $C7 $15 $00 $5F $DF $15 $00 $36 $04
	.db $33 $5B $F8 $02 $04 $33 $15 $00 $0A $5B $10 $02 $04 $4C $15 $00
	.db $0A $5B $28 $06 $19 $00 $5F $40 $02 $11 $00 $12 $04 $33 $0A $5F
	.db $59 $06 $11 $00 $5F $72 $02 $04 $66 $11 $00 $0A $63 $8B $06 $15
	.db $00 $5F $A5 $06 $1D $00 $04 $BE $06 $11 $00 $07 $BF $06 $01 $00
	.db $04 $C2 $06 $05 $00 $03 $C3 $0B $C4 $02 $FD $00 $05 $00 $00
	
; Data from 3409F to 37FFF (16225 bytes)	
G$VanHalen1995__tiles__psgcompr$:	
_VanHalen1995__tiles__psgcompr:	
	.incbin ...
	
; Data from 38000 to 3800F (16 bytes)	
G$VanHalen1998__palette__bin$0$0:	
_VanHalen1998__palette__bin:	
	.db $00 $00 $00 $00 $01 $05 $15 $16 $1A $2B $2F $3F $3F $3F $2B $2A
	
; Data from 38010 to 380C6 (183 bytes)	
G$VanHalen1998__tilemap__stmcomp:	
_VanHalen1998__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $03 $01 $0D $00 $07 $03 $29 $00 $04 $01 $1D $00
	.db $0B $06 $04 $00 $0F $0A $29 $00 $04 $0F $1D $00 $33 $10 $04 $00
	.db $1F $1E $19 $00 $5B $27 $19 $00 $03 $3F $53 $40 $19 $00 $01 $40
	.db $53 $56 $19 $00 $5B $6C $19 $00 $5B $84 $19 $00 $2B $9C $04 $00
	.db $27 $A8 $19 $00 $1B $B3 $08 $00 $1E $03 $BB $04 $00 $27 $BD $19
	.db $00 $37 $C8 $16 $04 $1E $01 $00 $13 $D7 $19 $00 $43 $DD $16 $04
	.db $01 $2D $00 $5B $EF $06 $19 $00 $53 $07 $1A $04 $06 $02 $1D $00
	.db $0A $4F $1D $02 $04 $01 $16 $04 $1E $1D $00 $0A $0B $32 $06 $04
	.db $00 $37 $36 $06 $04 $00 $04 $45 $06 $04 $00 $04 $46 $06 $19 $00
	.db $0B $47 $06 $04 $00 $04 $4B $36 $04 $90 $2B $4C $1E $04 $06 $04
	.db $58 $06 $25 $00 $3B $59 $2A $04 $46 $22 $04 $01 $02 $35 $00 $0E
	.db $04 $69 $FD $00 $5D $00 $00
	
; Data from 380C7 to 3BFFF (16185 bytes)	
G$VanHalen1998__tiles__psgcompr$:	
_VanHalen1998__tiles__psgcompr:	
	.incbin ...
	
; Data from 3C000 to 3C00F (16 bytes)	
G$VanHalen2012__palette__bin$0$0:	
_VanHalen2012__palette__bin:	
	.db $00 $00 $01 $15 $15 $1A $02 $03 $2A $2B $2A $2A $2F $2F $3F $2A
	
; Data from 3C010 to 3C079 (106 bytes)	
G$VanHalen2012__tilemap__stmcomp:	
_VanHalen2012__tilemap__stmcompr:	
	.db $FD $00 $85 $00 $5B $01 $19 $00 $5B $19 $19 $00 $5B $31 $19 $00
	.db $5B $49 $19 $00 $5B $61 $19 $00 $5B $79 $19 $00 $5B $91 $19 $00
	.db $5B $A9 $19 $00 $5B $C1 $19 $00 $5B $D9 $19 $00 $07 $F1 $04 $00
	.db $4B $F4 $06 $19 $00 $5B $08 $06 $19 $00 $5B $20 $06 $19 $00 $5B
	.db $38 $06 $19 $00 $5B $50 $06 $19 $00 $5B $68 $06 $19 $00 $5B $80
	.db $06 $15 $00 $5F $98 $06 $19 $00 $1F $B1 $02 $29 $00 $1E $04 $B7
	.db $04 $00 $0E $04 $BA $FD $00 $05 $00 $00
	
; Data from 3C07A to 3FFFF (16262 bytes)	
G$VanHalen2012__tiles__psgcompr$:	
_VanHalen2012__tiles__psgcompr:	
	.incbin ...