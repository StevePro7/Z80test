;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib_spriteClip
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clipWin_y1
	.globl _clipWin_x1
	.globl _clipWin_y0
	.globl _clipWin_x0
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _SMS_setClippingWindow
	.globl _SMS_addSpriteClipping
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
_clipWin_x0::
	.ds 1
_clipWin_y0::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_clipWin_x1::
	.ds 1
_clipWin_y1::
	.ds 1
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
;SMSlib_spriteClip.c:24: void SMS_setClippingWindow (unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1) {
;	---------------------------------
; Function SMS_setClippingWindow
; ---------------------------------
_SMS_setClippingWindow::
;SMSlib_spriteClip.c:25: clipWin_x0=x0;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_clipWin_x0 + 0),a
;SMSlib_spriteClip.c:26: clipWin_y0=y0;
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_clipWin_y0 + 0),a
;SMSlib_spriteClip.c:27: clipWin_x1=x1;
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_clipWin_x1 + 0),a
;SMSlib_spriteClip.c:28: clipWin_y1=y1;
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_clipWin_y1 + 0),a
	ret
;SMSlib_spriteClip.c:31: signed char SMS_addSpriteClipping (int x, int y, unsigned char tile) {
;	---------------------------------
; Function SMS_addSpriteClipping
; ---------------------------------
_SMS_addSpriteClipping::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib_spriteClip.c:33: if ( (SpriteNextFree>=MAXSPRITES) ||                                    // no sprite left?
	ld	a,(#_SpriteNextFree + 0)
	sub	a, #0x40
	jp	NC, 00101$
;SMSlib_spriteClip.c:34: (x>clipWin_x1) || (x<((int)(clipWin_x0)-(int)(spritesWidth))) ||   // clipped by x?
	ld	a,(#_clipWin_x1 + 0)
	ld	b, #0x00
	sub	a, 4 (ix)
	ld	a, b
	sbc	a, 5 (ix)
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	M, 00101$
	ld	hl,#_clipWin_x0 + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl,#_spritesWidth + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	a, 4 (ix)
	sub	a, c
	ld	a, 5 (ix)
	sbc	a, b
	jp	PO, 00136$
	xor	a, #0x80
00136$:
	jp	M, 00101$
;SMSlib_spriteClip.c:35: (x<0) ||                                                           // x negative?
	bit	7, 5 (ix)
	jr	NZ,00101$
;SMSlib_spriteClip.c:36: (y>clipWin_y1) || (y<((int)(clipWin_y0)-(int)(spritesHeight))) ||  // clipped by y?
	ld	a,(#_clipWin_y1 + 0)
	ld	b, #0x00
	sub	a, 6 (ix)
	ld	a, b
	sbc	a, 7 (ix)
	jp	PO, 00137$
	xor	a, #0x80
00137$:
	jp	M, 00101$
	ld	hl,#_clipWin_y0 + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl,#_spritesHeight + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	a, 6 (ix)
	sub	a, c
	ld	a, 7 (ix)
	sbc	a, b
	jp	PO, 00138$
	xor	a, #0x80
00138$:
	jp	M, 00101$
;SMSlib_spriteClip.c:37: ((y-1)==0xD0) )                                                    // y-1 is 0xD1?
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	dec	bc
	ld	a, c
	sub	a, #0xd0
	or	a, b
	jr	NZ,00102$
00101$:
;SMSlib_spriteClip.c:38: return (-1);                                                          // sprite clipped!
	ld	l, #0xff
	jr	00109$
00102$:
;SMSlib_spriteClip.c:39: SpriteTableY[SpriteNextFree]=y-1;
	ld	bc, #_SpriteTableY+0
	ld	hl, (_SpriteNextFree)
	ld	h, #0x00
	add	hl, bc
	ld	c, 6 (ix)
	dec	c
	ld	(hl), c
;SMSlib_spriteClip.c:40: stXN=&SpriteTableXN[SpriteNextFree*2];
	ld	iy, #_SpriteNextFree
	ld	a, 0 (iy)
	add	a, a
	ld	c, a
	ld	hl, #_SpriteTableXN
	ld	b, #0x00
	add	hl, bc
;SMSlib_spriteClip.c:41: *stXN++=x;
	ld	c, 4 (ix)
	ld	(hl), c
	inc	hl
;SMSlib_spriteClip.c:42: *stXN=tile;
	ld	a, 8 (ix)
	ld	(hl), a
;SMSlib_spriteClip.c:43: return(SpriteNextFree++);
	ld	c, 0 (iy)
	inc	0 (iy)
	ld	l, c
00109$:
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__clipWin_x1:
	.db #0xff	; 255
__xinit__clipWin_y1:
	.db #0xbf	; 191
	.area _CABS (ABS)
