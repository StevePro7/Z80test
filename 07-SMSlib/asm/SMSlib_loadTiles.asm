;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_loadTiles
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_crt0_RST08
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_loadTiles
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
;SMSlib_loadTiles.c:9: void SMS_loadTiles (void *src, unsigned int tilefrom, unsigned int size) {
;	---------------------------------
; Function SMS_loadTiles
; ---------------------------------
_SMS_loadTiles::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib_loadTiles.c:11: SMS_setAddr(0x4000|(tilefrom*32));
	ld	l,6 (ix)
	ld	h,7 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	rst	#0x08
;SMSlib_loadTiles.c:12: SMS_byte_array_to_VDP_data(src,size);
	ld	e,8 (ix)
	ld	d,9 (ix)
	ld	c,4 (ix)
	ld	b,5 (ix)
;SMSlib_common.c:50: do {
00101$:
;SMSlib_common.c:51: VDPDataPort=*(data++);
	ld	a, (bc)
	out	(_VDPDataPort), a
	inc	bc
;SMSlib_common.c:52: } while (--size);
	ex	de,hl
	dec	hl
	ld	e, l
	ld	a,h
	ld	d,a
	or	a,l
	jr	NZ,00101$
;SMSlib_loadTiles.c:12: SMS_byte_array_to_VDP_data(src,size);
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
