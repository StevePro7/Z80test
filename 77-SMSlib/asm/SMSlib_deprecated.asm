;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_deprecated
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_finalizeSprites
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_VDPControlPort	=	0x00bf
_VDPStatusPort	=	0x00bf
_VDPDataPort	=	0x00be
_VDPVCounterPort	=	0x007e
_VDPHCounterPort	=	0x007f
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;SMSlib_deprecated.c:21: void SMS_finalizeSprites (void) {
;	---------------------------------
; Function SMS_finalizeSprites
; ---------------------------------
_SMS_finalizeSprites::
;SMSlib_deprecated.c:24: if (SpriteNextFree<MAXSPRITES)
	ld	a,(#_SpriteNextFree + 0)
	sub	a, #0x40
	ret	NC
;SMSlib_deprecated.c:26: SpriteTableY[SpriteNextFree]=0xD0;
	ld	bc, #_SpriteTableY+0
	ld	hl, (_SpriteNextFree)
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0xd0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
