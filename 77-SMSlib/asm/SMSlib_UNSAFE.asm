;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_UNSAFE
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OUTI128
	.globl _OUTI64
	.globl _OUTI32
	.globl _SMS_crt0_RST08
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _UNSAFE_SMS_VRAMmemcpy32
	.globl _UNSAFE_SMS_VRAMmemcpy64
	.globl _UNSAFE_SMS_VRAMmemcpy128
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
;SMSlib_UNSAFE.c:18: void UNSAFE_SMS_copySpritestoSAT (void) {
;	---------------------------------
; Function UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_UNSAFE_SMS_copySpritestoSAT::
;SMSlib_UNSAFE.c:19: SMS_setAddr(SMS_SATAddress);
	ld	hl, #0x7f00
	rst	#0x08
;SMSlib_UNSAFE.c:38: __endasm;
	ld	a,(#_SpriteNextFree)
	or	a
	jr	z,_no_sprites
	add	a,a ; SpriteNextFree*=2 (and reset carry)
	ld	c,a
	ld	b,#0
	ld	hl,#_outi_block
	sbc	hl,bc
	ex	de,hl
	ld	hl,#_SpriteTableY
	call	_do_copy_Y
	ld	a,(#_SpriteNextFree)
	cp	#64
	jr	z,_no_sprite_term
	ld	a,#0xD0
	out	(c),a
	_no_sprite_term:
;SMSlib_UNSAFE.c:39: SMS_setAddr(SMS_SATAddress+128);
	ld	hl, #0x7f80
	rst	#0x08
;SMSlib_UNSAFE.c:60: __endasm;
	ld	a,(#_SpriteNextFree)
	dec	a ; there is surely at least one sprite used
	add	a,a
	add	a,a ; a=(SpriteNextFree-1)*4 (and reset carry)
	ld	c,a
	ld	b,#0
	ld	hl,#_outi_block-4
	sbc	hl,bc
	push	hl ; push jump address into stack
	ld	hl,#_SpriteTableXN
	ld	c,#_VDPDataPort
	ret	; get jump address from stack
	_do_copy_Y:
	ld	c,#_VDPDataPort
	push	de
	ret	; get jump address from stack
	_no_sprites:
	ld	a,#0xD0
	out	(#_VDPDataPort),a
	ret
;SMSlib_UNSAFE.c:120: void UNSAFE_SMS_VRAMmemcpy32 (unsigned int dst, void *src) {
;	---------------------------------
; Function UNSAFE_SMS_VRAMmemcpy32
; ---------------------------------
_UNSAFE_SMS_VRAMmemcpy32::
;SMSlib_UNSAFE.c:121: SMS_setAddr(0x4000|dst);
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, 1 (iy)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_UNSAFE.c:122: SETVDPDATAPORT;
	ld	c,#_VDPDataPort 
;SMSlib_UNSAFE.c:123: OUTI32(src);
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	jp  _OUTI32
;SMSlib_UNSAFE.c:126: void UNSAFE_SMS_VRAMmemcpy64 (unsigned int dst, void *src) {
;	---------------------------------
; Function UNSAFE_SMS_VRAMmemcpy64
; ---------------------------------
_UNSAFE_SMS_VRAMmemcpy64::
;SMSlib_UNSAFE.c:127: SMS_setAddr(0x4000|dst);
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, 1 (iy)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_UNSAFE.c:128: SETVDPDATAPORT;
	ld	c,#_VDPDataPort 
;SMSlib_UNSAFE.c:129: OUTI64(src);
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	jp  _OUTI64
;SMSlib_UNSAFE.c:132: void UNSAFE_SMS_VRAMmemcpy128 (unsigned int dst, void *src) {
;	---------------------------------
; Function UNSAFE_SMS_VRAMmemcpy128
; ---------------------------------
_UNSAFE_SMS_VRAMmemcpy128::
;SMSlib_UNSAFE.c:133: SMS_setAddr(0x4000|dst);
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, 1 (iy)
	set	6, a
	ld	h, a
	rst	#0x08
;SMSlib_UNSAFE.c:134: SETVDPDATAPORT;
	ld	c,#_VDPDataPort 
;SMSlib_UNSAFE.c:135: OUTI128(src);
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	jp  _OUTI128
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
