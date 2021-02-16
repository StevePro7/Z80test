;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_textrenderer
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _SMS_crt0_RST18
	.globl _SMS_TextRenderer_offset
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_configureTextRenderer
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
_SMS_TextRenderer_offset::
	.ds 2
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
;SMSlib_textrenderer.c:11: void SMS_configureTextRenderer (signed int ascii_to_tile_offset) {
;	---------------------------------
; Function SMS_configureTextRenderer
; ---------------------------------
_SMS_configureTextRenderer::
;SMSlib_textrenderer.c:12: SMS_TextRenderer_offset=ascii_to_tile_offset;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_SMS_TextRenderer_offset + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#_SMS_TextRenderer_offset + 1),a
	ret
;SMSlib_textrenderer.c:15: void putchar (char c) {
;	---------------------------------
; Function putchar
; ---------------------------------
_putchar::
;SMSlib_textrenderer.c:16: SMS_setTile(c+SMS_TextRenderer_offset);
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, (_SMS_TextRenderer_offset)
	add	hl, bc
	jp  _SMS_crt0_RST18
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
