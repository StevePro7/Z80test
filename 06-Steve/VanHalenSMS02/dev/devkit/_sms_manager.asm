;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module _sms_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_setBGPaletteColor
	.globl _SMS_finalizeSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_loadSTMcompressedTileMapArea
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _devkit_SMS_init
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_setBGScrollX
	.globl _devkit_SMS_setBGScrollY
	.globl _devkit_SMS_enableSRAM
	.globl _devkit_SMS_enableSRAMBank
	.globl _devkit_SMS_disableSRAM
	.globl _devkit_SMS_SRAM
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_useFirstHalfTilesforSprites_False
	.globl _devkit_SMS_useFirstHalfTilesforSprites_True
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_setBGPaletteColor
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_setTilePriority
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_copySpritestoSAT
	.globl _devkit_SMS_queryPauseRequested
	.globl _devkit_SMS_resetPauseRequest
	.globl _devkit_isCollisionDetected
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_TILE_PRIORITY
	.globl _devkit_TILE_USE_SPRITE_PALETTE
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
;_sms_manager.c:11: void devkit_SMS_init()
;	---------------------------------
; Function devkit_SMS_init
; ---------------------------------
_devkit_SMS_init::
;_sms_manager.c:13: SMS_init();
	jp  _SMS_init
;_sms_manager.c:15: void devkit_SMS_displayOn()
;	---------------------------------
; Function devkit_SMS_displayOn
; ---------------------------------
_devkit_SMS_displayOn::
;_sms_manager.c:17: SMS_displayOn();
	ld	hl, #0x0140
	jp  _SMS_VDPturnOnFeature
;_sms_manager.c:19: void devkit_SMS_displayOff()
;	---------------------------------
; Function devkit_SMS_displayOff
; ---------------------------------
_devkit_SMS_displayOff::
;_sms_manager.c:21: SMS_displayOff();
	ld	hl, #0x0140
	jp  _SMS_VDPturnOffFeature
;_sms_manager.c:23: void devkit_SMS_mapROMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_mapROMBank
; ---------------------------------
_devkit_SMS_mapROMBank::
;_sms_manager.c:25: SMS_mapROMBank( n );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_ROM_bank_to_be_mapped_on_slot2 + 0),a
	ret
;_sms_manager.c:28: void devkit_SMS_setBGScrollX( unsigned char scrollX )
;	---------------------------------
; Function devkit_SMS_setBGScrollX
; ---------------------------------
_devkit_SMS_setBGScrollX::
;_sms_manager.c:30: SMS_setBGScrollX( scrollX );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setBGScrollX
;_sms_manager.c:32: void devkit_SMS_setBGScrollY( unsigned char scrollY )
;	---------------------------------
; Function devkit_SMS_setBGScrollY
; ---------------------------------
_devkit_SMS_setBGScrollY::
;_sms_manager.c:34: SMS_setBGScrollY( scrollY );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setBGScrollY
;_sms_manager.c:37: void devkit_SMS_enableSRAM()
;	---------------------------------
; Function devkit_SMS_enableSRAM
; ---------------------------------
_devkit_SMS_enableSRAM::
;_sms_manager.c:39: SMS_enableSRAM();
	ld	hl,#_SRAM_bank_to_be_mapped_on_slot2 + 0
	ld	(hl), #0x08
	ret
;_sms_manager.c:41: void devkit_SMS_enableSRAMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_enableSRAMBank
; ---------------------------------
_devkit_SMS_enableSRAMBank::
;_sms_manager.c:43: SMS_enableSRAMBank( n );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	set	3, a
	and	a, #0x0c
	ld	(#_SRAM_bank_to_be_mapped_on_slot2 + 0),a
	ret
;_sms_manager.c:45: void devkit_SMS_disableSRAM()
;	---------------------------------
; Function devkit_SMS_disableSRAM
; ---------------------------------
_devkit_SMS_disableSRAM::
;_sms_manager.c:47: SMS_disableSRAM();
	ld	hl,#_SRAM_bank_to_be_mapped_on_slot2 + 0
	ld	(hl), #0x00
	ret
;_sms_manager.c:49: unsigned char* devkit_SMS_SRAM()
;	---------------------------------
; Function devkit_SMS_SRAM
; ---------------------------------
_devkit_SMS_SRAM::
;_sms_manager.c:51: return SMS_SRAM;
	ld	hl, #_SMS_SRAM
	ret
;_sms_manager.c:55: void devkit_SMS_setSpriteMode( unsigned char mode )
;	---------------------------------
; Function devkit_SMS_setSpriteMode
; ---------------------------------
_devkit_SMS_setSpriteMode::
;_sms_manager.c:57: SMS_setSpriteMode( mode );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setSpriteMode
;_sms_manager.c:59: void devkit_SMS_useFirstHalfTilesforSprites_False()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_False
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_False::
;_sms_manager.c:61: SMS_useFirstHalfTilesforSprites( false );
	ld	l, #0x00
	jp  _SMS_useFirstHalfTilesforSprites
;_sms_manager.c:63: void devkit_SMS_useFirstHalfTilesforSprites_True()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_True
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_True::
;_sms_manager.c:65: SMS_useFirstHalfTilesforSprites( true );
	ld	l, #0x01
	jp  _SMS_useFirstHalfTilesforSprites
;_sms_manager.c:67: void devkit_SMS_VDPturnOnFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOnFeature
; ---------------------------------
_devkit_SMS_VDPturnOnFeature::
;_sms_manager.c:69: SMS_VDPturnOnFeature( feature );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_VDPturnOnFeature
;_sms_manager.c:72: void devkit_SMS_loadPSGaidencompressedTiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTiles
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTiles::
;_sms_manager.c:74: SMS_loadPSGaidencompressedTiles( src, tilefrom );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	ret
;_sms_manager.c:76: void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMap
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMap::
;_sms_manager.c:78: SMS_loadSTMcompressedTileMap( x, y, src );
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_loadSTMcompressedTileMapArea
	pop	af
	pop	af
	inc	sp
	ret
;_sms_manager.c:81: void devkit_SMS_loadBGPalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPalette
; ---------------------------------
_devkit_SMS_loadBGPalette::
;_sms_manager.c:83: SMS_loadBGPalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_loadBGPalette
;_sms_manager.c:85: void devkit_SMS_loadSpritePalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePalette
; ---------------------------------
_devkit_SMS_loadSpritePalette::
;_sms_manager.c:87: SMS_loadSpritePalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_loadSpritePalette
;_sms_manager.c:89: void devkit_SMS_setBGPaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setBGPaletteColor
; ---------------------------------
_devkit_SMS_setBGPaletteColor::
;_sms_manager.c:91: const unsigned char color = RGB( r, g, b );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	ld	c, a
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	or	a, c
	ld	b, a
;_sms_manager.c:92: SMS_setBGPaletteColor( entry, color );
	push	bc
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setBGPaletteColor
	pop	af
	ret
;_sms_manager.c:94: void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setSpritePaletteColor
; ---------------------------------
_devkit_SMS_setSpritePaletteColor::
;_sms_manager.c:96: const unsigned char color = RGB( r, g, b );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	ld	c, a
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	or	a, c
	ld	b, a
;_sms_manager.c:97: SMS_setSpritePaletteColor( entry, color );
	push	bc
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
	ret
;_sms_manager.c:100: void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_setNextTileatXY
; ---------------------------------
_devkit_SMS_setNextTileatXY::
	push	ix
	ld	ix,#0
	add	ix,sp
;_sms_manager.c:102: SMS_setNextTileatXY( x, y );
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	pop	ix
	jp	_SMS_crt0_RST08
;_sms_manager.c:104: void devkit_SMS_setTile( const unsigned int tile )
;	---------------------------------
; Function devkit_SMS_setTile
; ---------------------------------
_devkit_SMS_setTile::
;_sms_manager.c:106: SMS_setTile( tile );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_crt0_RST18
;_sms_manager.c:108: void devkit_SMS_setTilePriority( const unsigned char tile )
;	---------------------------------
; Function devkit_SMS_setTilePriority
; ---------------------------------
_devkit_SMS_setTilePriority::
;_sms_manager.c:110: SMS_setTile( tile | TILE_PRIORITY | TILE_USE_SPRITE_PALETTE );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	a, #0x00
	or	a, #0x18
	ld	h, a
	jp  _SMS_crt0_RST18
;_sms_manager.c:113: void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite
; ---------------------------------
_devkit_SMS_addSprite::
;_sms_manager.c:115: SMS_addSprite( x, y, tile );
	ld	hl, #4+0
	add	hl, sp
	ld	b, (hl)
	push	bc
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	ret
;_sms_manager.c:117: void devkit_SMS_initSprites()
;	---------------------------------
; Function devkit_SMS_initSprites
; ---------------------------------
_devkit_SMS_initSprites::
;_sms_manager.c:119: SMS_initSprites();
	jp  _SMS_initSprites
;_sms_manager.c:121: void devkit_SMS_finalizeSprites()
;	---------------------------------
; Function devkit_SMS_finalizeSprites
; ---------------------------------
_devkit_SMS_finalizeSprites::
;_sms_manager.c:123: SMS_finalizeSprites();
	jp  _SMS_finalizeSprites
;_sms_manager.c:125: void devkit_SMS_waitForVBlank()
;	---------------------------------
; Function devkit_SMS_waitForVBlank
; ---------------------------------
_devkit_SMS_waitForVBlank::
;_sms_manager.c:127: SMS_waitForVBlank();
	jp  _SMS_waitForVBlank
;_sms_manager.c:129: void devkit_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_SMS_copySpritestoSAT
; ---------------------------------
_devkit_SMS_copySpritestoSAT::
;_sms_manager.c:131: UNSAFE_SMS_copySpritestoSAT();
	jp  _UNSAFE_SMS_copySpritestoSAT
;_sms_manager.c:133: void devkit_UNSAFE_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_devkit_UNSAFE_SMS_copySpritestoSAT::
;_sms_manager.c:135: UNSAFE_SMS_copySpritestoSAT();
	jp  _UNSAFE_SMS_copySpritestoSAT
;_sms_manager.c:138: unsigned char devkit_SMS_queryPauseRequested()
;	---------------------------------
; Function devkit_SMS_queryPauseRequested
; ---------------------------------
_devkit_SMS_queryPauseRequested::
;_sms_manager.c:140: return SMS_queryPauseRequested();
	jp  _SMS_queryPauseRequested
;_sms_manager.c:142: void devkit_SMS_resetPauseRequest()
;	---------------------------------
; Function devkit_SMS_resetPauseRequest
; ---------------------------------
_devkit_SMS_resetPauseRequest::
;_sms_manager.c:144: SMS_resetPauseRequest();
	jp  _SMS_resetPauseRequest
;_sms_manager.c:148: unsigned char devkit_isCollisionDetected()
;	---------------------------------
; Function devkit_isCollisionDetected
; ---------------------------------
_devkit_isCollisionDetected::
;_sms_manager.c:150: return ( SMS_VDPFlags & VDPFLAG_SPRITECOLLISION );
	ld	a,(#_SMS_VDPFlags + 0)
	and	a, #0x20
	ld	l, a
	ret
;_sms_manager.c:154: unsigned int devkit_SMS_getKeysStatus()
;	---------------------------------
; Function devkit_SMS_getKeysStatus
; ---------------------------------
_devkit_SMS_getKeysStatus::
;_sms_manager.c:156: return SMS_getKeysStatus();
	jp  _SMS_getKeysStatus
;_sms_manager.c:160: unsigned char devkit_SPRITEMODE_NORMAL()
;	---------------------------------
; Function devkit_SPRITEMODE_NORMAL
; ---------------------------------
_devkit_SPRITEMODE_NORMAL::
;_sms_manager.c:162: return SPRITEMODE_NORMAL;
	ld	l, #0x00
	ret
;_sms_manager.c:164: unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL()
;	---------------------------------
; Function devkit_VDPFEATURE_HIDEFIRSTCOL
; ---------------------------------
_devkit_VDPFEATURE_HIDEFIRSTCOL::
;_sms_manager.c:166: return VDPFEATURE_HIDEFIRSTCOL;
	ld	hl, #0x0020
	ret
;_sms_manager.c:168: unsigned int devkit_TILE_PRIORITY()
;	---------------------------------
; Function devkit_TILE_PRIORITY
; ---------------------------------
_devkit_TILE_PRIORITY::
;_sms_manager.c:170: return TILE_PRIORITY;
	ld	hl, #0x1000
	ret
;_sms_manager.c:172: unsigned int devkit_TILE_USE_SPRITE_PALETTE()
;	---------------------------------
; Function devkit_TILE_USE_SPRITE_PALETTE
; ---------------------------------
_devkit_TILE_USE_SPRITE_PALETTE::
;_sms_manager.c:174: return TILE_USE_SPRITE_PALETTE;
	ld	hl, #0x0800
	ret
	.area _CODE
__str_0:
	.ascii "Steven Boland"
	.db 0x00
__str_1:
	.ascii "Van Halen"
	.db 0x00
__str_2:
	.ascii "Van Halen Record Covers for the SMS Power! 2021 Competition"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FD2
___SMS__SDSC_author:
	.ascii "Steven Boland"
	.db 0x00
	.org 0x7FC8
___SMS__SDSC_name:
	.ascii "Van Halen"
	.db 0x00
	.org 0x7F8C
___SMS__SDSC_descr:
	.ascii "Van Halen Record Covers for the SMS Power! 2021 Competition"
	.db 0x00
	.org 0x7FE0
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0xd2	; 210
	.db #0x7f	; 127
	.db #0xc8	; 200
	.db #0x7f	; 127
	.db #0x8c	; 140
	.db #0x7f	; 127
