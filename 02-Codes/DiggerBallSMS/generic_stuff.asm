;==============================================================
; This code was written by Maxim and can be found at
; http://www.smspower.org/maxim/howtoprogram/lesson2.html
;==============================================================



;==============================================================
; Set up VDP registers (default values)
;==============================================================
; Call initialise_vdp to set up VDP to default values.
; Also defines name_table_address, SpriteTableAddress and SpriteSet
; which can be used elsewhere.
; To change the values used, copy and paste the modified data
; and code into the main source. Data is commented to help.
;==============================================================
.section "Initialise VDP to defaults" free
initialise_vdp:
    push hl
    push bc
        ld hl,_Data
        ld b,_End-_Data
        ld c,$bf
        otir
    pop bc
    pop hl
    ret

.define SpriteSet           0       ; 0 for sprites to use tiles 0-255, 1 for 256+
.define name_table_address  $3800   ; must be a multiple of $800; usually $3800; fills $700 bytes (unstretched)
.define SpriteTableAddress  $3f00   ; must be a multiple of $100; usually $3f00; fills $100 bytes

_Data:
    .db %10000100,$80
    ;    |||||||`- Disable synch
    ;    ||||||`-- Enable extra height modes
    ;    |||||`--- SMS mode instead of SG
    ;    ||||`---- Shift sprites left 8 pixels
    ;    |||`----- Enable line interrupts
    ;    ||`------ Blank leftmost column for scrolling
    ;    |`------- Fix top 2 rows during horizontal scrolling
    ;    `-------- Fix right 8 columns during vertical scrolling
    .db %10100100,$81
    ;     |||| |`- Zoomed sprites -> 16x16 pixels
    ;     |||| `-- Doubled sprites -> 2 tiles per sprite, 8x16
    ;     |||`---- 30 row/240 line mode
    ;     ||`----- 28 row/224 line mode
    ;     |`------ Enable VBlank interrupts
    ;     `------- Enable display
    .db (name_table_address>>10) |%11110001,$82
    .db %11111111, $83          ; Thanks to Bock for mentioning these two lines.
    .db %11111111, $84          ; For Japanese SMS compatability.
    .db (SpriteTableAddress>>7)|%10000001,$85
    .db (SpriteSet<<2)         |%11111011,$86
    .db $f|$f0,$87
    ;    `-------- Border palette colour (sprite palette)
    .db $00,$88
    ;    ``------- Horizontal scroll
    .db $00,$89
    ;    ``------- Vertical scroll
    .db $ff,$8a
    ;    ``------- Line interrupt spacing ($ff to disable)
_End:
.ends

;==============================================================
; Clear VRAM
;==============================================================
; Sets all of VRAM to zero
;==============================================================
.section "Clear VRAM" free
clear_vram:
    push af
    push hl
        ld hl,$0000
        call VRAMToHL
        ; Output 16KB of zeroes
        ld hl, $4000    ; Counter for 16KB of VRAM
        ld a,$00        ; Value to write
      ----------:out ($be),a ; Output to VRAM address, which is auto-incremented after each write
        dec h
        jp nz,----------
        dec l
        jp nz,----------
    pop hl
    pop af
    ret
.ends


;==============================================================
; VRAM to HL
;==============================================================
; Sets VRAM write address to hl
;==============================================================
.section "VRAM to HL"
VRAMToHL:
    push af
        ld a,l
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
    pop af
    ret
.ends

;==============================================================
; Load palette
;==============================================================
; Parameters:
; hl = location
; b  = number of values to write
; c  = palette index to start at (<32)
;==============================================================
.section "Load palette" free
LoadPalette:
	push af
	push bc
	push hl
	    ld a,c
	    out ($bf),a     ; Palette index
	    ld a,$c0
	    out ($bf),a     ; Palette write identifier
	    ld c,$be
	    otir            ; Output b bytes starting at hl to port c
	pop hl
	pop bc
	pop af
    ret
.ends



;==============================================================
; Tile loader
;==============================================================
; Parameters:
; hl = tile number to start at
; ix = location of tile data
; bc = No. of tiles to load
; d  = bits per pixel
;==============================================================
.section "Tile loader" FREE
load_tiles:
    push af
    push bc
    push de
    push hl
    push ix
        ; Tell VDP where I want to write (hl<<5)
        sla l
        rl h
        sla l
        rl h
        sla l
        rl h
        sla l
        rl h
        sla l
        rl h
        ld a,l
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a

        ; I need to output bc*8 bytes so I need to modify bc (<<3)
        sla c
        rl b
        sla c
        rl b
        sla c
        rl b
        
        ; Write data
        _Loop:
            ; Restore counter
            ld e,d

            _DataLoop:
                ; Write byte
                ld a,(ix+0)
                out ($be),a
                dec e
                inc ix
                jp nz,_DataLoop

            ; Restore counter
            ld e,d
            _BlankLoop:
                ; Write blank data to fill up the rest of the tile definition
                inc e
                ld a,e
                cp 5
                jp z,_NoMoreBlanks

                ld a,0
                out ($be),a
                jp _BlankLoop

            _NoMoreBlanks:

            dec bc
            ld a,b
            or c
            jp nz,_Loop

    pop ix
    pop hl
    pop de
    pop bc
    pop af
    ret
.ends

.section "New VBLanking crap" free
wait_for_vblank:
    push af
    push bc
    push de
    push hl
      -:halt
        ld a,(vblanked)
        cp 1
        jr nz,-
        xor a
        ld (vblanked),a
        
        call PSGMOD_Play
    pop hl
    pop de
    pop bc
    pop af
    ret
.ends
