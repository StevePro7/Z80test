; This disassembly was created using Emulicious (http://www.emulicious.net)	
.include "devkit/memory_manager.inc"
.include "devkit/enum_manager.inc"
.include "devkit/define_manager.inc"
	
	
.BANK 0 SLOT 0	
.ORG $0000	
	
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
	
//stevepro TODO	
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
		ld hl, VDPBlank			; VDPBlank = $C000
		ld (hl), a
		ld de, SMS_VDPFlags		; SMS_VDPFlags = $C001
		ld bc, $1FF0
		ldir
		call gsinit
		call _SMS_init
		ei
		call _main
		jp _exit
	
.include "content/out.inc"

; Data from 200 to 203 (4 bytes)	
__clock:	
	.db $3E $02 $CF $C9
	
_exit:	
		ld a, $00
		rst $08	; _LABEL_8_
-:	
		halt
		jr -
	
_main:	
		call _SMS_init
		ld hl, $0140
		call _SMS_VDPturnOffFeature
		ld a, $03
		push af
		inc sp
		xor a
		push af
		inc sp
		call _SMS_setSpritePaletteColor
		pop af
		ld hl, $0140
		call _SMS_VDPturnOnFeature
-:	
		call _SMS_waitForVBlank
		jr -
	
// stevepro TODO
	; Data from 229 to 27A (82 bytes)
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00 $48 $65
	.db $6C $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D $70 $6C $65
	.db $20 $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20 $53 $79 $73
	.db $74 $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72 $75 $6E $20
	.db $6F $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77 $61 $72 $65
	.db $21 $00
	
.include "devkit/sms_manager.inc"
	
_SMS_isr:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (SMS_VDPFlags), a		; SMS_VDPFlags = $C001
		rlca
		jr nc, +
		ld hl, VDPBlank				; VDPBlank = $C000
		ld (hl), $01
		ld hl, (KeysStatus)			; KeysStatus = $C004
		ld (PreviousKeysStatus), hl	; PreviousKeysStatus = $C006
		in a, (Port_IOPort1)
		cpl
		ld hl, KeysStatus			; KeysStatus = $C004
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
		ld hl, (SMS_theLineInterruptHandler)	; SMS_theLineInterruptHandler = $C0C9
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
		ld hl, PauseRequested					; PauseRequested = $C002
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
___sdcc_call_hl:	
		jp (hl)
	
; Data from 555 to 558 (4 bytes)	
_DATA_555_:	
	.db $04 $20 $08 $08
	
gsinit:	
		ld bc, _SMS_crt0_RST08 - 2	; _SMS_crt0_RST08 - 2 = $0004
		ld a, b
		or c
		jr z, +
		ld de, VDPReg				; VDPReg = $C0CB
		ld hl, _DATA_555_
		ldir
+:	
		ret
	
	; Data from 569 to 7F8D (31269 bytes)
	.dsb 31269, $00
	
; Data from 7F8E to 7FC5 (56 bytes)	
___SMS__SDSC_descr:	
	.db $53 $69 $6D $70 $6C $65 $20 $53 $65 $67 $61 $20 $4D $61 $73 $74
	.db $65 $72 $20 $53 $79 $73 $74 $65 $6D $20 $64 $65 $6D $6F $20 $74
	.db $6F $20 $72 $75 $6E $20 $6F $6E $20 $72 $65 $61 $6C $20 $68 $61
	.db $72 $64 $77 $61 $72 $65 $21 $00
	
; Data from 7FC6 to 7FD1 (12 bytes)	
___SMS__SDSC_name:	
	.db $48 $65 $6C $6C $6F $20 $57 $6F $72 $6C $64 $00
	
; Data from 7FD2 to 7FDF (14 bytes)	
___SMS__SDSC_author:	
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00
	
; Data from 7FE0 to 7FEF (16 bytes)	
___SMS__SDSC_signature:	
	.db $53 $44 $53 $43 $01 $00 $06 $12 $19 $20 $D2 $7F $C6 $7F $8E $7F
	
.BANK 1 SLOT 1	
.ORG $0000	
	
; Data from 7FF0 to 7FFF (16 bytes)
___SMS__SEGA_signature:	
	.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $36 $9B $99 $99 $00 $4C
	