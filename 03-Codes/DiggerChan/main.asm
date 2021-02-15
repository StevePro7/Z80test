;==============================================================
; 
; Digger Chan (c) Aypok 2006
; Parts are (c) Maxim (see "readme.txt")
;
; Email: aypok at aypok dot co dot uk
; Web:   http://www.aypok.co.uk/
; 
; Written for the 2006 SMS Power! Coding Competition:
; http://www.smspower.org/dev/competition/
; 
; This is the version of the code used to create the entry for
; the competition.
; 
; A huge amount of thanks goes out to Bock for fixing a lot of
; the VRAM timings, as well as giving advice on how to make it
; better.
; 
;==============================================================
;
; Digger Chan is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; Digger Chan is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with Digger Chan; if not, write to the Free Software
; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
;
;==============================================================



;==============================================================
; WLA-DX banking setup. This game has a LOT of data!
;==============================================================
.memorymap
defaultslot 0
slotsize $7ff0
slot 0 $0000
slotsize $10
slot 1 $7ff0
slotsize $4000
slot 2 $8000
slotsize $4000
slot 3 $c000
;slotsize $4000
;slot 4 $10000
;slotsize $4000
;slot 5 $14000
.endme 

.rombankmap
bankstotal 3
banksize $7ff0
banks 1
banksize $10
banks 1
banksize $4000
banks 1
.endro

;==============================================================
; SDSC tag and SMS rom header.
;==============================================================
.sdsctag 0.51,"Digger Chan","For SMS Power!'s 2006 Coding Competition","Aypok"

.bank 0 slot 0
.org $0000
.include "useful_functions.asm"

; Set up some RAM locations for storing data.
.define char_x      $c000   ; Stuff for the main sprite. 
.define char_y      $c001    
.define char_tile   $c002    
.define char_rel    $c003   ; Relative position - the block position (0-15).

.define flag_press  $c004   ; For checking if the button is held down.
.define line_count  $c005   ; Lines (in pixels) scrolled.
.define the_block   $c006   ; Memory address of block under player - 2 bytes.
.define scroll_val  $c008   ; Stores the scroll value.
.define block_type  $c009   ; Keeps the number of the block type we're destroying.
.define dest_level  $c00a   ; How far through the block destruction cycle we have gotten.
.define block_back  $c00b   ; Backup of (the_block). 2 bytes.
.define terrain     $c00d   ; Terrain. 0 = normal, 1 = ice, 2 = desert.
.define lives       $c00e   ; How many lives the player has left.
.define move_flag   $c00f   ; For when ice, making them slip around.

.define milk_1      $c010   ; The milk counter is stored in 2 bytes. This is the bigger.
.define milk_2      $c011   ; The smaller of the 2 milk counting bytes.
.define milk_flag   $c013   ; Only decrement milk every other turn.

.define depth_1     $c014   ; The depth counter used 4 bytes. Each byte contains a value from
.define depth_2     $c015   ; 0 to 9. This allows us to store decimal values rather than hex.
.define depth_3     $c016   ; There's plenty of RAM to waste, so it saves messing with BCD stuff. :)
.define depth_4     $c017   ; d1 = 1000s, d2 = 100s, d3 = 10s, d4 = 1s.

.define dir_flag    $c018   ; Used for double direction == climb stuff.
.define dir_count   $c019   ; For the above, keeps track of vblanks between the last press.

.define score_1     $c020   ; The score system works the same way as the depth counter.
.define score_2     $c021   ; s1 = 10000s, s2 = 1000s, s3 = 100s, s4 = 10s, s5 = 1s.
.define score_3     $c022   ; 
.define score_4     $c023   ; 
.define score_5     $c024   ; 
.define block_multi $c025   ; Counts how many blocks were destroyed that time.

.define level       $c026   ; A level counter.
.define level_done  $c027   ; Flag showing whether or not the level has been completed.
.define milk_found  $c028   ; Address if a milk block on screen. 2 bytes.

.define tempa       $c02e
.define tempb       $c02f
.define tempc       $c02e



; Set up some constants.
.define milk_block  20      ; Tile used for milk.



;==============================================================
; Boot section.
;==============================================================
.org $0000
.section "Boot section" force
    di              ; Disable interrupts.
    im 1            ; Interrupt mode 1.
    jp main         ; Jump to main program.
.ends

;==============================================================
; Pause button handler.
;==============================================================
.org $0066
.section "Pause button handler" force
    ret
.ends

;==============================================================
; Main program.
;==============================================================
.section "Main program" free
main:
    ld sp,$dff0
    
    ; Show the intro and title screens.
    call intro
    
main_title:
    call title_screen
    
    ; Set up some stuff for each game (not reset each level).
    ld a,1
    ld (level),a
    ld a,3
    ld (lives),a
    
    ld a,0
    ld (score_1),a
    ld (score_2),a
    ld (score_3),a
    ld (score_4),a
    ld (score_5),a
    
    call DefaultInitialiseVDP
    
start_level:
    ; Setup some variables.
    ld a,120                        ; Start X position.
    ld (char_x),a
    ld a,80                         ; Start Y position.
    ld (char_y),a 
    ld a,72                         ; The tile to use for the player's sprite.
    ld (char_tile),a
    ld a,15                         ; Relative position the player starts at.
    ld (char_rel),a
    ld a,16
    ld (line_count),a
    
    ld a,3                          ; Setup the default amount of milk for the player.
    ;ld a,255
    ld (milk_1),a
    ld a,255
    ld (milk_2),a
    ld a,0
    ld (milk_flag),a
    ld (line_count),a
    ld (level_done),a
    ld (flag_press),a
    ld (block_type),a
    ld (depth_1),a
    ld (depth_2),a
    ld (depth_3),a
    ld (depth_4),a
    
    ld hl,0
    ld (block_back),hl
    ld (the_block),hl
    ld hl,$3a9e                         ; The address of the block the player starts on.
    ld (the_block),hl
    
    
    ; Initialise the system.
    call ClearVRAM
    
    call load_level_data
    push af
    push hl                             ; 'hl' has the level data address.
        ; Load the palette.
        ld a,:palette_data              ; Find the slot/page the data is in.
        ld ($ffff),a                    ; Map that page to the second map slot ($8000-$bfff)
        ld hl,$c000                     ; This is the address in VRAM where the palette lives.
        call VRAMToHL                   ; Set $be ready to receive the data.
        call load_palette_type          ; Load the right palette for the terrain.
        ld b,32                         ; Palette length.
        ld c,$be                        ; Write the data to port $be (VRAM), which points to $c000 in VRAM.
        otir                            ; Do it.
  
        ; Load the tiles.
        ld a,:tile_data                 ; Find the slot/page the data is in.
        ld ($ffff),a                    ; Map that page to the second map slot ($8000-$bfff).
        ld hl,0                         ; This is where to put the tiles in VRAM.
        ld ix,tile_data                 ; Tile data - contains all tile info.
        ld bc,89                        ; Number of tiles.
        ld d,4                          ; Bits per pixel.
        call LoadTiles
    pop hl
    pop af
    
    
    
    ;==============================================================
    ; Draw a screenful of the level.
    ;==============================================================
    ld ($ffff),a                ; Map the page containing the tile map to the second map slot ($8000-$bfff).
    ld bc,NameTableAddress
    ld a,24
      -:call DrawOneLine
        dec a
        push af
            ld a,(line_count)   ; We need to keep line_count upto date.
            cp 7                ; If it's 8, set it to 16.
            jp nz,+
            ld a,16
            jp ++
           +:ld a,7             ; If it's 16, set it to 8.
          ++:ld (line_count),a
        pop af
        jp nz,-
        ld a,0
        ld (line_count),a
    
    ; Main screen turn on!
    ld a,%11000100
;         ||||| |`- Zoomed sprites -> 16x16 pixels.
;         ||||| `-- Doubled sprites -> 2 tiles per sprite, 8x16.
;         ||||`---- 30 row/240 line mode.
;         |||`----- 28 row/224 line mode.
;         ||`------ VBlank interrupts.
;         |`------- Enable display.
;         `-------- Must be set (VRAM size bit).
    out ($bf),a
    ld a,$81
    out ($bf),a
    
    ; Setup the sprite sprites drawing.
    call draw_a_bunch_of_sprites_and_stuff
    
    
    
    ; Main engine loop. Vroom vroom!
    ld a,0                      ; 'a' is the current scroll value (starts at 0).
    ld (scroll_val),a
    loop:
        call WaitForVBlankNoInt
        call check_the_milk
        call double_press_counter_thing
        call check_block_destruction
        jp nz,draw_sprite       ; Don't allow digging until all blocks are removed.
        
        
        
        ; Check if they've completed the level.
        ld a,(level_done)
        cp 1
        jp z,level_ending
        
        ; Check the button flag
        ld a,(flag_press)       ; Check if the button is held down. Wait for them to let off
        cp 0                    ; the buttons before doing more.
        jp z,allow_control
        
        ; The flag is set, so they were pressing the button. Recheck the status.
        in a,($dc)              ; Read from controller port.
        cp %11101111            ; If any of the buttons are still pressed, then
        jp z,+                  ; skip to the bit which draws the background.
        
        ; Nope, no-longer pressed. Change the flag. Decrement it by 1 each time.
        ; This gives a slight delay, stopping the display from getting garbled.
        ld a,(flag_press)
        cp 0                    ; Only decrement if it's not 0, otherwise it will
        jp z,+                  ; loop around and not allow the button to be pressed.
        dec a
        ld (flag_press),a       ; Skip giving them control until they have finished falling.
      +:jp draw_sprite          ; This prevents them from walking through solid blocks.
        
        ; Check the buttons.
        allow_control:
        in a,($dc)              ; Read from controller port.
        cp %11101111            ; Is P1 button 1 being pressed? The dig button.
        jp z,do_digging
        cp %11101101            ; Is P1 button 1 being pressed with "down"? The dig button.
        jp z,do_digging
        
        ; Drop them down a row if there is nothing below them. Putting it here allows
        ; them to move left and right a little, but not to block the fall by a keypress.
        call check_player_fallable
        ld a,(line_count)
        cp 16
        jp z,draw_sprite
        
        
        
        
        ; Control the sprite.
        control_movement:
        in a,($dc)              ; Read from controller port.
        cp %11111011            ; Is P1 "left" being pressed?
        jp z,move_player_left
        cp %11101011            ; Is P1 "left" and "dig" being pressed?
        jp z,move_player_left
        cp %11110111            ; Is P1 "right" being pressed?
        jp z,move_player_right
        cp %11100111            ; Is P1 "right" and "dig" being pressed?
        jp z,move_player_right
        cp %11111110            ; Is P1 "up" being pressed?
        jp z,up_button_pressed
        cp %11110110            ; Is P1 "up" being pressed with "right"?
        jp z,up_button_pressed
        cp %11111010            ; Is P1 "up" being pressed with "left"?
        jp z,up_button_pressed_left
        
        cp %11101110            ; Is P1 "dig" being pressed with "up"?
        jp z,do_digging_up
        cp %11100110            ; Is P1 "dig" being pressed with "up" and "right"?
        jp z,do_digging_up
        cp %11101010            ; Is P1 "dig" being pressed with "up" and "rightleft"?
        jp z,do_digging_up_left
        
        
        
        call redirect_sprite
        call double_press_counter_thing_two
        jp draw_sprite
        
        ; End of main loop.
        
        
        
        
        
        
;==============================================================
; Scroll the background. This is based on code written by Maxim.
;==============================================================
scroll_the_background:
    ; If the char's Y position is not 80, then we need to move the char's
    ; sprite down instead of scrolling the background up. If it's not 80,
    ; then it means then have climbed up a level.
    ld a,(char_y)               ; Find the Y value.
    cp 80                       ; Is it 80 (IE, have they not climbed up?)
    jp z,+                      ; If so, skip all of this next stuff.
    inc a                       ; Increase the player's Y (move it down)
    ld (char_y),a               ; Save it.
    jp loop                     ; Loop.
    
    ; Scroll the background one row, 16 pixels.
  +:ld a,(scroll_val)           ; Bring back 'a', which is the scroll counter.
    push af
        and 7
        call z,DrawOneLine
        ld a,b
        cp $ff
        jp z,set_level_done
    pop af
    
    ; Update the depth when the player falls two rows.
    push af
        and 15
        call z,update_players_depth
    pop af
    
    out ($bf),a                 ; Output to VDP register 9
    push af
        ld a,$89
        out ($bf),a
    pop af
    inc a                       ; Increment.
    ld (scroll_val),a
    cp 224                      ; Is it 224 now?
    jp nz,loop                  ; If not, repeat loop.
    ld a,0                      ; Otherwise, set it to zero.
    ld (scroll_val),a
    jp loop                     ; Repeat loop.

; Sets the "level_done" flag.
set_level_done:
    ld a,1
    ld (level_done),a
    pop af
    jp loop



;==============================================================
; Finds the relative block position of the player.
;==============================================================
find_relative_position:
    ld a,(char_x)           
    add a,6                     ; Add four, so that we don't catch the right-hand corner of the left block.
    srl a                       ; Binary shift the pixel position right by 2 - this divides by 4, to get the block
    srl a                       ; region. It gives a number between 0 and 31.
    srl a
    ld (char_rel),a             ; Save it.
    ret



;==============================================================
; Re-draw the sprite.
;==============================================================
draw_sprite:
    push af
        ld a,$00                ; Set VRAM to point to the sprite Y table. $3f80, but we
        out ($bf),a             ; need to set bit 6 of the second byte to 1, so $3f becomes
        ld a,$7f                ; $7f.
        out ($bf),a 
        
        ld a,(char_y)           ; Copy Y co-ordinate to VRAM.
        out ($be),a
        push ix
        pop ix
        out ($be),a
        add a,8
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,$80                ; Set VRAM to point to the sprite Y table.
        out ($bf),a
        ld a,$7f
        out ($bf),a   
        
        ld a,(char_x)           ; Copy the X co-ordinate to VRAM.
        out ($be),a
        ld a,(char_tile)        ; Copy the tile number.
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Second part of the four.
        add a,8
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,1
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Third part of the four.
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,2
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Fourth part of the four.
        add a,8
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,3
        push ix
        pop ix
        out ($be),a
    pop af
    jp check_scrollable



;==============================================================
; Checks whether or not to scroll the background.
;==============================================================
check_scrollable:
    ld a,(line_count)           ; Check if the line counter is greater than 0.
    cp 0
    jp nz,+
    jp loop                     ; It is 0, so restart the loop - no scrolling.
    +:dec a                     ; It is greater than 0, so decrement it by 1
    ld (line_count),a           ; and draw the next line of the background.
    jp scroll_the_background



;==============================================================
; Checks if the player can fall down a row due to there being
; no block under them.
;==============================================================
check_player_fallable:
    call find_relative_position
    call find_current_block
    
    ; Are they *directly* over a block? An "AND 15" on their X position will be 8 if they are.
    ld a,(char_x)
    and 15
    cp 8
    jp nz,+                     ; Nope, skip to stage two.
    
    ; They're over the block, but is the block below them empty?
    call check_block_underneath
    cp 1                        ; Did it return 1 or 0?
    jp z,let_player_fall        ; 1 - let the player fall.
    ret nz                      ; 0 - no falling today.
    
    ; So they're no directly over a block, but they might be over two empty blocks.
  +:call check_block_underneath
    cp 1
    jp z,+                      ; 1 - check the next block.
    ret nz                      ; 0 - no falling today.
    
  +:call check_player_fallable_right_block
    cp 0                        ; Is it empty?
    jp z,check_player_directly_over
    cp milk_block               ; Is it milk?
    ret nz                      ; 0 - no falling today.
    
    push bc
        ld b,0
        call collect_the_milk   ; Yep - collect it.
    pop bc
    ret
    


;==============================================================  
; Okay, so there are two empty blocks: one under and one to the
; right of the player, but the player may actually be a few
; pixels over the block to the left - which is possibly solid.
; We need to check of the player is actually over the emply
; blocks. The block to the becomes (the_block) when the player
; is six pixels left of it!
;==============================================================
check_player_directly_over:
    ; Put the player's X position in 'b'.
    ld a,(char_x)
    push bc
        ld b,a
        
        ; Find the X position of the far-left edge of the block under the player.
        ld a,(char_rel)         ; Find the char's relative position, then multiple it by 8.
        sla a                   ; This gives us the left side X position of the block
        sla a                   ; under them.
        sla a
        
        ; Subtract the player's X from the block's X. If the carry flag is set,
        ; the it means the player is to the right of the edge (fall). If it's
        ; zero, then the player is on the edge (fall). If neither of those things
        ; are true, then the player is left of the block - don't fall.
        sub b
    pop bc
    jp c,let_player_fall        ; Carry (right)?
    cp 0
    jp z,let_player_fall        ; Zero (above)?
    
    ; They are too far left, so check the block to the left.
    call check_player_fallable_left_block
    cp 0
    jp z,let_player_fall        ; It's also empty - fall.
    
    ret



;==============================================================
; Checks if the block under the player is empty. If it is, 'a'
; will be 1 - otherwise 'a' will be 0.
;==============================================================
check_block_underneath:
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l                  ; As this data is stored in VRAM, we have to access it
        out ($bf),a             ; via the VDP.
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        push ix
        pop ix
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    
    cp 0                        ; Is it empty?
    jp z,+                      ; Nope, not empty. Postpone the journey downwards.
    cp milk_block               ; Is it milk?
    push bc
        ld b,0
        call z,collect_the_milk ; Yep - collect it.
    pop bc
    ld a,0                      ; Return 0.
    ret nz                      ; Nope, not milk either. Go back.
  +:ld a,1                      ; Return 1.
    ret



;==============================================================
; This bit does the falling. Getting here means they can fall
; down a block.
;==============================================================
let_player_fall:
    ld a,16                     ; Set the button pressed flag on.
    ld (flag_press),a           ; Set a 16 vblank wait between button presses.
    
    ; Allows the screen to scroll down a row.
    ld a,(line_count)           ; When this button is pressed, allow the screen
    cp 0                        ; to scroll down 16 pixels - one at a time.
    jp z,+                      
    ret
  +:ld a,16                     ; If it's 0, set it to 16.
    ld (line_count),a
    ret



;==============================================================
; Checks if the block to the bottom right of the player exists.
;==============================================================
check_player_fallable_right_block:
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l                  ; This data is stored in VRAM.
        add a,4                 ; Find the block to the right of it.
        ld l,a
        out ($bf),a
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    ret                         ; Return with 'a'. If 'a' == 0, then it's empty.



;==============================================================
; Checks if the block to the bottom left of the player exists.
;==============================================================
check_player_fallable_left_block:
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l                  ; This data is stored in VRAM.
        sub 4                   ; Find the block to the left of it.
        ld l,a
        out ($bf),a
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    ret                         ; Return with 'a'. If 'a' == 0, then it's empty.



;==============================================================
; Checks if the player can move left or right.
; If 'b' is 124, then check the left, if it's 132, it checks
; the right side.
;==============================================================
check_player_moveable:
    call find_relative_position
    call find_current_block
    
    ; Check that there is no block to the left.
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l
        sub b                   ; The block to the left is 'the_block' minus 4 bytes. Don't forget to go up a row.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        
        ld a,l                  ; As this data is stored in VRAM, we have to access it
        out ($bf),a             ; via the VDP.
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    
    cp 0                        ; Is it empty?
    jp z,+
    cp milk_block               ; Is it milk?
    call z,collect_the_milk     ; Yep - collect it.
    jp z,+                      ; Allow them to move through it.
    
    ; Nope, there is a block there. Check if they are right up against it, or a 
    ; few pixels to the right of it. Only stop if they are right up against it.
    ld a,(char_x)
    sub 56                      ; The furthest left they can go is 56, so sub that to make the maths easier.
    and 15                      ; Block borders are multiples of 16. If the player's x
    cp 0                        ; position is not a multiple of 16, allow them to move left.
    jp z,++                     ; No room to go left.
    
    +:ld a,0                    ; If 'b' is 0, then they can move. 
    ld b,a                      ; If it gets here, then they can move.
    
    ++:ret                      ; Go back.



;==============================================================
; If there is no block to the left of the player's current
; position, allow them to move left a bit.
;==============================================================
move_player_left:
    ; Change the sprite to face left.
    ld a,76
    ld (char_tile),a
    
    push bc
        ld a,132                ; Set 'b' to 132, so the function called checks the left block.
        ld b,a                  ; Check if they can move left. Returns 0 if they can.
        call check_player_moveable
        
        ld a,b
    pop bc
    cp 0                        ; Check the value of 'b'. If it's 0, let them move.
    jp nz,move_player_left_cont
    
    ld a,(char_x)               ; It looks like nothing is blocking them, so
    dec a                       ; move them one pixel left.
    ld (char_x),a
    
    ; Check the terrain.
    ld a,(terrain)
    cp 1                        ; Are we on ice?
    call z,move_player_left_ice
    cp 2                        ; Are we in the desert?
    call z,move_player_left_desert
    
    jp ++++
    
move_player_left_ice:
    ld a,(move_flag)            ; Check the move flag.
    cp 1
    jp nz,++
    ld a,0                      ; Move flag is set, so unset it.
    ld (move_flag),a
    ret
    
    ; Move flag is unset, so move them an extra pixel left. Ice is slippy. :)
    ++:inc a                    ; Set the move flag so we only move once.
    ld (move_flag),a
    jp move_player_left         ; Recall this function to move again.
    ret
    
move_player_left_desert:
    ld a,(move_flag)            ; Check the move flag.
    cp 1
    jp nz,++
    ld a,0                      ; Move flag is set, so unset it.
    ld (move_flag),a
    ret
    
    ; Move flag is unset, so only move them every other time. Sand is hard to walk through. :)
    ++:ld a,1                   ; Set the move flag so we only move once.
    ld (move_flag),a
    ld a,(char_x)               ; Reset their position.
    inc a
    ld (char_x),a
    ret 
    
move_player_left_cont:
    ; Check if they're trying to dig left.
    in a,($dc)                ; Read from controller port.
    cp %11101011
    jp nz,++                    ; The dig button isn't pressed.
    push hl
        ld a,(char_rel)         ; Don't allow them to dig out of the tunnel.
        cp 7
        jp z,+
        
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l
        sub 132                 ; The block to the left is 'the_block' minus 132 bytes. Don't forget to go up a row.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        ld (the_block),hl
        call remove_the_blocks_start
        
        ld a,16                 ; Set the button pressed flag on.
        ld (flag_press),a       ; Set a 16 vblank wait between button presses.
    +:pop hl
    call find_current_block     ; Put the address of the block below us back into 'hl'.
    jp ++++
    
    ; Check for double key press. Only do it if right against the wall.
    ++:ld a,(dir_flag)
    cp 2                        ; Is it set?
    jp nz,+++                   ; Nope. Set it to one and start the counter.
    
    ; Check if the block to the upper-left of the player is empty.
    ; If it is, allow them to move there.
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l
        call decrement_h        ; Decrementing 'h' by 1 is the same as "sub 256" from l.
        sub 4                   ; The block to the upper-left is 'the_block' minus 260 bytes.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        ld (tempc),hl
        
        ld a,l                  ; As this data is stored in VRAM, we have to access it
        out ($bf),a             ; via the VDP.
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    
    ; Don't forget to check the block directly above the char!
    
    cp 0                        ; Is it empty?
    jp z,++
    cp milk_block               ; Is it milk?
    jp z,+                      ; Allow them to move through it.
    jp +++                      ; Solid - can't climb.
    
    +:push bc
        ld a,4
        ld b,a
        call collect_the_milk
    pop bc
    
    ; Move them up a level and left a bit.
    ++:ld a,(char_y)             ; Update the Y position of the sprite.
    sub 16
    ld (char_y),a
    ld a,(char_x)               ; Update the X position of the sprite.
    sub 8
    ld (char_x),a
    
    +++:ld a,0                  ; Set the counter to zero
    ld (dir_count),a            ;
    ld a,1                      ; and set the flag to 1.
    ld (dir_flag),a
    
    ; Check if there is a block below them. If not, drop them down.
    ; This is slightly different to the checking used for block destroying:
    ; Only drop them down if they are directly over the hole.
    ++++:
        
    ; Continue with the next part of the mission to take over the world.
    jp draw_sprite



;==============================================================
; If there is no block to the right of the player's current
; position, allow them to move right a bit.
;==============================================================
move_player_right:
    ; Change the sprite to face right.
    ld a,72
    ld (char_tile),a
    
    push bc
        ld a,124                ; Set 'b' to 132, so the function called checks the left block.
        ld b,a                  ; Check if they can move left. Returns 0 if they can.
        call check_player_moveable
        
        ld a,b
    pop bc
    cp 0                        ; Check the value of 'b'. If it's 0, let them move.
    jp nz,move_player_right_cont
    
    ld a,(char_x)               ; It looks like nothing is blocking them, so
    inc a                       ; move them one pixel right.
    ld (char_x),a
    
    ; Check the terrain.
    ld a,(terrain)
    cp 1                        ; Are we on ice?
    call z,move_player_right_ice
    cp 2                        ; Are we in the desert?
    call z,move_player_right_desert
    
    jp +++
    
move_player_right_ice:
    ld a,(move_flag)            ; Check the move flag.
    cp 1
    jp nz,++
    ld a,0                      ; Move flag is set, so unset it.
    ld (move_flag),a
    ret
    
    ; Move flag is unset, so move them an extra pixel right. Ice is slippy. :)
    ++:inc a                    ; Set the move flag so we only move once.
    ld (move_flag),a
    jp move_player_right        ; Recall this function to move again.
    ret
    
move_player_right_desert:
    ld a,(move_flag)            ; Check the move flag.
    cp 1
    jp nz,++
    ld a,0                      ; Move flag is set, so unset it.
    ld (move_flag),a
    ret
    
    ; Move flag is unset, so only move them every other time. Sand is hard to walk through. :)
    ++:ld a,1                   ; Set the move flag so we only move once.
    ld (move_flag),a
    ld a,(char_x)               ; Reset their position.
    dec a
    ld (char_x),a
    ret 
    
move_player_right_cont:
    ; Check if they're trying to dig left.
    in a,($dc)                  ; Read from controller port.
    cp %11100111
    jp nz,++                    ; The dig button isn't pressed.
    push hl
        ld a,(char_rel)         ; Don't allow them to dig out of the tunnel.
        cp 23
        jp z,+
        
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l
        sub 124                 ; The block to the left is 'the_block' minus 132 bytes. Don't forget to go up a row.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        ld (the_block),hl
        call remove_the_blocks_start
        
        ld a,16                 ; Set the button pressed flag on.
        ld (flag_press),a       ; Set a 16 vblank wait between button presses.
    +:pop hl
    call find_current_block     ; Put the address of the block below us back into 'hl'.
    jp +++
    
    ; Check for double key press. Only do it if right against the wall.
    ++:ld a,(dir_flag)
    cp 4                        ; Is it set?
    jp nz,++                    ; Nope. Set it to one and start the counter.
    
    ; Check if the block to the upper-left of the player is empty.
    ; If it is, allow them to move there.
    push hl
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        ld a,l
        sub 252                 ; The block to the upper-right is 'the_block' minus 252 bytes.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        ld (tempc),hl
        
        ld a,l                  ; As this data is stored in VRAM, we have to access it
        out ($bf),a             ; via the VDP.
        ld a,h                  ; Read mode, so no need to 'OR' it with $40.
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Find the contents of the memory address. Gives the tile number.
    pop hl
    
    cp 0                        ; Is it empty?
    jp z,+
    cp milk_block               ; Is it milk?
    jp z,+                      ; Allow them to move through it.
    jp ++                       ; Solid - can't climb.
    
    ; Move them up a level and left a bit.
    +:ld a,(char_y)             ; Update the Y position of the sprite.
    sub 16
    ld (char_y),a
    ld a,(char_x)               ; Update the X position of the sprite.
    add a,8
    ld (char_x),a
    
    ++:ld a,0                   ; Set the counter to zero
    ld (dir_count),a            ;
    ld a,3                      ; and set the flag to 1.
    ld (dir_flag),a
    
    ; Check if there is a block below them. If not, drop them down.
    ; This is slightly different to the checking used for block destroying:
    ; Only drop them down if they are directly over the hole.
    +++:
        
    
    ; Continue with the next part of the mission to take over the world.
    jp draw_sprite



;==============================================================
; Resets the player's sprite to the default one.
;==============================================================
redirect_sprite:
    ; Check current sprite.
    ld a,(char_tile)
    cp 80                       ; Up right?
    jp z,+
    cp 84                       ; Up left?
    jp z,++
    ret                         ; Neither, leave the sprite.
    
    ; Make sprite point down and right.
    +:ld a,72
    ld (char_tile),a
    ret
    
    ; Make sprite point down and left.
    ++:ld a,76
    ld (char_tile),a
    ret



;==============================================================
; Does what needs to be done when the up button is pressed.
; That is, change the sprite. Also does up+right.
;==============================================================
up_button_pressed:
    ; If the player is pointing left, make it point up-left.
    ld a,(char_tile)
    cp 72                       ; Right?
    jp z,+
    cp 76
    jp z,++
    jp draw_sprite
    
    +:ld a,80                   ; Up-right.
    ld (char_tile),a
    jp draw_sprite
    
    ++:ld a,84                  ; Up-left.
    ld (char_tile),a
    jp draw_sprite



;==============================================================
; Same as above, but for up and left.
;==============================================================
up_button_pressed_left:
    ld a,84
    ld (char_tile),a
    jp draw_sprite


;==============================================================
; Dig down a row.
;==============================================================
do_digging:
    call find_current_block             ; Find the memory address of the current block.
    push hl
        call remove_the_blocks_start    ; Remove the blocks below the player.
        
        ld a,16                         ; Set the button pressed flag on.
        ld (flag_press),a               ; Set a 16 vblank wait between button presses.
    pop hl
    ;call check_player_fallable          ; Make the player fall down.
    
    jp draw_sprite
    


;==============================================================
; Removes the block directly above the char.
;==============================================================
do_digging_up_left:
    ; Change the sprite.
    ld a,84
    ld (char_tile),a
    jp do_digging_up_main



;==============================================================
; Removes the block directly above the char.
;==============================================================
do_digging_up:
    ; Change the sprite.
    ld a,80
    ld (char_tile),a

do_digging_up_main:
    call find_current_block             ; Find the memory address of the current block.
    
    push hl
        ld hl,(the_block)               ; Find the memory location of the block the player is on.
        call decrement_h                ; The block above the player is 256 bytes before the current block.
        ld (the_block),hl               ; Save the address.
        call remove_the_blocks_start    ; Remove the blocks above the player.
        
        ld a,16                         ; Set the button pressed flag on.
        ld (flag_press),a               ; Set a 16 vblank wait between button presses.
    pop hl
    call find_current_block             ; Find the memory address of the current block again.
    
    jp draw_sprite
    


;==============================================================
; Find the memory address of the block which is under the player.
; This is the block the player will move to if they dig down.
;==============================================================
find_current_block:
    push af
    push bc
    push de
    push hl
        ld a,(scroll_val)       ; Get the scroll value.
        ld b,16                 ; It hasn't updated yet, so we need to update our copy.
        add a,b                 
        cp 224                  ; We also need to loop it around, It must not go above 224.
        jp nz,+                 
        ld a,0                  ; It was over 224, reset it to 0.
        +:ld (the_block),a      ; Save the value.
        
        ld h,0                  ; Set the first half of 'hl' to 0.
        ld l,a                  ; Put the scroll value into 'l'.
        add hl,hl               ; Multiply by 8.
        add hl,hl
        add hl,hl
        
        ld bc,(char_rel)        ; Get the relative position of the char.
        sla c                   ; Multiply it by 2, this makes sure we have an even number.
        ld a,c                  ; If the result is not a multiple of 4, then subtract 2.
        and 3                   ; Only the main blocks are mutliples of 4 - the inbetween ones are not.
        call z,decrement_c_twice
        
        add hl,bc               ; Add this relative position to 'hl', which is the scroll value x 4.
        ld b,h
        ld c,l
        
        ld hl,$3b00             ; Load the base address of the display bit
        add hl,bc               ; then add it to the result of (('a'*4)+rel).
        
        ; The first half of the background is in the second half of the RAM, the second
        ; half is in the first half of RAM - this is why we need to do the next bit.
        ld a,h
        cp $3f                  ; If it goes over this, then we need to subtract 7.
        jp c,+
        sub 7                   ; It is $3f or over, so alter it.
        ld h,a
        
        ; So far we have the block below the player, now we need to get the
        ; block which is occupied by the player.
        +:ld a,l
        sub 128                 ; We remove 128 from it as 'hl' is one block below the player.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        
        ; Because the user can climb up, it moves the sprite and not the background. This
        ; means that the block we need to find is higher than usual. But how do we know? Easy.
        ; The Y position of the player (char_y) will always be 80, unless they have climbed up.
        ; Each climb will subtract 16 from that. So we find how many multiples of 16 are missing
        ; (1 for each climb) and loop through that many times, subtracting 128 from the block's
        ; position.
        ld a,(char_y)           ; Find the Y value.
        cp 80                   ; Is it 80 (IE, have they not climbed up?)
        jp z,++                 ; If so, skip all of this next stuff.
        
        ld b,a
        ld a,80                 ; Subtract is from 80, which leads us with a multiple of 16.
        sub b
        sra a                   ; Divide it by 16 by way of 4 bit-shifts right.
        sra a
        sra a
        sra a                   ; 'a' will now contain how many rows the player has climbed.
        
        -:cp 0                  ; Start of the loop.
        jp z,++                 ; Bail when 'a' hits zero.
        push af
            ld a,l
            sub 128             ; We remove 128 from it as 'hl', to go up one row.
            call c,decrement_h  ; If we went into minus numbers, decrement 'h'.
            ld l,a
        pop af
        dec a                   ; Decrement 'a' and restart the loop.
        jp -
        
        ; Save the position to RAM.
        ++:ld (the_block),hl
    pop hl
    pop de
    pop bc
    pop af
    ret



;==============================================================
; Remove the 2x2 block located at (the_block).
;==============================================================
remove_the_block:
    push hl
        ld hl,(the_block)       ; Get the address of the current block.
        ld a,l
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,0                  ; Remove the top two blocks.
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,l                  
        sub 192                 ; We remove 192 instead of 64 so that it loops around, since the max is 255.
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,0                  ; Remove the bottom two blocks.
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
    pop hl
    ret



;==============================================================
; Called from the main loop to check if we need to finish off
; the destruction of the blocks.
;==============================================================
check_block_destruction:
    ld a,(dest_level)                   ; Find destruction level. 
    cp 0                                ; Is it zero? That means we're not
    ret z                               ; destroying blocks, so return.
    cp 20                               ; 20 is the second stage.
    jp z,+
    cp 30                               ; 30 is the third stage.
    jp z,+
    cp 40                               ; 40 is the final stage.
    jp z,+
    
    inc a                               ; If it's neither of the above stages
    ld (dest_level),a                   ; then increment the counter and
    ret                                 ; return.
    
    +:call continue_block_destruction
    
    ld a,(dest_level)                   ; Increase the (dest_level).
    cp 0                                ; Has it been reset?
    ret z                               ; Yep, we're done.
    inc a                               ; Nope - incremement.
    ld (dest_level),a
    
    ret



;==============================================================
; Finishes off the destruction of the blocks.
;==============================================================
continue_block_destruction:
    push hl
        ld hl,(block_back)              ; Get the block from backup.
        ld (the_block),hl               ; Save it to (the_block).
        call remove_the_blocks_start    ; Continue with the plan.
        ;call check_player_fallable
        call check_milk_fall            ; Do any milk blocks need to drop?
    pop hl
    
    ret



;==============================================================
; Removes all blocks of the same colour/type as the one the
; player just dug through.
;==============================================================
remove_the_blocks_start:
    ld hl,(the_block)           ; Get the address of the current block.
    call find_block_number      ; Get the number of the block.
    cp 0                        ; Check that it's not an empty block.
    ret z
    cp milk_block               ; Don't allow destruction of milk.
    ret z
    cp 25                       ; Can't dig through steel, either.
    ret z
    ld (block_type),a           ; Save block type to RAM.
    
    ld a,(dest_level)           ; Find the destruction level.
    cp 0                        ; Is it zero?
    jp nz,+                     ; skip if not.
    ld (block_back),hl          ; First time, so save a backup of the block.
    ld a,10                     ; Increase the destruction level counter.
    ld (dest_level),a           ; Save it.

    +:call set_destruct_1       ; Set it to be broken.
    
remove_the_blocks:
    ; Check the four surrounding blocks; W N E S, in that order.
    ; Find the block to the left.
    push hl
        ld a,l
        sub 4                   ; The left block is the current block minus 4 bytes.
        call c,decrement_h
        ld l,a
        
        call remove_the_blocks_part_two
        jp nz,+
        call remove_the_blocks  ; Call this function again, to find blocks.
    +:pop hl
    
    ; Find the block above.
    push hl
        ld a,l
        sub 128
        call c,decrement_h      ; The upper block is the current block minus 256 bytes.
        ld l,a
        
        call remove_the_blocks_part_two
        jp nz,+
        call remove_the_blocks  ; Call this function again, to find blocks.
    +:pop hl
    
    ; Find the block to the right.
    push hl
        ld a,l
        add a,4                 ; The right block is the current block plus 4 bytes.
        call c,increment_h
        ld l,a
        
        call remove_the_blocks_part_two
        jp nz,+
        call remove_the_blocks  ; Call this function again, to find blocks.
    +:pop hl
    
    ; Find the block below.
    push hl
        ld a,l
        add a,128
        call c,increment_h        ; The right block is the current block plus 256 bytes.
        ld l,a
        
        call remove_the_blocks_part_two
        jp nz,+
        call remove_the_blocks  ; Call this function again, to find blocks.
    +:pop hl
    
    ret



;==============================================================
; Set the block type/number of the block in 'hl' to 17.
;==============================================================
remove_the_blocks_part_two:
    call find_block_number      ; Find the type/number of this new block.
    push bc
        ld b,a                  ; Put the number of this block in 'b'.
        ld a,(block_type)       ; Put the original block type in 'a'.
        cp b                    ; Compare them
    pop bc
    jp nz,+                     ; Nope, check above.
    
    ld (the_block),hl           ; Save this as (the_block).
    call set_destruct_1         ; Set it to be broken.
    
    +:ret



;==============================================================
; Set the block type/number of the block in 'hl' to 17.
;==============================================================
set_destruct_1:
    push bc
        ; Set which block should be set.
        ld a,(dest_level)       ; Find the level of destruction we're at.
        cp 10
        jp nz,+
        ld a,17                 ; First level. Block 17.
        jp ++ 
        
        +:cp 20
        jp nz,+
        ld a,0                  ; On the second run through, so kill the
        ld (block_multi),a      ; block multiplier count.
        ld a,18                 ; Second level. Block 18.
        jp ++ 
        
        +:cp 30
        jp nz,+
        ld a,19                 ; Third level. Block 19.
        jp ++
        +:ld a,0                ; Last level. Remove the block.
        ld (dest_level),a       ; This is the last time, so clear it.
        
        ++:ld b,a               ; Store it in 'b'.
        
        ; Set the top two blocks.
        ld a,l
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        push ix
        pop ix
        ld a,b
        out ($be),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        ld a,b
        push ix
        pop ix
        out ($be),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        
        ; Set the bottom two blocks.
        ld a,l
        add a,64
        call c,increment_h
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,b
        push ix
        pop ix
        out ($be),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        ld a,b
        push ix
        pop ix
        out ($be),a
        ld a,0
        push ix
        pop ix
        out ($be),a
    pop bc
    
    ; Increase their score by one.
    push af
        ld a,(dest_level)           ; Find the level of destruction we're at.
        cp 10                       ; Only award points on the first destruction run.
        jp nz,+
        
        call update_players_score   ; Increase their score by 1.
        
        ; Keep track of how many blocks have been destroyed in this turn.
        ld a,(block_multi)          ; Get the score multiplier.
        inc a                       ; Increase it and save.
        ld (block_multi),a      
        cp 4                        ; Give them an extra point for destroying 4 blocks at once.
        call z,update_players_score
        cp 8                        ; Give them another extra point for destroying 8 blocks at once.
        call z,update_players_score ; They get one here and at 4, so that's 2 extra points for 8 blocks.
        cp 16                       ; Give them two extra points for destroying 16 blocks at once.
        call z,update_players_score ; With the 1 at four and another at 8, they get a total of
        call z,update_players_score ; 4 extra points for destroying 16 blocks at once.
        
        call show_score_ingame      ; Update the display to show the score.
    +:pop af
    
    ld a,1                          ; So when we return, the zero flag will be set.
    cp 1                            ; It jumps on NZ when returning and we don't want to.
    
    ret



;==============================================================
; Goes to the address at 'hl' (in VRAM) and returns with the
; contents of that address in 'a'.
;==============================================================
find_block_number:
    ld a,l
    out ($bf),a
    ld a,h                      ; Read only, so no need to OR it.
    out ($bf),a
    push ix
    pop ix
    in a,($be)                  ; Store the contents in 'a'.
    ret



;==============================================================
; Does exactly what it says on the tin.
;==============================================================
decrement_c_twice:
    dec c
    dec c
    ret



;==============================================================
; Used when finding the block the player is currently occupying.
; When a subtraction on 'l' of a 2 byte address/number ('hl')
; loops around, it means that 'h' needs to be decremented too.
;==============================================================
decrement_h:
    push af
        ld a,h
        cp $38              ; If we're back at the start, we need to go back near the end
        jp nz,+             ; as it skips one.
        ld h,$3e
        jp ++
        +:dec h             ; If it's anything other than $38, decrement 'h'.
    ++:pop af
    ret



;==============================================================
; Used when finding the block the player is currently occupying.
; When an addition on 'l' of a 2 byte address/number ('hl')
; loops around, it means that 'h' needs to be incremented too.
;==============================================================
increment_h:
    push af
        ld a,h
        cp $3e              ; If we're at the end, we need to go back to the start.
        jp nz,+
        ld h,$38
        jp ++
        +:inc h             ; If it's anything other than $3e, decrement 'h'.
    ++:pop af
    ret



;==============================================================
; Increments the double press counter (dir_count), which is
; used to track double key presses for moving up a layer.
;==============================================================
double_press_counter_thing:
    push af
        ld a,(dir_flag)     ; Only bother doing it if (dir_flag) is set.
        cp 0
        jp z,++             ; Not set, bail.
        
        ld a,(dir_count)    ; Increment the counter by 1.
        inc a
        cp 32               ; If it gets too high, kill it.
        jp nz,+
        ld a,0
        ld (dir_flag),a
        +:ld (dir_count),a
    ++:pop af
    ret



;==============================================================
; If the key has been let of, update the (dir_flag).
;==============================================================
double_press_counter_thing_two:
    push af
        ld a,(dir_flag)     ; Is (dir_flag) set for left?
        cp 1
        jp z,+              ; Yep.
        
        cp 3                ; Is it set for right?
        jp z,++             ; Yep.
        jp ++++++           ; Not set at all.
        
        +:in a,($dc)        ; Read from controller port.
        cp %11111011        ; Is P1 "left" being pressed?
        jp nz,+++
        jp ++++++
        
        ++:in a,($dc)       ; Read from controller port.
        cp %11110111        ; Is P1 "right" being pressed?
        jp nz,++++
        jp ++++++
        
        +++:ld a,2
        jp +++++
        ++++:ld a,4
        +++++:ld (dir_flag),a
    ++++++:pop af
    ret



;==============================================================
; Loads the correct data for the level the player is on.
;==============================================================
load_level_data:
    ld a,(level)
    cp 1                        ; Level 1.
    jp nz,+
    ld hl,level_01
    ld a,0                      ; Normal terrain.
    ld (terrain),a
    ld a,:level_01              ; Find the slot/page the tile map data is in.
    ret
    +:cp 2                      ; Level 2.
    jp nz,+
    ld hl,level_02
    ld a,0                      ; Normal terrain.
    ld (terrain),a
    ld a,:level_02
    ret
    +:cp 3                      ; ...
    jp nz,+
    ld hl,level_03
    ld a,1                      ; Ice terrain.
    ld (terrain),a
    ld a,:level_03
    ret
    +:cp 4                      ; You get the idea by now.
    jp nz,+
    ld hl,level_04
    ld a,1                      ; Ice terrain.
    ld (terrain),a
    ld a,:level_04
    ret
    +:cp 5
    jp nz,+
    ld hl,level_05
    ld a,0                      ; Normal terrain.
    ld (terrain),a
    ld a,:level_05
    ret
    +:cp 6
    jp nz,+
    ld hl,level_06
    ld a,2                      ; Desert terrain.
    ld (terrain),a
    ld a,:level_06
    ret
    +:cp 7
    jp nz,+
    ld hl,level_07
    ld a,2                      ; Desert terrain.
    ld (terrain),a
    ld a,:level_07
    ret
;    +:cp 8                      ; Levels eight through ten have been removed for this version.
;    jp nz,+
;    ld hl,$8000                 ; The data is mapped to $8000, so look there.
;    ld a,2                      ; Desert terrain.
;    ld (terrain),a
;    ld a,:level_08
;    ret
;    +:cp 9
;    jp nz,+
;    ld hl,$8000                 ; The data is mapped to $8000, so look there.
;    ld a,1                      ; Ice terrain.
;    ld (terrain),a
;    ld a,:level_09
;    ret
;    +:cp 10                     ; This version has just the ten levels.
;    jp nz,+
;    ld hl,$8000                 ; The data is mapped to $8000, so look there.
;    ld a,0                      ; Normal terrain.
;    ld (terrain),a
;    ld a,:level_10
;    ret
    +:ld hl,level_01            ; Something went wrong if they get here... Load
    ld a,0                      ; Normal terrain.
    ld (terrain),a
    ld a,:level_01
    ret                         ; the data for level 1.



;==============================================================
; Loads the correct palette data for the level.
;==============================================================
load_palette_type:
    ld a,(terrain)
    cp 1
    jp nz,+
    ld hl,palette_data_ice      ; Load the ice palette.
    ret
    +:cp 2
    jp nz,+
    ld hl,palette_data_desert   ; Load the desert palette.
    ret
    +:ld hl,palette_data        ; Load the normal palette.
    ret



;==============================================================
; Does all the stuff when a level ends.
;==============================================================
level_ending:
    ; Kill the sprites.
    ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    ld a,208
    out ($be),a
    
    
    
    ; Clear the tile map in a sweeping-down motion.
    +:ld a,0
    ld hl,$37fe                 ; The base address - start of the tile-map. It is ORed with $40 later.
    
    -:
    call WaitForVBlankNoInt     ; Wait for 5 vblanks, so it's not too fast to see.
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    
    cp 28                       ; Are we upto 28?
    jp z,++                     ; If so, we're done. Skip to the end.
    
    push af
        ld a,0
        ld b,a
        --:ld a,b
        cp 32
        jp z,+
        
        ld a,l                  ; Draw the block every two bytes, not every byte.
        add a,2
        call c,increment_h
        ld l,a
        
        out ($bf),a             ; Draw the block.
        ld a,h
        or $40
        out ($bf),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        
        inc b                   ; Increment the counter and loop.
        jp --
    +:pop af
    
    inc a                       ; Increment 'a' and restart the outter loop.
    jp -
    
    
    
    ; Scroll the display back to 0.
    ++:ld a,(scroll_val)        ; Bring back 'a', which is the scroll counter.
    -:out ($bf),a               ; Output to VDP register 9
    push af
        ld a,$89
        out ($bf),a
    pop af
    inc a                       ; Increment.
    cp 225                      ; Is it 224 now?
    ld (scroll_val),a
    jp nz,-                     ; If not, repeat loop.
    
    ; Increase their score by 1000, a bonus for completing the level.
    ld a,(score_2)
    cp 9                        ; If the thousandths are 9, we need to reset
    jp nz,+                     ; them to 0 and increase the ten thousandths.
    ld a,0
    ld (score_2),a
    ld a,(score_1)
    inc a
    ld (score_1),a
    jp ++
    
  +:inc a
    ld (score_2),a
    call player_extra_an_try    ; Does their new score get them an extra try?
    
    
    
    ; Change the tile colours to blues, for the text.
 ++:ld a,$00
    out ($bf),a
    ld a,$c0
    out ($bf),a
    ld a,$00
    push ix
    pop ix
    out ($be),a
    ld a,$38
    push ix
    pop ix
    out ($be),a
    ld a,$30
    push ix
    pop ix
    out ($be),a
    
    ; For writing the text.
    ld a,$0e
    out ($bf),a
    ld a,$79
    out ($bf),a
    
    ; Write "LEVEL x COMPLETE!".
    ld hl,str_level_tile        ; Load the string.
    ld b,11                     ; How many bytes to write (length of string).
    ld c,$be                    ; Port to write to.
	otir                        ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    ; Point to the right place in VRAM to write the level number.
    ld a,$1a
    out ($bf),a
    ld a,$79
    out ($bf),a
    
    ; If it's level ten, we need to draw a "1" and a "0" instead of the level value.
    ld a,(level)
    cp 10
    jp nz,+
    ld a,35                     ; "1"
    out ($be),a
    push ix
    pop ix
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ; The level is not ten, so just write out the contents of (level).
    +:add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ; Continue writing the text.
    ld hl,str_complete_tile     ; Load the string.
    ld b,19                     ; How many bytes to write (length of string).
    ld c,$be                    ; Port to write to.
	otir                        ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    
    
    ; Show "SCORE".
    ld a,$92                    ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_score_tile        ; Load the string.
    ld b,9                      ; How many bytes to write (length of string).
    ld c,$be                    ; Port to write to.
	otir                        ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    ; Show "DEPTH".
    ld a,$d2
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_depth_tile
    ld b,9
    ld c,$be
	otir
    
    ; Show "MILK".
    ld a,$12
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld hl,str_milk_tile
    ld b,7
    ld c,$be
	otir
    
    ; Show full milk read-out.
    ld a,$26
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld hl,str_milk_full_tile
    ld b,7
    ld c,$be
	otir
    
    
    
    call level_ending_show_score        ; Show the read-outs.
    call level_ending_show_depth        ; 
    call level_ending_show_milk         ; 
    
    ; A short pause.
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 128
    jp nz,-
    
    call depth_to_score                 ; Convert the depth to the player's score.
    call milk_to_score                  ; Convert the player's remaining milk to score.
    
    
    
    ; A short pause.
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 64
    jp nz,-
    
    ; Let the player know they can press start to continue.
    ld a,$14
    out ($bf),a
    ld a,$7d
    out ($bf),a
    ld hl,str_start_cont_tile
    ld b,23
    ld c,$be
	otir
    
    ; Wait for user to press start, then load the next level.
    -:in a,($dc)                        ; Read from controller port.
    cp %11101111                        ; If the start button is pressed, start the game.
    jp z,+
    jp -
    
    ; Check if it was the last level.
    +:ld a,(level)
    cp 7
    jp z,game_completed    
    
    ; Nope, more levels to come. Increase the level counter.
    ld a,(level)
    inc a
    ld (level),a
    
    jp start_level                      ; Start the next level.



;==============================================================
; This bit goes through the depth, decreasing it and increasing
; the score. One point for every ten metres.
;==============================================================
depth_to_score:
    ; Check the units.
    ld a,(depth_4)
    cp 0                                ; If it's above zero, give them 1 point.  
    jp z,+
    ld a,0
    ld (depth_4),a
    call depth_to_score_part_2
    
    ; Loop through the tenths.
    -:+:call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    
    ld a,(depth_3)
    cp 0                                ; If it's 0, check the hundredths.
    jp z,+
    dec a                               ; It's not 0, so decrement it,
    ld (depth_3),a                      ; save it,
    call depth_to_score_part_2          ; and increase their score by 1.
    jp -                                ; Repeat.
    
    ; Loop through the hundredths.
    --:+:call WaitForVBlankNoInt
    ld a,(depth_2)
    cp 0                                ; If it's 0, check the thousandths.
    jp z,+
    dec a                               ; It's not 0, so decrement it,
    ld (depth_2),a                      ; save it,
    ld a,9                              ; Set the tenths to 9.
    ld (depth_3),a
    call depth_to_score_part_2          ; Increase their score by 1.
    jp -
    
    ; Loop through the thousandths.
    +:call WaitForVBlankNoInt
    ld a,(depth_1)
    cp 0                                ; If it's 0, the depth is empty.
    jp z,+
    dec a                               ; It's not 0, so decrement it,
    ld (depth_1),a                      ; save it,
    ld a,9                              ; Set the tenths to 9.
    ld (depth_2),a
    call depth_to_score_part_2          ; Increase their score by 1.
    jp --
    
    ; We emptied the depth.
    +:ret



; This calls the functions to update the score, show the score and show the depth.
depth_to_score_part_2:
    call update_players_score
    call level_ending_show_score
    call level_ending_show_depth
    ret



;==============================================================
; This bit goes through the remaining milk, decreasing it and
; increasing the score. One point for every bit of milk.
; The score is increased on the bit which shows the milk.
;==============================================================
milk_to_score:
    ld e,0                          ; If 'e' is set, skip vwaits.
    -:ld a,e                        ; Is it set?
    cp 0
    call z,WaitForVBlankNoInt
    
    in a,($dc)                      ; Allow the user to speed up this part
    cp %11101111                    ; if they press the start button.
    jp nz,+
    ld e,1
    
    +:ld a,(milk_2)                 ; Find how much milk they have left.
    dec a                           ; Decrease how much they have left.
    ld (milk_2),a                   ; Save it back to RAM.
    call level_ending_show_milk
    cp 0                            ; Check if they're out of milk.
    jp nz,-                         ; They've still got some left - continue.
    ld a,255                        ; If it's 0, change it to 255.
    ld (milk_2),a
    
    ; Getting here means that the second byte of the milk counter hit 0.
    ; Get the first byte of the milk counter. If that is also 0, then they are out of
    ; milk. If it is not zero, decremement it by 1, then continue.
    ld a,(milk_1)                   ; Get the first byte of the milk counter.
    cp 0                            ; If it is also zero, they die.
    jp z,+
    dec a                           ; If not, decrement it, save it, and continue.
    ld (milk_1),a                   ; Save.
    call level_ending_show_milk
    jp -
    
    +:ret



; This calls the functions to update the score, show the score and show the milk.
milk_to_score_part_2:
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call level_ending_show_score
    ret



;==============================================================
; Shows the score on the end of level screen.
;==============================================================
level_ending_show_score:
    ld a,$a4                    ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7a
    out ($bf),a
    
    ; The actual score readout.
    ld a,(score_1)              ; Ten thousandths of score.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(score_2)              ; Thousandths of score.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(score_3)              ; Hundredths of score.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(score_4)              ; Tenths of score.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(score_5)              ; Units of score.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ret



;==============================================================
; Shows the depth on the end of level screen.
;==============================================================
level_ending_show_depth:
    ld a,$e6                    ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7a
    out ($bf),a
    
    ; The actual depth readout.
    ld a,(depth_1)              ; Thousandths of depth.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(depth_2)              ; Hundredths of depth.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(depth_3)              ; Tenths of depth.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ld a,(depth_4)              ; Units of depth.
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ret



;==============================================================
; Shows the remaining milk on the end of level screen.
;==============================================================
level_ending_show_milk:
    ld a,(milk_2)       ; Find the units of the milk counter and
    and 15              ; find if it's a multiple of 16. We only need to update
    cp 0                ; if it is.
    jp nz,+++++         ; It's not. Nothing to update - skip.
    call milk_to_score_part_2   ; Increase the score.
    
    ; Find which of the four blocks we need to change.
    ld a,(milk_1)
    ld b,0              ; Set the default to 0.
    
    +:cp 3              ; If the bigger byte of the counter is 3, then
    jp nz,+             ; set 'b' to 0 (explained a bit further on).
    ld b,0
    jp ++
    
    +:cp 2              ; Is it 2?
    jp nz,+
    ld b,2
    call remove_dead_milk_show
    jp ++
    
    +:cp 1              ; Is it 1?
    jp nz,+
    ld b,4
    call remove_dead_milk_show
    jp ++
    
    +:cp 0              ; Is it 0?
    jp nz,++
    ld b,6
    call remove_dead_milk_show
    
    ; We add the contents of 'b' to the base address of the milk display. If we're to
    ; work on the first block, we add 0. If it's the second, we add 2, etc.
    ++:ld a,$26         ; $3ba6 is where the milk readout starts.
    add a,b             ; Choose which block we need.
    out ($bf),a
    ld a,$7b
    out ($bf),a
    
    ; Now that we're pointing to the right location in VRAM and are ready to write,
    ; we find what to change the block to.
    ld a,(milk_2)       ; Get the units again.
    ld b,27
    
    +++:cp 208          ; Now we check what value it is at. We only get here if it is
    jp nz,+++           ; a multiple of 16, so we have narrowed it down to 16 values.
    ld b,28             ; I could really do with a "switch" statement right about here. :)
    jp ++++
    
    +++:cp 192          ; Is it 192?
    jp nz,+++
    ld b,28
    jp ++++
    
    +++:cp 176          ; Is it 176?
    jp nz,+++
    ld b,29
    jp ++++
    
    +++:cp 160          ; Is it 160?
    jp nz,+++
    ld b,29
    jp ++++
    
    +++:cp 144          ; Is it 144?
    jp nz,+++
    ld b,30
    jp ++++
    
    +++:cp 128          ; Is it 128?
    jp nz,+++
    ld b,30
    jp ++++
    
    +++:cp 112          ; Is it 112?
    jp nz,+++
    ld b,31
    jp ++++
    
    +++:cp 96           ; Is it 96?
    jp nz,+++
    ld b,31
    jp ++++
    
    +++:cp 80           ; Is it 80?
    jp nz,+++
    ld b,32
    jp ++++
    
    +++:cp 64           ; Is it 2?
    jp nz,+++
    ld b,32
    jp ++++
    
    +++:cp 48           ; Is it 48?
    jp nz,+++
    ld b,33
    jp ++++
    
    +++:cp 32           ; Is it 32?
    jp nz,+++
    ld b,33
    jp ++++
    
    +++:cp 16           ; Is it 16?
    jp nz,+++
    ld b,0
    jp ++++
    
    +++:cp 0            ; Is it 0?
    jp nz,++++
    ld b,0
    
    ; Write out the new tile to VRAM.
    ++++:ld a,b
    push ix
    pop ix
    out ($be),a
    
    ; All done. Return.
    +++++:ret
    ret



; Removes the unused blocks at the start of the milk display.
remove_dead_milk_show:
    ld a,$26            ; $3ba6 is where the milk readout starts.
    add a,b             ; Choose which block we need.
    sub 6
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld a,0              ; Write a blank tile.
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ret





;==============================================================
; Decrements the amount of milk the player has left and kills
; the player if the run out.
;==============================================================
check_the_milk:
    ; Only do this every other time.
    ld a,(milk_flag)        ; Get the flag data.
    cp 2                    ; It is set or not?
    jp z,++                 ; If it is, skip to +.
    inc a                   ; Not set, so set it.
    ld (milk_flag),a        ; Save.
    
    push af
        ld a,(terrain)      ; Are we in the desert?
        cp 2
        jp nz,+
        ld a,(milk_flag)    ; Yup, this is the desert.
        inc a               ; In the desert the milk gets used faster, so
        ld (milk_flag),a    ; we skip one of the cycles.
    +:pop af
    ret                     ; Skip this time. Will update next time.
    
    ++:ld a,0               ; Unset the flag.
    ld (milk_flag),a        ; Save and continue.
    
    ; Update how much milk they have left.
    ld a,(milk_2)           ; Find how much milk they have left.
    dec a                   ; Decrease how much they have left.
    ld (milk_2),a           ; Save it back to RAM.
    cp 0                    ; Check if they're out of milk.
    jp nz,+                 ; They've still got some left - continue.
    ld a,255                ; If it's 0, change it to 255.
    ld (milk_2),a
    
    ; Getting here means that the second byte of the milk counter hit 0.
    ; Get the first byte of the milk counter. If that is also 0, then they are out of
    ; milk and die. If it is not zero, decremement it by 1, then continue.
    ld a,(milk_1)           ; Get the first byte of the milk counter.
    cp 0                    ; If it is also zero, they die.
    jp z,out_of_milk
    dec a                   ; If not, decrement it, save it, and continue.
    ld (milk_1),a           ; Save.
    
    ; Update the milk display thing so the player knows how much they have left.
    +:push bc
        ld a,(milk_2)       ; Find the units of the milk counter and
        and 15              ; find if it's a multiple of 16. We only need to update
        cp 0                ; if it is.
        jp nz,+++++         ; It's not. Nothing to update - skip.
        
        ; Find which of the four blocks we need to change.
        ld a,(milk_1)
        ld b,6              ; Set the default to 0.
        
        +:cp 3              ; If the bigger byte of the counter is 3, then
        jp nz,+             ; set 'b' to 0 (explained a bit further on).
        ld b,6
        jp ++
        
        +:cp 2              ; Is it 2?
        jp nz,+
        ld b,8
        jp ++
        
        +:cp 1              ; Is it 1?
        jp nz,+
        ld b,10
        jp ++
        
        +:cp 0              ; Is it 0?
        jp nz,++
        ld b,12
        
        ; We add the contents of 'b' to the base address of the milk display. If we're to
        ; work on the first block, we add 0. If it's the second, we add 2, etc.
        ++:ld a,$9d         ; $3f9d is where the milk readout starts.
        add a,b             ; Choose which block we need.
        out ($bf),a
        ld a,$7f
        out ($bf),a
        
        ; Now that we're pointing to the right location in VRAM and are ready to write,
        ; we find what to change the block to.
        ld a,(milk_2)       ; Get the units again.
        ld b,27
        
        +++:cp 208          ; Now we check what value it is at. We only get here if it is
        jp nz,+++           ; a multiple of 16, so we have narrowed it down to 16 values.
        ld b,28             ; I could really do with a "switch" statement right about here. :)
        jp ++++
        
        +++:cp 192          ; Is it 192?
        jp nz,+++
        ld b,28
        jp ++++
        
        +++:cp 176          ; Is it 176?
        jp nz,+++
        ld b,29
        jp ++++
        
        +++:cp 160          ; Is it 160?
        jp nz,+++
        ld b,29
        jp ++++
        
        +++:cp 144          ; Is it 144?
        jp nz,+++
        ld b,30
        jp ++++
        
        +++:cp 128          ; Is it 128?
        jp nz,+++
        ld b,30
        jp ++++
        
        +++:cp 112          ; Is it 112?
        jp nz,+++
        ld b,31
        jp ++++
        
        +++:cp 96           ; Is it 96?
        jp nz,+++
        ld b,31
        jp ++++
        
        +++:cp 80           ; Is it 80?
        jp nz,+++
        ld b,32
        jp ++++
        
        +++:cp 64           ; Is it 2?
        jp nz,+++
        ld b,32
        jp ++++
        
        +++:cp 48           ; Is it 48?
        jp nz,+++
        ld b,33
        jp ++++
        
        +++:cp 32           ; Is it 32?
        jp nz,+++
        ld b,33
        jp ++++
        
        +++:cp 16           ; Is it 16?
        jp nz,+++
        ld b,0
        jp ++++
        
        +++:cp 0            ; Is it 0?
        jp nz,++++
        ld b,0
        
        ; Write out the new tile to VRAM.
        ++++:ld a,b
        push ix
        pop ix
        out ($be),a
    +++++:pop bc
    
    ; All done. Return.
    ret



;==============================================================
; Collects the milk, updates the milk counter and removes it
; from view.
;==============================================================
collect_the_milk:
    ; Update the milk counter.
    push af
        ld a,(milk_1)       ; Get the larger of the milk counter bytes.
        add a,2             ; Add 2.
        cp 3                ; Make sure it doesn't go over 3.
        jp c,+
        ld a,3
        +:ld (milk_1),a     ; Save it.
        ld a,255            ; Max it out the other byte of the counter.
        ld (milk_2),a
        
        ; Refill the visual counter thing on screen.
        ; Find which of the four blocks we need to change.
        push bc
            ld a,(milk_1)   ; Find the block number from the larger counter.
            
            cp 0            ; Invert the numbers.
            jp nz,+         ; If (milk_1) is 0, then make 'b' equal 3.
            ld a,3
            jp ++
            
            +:cp 1          ; If (milk_1) is 1, then make 'b' equal 2.
            jp nz,+
            ld a,2
            jp ++
            
            +:cp 2          ; If (milk_1) is 2, then make 'b' equal 1.
            jp nz,+
            ld a,1
            jp ++
            
            +:cp 3          ; If (milk_1) is 3, then make 'b' equal 0.
            jp nz,++
            ld a,0
            
            ++:ld b,a
            -:ld a,b        ; Start the loop to go through all 4 blocks.
            cp 4            ; If it has looped around, end the loop.
            jp z,++
            
            ld a,$a3        ; $3fa3 is where the milk readout starts.
            ld c,b          ; Put 'b' in 'c', then double 'c', since we need to add
            sla c           ; a multiple of 2 to the address (everyone other one is
            add a,c         ; an X co-ord, and we only want to change tiles).
            
            out ($bf),a     ; Open VRAM to where we need to write,
            ld a,$7f
            out ($bf),a
            
            ld a,26         ; Put a full block there.
            push ix
            pop ix
            out ($be),a
            
            inc b           ; Increment the loop counter.
            jp -            ; Redo the loop.
        ++:pop bc
    pop af
        
    ; Remove the block from view.
    ; Get the address of the block into 'hl', then add 'b', which will be
    ; either 124 or 132, depending on whether the block is to the left or
    ; right of the char. If 'b' isn't either of those, then the target block
    ; is below us. If 'b' is 4, then it's upper left, minus 260.
    push hl
        call find_current_block
        ld hl,(the_block)       ; Find the memory location of the block the player is on.
        
        ld a,b                  ; If it's 4, we need to subtract a further 256 from the
        cp 4                    ; block address. We do this by decrementing 'h' an extra
        jp nz,+                 ; time, then subtracting 4 as normal.
        call decrement_h
        
        +:ld a,l
        sub b                   ; The block to the left is 'the_block' minus 4 bytes. Don't forget to go up a row.
        call c,decrement_h      ; If we went into minus numbers, decrement 'h'.
        ld l,a
        ld (the_block),hl
        call remove_the_block
    pop hl
    
    ; Put the address of the block below us back into 'hl'.
    call find_current_block
    
    ; Give them ten points for collecting a bottle of milk.
    ; Efficient code? What's that?
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call update_players_score
    call show_score_ingame      ; Update the display.
    
    ret



;==============================================================
; Checks if there are any milk bottles on screen. If there are,
; do they need to drop down?
;==============================================================
check_milk_fall:
    push af
    push bc
    push hl
        ld hl,$380e             ; Start of the tile table.
        -:push hl
            --:ld a,l           ; Look at the address in VRAM.
            out ($bf),a
            ld a,h
            out ($bf),a
        push ix
        pop ix
            in a,($be)          ; Read the tile number.
            
            cp milk_block       ; Is it milk?
            call z,found_milk   ; If so, break;
            
            ld b,0              ; Nope, go to the next tile in VRAM.
            ld c,4
            add hl,bc
            
            ld a,l              ; Check if we're at the end of the line.
            cp $32
            jp z,+
            cp $72
            jp z,+
            cp $b2
            jp z,+
            cp $f2
            jp z,+
            jp --               ; Repeat the loop
            
        +:pop hl
        
        ld b,0                  ; Add 64 to 'hl', so we start the next line.
        ld c,64
        add hl,bc
        
        ; Are we at the end of the tile table? $3e0e
        ld a,l
        cp $0e
        jp nz,-
        ld a,h
        cp $3f
        jp nz,-
    +:pop hl
    pop bc
    pop af
    
    ret



;==============================================================
; Because of the way the scroller works, we can't just check
; the block below the milk bottle - because if it's at the
; bottom of the screen, the tile below it is NOT the next one
; to be shown.
;
; We can find out if the milk bottle is on the last line by
; checking the address of it against the scroll_val. For
; instance; if scroll_val is 0, then the last line starts at
; the VRAM address $3d80. When the player falls down a layer,
; scroll_val becomes 16 - the last line becomes $3e00, etc.
;
; To save time and CPU power, we only check the larger byte of
; the address, so we're checking the last line and the line
; above it. Not a major problem.
;
; Anyhoo; if the milk bottle is on one of the last two lines,
; then we don't drop it. We will wait until they have moved up
; the screen and the blocks below it are known.
;==============================================================
found_milk:
    ld a,(scroll_val)
    cp $00                      ; Row one?
    jp nz,+
 --:ld a,h                      ; Check the larger byte of the address.
    cp $3d                      ; If it's $3d don't fall.
    call nz,check_below_milk    ; Otherwise, they can fall.
    ret                         ; All done - tea time.
    
  +:cp $10                      ; Row two?
    jp nz,+
  -:ld a,h
    cp $3e
    call nz,check_below_milk
    ret
    
  +:cp $20                      ; Row three?
    jp z,-                      ; The checking is the same as the previous row's.
    
  +:cp $30                      ; Row four?
    jp nz,+
  -:ld a,h
    cp $38
    call nz,check_below_milk
    ret 
    
  +:cp $40                      ; Row five?
    jp z,-
    
  +:cp $50                      ; Row six?
    jp nz,+
  -:ld a,h
    cp $39
    call nz,check_below_milk
    ret 
    
  +:cp $60                      ; Row seven?
    jp z,-
    
  +:cp $70                      ; Row eight?
    jp nz,+
  -:ld a,h
    cp $3a
    call nz,check_below_milk
    ret 
    
  +:cp $80                      ; Row nine?
    jp z,-
    
  +:cp $90                      ; Row ten?
    jp nz,+
  -:ld a,h
    cp $3b
    call nz,check_below_milk
    ret 
    
  +:cp $a0                      ; Row eleven?
    jp z,-
    
  +:cp $b0                      ; Row twelve?
    jp nz,+
  -:ld a,h
    cp $3c
    call nz,check_below_milk
    ret 
    
  +:cp $c0                      ; Row thirteen?
    jp z,--
    ret



;==============================================================
; The VRAM address in 'hl' points to a milk block. We need to
; check the block below it ('hl' + 64) to see if it's empty. If
; it's empty, move the milk block down until it hits ground.
;==============================================================
check_below_milk:
    push hl
        ld b,0                  ; Add 128 to 'hl', so we find the block below the milk.
        ld c,128
        add hl,bc
        
        ld a,l                  ; Look at the address in VRAM.
        out ($bf),a
        ld a,h
        out ($bf),a
        push ix
        pop ix
        in a,($be)              ; Read the tile number.
        
        cp 0
        call z,drop_milk_down   ; If it's empty, drop the block.
    pop hl
    ret



;==============================================================
; Drops the milk down a row. 'hl' is where to put it.
;==============================================================
drop_milk_down:
    ld a,l                      ; Hello Mr VRAM.
    out ($bf),a
    ld a,h
    or $40                      ; Writing to VRAM, so OR with $40.
    out ($bf),a
    
    ld a,milk_block             ; The first two tiles (top).
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,milk_block+1
    push ix
    pop ix
    out ($be),a
    
    push hl
        ld b,0                  ; Add 64 to 'hl', to get second tile half.
        ld c,64
        add hl,bc
        
        ld a,l                  ; Hello again Mr VRAM.
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,milk_block+2       ; The last two tiles (bottom).
        push ix
        pop ix
        out ($be),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        ld a,milk_block+3
        push ix
        pop ix
        out ($be),a
    pop hl
    
    ; Remove the old milk. It's at 'hl' minus 64.
    push hl
        ld a,l
        sub 128
        call c,decrement_h
        ld l,a
        
        ld a,l
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,0                  ; Remove the top two blocks.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,l                  
        sub 192                 ; We remove 192 instead of 64 so that it loops around, since the max is 255.
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,0                  ; Remove the bottom two blocks.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
    pop hl
    
    ; Call the function again to see if the milk can fall further.
    call found_milk
    
    ret



;==============================================================
; Takes care of what happens when the player runs out of milk.
;==============================================================
out_of_milk:
    ; Set all of the srpite's tiles to 0.
    ld hl,$7f7f             ; The base address of the sprite table. It is ORed with $40 later.
    ld a,0
    ld b,a
    -:ld a,b
    cp 127
    jp z,+
    
    ld a,l                  ; Set 'hl' to point to the next byte.
    add a,2
    ld l,a
    
    out ($bf),a             ; Write a 0 to the VRAM.
    ld a,h
    or $40
    out ($bf),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    inc b                   ; Increment the counter and loop.
    jp -
    
    ; Zero the entire sprite table.
    +:ld hl,$3fff           ; The base address of the sprite table. It is ORed with $40 later.
    ld a,0
    ld b,a
    -:ld a,b
    cp 255
    jp z,+
    
    ld a,l                  ; Set 'hl' to point to the next byte.
    add a,1
    ld l,a
    
    out ($bf),a             ; Write a 0 to the VRAM.
    ld a,h
    or $40
    out ($bf),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    inc b                   ; Increment the counter and loop.
    jp -

    
    
    ; Replace all of the blocks in a down-sweeping pattern, with white blocks.
    +:ld a,0
    ld hl,$37fe             ; The base address - start of the tile-map. It is ORed with $40 later.
    
    -:
    call WaitForVBlankNoInt ; Wait for 5 vblanks, so it's not too fast to see.
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    call WaitForVBlankNoInt
    
    cp 28                   ; Are we upto 28?
    jp z,++                 ; If so, we're done. Skip to the end.
    
    push af
        ld a,0
        ld b,a
        --:ld a,b
        cp 32
        jp z,+
        
        ld a,l              ; Draw the block every two bytes, not every byte.
        add a,2
        call c,increment_h
        ld l,a
        
        out ($bf),a         ; Draw the block.
        ld a,h
        or $40
        out ($bf),a
        ld a,0
        push ix
        pop ix
        out ($be),a
        
        inc b               ; Increment the counter and loop.
        jp --
    +:pop af
    
    inc a                   ; Increment 'a' and restart the outter loop.
    jp -
    
    
    
    ; Scroll the display back to 0.
    ++:ld a,(scroll_val)     ; Bring back 'a', which is the scroll counter.
    -:out ($bf),a             ; Output to VDP register 9
    push af
        ld a,$89
        out ($bf),a
    pop af
    inc a                   ; Increment.
    cp 225                  ; Is it 224 now?
    ld (scroll_val),a
    jp nz,-                 ; If not, repeat loop.
    
    
        
    ; Remove one life.
    ld a,(lives)
    dec a
    ld (lives),a
    
    
    
    ; Change the background colours to a blue, for the text.
    ld a,$00
    out ($bf),a
    ld a,$c0
    out ($bf),a
    ld a,$00
    push ix
    pop ix
    out ($be),a
    ld a,$38
    push ix
    pop ix
    out ($be),a
    ld a,$30
    push ix
    pop ix
    out ($be),a
    
    ; Write "OUT OF MILK!".
    ld a,$14
    out ($bf),a
    ld a,$79
    out ($bf),a
    ld hl,str_out_of_milk_tile  ; Load the string.
    ld b,23                     ; How many bytes to write (length of string).
    ld c,$be                    ; Port to write to.
	otir                        ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    
    
    ; Check how many lives they have left. If they have zero, show the "GAME OVER!"
    ; screen. Otherwise, give them the normal menu.
    ld a,(lives)
    cp 0
    jp nz,+
    
    ; Write "GAME OVER!".
    ld a,$16
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_game_over_tile
    ld b,19
    ld c,$be
	otir
    
    ; Show "SCORE".
    ld a,$92                ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_score_tile    ; Load the string.
    ld b,9                  ; How many bytes to write (length of string).
    ld c,$be                ; Port to write to.
	otir                    ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    ; Show their score.
    call level_ending_show_score
    jp ++
    
    
    
    ; Write "YOU HAVE".
    +:ld a,$0a
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_you_have_tile
    ld b,15
    ld c,$be
	otir
    
    ; Show how many lives they have left.
    ld a,$1c
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld a,(lives)
    add a,34
    push ix
    pop ix
    out ($be),a
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ; Continue writing the text. " TRIES LEFT!"
    ld hl,str_tries_left_tile
    ld b,23
    ld c,$be
	otir
    
    ; Show "DEPTH". For showing how far they got that time.
    ld a,$d2
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_depth_tile
    ld b,9
    ld c,$be
	otir
    call level_ending_show_depth
    
    ; Show "RETRY".
    ld a,$9e                ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld hl,str_retry_tile    ; Load the string.
    ld b,9                  ; How many bytes to write (length of string).
    ld c,$be                ; Port to write to.
	otir                    ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    ; Show "QUIT".
    ++:ld a,$1e
    out ($bf),a
    ld a,$7c
    out ($bf),a
    ld hl,str_quit_tile
    ld b,7
    ld c,$be
	otir
    
    ; Show "CREDITS".
    ld a,$9e
    out ($bf),a
    ld a,$7c
    out ($bf),a
    ld hl,str_credits_tile
    ld b,13
    ld c,$be
	otir
    
    
    
    ; A short pause.
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 64
    jp nz,-



;==============================================================
; Accepts user input, allowing them to move the sprite up and
; down the menu to choose an option.
;==============================================================
game_over_menu:
    ; Setup the start sprite info and stuff.
    ld a,104
    ld (char_x),a
    ld a,80
    ld (char_tile),a
    
    ; Don't allow them to restart if they have zero tries left.
    ld a,(lives)
    cp 0
    jp nz,+
    ld a,128
    jp ++
    +:ld a,112
    ++:ld (char_y),a
    
    ; Show the sprite.
    ld a,$00                    ; Set VRAM to point to the sprite Y table. $3f00, but we
    out ($bf),a                 ; need to set bit 6 of the second byte to 1, so $3f becomes
    ld a,$7f                    ; $7f.
    out ($bf),a
    ld a,(char_y)               ; Copy Y co-ordinate to VRAM.
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    add a,8
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    
    ld a,$80                    ; Set VRAM to point to the sprite X table.
    out ($bf),a
    ld a,$7f
    out ($bf),a
    ld a,(char_x)               ; Copy the X co-ordinate to VRAM.
    push ix
    pop ix
    out ($be),a
    ld a,(char_tile)            ; Copy the tile number.
    push ix
    pop ix
    out ($be),a
    ld a,(char_x)               ; Second part of the four.
    add a,8
    push ix
    pop ix
    out ($be),a
    ld a,(char_tile)
    add a,1
    push ix
    pop ix
    out ($be),a
    ld a,(char_x)               ; Third part of the four.
    push ix
    pop ix
    out ($be),a
    ld a,(char_tile)
    add a,2
    push ix
    pop ix
    out ($be),a
    ld a,(char_x)               ; Fourth part of the four.
    add a,8
    push ix
    pop ix
    out ($be),a
    ld a,(char_tile)
    add a,3
    push ix
    pop ix
    out ($be),a
    
    ; Wait for user to press start, then load the next level.
    ----:in a,($dc)             ; Read from controller port.
    cp %11101111                ; If the start button is pressed, see what they chose.
    jp z,game_over_menu_choose
    cp %11111101                ; Pressed down?.
    call z,game_over_menu_down
    cp %11111110                ; Pressed up?.
    call z,game_over_menu_up
    jp ----



; And now for something completely different:
;
; ,     ,_                                                      
; |`\    `;;,            ,;;'                                   
; |  `\    \ '.        .'.'                                     
; |    `\   \  '-""""-' /                                       
; `.     `\ /          |`                                       
;   `>    /;   _     _ \                                        
;    /   / |       .    ;                                       
;   <  (`";\ ()   ~~~  (/_                                      
;    ';;\  `,     __ _.-'` )                                    
;      >;\          `   _.'                                     
;      `;;\          \-'                                        
;        ;/           \ _                                       
;        |   ,"".     .` \                                      
;        |      _|   '   /                                      
;         ;    /")     .;-,                                     
;    jgs   \    /  __   .-'                                     
;           \,_/-"`  `-'                                        
;
; (Picture stolen from www.asciiartfarts.com)
;
; We now return you to your regularly scheduled programme...



;==============================================================
; Sees what option the player chose and carries it out.
;==============================================================
game_over_menu_choose:
    ld a,(char_y)
    cp 112
    jp z,start_level            ; Restart the level.
    
    cp 128
    jp nz,+
    ld a,0                      ; Remove the sprites.
    ld a,$80
    out ($bf),a
    ld a,$7f
    out ($bf),a
    ld hl,str_null_tile
    ld b,8
    ld c,$be
	otir
    jp main_title               ; Return to the title screen.
    
    +:cp 144
    jp z,show_credits           ; Show the game credits.
    jp game_over_menu           ; Should never get here.



;==============================================================
; Changes the option when the down button is pressed.
;==============================================================
game_over_menu_down:
    ld a,(char_y)
    cp 112                      ; Top option to middle.
    jp nz,+
    ld a,128
    ld (char_y),a
    jp +++
    
    +:cp 128                    ; Middle option to bottom.
    jp nz,+
    ld a,144
    ld (char_y),a
    jp +++
    
    +:ld a,(lives)              ; Bottom option to top.
    cp 0
    jp nz,+                     ; If they have no lives left,
    ld a,128                    ; give them the middle option.
    jp ++
    +:ld a,112
    ++:ld (char_y),a
    
    ; Updated the sprite, now wait a little.
    +++:call game_over_menu_sprites
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 64
    jp nz,-
    
    ; Go back home.
    ret



;==============================================================
; Changes the option when the up button is pressed.
;==============================================================
game_over_menu_up:
    ld a,(char_y)
    cp 112                      ; Top option to bottom.
    jp nz,+
    ld a,144
    ld (char_y),a
    jp ++++
    
    +:cp 128                    ; Middle option to top.
    jp nz,+++
    ld a,(lives)                ; Find how many lives they have.
    cp 0
    jp nz,+                     ; If they have no lives left,
    ld a,144                    ; give them the bottom option.
    jp ++
    +:ld a,112
    ++:ld (char_y),a
    jp ++++
    
    +++:cp 144                  ; Bottom option to middle.
    ld a,128
    ld (char_y),a
    
    ; Updated the sprite, now wait a little.
    ++++:call game_over_menu_sprites
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 64
    jp nz,-
    
    ; Go back home.
    ret



;==============================================================
; Updates the sprites' info.
;==============================================================
game_over_menu_sprites:
    ld a,$00                    ; Set VRAM to point to the sprite Y table. $3f00, but we
    out ($bf),a                 ; need to set bit 6 of the second byte to 1, so $3f becomes
    ld a,$7f                    ; $7f.
    out ($bf),a
    ld a,(char_y)               ; Copy Y co-ordinate to VRAM.
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    add a,8
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    ld a,208                    ; Last sprite.
    push ix
    pop ix
    out ($be),a
    
    ret



;==============================================================
; Updates the variable keeping track of how deep the player is
; and updates the screen to show the depth to the player.
; The depth value is stored in decimal, over 4 bytes. This is
; explained at the top with the ".define"s. It makes displaying
; it to the use much less CPU intensive, as it requires no hex
; to dec calculations and such.
;==============================================================
update_players_depth:
    push af
        ; Units.
        ld a,(depth_4)          ; Get the current depth (units).
        inc a                   ; Add 1.
        ld (depth_4),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around.
        jp nz,+                 ; Nope - Update display.
        ld a,0
        ld (depth_4),a          ; Reset the units to one and update the tens.
        
        ; Tens.
        ld a,(depth_3)          ; Get the current depth (tens).
        inc a                   ; Add 1.
        ld (depth_3),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around again.
        jp nz,+                 ; Update the display.
        ld a,0
        ld (depth_3),a          ; Reset the tens to one and update the hundreds.
        
        ; Hundreds.
        ld a,(depth_2)          ; Get the current depth (hundreds).
        inc a                   ; Add 1.
        ld (depth_2),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around again.
        jp nz,+                 ; Move along. Nothing to see here. Update display.
        ld a,0
        ld (depth_2),a          ; Reset the hundreds to one and update the thousands.
        
        ; Thousands.
        ld a,(depth_1)          ; Get the depth value (thousands).
        inc a                   ; Increment it.
        ld (depth_1),a          ; Save.
        
        ; Update the depth counter on the screen, so the player knows how deep they are.
        +:ld a,$9a              ; Set VRAM to point to the sprite X table.
        out ($bf),a
        ld a,$7f
        out ($bf),a
        
        ; The actual depth readout.
        ld a,216                ; Thousandths of depth.
        push ix
        pop ix
        out ($be),a
        ld a,(depth_1)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,224                ; Hundredths of depth.
        push ix
        pop ix
        out ($be),a
        ld a,(depth_2)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,232                ; Tenths of depth.
        push ix
        pop ix
        out ($be),a
        ld a,(depth_3)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,240                ; Units of depth.
        push ix
        pop ix
        out ($be),a
        ld a,(depth_4)
        add a,34
        push ix
        pop ix
        out ($be),a
    pop af
    
    ; All done! Return.
    ret



;==============================================================
; Updates the variable keeping track of the player's score.
; The depth value is stored in decimal, over 5 bytes. This is
; explained at the top with the ".define"s.
;==============================================================
update_players_score:
    push af
        ; Units.
        ld a,(score_5)          ; Get the current score (units).
        inc a                   ; Add 1.
        ld (score_5),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around.
        jp nz,+                 ; Nope - Update display.
        ld a,0
        ld (score_5),a          ; Reset the units to one and update the tens.
        
        ; Tenths.
        ld a,(score_4)          ; Get the current score (tenths).
        inc a                   ; Add 1.
        ld (score_4),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around.
        jp nz,+                 ; Nope - Update display.
        ld a,0
        ld (score_4),a          ; Reset the units to one and update the tens.
        
        ; Hundredths.
        ld a,(score_3)          ; Get the current score (hundredths).
        inc a                   ; Add 1.
        ld (score_3),a          ; Save it back to RAM.
        cp 10                   ; Check if they've looped around again.
        jp nz,+                 ; Update the display.
        ld a,0
        ld (score_3),a          ; Reset the tens to one and update the hundreds.
        
        ; Thousandths.
        ld a,(score_2)          ; Get the current score (thousandths).
        inc a                   ; Add 1.
        ld (score_2),a          ; Save it back to RAM.
        call player_extra_an_try
        ld a,(score_2)
        cp 10                   ; Check if they've looped around again.
        jp nz,+                 ; Move along. Nothing to see here. Update display.
        ld a,0
        ld (score_2),a          ; Reset the hundreds to one and update the thousands.
        
        ; Ten thousandths.
        ld a,(score_1)          ; Get the score value (ten thousandths).
        inc a                   ; Increment it.
        ld (score_1),a          ; Save.
        
        
    +:pop af
    
    ; All done! Return.
    ret



;==============================================================
; The player gets an extra try/life for every 2000 points they
; get, so check if they've hit a mutliple of 2000. By that I
; mean, check if the Thousandths value is "10", "2", "4", "6" or
; "8".
;==============================================================   
player_extra_an_try:
    ld a,(score_2)
    cp 2
    call z,give_player_extra_try
    cp 4
    call z,give_player_extra_try
    cp 6
    call z,give_player_extra_try
    cp 8
    call z,give_player_extra_try
    cp 10
    call z,give_player_extra_try
    
    ; If this is in-game, update the display which shows how many
    ; tries they have left.
    ld a,(level_done)
    cp 1
    ret z                       ; This is from the end of level screen, return.
    
    ; Update the in-game display.
    push hl
        ld hl,$3fc9             ; The byte in the sprite table which contains
        call VRAMToHL           ; which tile to display for "tries".
        ld a,(lives)
        add a,34
        push ix
        pop ix
        out ($be),a             ; Update it.
    pop hl
    ret



;==============================================================
; Gives the player an extra try/life.
;==============================================================   
give_player_extra_try:
    push af
        ld a,(lives)
        cp 9                    ; No more than nine lives.
        jp z,+
        inc a
        ld (lives),a
  +:pop af
    ret



;==============================================================
; Updates the in-game score display.
;==============================================================   
show_score_ingame:
    ld a,$b4                  ; Set VRAM to point to the sprite X table.
    out ($bf),a
    ld a,$7f
    out ($bf),a
    
    ; The actual score readout.
    ld a,212                    ; Ten thousandths of score.
    push ix
    pop ix
    out ($be),a
    ld a,(score_1)
    add a,34
    push ix
    pop ix
    out ($be),a
    
    ld a,220                    ; Thousandths of score.
    push ix
    pop ix
    out ($be),a
    ld a,(score_2)
    add a,34
    push ix
    pop ix
    out ($be),a
    
    ld a,228                    ; Hundredths of score.
    push ix
    pop ix
    out ($be),a
    ld a,(score_3)
    add a,34
    push ix
    pop ix
    out ($be),a
    
    ld a,236                    ; Tenths of score.
    push ix
    pop ix
    out ($be),a
    ld a,(score_4)
    add a,34
    push ix
    pop ix
    out ($be),a
    
    ld a,244                    ; Units of score.
    push ix
    pop ix
    out ($be),a
    ld a,(score_5)
    add a,34
    push ix
    pop ix
    out ($be),a
    
    ret


    
;==============================================================
; Draws all the non-changing sprites to the screen. Score, etc.
;==============================================================
draw_a_bunch_of_sprites_and_stuff:
    push af
        ; Set all of the Y positions of the sprites.
        ld a,$00                ; Set VRAM to point to the sprite Y table. $3f80, but we
        out ($bf),a             ; need to set bit 6 of the second byte to 1, so $3f becomes
        ld a,$7f                ; $7f.
        out ($bf),a 
        
        ld a,(char_y)           ; The player's character. Made of four srpites.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        add a,8
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,40                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the word "DEPTH".
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,64                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the word "MILK".
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,50                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the actual depth readout.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,74                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the milk readout.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,16                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the word "SCORE".
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,26                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the actual score.
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,88                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the word "TRIES".
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,98                 ; Copy Y co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a             ; For the number of tries the player has left.
        
        ld a,112               
        push ix
        pop ix
        out ($be),a             ; "LEVEL".
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        out ($be),a
        
        ld a,122
        push ix
        pop ix
        out ($be),a             ; The actual level readout.
        push ix
        pop ix
        out ($be),a             ; Levels > nine need two sprites - one for each number.
        
        ld a,208                ; Last sprite.
        push ix
        pop ix
        out ($be),a 
        
        
        
        ; Set all the X positions and the tiles to use for all of the sprites.
        ld a,$80                ; Set VRAM to point to the sprite X table.
        out ($bf),a
        ld a,$7f
        out ($bf),a   
        
        ; Player's character.
        ld a,(char_x)           ; Copy the X co-ordinate to VRAM.
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)        ; Copy the tile number.
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Second part of the four.
        add a,8
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,1
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Third part of the four.
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,2
        push ix
        pop ix
        out ($be),a
        ld a,(char_x)           ; Fourth part of the four.
        add a,8
        push ix
        pop ix
        out ($be),a
        ld a,(char_tile)
        add a,3
        push ix
        pop ix
        out ($be),a
        
        ; "DEPTH"
        ld a,212                ; "D" in "DEPTH".
        push ix
        pop ix
        out ($be),a
        ld a,47
        push ix
        pop ix
        out ($be),a
        
        ld a,220                ; "E" in "DEPTH".
        push ix
        pop ix
        out ($be),a
        ld a,48
        push ix
        pop ix
        out ($be),a
        
        ld a,228                ; "P" in "DEPTH".
        push ix
        pop ix
        out ($be),a
        ld a,58
        push ix
        pop ix
        out ($be),a
        
        ld a,236                ; "T" in "DEPTH".
        push ix
        pop ix
        out ($be),a
        ld a,61
        push ix
        pop ix
        out ($be),a
        
        ld a,244                ; "H" in "DEPTH".
        push ix
        pop ix
        out ($be),a
        ld a,51
        push ix
        pop ix
        out ($be),a
        
        ; "MILK"
        ld a,216                ; "M" in "MILK".
        push ix
        pop ix
        out ($be),a
        ld a,56
        push ix
        pop ix
        out ($be),a
        
        ld a,224                ; "I" in "MILK".
        push ix
        pop ix
        out ($be),a
        ld a,52
        push ix
        pop ix
        out ($be),a
        
        ld a,232                ; "L" in "MILK".
        push ix
        pop ix
        out ($be),a
        ld a,55
        push ix
        pop ix
        out ($be),a
        
        ld a,240                ; "K" in "MILK".
        push ix
        pop ix
        out ($be),a
        ld a,54
        push ix
        pop ix
        out ($be),a
        
        
        
        ; The actual depth readout.
        ld a,216                ; Thousands of depth.
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,224                ; Hundreds of depth.
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,232                ; Tens of depth.
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,240                ; Units of depth.
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        
        ; The milk readout.
        ld a,216
        push ix
        pop ix
        out ($be),a
        ld a,26
        push ix
        pop ix
        out ($be),a
        
        ld a,224                
        push ix
        pop ix
        out ($be),a
        ld a,26
        push ix
        pop ix
        out ($be),a
        
        ld a,232
        push ix
        pop ix
        out ($be),a
        ld a,26
        push ix
        pop ix
        out ($be),a
        
        ld a,240
        push ix
        pop ix
        out ($be),a
        ld a,26
        push ix
        pop ix
        out ($be),a
        
        ; "SCORE"
        ld a,212                ; "S" in "SCORE".
        push ix
        pop ix
        out ($be),a
        ld a,39
        push ix
        pop ix
        out ($be),a
        
        ld a,220                ; "C" in "SCORE".
        push ix
        pop ix
        out ($be),a
        ld a,46
        push ix
        pop ix
        out ($be),a
        
        ld a,228                ; "O" in "SCORE".
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,236                ; "R" in "SCORE".
        push ix
        pop ix
        out ($be),a
        ld a,60
        push ix
        pop ix
        out ($be),a
        
        ld a,244                ; "E" in "SCORE".
        push ix
        pop ix
        out ($be),a
        ld a,48
        push ix
        pop ix
        out ($be),a
        
        ; The actual score readout.
        ld a,212                ; Ten thousandths of score.
        push ix
        pop ix
        out ($be),a
        ld a,(score_1)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,220                ; Thousandths of score.
        push ix
        pop ix
        out ($be),a
        ld a,(score_2)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,228                ; Hundredths of score.
        push ix
        pop ix
        out ($be),a
        ld a,(score_3)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,236                ; Tenths of score.
        push ix
        pop ix
        out ($be),a
        ld a,(score_4)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ld a,244                ; Units of score.
        push ix
        pop ix
        out ($be),a
        ld a,(score_5)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ; "TRIES".
        ld a,212                ; "T" in "TRIES".
        push ix
        pop ix
        out ($be),a
        ld a,61
        push ix
        pop ix
        out ($be),a
        
        ld a,220                ; "R" in "TRIES".
        push ix
        pop ix
        out ($be),a
        ld a,60
        push ix
        pop ix
        out ($be),a
        
        ld a,228                ; "I" in "TRIES".
        push ix
        pop ix
        out ($be),a
        ld a,52
        push ix
        pop ix
        out ($be),a
        
        ld a,236                ; "E" in "TRIES".
        push ix
        pop ix
        out ($be),a
        ld a,48
        push ix
        pop ix
        out ($be),a
        
        ld a,244                ; "S" in "TRIES".
        push ix
        pop ix
        out ($be),a
        ld a,39
        push ix
        pop ix
        out ($be),a
        
        ; Number of tries the player has left.
        ld a,228
        push ix
        pop ix
        out ($be),a
        ld a,(lives)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        ; "LEVEL".
        ld a,212                ; "L" in "LEVEL".
        push ix
        pop ix
        out ($be),a
        ld a,55
        push ix
        pop ix
        out ($be),a
        
        ld a,220                ; "E" in "LEVEL".
        push ix
        pop ix
        out ($be),a
        ld a,48
        push ix
        pop ix
        out ($be),a
        
        ld a,228                ; "V" in "LEVEL".
        push ix
        pop ix
        out ($be),a
        ld a,63
        push ix
        pop ix
        out ($be),a
        
        ld a,236                ; "E" in "LEVEL".
        push ix
        pop ix
        out ($be),a
        ld a,48
        push ix
        pop ix
        out ($be),a
        
        ld a,244                ; "L" in "LEVEL".
        push ix
        pop ix
        out ($be),a
        ld a,55
        push ix
        pop ix
        out ($be),a
        
        ; The actual level number.
        ld a,(level)
        cp 10                   ; Level ten's number needs to be done differently,
        jp nz,+                 ; because it takes up two sprites.
        ld a,224
        push ix
        pop ix
        out ($be),a
        ld a,35
        push ix
        pop ix
        out ($be),a
        ld a,232
        push ix
        pop ix
        out ($be),a
        ld a,34
        push ix
        pop ix
        out ($be),a
        jp ++
        
      +:ld a,228                ; For levels < 10.
        push ix
        pop ix
        out ($be),a
        ld a,(level)
        add a,34
        push ix
        pop ix
        out ($be),a
        
        
 ++:pop af
    
    ret






.ends



;==============================================================
; Draw one line
;==============================================================
; Draws one line (32 characters maximum) of text, converting
; from ASCII, from the given address to VRAM (which must be
; set ready to accept it).
; Parameters:
; hl = location of tile
; bc = name table address
; When it returns, hl points to the next character to be drawn
; and bc points to the following name table address.
;==============================================================
.section "Draw one line" free
draw_one_line_setup:
    ; Set VRAM write address to bc and add 64 to it
    push hl           ; save value in hl
        ld h,b        ; transfer bc into hl
        ld l,c
        call VRAMToHL ; set VRAM write address
        ld bc,64      ; add 64
        add hl,bc
        push af       ; Check value is still in name table
             ld a,h
             cp (NameTableAddress+$700)>>8
             jp nz,+
             ld h,NameTableAddress>>8
             +:
        pop af
        ld b,h        ; transfer hl into bc
        ld c,l
    pop hl            ; restore hl
    ret



;==============================================================
; Draws the line of data to the screen. This version of the
; function is different to the one Maxim wrote (which this is
; based off of). Only the middle 18 tiles change, so the other
; 14 tiles are done in "add_line_start" and "add_line_end".
;
; Each block is 4 tiles, but the tile map only specifies the
; first tile - the next three are calculatable; if the tile is
; $01, the next one on the line is $02. The tile directly
; below it will be $03, followed by $04.
;
; Here's how it works:
; If line_count ($c005) is 15, then we draw the top line. The
; first block is what the tile map says (we call 'a'). The
; second block will be 'a' + 1. Then it reads the next block
; from the tile map and continues until all 9 blocks have been
; drawn.
; 
; If line_count is 7, it means we're on the second line of the
; display - but we need the same data from the tile map as
; before. 'hl' contains the address of where we are in the tile
; map, so we subtract 9 from that. We read the tile ('a') and
; add 2, the draw it - followed by 'a' + 3. Then read the next
; tile from the tile map and continue.
; 
; There are three block to which this doesn't apply:
; 0 (blank), 24 (end-zone) and 25 (steel).
; 
; It may seem a little odd, but the tile maps require only 25%
; of the storage space than if we specified every tile.
;
; Certain block have uses other than to draw a block.
; $ff: EOF - no more map.
; $e0: Change palette to normal.
; $e1: Change palette to ice.
; $e2: Change palette to desert.
;==============================================================
DrawOneLine:
    call draw_one_line_setup
    
    push af
    push bc
        call add_line_start     ; Draw the start of the line.
        
        ld b,0                  ; Flag for line 7. 0 = not line 7.
        ld a,(line_count)       ; Which line are we on?
        cp 7                    ; 16 = top one, 7 = bottom one.
        jp nz,+                 ; We only care about the bottom one.
        ld b,1                  ; Set the line 8 flag. Saves reading RAM each time.
        ld a,l
        sub 9                   ; Go back 9 bytes in the tile map.
        call c,decrement_h
        ld l,a
        
      +:ld c,9                  ; Start counter for the middle part of the line.
      -:ld a,b                  ; Line 8?
        cp 1
        jr nz,+
        ld a,(hl)               ; Get the tile number.
        cp 0
        jr z,++                 ; If it's 0, don't add 2.
        cp 24
        jr z,++                 ; If it's 24 (end-zone), don't add 2.
        cp 25
        jr z,++                 ; If it's 25 (steel), don't add 2.
        
        add a,2                 ; Add 2.
        jr ++                   ; Continue.
        
      +:ld a,(hl)               ; Line 16 - get data byte.
     ++:inc hl                  ; Point to next tile.
        ; Check for special blocks.
        cp $ff                  ; Is it $ff (we use this to end, instead of $00). EOF.
        jp z,_EndOfFile
        cp $e0                  ; Change to normal palette.
        call z,change_palette_normal
        cp $e1                  ; Change to ice palette.
        call z,change_palette_ice
        cp $e2                  ; Change to desert palette.
        call z,change_palette_desert
        
        ; Draw tile.
        out ($be),a
        push ix
        pop ix
        push af
            ld a,0
            out ($be),a
        pop af
        
        cp 0                    ; Is the tile 0?
        jr z,++                 ; If so, don't increment.
        cp 24
        jr z,++                 ; If it's 24 (end-zone), don't increment.
        cp 25
        jr z,++                 ; If it's 25 (steel), don't increment.
        
        inc a
        push ix
        pop ix
     ++:out ($be),a             ; Draw the second tile.
        push ix
        pop ix
        ld a,0
        out ($be),a
        dec c                   ; Decrement counter (doesn't count skipped).
        jp z,+                  ; If zero, exit loop.
        jp -
        
        +:call add_line_end     ; Draw the end of the line.
    pop bc
    pop af
    ret

_EndOfFile:
    call add_line_end
    pop bc
    ld b,$ff
    pop af
    ret



;==============================================================
; Draws the first seven tiles to the left of the level.
; Having them done with code here may take a few more CPU
; cycles, but it nearly halves the size of each level's data!
;==============================================================
add_line_start:
    ; The first five tiles are empty.
    ld c,5
    -:ld a,0
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    dec c                       ; Decrement counter.
    jp z,+                      ; If zero, exit loop.
    jp -
    
    ; The last two tiles are special.
    +:ld a,$fe                  ; Border tile one.
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,$19                    ; Border tile two - steel.
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ret                         ; Go back and draw the normal tiles



;==============================================================
; Draws the last seven tiles to the right of the level.
;==============================================================
add_line_end:
    ; The first tile is a steel block.
    ld a,$19                    ; Border tile - steel.
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    
    ; The last six tiles are empty.
    ld c,6
  -:ld a,0
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    dec c                       ; Decrement counter.
    jp z,+                      ; If zero, exit loop.
    jp -
        
  +:ret                         ; Go back and draw the normal tiles



;==============================================================
; Sets the terrain to "normal".
;==============================================================
change_palette_normal:
    ld a,0
    jp +

;==============================================================
; Sets the terrain to "ice".
;==============================================================
change_palette_ice:
    ld a,1
    jp +

;==============================================================
; Sets the terrain to "normal".
;==============================================================
change_palette_desert:
    ld a,2
    jp +

;==============================================================
; Changes the palette during play. This doesn't quite work yet.
; To change palette in-game, you need to include either:
; "$e0" to change to normal city palette.
; "$e1" to change to arctic palette.
; "$e2" to change to desert palette.
;==============================================================    
change_palette:
  +:ld (terrain),a
    push bc
    push hl
        call load_palette_type  ; Load the right palette for the terrain.
        ld b,32
        ld c,0
        call LoadPalette
    pop hl
    pop bc
    
    ; Changing the palette pointed the VRAM write address to CRAM, so
    ; we need to point it back to the right place in the tile table.
    push hl
        ld a,c
        push ix
        pop ix
        out ($bf),a
        ld a,b
        push ix
        pop ix
        out ($bf),a
    pop hl
    
    ld a,0                      ; Set the tile to draw (none).
    ret









.ends



;==============================================================
; Shows the intro screens. The "Aypok presents" stuff.
;==============================================================
.section "Intro" free
intro:
    ; Start off by showing the "Aypok presents..." screen.
    call show_presents_screen
    
    ; Loop while the the image shows.
    ; A basic 2-byte counter. char_x is the smaller (faster) and char_y
    ; is the larger (slower).
    ld a,0
    -:call WaitForVBlankNoInt
    
    ld b,a
    in a,($dc)                          ; Read from controller port.
    cp %11101111                        ; If the start button is pressed, skip this part of the intro.
    call z,skip_intro_bit
    jp z,+
    ld a,b
    
    cp 255
    jp z,+
    inc a
    ld (char_x),a
    jp -
    
    +:push af
        ld a,(char_y)                   ; Increment the secondry counter.
        inc a
        ld (char_y),a
        
        cp 1                            ; Fade in the word "presents..."
        call z,fade_in_presents
        cp 2                            ; Fade out the whole screen.
        call z,fade_out_presents
        call z,show_sms_power_screen    ; Show the SMS Power screen.
        cp 3                            ; Fade out the whole screen.
        call z,fade_out_sms_power
        jp z,end_presents_screen        ; All done. Go to the title screen.
    pop af
    ld a,0
    jp -



skip_intro_bit:
    ld a,(char_y)                       ; Get the secondry counter.
    cp 2                                ; If it's 2, return.
    jp z,end_presents_screen
    inc a                               ; Increment
    ld (char_y),a                       ; Save and return.
    ret



end_presents_screen:
    pop af
    ret                                 ; Done. Go and show the title screen.



;==============================================================
; Shows the "Aypok Presents" screen.
;==============================================================
show_presents_screen:
    ; Initialise the system.
    call DefaultInitialiseVDP
    call ClearVRAM

    ; Load the first screen's palette.
    ld hl,presents_palette_data
    ld b,16
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_presents            ; Tile data - contains all tiles for this screen.
    ld bc,125                           ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call LoadTiles
    
    ; Put the data on the screen.
    ld bc,NameTableAddress
    ld hl,tile_map_presents
    ld a,24
      -:call draw_one_line_full
        dec a
        jp nz,-
    
    ; Main screen turn on!
    ld a,%11000100
    out ($bf),a
    ld a,$81
    out ($bf),a
    ret



;==============================================================
; Fades in the word "presents.." on the "Aypok Presents" screen.
;==============================================================
fade_in_presents:
    ; Loop through.
    ld a,0
    ld b,a
    -:inc b
    call WaitForVBlankNoInt
    ld a,b
    cp 50                               ; Fade in the dark grey.
    jp z,+
    cp 100                              ; Fade in the light grey.
    jp z,++
    cp 150                              ; Fade in the white.
    jp z,+++
    jp -
    
    ; Fades in the dark grey.
    +:ld a,$0b                          ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    
    ; Output the colour data.
    ld a,$15
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    ld a,$00
    out ($be),a
    push ix
    pop ix
    ld a,$15
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    jp -
    
    ; Fades in the light grey.
    ++:ld a,$0d                          ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    
    ; Output the colour data.
    ld a,$2a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    jp -
    
    ; Fades in the white.
    +++:ld a,$0d                          ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    
    ; Output the colour data.
    ld a,$3f
    push ix
    pop ix
    out ($be),a
    ld a,$2a
    push ix
    pop ix
    out ($be),a
    ld a,$3f
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    ret



;==============================================================
; Fades out the whole "Aypok Presents" screen.
;==============================================================
fade_out_presents:
    ; Loop through.
    ld a,0
    -:inc a
    call WaitForVBlankNoInt
    cp 50                               ; Fade out part 1.
    jp z,+
    cp 100                              ; Fade out part 2.
    jp z,++
    cp 150                              ; Fade out part 3.
    jp z,+++
    cp 200                              ; Return.
    ret z
    jp -

    ; Load the first stage of the fade-out palette.
    +:ld hl,fade_presents_palette_data_1
    ld b,16
    ld c,0
    call LoadPalette
    jp -
    
    ; Load the first stage of the fade-out palette.
    ++:ld hl,fade_presents_palette_data_2
    ld b,16
    ld c,0
    call LoadPalette
    jp -
    
    ; Part three is just clearing VRAM and CRAM.
    +++:;call DefaultInitialiseVDP
    call ClearVRAM
    jp -



;==============================================================
; Shows the "For the 2006 SMS Power coding competition" screen.
;==============================================================
show_sms_power_screen:
    ; VRAM was cleared in the fading of the previous screen.

    ; Load the first screen's palette.
    ld hl,sms_power_palette_data
    ld b,16
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_sms_power           ; Tile data - contains all tiles for this screen.
    ld bc,171                           ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call LoadTiles
    
    ; Put the data on the screen.
    ld bc,NameTableAddress
    ld hl,tile_map_sms_power
    ld a,24
      -:call draw_one_line_full
        dec a
        jp nz,-
    
    ; Main screen turn on!
    ld a,%11000100
    out ($bf),a
    ld a,$81
    out ($bf),a
    ret



;==============================================================
; Fades out the whole SMS Power screen.
;==============================================================
fade_out_sms_power:
    ; Loop through.
    ld a,0
    -:inc a
    call WaitForVBlankNoInt
    cp 50                               ; Fade out part 1.
    jp z,+
    cp 100                              ; Fade out part 2.
    jp z,++
    cp 150                              ; Fade out part 3.
    jp z,+++
    cp 200                              ; Return.
    ret z
    jp -

    ; Load the first stage of the fade-out palette.
    +:ld hl,fade_sms_power_palette_data_1
    ld b,16
    ld c,00
    call LoadPalette
    jp -
    
    ; Load the first stage of the fade-out palette.
    ++:ld hl,fade_sms_power_palette_data_2
    ld b,16
    ld c,00
    call LoadPalette
    jp -
    
    ; Part three is just clearing VRAM and CRAM.
    +++:;call DefaultInitialiseVDP
    call ClearVRAM
    jp -



title_screen:
    call ClearVRAM
    
    ; Load the title screen's palette.
    ld hl,title_palette_data
    ld b,16
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_title               ; Tile data - contains all tiles for this screen.
    ld bc,77                            ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call LoadTiles
    
    ; Put the data on the screen.
    ld bc,NameTableAddress
    ld hl,tile_map_title
    ld a,24
      -:call draw_one_line_full
        dec a
        jp nz,-
    
    ; Main screen turn on!
    ld a,%11000100
    out ($bf),a
    ld a,$81
    out ($bf),a
    
    ; A little loop before accepting user input.
    -:inc a
    call WaitForVBlankNoInt
    cp 50
    jp z,+
    jp -
    
    ; Loop while we wait for the user to press a button.
    +:-:in a,($dc)                      ; Read from controller port.
    cp %11101111                        ; If the start button is pressed, start the game.
    jp z,+
    jp -

    ; Loop through.
    +:ld a,0
    -:inc a
    call WaitForVBlankNoInt
    cp 50                               ; Fade out part 1.
    jp z,+
    cp 100                              ; Fade out part 2.
    jp z,++
    cp 150                              ; Fade out part 3.
    jp z,+++
    cp 200                              ; Return.
    ret z
    jp -

    ; Load the first stage of the fade-out palette.
    +:ld hl,fade_title_palette_data_1
    ld b,16
    ld c,0
    call LoadPalette
    jp -
    
    ; Load the first stage of the fade-out palette.
    ++:ld hl,fade_title_palette_data_2
    ld b,16
    ld c,0
    call LoadPalette
    jp -
    
    ; Part three is just clearing VRAM and CRAM.
    +++:;call DefaultInitialiseVDP
    call ClearVRAM
    jp -



;==============================================================
; Original, unmodified (pretty much) drawing function. For
; drawing full screens of data, like the intro screens.
;==============================================================
draw_one_line_full:
    call draw_one_line_setup
    
    push af
    push bc
        ld c,32      ; Start counter
      -:ld a,(hl)    ; Get data byte
        inc hl       ; Point to next letter
        cp $ff       ; Is it $ff (we use this to end, instead of $00)
        jp z,_EndOfFile
        push ix
        pop ix
        out ($be),a  ; Draw letter
        ld a,$00
        push ix
        pop ix
        out ($be),a
        dec c        ; Decrement counter (doesn't count skipped)
        jp z,+       ; If zero, exit loop
        jp -
    +:pop bc
    pop af
    ret

_EndOfFile:
    pop bc
    ld b,$ff
    pop af
    ret

.ends



;==============================================================
; Does what needs doing when the player completes all ten
; levels.
;==============================================================
.section "Game Completed" free
game_completed:
    ; Wait a little before displaying it.
    ld a,0
    -:call WaitForVBlankNoInt
    inc a
    cp 128
    jp nz,-
    
    ; Clear the tile map.
    ld a,$78
  -:cp $7f
    jp z,+
    
    ; To clear the tile map ($3800-$3eff), we write out 256 bytes
    ; of unused RAM to VRAM. Six times (at different places).
    push af
        ld a,$00
        out ($bf),a
    pop af
    out ($bf),a
    
    ld hl,$d000
    ld b,255
    ld c,$be
    otir
    
    inc a
    jp -
    
    
    
    ; Write "WELL DONE!".
  +:ld a,$16
    out ($bf),a
    ld a,$79
    out ($bf),a
    ld hl,str_well_done_tile
    ld b,19
    ld c,$be
	otir
    
    ; Write "ALL PIPES FIXED!".
    ld a,$10
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_pipes_fixed_tile
    ld b,31
    ld c,$be
	otir
    
    ; Show "SCORE".
    ld a,$92                ; Point to the right place in VRAM.
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_score_tile    ; Load the string.
    ld b,9                  ; How many bytes to write (length of string).
    ld c,$be                ; Port to write to.
	otir                    ; Output 'b' bytes starting at 'hl' to port 'c'.
    
    ; Show their score.
    call level_ending_show_score
    
    ; Write "GAME OVER!".
    ld a,$16
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld hl,str_game_over_tile
    ld b,19
    ld c,$be
	otir
    call sixty_vblanks
    
    ; Let the player know they can press start to continue.
    ld a,$14
    out ($bf),a
    ld a,$7d
    out ($bf),a
    ld hl,str_start_cont_tile
    ld b,23
    ld c,$be
	otir
    
    
    
    ; Loop until the player presses "start".
  -:in a,($dc)                  ; Read from controller port.
    cp %11101111                ; If the start button is pressed, return to the title screen.
    jr z,+
    jp -
    
    ; All done. Return to the title screen.
  +:ld a,0
  -:call WaitForVBlankNoInt
    inc a
    cp 128
    jr nz,-
    jp show_credits

.ends



;==============================================================
; Shows the end credits.
;==============================================================
.section "Credits" free
show_credits:
    ; Wait a little before displaying it.
    call sixty_vblanks
    
    ; Kill the sprite from the menu.
    ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    ld a,208
    out ($be),a
    
    ;ld a,$80
    ;out ($bf),a
    ;ld a,$7f
    ;out ($bf),a
    ;ld hl,str_null_tile
    ;ld b,8
    ;ld c,$be
	;otir
    
    ; Load palette.
    ld hl,palette_data_credits
    ld b,32
    ld c,0
    call LoadPalette
    
    ; Write the credits to screen.
    ld bc,NameTableAddress
    ld hl,tile_map_credits
    ld a,24
      -:call draw_one_line_full
        dec a
        jp nz,-
    
    ; Setup some stuff.
    ld a,1                      ; Direction. 0 = dowm. 1 = up.
    ld (char_y),a
    ld hl,$3845
    ld (the_block),hl
    
    ; A little loop before accepting user input.
    call sixty_vblanks
    ld c,0                      ; Flag for which screen we're on. 0 = credits, 1 = licence.
    
    ; Loop until the player presses "start".
    ld a,6
+:-:cp 6                        ; Only update the blocks once per 60 vblanks.
    push af
    call z,cool_moving_blocks   ; Update the moving blocks.
    pop af
    cp 6
    jr nz,+
    ld a,0
    
  +:push af
        in a,($dc)              ; Read from controller port.
        cp %11101111            ; If the start button is pressed, return to the title screen.
        jp z,+
    pop af
    call ten_vblanks            ; Wait a little.
    inc a
    jp -
    
    ; Show the licence and general info.
  +:pop af
    ld a,c
    cp 1
    jr z,+                      ; Skip if the licence has already been shown.
    ld bc,NameTableAddress      ; Load and show the licence screen.
    ld hl,tile_map_licence
    ld a,24
     --:call draw_one_line_full
        dec a
        jp nz,--
    
    ; We used tile 68 (full stop) in place of a quote mark in three places on this screen.
    ; They need to be flipped vertically to look like quote marks.
    push hl
        ld hl,$3a17             ; First one.
        call VRAMToHL
        push ix
        pop ix
        ld a,6
        out ($be),a
        ld hl,$3a2f             ; Second.
        call VRAMToHL
        push ix
        pop ix
        ld a,6
        out ($be),a
        ld hl,$3c53             ; Final
        call VRAMToHL
        push ix
        pop ix
        ld a,6
        out ($be),a
    pop hl
    call sixty_vblanks
    
    ld c,1                      ; Set the flag so we don't re-show this.
    jp -                        ; Go back to the loop which does the cool block things.
    
    ; All done. Return to the title screen.
  +:ld a,0
  -:call WaitForVBlankNoInt
    inc a
    cp 128
    jr nz,-
    jp main_title



;==============================================================
; Controls the inverted blocks moving up and down the screen.
; If (char_y) is 1, move up, otherwise; move down.
; (the_block) is the current block on the left side. The block
; on the right is (the_block) plus 58. Except for the extra
; 4 blocks, which are hardcoded.
; 
; By "inverted", I mean it uses the sprite's palette.
;
; This bit took between 30-60 mins to write from when I first
; thought of it, and it takes a fair amount of code - but I
; love it. :) It makes the credits page even cooler.
;==============================================================
cool_moving_blocks:
    ; Check if we're going up or down.
    ld a,(char_y)
    cp 0
    jp nz,cool_moving_blocks_up ; Up.
    jp cool_moving_blocks_down  ; Down.

cool_moving_blocks_down:
    ld hl,(the_block)           ; Get the current block.
    ld a,l
    
    ; 3rd from top-left? $3847
    cp $47
    jp nz,+
    ld b,50
    call cool_moving_reset      ; Reset it to normal.
    ld a,$45
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ret
    
    ; 2nd from top-left? $3845
  +:cp $45
    jp nz,+
    ld b,54
    call cool_moving_reset      ; Reset it to normal.
    ld a,$43
    ld l,a
    ld b,58
    call cool_moving_set        ; Set the new block.
    ret
    
    ; Bottom-left? $3d83
  +:cp $83
    jp nz,+
    ld a,h                      ; Check the second byte, too.
    cp $3d
    jp nz,+
    ld b,58
    call cool_moving_reset      ; Reset it to normal.
    ld a,$85
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ret
    
    ; 2nd from bottom-left? $3d85
  +:cp $85
    jp nz,+
    ld b,54
    call cool_moving_reset      ; Reset it to normal.
    ld a,$87
    ld l,a
    ld b,50
    call cool_moving_set        ; Set the new block.
    ret
    
    ; 3rd from bottom-left? $3d87
  +:cp $87
    jp nz,+
    ld b,50
    call cool_moving_reset      ; Reset it to normal.
    ld a,$85
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ld a,1                      ; Change direction.
    ld (char_y),a
    ret
    
    ; Normal block on the left. Move to the block below.
  +:ld b,58
    call cool_moving_reset      ; Reset it to normal.
    ld a,l
    add a,64                    ; Move down a row.
    call c,increment_h
    ld l,a
    call cool_moving_set        ; Set the new block.
    
    ret                         ; All done.



;==============================================================
; The same as "cool_moving_blocks_down", but handles stuff
; going in the other direction.
;==============================================================
cool_moving_blocks_up:
    ld hl,(the_block)           ; Get the current block.
    ld a,l
    
    ; 3rd from top-left? $3847
    cp $47
    jp nz,+
    ld b,50
    call cool_moving_reset      ; Reset it to normal.
    ld a,$45
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ld a,0                      ; Change direction.
    ld (char_y),a
    ret
    
    ; 2nd from top-left? $3845
  +:cp $45
    jp nz,+
    ld b,54
    call cool_moving_reset      ; Reset it to normal.
    ld a,$47
    ld l,a
    ld b,50
    call cool_moving_set        ; Set the new block.
    ret
    
    ; Top-left? $3d83
  +:cp $43
    jp nz,+
    ld a,h                      ; Check the second byte, too.
    cp $38
    jp nz,+
    ld b,58
    call cool_moving_reset      ; Reset it to normal.
    ld a,$45
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ret
    
    ; 2nd from bottom-left? $3d85
  +:cp $85
    jp nz,+
    ld b,54
    call cool_moving_reset      ; Reset it to normal.
    ld a,$83
    ld l,a
    ld b,58
    call cool_moving_set        ; Set the new block.
    ret
    
    ; 3rd from bottom-left? $3d87
  +:cp $87
    jp nz,+
    ld b,50
    call cool_moving_reset      ; Reset it to normal.
    ld a,$85
    ld l,a
    ld b,54
    call cool_moving_set        ; Set the new block.
    ret
    
    ; Normal block on the left. Move to the block below.
  +:ld b,58
    call cool_moving_reset      ; Reset it to normal.
    ld a,l
    sub 64                      ; Move up a row.
    call c,decrement_h
    ld l,a
    call cool_moving_set        ; Set the new block.
    
    ret                         ; All done.



;==============================================================
; Inverts the block at (the_block).
;==============================================================
cool_moving_set:
    ld (the_block),hl
    call VRAMToHL
    push ix
    pop ix
    ld a,8                      ; Setting the tile's second byte to 8
    out ($be),a                 ; inverts the colours.
    call cool_moving_set_r      ; Set the second block.
    ret



;==============================================================
; Undoes the inversion on the the block at (the_block).
;============================================================== 
cool_moving_reset:
    call VRAMToHL
    push ix
    pop ix
    ld a,0
    out ($be),a
    call cool_moving_reset_r    ; Reset the right block, too.
    ret



;==============================================================
; Inverts the second block at (the_block) + 'b'.
;==============================================================
cool_moving_set_r:
    push hl
        ld hl,(the_block)       ; 'hl' is the block down the left side, so
        ld a,l                  ; we need to add 58 to it to get the block
        add a,b                 ; down the right-hand side of the screen.
        call c,increment_h      ; This doesn't get called on "special" blocks
        ld l,a                  ; which are not on the two main vertical lines.
        
        call VRAMToHL           ; Write it out.
        push ix
        pop ix
        ld a,8
        out ($be),a
    pop hl
    ret



;==============================================================
; Undoes the inversion on the the second block at (the_block)
; + 'b'.
;============================================================== 
cool_moving_reset_r:
    push hl
        ld hl,(the_block)       ; 'hl' is the block down the left side, so
        ld a,l                  ; we need to add 58 to it to get the block
        add a,b                 ; down the right-hand side of the screen.
        call c,increment_h      ; This doesn't get called on "special" blocks
        ld l,a                  ; which are not on the two main vertical lines.
        
        call VRAMToHL
        push ix
        pop ix
        ld a,0
        out ($be),a
    pop hl
    ret



;==============================================================
; Does exactly what it says on the tin.
;==============================================================
sixty_vblanks:
    push af
        ld a,60
      -:call WaitForVBlankNoInt
        dec a
        jr z,+
        jr -
  +:pop af
    ret



;==============================================================
; Does exactly what it says on the tin.
;==============================================================
ten_vblanks:
    push af
        ld a,10
      -:call WaitForVBlankNoInt
        dec a
        jr z,+
        jr -
  +:pop af
    ret

.ends








;==============================================================
; Palette data.
;==============================================================
.slot 0
.section "Palette Data" superfree
    ; "Aypok presents" screen palettes. Including the fading palettes.
    presents_palette_data:
    .db $00,$00,$04,$08,$0d,$0e,$08,$0e,$09,$04,$0c,$00,$00,$00,$00,$00
    presents_palette_data_end:
    
    fade_presents_palette_data_1:
    .db $00,$00,$00,$04,$0c,$0c,$04,$0c,$04,$00,$0c,$00,$00,$2a,$15,$2a
    fade_presents_palette_data_end_1:
    
    fade_presents_palette_data_2:
    .db $00,$00,$00,$00,$04,$04,$00,$04,$00,$00,$04,$00,$00,$15,$00,$15
    fade_presents_palette_data_end_2:
    
    
    
    ; SMS Power screen palettes. Including the fading palettes.
    sms_power_palette_data:
    .db $00,$15,$00,$3f,$3f,$2a,$24,$14,$39,$24,$29,$3f,$3e,$3a,$00,$00
    sms_power_palette_data_end:
    
    fade_sms_power_palette_data_1:
    .db $00,$00,$00,$2a,$2a,$15,$20,$00,$30,$20,$20,$2a,$2a,$2a,$00,$00
    fade_sms_power_palette_data_end_1:
    
    fade_sms_power_palette_data_2:
    .db $00,$00,$00,$15,$15,$00,$10,$00,$20,$10,$10,$15,$15,$15,$00,$00
    fade_sms_power_palette_data_end_2:
    
    
    
    ; Title screen palettes. Including the fading palettes.
    title_palette_data:
    .db $00,$38,$03,$0c,$30,$20,$02,$01,$08,$04,$3f,$3f,$00,$15,$2a,$00
    title_palette_data_end:
    
    fade_title_palette_data_1:
    .db $00,$28,$02,$08,$20,$10,$01,$00,$04,$00,$2a,$2a,$00,$00,$15,$00
    fade_title_palette_data_end_1:
    
    fade_title_palette_data_2:
    .db $00,$15,$01,$04,$10,$00,$00,$00,$00,$00,$15,$15,$00,$00,$00,$00
    fade_title_palette_data_end_2:
    
    
    
    ; Ending credits colours.
    palette_data_credits:
    .db $10,$0c,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Normal colours.
    .db $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Sprite colours.
    palette_data_credits_end:
    
    
    
    ; In-game colours.
    palette_data:           ; R G B Y
    .db $00,$01,$02,$03,$04,$08,$0c,$20,$30,$38,$0a,$0f,$1f,$3f,$2a,$15 ; Normal colours.
    .db $00,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$00,$00,$3f,$00,$00 ; Sprite colours.
    palette_data_end:
    
    palette_data_ice:       ; R G B
    .db $10,$3c,$3e,$3f,$22,$36,$3a,$30,$39,$3c,$0f,$1f,$1f,$3f,$3f,$2a ; Normal colours.
    .db $00,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$00,$00,$3f,$00,$00 ; Sprite colours.
    palette_data_ice_end:
    
    palette_data_desert:    ; R G Y
    .db $01,$01,$02,$03,$06,$0b,$0f,$20,$30,$38,$0a,$0f,$2f,$3f,$2a,$15 ; Normal colours.
    .db $00,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$00,$00,$3f,$00,$00 ; Sprite colours.
    palette_data_desert_end:
.ends



;==============================================================
; Tile data.
;==============================================================
.section "Tile Data" superfree
    ; "Aypok presents" screen tiles.
    tile_data_presents:
    .include "tile_data_aypok.inc"
    
    ; SMS Power screen tiles.
    tile_data_sms_power:
    .include "tile_data_sms_power.inc"
    
    ; Title screen tiles.
    tile_data_title:
    .include "tile_data_title.inc"
    
    ; In-game tiles.
    tile_data:
    .include "tile_data.inc"
    .include "tile_data_font.inc"
    .include "tile_data_chars.inc"
.ends



;==============================================================
; Tile map data (excluding levels).
;==============================================================
.section "Tilemap Data" superfree
    ; "Aypok presents" screen tile-map.
    tile_map_presents:
    .include "tile_map_aypok.inc"
    
    ; SMS Power screen tile-map.
    tile_map_sms_power:
    .include "tile_map_sms_power.inc"
    
    ; Title screen tile-map.
    tile_map_title:
    .include "tile_map_title.inc"
    
    ; Credits screen tile-map.
    tile_map_credits:
    .include "tile_map_credits.inc"
    
    ; License screen tile-map.
    tile_map_licence:
    .include "tile_map_licence.inc"
.ends



;==============================================================
; Tile map data for levels 1 to 4 (in slot 0).
;==============================================================
.section "Level 01 Data" superfree
    level_01:
    .include "level_01.inc"
.ends

.section "Level 02 Data" superfree
    level_02:
    .include "level_02.inc"
.ends

.section "Level 03 Data" superfree
    level_03:
    .include "level_03.inc"
.ends

.slot 2
.section "Level 04 Data" superfree
    level_04:
    .include "level_04.inc"
.ends

;==============================================================
; Tile map data for levels 5 to 7 (in slot 2).
;==============================================================
.slot 2
.section "Level 05 Data" superfree
    level_05:
    .include "level_05.inc"
.ends

.slot 2
.section "Level 06 Data" superfree
    level_06:
    .include "level_06.inc"
.ends

.slot 2
.section "Level 07 Data" superfree
    level_07:
    .include "level_07.inc"
.ends

;==============================================================
; Tile map data for levels 8 and 9 (in slot 3).
;==============================================================
;.slot 3
;.section "Level 08 Data" superfree
;    level_08:
;    .include "level_08.inc"
;.ends
;
;.slot 3
;.section "Level 09 Data" superfree
;    level_09:
;    .include "level_09.inc"
;.ends
;
;==============================================================
; Tile map data for level 10 (in slot 5).
;==============================================================
;.slot 5
;.section "Level 10 Data" superfree
;    level_10:
;    .include "level_10.inc"
;.ends



;==============================================================
; String data.
;==============================================================
.slot 0
.section "Strings" superfree
    str_milk_tile:          .db 56,00,52,00,55,00,54                                                    ; "MILK".
    str_depth_tile:         .db 47,00,48,00,58,00,61,00,51                                              ; "DEPTH".
    str_score_tile:         .db 39,00,46,00,34,00,60,00,48                                              ; "SCORE".
    str_level_tile:         .db 55,00,48,00,63,00,48,00,55                                              ; "LEVEL".
    str_complete_tile:      .db 00,00,46,00,34,00,56,00,58,00,55,00,48,00,61,00,48,00,69                ; " COMPLETE!".
    str_start_cont_tile:    .db 58,00,60,00,48,00,39,00,39,00,00,00,00,00,39,00,61,00,44,00,60,00,61    ; "PRESS  START".
    str_milk_full_tile:     .db 26,00,26,00,26,00,26                                                    ; Four milk blocks.
    str_out_of_milk_tile:   .db 34,00,62,00,61,00,00,00,34,00,49,00,00,00,56,00,52,00,55,00,54,00,69    ; "OUT OF MILK!".
    str_game_over_tile:     .db 50,00,44,00,56,00,48,00,00,00,34,00,63,00,48,00,60,00,69                ; "GAME OVER!".
    str_you_have_tile:      .db 66,00,34,00,62,00,00,00,51,00,44,00,63,00,48                            ; "YOU HAVE".
    str_tries_left_tile:    .db 00,00,61,00,60,00,52,00,48,00,39,00,00,00,55,00,48,00,49,00,61,00,69    ; " TRIES LEFT!".
    str_retry_tile:         .db 60,00,48,00,61,00,60,00,66                                              ; "RETRY".
    str_quit_tile:          .db 59,00,62,00,52,00,61                                                    ; "QUIT".
    str_credits_tile:       .db 46,00,60,00,48,00,47,00,52,00,61,00,39                                  ; "CREDITS".
    str_well_done_tile:     .db 64,00,48,00,55,00,55,00,00,00,47,00,34,00,57,00,48,00,69                ; "WELL DONE!".
    str_pipes_fixed_tile:   .db 44,00,55,00,55,00,00,00,58,00,52,00,58,00,48,00,39,00,00,00,49,00,52,00,65,00,48,00,47,00,69        ; "ALL PIPES FIXED!".
    
    
    
    ; 32 byte null string.
    str_null_tile:          .db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    
    str_depth_sprite:       .db 212,47,220,48,228,58,236,61,244,51                                      ; "DEPTH".
    str_depth_val_sprite:   .db 216,34,224,34,232,34,240,34                                             ; "0000" (depth).
    str_milk_sprite:        .db 216,56,224,52,232,55,240,54                                             ; "MILK".
    str_milk_full_sprite:   .db 216,26,224,26,232,26,240,26                                             ; Four milk blocks.
    str_score_sprite:       .db 212,39,220,46,228,34,236,60,244,48                                      ; "SCORE".
    
    
.ends


