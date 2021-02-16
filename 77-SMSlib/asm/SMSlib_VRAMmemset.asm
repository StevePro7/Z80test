;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_VRAMmemset
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_crt0_RST08
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_VRAMmemset
	.globl _SMS_VRAMmemsetW
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
;SMSlib_VRAMmemset.c:10: void SMS_VRAMmemset (unsigned int dst, unsigned char value, unsigned int size) {
;	---------------------------------
; Function SMS_VRAMmemset
; ---------------------------------
_SMS_VRAMmemset::
;SMSlib_VRAMmemset.c:12: SMS_setAddr(0x4000|dst);
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, 1 (iy)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_VRAMmemset.c:13: while (size>0) {
	ld	hl, #4+0
	add	hl, sp
	ld	c, (hl)
	ld	hl, #5
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
00101$:
	ld	a, d
	or	a,e
	ret	Z
;SMSlib_common.c:45: VDPDataPort=data;
	ld	a, c
	out	(_VDPDataPort), a
;SMSlib_VRAMmemset.c:15: size--;
	dec	de
	jr	00101$
;SMSlib_VRAMmemset.c:19: void SMS_VRAMmemsetW (unsigned int dst, unsigned int value, unsigned int size) {
;	---------------------------------
; Function SMS_VRAMmemsetW
; ---------------------------------
_SMS_VRAMmemsetW::
;SMSlib_VRAMmemset.c:21: SMS_setAddr(0x4000|dst);
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, 1 (iy)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_VRAMmemset.c:22: while (size>0) {
	ld	hl, #4+1
	add	hl, sp
	ld	c, (hl)
	ld	hl, #6
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
00101$:
	ld	a, d
	or	a,e
	ret	Z
;SMSlib_VRAMmemset.c:23: SMS_byte_to_VDP_data(LO(value));
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	out	(_VDPDataPort), a
;SMSlib_VRAMmemset.c:24: WAIT_VRAM;                          /* ensure we're not pushing data too fast */
	nop	
	nop 
	nop 
;SMSlib_VRAMmemset.c:25: SMS_byte_to_VDP_data(HI(value));
	ld	a, c
	out	(_VDPDataPort), a
;SMSlib_VRAMmemset.c:26: size-=2;
	dec	de
	dec	de
	jr	00101$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
