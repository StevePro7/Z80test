;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_spriteAdv
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_reserveSprite
	.globl _SMS_updateSpritePosition
	.globl _SMS_updateSpriteImage
	.globl _SMS_hideSprite
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
;SMSlib_spriteAdv.c:17: signed char SMS_reserveSprite (void) {
;	---------------------------------
; Function SMS_reserveSprite
; ---------------------------------
_SMS_reserveSprite::
;SMSlib_spriteAdv.c:18: if (SpriteNextFree<MAXSPRITES) {
	ld	iy, #_SpriteNextFree
	ld	a, 0 (iy)
	sub	a, #0x40
	jr	NC,00102$
;SMSlib_spriteAdv.c:19: SpriteTableY[SpriteNextFree]=0xE0;            // so it's offscreen
	ld	bc, #_SpriteTableY+0
	ld	hl, (_SpriteNextFree)
	ld	h, #0x00
	add	hl, bc
	ld	(hl), #0xe0
;SMSlib_spriteAdv.c:20: return(SpriteNextFree++);
	ld	c, 0 (iy)
	inc	0 (iy)
	ld	l, c
	ret
00102$:
;SMSlib_spriteAdv.c:22: return (-1);
	ld	l, #0xff
	ret
;SMSlib_spriteAdv.c:25: void SMS_updateSpritePosition (signed char sprite, unsigned char x, unsigned char y) {
;	---------------------------------
; Function SMS_updateSpritePosition
; ---------------------------------
_SMS_updateSpritePosition::
;SMSlib_spriteAdv.c:27: SpriteTableY[(unsigned char)sprite]=(unsigned char)(y-1);
	ld	hl, #2+0
	add	hl, sp
	ld	c, (hl)
;SMSlib_spriteAdv.c:26: if (y!=0xD1) {                                  // avoid placing sprites at this Y!
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	sub	a, #0xd1
	jr	Z,00102$
;SMSlib_spriteAdv.c:27: SpriteTableY[(unsigned char)sprite]=(unsigned char)(y-1);
	ld	a, c
	add	a, #<(_SpriteTableY)
	ld	e, a
	ld	a, #0x00
	adc	a, #>(_SpriteTableY)
	ld	d, a
	ld	b, 0 (iy)
	dec	b
	ld	a, b
	ld	(de), a
;SMSlib_spriteAdv.c:28: SpriteTableXN[(unsigned char)sprite*2]=x;
	ld	de, #_SpriteTableXN+0
	sla	c
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	iy, #3
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
	ret
00102$:
;SMSlib_spriteAdv.c:30: SpriteTableY[(unsigned char)sprite]=0xE0;     // move it offscreen anyway
	ld	hl, #_SpriteTableY
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0xe0
	ret
;SMSlib_spriteAdv.c:34: void SMS_updateSpriteImage (signed char sprite, unsigned char image) {
;	---------------------------------
; Function SMS_updateSpriteImage
; ---------------------------------
_SMS_updateSpriteImage::
;SMSlib_spriteAdv.c:35: SpriteTableXN[(unsigned char)sprite*2+1]=image;
	ld	bc, #_SpriteTableXN+0
	ld	hl, #2+0
	add	hl, sp
	ld	e, (hl)
	sla	e
	inc	e
	ld	l,e
	ld	h,#0x00
	add	hl, bc
	ld	iy, #3
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
	ret
;SMSlib_spriteAdv.c:38: void SMS_hideSprite (signed char sprite) {
;	---------------------------------
; Function SMS_hideSprite
; ---------------------------------
_SMS_hideSprite::
;SMSlib_spriteAdv.c:39: SpriteTableY[(unsigned char)sprite]=0xE0;          // move it offscreen
	ld	bc, #_SpriteTableY+0
	ld	hl, #2+0
	add	hl, sp
	ld	e, (hl)
	ld	l,e
	ld	h,#0x00
	add	hl, bc
	ld	(hl), #0xe0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
