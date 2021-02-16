;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_VRAMmemcpy
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_VRAMmemcpy
	.globl _SMS_VRAMmemcpy_brief
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
;SMSlib_VRAMmemcpy.c:13: void SMS_VRAMmemcpy (unsigned int dst, void *src, unsigned int size) {
;	---------------------------------
; Function SMS_VRAMmemcpy
; ---------------------------------
_SMS_VRAMmemcpy::
;SMSlib_VRAMmemcpy.c:45: __endasm;
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib_VRAMmemcpy.c:12:	SMS_crt0_RST08(0x4000|dst);
	ld	l, 4 (ix)
	ld	a, 5 (ix)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_VRAMmemcpy.c:13:	SMS_byte_array_to_VDP_data(src,size);
	ld	l,6 (ix)
	ld	h,7 (ix)
	ld	a,8 (ix) ; ((unsigned char)(size))
	or	a
	ld	b,a
	ld	a,9 (ix) ; (((size)>>8))
	jr	Z,_noinc ; if ((unsigned char)(size)) is zero, do not inc (((size)>>8))
	inc	a ; inc (((size)>>8)) because ((unsigned char)(size)) in not zero
	_noinc:
	ld	c,#_VDPDataPort
	_copyloop:
	outi	; 16
	jr	NZ,_copyloop ; 12 = 28 (VRAM safe)
	dec	a
	jr	NZ,_copyloop
	pop	ix
	ret
;SMSlib_VRAMmemcpy.c:48: void SMS_VRAMmemcpy_brief (unsigned int dst, void *src, unsigned char size) {
;	---------------------------------
; Function SMS_VRAMmemcpy_brief
; ---------------------------------
_SMS_VRAMmemcpy_brief::
;SMSlib_VRAMmemcpy.c:70: __endasm;
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib_VRAMmemcpy.c:12:	SMS_crt0_RST08(0x4000|dst);
	ld	l, 4 (ix)
	ld	a, 5 (ix)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_VRAMmemcpy.c:13:	SMS_byte_brief_array_to_VDP_data(src,size);
	ld	l,6 (ix)
	ld	h,7 (ix)
	ld	b,8 (ix) ; size
	outi	; 16
	jr	NZ,_copyloop ; 12 = 28 (VRAM safe)
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
