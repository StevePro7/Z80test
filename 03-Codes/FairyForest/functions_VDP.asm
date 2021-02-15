;==============================================================
; Fairy Forest - VDP functions include file
;
; * This file contains the VDP functions called by the
;   program.
;
; Concept by:             Annorah Beeson
; Programming and art by: Patrick Beeson
;==============================================================
; Copyright 2017 Annorah & Patrick Beeson
;
; Licensing: Please feel free to use this code as you wish.
;            We have benefited from open source code shared on
;            SMS Power and hope that others can benefit from
;            the study and use of our code. Please see the
;            "Acknowledgements and references" section
;            for those works that have been instructive to us.
;            Also, this should go without saying but...
;            THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY
;            OF ANY KIND. IN NO EVENT SHALL THE AUTHORS OR
;            COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
;            OR OTHER LIABILITY IN CONNECTION WITH THE SOFTWARE
;            OR THE USE THEREOF. - Adapted from the MIT license
;==============================================================

; VDP interface functions
; =======================

; A function to set the VDP address to be written to
; --------------------------------------------------
; Parameters: hl = address
SetVDPAddress:
	ld a, l            ; load low byte of address into register a
	out (VDPControl),a ; output low byte of address to VDP control port
	ld a, h            ; load high byte of address into register a
	out (VDPControl),a ; output high byte of address to VDP control port
	ret

; A function to set the VDP registers
; -----------------------------------
; Parameters: VdpData in data include file
SetVDPRegisters:
    ld hl,VdpData           ; load the address at which VdpData starts into register hl
    ld b,VdpDataEnd-VdpData ; load the difference between end and start addressed of VdpData into register b
    ld c,VDPControl         ; load the VDP control port No. ($bf) into register c
    otir                    ; output b bytes of data to port c starting at address hl
	ret

; A Function to clear VRAM
; ------------------------
; Parameters: nil
ClearVRAM:
	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite  ; load VRAM write address into register hl
	call SetVDPAddress       ; call function to set VRAM write address

    ; 2. Output 16KB of zeroes
    ld bc, $4000             ; counter for 16KB of VRAM
    ClearVRAMLoop:           ; top of loop (analogous to for loop)
        ld a, $00            ; load value to write to VRAM into register a
        out (VDPData), a     ; output contents of register a to port $be (VDP data port)
        dec bc               ; decrement counter
        ld a, b              ; load high byte (b) from counter into register a
        or c                 ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, ClearVRAMLoop ; if counter has not run out then jump to ClearVRAMLoop

	ret

; A function to clear the sprite table
; ------------------------------------
ClearSpriteTable:
	; set VRAM write address to sprite table
	ld a,$00                           ; load $00 into register a
	out (VDPControl),a                 ; output register a to VDP control port
	ld a,SpritemapWrite                ; load sprite map location into register a
	out (VDPControl),a                 ; output register a to VDP control port

	; zeroize the sprite table
    ld bc, 256                         ; counter for 256 bytes of VRAM
    ClearSpriteLoop:                   ; top of loop (analogous to for loop)
        ld a, $00                      ; load value to write to VRAM into register a
        out (VDPData), a               ; output contents of register a to port $be (VDP data port)
        dec bc                         ; decrement counter
        ld a, b                        ; load high byte (b) from counter into register a
        or c                           ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, ClearSpriteLoop         ; if counter has not run out then jump to ClearSpriteLoop

	ret

; A function to send data to VDPData
; ----------------------------------
; Parameters: VDP address [see SetVDPAddress], hl = start address of data, bc = end address
;             of data - start address of data
SendToVDPData:
    SendToVDPLoop:          ; top of loop (analogous to for loop)
        ld a,(hl)           ; load data at address stored in hl into register a
        out (VDPData),a     ; output byte in register a to port $be (VDP data port)
        inc hl              ; increment hl so it points to the next data byte
        dec bc              ; decrement counter
        ld a,b              ; load high byte (b) from counter into register a
        or c                ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz,SendToVDPLoop ; if nz = 1 then jump to SendToVDPLoop

	ret

; A function to send palette data to VDPData
; ------------------------------------------
; Parameters: PaletteData in data include file
SendPaletteData:
	; 1. Set VRAM write address
	ld hl,$0000 | CRAMWrite         ; load VRAM write address into register hl
	call SetVDPAddress              ; call function to set VRAM write address

    ; 2. Output colour data
    ld hl,PaletteData               ; load the address at which PaletteData starts into register hl
    ld b,PaletteDataEnd-PaletteData ; load the difference between end and start addresses of PaletteData into register b
    ld c,VDPData                    ; load the VDP data port No. ($be) into register c
    otir                            ; output b bytes of data to port c starting at address hl
	ret

; A function to load title, intro and credit screen tiles into VRAM
; -----------------------------------------------------------------
; Parameters: nil
LoadTilesTitleIntroCredit:
	call TurnOffScreen                     ; blank screen during tile update

	; Load core tiles
	; ~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite                ; load VRAM write address into register hl
	call SetVDPAddress                     ; call function to set VRAM write address

    ; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,CoreTileData                     ; load the address at which TileData starts into register hl
    ld bc,CoreTileDataEnd-CoreTileData     ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load World 1 background tiles (these are used in title, intro and credit screens)
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite + 3072         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,World1TileData                   ; load the address at which TileData starts into register hl
    ld bc,World1TileDataEnd-World1TileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load addition sprite tiles for enemies and other effects
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; N.B. this area is blank for LoadTilesTitleIntroCredit since all that is needed are the core and world 1
	; blocks of tiles

	call TurnOnScreen                      ; turn screen back on once new tiles are loaded
	ret

; A function to load world 1 tiles into VRAM
; ------------------------------------------
; Parameters: nil
LoadTilesWorld1:
	call TurnOffScreen                     ; blank screen during tile update

	; Load core tiles
	; ~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite                ; load VRAM write address into register hl
	call SetVDPAddress                     ; call function to set VRAM write address

    ; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,CoreTileData                     ; load the address at which TileData starts into register hl
    ld bc,CoreTileDataEnd-CoreTileData     ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load World 1 background tiles (these are used in title, intro and credit screens)
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 3072         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,World1TileData                   ; load the address at which TileData starts into register hl
    ld bc,World1TileDataEnd-World1TileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load additional sprite tiles for enemies and other effects
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 5248         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,SpriteTileData                   ; load the address at which TileData starts into register hl
    ld bc,SpriteTileDataEnd-SpriteTileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	call TurnOnScreen                      ; turn screen back on once new tiles are loaded
	ret

; A function to load world 2 tiles into VRAM
; ------------------------------------------
; Parameters: nil
LoadTilesWorld2:
	call TurnOffScreen                     ; blank screen during tile update

	; Load core tiles
	; ~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite                ; load VRAM write address into register hl
	call SetVDPAddress                     ; call function to set VRAM write address

    ; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,CoreTileData                     ; load the address at which TileData starts into register hl
    ld bc,CoreTileDataEnd-CoreTileData     ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load World 2 background tiles (these are used in title, intro and credit screens)
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 3072         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,World2TileData                   ; load the address at which TileData starts into register hl
    ld bc,World2TileDataEnd-World2TileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load additional sprite tiles for enemies and other effects
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 5248         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,SpriteTileData                   ; load the address at which TileData starts into register hl
    ld bc,SpriteTileDataEnd-SpriteTileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	call TurnOnScreen                      ; turn screen back on once new tiles are loaded
	ret

; A function to load world 3 tiles into VRAM
; ------------------------------------------
; Parameters: nil
LoadTilesWorld3:
	call TurnOffScreen                     ; blank screen during tile update

	; Load core tiles
	; ~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to beginning of VRAM
	ld hl,$0000 | VRAMWrite                ; load VRAM write address into register hl
	call SetVDPAddress                     ; call function to set VRAM write address

    ; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,CoreTileData                     ; load the address at which TileData starts into register hl
    ld bc,CoreTileDataEnd-CoreTileData     ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load World 1 background tiles (these are used in title, intro and credit screens)
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 3072         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,World3TileData                   ; load the address at which TileData starts into register hl
    ld bc,World3TileDataEnd-World3TileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	; Load additional sprite tiles for enemies and other effects
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1. Set VRAM write address to appropriate part of VRAM
	ld hl,$0000 | VRAMWrite + 5248         ; load VRAM write address into register hl with offset to point to
	                                       ; next blank tile address
	call SetVDPAddress                     ; call function to set VRAM write address

	; 2. Output tile data
	; N.B. a loop must be used here since otir only works for data that is 256 bytes or less.
	; The loop is embedded in the SendToVDPData function.
    ld hl,SpriteTileData                   ; load the address at which TileData starts into register hl
    ld bc,SpriteTileDataEnd-SpriteTileData ; load the difference between end and start addresses of TileData
                                           ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	call TurnOnScreen                      ; turn screen back on once new tiles are loaded
	ret

; A function to initialize the VDP
; --------------------------------
; Parameters: nil
IniVDP:
	call SetVDPRegisters ; set VDP registers to initialize VDP
	call ClearVRAM       ; clear VRAM
	call SendPaletteData ; send palette data to the VDP
	ret

; A function to turn on the screen
; --------------------------------
; Parameters: nil
TurnOnScreen:
    ld a,%11100000
;          |||| |`- Zoomed sprites -> 16x16 pixels
;          |||| `-- Doubled sprites -> 2 tiles per sprite, 8x16
;          |||`---- 30 row/240 line mode
;          ||`----- 28 row/224 line mode
;          |`------ VBlank interrupts
;          `------- Enable display
    out (VDPControl),a ; send screen activation byte to VDP control port
    ld a,$81           ; load $81 into register a (command byte to send data to proper VDP register)
    out (VDPControl),a ; send register a to VDP control port
	ret

; A function to turn off the screen
; ---------------------------------
; Parameters: nil
TurnOffScreen:
    ld a,%10100000
;          |||| |`- Zoomed sprites -> 16x16 pixels
;          |||| `-- Doubled sprites -> 2 tiles per sprite, 8x16
;          |||`---- 30 row/240 line mode
;          ||`----- 28 row/224 line mode
;          |`------ VBlank interrupts
;          `------- Enable display
    out (VDPControl),a ; send screen deactivation byte to VDP control port
    ld a,$81           ; load $81 into register a (command byte to send data to proper VDP register)
    out (VDPControl),a ; send register a to VDP control port
	ret