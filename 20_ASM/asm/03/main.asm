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
VDPBlank db				; VDPBlank = $C000
SMS_VDPFlags db			; SMS_VDPFlags = $C001
PauseRequested db		; PauseRequested = $C002
VDPType db				; VDPType = $C003
KeysStatus dw			; KeysStatus = $C004
PreviousKeysStatus dw	; PreviousKeysStatus = $C006
SpriteTableY db			; SpriteTableY = $C008
.ende	
	
.enum $C048 export	
SpriteTableXN db		; SpriteTableXN = $C048
.ende	
	
.enum $C0C8 export	
SpriteNextFree db		; SpriteNextFree = $C0C8
SMS_theLineInterruptHandler dw		; SMS_theLineInterruptHandler = $C0C9
VDPReg dsb $4			; VDPReg = $C0CB
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende	
	
; Ports	
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
	
; Data from 99 to 118 (128 bytes)	
_OUTI128:	
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	
; Data from 119 to 158 (64 bytes)	
_OUTI64:	
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	
; Data from 159 to 198 (64 bytes)	
_OUTI32:	
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	.db $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3 $ED $A3
	
; Data from 199 to 1FF (103 bytes)	
_outi_block:	
	.db $C9
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
	
	; Data from 229 to 27A (82 bytes)
	.db $53 $74 $65 $76 $65 $6E $20 $42 $6F $6C $61 $6E $64 $00 $48 $65
	.db $6C $6C $6F $20 $57 $6F $72 $6C $64 $00 $53 $69 $6D $70 $6C $65
	.db $20 $53 $65 $67 $61 $20 $4D $61 $73 $74 $65 $72 $20 $53 $79 $73
	.db $74 $65 $6D $20 $64 $65 $6D $6F $20 $74 $6F $20 $72 $75 $6E $20
	.db $6F $6E $20 $72 $65 $61 $6C $20 $68 $61 $72 $64 $77 $61 $72 $65
	.db $21 $00
	
_SMS_init:	
		ld hl, $0000
		push hl
		call _SMS_setSpritePaletteColor
		pop af
		ld c, $00
-:	
		ld hl, _VDPReg_init		; _VDPReg_init = $02CF
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
		ld hl, VDPType		; VDPType = $C003
		ld (hl), $80
		ret
	
+:	
		ld hl, VDPType		; VDPType = $C003
		ld (hl), $40
		ret
	
; Data from 2CF to 2D9 (11 bytes)	
_VDPReg_init:	
	.db $04 $20 $FF $FF $FF $FF $FF $00 $00 $00 $FF
	
; Data from 2DA to 2E1 (8 bytes)	
_SMS_VDPType:	
	.db $FD $21 $03 $C0 $FD $6E $00 $C9
	
_SMS_VDPturnOnFeature:	
		ld c, l
		ld e, h
		ld d, $00
		ld hl, VDPReg	; VDPReg = $C0CB
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
		ld hl, VDPReg	; VDPReg = $C0CB
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

// stevepro TODO	
; Data from 312 to 31B (10 bytes)	
_SMS_setBGScrollX:	
	.db $F3 $7D $D3 $BF $3E $88 $D3 $BF $FB $C9
	
; Data from 31C to 325 (10 bytes)	
_SMS_setBGScrollY:	
	.db $F3 $7D $D3 $BF $3E $89 $D3 $BF $FB $C9
	
; Data from 326 to 32F (10 bytes)	
_SMS_setBackdropColor:	
	.db $F3 $7D $D3 $BF $3E $87 $D3 $BF $FB $C9
	
; Data from 330 to 343 (20 bytes)	
_SMS_useFirstHalfTilesforSprites:	
	.db $CB $45 $28 $04 $0E $FB $18 $02 $0E $FF $F3 $79 $D3 $BF $3E $86
	.db $D3 $BF $FB $C9
	
; Data from 344 to 388 (69 bytes)	
_SMS_setSpriteMode:	
	.db $4D $CB $41 $28 $0F $C5 $21 $02 $01 $CD $E2 $02 $C1 $21 $CD $C0
	.db $36 $10 $18 $0D $C5 $21 $02 $01 $CD $F9 $02 $C1 $21 $CD $C0 $36
	.db $08 $CB $49 $28 $14 $21 $01 $01 $CD $E2 $02 $21 $CE $C0 $36 $10
	.db $FD $21 $CD $C0 $FD $CB $00 $26 $C9 $21 $01 $01 $CD $F9 $02 $21
	.db $CE $C0 $36 $08 $C9
	
; Data from 389 to 39C (20 bytes)	
_SMS_setBGPaletteColor:	
	.db $21 $02 $00 $39 $4E $06 $00 $21 $00 $C0 $09 $CF $21 $03 $00 $39
	.db $7E $D3 $BE $C9
	
// stevepro TODO
_SMS_setSpritePaletteColor:	
		ld hl, $0002
		add hl, sp
		ld c, (hl)
		ld b, $00
		ld hl, $C010
		add hl, bc
		rst $08	; _LABEL_8_
		;ld hl, $0003	; stevepro
		ld hl, _SMS_crt0_RST08 - 3	; _SMS_crt0_RST08 - 3 = $0003
		add hl, sp
		ld a, (hl)
		out (Port_VDPData), a
		ret

// stevepro TODO	
; Data from 3B1 to 3C4 (20 bytes)	
_SMS_loadBGPalette:	
	.db $11 $00 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9
	
; Data from 3C5 to 3D8 (20 bytes)	
_SMS_loadSpritePalette:	
	.db $11 $10 $C0 $0E $BF $F3 $ED $59 $ED $51 $FB $06 $10 $0E $BE $ED
	.db $A3 $20 $FC $C9
	
; Data from 3D9 to 3DC (4 bytes)	
_SMS_setColor:	
	.db $7D $D3 $BE $C9
// stevepro TODO

_SMS_initSprites:	
		ld hl, SpriteNextFree		; SpriteNextFree = $C0C8
		ld (hl), $00
		ret
	
; Data from 3E3 to 437 (85 bytes)	
_SMS_addSprite:
	.db $3A $C8 $C0 $D6 $40 $30 $4B $FD $21 $03 $00 $FD $39 $FD $7E $00
	.db $D6 $D1 $28 $3E $3E $08 $21 $C8 $C0 $86 $4F $3E $C0 $CE $00 $47
	.db $FD $5E $00 $1D $7B $02 $3A $C8 $C0 $87 $4F $21 $48 $C0 $06 $00
	.db $09 $FD $21 $02 $00 $FD $39 $FD $7E $00 $77 $23 $FD $21 $04 $00
	.db $FD $39 $FD $7E $00 $77 $FD $21 $C8 $C0 $FD $4E $00 $FD $34 $00
	.db $69 $C9 $2E $FF $C9
	
_SMS_finalizeSprites:	
		ld a, (SpriteNextFree)		; SpriteNextFree = $C0C8
		sub $40
		ret nc
		;ld bc, $C008	; stevepro
		ld bc, SpriteTableY			; SpriteTableY = $C008
		ld hl, (SpriteNextFree)		; SpriteNextFree = $C0C8
		ld h, $00
		add hl, bc
		ld (hl), $D0
		ret
	
_SMS_copySpritestoSAT:	
		ld hl, $7F00
		rst $08	; _LABEL_8_
		ld bc, SpriteTableY			; SpriteTableY = $C008
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
		ld bc, SpriteTableXN		; SpriteTableXN = $C048
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
		ld hl, VDPBlank				; VDPBlank = $C000
		ld (hl), $00
-:	
		ld hl, VDPBlank				; VDPBlank = $C000
		bit 0, (hl)
		jr z, -
		ret
	
; Data from 480 to 483 (4 bytes)	
_SMS_getKeysStatus:	
	.db $2A $04 $C0 $C9
	
; Data from 484 to 4A0 (29 bytes)	
_SMS_getKeysPressed:	
	.db $FD $21 $06 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $FD $21
	.db $04 $C0 $FD $7E $00 $A1 $6F $FD $7E $01 $A0 $67 $C9
	
; Data from 4A1 to 4B7 (23 bytes)	
_SMS_getKeysHeld:	
	.db $3A $04 $C0 $FD $21 $06 $C0 $FD $A6 $00 $6F $3A $05 $C0 $FD $21
	.db $06 $C0 $FD $A6 $01 $67 $C9
	
; Data from 4B8 to 4D4 (29 bytes)	
_SMS_getKeysReleased:	
	.db $FD $21 $04 $C0 $FD $7E $00 $2F $4F $FD $7E $01 $2F $47 $79 $FD
	.db $21 $06 $C0 $FD $A6 $00 $6F $78 $FD $A6 $01 $67 $C9
	
; Data from 4D5 to 4DC (8 bytes)	
_SMS_queryPauseRequested:	
	.db $FD $21 $02 $C0 $FD $6E $00 $C9
	
_SMS_resetPauseRequest:	
		ld hl, PauseRequested		; PauseRequested = $C002
		ld (hl), $00
		ret
	
	; Data from 4E3 to 50A (40 bytes)
	.db $21 $02 $00 $39 $7E $32 $C9 $C0 $21 $03 $00 $39 $7E $32 $CA $C0
	.db $C9 $21 $02 $00 $39 $4E $F3 $79 $D3 $BF $3E $8A $D3 $BF $FB $C9
	.db $DB $7E $6F $C9 $DB $7F $6F $C9
	
_SMS_isr:	
		push af
		push hl
		in a, (Port_VDPStatus)
		ld (SMS_VDPFlags), a
		rlca
		jr nc, +
		ld hl, VDPBlank
		ld (hl), $01
		ld hl, (KeysStatus)
		ld (PreviousKeysStatus), hl
		in a, (Port_IOPort1)
		cpl
		ld hl, KeysStatus
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
		ld hl, (SMS_theLineInterruptHandler)
		call +++
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
		ld hl, PauseRequested
		ld (hl), $01
		pop iy
		pop hl
		pop de
		pop bc
		pop af
		retn
	
+++:	
		jp (hl)
	
; Data from 555 to 558 (4 bytes)	
_DATA_555_:	
	.db $04 $20 $08 $08
	
gsinit:	
		;ld bc, $0004	; stevepro
		ld bc, _SMS_crt0_RST08 - 2	; _SMS_crt0_RST08 - 2 = $0004
		ld a, b
		or c
		jr z, +
		ld de, VDPReg
		ld hl, _DATA_555_
		ldir
+:	
		ret
	
	; Data from 569 to 7FEF (31367 bytes)
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
	