;==============================================================
; Fairy Forest - memory map include file
;
; * This file contains the directives required to tell the
;   assembler how to map the program into an executable ROM.
; * This file also contains variable definitions for the
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

; WLA-DX banking setup
; --------------------
.memorymap
defaultslot 0
slotsize $4000
slot 0 $0000   ; SMS ROM start address
slot 1 $4000
slot 2 $8000
slotsize $2000
slot 3 $c000   ; SMS RAM start address
.endme

.rombankmap
bankstotal 3
banksize $4000
banks 3
.endro

; Structure definitions
; ---------------------

; A structure to contain the data required to render a Bat enemy
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Bat
alive_status db ; the status of the enemy with respects to being alive or dead
                ; 0 = dead, 1 = alive
world_row    db ; row index of the screen the enemy is on
world_column db ; column index of the screen the enemy is on
vert_dir     db ; the vertical direction the enemy is travelling in
                ; 0 = up, 1 = down
y            db ; starting/current y coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
y_max        db ; the maximum y coordinate the enemy may occupy
y_min        db ; the minimum y coordinate the enemy may occupy
horiz_dir    db ; the horizontal direction the enemy is travelling in
                ; 0 = left, 1 = right
x            db ; starting/current x coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
x_max        db ; the maximum x coordinate the enemy may occupy
x_min        db ; the minimum x coordinate the enemy may occupy
wing_status  db ; the status of the bat's wings (similar to the variable used to
                ; control the flapping of the player's wings)
.endst

; A structure to contain the data required to render a Spider enemy
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Spider
alive_status db ; the status of the enemy with respects to being alive or dead
                ; 0 = dead, 1 = alive
world_row    db ; row index of the screen the enemy is on
world_column db ; column index of the screen the enemy is on
vert_dir     db ; the vertical direction the enemy is travelling in
                ; 0 = up, 1 = down
y            db ; starting/current y coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
y_max        db ; the maximum y coordinate the enemy may occupy
y_min        db ; the minimum y coordinate the enemy may occupy
horiz_dir    db ; the horizontal direction the enemy is travelling in
                ; 0 = left, 1 = right
x            db ; starting/current x coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
x_max        db ; the maximum x coordinate the enemy may occupy
x_min        db ; the minimum x coordinate the enemy may occupy
leg_status   db ; the status of the spider's legs (similar to the variable used to
                ; control the flapping of the player's wings)
.endst

; A structure to contain the data required to render a mushroom enemy
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Mushroom
alive_status db ; the status of the enemy with respects to being alive or dead
                ; 0 = dead, 1 = alive
world_row    db ; row index of the screen the enemy is on
world_column db ; column index of the screen the enemy is on
vert_dir     db ; the vertical direction the enemy is travelling in
                ; 0 = up, 1 = down
y            db ; starting/current y coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
y_max        db ; the maximum y coordinate the enemy may occupy
y_min        db ; the minimum y coordinate the enemy may occupy
horiz_dir    db ; the horizontal direction the enemy is travelling in
                ; 0 = left, 1 = right
x            db ; starting/current x coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
x_max        db ; the maximum x coordinate the enemy may occupy
x_min        db ; the minimum x coordinate the enemy may occupy
leg_status   db ; the status of the spider's legs (similar to the variable used to
                ; control the flapping of the player's wings)
.endst

; A structure to contain the data required to render a tree enemy
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Tree
alive_status db ; the status of the enemy with respects to being alive or dead
                ; 0 = dead, 1 = alive
world_row    db ; row index of the screen the enemy is on
world_column db ; column index of the screen the enemy is on
vert_dir     db ; the vertical direction the enemy is travelling in
                ; 0 = up, 1 = down
y            db ; starting/current y coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
y_max        db ; the maximum y coordinate the enemy may occupy
y_min        db ; the minimum y coordinate the enemy may occupy
horiz_dir    db ; the horizontal direction the enemy is travelling in
                ; 0 = left, 1 = right
x            db ; starting/current x coordinate of the enemy on the screen
                ; The following max/min coords construct a box that the enemy must remain within
x_max        db ; the maximum x coordinate the enemy may occupy
x_min        db ; the minimum x coordinate the enemy may occupy
leg_status   db ; the status of the spider's legs (similar to the variable used to
                ; control the flapping of the player's wings)
.endst

; A structure to contain the data required to render a heart power-up
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Heart
alive_status db ; the status of the power-up with respects to being alive or dead
                ; 0 = dead, 1 = alive (alive => rendered, dead => not rendered)
world_row    db ; row index of the screen the power-up is on
world_column db ; column index of the screen the power-up is on
y            db ; y coordinate of the power-up on the screen
x            db ; x coordinate of the power-up on the screen
.endst

; A structure to contain the data required to render the door
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Door
alive_status db ; the status of the power-up with respects to being alive or dead
                ; 0 = dead, 1 = alive (alive => rendered, dead => not rendered)
world_row    db ; row index of the screen the power-up is on
world_column db ; column index of the screen the power-up is on
y            db ; y coordinate of the power-up on the screen
x            db ; x coordinate of the power-up on the screen
.endst

; A structure to contain the data required to render the fairy's fairy dust attack
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct Dust
alive_status db ; the status of the fairy dust attack with respects to being alive or dead
                ; 0 = dead, 1 = alive (alive => rendered, dead => not rendered)
y            db ; y coordinate of the fairy dust attack on the screen
x            db ; x coordinate of the fairy dust attack on the screen
CountDown    db ; a variable the controls how long the attack is displayed on the screen
.endst

; A structure to contain the data required to render the loss of life graphic effect
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct LifeLost
alive_status db ; the status of the life lost effect with respects to being alive or dead
                ; 0 = dead, 1 = alive (alive => rendered, dead => not rendered)
y            db ; y coordinate of the life lost effect on the screen
x            db ; x coordinate of the life lost effect on the screen
CountDown    db ; a variable the controls how long the effect is displayed on the screen
.endst

; A structure to contain the data required to render the star burst effect
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the update sprites functions
.struct StarBurst
alive_status db ; the status of the life lost effect with respects to being alive or dead
                ; 0 = dead, 1 = alive (alive => rendered, dead => not rendered)
y1           db ; y coordinate of the life lost effect on the screen
x1           db ; x coordinate of the life lost effect on the screen
y2           db ; y coordinate of the life lost effect on the screen
x2           db ; x coordinate of the life lost effect on the screen
y3           db ; y coordinate of the life lost effect on the screen
x3           db ; x coordinate of the life lost effect on the screen
y4           db ; y coordinate of the life lost effect on the screen
x4           db ; x coordinate of the life lost effect on the screen
CountDown    db ; a variable the controls how long the effect is displayed on the screen
.endst

; A structure to contain the data required to render sound effects
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; N.B. the elements in this structure are listed in the order in which they are
; required by the SoundFXDriver function
.struct SoundFX
CountDown    db ; a variable to control how long the sound effect is played for
ch3_byte1    db ; one of the bytes to be sent to the PSG
ch3_byte2    db ; one of the bytes to be sent to the PSG
ch3_byte3    db ; one of the bytes to be sent to the PSG
noise_byte1  db ; one of the bytes to be sent to the PSG
noise_byte2  db ; one of the bytes to be sent to the PSG
noise_byte3  db ; one of the bytes to be sent to the PSG
.endst

; Variables
; ---------
.enum $c008                         ; variables are defined so that the first 8 bytes of
                                    ; RAM are left free. Apparently, these bytes are used
                                    ; by the system for memory management functions and
                                    ; should not be used by a game program.

; Player location variables
PlayerXCoord              db        ; player's x coordinate on screen
PlayerYCoord              db        ; player's y coordinate on screen
PlayerDirection           db        ; a variable to encode what direction the player is facing
                                    ; 1 = up, 2 = down, 3 = left, 4 = right
                                    ; 5 = up-right, 6 = down-right, 7 = up-left, 8 = down-left
ScreenRowIndex            dw        ; row index of which screen the player is on
ScreenColIndex			  dw        ; column index of which screen the player is on
CurrentWorld              db        ; the current world the player is on

; Boss location variables
BossXCoord                db        ; boss's x coordinate on screen
BossYCoord                db        ; boss's y coordinate on screen
BossDirection             db        ; a variable to encode what direction the boss is facing
                                    ; 1 = up, 2 = down, 3 = left, 4 = right
                                    ; 5 = up-right, 6 = down-right, 7 = up-left, 8 = down-left
BossMoveDelay             db        ; a variable which controls the speed the boss travels at
BossFireDelay             dw        ; a variable which controls how often the boss fires his attack

; BG graphics control variables
WorldOffset				  dw        ; a variable which stores an offset to point to the correct location
                                    ; within the world data tables. This offset is dependant upon the row
								    ; and column index of the current screen to display.
WorldPointer              dw        ; a variable to store the address at which the next byte of world data is located
ChunkOffset               dw        ; a variable which stores an offset to point to the correct location
                                    ; within the chunk data tables. This offset is dependant upon the chunk
                                    ; to be rendered.
ChunkPointer              dw        ; a variable to store the address at which the next byte of chunk data is located
BGMatrixPointer           dw        ; a variable which stores the address at which the next byte of the BG matrix is to
                                    ; be written
BGChangeFlag              db        ; a flag to control when the BG graphics must be updated
Buffer1                   dsb 64    ; a buffer of bytes in memory to seperate the BGMatrix from other items in RAM
                                    ; this buffer is required so that collision detection with solid background tiles
								    ; is not triggered spuriously
BGMatrix                  dsb 768   ; a matrix which contains all the tile indexes used to generate
                                    ; the BG graphics
Buffer2                   dsb 64    ; a buffer of bytes in memory to seperate the BGMatrix from other items in RAM
                                    ; this buffer is required so that collision detection with solid background tiles
                                    ; is not triggered spuriously

; Sprite graphics control variables
SpriteTable               dsb 256   ; a table in local RAM representing the sprite table to send to VRAM
SpritePointerY            dw        ; a variable which points to the Y coordinate of the current sprite in the local
                                    ; sprite table
SpritePointerXT           dw        ; a variable which points to the X coordinate and tile index of the current
                                    ; sprite in the local sprite table
WingFlapFlag              db        ; a variable that controls wing flap animation for the player
BWingFlapFlag             db        ; a variable that controls wing flap animation for the boss

; Input control variables
CurrentlyPressedButtons   db        ; buttons which are currently being pressed
JustPressedButtons        db        ; buttons which have just been pressed
CurrentBGPosition         dw        ; a variable which acts as a pointer to indicate which background tile the player
                                    ; is currently infront of.
CurrentBGRow              db        ; a variable to encode which screen row the player is occupying
CurrentBGColumn           db        ; a variable to encode which screen column the player is occupying

; Enemies and power-ups
Bats instanceof Bat       10        ; reserve space in RAM for 10 bat enemy objects
BatMoveDelay              db        ; a variable to control how quickly the bats move
Spiders instanceof Spider 10        ; reserve space in RAM for 10 spider enemy objects
SpiderMoveDelay           db        ; a variable to control how quickly the spiders move
Mush instanceof Mushroom  10        ; reserve space in RAM for 10 mushroom enemy objects
MushMoveDelay             db        ; a variable to control how quickly the mushrooms move
Trees instanceof Tree     10        ; reserve space in RAM for 10 tree enemy objects
TreeMoveDelay             db        ; a variable to control how quickly the trees move
Hearts instanceof Heart   10        ; reserve space in RAM for 10 heart power-up objects
Doors instanceof Door     1         ; reserve space in RAM for 1 door object
DustAtt instanceof Dust   1         ; reserve space in RAM for the fairy dust attack object
Hurt instanceof LifeLost  1         ; reserve space in RAM for the life lost graphic effect
                                    ; although this is named Hurt, it is also used for the life gained graphic effect
Burst instanceof StarBurst 1        ; reserve space in RAM for the star burst graphic effect
BossAtt instanceof Dust   1         ; reserve space in RAM for the boss' attack

; Game dyanmics variables
CurrentLives              dw        ; a variable to store the lives the player has
BossLives                 dw        ; a variable to store the lives the boss has
NextLevelFlag             db        ; a variable to control whether the game moves on to the next level or not

; music and sound effects control variables
MusicPointer              dw        ; a pointer to point to the correct address in the music data stream
NoteDuration              db        ; a variable to determine how long each note lasts in event loop iterations
SndFX instanceof SoundFX  1         ; reserve space in RAM for the sound effects data

.ende