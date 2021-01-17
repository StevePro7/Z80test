;==============================================================
; 
; Digger Ball (c) Aypok 2007
;
; Email: aypok at aypok dot co dot uk
; Web:   http://www.aypok.co.uk/
; 
;==============================================================
;
; Digger Ball is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; Digger Ball is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with Digger Ball; if not, write to the Free Software
; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
;
;==============================================================



;==============================================================
; WLA-DX banking setup.
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
slotsize $4000
slot 4 $10000
.endme 

.rombankmap
bankstotal 5
banksize $7ff0
banks 1
banksize $10
banks 1
banksize $4000
banks 1
banksize $4000
banks 1
banksize $4000
banks 1
.endro

;==============================================================
; SDSC tag and SMS rom header.
;==============================================================
.sdsctag 0.01,"Digger Ball","Digger Ball","Aypok"

.bank 0 slot 0
.org $0000
.include "generic_stuff.asm"
.include "data_and_fish.asm"
.include "level_setup.asm"

; Set up some RAM locations for storing data.
.define char_x      $c000   ; Stuff for the main sprite. 
.define char_y      $c001    
.define char_tile   $c002    
.define char_rel    $c003   ; Relative position - the block position (0-15).

.define char_speed  $c004   ; Speed at which player moves.
.define line_count  $c005   ; Lines (in pixels) scrolled.
.define the_block   $c006   ; Memory address of block under player - 2 bytes.
.define scroll_val  $c008   ; Stores the scroll value.
.define block_type  $c009   ; Keeps the number of the block type we're destroying.
.define dest_level  $c00a   ; How far through the block destruction cycle we have gotten.
.define block_back  $c00b   ; Backup of (the_block). 2 bytes.
.define terrain     $c00d   ; Terrain. 0 = normal, 1 = ice, 2 = desert.
.define lives       $c00e   ; How many lives the player has left.
.define move_flag   $c00f   ; For when ice, making them slip around.

.define ball_x      $c010   ; X position of ball.
.define ball_y      $c011   ; Y position of ball.
.define ball_speed  $c012   ; How many pixels to move the ball.
.define ball_vert   $c013   ; 0 if moving up, 1 if moving down.
.define ball_hori   $c014   ; 0 if moving left, 1 if moving right.
.define ball_launch $c015   ; 0 if not launched.
.define ball_move   $c016   ; Ball moving flag.
.define ball_tile   $c017   ; Tile to use for the ball.

.define dir_flag    $c018   ; Used for double direction == climb stuff.
.define dir_count   $c019   ; For the above, keeps track of vblanks between the last press.
.define anim_flag1  $c01a   ; Used for character animation.
.define anim_flag2  $c01b   ; Used for character animation.
.define line_count2 $c01c   ; Set when line_count is 0 and unset when it's not.
.define dig_sprite  $c01d   ; For changing the sprite when digging.
.define dig_count   $c01e   ; Counter for showing the digging sprite.

.define score_1     $c020   ; The score system works the same way as the depth counter.
.define score_2     $c021   ; s1 = 10000s, s2 = 1000s, s3 = 100s, s4 = 10s, s5 = 1s.
.define score_3     $c022   ; 
.define score_4     $c023   ; 
.define score_5     $c024   ; 
.define block_multi $c025   ; Counts how many blocks were destroyed that time.

.define level       $c026   ; A level counter.
.define level_done  $c027   ; Flag showing whether or not the level has been completed.
.define milk_found  $c028   ; Address if a milk block on screen. 2 bytes.
.define paused      $c02a   ; Whether or not the game is paused.
.define spade_x     $c02b   ; X position of thrown spade.
.define spade_y     $c02c   ; Y position of thrown spade.
.define spade_dir   $c02d   ; Direction. 0 is up, 1 is down.
.define spade_move  $c02e   ; Flag for moving.
.define spade_tile  $c02f   ; Spade tile.

.define paused_x    $c030   ; X position of the paused text.
.define paused_y    $c031   ; Y position of the paused text.
.define vblanked    $c032   ; Whether or not a VBlank has occured.
.define ball_block  $c033   ; Block behind the ball. 2 bytes.
.define blocks_left $c035   ; Number of blocks found on the playfield.
.define dead_count  $c036   ; For when player gets burnt.
.define random      $c037   ; "Randomly" generated number.

.define pup_x       $c040   ; X position of power-up falling down. 0 if nothing on screen.
.define pup_y       $c041   ; Y position of power-up falling down.
.define pup_tile    $c042   ; Which power-up it is.
.define pup_move    $c043   ; Flag to do with moving the power-up.
.define pup_spade   $c044   ; 1 if spade-throwing power-up is enabled.
.define pup_deadly  $c045   ; 1 if deadly ball power-up is enabled.
.define pup_tnt     $c046   ; 1 if TNT power-up is enabled.
.define pup_dual $c047   ; 1 if dual power-up is enabled.
.define pup_bspeed  $c048   ; 1 if ball speed-up power-up is enabled.
.define pup_pspeed  $c049   ; 1 if player speed-up power-up is enabled.
.define pup_minime  $c04a   ; 1 if mini-chan power-up is enabled.
.define pup_fireman $c04b   ; 1 if fireman power-up is enabled.

.define pup_flash   $c04f   ; For making the power-ups flash when falling.

.define fire_0      $c050   ; Column 0 fire timer.
.define fire_1      $c051   ; Column 1 fire timer.
.define fire_2      $c052   ; Column 2 fire timer.
.define fire_3      $c053   ; Column 3 fire timer.
.define fire_4      $c054   ; Column 4 fire timer.
.define fire_5      $c055   ; Column 5 fire timer.
.define fire_6      $c056   ; Column 6 fire timer.
.define fire_7      $c057   ; Column 7 fire timer.
.define fire_8      $c058   ; Column 8 fire timer.
.define fire_flag   $c059   ; Flag for animating the fire.
.define explode_x   $c05a   ; X position of explosion.
.define explode_y   $c05b   ; Y position of explosion.
.define menu_point  $c05c   ; Which menu option selected.
.define difficulty  $c05d   ; 0 = easy, 1 = medium, 2 = hard.

.define ball2_x     $c060   ; X position of second ball.
.define ball2_y     $c061   ; Y position of second ball.
.define ball2_vert  $c062   ; Vertical direction of second ball.
.define ball2_hori  $c063   ; Horizontal direction of second ball.
.define ball_back_x $c064   ; Backup of ball 1's X position.
.define ball_back_y $c065   ; Backup of ball 1's Y position.
.define ball_back_v $c066   ; Backup of ball 1's vertical direction.
.define ball_back_h $c067   ; Backup of ball 1's horizontal direction.
.define ball_back_m $c068   ; Backup of ball_move.
.define ball_which  $c069   ; which ball. 0 = 1, 1 = 2.

.define credit_view $c09f   ; 1 = view credits.


; Stuff for the music and sound playback.
.define PSGMOD_START_ADDRESS    $c100   ; 256bytes. Used by PSGMOD for music.



; Some constants.
.define CHAR_LEFT       84
.define CHAR_RIGHT      80
.define MINI_CHAR_LEFT  99
.define MINI_CHAR_RIGHT 98
.define STEEL           25
.define BORDER          254
.define BALL            97
.define BALL_DEADLY_0   100
.define BALL_DEADLY_1   104
.define SPADE_0         156
.define SPADE_1         157
.define SPADE_2         158
.define SPADE_3         159
.define DEST_1          17
.define DEST_2          18
.define DEST_3          19
.define TNT_0           152
.define FIRE_0          108
.define FIRE_1          112
.define FIRE_2          116
.define FIRE_3          120
.define POWERUP_SPADE   124
.define POWERUP_DEADLY  140
.define POWERUP_TNT     136
.define POWERUP_DUAL    144
.define POWERUP_BSPEED  132
.define POWERUP_PSPEED  128
.define POWERUP_MINIME  148
.define POWERUP_FIREMAN 32
.define MENU_POINTER    0
.define MENU_OPTION_0   127
.define MENU_OPTION_1   135
.define MENU_OPTION_2   143
.define MENU_OPTION_3   151



;==============================================================
; Boot section.
;==============================================================
.org $0000
.section "Boot section" force
    di                          ; Disable interrupts.
    im 1                        ; Interrupt mode 1.
    jp main                     ; Jump to main program.
.ends

.org $0038
.section "Interrupt handler" force
    push af
        in a,($bf)              ; Read VDP status to acknowledge interrupt.
        bit 5,a                 ; Check for sprite to sprite collisions.
        call nz,sprite_to_sprite_collision
        bit 7,a
        jr z,+
        ld a,1
        ld (vblanked),a
  +:pop af
    ei
    reti
.ends

;==============================================================
; Pause button handler.
;==============================================================
.org $0066
.section "Pause button handler" force
    push af
        ld a,(paused)           ; Flip the paused flag. 
        xor 1
        ld (paused),a
        
        cp 0                    ; If we're unsetting pause, don't change the
        jp z,+                  ; starting position.
        ld a,60                 ; Reset the starting position of the text.
        ld (paused_x),a
        ;ld a,32
        ld a,135
        ld (paused_y),a
  +:pop af
    ei
    reti
.ends



;==============================================================
; Main program.
;==============================================================
.section "Main program" free
main:
    ei
    ld sp,$dff0
    
    ; Show the intro and title screens.
    call initialise_vdp
    call intro
    
main_title:
    call title_screen
    ld a,(credit_view)
    cp 1
    jp nz,+
    jp show_credits             ; Show credits.
    jp main_title               ; Should never get here.
    
    ; Set up some stuff for each game (not reset each level).
  +:ld a,1
    ld (level),a
    ld a,3
    ld (lives),a
    
    ld a,0
    ld (score_1),a
    ld (score_2),a
    ld (score_3),a
    ld (score_4),a
    ld (score_5),a
    
    call initialise_vdp
    
start_level:
    ; Set difficulty level.
    call set_difficulty_level
    
    ; Setup some variables.
    ld a,104                        ; Start X position.
    ld (char_x),a
    ld a,167                        ; Start Y position.
    ld (char_y),a 
    ld a,CHAR_LEFT                  ; The tile to use for the player's sprite.
    ld (char_tile),a
    ld a,15                         ; Relative position the player starts at.
    ld (char_rel),a
    ld a,BALL
    ld (ball_tile),a
    
    ld a,108
    ld (ball_x),a
    ld a,158
    ld (ball_y),a
    ld a,0
    ld (ball_vert),a
    ld (ball_hori),a
    ld (ball_launch),a
    
    ld a,0
    ld (line_count),a
    ld (level_done),a
    ld (block_type),a
    ld (dest_level),a
    ld (dir_flag),a
    ld (dir_count),a
    ld (anim_flag1),a
    ld (anim_flag2),a
    ld (line_count2),a
    ld (dig_sprite),a
    ld (dig_count),a
    ld (dead_count),a
    ld (block_multi),a
    ld (paused),a
    ld (random),a
    ld (pup_x),a
    ld (pup_y),a
    ld (pup_tile),a
    ld (pup_move),a
    ld (pup_spade),a
    ld (pup_deadly),a
    ld (pup_tnt),a
    ld (pup_dual),a
    ld (pup_bspeed),a
    ld (pup_pspeed),a
    ld (pup_minime),a
    ld (pup_fireman),a
    ld (pup_flash),a
    ld (spade_x),a
    ld (spade_y),a
    ld (spade_dir),a
    ld (spade_move),a
    ld (spade_tile),a
    ld (fire_0),a
    ld (fire_1),a
    ld (fire_2),a
    ld (fire_3),a
    ld (fire_4),a
    ld (fire_5),a
    ld (fire_6),a
    ld (fire_7),a
    ld (fire_8),a
    ld (fire_flag),a
    ld (explode_x),a
    ld (explode_y),a
    ld (menu_point),a
    ld (ball2_x),a
    ld (ball2_y),a
    ld (ball2_vert),a
    ld (ball2_hori),a
    ld (ball_back_x),a
    ld (ball_back_y),a
    ld (ball_back_v),a
    ld (ball_back_h),a
    ld (ball_back_m),a
    ld (ball_which),a
    
    ld hl,0                         ; Zero a load of two-byte data.
    ld (block_back),hl
    ld (the_block),hl
    ld hl,$3a9e                     ; The address of the block the player starts on.
    ld (the_block),hl
    
    
    ; Initialise the system.
    call clear_vram
    call wait_for_vblank
    
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
        call wait_for_vblank
        otir                            ; Do it.
  
        ; Load the tiles.
        ld a,:tile_data                 ; Find the slot/page the data is in.
        ld ($ffff),a                    ; Map that page to the second map slot ($8000-$bfff).
        ld ix,tile_data                 ; Tile data - contains all tile info.
        ld hl,0                         ; This is where to put the tiles in VRAM.
        ld bc,160                       ; Number of tiles.
        ld d,4                          ; Bits per pixel.
        call wait_for_vblank
        call load_tiles
        call wait_for_vblank
    pop hl
    pop af
    
    ; Show the HUD.
    call wait_for_vblank
    call draw_the_hud_and_stuff
    
    
    
    ;==============================================================
    ; Draw a screenful of the level.
    ;==============================================================
    ld ($ffff),a                ; Map the page containing the tile map to the second map slot ($8000-$bfff).
    ld bc,name_table_address
    ld a,16
      -:call draw_one_line
        dec a
        push af
            ld a,(line_count)   ; We need to keep line_count upto date.
            cp 7                ; If it's 8, set it to 16.
            jp nz,+
            ld a,16
            jp ++
          +:ld a,7              ; If it's 16, set it to 8.
         ++:ld (line_count),a
        pop af
        jp nz,-
        ld a,0
        ld (line_count),a
    
    ld a,6
  -:call draw_empty_line
    cp 0
    jp z,+
    dec a
    jp -
  +:call draw_last_solid_line
    
    ; Main screen turn on!
    ld a,%11100100
    out ($bf),a
    ld a,$81
    out ($bf),a
    push ix
    pop ix
    
    
    ld a,:music_data_ingame
    ld hl,music_data_ingame
    call start_le_tunage
    
    ; Main engine loop. Vroom vroom!
    ld a,0                      ; 'a' is the current scroll value (starts at 0).
    ld (scroll_val),a
    loop:
        ld a,(paused)           ; If the game is paused, just loop.
        cp 1
        jp z,start_le_paused_engine_go_go_go
        
        ; Check if they've completed the level.
      +:ld a,(level_done)
        cp 1
        jp z,level_ending
        
        ; Go through every tile in the play area and see if we need to do anything.
        call check_playfield

        ld a,(pup_tnt)
        cp 255
        call z,give_the_player_some_wmd
        
        ; Power-up stuff.
        call move_powerups
        call spade_thrower
        
        ld a,(ball_move)        ; Backup ball_move.
        ld (ball_back_m),a
        
        ; The almighty VBlank.
        call wait_for_vblank
        
        ; Update flames.
        call fan_the_flames
        
        ; Flayer burninated?
        call check_dead_count
        
        
        
    ; Control the sprite.
    control_movement:
        in a,($dc)              ; Read from controller port.
        push af
            bit 5,a                 ; Button 2? Throw spade.
            call z,throw_le_spade
            
            bit 2,a                 ; Left?
            call z,move_player_left
            jp z,+
            
            bit 3,a                 ; Right?
            call z,move_player_right
            
            ; Ball stuff.
          +:ld a,(ball_launch)
            cp 0
            jp nz,+

        ; Check if they pressed fire to launch the ball.
        pop af
        bit 4,a
        jp nz,++
        ld a,1
        ld (ball_launch),a
        push af
        
        ; Move the ball.
      +:pop af
        ld a,0
        ld (ball_which),a
        call move_the_ball
        
        ; Dual Ball enabled?
        ld a,(pup_dual)
        cp 1
        jp nz,++
        ld a,(ball_back_m)
        ld (ball_move),a
        ld hl,(ball_x)          ; Backup the ball's location.
        ld (ball_back_x),hl
        ld hl,(ball_vert)       ; Backup the ball's direction.
        ld (ball_back_v),hl
        ld hl,(ball2_x)         ; Copy ball two to ball one.
        ld (ball_x),hl
        ld hl,(ball2_vert)
        ld (ball_vert),hl
        ld a,1
        ld (ball_which),a
        call move_the_ball      ; Move it.
        
        ld hl,(ball_x)          ; Copy ball 2's new data.
        ld (ball2_x),hl
        ld hl,(ball_vert)
        ld (ball2_vert),hl
        ld hl,(ball_back_x)     ; Restore backups..
        ld (ball_x),hl
        ld hl,(ball_back_v)
        ld (ball_vert),hl
        
        ; End of main loop.
     ++:call draw_sprite
        jp loop



;==============================================================
; If the Deadly Ball is about, check for fires. Keep the fires
; updated. Animate them, change them, and put them out.
;==============================================================
fan_the_flames:
    ld a,(pup_deadly)
    cp 1
    ret nz                      ; No Deadly Ball? Get orf me land!

    ld a,(fire_flag)
    inc a
    cp 20
    jp nz,+
    ld a,0
  +:ld (fire_flag),a
    cp 10
    jp z,+
    cp 19
    ret nz
    
    ; Check the fires.
  +:ld a,(fire_0)               ; Fire 0;
    cp 0
    jp z,++
    ld hl,$3d4a                 ; Address of tile.
    inc a
    ld (fire_0),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld a,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_0),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_1)               ; Fire 1.
    cp 0
    jp z,++
    ld hl,$3d4e                 ; Address of tile.
    inc a
    ld (fire_1),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_1),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_2)               ; Fire 2.
    cp 0
    jp z,++
    ld hl,$3d52                 ; Address of tile.
    inc a
    ld (fire_2),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_2),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_3)               ; Fire 3.
    cp 0
    jp z,++
    ld hl,$3d56                 ; Address of tile.
    inc a
    ld (fire_3),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_3),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_4)               ; Fire 4.
    cp 0
    jp z,++
    ld hl,$3d5a                 ; Address of tile.
    inc a
    ld (fire_4),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_4),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_5)               ; Fire 5.
    cp 0
    jp z,++
    ld hl,$3d5e                 ; Address of tile.
    inc a
    ld (fire_5),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_5),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_6)               ; Fire 6.
    cp 0
    jp z,++
    ld hl,$3d62                 ; Address of tile.
    inc a
    ld (fire_6),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_6),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_7)               ; Fire 7.
    cp 0
    jp z,++
    ld hl,$3d66                 ; Address of tile.
    inc a
    ld (fire_7),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_7),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ld a,(fire_8)               ; Fire 8.
    cp 0
    jp z,++
    ld hl,$3d6a                 ; Address of tile.
    inc a
    ld (fire_8),a
    cp 48                       ; Half-way through? Change it.
    jp nz,+
    ld b,8
    call draw_some_flames
    jp ++
  +:cp 80
    jp nz,+
    ld (the_block),hl
    call remove_the_block
    ld a,0
    ld (fire_8),a
    jp ++
  +:call alternate_le_flamage
    
 ++:ret



;==============================================================
; Alternate between the flame animation frames.
;==============================================================
alternate_le_flamage:
    ld a,l                      ; Point to the place in VRAM. Reading.
    out ($bf),a
    push ix
    pop ix
    ld a,h
    out ($bf),a
    push ix
    pop ix
    in a,($be)                  ; Find the tile number.
    push ix
    pop ix
    
    ; What tile it was?
    cp FIRE_0
    jp nz,+
    ld b,4
    jp +
  +:cp FIRE_1
    jp nz,+
    ld b,0
    jp +
  +:cp FIRE_2
    jp nz,+
    ld b,12
    jp +
  +:cp FIRE_3
    jp nz,+
    ld b,8
    
  +:call draw_some_flames
    ret



;==============================================================
; Changes the flames from the large ones to the smaller ones.
; 'b' contains value to add to FIRE_0 to get the right tile.
;==============================================================
draw_some_flames:
    call VRAMToHL
    ld a,FIRE_0
    add a,b
    out ($be),a
    push ix
    pop ix
    push af
        ld a,24
        out ($be),a
    pop af
    push ix
    pop ix
    
    inc a
    out ($be),a
    push ix
    pop ix
    push af
        ld a,24
        out ($be),a
    pop af
    push ix
    pop ix
    
    ; Next row down.
    ld bc,64
    add hl,bc
    call VRAMToHL

    inc a
    out ($be),a
    push ix
    pop ix
    push af
        ld a,24
        out ($be),a
    pop af
    push ix
    pop ix
    
    inc a
    out ($be),a
    push ix
    pop ix
    push af
        ld a,24
        out ($be),a
    pop af
    push ix
    pop ix
    
    ret



;==============================================================
; Goes through all blocks on the playfield and does stuff. If
; it finds a solid block, it adds it to the count. If it finds
; a destruction block, it moves it on to the next stage.
; 
; Starts: $380a.
; Ends: $3d2a.
;==============================================================
check_playfield:
    ld a,0                      ; Reset the block counter.
    ld (blocks_left),a
    
    ld hl,$380a
 --:ld a,l                      ; Point to the place in VRAM. Reading.
    out ($bf),a
    push ix
    pop ix
    ld a,h
    out ($bf),a
    push ix
    pop ix
    ld b,9                      ; Inner loop.
  -:in a,($be)                  ; Read the tile number of the block.
    push ix
    pop ix

    ; Destruction block?
    cp DEST_1
    call z,sort_out_dest_block_1
    jp z,++
    cp DEST_2
    call z,sort_out_dest_block_2
    jp z,++
    cp DEST_3
    call z,sort_out_dest_block_3
    jp z,++
    
    ; Normal block?
    cp 1
    jp z,+
    cp 5
    jp z,+
    cp 9
    jp z,+
    cp 13
    jp z,+
    cp TNT_0
    jp z,+
    jp ++                       ; None of these blocks. Check next one.
    
  +:ld a,(blocks_left)
    inc a
    ld (blocks_left),a
    
    ; Skip three bytes to the next block.
 ++:in a,($be)
    in a,($be)
    in a,($be)
    ld de,4                     ; Update 'hl', too.
    add hl,de
    djnz -

    ; One row done. If we've done the entire playfield, return.
    ld a,l
    cp $2e
    jp nz,+
    ld a,h
    cp $3d
    jp z,++
    
    ; Not at the end, so go to the next row and start again.
  +:ld de,92
    add hl,de
    jp --
    
    ; Check how many blocks are left.
 ++:ld a,(blocks_left)
    cp 0
    jp nz,++
    ld a,1
    ld (level_done),a
    
    ; Increase the level counter.
    ld a,(level)
    inc a
    daa                         ; It's a BCD, remember.
    ld (level),a
    
    ; Give them an extra life every two levels.
    bit 0,a
    jp z,++
    ld a,(lives)                ; Increase their lives.
    inc a
    daa
    ld (lives),a

 ++:ret



;==============================================================
; 
;==============================================================
sort_out_dest_block_1:
    push af
        ld a,DEST_2
        jp +

sort_out_dest_block_2:
    push af
        ld a,DEST_3
        jp +

sort_out_dest_block_3:
    push af
    push hl
        ld a,0
        
      +:call VRAMToHL
        push ix
        pop ix
        out ($be),a
        push ix
        pop ix
        push af
            ld a,0
            out ($be),a
        pop af
        push ix
        pop ix
        
        out ($be),a
        push ix
        pop ix
        push af
            ld a,0
            out ($be),a
        pop af
        push ix
        pop ix
        
        ; Next row down.
        push bc
           ld bc,64
           add hl,bc
        pop bc
        call VRAMToHL
        push ix
        pop ix
        
        out ($be),a
        push ix
        pop ix
        push af
            ld a,0
            out ($be),a
        pop af
        push ix
        pop ix
        
        out ($be),a
        push ix
        pop ix
        push af
            ld a,0
            out ($be),a
        pop af
        push ix
        pop ix
    pop hl
    pop af
    
    ret



;==============================================================
; If there is a power-up on screen, move it down.
;==============================================================
move_powerups:
    ld a,(pup_x)
    cp 0
    ret z                       ; If none are on screen, return.
    
    ; Only move the power-up every three frames.
    ld a,(pup_move)
    cp 0
    jp z,++
    cp 1
    jp z,+
    ld a,0
    ld (pup_move),a
    ret
  +:inc a
    ld (pup_move),a
    ret
    
    ; Make it flash.
 ++:ld a,(pup_flash)
    inc a
    ld (pup_flash),a
    cp 15
    jp nz,+
    ld a,0
    ld (pup_flash),a
    ld a,$3f                    ; Set it to white.
    call change_powerup_colour
    jp ++
  +:cp 7
    jp nz,++
    ld a,$2a                    ; Set it to grey.
    call change_powerup_colour
    
    
    
    ; Move it.
 ++:ld a,(pup_y)
    add a,2
    ld (pup_y),a
    
    ; Check it hasn't gone off the screen.
    cp 192
    jp z,+
    cp 193
    ret nz                      ; Nope - it's on screen.
    
  +:ld a,0
    ld (pup_x),a
    ld (pup_y),a
    ld (pup_tile),a
    ld a,$3f
    call change_powerup_colour
    ret



;==============================================================
; Does the actual colour changing of the power-ups. It sets
; colour 16 of the sprite palette to whatever is in 'a'.
;==============================================================
change_powerup_colour:
    ld hl,$c01f                 ; Address of the 16th sprite colour.
    call VRAMToHL
    push ix
    pop ix
    out ($be),a                 ; Set the new colour.
    push ix
    pop ix
    ret



;==============================================================
; Does stuff with the thrown spade - if it is indeed throwm.
;==============================================================
spade_thrower:
    in a,($01)
    ld a,(pup_spade)
    cp 1
    ret nz                  ; They don't have the power-up. Bugger off!
    
    ld a,(spade_x)
    cp 0
    ret z                   ; Not thrown! Bugger off!
    
    ld a,(spade_y)
    cp 173
    ret z                   ; Already hit the bottom. Leave it.
    cp 174
    ret z
    
    ; Only move the spade every three frames.
    ld a,(spade_move)
    cp 0
    jp z,++
    cp 1
    jp z,+
    ld a,0
    ld (spade_move),a
    ret
  +:inc a
    ld (spade_move),a
    ret
    
    ; Move it.
 ++:ld a,(spade_dir)
    cp 0
    jp z,+
    
    ld a,(spade_y)              ; Move down.
    add a,2
    jp +++
    
  +:ld a,(spade_y)              ; Move up.
    sub 2
    push af
        cp 255                  ; Make it rebound off of the top.
        jp z,+
        cp 0
        jp z,+
        cp 1
        jp z,+
        jp ++
        
      +:ld a,1                  ; Hit the top - make it go down.
        ld (spade_dir),a
 ++:pop af

+++:ld (spade_y),a
    call has_the_spade_hit_a_block
    
    ; Animate it.
    ld a,(spade_tile)
    cp SPADE_0                  ; Change to the second frame.
    jp nz,+
    ld a,SPADE_1
    jp ++
  +:cp SPADE_1
    jp nz,+
    ld a,SPADE_2
    jp ++
  +:cp SPADE_2
    jp nz,+
    ld a,SPADE_3
    jp ++
  +:cp SPADE_3
    jp nz,++
    ld a,SPADE_0
    
 ++:ld (spade_tile),a
    ret



;==============================================================
; Check if the spade hit a block.
;==============================================================
has_the_spade_hit_a_block:
    ld a,(spade_y)
    and 15
    cp 15
    ret nz                      ; Only need to check against the bottom of a block.
    
    ; Find which block it hit.
    call find_current_spade_block
    call check_what_the_ball_hit    ; Works fine for spade as well as ball.
    cp 128                          ; Hit something?
    jp z,+
    
    ; Not hit anything. If the spade's X is between $n0 and $n7 (EG; $70 and $77)
    ; then look at the block to the right.
    ld a,(spade_x)
    and 15
    cp 8
    jp p,++
    ld bc,4
    add hl,bc
    call check_what_the_ball_hit
    cp 128
    ret nz
    
  +:ld a,1
    ld (spade_dir),a            ; Redirect the spade downwards.
 ++:ret



;==============================================================
; Throw the spade. If they have the power-up
;==============================================================
throw_le_spade:
    push af
        ld a,(pup_spade)
        cp 1
        jp nz,+                 ; They don't have the power-up. Bugger off!
        
        ld a,(spade_x)
        cp 0
        jp nz,+                 ; Already thrown! Bugger off!
        
        ld a,(char_x)           ; Throw it!
        add a,8
        ld (spade_x),a
        ld a,(char_y)
        sub 8
        ld (spade_y),a
        ld a,0
        ld (spade_dir),a
  +:pop af
    ret




;==============================================================
; Finds the block behind the spade's current position.
; Block == (((y / 16) * 128) + (x / 4)) + 14336
;==============================================================
find_current_spade_block:
    ; Find the X block. Divide X by 8.
    ld a,(spade_x)
    push af
        and 15                  ; Check if we need to look left.
        cp 15
        jp p,+
    pop af
    sub 8
    jp ++
  +:pop af
    
 ++:sra a
    and 127                     ; Clear bit 7.
    sra a
    and 252                     ; Clear bit 0. Always even numbers.
    add a,2
    
    ; Find Y block. Divide Y by 16 again.
    push af
        ld a,(spade_y)
        ld b,a
    pop af
    sra b
    push af
        ld a,b
        and 127                 ; Clear bit 7.
        ld b,a
    pop af
    sra b
    sra b
    sra b
    
    ; Calculate (128 * b) + a. Add that to $3800 to get the tile address.
    ld hl,$3800
    ld d,0
    ld e,a
    add hl,de
    ld de,128
    ld a,b                      ; If b == 0, skip this bit.
    cp 0
    jr z,+
    cp 255
    jr z,+
  -:add hl,de
    djnz -
  +:ret


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
; Puts the sprite terminator at $3f00.
;==============================================================
kill_sprites:
    ld hl,$3f00
    call VRAMToHL
    ld a,$d0
    out ($be),a
    push ix
    pop ix
    ret



;==============================================================
; Re-draw the sprite.
;==============================================================
draw_sprite:
    ;call update_spin
    ld a,$00                    ; Set VRAM to point to the sprite Y table. $3f80, but we
    out ($bf),a                 ; need to set bit 6 of the second byte to 1, so $3f becomes
    push ix
    pop ix
    ld a,$7f                    ; $7f.
    out ($bf),a 
    push ix
    pop ix
    
    ; Start of the drawing bit.
    ld a,(char_y)               ; Copy Y co-ordinate to VRAM.
    out ($be),a
    push ix
    pop ix
    
    ld a,(pup_minime)           ; Shrunk?
    cp 1
    jp z,+
    
    ld a,(char_y)
    out ($be),a
    add a,8
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    
    ; Draw the ball.
  +:ld a,(ball_y)
    out ($be),a
    push ix
    pop ix
    
    ; Draw the second ball.
    ld a,(pup_dual)
    cp 1
    jp nz,+
    ld a,(ball2_y)
    out ($be),a
    push ix
    pop ix
    
    ; Show rest of ball if Deadly Ball is active.
  +:ld a,(pup_deadly)
    cp 1
    jp nz,+
    ld a,(ball_y)
    out ($be),a
    push ix
    pop ix
    add a,8
    out ($be),a
    push ix
    pop ix
    out ($be),a
    push ix
    pop ix
    
    ; Show power-ups, if any are to be shown.
   +:ld a,(pup_x)
    cp 0
    jp z,+                      ; None to show.
    
    ld a,(pup_y)                ; Copy Y co-ordinate to VRAM.
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
    push ix
    pop ix
    
    ; If the spade is thrown.
  +:ld a,(spade_x)
    cp 0
    jp z,+
    ld a,(spade_y)
    out ($be),a
    push ix
    pop ix

    ; Put the terminator character at the end.
  +:ld a,$d0
    out ($be),a
    push ix
    pop ix
    
    
    
    ld a,$80                    ; Set VRAM to point to the sprite X table.
    out ($bf),a
    push ix
    pop ix
    ld a,$7f
    out ($bf),a   
    push ix
    pop ix
    
    ld a,(char_x)               ; Copy the X co-ordinate to VRAM.
    out ($be),a
    push ix
    pop ix
    ld a,(char_tile)            ; Copy the tile number.
    out ($be),a
    push ix
    pop ix
    
    ld a,(pup_minime)           ; Shrunk?
    cp 1
    jp z,+
    
    ld a,(char_x)               ; Second part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(char_tile)
    add a,1
    out ($be),a
    push ix
    pop ix
    
    ld a,(char_x)               ; Third part of the four.
    out ($be),a
    push ix
    pop ix
    ld a,(char_tile)
    add a,2
    call character_animation_studio
    out ($be),a
    push ix
    pop ix
    
    ld a,(char_x)               ; Fourth part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(char_tile)
    add a,3
    call character_animation_studio
    out ($be),a
    push ix
    pop ix
    
    ; Ball.
  +:ld a,(ball_x)
    out ($be),a
    push ix
    pop ix
    ld a,(ball_tile)
    out ($be),a
    push ix
    pop ix
    
    ; Draw the second ball.
    ld a,(pup_dual)
    cp 1
    jp nz,+
    ld a,(ball2_x)
    out ($be),a
    push ix
    pop ix
    ld a,(ball_tile)
    out ($be),a
    push ix
    pop ix
    
    ; Show rest of ball if Deadly Ball is active.
  +:ld a,(pup_deadly)
    cp 1
    jp nz,++
    ld a,(ball_x)               ; Second part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(ball_tile)
    add a,1
    out ($be),a
    push ix
    pop ix
    
    ld a,(ball_x)               ; Third part of the four.
    out ($be),a
    push ix
    pop ix
    ld a,(ball_tile)
    add a,2
    out ($be),a
    push ix
    pop ix
    
    ld a,(ball_x)               ; Fourth part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(ball_tile)
    add a,3
    out ($be),a
    push ix
    pop ix
    
    
    
    ; Show power-ups, if any are to be shown.
 ++:ld a,(pup_x)
    cp 0
    jp z,+                      ; None to show.
    
    ld a,(pup_x)                ; Copy the X co-ordinate to VRAM.
    out ($be),a
    push ix
    pop ix
    ld a,(pup_tile)             ; Copy the tile number.
    out ($be),a
    push ix
    pop ix
    
    ld a,(pup_x)               ; Second part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(pup_tile)
    add a,1
    out ($be),a
    push ix
    pop ix
    
    ld a,(pup_x)               ; Third part of the four.
    out ($be),a
    push ix
    pop ix
    ld a,(pup_tile)
    add a,2
    out ($be),a
    push ix
    pop ix
    
    ld a,(pup_x)               ; Fourth part of the four.
    add a,8
    out ($be),a
    push ix
    pop ix
    ld a,(pup_tile)
    add a,3
    out ($be),a
    push ix
    pop ix
    
    ; If the spade is thrown.
  +:ld a,(spade_x)
    cp 0
    jp z,+
    ld a,(spade_x)
    out ($be),a
    push ix
    pop ix
    ld a,(spade_tile)
    out ($be),a
    push ix
    pop ix
    
    
    
    ; We need to keep this new sprite in place for a few frames.
  +:ld a,(dig_count)
    cp 8
    jp z,+
    inc a
    ld (dig_count),a
    jp ++
  +:sub a                   ; Reset 'dig_sprite' and 'dig_count'  to zero.
    ld (dig_sprite),a
    ld (dig_count),a
 ++:ret



;==============================================================
; Sets 'a' to different tiles if the character is supposed to
; be animated.
;==============================================================
character_animation_studio:
    ; First, check if we actually need to do any animation
    push bc
        ld b,a
        ld a,(anim_flag2)
        cp 1
        ld a,b
    pop bc
    ret z
    
    ; Find out which tile we're trying to use. The tile is in 'a'.
    cp 74
    jp z,+
    cp 75
    jp z,+
    cp 78
    jp z,++
    cp 79
    jp z,++
    cp 82
    jp z,+++
    cp 83
    jp z,+++
    cp 86
    jp z,++++
    cp 87
    jp z,++++
    ret                         ; Shouldn't get here, but handle it anyways.
    
  +:add a,14
    ret
 ++:add a,12
    ret
+++:add a,10
    ret
++++:add a,8
    ret



;==============================================================
; Sorts out the animation flags.
;==============================================================
do_animation_things:
    ld a,(anim_flag1)
    cp 8
    jp z,+
    add a,1
    ld (anim_flag1),a
    jp ++
  +:sub a
    ld (anim_flag1),a
    ld a,(anim_flag2)
    xor 1
    ld (anim_flag2),a
    
 ++:ret



;==============================================================
; Moves the ball.
;==============================================================
move_the_ball:
    ld a,(pup_deadly)
    cp 1
    jp nz,+++
    
    ld a,(dir_flag)
    inc a
    ld (dir_flag),a
    cp 10
    jp nz,+++
    ld a,0
    ld (dir_flag),a
    
    ; Animate the Deadly Ball.
  +:ld a,(ball_tile)
    cp BALL_DEADLY_0
    jp nz,+
    ld a,BALL_DEADLY_1          ; Use the second frame of animation.
    jp ++
  +:ld a,BALL_DEADLY_0          ; Use the first frame of animation.
 ++:ld (ball_tile),a
    
    
    
    ; Up (0) or down (1)?
+++:ld a,(ball_vert)
    cp 0
    jp z,move_ball_up
    
    ; Down.
    ld a,(ball_speed)
    cp 0
    jp nz,++
    push af
        ld a,(ball_move)
        cp 0
        jp z,+
    pop af
    ld a,1
    jp ++
  +:pop af
 ++:ld b,a
    ld a,(ball_y)
    add a,b
    ld (ball_y),a
    jp +++
    
    ; Up.
move_ball_up:
    ld a,(ball_speed)
    cp 0
    jp nz,++
    push af
        ld a,(ball_move)
        cp 0
        jp z,+
    pop af
    ld a,1
    jp ++
  +:pop af
 ++:ld b,a
    ld a,(ball_y)
    sub b
    ld (ball_y),a
    
    ; Left (0) or right (1)?
+++:ld a,(ball_hori)
    cp 0
    jp z,move_ball_left
    
    ; Right.
    ld a,(ball_speed)
    cp 0
    jp nz,++
    push af
        ld a,(ball_move)
        cp 0
        jp z,+
    pop af
    ld a,1
    jp ++
  +:pop af
    ld a,1
    ld (ball_move),a
    ret
    
 ++:ld b,a
    ld a,(ball_x)
    add a,b
    ld (ball_x),a
    jp +++
    
    ; Left.
move_ball_left:
    ld a,(ball_speed)
    cp 0
    jp nz,++
    push af
        ld a,(ball_move)
        cp 0
        jp z,+
    pop af
    ld a,1
    jp ++
  +:pop af
    ld a,1
    ld (ball_move),a
    ret
    
 ++:ld b,a
    ld a,(ball_x)
    sub b
    ld (ball_x),a
    
+++:ld a,0
    ld (ball_move),a
    call check_if_ball_hit_stuff
    ret



;==============================================================
; Checks if the ball collided with anything; walls or blocks.
; It also checks if it hit the floor, causing the player to
; lose a life. It doesn't check player to ball collisions.
;==============================================================
check_if_ball_hit_stuff:
    call check_if_ball_hit_side_walls
    call check_if_ball_hit_vertical_limits

    ; Find the block behind the ball.
    call find_current_ball_block
    
    ; If it's hit what is possibly the right-hand border of a block.
    ld a,(ball_x)
    and 15
    cp 8
    jp nz,+
    ; Check the ball is moving left.
    ld a,(ball_hori)
    cp 0
    jp nz,+
    
    ; Find the address of the block to the left of the ball.
    ld hl,(ball_block)
    and a                       ; Clear carry.
    ld bc,4
    sbc hl,bc
    call check_what_the_ball_hit
    
    cp 128                      ; Change direction?
    jp nz,+++
    ld a,(pup_deadly)
    cp 1
    ret z
    ld a,1                      ; Yup.
    ld (ball_hori),a
    ret
    
    ; If it's hit what could be the left hand side of a block. Check if it's a
    ; multiple of sixteen.
  +:ld a,(ball_x)
    ld b,9                      ; Counter.
    ld c,32                     ; Start point.
  -:cp c                        ; Does it match the X position?
    jp z,+                      ; If it does, break.
    push af
        ld a,c
        add a,16                ; Add another 16 to c.
        ld c,a
    pop af
    djnz -                      ; repeat loop until find a multiple or do it 9 times.
    jp +++                      ; Nope - not a multiple of 16. Skip.
    
    ; Check the ball is moving right.
  +:ld a,(ball_hori)
    cp 1
    jp nz,+++
    
    ; Find the address of the tile to the right of the ball.
    ld hl,(ball_block)
    call check_what_the_ball_hit
    
    cp 128                      ; Change direction?
    jp nz,+++
    ld a,(pup_deadly)
    cp 1
    ret z
    ld a,0                      ; Yup.
    ld (ball_hori),a
    ret
    
    
    
    ; See if it has hit the bottom of what could be a block.
+++:ld a,(ball_y)
    and 14
    cp 14
    jp nz,+
    ; Check the ball is going up.
    ld a,(ball_vert)
    cp 0
    jp nz,+
    
    ; Find tile above the ball.
    ld hl,(ball_block)
    call check_what_the_ball_hit
    
    cp 128                      ; Change direction?
    jp nz,+++
    ld a,(pup_deadly)
    cp 1
    ret z
    ld a,1                      ; Yup.
    ld (ball_vert),a
    ret
    
    ; If it's hit the top of what could be a block.
  +:ld a,(ball_y)
    and 7
    cp 7
    jp nz,+++
    ; Check ball is going down.
    ld a,(ball_vert)
    cp 1
    jp nz,+++
    
    ; Find the tile below the ball.
    ld hl,(ball_block)
    ld bc,128
    add hl,bc
    call check_what_the_ball_hit
    
    cp 128                      ; Change direction?
    jp nz,+++
    ld a,(pup_deadly)
    cp 1
    ret z
    ld a,0                      ; Yup.
    ld (ball_vert),a
    ret
    
    
    
    ; Restore the character's position.
+++:call check_what_the_ball_hit
    cp 128
    ret nz
    
    ld a,(pup_deadly)
    cp 1
    ret z                       ; Only redirect if not the deadly ball.
    
    ld a,(ball_hori)
    xor 1
    ld (ball_hori),a
    ld a,(ball_vert)
    xor 1
    ld (ball_vert),a
    ret



;==============================================================
; Check what tile is located at 'hl', which is the address of
; the top-left tile of a block surrounding the ball.
; 
; If it's STEEL or empty, ignore. Otherwise, start destroying!
;==============================================================
check_what_the_ball_hit:
    ; Find the tile number. The tile at the top-left of the block
    ld a,l                      ; As this data is stored in VRAM, we have to access it
    out ($bf),a                 ; via the VDP.
    ld a,h                      ; Read mode, so no need to 'OR' it with $40.
    out ($bf),a
    push ix
    pop ix
    in a,($be)
    
    ; What is it?
    cp STEEL                    ; Steel?
    jp z,+
    cp BORDER                   ; Left-hand steel/border.
    jp z,+
    cp 0
    ret z
    cp FIRE_0
    ret z
    cp FIRE_1
    ret z
    cp FIRE_2
    ret z
    cp FIRE_3
    ret z
    cp DEST_1                   ; Go through destruction blocks.
    ret z
    cp DEST_2
    ret z
    cp DEST_3
    ret z
    
    ; It's a block. Kill! Kill! Kill!
    ld (ball_block),hl
    ld (the_block),hl
    cp TNT_0
    call z,detonate_tnt
    ;call remove_the_blocks_started
    call update_players_score
    ;call remove_the_block
    call destroy_the_block
    call give_player_random_powerup
  +:ld a,128                    ; To let it know that it needs to change direction.
    
    ret



;==============================================================
; Check it hit the walls. No need to check directions, since
; they can only come at them from one side.
;==============================================================
check_if_ball_hit_side_walls:
    ld a,(ball_x)
    cp 40                       ; Left wall.
    jp z,+
    cp 39
    jp z,+
    cp 38
    jp nz,++
  +:ld a,1                      ; Set it to move right.
    ld (ball_hori),a
    ld a,40
    ld (ball_x),a
    ret
    
 ++:cp 175                      ; Right wall.
    jp z,+
    cp 176
    jp z,+
    cp 177
    jp nz,++
  +:ld a,0                      ; Set it to move left.
    ld (ball_hori),a
    ld a,175
    ld (ball_x),a
    ret
    
    ; If it's a deadly ball, the limits are smaller.
 ++:ld a,(pup_deadly)
    cp 1
    ret nz
    ld a,(ball_x)
    cp 165
    jp z,+
    cp 166
    ret nz
  +:ld a,0                      ; Set it to move left.
    ld (ball_hori),a
    ret



;==============================================================
; Check if the ball hit the top or the bottom. Hitting the top
; just reverses the direction. Hitting the bottom means losing
; a life. Remember children; don't let your balls touch your
; bottom.
;==============================================================
check_if_ball_hit_vertical_limits:
    ld a,(ball_y)
    cp 255                      ; The very top.
    jp z,+
    cp 0
    jp z,+
    cp 1
    jp nz,++
  +:ld a,1
    ld (ball_vert),a
    ld (ball_y),a
    ret
    
 ++:cp 174                      ; The very bottom.
    jp z,+
    cp 175
    jp nz,++
  +:call ball_hit_the_bottom_player_sucks
    ret
    
    ; If it's a deadly ball, the limits are smaller.
 ++:ld a,(pup_deadly)
    cp 1
    ret nz
    ld a,(ball_y)
    cp 165
    jp z,+
    cp 166
    ret nz
  +:ld a,0                      ; Set it to move left.
    ld (ball_vert),a
    call start_a_fire
    ret



;==============================================================
; Called when the player misses the ball and it hits the
; bottom. Player loses a life and starts again.
;==============================================================
ball_hit_the_bottom_player_sucks:
    ; Dual ball? They can lose one and still go on.
    ld a,(pup_dual)
    cp 1
    jp nz,+++
    ld a,(ball_which)           ; With which ball are we dealing?
    cp 1
    jp z,+
    
    ; Ball one gone. Keep ball 2.
    ld hl,(ball2_x)
    ld (ball_x),hl
    jp ++
    
    ; Ball two gone. Keep ball one.
  +:ld hl,0
    ld (ball2_x),hl
    
    ; Reset stuff.
 ++:ld a,0
    ld (pup_dual),a             ; Disable Dual Ball power-up.
    ld hl,$3d32
    call clear_single_powerup
    ret
    
    ; Remove a life.
+++:ld a,(lives)
    ;dec a
    sub 1
    daa
    ld (lives),a
    
    ld a,1
    ld (level_done),a
    ret



;==============================================================
; When the Deadly Ball hits the bottom, it bounces up again and
; starts a fire on the tile it hit.
;==============================================================
start_a_fire:
    call find_current_ball_block
    ld bc,64
    add hl,bc
    ld b,0
    call draw_some_flames
    
    ; Find the column.
    ld a,(ball_x)
    sra a                   ; Divide it by 16 by way of 4 bit-shifts right.
    sra a
    sra a
    sra a 
    sub 2                   ; Should now be between 0 and 8.
    
    ; Store it.
    cp 0
    jp nz,+
    ld a,1
    ld (fire_0),a
    jp ++
  +:cp 1
    jp nz,+
    ld a,1
    ld (fire_1),a
    jp ++
  +:cp 2
    jp nz,+
    ld a,1
    ld (fire_2),a
    jp ++
  +:cp 3
    jp nz,+
    ld a,1
    ld (fire_3),a
    jp ++
  +:cp 4
    jp nz,+
    ld a,1
    ld (fire_4),a
    jp ++
  +:cp 5
    jp nz,+
    ld a,1
    ld (fire_5),a
    jp ++
  +:;cp 6
    cp 246
    jp nz,+
    ld a,1
    ld (fire_6),a
    jp ++
  +:;cp 7
    cp 247
    jp nz,+
    ld a,1
    ld (fire_7),a
    jp ++
  +:;cp 8
    cp 248
    jp nz,+
    ld a,1
    ld (fire_8),a
    
 ++:ret



;==============================================================
; Finds the block behind the ball's current position.
; Block == (((y / 16) * 128) + (x / 4)) + 14336
;==============================================================
find_current_ball_block:
    ; Find the X block. Divide X by 8.
    ld a,(ball_x)
    sra a
    and 127                     ; Clear bit 7.
    sra a
    and 252                     ; Clear bit 0. Always even numbers.
    add a,2
;    ld ($c050),a
    
    ; Find Y block. Divide Y by 16 again.
    push af
        ld a,(ball_y)
        ld b,a
    pop af
    sra b
    push af
        ld a,b
        and 127                 ; Clear bit 7.
        ld b,a
    pop af
    sra b
    sra b
    sra b
;    push bc
;        ld a,b
;        ld ($c051),a
;    pop bc
    
    ; Calculate (128 * b) + a. Add that to $3800 to get the tile address.
    ld hl,$3800
    ld d,0
    ld e,a
    add hl,de
    ld de,128
    ld a,b                      ; If b == 0, skip this bit.
    cp 0
    jr z,+
    cp 255
    jr z,+
  -:add hl,de
    djnz -
  +:ld (ball_block),hl
    
;    ld a,l                  ; As this data is stored in VRAM, we have to access it
;    out ($bf),a             ; via the VDP.
;    ld a,h
;    out ($bf),a
;    
;    ld a,$18
;    out ($be),a
    
    ret



;==============================================================
; "Blow up" a 3x3 area centred on the TNT block, which is at
; 'hl'. It must not blow up steel - but anything else can be
; destroyed.
;==============================================================
detonate_tnt:
    push hl
        ; Top-left block.
        ld de,132
        and a                   ; Clear the carry flag.
        sbc hl,de               ; Find the top-left block.
        call tnt_kill_block_hl  ; Kill the block?
    pop hl
    push hl
        ; Top-centre block.
        ld de,128
        and a
        sbc hl,de
        call tnt_kill_block_hl
    pop hl
    push hl
        ; Top-right block.
        ld de,124
        and a
        sbc hl,de
        call tnt_kill_block_hl
    pop hl
    
    
    
    push hl
        ; Middle-left block.
        ld de,4
        and a
        sbc hl,de
        call tnt_kill_block_hl
    pop hl
    push hl
        ; centre block.
        call tnt_kill_block_hl
    pop hl
    push hl
        ; Middle-right block.
        ld de,4
        add hl,de
        call tnt_kill_block_hl
    pop hl
    
    
    
    push hl
        ; Bottom-left block.
        ld de,124
        add hl,de
        call tnt_kill_block_hl
    pop hl
    push hl
        ; Bottom-centre block.
        ld de,128
        add hl,de
        call tnt_kill_block_hl
    pop hl
    push hl
        ; Bottom-right block.
        ld de,132
        add hl,de
        call tnt_kill_block_hl
    pop hl
    ret



;==============================================================
; Sees if the block pointed to by 'hl' is destroyable.
;==============================================================
tnt_kill_block_hl:
    ld a,l                      ; We do it this way, instead of using 'VRAMToHL'
    out ($bf),a                 ; because we need to read from VRAM, not write
    push ix
    pop ix
    ld a,h                      ; to it. 'VRAMToHL' ORs 'h' with $40, which is
    out ($bf),a                 ; only good when writing.
    push ix
    pop ix
    
    in a,($be)                  ; Read the tile from VRAM.
    push ix
    pop ix
    cp 0
    ret z
    cp BORDER                   ; Left side's steel blocks?
    ret z
    cp STEEL                    ; Steel?
    ret z
    cp TNT_0                    ; Chain reaction!
;    push hl
;        call z,detonate_tnt
;    pop hl
    
    ld b,10                     ; Give them ten points.
  -:call update_players_score
    djnz -
    ld (the_block),hl           ; Next function reads from here, not 'hl'.
    ;call remove_the_block
    call destroy_the_block
    ret



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
    
    ; Nope, there is a block there. Check if they are right up against it, or a 
    ; few pixels to the right of it. Only stop if they are right up against it.
    ld a,(char_x)
    sub 40                      ; The furthest left they can go is 56, so sub that to make the maths easier.
    and 15                      ; Block borders are multiples of 16. If the player's x
    cp 0                        ; position is not a multiple of 16, allow them to move left.
    jp z,++                     ; No room to go left.
    
  +:ld a,0                      ; If 'b' is 0, then they can move. 
    ld b,a                      ; If it gets here, then they can move.
    
 ++:ret                         ; Go back.



;==============================================================
; If there is no block to the left of the player's current
; position, allow them to move left a bit.
;==============================================================
move_player_left:
    push af
    ; Change the sprite to face left.
    ld a,(pup_minime)
    cp 1
    jp nz,+
    ld a,MINI_CHAR_LEFT
    ld (char_tile),a
    jp ++
    
  +:ld a,CHAR_LEFT
    ld (char_tile),a
    
 ++:ld a,(char_x)
    cp 40
    jp z,+
    cp 41
    jp z,+
    
    ld a,(char_speed)           ; It looks like nothing is blocking them, so move.
    ld b,a
    ld a,(char_x)
    sub b
    ld (char_x),a
     
    ; Sort out the animation flag.
  +:call do_animation_things
    
    ; If the player hasn't launched the ball, move it as well.
    ld a,(ball_launch)
    cp 0
    jp nz,+
    ld a,(char_x)
    add a,4
    ld (ball_x),a
    ld a,0
    ld (ball_hori),a
    
    ; Continue with the next part of the mission to take over the world.
  +:call player_in_flames
    pop af
    ret



;==============================================================
; If there is no block to the right of the player's current
; position, allow them to move right a bit.
;==============================================================
move_player_right:
    push af
    ; Change the sprite to face right.
    ld a,(pup_minime)
    cp 1
    jp nz,+
    ld a,MINI_CHAR_RIGHT
    ld (char_tile),a
    
    ld a,(char_x)
    cp 175
    jp z,+++
    cp 176
    jp z,+++
    jp ++
    
  +:ld a,CHAR_RIGHT
    ld (char_tile),a
    
    ld a,(char_x)
    cp 167
    jp z,+
    cp 168
    jp z,+
    
 ++:ld a,(char_speed)           ; It looks like nothing is blocking them, so move.
    ld b,a
    ld a,(char_x)
    add a,b
    ld (char_x),a
     
    ; Sort out the animation flag.
+++:
  +:call do_animation_things
    
    ; If the player hasn't launched the ball, move it as well.
    ld a,(ball_launch)
    cp 0
    jp nz,+
    ld a,(char_x)
    add a,4
    ld (ball_x),a
    ld a,1
    ld (ball_hori),a
    
    ; Continue with the next part of the mission to take over the world.
  +:call player_in_flames
    pop af
    ret



;==============================================================
; Has the player walked into flames? If so, Trogdor time!
;==============================================================
player_in_flames:
    ld a,(pup_fireman)          ; Fire-proof?
    cp 1
    ret z
    
    ; What tile it was?
    call find_current_block
    cp FIRE_0
    jp z,+
    cp FIRE_1
    jp z,+
    cp FIRE_2
    jp z,+
    cp FIRE_3
    jp z,+
    ret
    
  +:call char_grill_player
    ret



;==============================================================
; Two or more sprites have collided. Find out what they were.
;==============================================================
sprite_to_sprite_collision:
    push af
    push bc
        call did_ball_hit_player
        call did_player_collect_their_spade
        call did_player_catch_powerup

        ; Check ball 2.
        ld a,(pup_dual)
        cp 1
        jp nz,+
        ld hl,(ball_x)          ; Backup the ball's location.
        ld (ball_back_x),hl
        ld a,(ball_vert)
        ld (ball_back_v),a
        ld hl,(ball2_x)         ; Copy ball two to ball one.
        ld (ball_x),hl
        ld a,(ball2_vert)
        ld (ball_vert),a
        call did_ball_hit_player
        ld hl,(ball_back_x)     ; Restore backups..
        ld (ball_x),hl
        ld a,(ball_vert)
        ld (ball2_vert),a
        ld a,(ball_back_v)
        ld (ball_vert),a
  +:pop bc
    pop af
    ret



;==============================================================
; Check if the ball hit the player.
;==============================================================
did_ball_hit_player:
    ld a,(spade_x)
    cp 0
    ret nz                      ; Check they have their spade.
    
    ld a,(pup_minime)           ; Shrunk?
    cp 1
    jp nz,+
    ld a,(ball_y)
    cp 167
    jp ++
    
  +:ld a,(ball_y)
    cp 159                      ; Check it has reached the player vertically.
 ++:ret m                       ; Apparently not. Screw them. Screw them all to hell.
    cp 183
    ret p
    
    ; Check the ball against the player's X position.
    ld a,(char_x)
    sub 8                       ; Check the left side.
    ld b,a
    ld a,(ball_x)
    cp b
    ret m                       ; Too far left.
    
    push af
        ld a,(pup_minime)
        cp 1
        jp nz,+
        ld a,b
        add a,16
        jp ++
        
      +:ld a,b
        add a,24                ; Check the right side.
     ++:ld b,a
    pop af
    cp b
    ret p                       ; Too far right.
    
    ; Okay, they've definitely hit the player - reverse veritcal direction.
    ld a,0
    ld (ball_vert),a
    
    ; Hit by the Deadly Ball?
    ld a,(pup_deadly)
    cp 1
    jp nz,+
    ld a,(pup_fireman)          ; Fire-proof?
    cp 1
    jp z,+
    call char_grill_player
    ret
    
    ; If they hit lower down, change horizontal direction. Are they low enough?
  +:ld a,(pup_minime)
    cp 1
    jp nz,+
    ld a,(ball_y)
    cp 171
    jp +++

  +:ld a,(ball_y)
    cp 163
+++:ret m

    ; Low enough. Which side?
    ld a,(char_x)
    add a,8                     ; Find middle of the player.
    ld b,a
    ld a,(ball_x)
    cp b
    jp p,+
    ld a,0                      ; Left.
    jp ++
  +:ld a,1                      ; Right.
 ++:ld (ball_hori),a
    
    ret



;==============================================================
; If player collects their dropped spade.
;==============================================================
did_player_collect_their_spade:
    ld a,(spade_x)
    cp 0
    ret z                       ; Check they don't have their spade.
    
    ld a,(spade_y)
    cp 159                      ; Check it has reached the player vertically.
    ret m                       ; Apparently not. Screw them. Screw them all to hell.
    
    ; Check the ball against the player's X position.
    ld a,(char_x)
    sub 8                       ; Check the left side.
    ld b,a
    ld a,(spade_x)
    cp b
    ret m                       ; Too far left.
    
    push af
        ld a,b
        add a,24                ; Check the right side.
        ld b,a
    pop af
    cp b
    ret p                       ; Too far right.
    
    ; Remove the spade.
    ld a,0
    ld (spade_x),a
    ld (spade_y),a
    ld (spade_dir),a
    ld (spade_move),a
    ld a,SPADE_0
    ld (spade_tile),a
    
    ret



;==============================================================
; Check if the power-up hit the player.
;==============================================================
did_player_catch_powerup:
    ld a,(pup_x)
    cp 0
    ret z                       ; No power-ups on screen. No need to check further.
    
    ; Check the Y position.
    ld a,(pup_y)
    cp 151
    ret m
    
    ; Check the power-up's X position against that of the player.
    ld a,(char_x)
    sub 16                      ; Left side.
    ld b,a
    ld a,(pup_x)
    cp b
    ret m                       ; Too far left.
    
    push af
        ld a,b
        add a,32                ; Check the right side.
        ld b,a
    pop af
    cp b
    ret p                       ; Too far right.
    
    ; They got it. Find what it was and give them the power.
    ld a,(pup_tile)
    cp POWERUP_SPADE
    jp z,player_got_powerup_spade
    cp POWERUP_DEADLY
    jp z,player_got_powerup_deadly
    cp POWERUP_TNT
    jp z,player_got_powerup_tnt
    cp POWERUP_DUAL
    jp z,player_got_powerup_dual
    cp POWERUP_BSPEED
    jp z,player_got_powerup_bspeed
    cp POWERUP_PSPEED
    jp z,player_got_powerup_pspeed
    cp POWERUP_MINIME
    jp z,player_got_powerup_minime
    
    jp reset_the_power_up_stuff ; Unknown power-up...



;==============================================================
; Do the stuff for the spade-throwing power-up.
;==============================================================
player_got_powerup_spade:
    ld a,1
    ld (pup_spade),a
    ld hl,$3b32
    
    ; Set the tile.
    ld a,SPADE_0
    ld (spade_tile),a
    
    jp reset_the_power_up_stuff

player_got_powerup_deadly:
    ; Can't have it if you have Dual Ball.
    ld a,(pup_dual)
    cp 1
    jp z,reset_the_power_up_stuff_no_show
    
    ld a,1
    ld (pup_deadly),a
    ld hl,$3b3a
    
    ; Set the right tile and set the speed.
    ld a,BALL_DEADLY_0
    ld (ball_tile),a
    ld a,2
    ld (ball_speed),a
    
    ; Redirect the ball back in if it is too far right.
    ld a,(ball_x)
    cp 166
    jp m,+
    ld a,0
    ld (ball_hori),a
    
    ; Redirect the ball up if it's too far down.
  +:ld a,(ball_y)
    cp 166
    jp m,+
    ld a,0
    ld (ball_vert),a
    
  +:jp reset_the_power_up_stuff

player_got_powerup_tnt:
    ld a,1
    ld (pup_tnt),a
    
    ; Convert some blocks to TNT.
    call give_the_player_some_wmd
    
    ld hl,$3bb6
    jp reset_the_power_up_stuff

player_got_powerup_dual:
    ; Can't have it if you have Deadly Ball.
    ld a,(pup_deadly)
    cp 1
    jp z,reset_the_power_up_stuff_no_show
    
    ; Already have Dual Ball?
    ld a,(pup_dual)
    cp 1
    jp z,reset_the_power_up_stuff_no_show
    
    ld a,1
    ld (pup_dual),a
    
    ; Give the player a second ball.
    ld a,(char_x)
    ld (ball2_x),a
    ld a,(char_y)
    sub 9
    ld (ball2_y),a
    ld a,0
    ld (ball2_vert),a
    ld a,1
    ld (ball2_hori),a
    
    ld hl,$3d32
    jp reset_the_power_up_stuff

player_got_powerup_bspeed:
    ld a,1
    ld (pup_pspeed),a
    ld a,2
    ld (ball_speed),a
    
    ; Clear slow-down power-up.
    ld a,0
    ld (pup_pspeed),a
    ld hl,$3c3a
    call clear_single_powerup
    
    ld hl,$3c32
    jp reset_the_power_up_stuff

player_got_powerup_pspeed:
    ld a,1
    ld (pup_pspeed),a
    ld a,0
    ld (ball_speed),a
    
    ; Clear speed-up power-up.
    ld a,0
    ld (pup_bspeed),a
    ld hl,$3c32
    call clear_single_powerup
    
    ld hl,$3c3a
    jp reset_the_power_up_stuff

player_got_powerup_minime:
    ld a,1
    ld (pup_minime),a
    ld hl,$3cb6
    
    ; Shrink them.
    ld a,(char_tile)
    cp CHAR_RIGHT
    jp nz,+
    ld a,MINI_CHAR_RIGHT
    ld (char_tile),a
    ld a,175
    ld (char_y),a
    jp reset_the_power_up_stuff
    
  +:ld a,MINI_CHAR_LEFT
    ld (char_tile),a
    ld a,175
    ld (char_y),a
    
    jp reset_the_power_up_stuff



;==============================================================
; Resets the power-up stuff back to zero.
;==============================================================
reset_the_power_up_stuff:
    call show_powerup_on_the_hud
reset_the_power_up_stuff_no_show:
    ld a,0
    ld (pup_x),a
    ld (pup_y),a
    ld (pup_tile),a
    ld (pup_move),a
    ld a,$3f
    call change_powerup_colour
    
    ret



;==============================================================
; Shows the image of this power-up on the HUD. 'hl' must have
; the address of where to put the first tile in the tilemap.
;==============================================================
show_powerup_on_the_hud:
    call VRAMToHL
    push ix
    pop ix
    
    ld a,(pup_tile)             ; First tile.
    out ($be),a
    push ix
    pop ix
    push af
        ld a,8                  ; It needs to use the sprite palette.
        out ($be),a
        push ix
        pop ix
    pop af
    
    inc a                       ; Second tile.
    out ($be),a
    push ix
    pop ix
    push af
        ld a,8
        out ($be),a
        push ix
        pop ix
    pop af
    
    ; Second row of tiles.
    push bc
        ld bc,64
        add hl,bc
    pop bc
    call VRAMToHL
    
    inc a                       ; Third tile.
    out ($be),a
    push ix
    pop ix
    push af
        ld a,8
        out ($be),a
        push ix
        pop ix
    pop af
    
    inc a                       ; Final tile.
    out ($be),a
    push ix
    pop ix
    ld a,8
    out ($be),a
    push ix
    pop ix
    
    ret



;==============================================================
; Removes a 4-block area, starting at 'hl'.
;==============================================================
clear_single_powerup:
    call VRAMToHL
    push ix
    pop ix
    
    ld a,0                      ; Clear top two tiles.
    ld b,4
  -:out ($be),a
    push ix
    pop ix
    djnz -
    
    ld bc,64                    ; Clear bottom row of tiles.
    add hl,bc
    push ix
    pop ix
    call VRAMToHL
    ld a,0
    ld b,4
  -:out ($be),a
    push ix
    pop ix
    djnz -
    
    ret


;==============================================================
; Char the player and kill them off, since they were burnt.
;==============================================================
char_grill_player:
    ld a,128
    ld (dead_count),a
    ret



;==============================================================
; Char the player and kill them off, since they were caught in
; the blast of TNT.
;==============================================================
check_dead_count:
    ld a,(dead_count)
    cp 0
    ret z                       ; Not set? Get orf me land!
    cp 128
    jp nz,+
    ld hl,$c014                 ; Colour 5 of sprite palette.
    call VRAMToHL
    push ix
    pop ix
    ld hl,data_palette_char     ; Load data start address.
    ld b,9                      ; Only replacing 7 colours.
    ld c,$be
    call wait_for_vblank
    otir                        ; Do it.
    
  -:call wait_for_vblank
    dec a
    cp 1                        ; We break at 1, so we can tell if it was set.
    jp z,+
    cp 70
    call z,make_eyes_black      ; Make their eyes blink.
    cp 35
    call z,make_eyes_white      ; Reset the eye colour.
    jp -

  +:ld (dead_count),a
    ld (level_done),a
    
    ; Remove a life.
    ld a,(lives)
    sub 1
    daa
    ld (lives),a
    
    ret



;==============================================================
; Sets the colour of Digger Chan's eyes to white.
;==============================================================
make_eyes_white:
    push af
        ld a,$3f
        call change_eye_colour
    pop af
    ret



;==============================================================
; Sets the colour of Digger Chan's eyes to black.
;==============================================================
make_eyes_black:
    push af
        ld a,$00
        call change_eye_colour
    pop af
    ret



;==============================================================
; Does the actual colour changing of the eyes. It sets colour
; 13 of the sprite palette to whatever is in 'a'.
;==============================================================
change_eye_colour:
    ld hl,$c01c                 ; Address of the 13th sprite colour.
    call VRAMToHL
    push ix
    pop ix
    out ($be),a                 ; Set the new colour.
    push ix
    pop ix
    ret



;==============================================================
; Goes through the blocks on screen and randomly converts them
; to TNT blocks.
;==============================================================
give_the_player_some_wmd:
    ld hl,$380a
 --:ld a,l                      ; Point to the place in VRAM. Reading.
    out ($bf),a
    ld a,h
    out ($bf),a
    ld b,9                      ; Inner loop.
  -:in a,($be)                  ; Read the tile number of the block.
    push ix
    pop ix

    ; Normal block?
    cp 1
    jp z,+
    cp 5
    jp z,+
    cp 9
    jp z,+
    cp 13
    jp z,+
    jp ++                       ; None of these blocks. Check next one.
    
    ; Block found. Seed the random number with the address.
;  +:add a,h
;    add a,l
;    call generate_a_random_number
;    srl a
;    srl a                       ; 1 in 16 chance.
;    cp 0
;    jp z,+
;    cp 7
;    jp z,+
;    cp 8
;    jp z,+
;    cp 15
;    jp nz,++
  +:call draw_tnt               ; Turn it into TNT.
    ld a,l                      ; Point to the place in VRAM. Reading.
    out ($bf),a
    ld a,h
    out ($bf),a
    push ix
    pop ix
    in a,($be)
    push ix
    pop ix
    
    ; Skip three bytes to the next block.
 ++:in a,($be)
    push ix
    pop ix
    in a,($be)
    push ix
    pop ix
    in a,($be)
    push ix
    pop ix
    ld de,4                     ; Update 'hl', too.
    add hl,de
    djnz -

    ; One row done. If we've done the entire playfield, return.
    ld a,l
    cp $2e
    jp nz,+
    ld a,h
    cp $3d
    jp z,++
    
    ; Not at the end, so go to the next row and start again.
  +:ld de,92
    add hl,de
    jp --
 ++:ret



;==============================================================
; Dig down a row.
;==============================================================
do_digging:
    call find_current_block             ; Find the memory address of the current block.
    
    ld a,1                              ; Set the flag to show they're digging down.
    ld (dig_sprite),a
;    call draw_sprite
;    pop af                              ; Pushed during the above call and not popped.
    
    push hl
        call remove_the_blocks_start    ; Remove the blocks below the player.
        
        ld a,16                         ; Set the button pressed flag on.
        ;ld (flag_press),a               ; Set a 16 vblank wait between button presses.
    pop hl
    
    jp draw_sprite
    


;==============================================================
; Find the memory address of the block which is under the player.
; This is the block the player will move to if they dig down.
;==============================================================
find_current_block:
    ld a,(pup_minime)
    cp 1
    jp nz,+
    ld a,(char_x)
    sub 4
    jp ++
    
  +:ld a,(char_x)           ; Find the column.
 ++:sra a                   ; Divide it by 16 by way of 4 bit-shifts right.
    sra a
    sra a
    sra a 
    sub 2                   ; Should now be between 0 and 8.
    
    cp 0
    jp nz,+
    ld hl,$3d4a
    jp ++
  +:cp 1
    jp nz,+
    ld hl,$3d4e
    jp ++
  +:cp 2
    jp nz,+
    ld hl,$3d52
    jp ++
  +:cp 3
    jp nz,+
    ld hl,$3d56
    jp ++
  +:cp 4
    jp nz,+
    ld hl,$3d5a
    jp ++
  +:cp 5
    jp nz,+
    ld hl,$3d5e
    jp ++
  +:;cp 6
    cp 246
    jp nz,+
    ld hl,$3d62
    jp ++
  +:;cp 7
    cp 247
    jp nz,+
    ld hl,$3d66
    jp ++
  +:;cp 8
    cp 248
    jp nz,+
    ld hl,$3d6a
    
 ++:ld a,l                      ; Point to the place in VRAM. Reading.
    out ($bf),a
    push ix
    pop ix
    ld a,h
    out ($bf),a
    push ix
    pop ix
    in a,($be)                  ; Find the tile number.
    push ix
    pop ix
    
    ret



;==============================================================
; Replace the 2x2 block located at (the_block) with explosion.
;==============================================================
destroy_the_block:
    push hl
        call VRAMToHL
        
        ld a,DEST_1             ; Remove the top two blocks.
        out ($be),a
        push ix
        pop ix
        sub a
        out ($be),a
        push ix
        pop ix
        ld a,DEST_1
        out ($be),a
        push ix
        pop ix
        sub a
        out ($be),a
        push ix
        pop ix
        
        ld a,l                  
        sub 192                 ; We remove 192 instead of 64 so that it loops around, since the max is 255.
        out ($bf),a
        ld a,h
        or $40
        out ($bf),a
        
        ld a,DEST_1             ; Remove the bottom two blocks.
        out ($be),a
        push ix
        pop ix
        sub a
        out ($be),a
        push ix
        pop ix
        ld a,DEST_1
        out ($be),a
        push ix
        pop ix
        sub a
        out ($be),a
        push ix
        pop ix
        
        ; Find the co-ords of this block, then replace it with a explosion sprite.
        call tile_address_to_coords
    pop hl
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
        
        ; Find the co-ords of this block, then replace it with a explosion sprite.
        call tile_address_to_coords
    pop hl
    ret



;==============================================================
; Finds the pixel co-ordinates of a tile within the pit.
;==============================================================
tile_address_to_coords:
    ld a,h                      ; Get the rough Y co-ord. 16 pixels off, sometimes.
    sub $38
    sla a                       ; Multiply by 32.
    sla a
    sla a
    sla a
    sla a
    ld (explode_y),a
    ld a,l
    bit 7,a                     ; Second part of Y-finding.
    jp z,+
    ld a,(explode_y)
    add a,16
    ld (explode_y),a            ; Now have exact Y co-ord.
    
    ; Find X position.
  +:ld a,l
    and 127                     ; Ignore the MSB.
    sub 10                      
    sla a
    sla a
    add a,40
    ld (explode_x),a
    ret



;==============================================================
; Wrapper for 'check_block_destruction'. It copies the ball's
; block address to the address that would normally be used by
; the player. This is so that it destroys the right blocks.
;==============================================================
check_block_destruction_ball:
    ld hl,(ball_block)
    ld (the_block),hl

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
    cp 25                       ; Can't dig through steel, either.
    ret z
    
remove_the_blocks_started:
    ld (block_type),a           ; Save block type to RAM.
    ld a,(dest_level)           ; Find the destruction level.
    cp 0                        ; Is it zero?
    jp nz,+                     ; skip if not.
    ld (block_back),hl          ; First time, so save a backup of the block.
    ld a,10                     ; Increase the destruction level counter.
    ld (dest_level),a           ; Save it.

  +:call set_destruct_1         ; Set it to be broken.
    
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
    push hl
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

        ; Last level of destruction, so remove it.
      +:ld a,0                  ; Use block zero.
        ld (dest_level),a       ; This is the last time, so clear it.
        
     ++:ld b,a                  ; Store it in 'b'.
        
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
        ld a,8                  ; Make it use the sprite palette.
        push ix
        pop ix
        out ($be),a
        ld a,b
        push ix
        pop ix
        out ($be),a
        ld a,8                  ; Make it use the sprite palette.
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
        ld a,8                  ; Make it use the sprite palette.
        push ix
        pop ix
        out ($be),a
        ld a,b
        push ix
        pop ix
        out ($be),a
        ld a,8                  ; Make it use the sprite palette.
        push ix
        pop ix
        out ($be),a
    pop bc
    pop hl
    
    ; Should we replace the removed block with TNT?
    push hl
        ld a,(dest_level)
        cp 0
        jp nz,+
        ;call give_player_random_block
  +:pop hl
    
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
        
        call show_players_score     ; Update the display to show the score.
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
; 'a' should contain the slot/bank which the data is in. If it
; is 2, we need to removed $4000 from the address contained
; in 'hl', so that it points to the right data.
;==============================================================
sort_out_the_paging_crap_yarr:
    cp 2
    jp z,+                      ; We deal with data in bank 2.
    cp 3
    jp z,+                      ; And also bank 3.
    ld ($ffff),a
    ret
    
  +:push af
        ld ($ffff),a

        ld a,(level)
        cp 7
        jp nz,+
        ld a,h                  ; 'l' is the higher byte we need to alter.
        sub $40
        ld h,a
  +:pop af
    ret
    
 ++:push af
        ld ($fffe),a
        ld a,h
        sub $80
        ld h,a
    pop af
    ret



;==============================================================
; Same as above, but 'ix' instead of 'hl'. It's a freaking
; nasty way of doing it, I know...
;==============================================================
sort_out_the_paging_crap_yarr_ix:
    cp 2
    ret nz                      ; We only care it it's slot 2.
    push af
    push hl
        ld ($c048),ix
        ld hl,($c048)
        ld a,h                  ; 'l' is the higher byte we need to alter.
        sub $40
        ld h,a
        ld ($c048),hl
        ld ix,($c048)
    pop hl
    pop af
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
      +:dec h               ; If it's anything other than $38, decrement 'h'.
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
      +:inc h               ; If it's anything other than $3e, decrement 'h'.
 ++:pop af
    ret



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
  +:ld hl,palette_data          ; Load the normal palette.
    ret



;==============================================================
; Does all the stuff when a level ends.
;==============================================================
level_ending:
    call wait_for_vblank
    call PSGMOD_Stop
    call wait_for_vblank
    
    ; Load level done music.
    ld a,:music_data_level_ending
    ld hl,music_data_level_ending
    call start_le_tunage
    
    ld a,0
  -:;call wait_for_vblank
    inc a
    cp 32
    jp nz,-
    
    ; Let the player know they can press start to continue.
    ld a,$50
    out ($bf),a
    ld a,$7c
    out ($bf),a
    push ix
    pop ix
    
    ; Game over?
    ld a,(lives)
    cp 153
    jr nz,+
    ld hl,str_game_over_tile            ; Game over?
    jr ++
  +:ld hl,str_start_cont_tile           ; Level done?
 ++:ld b,24
    ld c,$be
    call wait_for_vblank
	otir
    
    ; Wait for user to press start, then load the next level.
  -:call wait_for_vblank
    in a,($dc)                          ; Read from controller port.
    cp %11101111                        ; If the start button is pressed, start the game.
    jp z,+
    jp -
    
  +:call wait_for_vblank
    call PSGMOD_Stop
    call wait_for_vblank
    
    ld a,(lives)                        ; Out of lives?
    cp 153
    jp z,main_title                     ; Yup.
    
    ld a,LEVELS                         ; Was it the last level?
    ld b,a
    ld a,(level)
    cp b
    jp z,game_completed                 ; Yup.
    
    ; Start the next level.
    jp start_level



;==============================================================
; Clears the entire sprite table.
;==============================================================
clear_sprite_table:
    ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    
    ld a,0
    ld b,a
  -:ld a,b
    cp 255
    jp z,+
    
    sub a
    out ($be),a
    push ix
    pop ix
    
    inc b
    jp -
    
    ; Put $d0 at the start, so it knows not to draw any sprites.
  +:ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    call wait_for_vblank
    
    ld a,$d0
    out ($be),a
    
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
    call show_players_score
    
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
    call show_players_tries
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
        daa
        ld (lives),a
  +:pop af
    ret



;==============================================================
; Draws all the HUD stuff to the screen. Score, etc.
;==============================================================
draw_the_hud_and_stuff:
    push af
    push bc
    push hl
        ; Show "SCORE".
        ld a,$b2                    ; Set VRAM to point to the right place in the tilemap.
        out ($bf),a
        ld a,$78
        out ($bf),a
        
        ld hl,str_score_tile_inv    ; Load the string.
        ld b,10                     ; How many bytes to write (length of string).
        ld c,$be                    ; Port to write to.
        call wait_for_vblank
        otir                        ; Output 'b' bytes starting at 'hl' to port 'c'.
        
        ; Show "TRIES".
        ld a,$72                    ; Works the same as the "SCORE" one.
        out ($bf),a
        ld a,$79
        out ($bf),a
        
        ld hl,str_tries_tile_inv
        ld b,10
        ld c,$be
        call wait_for_vblank
        otir
        
        ; Show "LEVEL".
        ld a,$32                    ; Works the same as the "SCORE" one.
        out ($bf),a
        ld a,$7a
        out ($bf),a
        
        ld hl,str_level_tile_inv
        ld b,10
        ld c,$be
        call wait_for_vblank
        otir
        
        ; Show the number of tries.
        call show_players_tries
        
        ; Now we can show the level number. 'level' is a BCD.
        ld a,$7a
        out ($bf),a
        ld a,$7a
        out ($bf),a
        push ix
        pop ix
        
        ld a,(level)                ; First number of the level.
        sra a                       ; It's a BCD, we want the left nibble.
        sra a                       ; Move it across to the lower four bits.
        sra a
        sra a
        and 15
        add a,34                    ; Find the tile number.
        out ($be),a
        push ix
        pop ix
        ld a,8                      ; Set it to use the sprite palette.
        out ($be),a
        push ix
        pop ix
        
        ld a,(level)                ; Get the second level number.
        and 15                      ; Right nibble only.
        add a,34                    ; Add 34 to get the tile number.
        out ($be),a
        push ix
        pop ix
        ld a,8                      ; Set it to use the sprite palette.
        out ($be),a
        push ix
        pop ix
        
        ; Now we show the actual changeable data by calling the functions
        ; which update the displays in-game - it saves redoing it all here.
        call wait_for_vblank
        call show_players_score
        call wait_for_vblank
    pop hl
    pop bc
    pop af
    ret



;==============================================================
; Updates the in-game score display.
;==============================================================  
show_players_score:
    ld a,$f4                    ; Set VRAM to point to the right area of the
    out ($bf),a                 ; tilemap table.
    ld a,$78
    out ($bf),a
    
    ; Ten thousandths of score.
    push ix
    pop ix
    ld a,(score_1)
    add a,34
    out ($be),a
    ld a,(score_1)
    push ix
    pop ix
    ld a,8                      ; Don't forget to use the sprite palette, yarr.
    out ($be),a
    
    ; Thousandths of score.
    push ix
    pop ix
    ld a,(score_2)
    add a,34
    out ($be),a
    push ix
    pop ix
    ld a,8
    out ($be),a
    
    ; Hundredths of score.
    push ix
    pop ix
    ld a,(score_3)
    add a,34
    out ($be),a
    push ix
    pop ix
    ld a,8
    out ($be),a
    
    ; Tenths of score.
    push ix
    pop ix
    ld a,(score_4)
    add a,34
    out ($be),a
    push ix
    pop ix
    ld a,8
    out ($be),a
    
    ; Units of score.
    push ix
    pop ix
    ld a,(score_5)
    add a,34
    out ($be),a
    push ix
    pop ix
    ld a,8
    out ($be),a
    
    ret



;==============================================================
; Updates the in-game tries display.
;============================================================== 
show_players_tries:
    push af
        ld a,$ba
        out ($bf),a
        ld a,$79
        out ($bf),a
        push ix
        pop ix
        
        ld a,(lives)                ; First part of the number.
        sra a                       ; It's a BCD, we want the left nibble.
        sra a                       ; Move it across to the lower four bits.
        sra a
        sra a
        and 15
        add a,34                    ; Find the tile number.
        cp 34
        jp nz,+
        sub 34                      ; Don't show a leading zero.
      +:out ($be),a
        push ix
        pop ix
        ld a,8                      ; Set it to use the sprite palette.
        out ($be),a
        push ix
        pop ix
        
        ld a,(lives)                ; Get the second part of the number.
        and 15                      ; Right nibble only.
        add a,34                    ; Add 34 to get the tile number.
        out ($be),a
        push ix
        pop ix
        ld a,8                      ; Set it to use the sprite palette.
        out ($be),a
        push ix
        pop ix
    pop af
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
             cp (name_table_address+$700)>>8
             jp nz,+
             ld h,name_table_address>>8
      +:pop af
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
draw_one_line:
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
        cp STEEL
        jr z,++                 ; If it's steel, don't add 2.
        
        add a,2                 ; Add 2.
        jr ++                   ; Continue.
        
      +:ld a,(hl)               ; Line 16 - get data byte.
     ++:inc hl                  ; Point to next tile.
        
        ; Check for special blocks.
        cp $ff                  ; Is it $ff (we use this to end, instead of $00). EOF.
        jp z,_EndOfFile
        
        ; Draw tile.
        out ($be),a
        push ix
        pop ix
        
        ; Write second byte of tile - zero.
        push af
            ld a,0
            out ($be),a
        pop af
        
        cp 0                    ; Is the tile 0?
        jr z,++                 ; If so, don't increment.
        cp 24
        jr z,++                 ; If it's 24 (end-zone), don't increment.
        cp STEEL
        jr z,++                 ; If it's steel, don't increment.
        
        push ix
        pop ix
        inc a
     ++:out ($be),a             ; Draw the second tile.
        push ix
        pop ix
        
        ; Write second byte of tile - zero.
        ld a,0                  ; All other tiles get byte 2 set as zero.
        out ($be),a             ; Write it.
        
        dec c                   ; Decrement counter (doesn't count skipped).
        jp z,+                  ; If zero, exit loop.
        jp -
        
      +:call add_line_end       ; Draw the end of the line.
+++:pop bc
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
    ; The first three tiles are empty.
    ld c,3
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
  +:ld a,$fe                    ; Border tile one.
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    ld a,0
    push ix
    pop ix
    out ($be),a
    ld a,STEEL                  ; Border tile two - steel.
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
    ld a,STEEL                  ; Border tile - steel.
    push ix
    pop ix
    out ($be),a                 ; Draw tile.
    
    ; We don't draw the blank tiles as that would overwrite the HUD on the
    ; far-right of the screen, so we just add 8 to 'bc'.
    push hl
        ld h,b                  ; Copy 'bc' into 'hl'.
        ld l,c
        ld bc,8                 ; Add 8.
        add hl,bc
        call VRAMToHL           ; Set the VRAM write address.
        ld b,h                  ; Copy 'hl' back into 'bc'.
        ld c,l
    pop hl
  +:ret                         ; Go back and draw the normal tiles.



;==============================================================
; Adds a solid line of steel blocks.
;==============================================================
draw_last_solid_line:
    call draw_one_line_setup
    call add_line_start
    
    ; Draw 18 steel blocks.
    ld b,18
  -:ld a,STEEL                  ; Steel block.
    out ($be),a
    push ix
    pop ix
    ld a,0                      ; Second byte of tile.
    out ($be),a
    push ix
    pop ix
    djnz -
    
    call add_line_end
    
    ret



;==============================================================
; Adds an empty line with borders.
;==============================================================
draw_empty_line:
    push af
        push bc
            call draw_one_line_setup
            call add_line_start
        
            ; Draw 18 steel blocks.
            ld b,36
            ld a,0
          -:out ($be),a
            push ix
            pop ix
            djnz -
        pop bc
        call add_line_end
        
        push hl
            ld h,b                  ; Copy 'bc' into 'hl'.
            ld l,c
            ld bc,56
            add hl,bc
            call VRAMToHL           ; Set the VRAM write address.
            ld b,h                  ; Copy 'hl' back into 'bc'.
            ld c,l
        pop hl
    pop af
    
    ret


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
  -:call wait_for_vblank
    
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
        cp 4
        jp z,end_presents_screen
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
    ;call PSGMOD_Stop
    pop af
    ret                                 ; Done. Go and show the title screen.



;==============================================================
; Shows the "Aypok Presents" screen.
;==============================================================
show_presents_screen:
    ; Initialise the system.
    call wait_for_vblank
    call initialise_vdp
    call clear_vram
    call kill_sprites
   
    ; Load the first screen's palette.
    ld a,:presents_palette_data
    ld ($ffff),a
    ld hl,presents_palette_data
    ld b,16
    ld c,0
    call wait_for_vblank
    call LoadPalette
    
    ; Load the tiles.
    ld a,:tile_data_presents
    ld ($ffff),a
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_presents            ; Tile data - contains all tiles for this screen.
    ld bc,203                           ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call wait_for_vblank
    call load_tiles
    
    ; Put the data on the screen.
    ld a,:tile_map_presents
    ld ($ffff),a
    ld bc,name_table_address
    ld hl,tile_map_presents
    ld a,24
    call wait_for_vblank
  -:call draw_one_line_full
    dec a
    jp nz,-
    
    ; Load the music and start the playback.
    ld a,:music_data_intro_aypok
    ld ($ffff),a
    ld ($c008),a

    ld hl,music_data_intro_aypok
    ;ld ($c009),hl
    call PSGMOD_LoadModule
    call PSGMOD_Start
    call wait_for_vblank
    
    ; Main screen turn on!
    call wait_for_vblank
    ld a,%11100100
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
    call wait_for_vblank
    ld a,b
    cp 50                               ; Fade in the dark grey.
    jp z,+
    cp 100                              ; Fade in the light grey.
    jp z,++
    cp 150                              ; Fade in the white.
    jp z,+++
    jp -
    
    ; Fades in the dark grey.
  +:ld a,$05                            ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    push ix
    pop ix
    
    ; Output the colour data.
    ld a,$15
    out ($be),a
    push ix
    pop ix
    ld a,$08
    out ($be),a
    push ix
    pop ix
    ld a,$15
    out ($be),a
    push ix
    pop ix
    ld a,$0d
    out ($be),a
    push ix
    pop ix
    ld a,$15
    out ($be),a
    push ix
    pop ix
    jp -
    
    ; Fades in the light grey.
 ++:ld a,$05                             ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    push ix
    pop ix
    
    ; Output the colour data.
    ld a,$2a
    out ($be),a
    push ix
    pop ix
    ld a,$08
    out ($be),a
    push ix
    pop ix
    ld a,$2a
    out ($be),a
    push ix
    pop ix
    jp -
    
    ; Fades in the white.
+++:ld a,$05                              ; Go to the right place in CRAM.
    out ($bf),a
    ld a,$c0
    out ($bf),a
    push ix
    pop ix
    
    ; Output the colour data.
    ld a,$3f
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
    call wait_for_vblank
    cp 20                               ; Fade out part 1.
    jp z,+
    cp 40                               ; Fade out part 2.
    jp z,++
    cp 60                               ; Fade out part 3.
    jp z,+++
    cp 100                              ; Return.
    ret z
    jp -

    ; Load the first stage of the fade-out palette.
  +:ld hl,fade_presents_palette_data_1
    ld b,16
    ld c,0
    call wait_for_vblank
    call LoadPalette
    jp -
    
    ; Load the first stage of the fade-out palette.
 ++:ld hl,fade_presents_palette_data_2
    ld b,16
    ld c,0
    call wait_for_vblank
    call LoadPalette
    jp -
    
    ; Part three is just clearing VRAM and CRAM.
+++:call wait_for_vblank
    call clear_vram
    call wait_for_vblank
    jp -



;==============================================================
; Shows the "For the 2007 SMS Power coding competition" screen.
;==============================================================
show_sms_power_screen:
    ; Load the first screen's palette.
    ld hl,sms_power_palette_data
    ld b,16
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld a,:tile_data_smspower
    ld ($ffff),a
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_smspower           ; Tile data - contains all tiles for this screen.
    ld bc,171                           ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call load_tiles
    
    ; Put the data on the screen.
    ld a,:tile_map_smspower
    ld ($ffff),a
    ld bc,name_table_address
    ld hl,tile_map_smspower
    ld a,24
  -:call draw_one_line_full
    dec a
    jp nz,-

    ; Main screen turn on!
    ld a,%11100100
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
    call wait_for_vblank
    cp 20                               ; Fade out part 1.
    jp z,+
    cp 40                               ; Fade out part 2.
    jp z,++
    cp 60                               ; Fade out part 3.
    jp z,+++
    cp 100                              ; Return.
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
+++:call clear_vram
    jp -




;==============================================================
; Does all the stuff for the title screen.
;==============================================================
title_screen:
    call wait_for_vblank
    ld a,%10100100              ; Turn off display.
    out ($bf),a
    ld a,$81
    out ($bf),a
    call wait_for_vblank
    
    call clear_vram
    call kill_sprites
    call wait_for_vblank
    
    ; Load the title screen's palette.
    ld hl,title_palette_data
    ld b,32
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld a,:tile_data_title
    ld ($ffff),a
    ld hl,0                             ; Tile index to load at.
    ld ix,tile_data_title               ; Tile data - contains all tiles for this screen.
    ld bc,412                           ; Number of tiles.
    ld d,4                              ; Bits per pixel.
    call load_tiles
    
    ; Put the data on the screen.
    ld a,:tile_map_title
    ld ($ffff),a
    ld bc,name_table_address
    ld hl,tile_map_title
    ld d,24
  -:call draw_one_line_full_two_bytes
    dec d
    jp nz,-
    
    ; Load the music and start the playback.
    ld a,:music_data_title
    ld ($ffff),a
    ld ($c008),a

    ld hl,music_data_title
    ;ld ($c009),hl
    call PSGMOD_LoadModule
    call PSGMOD_Start
    call wait_for_vblank
    
    ; Main screen turn on!
    ld a,%11100100
    out ($bf),a
    ld a,$81
    out ($bf),a
    
    ; Loop while we wait for the user to press a button.
  -:call wait_for_vblank
    in a,($dc)                          ; Read from controller port.
    cp %11101111                        ; If the start button is pressed, start the game.
    call z,show_title_menu
    jp z,+
    jp -                                ; Restart the loop.

    ; Loop through.
  +:ld a,0
  -:inc a
    call wait_for_vblank
    cp 5                               ; Fade out part 1.
    jp z,+
    cp 10                              ; Fade out part 2.
    jp z,++
    cp 15                              ; Fade out part 3.
    jp z,+++
    cp 20                              ; Return.
    ret z
    jp -

    ; Load the first stage of the fade-out palette.
  +:ld hl,fade_title_palette_data_1
    ld b,32
    ld c,0
    call wait_for_vblank
    call LoadPalette
    jp -
    
    ; Load the first stage of the fade-out palette.
 ++:ld hl,fade_title_palette_data_2
    ld b,32
    ld c,0
    call wait_for_vblank
    call LoadPalette
    jp -
    
    ; Part three is just clearing VRAM and CRAM.
+++:call wait_for_vblank
    call clear_vram
    call wait_for_vblank
    push af
        call PSGMOD_Stop
    pop af
    jp -



;==============================================================
; Shows the menu on the title screen.
;==============================================================
show_title_menu:
    push af
        ; Reset the position.
        ld a,MENU_OPTION_0
        ld (menu_point),a
        
        ; Show the menu tiles.
        ld hl,$3c2e
        call VRAMToHL
        ld hl,str_easy_tile         ; 'EASY'.
        ld b,8
        ld c,$be
        call wait_for_vblank
        otir
        call wait_for_vblank
        
        ld hl,$3c6e
        call VRAMToHL
        ld hl,str_medium_tile       ; 'MEDIUM'.
        ld b,12
        ld c,$be
        call wait_for_vblank
        otir
        call wait_for_vblank
        
        ld hl,$3cae
        call VRAMToHL
        ld hl,str_hard_tile         ; 'HARD'.
        ld b,10
        ld c,$be
        call wait_for_vblank
        otir
        call wait_for_vblank
        
        ld hl,$3cee
        call VRAMToHL
        ld hl,str_credits_tile      ; 'CREDITS'.
        ld b,12
        ld c,$be
        call wait_for_vblank
        otir
        call wait_for_vblank
        
        ; Show the pointer.
        call show_title_menu_pointer
        ld a,$d0                    ; I'll be back.
        out ($be),a
        push ix
        pop ix
        
        ld hl,$3f80
        call VRAMToHL
        ld a,168
        out ($be),a
        push ix
        pop ix
        ld a,MENU_POINTER
        out ($be),a
        push ix
        pop ix

        call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        
        ; Okay. All displayed. Loop and allow them to choose an option.
      -:call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        call wait_for_vblank
        in a,($dc)
        bit 0,a                 ; Up?
        jp z,+
        bit 1,a                 ; Down?
        jp z,+++
        bit 4,a                 ; Start?
        jp z,++++
        jp -
        
        ; Move up.
      +:push af
            ld a,(menu_point)
            cp MENU_OPTION_0
            jp nz,+
            ld a,MENU_OPTION_3
            jp ++
          +:cp MENU_OPTION_1
            jp nz,+
            ld a,MENU_OPTION_0
            jp ++
          +:cp MENU_OPTION_2
            jp nz,+
            ld a,MENU_OPTION_1
            jp ++
          +:cp MENU_OPTION_3
            jp nz,+
            ld a,MENU_OPTION_2
            jp ++
         ++:ld (menu_point),a
            call wait_for_vblank
            call show_title_menu_pointer
        pop af
        jp -
        
        ; Move down.
    +++:push af
            ld a,(menu_point)
            cp MENU_OPTION_0
            jp nz,+
            ld a,MENU_OPTION_1
            jp ++
          +:cp MENU_OPTION_1
            jp nz,+
            ld a,MENU_OPTION_2
            jp ++
          +:cp MENU_OPTION_2
            jp nz,+
            ld a,MENU_OPTION_3
            jp ++
          +:cp MENU_OPTION_3
            jp nz,+
            ld a,MENU_OPTION_0
            jp ++
         ++:ld (menu_point),a
            call wait_for_vblank
            call show_title_menu_pointer
        pop af
        jp -
        
        ; Start le game!
   ++++:ld a,(menu_point)
        cp MENU_OPTION_3        ; Do they want to view the credits?
        jp nz,+
        ld a,1
        ld (credit_view),a
        jp +++
        
      +:cp MENU_OPTION_0        ; Easy.
        jp nz,+
        ld a,0
        jp ++
        
      +:cp MENU_OPTION_1        ; Medium.
        jp nz,+
        ld a,1
        jp ++
        
      +:cp MENU_OPTION_2        ; Hard.
        jp nz,+
        ld a,2
        jp ++
        
     ++:ld (difficulty),a
+++:pop af
    ret



;==============================================================
; Sets the Y co-ord of the menu pointer in the sprite table.
;==============================================================
show_title_menu_pointer:
    ld hl,$3f00                 ; Set the Y co-ord info.
    call VRAMToHL
    ld a,(menu_point)
    out ($be),a
    push ix
    pop ix
    ret



;==============================================================
; Sets different ball and player speeds depending on the
; selected difficulty level.
;==============================================================
set_difficulty_level:
    ld a,(difficulty)
    cp 1
    jp nz,+
    ld a,1                      ; Medium.
    ld (char_speed),a
    ld a,1
    ld (ball_speed),a
    ret
    
  +:cp 2
    jp nz,+
    ld a,1                      ; Hard.
    ld (char_speed),a
    ld a,2
    ld (ball_speed),a
    ret
    
  +:ld a,2                      ; Easy.
    ld (char_speed),a
    ld a,1
    ld (ball_speed),a
    ret



;==============================================================
; Draw a line of tiles - writing both bytes of the tile to the
; tilemap.
;==============================================================
draw_one_line_full_two_bytes:
    call draw_one_line_setup
    
    push af
    push bc
        ld c,64      ; Start counter
      -:ld a,(hl)    ; Get data byte
        inc hl       ; Point to next tile 
        out ($be),a
        push ix
        pop ix
        dec c        ; Decrement counter (doesn't count skipped)
        jp z,+       ; If zero, exit loop
        jp -
  +:pop bc
    pop af
    ret

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
  -:call wait_for_vblank
    inc a
    cp 16
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
    
    ; Start music.
  +:ld a,:music_data_game_complete
    ld ($ffff),a
    
    ld hl,music_data_game_complete
    call PSGMOD_LoadModule
    call PSGMOD_Start
    call wait_for_vblank

    ; Remove all sprites.
    ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    ld a,$d0
    out ($be),a
    
    ; Show 'WELL DONE!".
    ld a,$96
    out ($bf),a
    ld a,$79
    out ($bf),a
    ld hl,str_well_done_tile
    ld b,20
    ld c,$be
    call wait_for_vblank
    otir
    
    ; Show 'THE  WORKERS".
    ld a,$14
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_the_workers_tile
    ld b,24
    ld c,$be
    call wait_for_vblank
    otir
    
    ; Show 'ARE NOW SAFE".
    ld a,$54
    out ($bf),a
    ld a,$7a
    out ($bf),a
    ld hl,str_are_now_safe_tile
    ld b,24
    ld c,$be
    call wait_for_vblank
    otir
    
    ; Show 'GAME COMPLETE!".
    ld a,$d2
    out ($bf),a
    ld a,$7b
    out ($bf),a
    ld hl,str_game_complete_tile
    ld b,28
    ld c,$be
    call wait_for_vblank
    otir
    
    ; Let the player know they can press start to continue.
    ld a,$14
    out ($bf),a
    ld a,$7d
    out ($bf),a
    ld hl,str_start_cont_tile
    ld b,24
    ld c,$be
    call wait_for_vblank
	otir
    
    
    
    ; Loop until the player presses "start".
  -:call wait_for_vblank
    in a,($dc)                  ; Read from controller port.
    cp %11101111                ; If the start button is pressed, return to the title screen.
    jr z,+
    jp -
    
    ; All done. Return to the title screen.
  +:ld a,0
  -:call wait_for_vblank
    inc a
    cp 4
    jr nz,-
    call PSGMOD_Stop
    jp show_credits
.ends



;==============================================================
; Shows the end credits.
;==============================================================
.section "Credits" free
show_credits:
    ld a,0
    ld (credit_view),a
    
    ; Wait a little before displaying it.
    ld b,16
  -:call wait_for_vblank
    djnz -

    ; Load the music and start the playback.
    ld a,:music_data_game_complete
    ld ($ffff),a

    ld hl,music_data_game_complete
    call PSGMOD_LoadModule
    call PSGMOD_Start
    call wait_for_vblank
    
    ; Kill the sprite from the menu.
    ld a,$00
    out ($bf),a
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    ld a,208
    out ($be),a
    
    ; Load palette.
    ld hl,palette_data_credits
    ld b,32
    ld c,0
    call LoadPalette
    
    ; Load the tiles.
    ld a,:tile_data                 ; Find the slot/page the data is in.
    ld ($ffff),a                    ; Map that page to the second map slot ($8000-$bfff).
    ld ix,tile_data                 ; Tile data - contains all tile info.
    ld hl,0                         ; This is where to put the tiles in VRAM.
    ld bc,152                       ; Number of tiles.
    ld d,4                          ; Bits per pixel.
    call wait_for_vblank
    call load_tiles
    
    ; Write the credits to screen.
    ld a,:tile_map_credits
    ld ($ffff),a
    ld bc,name_table_address
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
    
  +:pop af
    call PSGMOD_Stop
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
      -:call wait_for_vblank
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
      -:call wait_for_vblank
        dec a
        jr z,+
        jr -
  +:pop af
    ret
.ends



;==============================================================
; functions for random numbers and such.
;==============================================================
.section "Handles Random Numbers And Stuff And Things" free
;==============================================================
; This function will mash together several of the user's 
; variables in an attempt to create a random number. The random
; number will be in 'a'.
;==============================================================
generate_a_random_number:
    push bc
        ld b,a
        ld a,(char_x)           ; Add the X position to the pot.
        add a,b
        ld b,a
        ld a,(ball_y)
        add a,b
        ld b,a
        ld a,(score_5)
        add a,b
        ld b,a
        ld a,(ball_block)       ; Larger byte of 'ball_block'.
        add a,b
        ld b,a
        ld a,(blocks_left)
        add a,b

        srl a                   ; Divide by four.
        srl a                   ; highest number is now 63.
        ld (random),a
    pop bc
    ret



;==============================================================
; Sees if the player gets a power-up. Skip if there's already a
; power-up on screen.
;==============================================================
give_player_random_powerup:
    ; Already a power-up on screen?
    ld a,(pup_x)
    cp 0
    ret nz
    
    ; Do they get one?
    call generate_a_random_number
    ld a,(random)
    cp 3                        ; Spade-thrower.
    jp z,+
    cp 17                       ; Deadly ball.
    jp z,++
    cp 38                       ; TNT.
    jp z,+++
    cp 51                       ; Dual ball.
    jp z,++++
    cp 25                       ; Ball speed-up.
    jp z,+++++
    cp 31                       ; Ball slow-down.
    jp z,++++++
    cp 49                       ; Mini-chan.
    jp z,+++++++
    ret                         ; Go home - no random blocks today.
    
  +:ld a,POWERUP_SPADE
    jp start_powerup_falling
 ++:ld a,POWERUP_DEADLY
    jp start_powerup_falling
+++:ld a,POWERUP_TNT
    jp start_powerup_falling
++++:ld a,POWERUP_DUAL
    jp start_powerup_falling
+++++:ld a,POWERUP_BSPEED
    jp start_powerup_falling
++++++:ld a,POWERUP_PSPEED
    jp start_powerup_falling
+++++++:ld a,POWERUP_MINIME
    jp start_powerup_falling
    ret



;==============================================================
; When a power-up is created, place it where the ball is. 'a'
; shows first tile of power-up.
;==============================================================
start_powerup_falling:
    push af
        call tile_address_to_coords
    pop af
    ld (pup_tile),a
    ld a,(explode_x)
    sub 4
    ld (pup_x),a
    ld a,(explode_y)
    ld (pup_y),a
    ret





;==============================================================
; Draws a block starting with the tile number in 'a', then at
; 'a' + 1, then 'a' + 2, and finally 'a' + 3. They will be
; placed at 'hl', 'hl' + 2, 'hl' + 64 and 'hl' + 66.
;==============================================================
draw_tnt:
    push hl
    push bc
        ld a,TNT_0
        call VRAMToHL
        push ix
        pop ix
        out ($be),a             ; First tile of the block.
        push ix
        pop ix
        push af
            ld a,8
            out ($be),a
            push ix
            pop ix
        pop af
        
        inc a                   ; Next tile.
        out ($be),a             ; Draw second tile.
        push ix
        pop ix
        push af
            ld a,8
            out ($be),a
            push ix
            pop ix
        pop af
        ld bc,64
        add hl,bc               ; Find the place for the third tile.
        call VRAMToHL
        push ix
        pop ix
        
        ; Lower half of the tile.
        inc a
        out ($be),a             ; Draw third tile.
        push ix
        pop ix
        push af
            ld a,8
            out ($be),a
            push ix
            pop ix
        pop af
        
        inc a                   ; Next tile.
        out ($be),a             ; Draw second tile.
        push ix
        pop ix
        push af
            ld a,8
            out ($be),a
            push ix
            pop ix
        pop af
    pop bc
    pop hl
    ret





.ends



;==============================================================
; The start of what happens when the game is first paused.
;==============================================================
.section "What do do when the game is paused" free
start_le_paused_engine_go_go_go:
    push af                     ; Preserve registers by using the alternate set.
    push bc
    push de
    push hl

game_is_paused_yarrcicles:
    ; Show the moving "= PAUSED = " text.
    ld c,1                      ; Direction. 1 = right, 255 = left.
 --:ld b,27                     ; Counter.
  -:ld a,(paused_x)
    add a,c                     ; Move it horizontally.
    ld (paused_x),a
    ld hl,pause_float_sine      ; Find the start of the sine pattern.
    ld a,b
    dec a
    ld e,a                      ; Add position (b) to the address, so we can
    ld d,0                      ; find which bit of data we need. Starts at the
    add hl,de                   ; end and works its way back.
    ld a,(hl)                   ; Get the amount to add to paused_y.
    ld e,a
    ld a,(paused_y)             ; Get Y position.
    add a,e                     ; Add sine data to Y position.
    ld (paused_y),a             ; Save.
    
    ; Wait a few vblanks.
    call wait_for_vblank
    call wait_for_vblank
    call wait_for_vblank
    call wait_for_vblank
    
    call write_paused_sprites   ; Write the data to the sprite table.
    call wait_for_vblank

    ld a,(paused)               ; Check it's still pasued.
    cp 0
    jp z,end_and_clean_up_pause ; If not paused, resume game.
    
    djnz -                      ; Loop.
    ld a,c                      ; If we've done the second part, restart the
    cp 255                      ; whole thing.
    jp z,game_is_paused_yarrcicles
    ld c,255                    ; Else, reverse the direction.
    jp --



;==============================================================
; Writes the sprites which spell the text "= PAUSED =" to the
; sprite table.
;==============================================================
write_paused_sprites:
    ; Write the Y co-ords of the "= PAUSED =" text to the sprite table.
    ld a,$00                    ; Set VRAM to point to the sprite Y table.
    out ($bf),a
    push ix
    pop ix
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    
    push bc                     ; Same thing eight times, so loop.
        ld b,8
      -:ld a,(paused_y)         ; Copy Y co-ordinate to VRAM.
        out ($be),a
        push ix
        pop ix
        djnz -
    pop bc
    
    ld a,$d0
    out ($be),a
    push ix
    pop ix
    
    ; Now write the X co-ords and tile numbers to the sprite table.
    ld a,$80                    ; Set VRAM to point to the sprite X table.
    out ($bf),a
    push ix
    pop ix
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    
    ; "="
    ld a,(paused_x)
    out ($be),a
    push ix
    pop ix
    ld a,71
    out ($be),a
    push ix
    pop ix
    
    ; " P"
    ld a,(paused_x)
    add a,16
    out ($be),a
    push ix
    pop ix
    ld a,58
    out ($be),a
    push ix
    pop ix
    
    ; "A"
    ld a,(paused_x)
    add a,24
    out ($be),a
    push ix
    pop ix
    ld a,44
    out ($be),a
    push ix
    pop ix
    
    ; "U"
    ld a,(paused_x)
    add a,32
    out ($be),a
    push ix
    pop ix
    ld a,62
    out ($be),a
    push ix
    pop ix
    
    ; "S"
    ld a,(paused_x)
    add a,40
    out ($be),a
    push ix
    pop ix
    ld a,39
    out ($be),a
    push ix
    pop ix
    
    ; "E"
    ld a,(paused_x)
    add a,48
    out ($be),a
    push ix
    pop ix
    ld a,48
    out ($be),a
    push ix
    pop ix
    
    ; "D"
    ld a,(paused_x)
    add a,56
    out ($be),a
    push ix
    pop ix
    ld a,47
    out ($be),a
    push ix
    pop ix
    
    ; " ="
    ld a,(paused_x)
    add a,72
    out ($be),a
    push ix
    pop ix
    ld a,71
    out ($be),a
    push ix
    pop ix
    
    ret



;==============================================================
; Called when the game in un-paused. Hides the sprites used and
; flips back to the original registers.
;==============================================================
end_and_clean_up_pause:
    ld a,$00                    ; Set VRAM to point to the sprite Y table.
    out ($bf),a
    push ix
    pop ix
    ld a,$7f
    out ($bf),a
    push ix
    pop ix
    
    ld a,$d0                    ; Load the termination value.
    out ($be),a
    push ix
    pop ix
    
    call wait_for_vblank
    
    pop hl                      ; Revert to original registers.
    pop de
    pop bc
    pop af
    jp loop



; Look-up table for the sine-wave movement of the paused text.
pause_float_sine:
    .db 8,4,2,1,0,255,254,252,248,248,252,254,255,0,1,2,4,8,8,4,2,1,0,255,254,252,248
.ends



;==============================================================
; PSGMOD code for playing music and sound effects.
;==============================================================
.section "PSGMOD Code Bits" free
    .include "psgmod.inc"
    .include "psgmod.asm"

;==============================================================
; Called from the VBlank waiting function. Saves all the data
; in the registers then calls the PSGMOD_Play function to
; play the next note of the music.
;==============================================================
play_the_next_music_bit:
    push hl
    push af
    push bc
    push de
        call PSGMOD_Play
    pop de
    pop bc
    pop af
    pop hl
    ret
                             


;==============================================================
; Loads the music pointed to by 'hl'.
;==============================================================
start_le_tunage:
    ;ld ($c009),hl
    call PSGMOD_LoadModule
    call PSGMOD_Start
    call wait_for_vblank
    ret
.ends

