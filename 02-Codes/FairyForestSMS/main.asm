;==============================================================
; Fairy Forest - main program
;
; Version 1.0.2
; 2017
;
; Built with WLA DX assembler and linker
; Maxim's BMP2TILE utility used to generate tile data entries
;
; * This file contains the main executeable code of the program.
; * This file also contains notes regarding game development
;   and overall software architecture/design.
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

; Developmental notes
; ===================

; Version history
; ---------------

; 1.0.0 released 4 Aug 2017
; 1.0.1 released 8 Aug 2017
; 1.0.2 released 9 Aug 2017

; To do list
; ----------

; 1) Nil

; A note on my code organization and commenting style
; ---------------------------------------------------

; I generally attempt to organize my code in a logical manner. That said, the reuse
; of some of my old modules leads to some inconsistencies in organization and
; inline documentation. With regards to organization, I try to break the code up into
; logically divided include files. Furthermore, I divide functions by the purposes
; they serve. Other than these two organizational features, there is no particular
; order to how the functions are presented. With regards to commenting, I comment
; extensively for my benefit and those who may use my code in the future. I
; attempt to comment consistently but some variability inevitably exists. Notwithstanding,
; I comment in such detail that the functioning of the code should be clear despite
; any non-uniformities in documentation.

; Game concept
; ------------

; Fairy Forest is a 2D adventure game where the player adopts the character of a fairy
; attempting to navigate through worlds to find their way home; the game adopts a side
; view perspective. Annorah's concept for the appearance is to imitate the PC game
; Terraria. In each world, the player starts in a location and must find
; their way to a door at the "end" of the world; the door leads to a boss battle that in
; turn leads into the next world. Each world is intended to adopt large dimensions both
; horizontally and vertically; this design decision was made to imitate Terraria.

; Annorah's concept is to have three worlds in the following arrangement:

; 1) World 1
; 2) Boss battle 1
; 3) World 2
; 4) Boss battle 2
; 5) World 3 (final maze + village which represents the end of the game)

; Graphics
; --------

; Fairy Forest is a game designed for the Sega Master System. This
; hardware platform constrains how the graphics of the game are constructed.
; All the graphics are composed of 8 x 8 bitmaps. These bitmaps may be drawn on the
; background - in which case they are tiles - or the foreground - in which case
; they are sprites. The player is represented by an animated group of sprites
; which move based on player input (i.e. fairy with flapping wings). As the player
; moves about the world, they move on screen; when they reach the edge of the screen,
; the screen is updated with the next background and the character is repositioned
; to the opposite side of the screen. Worlds are composed of an m x n array of
; such screens with multiple rows and columns; this array is represented in the
; diagram below where the first digit is the row index and the second the column
; index (N.B. the size of this diagram does not represent the dimensions of the
; the worlds in the game as implemented; the worlds as implemented have rows 0 to 6
; and columns 0 to 6 and as such are 7 x 7):

; -------------------------------------
; | 0,0 | 0,1 | 0,2 | 0,3 | ... | 0,n |
; -------------------------------------
; | 1,0 | 1,1 | 1,2 | 1,3 | ... | 1,n |
; -------------------------------------
; | 2,0 | 2,1 | 2,2 | 2,3 | ... | 2,n |
; -------------------------------------
; | 3,0 | 3,1 | 3,2 | 3,3 | ... | 3,n |
; -------------------------------------
; | ... | ... | ... | ... | ... | ... |
; -------------------------------------
; | m,0 | m,1 | m,2 | m,3 | ... | m,n |
; -------------------------------------

; N.B. the character is not permitted to wrap from one side of the world to the other.
; That is to say, if a character is on a screen near the boundary of the world, they cannot
; leave that screen via the edge on the boundary of the world. This is implemented practically
; by having barrier tiles all around the outside of the world (A barrier tile is one that the
; character is not able to move through).

; Each screen itself is rendered as a composite of several standard 8 x 8 chunks of tiles.
; The 32 x 24 tile screen is therefore composed of 4 x 3 chunks encoded by a 4 x 3 array
; of bytes. The diagram below shows the chunks that make up each screen. When one examines
; the world data tables in data.asm, one can see how these individual screens are encoded;
; each screen is seperated from the others in these data tables by tabs and line spacing
; in order to emphasize the boundaries between screens.

; ---------------------
; |  1 |  2 |  3 |  4 |
; ---------------------
; |  5 |  6 |  7 |  8 |
; ---------------------
; |  9 | 10 | 11 | 12 |
; ---------------------

; Although the VDP encodes each tile by a 2 byte word, each tile in each chunk
; is encoded by a single byte in order to save space on the cartridge; a zero byte is
; added by the render function for each tile code sent to the VDP. Furthermore, different
; tiles are used by each world so as to give the game a graphical richness. That said,
; only one set of chunks is specified in data.asm; different tile sets are specified
; for each world to allow the same chunk data to work in all worlds.

; An example of a standard chunk could be as follow:

; |---------------|     This is a cave chunk that represents the upper, righthand,
; |. . . . . . . .|     inside corner of a cave.
; |. . . . . . . .|
; |. . . . . . . .|     See data.asm comments for a complete listing of the chunks.
; |------- . . . .|
; |       \. . . .|
; |        | . . .|
; |        | . . .|
; |        | . . .|
; |---------------|

; Sprite collision detection is used to identify when the player contacts enemies
; or power-ups. Collision detection is implemented by drawing upon the VDP's
; ability to send sprite collision signals via the VDPControl port. The lives indicator
; is also implemented as a series of sprites that sit atop the background world; this
; should help ameliorate a graphics issue which presented in CASEVAC when it was tested
; on original SMS hardware. Finally, there are certain elements of the background
; that the player cannot move through (i.e. solid objects); this is implemented by
; comparing the player position on the screen to the tile indexes in BGMatrix.

; Enemy and power-up design
; -------------------------

; All enemies and power-ups are implemented as sprites. Enemies or power-ups start as
; data in the data.asm file; these data blocks are organized by enemy/power-up type
; and which world they are to be found in. As each world is loaded, these data blocks
; are loaded into RAM as objects (data structures). Each structure contains information
; regarding which screen to render the enemy/power-up on (i.e. the row and column index),
; the initial x and y coordinates the enemy/power-up is to be drawn at and limits on their
; movement in x and y. The update sprites function uses this information to render the
; enemies and power-ups as the the enemies move around the world. It should be noted that
; no collision detection is implemented for the enemies and the background (i.e. an enemy
; is not aware that they are standing on the ground or hitting a wall); the limits of movement
; in x and y as contained in the object's data/RAM serve this purpose.

; The enemies in Fairy Forest include:

; - bats
; - spiders
; - mushrooms
; - trees

; The only power-up implemented is a heart which gives the player an additional life.

; An important thing to note about enemies and power-ups is that they are implemented
; with the following code components:

; 1) Structures as defined in memory_map.asm
; 2) Lists of objects and supporting variables as defined in memory_map.asm
; 3) Define directives in this file
; 4) IniVarsForEventLoop in functions_admin.asm
; 5) LoadWorld___EnemiesAndPowerUps functions in functions_admin.asm
; 6) UpdateSprites and Update___Sprites functions in functions_FG.asm
; 7) Enemy and power-up collision detection functions is functions_game.asm
; 8) Data in data.asm

; When changing anything to do with enemies and power-ups, consider any changes that may
; need to be made to all of the above components.

; Music and sound effects
; -----------------------

; Music and sound effects are implemented by two functions. First, the music driver. Second,
; the sound effects driver. The music driver operates on PSG channels 1 & 2 while the sound effects
; driver operates channel 3. The music driver simply sends 6 bytes to the PSG's channels 1 and 2
; at set intervals of iterations of the event loop; data in data.asm contains these byte which
; encodes music.

; Overall design architecture
; ---------------------------

; The following is the overall flow of game execution:

; N.B. Not all code from the main function is included in the diagram which follows;
; only the high level components of the software architecture are included.

;                     ----------------
;                     | Boot section |
;                     ----------------
;                         |
;                         V
;                     -----------------
;                  -->| Main function |
;                  |  -----------------
;                  |      |
;                  |      -----
;                  |          |
;                  |          V
;                  |      ------------------
;                  |      | Initialize VDP |---------------------------------> IniVDP function
;                  |      ------------------
;                  |          |
;                  |          V
;                  |      ------------------------------
;                  |      | Initialize variable values |---------------------> IniVarsGlobal function
;                  |      ------------------------------
;                  |          |
;                  |          V
;                  |      -------------------------------------------
;                  |      | Draw title screen and wait for keypress |--------> DrawTitleScreen and WaitForKeyPress functions
;                  |      -------------------------------------------
;                  |          |
;                  |          V
;                  |      -------------------------------------------
;                  |      | Draw intro screen and wait for keypress |--------> DrawIntroScreen and WaitForKeyPress functions
;                  |      -------------------------------------------
;                  |          |
;                  |          V
;                  |      -----------
;                  |      | World 1 |----------------------------------------> World1EventLoop function
;                  |      -----------
;                  |          |
;                  |          V
;                  |      -----------------
;                  |      | Boss battle 1 |----------------------------------> BossBattle1EventLoop function
;                  |      -----------------
;                  |          |
;                  |          V
;                  |      -----------
;                  |      | World 2 |----------------------------------------> World2EventLoop function
;                  |      -----------
;                  |          |
;                  |          V
;                  |      -----------------
;                  |      | Boss battle 2 |----------------------------------> BossBattle2EventLoop function
;                  |      -----------------
;                  |          |
;                  |          V
;                  |      -----------
;                  |      | World 3 |----------------------------------------> World3EventLoop function
;                  |      -----------
;                  |          |
;                  |          V
;                  |      ---------------------------------------------
;                  -------| Draw credits screen and wait for keypress |------> DrawCreditScreen and WaitForKeyPress functions
;                         ---------------------------------------------


; Testing procedures conducted
; ----------------------------

; 1) Many components are recycled from a previous game I designed (CASEVAC;
;    available at smspower.org); these components were tested as part of the
;    previous game's development process. Additionally, some of these older
;    components were updated and improved for this game.
; 2) Components tested as they were designed/built using Meka 0.73 (Windows),
;    KEGA Fusion 3.64 (Windows) and MasterEmu 2.4 (Android).
; 3) Sadly, this game has not been tested on original SMS hardware as my
;    wife is a meany and has forbidden me from buying a vintage Sega system.
; 4) v1.0.1 also tested in Emulicious with accurate VDP emulation enabled

; Improvements on CASEVAC
; -----------------------

; 1) The player can now move left, right, up, down, up-left, up-right,
;    down-left and down-right. Also, the movement logic is improved.
; 2) A new world rendering architecture allows for a larger world to be
;    stored on the cartridge.
; 3) Collision detection between the player and solid background tiles
;    is improved.
; 4) More complex enemy movements.
; 5) Music and sound effects drivers added.

; Known bugs and deficiencies
; ---------------------------

; 1) Occasionally, a flapping wing sprite is drawn away from the player
;    as the player changes direction. Additionally, there is general sprite
;    weirdness that occurs where sprites transiently shift position when the player
;    changes direction. This problem is due to how the local sprite table is loaded
;    with data and then sent to the VDP. As the player switches from a vertical direction
;    to a horizontal one, the number of sprites in the sprite table change leading to
;    misalignmetns in the data as the sprite table is updated in the VDP.
;    *** MITIGATED BY REPLACING A CALL TO SENDTOVDPDATA FUNCTION WITH OTIR
;    THE PROBLEM IS LESS SEVERE NOW BUT STILL PRESENT. ***
;    *** MITIGATED FURTHER BY ADDING PLACE HOLDER SPRITES IN NON-VERTICAL CHARACTER
;    SPRITE GROUPS; THIS HAS REMOVED ANY WEIRDNESS WITH NON-CHARACTER SPRITES AND NOW
;    ALL THAT REMAINS IS THE TRANSIENT EFFECT WITH WING SPRITES. THIS IS A HUGE IMPROVEMENT ***
; 2) If the player is pressed up against a solid tile while changing screens
;    it is possible for them to move into the solid tiles by 1 pixel with
;    each screen change. This bug is only observed when moving up-left or
;    up-right while pressed against a wall. The worlds have been designed to
;    minimize the potential for this bug to manifest.
; 3) If solid tiles are placed right up against the left or right edges of the
;    screen, then the player cannot move out the opposite side of the screen.
;    This is not so much a bug but rather an artifact of how the solid
;    tile collision detection logic works. This problem is easily overcome
;    by maintaining at least one empty column at both left and right edges
;    of the screen. Chunk and world design was carried out with this issue in mind.
; 4) There are problems with screen transitions. The game makes the screen
;    transitions properly most of the time as the player reaches the edge of the screen.
;    That said, there are times where the player will jump to a screen
;    inappropriately. This problem is not as severe as in CASEVAC but it still
;    is problematic. *** THIS PROBLEM HAS BEEN RECTIFIED BY CHANGING THE COORDINATES AT
;    WHICH THE SCREEN TRANSITIONS TAKE PLACE. PREVIOUSLY, THE PROGRAM WOULD WRAP THE
;    CHARACTER TO THE OTHER SIDE OF THE SCREEN WITHOUT ANY BUFFER FROM THE EDGE; NOW
;    THE PROGRAM ADDS A BUFFER TO PREVENT INADVERTENT FLIP-FLOPPING BETWEEN SCREENS ***
; 5) Given the sprite intensity of the character and enemies, it is easy
;    to place too many enemies along the same line on the screen thereby encountering
;    the VDP's eight sprite per line limit. Due consideration should be given to
;    this limitation during level design.
; 6) Enemies speed up when more than one of a given type is on a screen. This
;    is due to the way in which enemy movement delays are implemented. I do not
;    consider this to be a bug per se but rather an artifact of the architecture of
;    of the functions.
; 7) The lives indicator is comprised of sprites which can occasionally lead to
;    problems when there are more than eight sprites on a line. This problem
;    manifests when the player passes through the bottom of the screen and a
;    heart drops off from the end of the lives indicator. *** RESOLVED BY REDUCING
;    THE MAXIMUM NUMBER OF LIVES TO THREE; IT IS AN EASY GAME AND THERE IS NO
;    NEED FOR A LARGE NUMBER OF LIVES ***
; 8) The tempo of the music changes as the workload placed upon the main event loop
;    changes. More sprites being rendered => slower music. *** RESOLVED BY REPLACING
;    THE DelayExecution FUNCTION WITH A CALL TO HALT IN THE EVENT LOOPS ***
; 9) There are many places where I have used old code I wrote which is very inefficient
;    when it comes to memory read/writes. I am sure that accessing RAM more than
;    I need to has slowed program execution. That said, the game plays acceptably well
;    so I have allowed the inefficient code to remain. I know, I'm lazy.
; 10)After testing in Emulicious, it has come to my attention that the game as implemented
;    works best with NSTC 60 Hz timing.
; 11)The game exhibits some sprite "weirdness" when run in Emulicious with VDP constraints
;    enabled; these are much reduced from the past version.

; Bug fixes since 1.0.0
; ---------------------
; 1) Instead of delaying the execution of the program with a loop, a halt is used instead.
;    Thanks to Kagesan for the recommendation. This sorts out the music tempo issue alluded
;    to above and it also seems to fix the issue that matt found in Emulicious with realistic
;    VDP emulation.

; Bug fixes since 1.0.1
; ---------------------
; 1) Screen transitions are now fixed. The fairy no longer gets lost between screens sometimes
;    nor does half her body wrap to the other side of the screen during transition.

; Acknowledgements and references
; -------------------------------

; 1) Maxim's excellent SMS programming tutorials and example source code at:
;    a) http://www.smspower.org/maxim/HowToProgram/Lesson1AllOnOnePage
;    b) http://www.smspower.org/uploads/Homebrew/Ono-SMS-1.01-src.zip
;    c) http://www.smspower.org/uploads/Development/SN76489-20030421.txt
; 2) Maxim's BMP2TILE utility
; 3) Richard Talbot-Watkins' SMS technical documentation at:
;    http://www.smspower.org/uploads/Development/richard.txt
; 4) Charles MacDonald's SMS technical documentation at:
;    http://www.smspower.org/uploads/Development/msvdp-20021112.txt
; 5) Sega Mk III console programming manual at:
;    http://www.smspower.org/Development/OfficialDocumentation?sid=f452272d67f2eedfda78031a91db1dca
; 6) Zilog Z80 programming manual at:
;    http://www.smspower.org/uploads/Development/z80cpu_um.zip
; 7) SMSPower user feedback regarding CASEVAC testing
; 8) SMSPower user feedback regarding Fairy Forest testing
; 9) Kagesan for his specific suggestions regarding execution delay

; Administrative directives
; =========================

; Define constants
; ----------------

; N.B. Not all of these constants are used; some are vestigial components from past
; games and have been left in since they do no harm.

.define VDPControl $bf               ; define VDP control port
.define VDPData $be                  ; define VDP data port
.define SoundControl $7f             ; define the PSG control port
.define VRAMWrite $4000              ; define VRAM start address
.define CRAMWrite $c000              ; define CRAM start address
.define TilemapWrite $38|$40         ; define tile map start address
.define SpritemapWrite $3f|$40       ; define sprite map start address
.define IOPort1 $dc                  ; define input 1 port
.define IOPort2 $dd                  ; define input 2 port
.define P1U  %00000001               ; define player 1 up on IOPort1
.define P1D  %00000010               ; define player 1 down on IOPort1
.define P1L  %00000100               ; define player 1 left on IOPort1
.define P1R  %00001000               ; define player 1 right on IOPort1
.define P1UR %00001001               ; define player 1 up and right on IOPort1
.define P1DR %00001010               ; define player 1 down and right on IOPort1
.define P1UL %00000101               ; define player 1 up and left on IOPort1
.define P1DL %00000110               ; define player 1 down and left on IOPort1
.define P11  %00010000               ; define player 1 button 1 on IOPort1
.define P12  %00100000               ; define player 1 button 2 on IOPort1
.define ResetButton %00010000        ; define reset button on IOPort2
.define COL  %00100000               ; define the sprite collision detect signal from port $bf
.define NoOfBats 10                  ; define the number of bats in each world
.define BatDelay 3                   ; define the number of event loop iterations between bat movements
                                     ; BatDelay must be an odd number
.define BatWingFlapItrs 5            ; define the number of event loop iterations between wing flaps
.define NoOfSpiders 10               ; define the number of spiders in each world
.define SpiderDelay 3                ; define the number of event loop iterations between spider movements
                                     ; SpiderDelay must be an odd number
.define SpiderLegMoveItrs 10         ; define the number of event loop iterations between wing flaps
.define NoOfMush 10                  ; define the number of mushrooms in each world
.define MushDelay 3                  ; define the number of event loop iterations between mushroom movements
                                     ; SpiderDelay must be an odd number
.define MushLegMoveItrs 15           ; define the number of event loop iterations between wing flaps
.define NoOfTrees 10                 ; define the number of trees in each world
.define TreeDelay 3                  ; define the number of event loop iterations between tree movements
                                     ; SpiderDelay must be an odd number
.define TreeLegMoveItrs 15           ; define the number of event loop iterations between wing flaps
.define NoOfHearts 10                ; define the number of heart power-ups to include in each world
.define NoteLength 5                 ; define the duration of each music note in terms of event loop iterations
.define BossDelay 3                  ; define the number of event loop iterations between boss movements
.define FireDelay 200                ; define the number of event loop iterations between boss attack firings

; Insert memory map directives from file
; --------------------------------------

; This includes basic directives to setup the memory configuration of the
; program so that it fits within an SMS ROM. Additionally, this file contains
; all the variable definitions used in the program.

.include "memory_map.asm"

; Insert SDSC tag and SMS rom header
; ----------------------------------
.sdsctag 1.01,"FairyForest","Fairy Forest adventure game","Developed by Patrick and Annorah Beeson 2017"

; Insert boot instructions from file
; ----------------------------------
.include "boot.asm"

; Insert functions from include files
; -----------------------------------
.include "functions_admin.asm"     ; functions that perform administrative tasks
.include "functions_VDP.asm"       ; functions that interface with the VDP
.include "functions_PSG.asm"       ; functions that interface with the PSG
.include "functions_BG.asm"        ; functions that deal with background graphics (tiles)
.include "functions_FG.asm"        ; functions that deal with foreground graphics (sprites)
.include "functions_game.asm"      ; functions that deal with game mechanics and user control

; Main program
; ============
main:                              ; main function marker
	; initialization
	; ~~~~~~~~~~~~~~
	call IniVDP                    ; initialize the SMS' VDP
	call TurnOnScreen              ; turn on the screen to display messages/gameplay
	call IniVarsGlobal             ; initialize variable values at start-up

	; introductory content
	; ~~~~~~~~~~~~~~~~~~~~
	call LoadTilesTitleIntroCredit ; Load tiles for the title and intro screens

	; draw title screen
	call DrawTitleScreen           ; draw the title screen
	ld bc, 60000                   ; delay execution by bc loop iterations
	call DelayExecution            ; delay function used to prevent skipping the next screen due to controller
	                               ; signal retention
	call WaitForKeyPress           ; wait until player presses a key on the joypad

	; draw intro screen
	call DrawIntroScreen           ; draw the intro screen
	ld bc, 60000                   ; delay execution by bc loop iterations
	call DelayExecution            ; delay function used to prevent skipping the next screen due to controller
	                               ; signal retention
	call WaitForKeyPress           ; wait until player presses a key on the joypad

	; event loops
	; ~~~~~~~~~~~
	call World1EventLoop           ; start world 1

	World1Done:                    ; world 1 done marker (when the player reaches the door, the program jumps to this marker)

	call Boss1EventLoop            ; start boss battle 1

	Boss1Done:                     ; boss 1 done marker (when player defeats the boss, the program jumps to this marker)

	call World2EventLoop           ; start world 2

	World2Done:                    ; world 2 done marker (when the player reaches the door, the program jumps to this marker)

	call Boss2EventLoop            ; start boss battle 1

	Boss2Done:                     ; boss 2 done marker (when player defeats the boss, the program jumps to this marker)
	
	call World3EventLoop           ; start world 3

	World3Done:                    ; world 3 done marker (when the player reaches the door, the program jumps to this marker)

	; credits and game ending
	; ~~~~~~~~~~~~~~~~~~~~~~~
	call DrawCreditScreen          ; draw credit screen

	jp main                        ; jump to top of the program to start again after the game is beaten

; Data
; ====

; Insert data from file
; ---------------------

; This file consists of all the data used by the game. These include bitmaps for tiles, tilemaps for
; screens and a variety of other misc data.

.include "data.asm"