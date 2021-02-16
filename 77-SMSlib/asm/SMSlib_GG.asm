;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module SMSlib
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_copySpritestoSAT
	.globl _SMS_initSprites
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _spritesTileOffset
	.globl _spritesWidth
	.globl _spritesHeight
	.globl _VDPReg
	.globl _SMS_theLineInterruptHandler
	.globl _PreviousKeysStatus
	.globl _KeysStatus
	.globl _SMS_VDPFlags
	.globl _VDPBlank
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _VDPReg_init
	.globl _SMS_init
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_setBGScrollX
	.globl _SMS_setBGScrollY
	.globl _SMS_setBackdropColor
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setSpriteMode
	.globl _GG_setBGPaletteColor
	.globl _GG_setSpritePaletteColor
	.globl _GG_loadBGPalette
	.globl _GG_loadSpritePalette
	.globl _SMS_waitForVBlank
	.globl _SMS_getKeysStatus
	.globl _SMS_getKeysPressed
	.globl _SMS_getKeysHeld
	.globl _SMS_getKeysReleased
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_setLineCounter
	.globl _SMS_getVCount
	.globl _SMS_getHCount
	.globl _SMS_isr
	.globl _SMS_nmi_isr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_VDPControlPort	=	0x00bf
_VDPStatusPort	=	0x00bf
_VDPDataPort	=	0x00be
_VDPVCounterPort	=	0x007e
_VDPHCounterPort	=	0x007f
_IOPortL	=	0x00dc
_GGIOPort	=	0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
_VDPBlank::
	.ds 1
_SMS_VDPFlags::
	.ds 1
_KeysStatus::
	.ds 2
_PreviousKeysStatus::
	.ds 2
_SMS_theLineInterruptHandler::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_VDPReg::
	.ds 2
_spritesHeight::
	.ds 1
_spritesWidth::
	.ds 1
_spritesTileOffset::
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
;SMSlib.c:86: void SMS_init (void) {
;	---------------------------------
; Function SMS_init
; ---------------------------------
_SMS_init::
;SMSlib.c:93: GG_setSpritePaletteColor(0, RGB(0,0,0));
	ld	hl, #0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_GG_setSpritePaletteColor
	pop	af
	inc	sp
;SMSlib.c:96: for (i=0;i<0x0B;i++)
	ld	bc, #_VDPReg_init+0
	ld	e, #0x00
00103$:
;SMSlib.c:97: SMS_write_to_VDPRegister(i,VDPReg_init[i]);
	ld	l,e
	ld	h,#0x00
	add	hl, bc
	ld	d, (hl)
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, d
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, e
	set	7, a
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:96: for (i=0;i<0x0B;i++)
	inc	e
	ld	a, e
	sub	a, #0x0b
	jr	C,00103$
;SMSlib.c:99: SMS_initSprites();
	call	_SMS_initSprites
;SMSlib.c:101: SMS_copySpritestoSAT();
	jp  _SMS_copySpritestoSAT
_VDPReg_init:
	.db #0x04	; 4
	.db #0x20	; 32
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
;SMSlib.c:120: void SMS_VDPturnOnFeature (unsigned int feature) __z88dk_fastcall {
;	---------------------------------
; Function SMS_VDPturnOnFeature
; ---------------------------------
_SMS_VDPturnOnFeature::
	ld	c, l
;SMSlib.c:122: VDPReg[HI(feature)]|=LO(feature);
	ld	e, h
	ld	d, #0x00
	ld	hl, #_VDPReg
	add	hl, de
	ld	a, (hl)
	or	a, c
	ld	c, a
	ld	(hl), c
;SMSlib.c:123: SMS_write_to_VDPRegister (HI(feature),VDPReg[HI(feature)]);
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, c
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, e
	set	7, a
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:123: SMS_write_to_VDPRegister (HI(feature),VDPReg[HI(feature)]);
	ret
;SMSlib.c:126: void SMS_VDPturnOffFeature (unsigned int feature) __z88dk_fastcall {
;	---------------------------------
; Function SMS_VDPturnOffFeature
; ---------------------------------
_SMS_VDPturnOffFeature::
;SMSlib.c:128: unsigned char val=~LO(feature);
	ld	a, l
	ld	e, h
	cpl
	ld	b, a
;SMSlib.c:129: VDPReg[HI(feature)]&=val;
	ld	d, #0x00
	ld	hl, #_VDPReg
	add	hl, de
	ld	a, (hl)
	and	a, b
	ld	c, a
	ld	(hl), c
;SMSlib.c:130: SMS_write_to_VDPRegister (HI(feature),VDPReg[HI(feature)]);
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, c
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, e
	set	7, a
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:130: SMS_write_to_VDPRegister (HI(feature),VDPReg[HI(feature)]);
	ret
;SMSlib.c:133: void SMS_setBGScrollX (unsigned char scrollX) __z88dk_fastcall {
;	---------------------------------
; Function SMS_setBGScrollX
; ---------------------------------
_SMS_setBGScrollX::
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, l
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, #0x88
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:134: SMS_write_to_VDPRegister(0x08,scrollX);
	ret
;SMSlib.c:137: void SMS_setBGScrollY (unsigned char scrollY) __z88dk_fastcall {
;	---------------------------------
; Function SMS_setBGScrollY
; ---------------------------------
_SMS_setBGScrollY::
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, l
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, #0x89
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:138: SMS_write_to_VDPRegister(0x09,scrollY);
	ret
;SMSlib.c:141: void SMS_setBackdropColor (unsigned char entry) __z88dk_fastcall {
;	---------------------------------
; Function SMS_setBackdropColor
; ---------------------------------
_SMS_setBackdropColor::
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, l
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, #0x87
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:142: SMS_write_to_VDPRegister(0x07,entry);
	ret
;SMSlib.c:145: void SMS_useFirstHalfTilesforSprites (_Bool usefirsthalf) __z88dk_fastcall {
;	---------------------------------
; Function SMS_useFirstHalfTilesforSprites
; ---------------------------------
_SMS_useFirstHalfTilesforSprites::
;SMSlib.c:146: SMS_write_to_VDPRegister(0x06,usefirsthalf?0xFB:0xFF);
	bit	0, l
	jr	Z,00104$
	ld	c, #0xfb
	jr	00105$
00104$:
	ld	c, #0xff
00105$:
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
	di	
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, c
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, #0x86
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:146: SMS_write_to_VDPRegister(0x06,usefirsthalf?0xFB:0xFF);
	ret
;SMSlib.c:149: void SMS_setSpriteMode (unsigned char mode) __z88dk_fastcall {
;	---------------------------------
; Function SMS_setSpriteMode
; ---------------------------------
_SMS_setSpriteMode::
	ld	c, l
;SMSlib.c:150: if (mode & SPRITEMODE_TALL) {
	bit	0, c
	jr	Z,00102$
;SMSlib.c:151: SMS_VDPturnOnFeature(VDPFEATURE_USETALLSPRITES);
	push	bc
	ld	hl, #0x0102
	call	_SMS_VDPturnOnFeature
	pop	bc
;SMSlib.c:152: spritesHeight=16;
	ld	hl, #_spritesHeight
	ld	(hl), #0x10
;SMSlib.c:153: spritesTileOffset=2;
	ld	hl, #_spritesTileOffset
	ld	(hl), #0x02
	jr	00103$
00102$:
;SMSlib.c:155: SMS_VDPturnOffFeature(VDPFEATURE_USETALLSPRITES);
	push	bc
	ld	hl, #0x0102
	call	_SMS_VDPturnOffFeature
	pop	bc
;SMSlib.c:156: spritesHeight=8;
	ld	hl, #_spritesHeight
	ld	(hl), #0x08
;SMSlib.c:157: spritesTileOffset=1;
	ld	hl, #_spritesTileOffset
	ld	(hl), #0x01
00103$:
;SMSlib.c:159: if (mode & SPRITEMODE_ZOOMED) {
	bit	1, c
	jr	Z,00105$
;SMSlib.c:160: SMS_VDPturnOnFeature(VDPFEATURE_ZOOMSPRITES);
	ld	hl, #0x0101
	call	_SMS_VDPturnOnFeature
;SMSlib.c:161: spritesWidth=16;
	ld	hl, #_spritesWidth
	ld	(hl), #0x10
;SMSlib.c:162: spritesHeight*=2;
	ld	hl, #_spritesHeight
	sla	(hl)
	ret
00105$:
;SMSlib.c:164: SMS_VDPturnOffFeature(VDPFEATURE_ZOOMSPRITES);
	ld	hl, #0x0101
	call	_SMS_VDPturnOffFeature
;SMSlib.c:165: spritesWidth=8;
	ld	hl, #_spritesWidth
	ld	(hl), #0x08
	ret
;SMSlib.c:170: void GG_setBGPaletteColor (unsigned char entry, unsigned int color) {
;	---------------------------------
; Function GG_setBGPaletteColor
; ---------------------------------
_GG_setBGPaletteColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib.c:172: SMS_setAddr(0xC000+(entry*2));
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	bc, #0xc000
	add	hl, bc
	rst	#0x08
;SMSlib.c:174: SMS_setTile(color);
	ld	l,5 (ix)
	ld	h,6 (ix)
	pop	ix
	jp	_SMS_crt0_RST18
;SMSlib.c:177: void GG_setSpritePaletteColor (unsigned char entry, unsigned int color) {
;	---------------------------------
; Function GG_setSpritePaletteColor
; ---------------------------------
_GG_setSpritePaletteColor::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib.c:179: SMS_setAddr(0xC020+(entry*2));
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	bc, #0xc020
	add	hl, bc
	rst	#0x08
;SMSlib.c:181: SMS_setTile(color);
	ld	l,5 (ix)
	ld	h,6 (ix)
	pop	ix
	jp	_SMS_crt0_RST18
;SMSlib.c:200: void GG_loadBGPalette (void *palette) __z88dk_fastcall {
;	---------------------------------
; Function GG_loadBGPalette
; ---------------------------------
_GG_loadBGPalette::
;SMSlib.c:202: ASM_LD_DE_IMM(#SMS_CRAMAddress);
	ld de,#0xC000 
;SMSlib.c:203: ASM_DE_TO_VDP_CONTROL;
	ld c,#_VDPControlPort 
	di 
	out (c),e 
	out (c),d 
	ei 
;SMSlib.c:204: ASM_LD_B_IMM(#32);
	ld b,#32 
;SMSlib.c:205: ASM_SHORT_XFER_TO_VDP_DATA;
	ld c,#_VDPDataPort 
	 1$:
	outi ; 16 
	jp nz,1$ ; 10 = 26 *VRAM SAFE* 
	ret
;SMSlib.c:208: void GG_loadSpritePalette (void *palette) __z88dk_fastcall {
;	---------------------------------
; Function GG_loadSpritePalette
; ---------------------------------
_GG_loadSpritePalette::
;SMSlib.c:210: ASM_LD_DE_IMM(#SMS_CRAMAddress+0x20);
	ld de,#0xC000 +0x20 
;SMSlib.c:211: ASM_DE_TO_VDP_CONTROL;
	ld c,#_VDPControlPort 
	di 
	out (c),e 
	out (c),d 
	ei 
;SMSlib.c:212: ASM_LD_B_IMM(#32);
	ld b,#32 
;SMSlib.c:213: ASM_SHORT_XFER_TO_VDP_DATA;
	ld c,#_VDPDataPort 
	 1$:
	outi ; 16 
	jp nz,1$ ; 10 = 26 *VRAM SAFE* 
	ret
;SMSlib.c:239: void SMS_waitForVBlank (void) {
;	---------------------------------
; Function SMS_waitForVBlank
; ---------------------------------
_SMS_waitForVBlank::
;SMSlib.c:240: VDPBlank=false;
	ld	hl, #_VDPBlank
	ld	(hl), #0x00
;SMSlib.c:241: while (!VDPBlank);
00101$:
	ld	hl, #_VDPBlank
	bit	0, (hl)
	jr	Z,00101$
	ret
;SMSlib.c:244: unsigned int SMS_getKeysStatus (void) {
;	---------------------------------
; Function SMS_getKeysStatus
; ---------------------------------
_SMS_getKeysStatus::
;SMSlib.c:245: return (KeysStatus);
	ld	hl, #_KeysStatus
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ret
;SMSlib.c:248: unsigned int SMS_getKeysPressed (void) {
;	---------------------------------
; Function SMS_getKeysPressed
; ---------------------------------
_SMS_getKeysPressed::
;SMSlib.c:249: return (KeysStatus&(~PreviousKeysStatus));
	ld	hl, #_PreviousKeysStatus
	ld	a, (hl)
	cpl
	ld	c, a
	inc	hl
	ld	a, (hl)
	cpl
	ld	b, a
	ld	a, c
	ld	hl, #_KeysStatus
	and	a, (hl)
	ld	c, a
	ld	a, b
	inc	hl
	and	a, (hl)
	ld	l, c
	ld	h, a
	ret
;SMSlib.c:252: unsigned int SMS_getKeysHeld (void) {
;	---------------------------------
; Function SMS_getKeysHeld
; ---------------------------------
_SMS_getKeysHeld::
;SMSlib.c:253: return (KeysStatus&PreviousKeysStatus);
	ld	a, (#_KeysStatus)
	ld	hl, #_PreviousKeysStatus
	and	a, (hl)
	ld	c, a
	ld	a,(#_KeysStatus + 1)
	ld	hl, #_PreviousKeysStatus + 1
	and	a, (hl)
	ld	l, c
	ld	h, a
	ret
;SMSlib.c:256: unsigned int SMS_getKeysReleased (void) {
;	---------------------------------
; Function SMS_getKeysReleased
; ---------------------------------
_SMS_getKeysReleased::
;SMSlib.c:257: return ((~KeysStatus)&PreviousKeysStatus);
	ld	hl, #_KeysStatus
	ld	a, (hl)
	cpl
	ld	c, a
	inc	hl
	ld	a, (hl)
	cpl
	ld	b, a
	ld	a, c
	ld	hl, #_PreviousKeysStatus
	and	a, (hl)
	ld	c, a
	ld	a, b
	inc	hl
	and	a, (hl)
	ld	l, c
	ld	h, a
	ret
;SMSlib.c:288: void SMS_setLineInterruptHandler (void (*theHandlerFunction)(void)) {
;	---------------------------------
; Function SMS_setLineInterruptHandler
; ---------------------------------
_SMS_setLineInterruptHandler::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib.c:289: SMS_theLineInterruptHandler=theHandlerFunction;
	ld	a, 4 (ix)
	ld	hl, #_SMS_theLineInterruptHandler
	ld	(hl), a
	ld	a, 5 (ix)
	inc	hl
	ld	(hl), a
	pop	ix
	ret
;SMSlib.c:292: void SMS_setLineCounter (unsigned char count) {
;	---------------------------------
; Function SMS_setLineCounter
; ---------------------------------
_SMS_setLineCounter::
	push	ix
	ld	ix,#0
	add	ix,sp
;SMSlib.c:293: SMS_write_to_VDPRegister(0x0A,count);
;SMSlib_common.c:37: DISABLE_INTERRUPTS;
;SMSlib_common.c:38: VDPControlPort=v;
	ld	a, 4 (ix)
	di
	out	(_VDPControlPort), a
;SMSlib_common.c:39: VDPControlPort=VDPReg|0x80;
	ld	a, #0x8a
	out	(_VDPControlPort), a
;SMSlib_common.c:40: ENABLE_INTERRUPTS;
	ei	
;SMSlib.c:293: SMS_write_to_VDPRegister(0x0A,count);
	pop	ix
	ret
;SMSlib.c:297: unsigned char SMS_getVCount (void) {
;	---------------------------------
; Function SMS_getVCount
; ---------------------------------
_SMS_getVCount::
;SMSlib.c:298: return(VDPVCounterPort);
	in	a, (_VDPVCounterPort)
	ld	l, a
	ret
;SMSlib.c:302: unsigned char SMS_getHCount (void) {
;	---------------------------------
; Function SMS_getHCount
; ---------------------------------
_SMS_getHCount::
;SMSlib.c:303: return(VDPHCounterPort);
	in	a, (_VDPHCounterPort)
	ld	l, a
	ret
;SMSlib.c:351: void SMS_isr (void) __interrupt __naked {
;	---------------------------------
; Function SMS_isr
; ---------------------------------
_SMS_isr::
;SMSlib.c:390: __endasm;
	push	af
	push	hl
	in	a,(_VDPStatusPort) ; also aknowledge interrupt at VDP
	ld	(_SMS_VDPFlags),a ; write flags to SMS_VDPFlags variable
	rlca
	jr	nc,1$
	ld	hl,#_VDPBlank ; frame interrupt
	ld	(hl),#0x01
	ld	hl,(_KeysStatus)
	ld	(_PreviousKeysStatus),hl
	in	a,(_IOPortL)
	cpl
	ld	hl,#_KeysStatus
	ld	(hl),a
	in	a,(_GGIOPort)
	cpl
	inc	hl
	ld	(hl),a
	jr	2$
	1$:
; line interrupt
	push	bc
	push	de
	push	iy
	ld	hl,(_SMS_theLineInterruptHandler)
	call	___sdcc_call_hl
	pop	iy
	pop	de
	pop	bc
	2$:
	pop	hl
	pop	af ; Z80 disable the interrupts on ISR,
	ei	; so we should re-enable them explicitly.
	reti	; this is here because function is __naked
;SMSlib.c:394: void SMS_nmi_isr (void) __critical __interrupt {          /* this is for NMI */
;	---------------------------------
; Function SMS_nmi_isr
; ---------------------------------
_SMS_nmi_isr::
	push	af
	push	bc
	push	de
	push	hl
	push	iy
;SMSlib.c:398: }
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	retn
	.area _CODE
	.area _INITIALIZER
__xinit__VDPReg:
	.db #0x04	; 4
	.db #0x20	; 32
__xinit__spritesHeight:
	.db #0x08	; 8
__xinit__spritesWidth:
	.db #0x08	; 8
__xinit__spritesTileOffset:
	.db #0x01	; 1
	.area _CABS (ABS)
