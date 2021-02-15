;==============================================================
; Fairy Forest - game mechanics functions include file
;
; * This file contains the game mechanics functions called by the
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

; Control and game mechanics functions
; ====================================

; A function to get input from the player
; ---------------------------------------
; Parameters: nil
; Acknowledgements to Maxim at SMSPower. This was the hardest problem to solve and his
; example source code was central to sorting out how to handle user input. See Maxim's
; ono101 game source code.
GetInputs:                        ; function definition
	in a,(IOPort1)                ; receive input from IOPort1
	cpl                           ; I'm not too clear on how this works
	and P1U|P1D|P1L|P1R|P11|P12   ; logical and with all possible key input signals
	ld b,a                        ; I'm not too clear on how this works
	ld hl,CurrentlyPressedButtons ; shift currently pressed buttons to register hl
	xor (hl)                      ; logical xor on register hl
	ld (hl),b                     ; I'm not too clear on how this works
	and b                         ; I'm not too clear on how this works
	ld (JustPressedButtons),a     ; I'm not too clear on how this works
	in a,(IOPort2)                ; receive input from IOPort2
	cpl                           ; I'm not too clear on how this works
	and ResetButton               ; logical and with reset button input signal
	jp nz,0                       ; I'm not too clear on how this works
	ret                           ; return to last execution

; A function to wait for user key press
; -------------------------------------
; Parameters: nil
WaitForKeyPress:                       ; function definition
	WaitLoop:                          ; top of loop (analogous to while loop)
		call GetInputs                 ; get input from user
		ld a,(CurrentlyPressedButtons) ; load CurrentlyPressedButtons buttons into register a
		and P1U|P1D|P1L|P1R|P11|P12    ; compare CurrentlyPressedButtons to those the user may press for effect
		jp z,WaitLoop                  ; while no buttons pressed jump to top of loop

	ret                                ; return to last execution

; A function to calculate the background tile the player is currently infront of
; ------------------------------------------------------------------------------
; Parameters: nil
CalcCurrentBGPosition:
	; determine what row and column the player is occupying relative to the background
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (PlayerYCoord)       ; load y coord into a
	srl a                      ; conduct right logical shift 3 times to divide y coord by 8
	srl a
	srl a
	ld (CurrentBGRow), a       ; save current row player is occupying to RAM

	ld a, (PlayerXCoord)       ; load x coord into a
	srl a                      ; conduct right logical shift 3 times to divide x coord by 8
	srl a
	srl a
	ld (CurrentBGColumn), a    ; save current column player is occupying to RAM

	; determine what byte of the BGMatrix the player is infront of
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; compute the contribution of rows
	ld a, (CurrentBGRow)       ; load row into a
	ld l, a                    ; transfer current row into low byte hl
	ld h, 0                    ; transfer 0 into high byte hl
	add hl, hl                 ; use add hl,hl to conduct left arithmetic shift
	add hl, hl                 ; do so 5 times to multiply by 32
	add hl, hl
	add hl, hl
	add hl, hl

	; compute the contribution of columns
	ld (CurrentBGPosition), hl ; store the contribution of rows in RAM
	ld de, (CurrentBGPosition) ; load the contribution of rows into de
	ld a, (CurrentBGColumn)    ; load the contribution of columns into a
	ld l, a                    ; transfer the contribution of columns into hl one byte at a time
	ld h, 0                    ; set h to 0 to ensure that hl reflects only the contribution of columns
	add hl, de                 ; add the two contributions to arrive at the offset from start of BGMatrix

	; add BGMatrix start address to determine pointer value
	ld (CurrentBGPosition), hl ; store the offset from the start of BGMatrix in RAM
	ld de, (CurrentBGPosition) ; load the offset from the start of BGMatrix into de
	ld hl, BGMatrix            ; load the start of BGMatrix into hl
	add hl, de                 ; add offset and address to compute the CurrentBGPosition pointer

	; store CurrentBGPosition in RAM
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld (CurrentBGPosition), hl ; send CurrentBGPosition to RAM

	ret

; A function to fire a fairy dust attack
; --------------------------------------
; Parameters: nil
FireFairyDust:
	ld hl, DustAtt          ; load the address of the dust attack object in hl as a pointer
	ld (hl), 1              ; set alive flag to alive
	inc hl                  ; increment to hl to point to the attack's y coordinate
	ld a, (PlayerYCoord)    ; load the attack's y coordinate into a
	sub 4                   ; adjust fairy dust attack coord to be centred on player
	ld (hl), a              ; set the attack's y coordinate
	inc hl                  ; increment to hl to point to the attack's x coordinate
	ld a, (PlayerXCoord)    ; load the attack's x coordinate into a
	sub 4                   ; adjust fairy dust attack coord to be centred on player
	ld (hl), a              ; set the attack's x coordinate
	inc hl                  ; increment to hl to point to the attack's count down value
	ld (hl), 80             ; set the attack's count down value to 80

	ret

; A function to move player based on user input
; ---------------------------------------------
; Parameters: nil
; N.B. This function is prototypical for the time being.
; It will be modified as the game is further designed.
MovePlayer:
	call CalcCurrentBGPosition          ; calculate the current position of the player relative
	                                    ; to the background graphics

	; conditional statements re: user input
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1U                             ; if player presses up then
	jp z, MoveUp                        ; jump to the MoveUp code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1D                             ; if player presses down then
	jp z, MoveDown                      ; jump to the MoveDown code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1L                             ; if player presses left then
	jp z, MoveLeft                      ; jump to the MoveLeft code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1R                             ; if player presses right then
	jp z, MoveRight                     ; jump to the MoveRight code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1UR                            ; if player presses up and right then
	jp z, MoveUpRight                   ; jump to the MoveUpRight code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1DR                            ; if player presses down and right then
	jp z, MoveDownRight                 ; jump to the MoveDownRight code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1UL                            ; if player presses up and left then
	jp z, MoveUpLeft                    ; jump to the MoveUpLeft code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P1DL                            ; if player presses down and left then
	jp z, MoveDownLeft                  ; jump to the MoveDownLeft code

	ld a, (CurrentlyPressedButtons)     ; load currently pressed buttons into register a
	xor P11                             ; if player presses button one then
	jp z, FireAttack                    ; jump to the FireAttack code

	jp EndFunctionMovePlayer            ; if no conditions are met, then jump to end of function to avoid uncommanded movement

	; instructions to handle player movement
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; *** this is going to need a lot of logic to wrap character properly and shift between screens ***

	; Move player up
	MoveUp:                             ; MoveUp marker
		; code to check if the player can move into the next block
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (-64 is the number of bytes needed to look
		                                ; two lines up in the BGMatrix)
		sbc hl, de                      ; subtract 64 from current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is above the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveUp                ; if the tile above the player is not 0 then do not move the player

		; code to move player
		ld a, (PlayerYCoord)            ; load player's y coord into a
		dec a                           ; decrement player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 16                          ; compare coord with edge of screen
		jp nz, EndMoveUp                ; if not at edge, jump to EndMoveUp
		
		ld a, 175                       ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveUp:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player down
	MoveDown:                           ; MoveDown marker
		; code to check if the player can move into the next block
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (64 is the number of bytes needed to look
		                                ; two lines down in the BGMatrix)
		add hl, de                      ; add 64 to current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is below the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveDown              ; if the tile below the player is not 0 then do not move the player

		; code to move player
		ld a, (PlayerYCoord)            ; load player's y coord into a
		inc a                           ; increment player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		ld a, 2                         ; load 2 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 176                         ; compare coord with edge of screen
		jp nz, EndMoveDown              ; if not at edge, jump to EndMoveUp

		ld a, 17                        ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveDown:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player left
	MoveLeft:                           ; MoveLeft marker
		; code to check if the player can move into the next block
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		dec hl                          ; decrement to point to the block to the left
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the left of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveLeft              ; if the tile to the left of the player is not 0 then do not move the player

		; code to move player
		ld a, (PlayerXCoord)            ; load player's x coord into a
		dec a                           ; decrement player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		ld a, 3                         ; load 3 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 8                           ; compare coord with edge of screen
		jp nz, EndMoveLeft              ; if not at edge, jump to EndMoveUp

		ld a, 247                       ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveLeft:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player right
	MoveRight:                          ; MoveRight marker
		; code to check if the player can move into the next block
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		inc hl                          ; increment to point to the block to the right
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the right of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveRight             ; if the tile to the right of the player is not 0 then do not move the player

		; code to move player
		ld a, (PlayerXCoord)            ; load player's x coord into a
		inc a                           ; increment player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		ld a, 4                         ; load 4 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 248                         ; compare coord with edge of screen
		jp nz, EndMoveRight             ; if not at edge, jump to EndMoveUp

		ld a, 9                         ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveRight:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player up and right
	MoveUpRight:                        ; MoveUpRight marker
		; check to see if the player can move up
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (-64 is the number of bytes needed to look
		                                ; two lines up in the BGMatrix)
		sbc hl, de                      ; subtract 64 from current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is above the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveUp1               ; if the tile above the player is not 0 then do not move the player

		; move player up
		ld a, (PlayerYCoord)            ; load player's y coord into a
		dec a                           ; decrement player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		EndMoveUp1:                     ; EndMoveUp1 marker

		; check to see if the player can move right
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		inc hl                          ; increment to point to the block to the right
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the right of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveRight1            ; if the tile to the right of the player is not 0 then do not move the player

		; move player right
		ld a, (PlayerXCoord)            ; load player's x coord into a
		inc a                           ; increment player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		EndMoveRight1:                  ; EndMoveRight1 marker

		ld a, 5                         ; load 5 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 248                         ; compare coord with edge of screen
		jp nz, EndMoveRightU            ; if not at edge, jump to EndMoveUp

		ld a, 9                         ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveRightU:

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 16                          ; compare coord with edge of screen
		jp nz, EndMoveUpR               ; if not at edge, jump to EndMoveUp

		ld a, 175                       ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveUpR:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player down and right
	MoveDownRight:                      ; MoveDownRight marker
		; check to see if the player can move down
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (64 is the number of bytes needed to look
		                                ; two lines down in the BGMatrix)
		add hl, de                      ; add 64 to current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is below the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveDown1             ; if the tile below the player is not 0 then do not move the player

		; move player down
		ld a, (PlayerYCoord)            ; load player's y coord into a
		inc a                           ; increment player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		EndMoveDown1:                   ; EndMoveDown1 marker

		; check to see if the player can move right
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		inc hl                          ; increment to point to the block to the right
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the right of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveRight2            ; if the tile to the right of the player is not 0 then do not move the player

		; move player right
		ld a, (PlayerXCoord)            ; load player's x coord into a
		inc a                           ; increment player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		EndMoveRight2:                  ; EndMoveRight2 marker

		ld a, 6                         ; load 6 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 248                         ; compare coord with edge of screen
		jp nz, EndMoveRightD            ; if not at edge, jump to EndMoveUp

		ld a, 9                         ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveRightD:

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 176                         ; compare coord with edge of screen
		jp nz, EndMoveDownR             ; if not at edge, jump to EndMoveUp

		ld a, 17                        ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveDownR:

		jp EndFunctionMovePlayer        ; if not jump to end of

	; Move player up and left
	MoveUpLeft:                         ; MoveUpLeft marker
		; check to see if the player can move up
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (-64 is the number of bytes needed to look
		                                ; two lines up in the BGMatrix)
		sbc hl, de                      ; subtract 64 from current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is above the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveUp2               ; if the tile above the player is not 0 then do not move the player

		; move player up
		ld a, (PlayerYCoord)            ; load player's y coord into a
		dec a                           ; decrement player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		EndMoveUp2:                     ; EndMoveUp2 marker

		; code to see if the player can move left
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		dec hl                          ; decrement to point to the block to the left
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the left of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveLeft1             ; if the tile to the left of the player is not 0 then do not move the player

		; move player left
		ld a, (PlayerXCoord)            ; load player's x coord into a
		dec a                           ; decrement player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		EndMoveLeft1:                   ; EndMoveLeft1 marker

		ld a, 7                         ; load 7 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 8                           ; compare coord with edge of screen
		jp nz, EndMoveLeftU             ; if not at edge, jump to EndMoveUp

		ld a, 247                       ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveLeftU:

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 16                          ; compare coord with edge of screen
		jp nz, EndMoveUpL               ; if not at edge, jump to EndMoveUp

		ld a, 175                       ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveUpL:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; Move player down and left
	MoveDownLeft:                       ; MoveDownLeft marker
		; check to see if the player can move down
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		ld de, 64                       ; load 64 into de (64 is the number of bytes needed to look
		                                ; two lines down in the BGMatrix)
		add hl, de                      ; add 64 to current BG position
		ld a, (hl)                      ; load the tile in the BGMatrix that is below the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveDown2             ; if the tile below the player is not 0 then do not move the player

		; move player down
		ld a, (PlayerYCoord)            ; load player's y coord into a
		inc a                           ; increment player's y coord
		ld (PlayerYCoord), a            ; store decremented player's y coord in RAM

		EndMoveDown2:                   ; EndMoveDown2 marker

		; code to see if the player can move left
		ld hl, (CurrentBGPosition)      ; load current BG position into hl
		dec hl                          ; decrement to point to the block to the left
		ld a, (hl)                      ; load the tile in the BGMatrix that is to the left of the player
		xor 0                           ; compare the tile index to zero (i.e. a blank tile)
		jp nz, EndMoveLeft2             ; if the tile to the left of the player is not 0 then do not move the player

		; move player left
		ld a, (PlayerXCoord)            ; load player's x coord into a
		dec a                           ; decrement player's x coord
		ld (PlayerXCoord), a            ; store decremented player's x coord in RAM

		EndMoveLeft2:                   ; EndMoveLeft2 marker

		ld a, 8                         ; load 8 into accumulator
		ld (PlayerDirection),a          ; set player direction variable

		; code to handle hitting the edge of the screen
		ld a, (PlayerXCoord)            ; load player's coord into a
		xor 8                           ; compare coord with edge of screen
		jp nz, EndMoveLeftD             ; if not at edge, jump to EndMoveUp

		ld a, 247                       ; load coord for opposite side of screen into a
		ld (PlayerXCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenColIndex)         ; load screen index into hl
		dec hl                          ; change screen index to move to next screen
		ld (ScreenColIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveLeftD:

		; code to handle hitting the edge of the screen
		ld a, (PlayerYCoord)            ; load player's coord into a
		xor 176                         ; compare coord with edge of screen
		jp nz, EndMoveDownL             ; if not at edge, jump to EndMoveUp

		ld a, 17                        ; load coord for opposite side of screen into a
		ld (PlayerYCoord), a            ; store wraped coord in RAM

		ld hl, (ScreenRowIndex)         ; load screen index into hl
		inc hl                          ; change screen index to move to next screen
		ld (ScreenRowIndex), hl         ; store new screen index in RAM

		ld a, 1                         ; load 1 into accumulator
		ld (BGChangeFlag), a            ; set BGChangeFlag to 1 to force BG redraw

		EndMoveDownL:

		jp EndFunctionMovePlayer        ; if not jump to end of function

	; fire fairy dust attack
	FireAttack:                         ; FireAttack marker
		call FireFairyDust              ; call the FireFairyDust function
		jp EndFunctionMovePlayer        ; jump to the end of the function

	EndFunctionMovePlayer:              ; End of function marker

	ret

; A function to decrement the player's lives
; ------------------------------------------
; Parameters: nil
DecrementLives:
	; trigger life lost graphic effect
	ld hl, Hurt                       ; load the address of the life lost effect object in hl as a pointer
	ld (hl), 1                        ; set alive flag to alive
	inc hl                            ; increment to hl to point to the effect's y coordinate
	ld a, (PlayerYCoord)              ; load the effect's y coordinate into a
	sub 4                             ; adjust effect's coord to be centred on player
	ld (hl), a                        ; set the effect's y coordinate
	inc hl                            ; increment to hl to point to the effect's x coordinate
	ld a, (PlayerXCoord)              ; load the effect's x coordinate into a
	sub 4                             ; adjust effect's coord to be centred on player
	ld (hl), a                        ; set the effect's x coordinate
	inc hl                            ; increment to hl to point to the effect's count down value
	ld (hl), 40                       ; set the effect's count down value to 40

	; trigger life lost sound effect
	ld a, 10                          ; load sound effect duration in a
	ld (SndFX), a                     ; send sound effect duration to RAM
	ld a, %11001010                   ; load 1st byte of PSG data into a
	ld (SndFX + 1), a                 ; send byte to RAM
	ld a, %00011111                   ; load 2st byte of PSG data into a
	ld (SndFX + 2), a                 ; send byte to RAM
	ld a, %11010101                   ; load 3st byte of PSG data into a
	ld (SndFX + 3), a                 ; send byte to RAM
	ld a, %00000000                   ; load 4st byte of PSG data into a
	ld (SndFX + 4), a                 ; send byte to RAM
	ld a, %00000000                   ; load 5st byte of PSG data into a
	ld (SndFX + 5), a                 ; send byte to RAM
	ld a, %11111111                   ; load 6st byte of PSG data into a
	ld (SndFX + 6), a                 ; send byte to RAM

	; decrement lives and test for game over
	ld bc, (CurrentLives)             ; load current lives into bc
	dec bc                            ; decrement the number of lives
	ld (CurrentLives), bc             ; update the number of lives in RAM

	ld a, c                           ; load c into a
	cp 0                              ; compare current lives with zero
	jp nz, EndFunctionDecrementLives  ; if lives remain, jump to end of function

	call DrawGameOverScreen           ; if no lives remain, call game over function

	EndFunctionDecrementLives:        ; EndFunctionDecrementLives marker

	ret

; A function to increment the player's lives
; ------------------------------------------
; Parameters: nil
IncrementLives:
	; code to handle incrementing lives
	ld bc, (CurrentLives)             ; load current lives into bc

	ld a, c                           ; load c into a
	cp 3                              ; compare current lives with three
	jp z, EndFunctionIncrementLives   ; if already at max lives, jump to end of function

	; trigger life gained graphic effect
	ld hl, Hurt                       ; load the address of the life lost effect object in hl as a pointer
	ld (hl), 1                        ; set alive flag to alive
	inc hl                            ; increment to hl to point to the effect's y coordinate
	ld a, (PlayerYCoord)              ; load the effect's y coordinate into a
	sub 44                            ; adjust effect's coord to be above player
	ld (hl), a                        ; set the effect's y coordinate
	inc hl                            ; increment to hl to point to the effect's x coordinate
	ld a, (PlayerXCoord)              ; load the effect's x coordinate into a
	sub 4                             ; adjust effect's coord to be centred on player
	ld (hl), a                        ; set the effect's x coordinate
	inc hl                            ; increment to hl to point to the effect's count down value
	ld (hl), 40                       ; set the effect's count down value to 40

	; trigger life gained sound effect
	ld a, 10                          ; load sound effect duration in a
	ld (SndFX), a                     ; send sound effect duration to RAM
	ld a, %11001101                   ; load 1st byte of PSG data into a
	ld (SndFX + 1), a                 ; send byte to RAM
	ld a, %00001111                   ; load 2st byte of PSG data into a
	ld (SndFX + 2), a                 ; send byte to RAM
	ld a, %11010101                   ; load 3st byte of PSG data into a
	ld (SndFX + 3), a                 ; send byte to RAM
	ld a, %00000000                   ; load 4st byte of PSG data into a
	ld (SndFX + 4), a                 ; send byte to RAM
	ld a, %00000000                   ; load 5st byte of PSG data into a
	ld (SndFX + 5), a                 ; send byte to RAM
	ld a, %11111111                   ; load 6st byte of PSG data into a
	ld (SndFX + 6), a                 ; send byte to RAM

	; code to handle incrementing lives
	inc bc                            ; increment the number of lives
	ld (CurrentLives), bc             ; update the number of lives in RAM

	EndFunctionIncrementLives:        ; EndFunctionIncrementLives marker

	ret

; A function to handle sprite collisions
; --------------------------------------
; Parameters: nil
CollisionHandler:
	; *** I HAVE REMOVED THE CODE DETECTING THE COLLISION SIGNAL FROM THE VDP ***
	; *** I WOULD HAVE LIKED TO KEEP THIS CODE FOR EFFICIENCY PURPOSES BUT IT SEEMS TO DISABLE COLLISION DETECTION ***
	;in a,(VDPControl)                 ; read the output of the VDPControl port to detect sprite collision signal
	;and COL                           ; conduct logical and to isolate collision signal
	;jp z, EndFunctionCollisionHandler ; if no collision detected, jump to End of function

	; code to handle collisions with enemies and power-ups
	; - - - - - - - - - - - - - - - - - - - - - - - - - - -

	; bat collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld bc, NoOfBats                   ; load the number of bats into bc as a loop counter
	ld hl, Bats                       ; load the start address of bat objects into hl as a pointer

	BatCollisionLoop:                 ; BatCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceBatColPointer1  ; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatColPointer2  ; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatColPointer3  ; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		inc hl                        ; increment bat pointer to point at the bat's y coordinate

		; test to see if player is below the y upper limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceBatColPointer4   ; if player is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		add a, 20                     ; add 20 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceBatColPointer4   ; if player is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times to point at the bat's x coord

		; test to see if player is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceBatColPointer5   ; if player is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		add a, 20                     ; add 20 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceBatColPointer5   ; if player is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at bat alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set bat alive status flag to dead

		call DecrementLives           ; decrement the player's lives

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next bat object

		jp EndBatColLoop              ; jump to the end of the bat collision loop to avoid pointer increment code

		AdvanceBatColPointer1:        ; AdvanceBatColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatColPointer2:        ; AdvanceBatPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatColPointer3:        ; AdvanceBatPointer3 marker

		inc hl                        ; increment Bat pointer one time
		inc hl                        ; increment Bat pointer one time

		AdvanceBatColPointer4:        ; AdvanceBatColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times

		AdvanceBatColPointer5:        ; AdvanceBatColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to Bat pointer to point to next bat object

		EndBatColLoop:                ; EndBatColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, BatCollisionLoop       ; if counter has not run out then jump to BatCollisionLoop

	; spider collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; N.B. this code has been taken from the bat collision handling loop. I have not
	; adjusted the commenting to reflect the change but the code has been modified.
	ld bc, NoOfSpiders                ; load the number of bats into bc as a loop counter
	ld hl, Spiders                    ; load the start address of bat objects into hl as a pointer

	SpiderCollisionLoop:              ; BatCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceSpdColPointer1  ; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpdColPointer2  ; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpdColPointer3  ; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		inc hl                        ; increment bat pointer to point at the bat's y coordinate

		; test to see if player is below the y upper limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceSpdColPointer4   ; if player is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		add a, 20                     ; add 20 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceSpdColPointer4   ; if player is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times to point at the bat's x coord

		; test to see if player is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceSpdColPointer5   ; if player is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		add a, 20                     ; add 20 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceSpdColPointer5   ; if player is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at bat alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set bat alive status flag to dead

		call DecrementLives           ; decrement the player's lives

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next bat object

		jp EndSpdColLoop              ; jump to the end of the bat collision loop to avoid pointer increment code

		AdvanceSpdColPointer1:        ; AdvanceBatColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceSpdColPointer2:        ; AdvanceBatPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceSpdColPointer3:        ; AdvanceBatPointer3 marker

		inc hl                        ; increment Bat pointer one time
		inc hl                        ; increment Bat pointer one time

		AdvanceSpdColPointer4:        ; AdvanceBatColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times

		AdvanceSpdColPointer5:        ; AdvanceBatColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to Bat pointer to point to next bat object

		EndSpdColLoop:                ; EndBatColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, SpiderCollisionLoop    ; if counter has not run out then jump to BatCollisionLoop

	; mushroom collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; N.B. this code has been taken from the bat collision handling loop. I have not
	; adjusted the commenting to reflect the change but the code has been modified.
	ld bc, NoOfMush                   ; load the number of bats into bc as a loop counter
	ld hl, Mush                       ; load the start address of bat objects into hl as a pointer

	MushCollisionLoop:                ; BatCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceMusColPointer1  ; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMusColPointer2  ; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMusColPointer3  ; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		inc hl                        ; increment bat pointer to point at the bat's y coordinate

		; test to see if player is below the y upper limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceMusColPointer4   ; if player is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		add a, 28                     ; add 20 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceMusColPointer4   ; if player is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times to point at the bat's x coord

		; test to see if player is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		ld b, 4                       ; load 12 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceMusColPointer5   ; if player is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		add a, 20                     ; add 20 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceMusColPointer5   ; if player is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at bat alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set bat alive status flag to dead

		call DecrementLives           ; decrement the player's lives

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next bat object

		jp EndMusColLoop              ; jump to the end of the bat collision loop to avoid pointer increment code

		AdvanceMusColPointer1:        ; AdvanceBatColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceMusColPointer2:        ; AdvanceBatPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceMusColPointer3:        ; AdvanceBatPointer3 marker

		inc hl                        ; increment Bat pointer one time
		inc hl                        ; increment Bat pointer one time

		AdvanceMusColPointer4:        ; AdvanceBatColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times

		AdvanceMusColPointer5:        ; AdvanceBatColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to Bat pointer to point to next bat object

		EndMusColLoop:                ; EndBatColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, MushCollisionLoop      ; if counter has not run out then jump to BatCollisionLoop

	; tree collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; N.B. this code has been taken from the bat collision handling loop. I have not
	; adjusted the commenting to reflect the change but the code has been modified.
	ld bc, NoOfTrees                  ; load the number of bats into bc as a loop counter
	ld hl, Trees                      ; load the start address of bat objects into hl as a pointer

	TreeCollisionLoop:                ; BatCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceTrrColPointer1  ; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTrrColPointer2  ; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTrrColPointer3  ; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		inc hl                        ; increment bat pointer to point at the bat's y coordinate

		; test to see if player is below the y upper limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceTrrColPointer4   ; if player is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		add a, 28                     ; add 20 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceTrrColPointer4   ; if player is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the player is within the bat's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times to point at the bat's x coord

		; test to see if player is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		ld b, 4                       ; load 12 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceTrrColPointer5   ; if player is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		add a, 20                     ; add 20 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceTrrColPointer5   ; if player is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at bat alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set bat alive status flag to dead

		call DecrementLives           ; decrement the player's lives

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next bat object

		jp EndTrrColLoop              ; jump to the end of the bat collision loop to avoid pointer increment code

		AdvanceTrrColPointer1:        ; AdvanceBatColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceTrrColPointer2:        ; AdvanceBatPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceTrrColPointer3:        ; AdvanceBatPointer3 marker

		inc hl                        ; increment Bat pointer one time
		inc hl                        ; increment Bat pointer one time

		AdvanceTrrColPointer4:        ; AdvanceBatColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times

		AdvanceTrrColPointer5:        ; AdvanceBatColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to Bat pointer to point to next bat object

		EndTrrColLoop:                ; EndBatColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, TreeCollisionLoop      ; if counter has not run out then jump to BatCollisionLoop

	; heart collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld bc, NoOfHearts                 ; load the number of hearts into bc as a loop counter
	ld hl, Hearts                     ; load the start address of heart objects into hl as a pointer

	HeartCollisionLoop:               ; HeartCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the heart is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceHrtColPointer1  ; if the heart is not alive then jump to end of loop
		                              ; and advance pointer to next heart object

		; check to see if the heart is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's world row index
		ld a, (hl)                    ; load the heart's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceHrtColPointer2  ; if the heart and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next heart object

		; check to see if the heart is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's world column index
		ld a, (hl)                    ; load the heart's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceHrtColPointer3  ; if the heart and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next heart object

		; check to see if the player is within the heart's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's y coordinate

		; test to see if player is below the y upper limit of the collision box
		ld a, (hl)                    ; load heart y coord into register a
		ld b, 12                      ; load 12 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceHrtColPointer4   ; if player is above collision box
		                              ; jump to end of loop and advance pointer to next heart object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load heart y coord into register a
		add a, 20                     ; add 20 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (PlayerYCoord)          ; load player's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceHrtColPointer4   ; if player is below collision box
		                              ; jump to end of loop and advance pointer to next heart object

		; check to see if the player is within the heart's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's x coordinate

		; test to see if player is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load heart x coord into register a
		ld b, 4                       ; load 4 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceHrtColPointer5   ; if player is left of the collision box
		                              ; jump to end of loop and advance pointer to next heart object

		; test to see if player is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load heart x coord into register a
		add a, 12                     ; add 12 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (PlayerXCoord)          ; load player's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceHrtColPointer5   ; if player is right of collision box
		                              ; jump to end of loop and advance pointer to next heart object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 3                      ; load 3 in de
		sbc hl, de                    ; subtract 3 from hl to point at heart alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set heart alive status flag to dead

		call IncrementLives           ; increment the player's lives

		ld de, 5                      ; load 5 in de
		add hl, de                    ; add 5 to hl to point at the next heart object

		jp EndHrtColLoop              ; jump to the end of the heart collision loop to avoid pointer increment code

		AdvanceHrtColPointer1:        ; AdvanceHrtColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceHrtColPointer2:        ; AdvanceHrtPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceHrtColPointer3:        ; AdvanceHrtPointer3 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceHrtColPointer4:        ; AdvanceHrtColPointer4 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceHrtColPointer5:        ; AdvanceHrtColPointer5 marker

		inc hl                        ; increment Bat pointer one time

		EndHrtColLoop:                ; EndHrtColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, HeartCollisionLoop     ; if counter has not run out then jump to HeartCollisionLoop

	; door collision handling
	; ~~~~~~~~~~~~~~~~~~~~~~~
	ld hl, Doors                      ; load the start address of the door object into hl as a pointer

	; check to see if the door is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (hl)                        ; load alive status flag into a
	cp 1                              ; compare alive status flag to one
	jp nz, EndDoorColHandling         ; if the door is not alive then jump to end

	; check to see if the door is in the current world row
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                            ; increment pointer to point at the world row index
	ld a, (hl)                        ; load the world row index into a
	ld bc, (ScreenRowIndex)           ; load the player's world row index into bc
	cp c                              ; compare a and c
	jp nz, EndDoorColHandling         ; if the door and the player are not occupying the same row index,
		                              ; jump to end

	; check to see if the door is in the current world column
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                            ; increment pointer to point at the world column index
	ld a, (hl)                        ; load the world column index into a
	ld bc, (ScreenColIndex)           ; load the player's world column index into bc
	cp c                              ; compare a and c
	jp nz, EndDoorColHandling         ; if the door and the player are not occupying the same column index,
		                              ; jump to end

	; check to see if the player is within the door's y coord hit box
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                            ; increment pointer to point at the y coordinate

	; test to see if player is below the y upper limit of the collision box
	ld a, (hl)                        ; load door y coord into register a
	ld b, 12                          ; load 12 pixels into register b
	sub b                             ; substract b from a to define top of collision box
	ld b, a                           ; shift top of collision box to register b
	ld a, (PlayerYCoord)              ; load player's current y coord into register a
	sub b                             ; subtract b from a
	jp m, EndDoorColHandling          ; if player is above collision box
		                              ; jump to end

	; test to see if player is above the y lower limit of the collision box
	ld a, (hl)                        ; load door y coord into register a
	add a, 44                         ; add 20 pixels to a to define bottom of collision box
	ld b, a                           ; shift bottom of collision box to register b
	ld a, (PlayerYCoord)              ; load player's current y coord into register a
	sub b                             ; subtract b from a
	jp p, EndDoorColHandling          ; if player is below collision box
		                              ; jump to end

	; check to see if the player is within the door's x coord hit box
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                            ; increment pointer to point at the x coordinate

	; test to see if player is to the right of the x left limit of the collision box
	ld a, (hl)                        ; load door x coord into register a
	ld b, 4                           ; load 4 pixels into register b
	sub b                             ; substract b from a to define left of collision box
	ld b, a                           ; shift left of collision box to register b
	ld a, (PlayerXCoord)              ; load player's current x coord into register a
	sub b                             ; subtract b from a
	jp m, EndDoorColHandling          ; if player is left of the collision box
		                              ; jump to end

	; test to see if player is to the left of the x right limit of the collision box
	ld a, (hl)                        ; load door x coord into register a
	add a, 12                         ; add 12 pixels to a to define right of collision box
	ld b, a                           ; shift right of collision box to register b
	ld a, (PlayerXCoord)              ; load player's current x coord into register a
	sub b                             ; subtract b from a
	jp p, EndDoorColHandling          ; if player is right of collision box
		                              ; jump to end

	; if all of the above conditions are met, trigger collision response
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, 1                           ; load 1 into accumulator
	ld (NextLevelFlag), a             ; set next level flag to 1

	; trigger sound effect
	ld a, 10                          ; load sound effect duration in a
	ld (SndFX), a                     ; send sound effect duration to RAM
	ld a, %11000000                   ; load 1st byte of PSG data into a
	ld (SndFX + 1), a                 ; send byte to RAM
	ld a, %00000000                   ; load 2st byte of PSG data into a
	ld (SndFX + 2), a                 ; send byte to RAM
	ld a, %11011111                   ; load 3st byte of PSG data into a
	ld (SndFX + 3), a                 ; send byte to RAM
	ld a, %00000000                   ; load 4st byte of PSG data into a
	ld (SndFX + 4), a                 ; send byte to RAM
	ld a, %11100110                   ; load 5st byte of PSG data into a
	ld (SndFX + 5), a                 ; send byte to RAM
	ld a, %11110101                   ; load 6st byte of PSG data into a
	ld (SndFX + 6), a                 ; send byte to RAM

	EndDoorColHandling:               ; EndDoorColHandling marker

	; code to handle collisions between the fairy dust attack and enemies
	; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	; check to see if the fairy dust attack is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (DustAtt)                   ; load fairy dust alive flag into a
	cp 0                              ; compare alive status flag to one
	jp z, EndFunctionCollisionHandler ; if the fairy dust attack is not alive, then jump to the end of the function

	; bat collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld bc, NoOfBats                   ; load the number of bats into bc as a loop counter
	ld hl, Bats                       ; load the start address of bat objects into hl as a pointer

	BatAttCollisionLoop:              ; BatAttCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceBatAtColPointer1; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatAtColPointer2; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatAtColPointer3; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the bat's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		inc hl                        ; increment bat pointer to point at the bat's y coordinate

		; test to see if attack is below the y upper limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		ld b, 8                       ; load 8 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceBatAtColPointer4 ; if attack is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load bat y coord into register a
		add a, 8                      ; add 8 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceBatAtColPointer4 ; if attack is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the bat's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times to point at the bat's x coord

		; test to see if attack is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		ld b, 16                      ; load 16 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceBatAtColPointer5 ; if attack is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if attack is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load bat x coord into register a
		add a, 16                     ; add 16 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceBatAtColPointer5 ; if attack is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at bat alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set bat alive status flag to dead
		ld (DustAtt), a               ; set dust alive flag to dead

		; trigger star burst effect
		ld a, 1                       ; load 1 into a
		ld (Burst), a                 ; set star burst effect to alive
		ld a, (DustAtt + 1)           ; load dust attack's y coord in a
		ld (Burst + 1), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 3), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 5), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 7), a             ; set initial y coord for one of the star burst sprites
		ld a, (DustAtt + 2)           ; load dust attack's x coord in a
		ld (Burst + 2), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 4), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 6), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 8), a             ; set initial x coord for one of the star burst sprites
		ld a, 40                      ; load 40 into a
		ld (Burst + 9), a             ; set the star burst effect's countdown

		; trigger fairy dust hit effect
		ld a, 10                          ; load sound effect duration in a
		ld (SndFX), a                     ; send sound effect duration to RAM
		ld a, %11000000                   ; load 1st byte of PSG data into a
		ld (SndFX + 1), a                 ; send byte to RAM
		ld a, %00000000                   ; load 2st byte of PSG data into a
		ld (SndFX + 2), a                 ; send byte to RAM
		ld a, %11011111                   ; load 3st byte of PSG data into a
		ld (SndFX + 3), a                 ; send byte to RAM
		ld a, %00000000                   ; load 4st byte of PSG data into a
		ld (SndFX + 4), a                 ; send byte to RAM
		ld a, %11100110                   ; load 5st byte of PSG data into a
		ld (SndFX + 5), a                 ; send byte to RAM
		ld a, %11110101                   ; load 6st byte of PSG data into a
		ld (SndFX + 6), a                 ; send byte to RAM

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next bat object

		jp EndBatAtColLoop            ; jump to the end of the bat collision loop to avoid pointer increment code

		AdvanceBatAtColPointer1:      ; AdvanceBatAtColPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatAtColPointer2:      ; AdvanceBatAtPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatAtColPointer3:      ; AdvanceBatAtPointer3 marker

		inc hl                        ; increment Bat pointer one time
		inc hl                        ; increment Bat pointer one time

		AdvanceBatAtColPointer4:      ; AdvanceBatAtColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment Bat pointer four times

		AdvanceBatAtColPointer5:      ; AdvanceBatAtColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to Bat pointer to point to next bat object

		EndBatAtColLoop:              ; EndBatAtColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, BatAttCollisionLoop    ; if counter has not run out then jump to BatAttCollisionLoop

	; spider collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld bc, NoOfSpiders                ; load the number of spiders into bc as a loop counter
	ld hl, Spiders                    ; load the start address of spider objects into hl as a pointer

	SpdAttCollisionLoop:              ; SpdAttCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceSpdAtColPointer1; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpdAtColPointer2; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpdAtColPointer3; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		inc hl                        ; increment spider pointer to point at the spider's y coordinate

		; test to see if attack is below the y upper limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		ld b, 8                       ; load 8 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceSpdAtColPointer4 ; if attack is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		add a, 8                      ; add 8 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceSpdAtColPointer4 ; if attack is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times to point at the bat's x coord

		; test to see if attack is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		ld b, 16                      ; load 16 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceSpdAtColPointer5 ; if attack is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if attack is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		add a, 16                     ; add 16 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceSpdAtColPointer5 ; if attack is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at spider alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set spider alive status flag to dead
		ld (DustAtt), a               ; set dust alive flag to dead

		; trigger start burst effect
		ld a, 1                       ; load 1 into a
		ld (Burst), a                 ; set star burst effect to alive
		ld a, (DustAtt + 1)           ; load dust attack's y coord in a
		ld (Burst + 1), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 3), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 5), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 7), a             ; set initial y coord for one of the star burst sprites
		ld a, (DustAtt + 2)           ; load dust attack's x coord in a
		ld (Burst + 2), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 4), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 6), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 8), a             ; set initial x coord for one of the star burst sprites
		ld a, 40                      ; load 40 into a
		ld (Burst + 9), a             ; set the star burst effect's countdown

		; trigger fairy dust hit effect
		ld a, 10                          ; load sound effect duration in a
		ld (SndFX), a                     ; send sound effect duration to RAM
		ld a, %11000000                   ; load 1st byte of PSG data into a
		ld (SndFX + 1), a                 ; send byte to RAM
		ld a, %00000000                   ; load 2st byte of PSG data into a
		ld (SndFX + 2), a                 ; send byte to RAM
		ld a, %11011111                   ; load 3st byte of PSG data into a
		ld (SndFX + 3), a                 ; send byte to RAM
		ld a, %00000000                   ; load 4st byte of PSG data into a
		ld (SndFX + 4), a                 ; send byte to RAM
		ld a, %11100110                   ; load 5st byte of PSG data into a
		ld (SndFX + 5), a                 ; send byte to RAM
		ld a, %11110101                   ; load 6st byte of PSG data into a
		ld (SndFX + 6), a                 ; send byte to RAM

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next spider object

		jp EndSpdAtColLoop            ; jump to the end of the spider collision loop to avoid pointer increment code

		AdvanceSpdAtColPointer1:      ; AdvanceSpdAtColPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceSpdAtColPointer2:      ; AdvanceSpdAtPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceSpdAtColPointer3:      ; AdvanceSpdAtPointer3 marker

		inc hl                        ; increment spider pointer one time
		inc hl                        ; increment spider pointer one time

		AdvanceSpdAtColPointer4:      ; AdvanceSpdAtColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times

		AdvanceSpdAtColPointer5:      ; AdvanceSpdAtColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to spider pointer to point to next bat object

		EndSpdAtColLoop:              ; EndSpdAtColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, SpdAttCollisionLoop    ; if counter has not run out then jump to SpdAttCollisionLoop

	; mushroom collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; N.B. this code taken from spider-attack collision loop and I have not changed
	; the nomenclature from that in the comments
	ld bc, NoOfMush                   ; load the number of spiders into bc as a loop counter
	ld hl, Mush                       ; load the start address of spider objects into hl as a pointer

	MusAttCollisionLoop:              ; SpdAttCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceMusAtColPointer1; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMusAtColPointer2; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMusAtColPointer3; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		inc hl                        ; increment spider pointer to point at the spider's y coordinate

		; test to see if attack is below the y upper limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		ld b, 8                       ; load 8 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceMusAtColPointer4 ; if attack is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		add a, 16                     ; add 8 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceMusAtColPointer4 ; if attack is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times to point at the bat's x coord

		; test to see if attack is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		ld b, 8                       ; load 16 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceMusAtColPointer5 ; if attack is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if attack is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		add a, 16                     ; add 16 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceMusAtColPointer5 ; if attack is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at spider alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set spider alive status flag to dead
		ld (DustAtt), a               ; set dust alive flag to dead

		; trigger start burst effect
		ld a, 1                       ; load 1 into a
		ld (Burst), a                 ; set star burst effect to alive
		ld a, (DustAtt + 1)           ; load dust attack's y coord in a
		ld (Burst + 1), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 3), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 5), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 7), a             ; set initial y coord for one of the star burst sprites
		ld a, (DustAtt + 2)           ; load dust attack's x coord in a
		ld (Burst + 2), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 4), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 6), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 8), a             ; set initial x coord for one of the star burst sprites
		ld a, 40                      ; load 40 into a
		ld (Burst + 9), a             ; set the star burst effect's countdown

		; trigger fairy dust hit effect
		ld a, 10                          ; load sound effect duration in a
		ld (SndFX), a                     ; send sound effect duration to RAM
		ld a, %11000000                   ; load 1st byte of PSG data into a
		ld (SndFX + 1), a                 ; send byte to RAM
		ld a, %00000000                   ; load 2st byte of PSG data into a
		ld (SndFX + 2), a                 ; send byte to RAM
		ld a, %11011111                   ; load 3st byte of PSG data into a
		ld (SndFX + 3), a                 ; send byte to RAM
		ld a, %00000000                   ; load 4st byte of PSG data into a
		ld (SndFX + 4), a                 ; send byte to RAM
		ld a, %11100110                   ; load 5st byte of PSG data into a
		ld (SndFX + 5), a                 ; send byte to RAM
		ld a, %11110101                   ; load 6st byte of PSG data into a
		ld (SndFX + 6), a                 ; send byte to RAM

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next spider object

		jp EndMusAtColLoop            ; jump to the end of the spider collision loop to avoid pointer increment code

		AdvanceMusAtColPointer1:      ; AdvanceSpdAtColPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceMusAtColPointer2:      ; AdvanceSpdAtPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceMusAtColPointer3:      ; AdvanceSpdAtPointer3 marker

		inc hl                        ; increment spider pointer one time
		inc hl                        ; increment spider pointer one time

		AdvanceMusAtColPointer4:      ; AdvanceSpdAtColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times

		AdvanceMusAtColPointer5:      ; AdvanceSpdAtColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to spider pointer to point to next bat object

		EndMusAtColLoop:              ; EndSpdAtColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, MusAttCollisionLoop    ; if counter has not run out then jump to SpdAttCollisionLoop

	; tree collision handling loop
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; N.B. this code taken from spider-attack collision loop and I have not changed
	; the nomenclature from that in the comments
	ld bc, NoOfTrees                  ; load the number of spiders into bc as a loop counter
	ld hl, Trees                      ; load the start address of spider objects into hl as a pointer

	TrrAttCollisionLoop:              ; SpdAttCollisionLoop marker
		push bc                       ; push bc to the stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceTrrAtColPointer1; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTrrAtColPointer2; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTrrAtColPointer3; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's y coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		inc hl                        ; increment spider pointer to point at the spider's y coordinate

		; test to see if attack is below the y upper limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		ld b, 8                       ; load 8 pixels into register b
		sub b                         ; substract b from a to define top of collision box
		ld b, a                       ; shift top of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceTrrAtColPointer4 ; if attack is above collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if player is above the y lower limit of the collision box
		ld a, (hl)                    ; load spider y coord into register a
		add a, 16                     ; add 8 pixels to a to define bottom of collision box
		ld b, a                       ; shift bottom of collision box to register b
		ld a, (DustAtt + 1)           ; load attack's current y coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceTrrAtColPointer4 ; if attack is below collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the attack is within the spider's x coord hit box
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times to point at the bat's x coord

		; test to see if attack is to the right of the x left limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		ld b, 8                       ; load 16 pixels into register b
		sub b                         ; substract b from a to define left of collision box
		ld b, a                       ; shift left of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp m, AdvanceTrrAtColPointer5 ; if attack is left of the collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; test to see if attack is to the left of the x right limit of the collision box
		ld a, (hl)                    ; load spider x coord into register a
		add a, 16                     ; add 16 pixels to a to define right of collision box
		ld b, a                       ; shift right of collision box to register b
		ld a, (DustAtt + 2)           ; load attack's current x coord into register a
		sub b                         ; subtract b from a
		jp p, AdvanceTrrAtColPointer5 ; if attack is right of collision box
		                              ; jump to end of loop and advance pointer to next bat object

		; if all of the above conditions are met, trigger collision response
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld de, 7                      ; load 7 in de
		sbc hl, de                    ; subtract 7 from hl to point at spider alive status flag

		ld a, 0                       ; load 0 into a
		ld (hl), a                    ; set spider alive status flag to dead
		ld (DustAtt), a               ; set dust alive flag to dead

		; trigger start burst effect
		ld a, 1                       ; load 1 into a
		ld (Burst), a                 ; set star burst effect to alive
		ld a, (DustAtt + 1)           ; load dust attack's y coord in a
		ld (Burst + 1), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 3), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 5), a             ; set initial y coord for one of the star burst sprites
		ld (Burst + 7), a             ; set initial y coord for one of the star burst sprites
		ld a, (DustAtt + 2)           ; load dust attack's x coord in a
		ld (Burst + 2), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 4), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 6), a             ; set initial x coord for one of the star burst sprites
		ld (Burst + 8), a             ; set initial x coord for one of the star burst sprites
		ld a, 40                      ; load 40 into a
		ld (Burst + 9), a             ; set the star burst effect's countdown

		; trigger fairy dust hit effect
		ld a, 10                          ; load sound effect duration in a
		ld (SndFX), a                     ; send sound effect duration to RAM
		ld a, %11000000                   ; load 1st byte of PSG data into a
		ld (SndFX + 1), a                 ; send byte to RAM
		ld a, %00000000                   ; load 2st byte of PSG data into a
		ld (SndFX + 2), a                 ; send byte to RAM
		ld a, %11011111                   ; load 3st byte of PSG data into a
		ld (SndFX + 3), a                 ; send byte to RAM
		ld a, %00000000                   ; load 4st byte of PSG data into a
		ld (SndFX + 4), a                 ; send byte to RAM
		ld a, %11100110                   ; load 5st byte of PSG data into a
		ld (SndFX + 5), a                 ; send byte to RAM
		ld a, %11110101                   ; load 6st byte of PSG data into a
		ld (SndFX + 6), a                 ; send byte to RAM

		ld de, 12                     ; load 12 in de
		add hl, de                    ; add 12 to hl to point at the next spider object

		jp EndTrrAtColLoop            ; jump to the end of the spider collision loop to avoid pointer increment code

		AdvanceTrrAtColPointer1:      ; AdvanceSpdAtColPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceTrrAtColPointer2:      ; AdvanceSpdAtPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceTrrAtColPointer3:      ; AdvanceSpdAtPointer3 marker

		inc hl                        ; increment spider pointer one time
		inc hl                        ; increment spider pointer one time

		AdvanceTrrAtColPointer4:      ; AdvanceSpdAtColPointer4 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; increment spider pointer four times

		AdvanceTrrAtColPointer5:      ; AdvanceSpdAtColPointer5 marker

		ld de, 4                      ; load 4 into de
		add hl, de                    ; add 4 to spider pointer to point to next bat object

		EndTrrAtColLoop:              ; EndSpdAtColLoop marker

		pop bc                        ; return bc from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, TrrAttCollisionLoop    ; if counter has not run out then jump to SpdAttCollisionLoop

	EndFunctionCollisionHandler:      ; EndFunctionCollisionHandler marker

	ret

; A function to fire a boss dust attack
; -------------------------------------
; Parameters: nil
FireBossAttack:
	ld hl, BossAtt          ; load the address of the dust attack object in hl as a pointer
	ld (hl), 1              ; set alive flag to alive
	inc hl                  ; increment to hl to point to the attack's y coordinate
	ld a, (BossYCoord)      ; load the attack's y coordinate into a
	sub 4                   ; adjust fairy dust attack coord to be centred on player
	ld (hl), a              ; set the attack's y coordinate
	inc hl                  ; increment to hl to point to the attack's x coordinate
	ld a, (BossXCoord)      ; load the attack's x coordinate into a
	sub 4                   ; adjust fairy dust attack coord to be centred on player
	ld (hl), a              ; set the attack's x coordinate
	inc hl                  ; increment to hl to point to the attack's count down value
	ld (hl), 80             ; set the attack's count down value to 80

	ret

; A function to move the boss
; ---------------------------
; Parameters: nil
MoveBoss:
	; select boss direction
	; ~~~~~~~~~~~~~~~~~~~~~
	ld a, (PlayerXCoord)           ; load player x coordinate into a
	ld b, a                        ; shift player x coordiante into b
	ld a, (BossXCoord)             ; load boss x coordinate into a

	cp b                           ; compare player and boss coordinates
	jp z, BossFrontFacing          ; if player and boss are at same x coord jump to BossUpDown

	ld hl, 0                       ; zero hl register
	ld de, 0                       ; zero de register
	ld l, a                        ; shift a into the low byte of hl
	ld e, b                        ; shift b into the low byte of de
	sbc hl, de                     ; subtract de from hl to set S flag as p or m (see conditional jumps below)

	jp p, BossLeftFacing           ; if player is left of boss boss faces left
	jp m, BossRightFacing          ; if player is right of boss boss faces right

	jp EndBossDirection            ; if no conditions are met, jump to the end of the direction change code

	BossFrontFacing:               ; BossFrontFacing maker
		ld a, (PlayerYCoord)       ; load player x coordinate into a
		ld b, a                    ; shift player x coordiante into b
		ld a, (BossYCoord)         ; load boss x coordinate into a

		sub b                      ; subtract b from a to set s flag
		jp p, BossUpFacing         ; if player is above of boss boss faces up
		jp m, BossDownFacing       ; if player is below of boss boss faces down

		BossUpFacing:
			ld a, 1                ; load 1 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		BossDownFacing:
			ld a, 2                ; load 2 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		jp EndBossDirection        ; jump to EndBossDirection marker to avoid code that is not required

	BossLeftFacing:                ; BossLeftFacing marker
		ld a, (PlayerYCoord)       ; load player x coordinate into a
		ld b, a                    ; shift player x coordiante into b
		ld a, (BossYCoord)         ; load boss x coordinate into a

		cp b                       ; compare player and boss coordinates
		jp z, BossLevelLeftFacing  ; if player and boss are at same y coord jump to BossLevelLeftFacing
		sub b                      ; subtract b from a to set s flag
		jp p, BossUpLeftFacing     ; if player is above of boss boss faces up
		jp m, BossDownLeftFacing   ; if player is below of boss boss faces down

		BossLevelLeftFacing:
			ld a, 3                ; load 3 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		BossUpLeftFacing:
			ld a, 7                ; load 7 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		BossDownLeftFacing:
			ld a, 8                ; load 8 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		jp EndBossDirection        ; jump to EndBossDirection marker to avoid code that is not required

	BossRightFacing:               ; BossRightFacing marker
		ld a, (PlayerYCoord)       ; load player x coordinate into a
		ld b, a                    ; shift player x coordiante into b
		ld a, (BossYCoord)         ; load boss x coordinate into a

		cp b                       ; compare player and boss coordinates
		jp z, BossLevelRightFacing ; if player and boss are at same y coord jump to BossLevelLeftFacing
		sub b                      ; subtract b from a to set s flag
		jp p, BossUpRightFacing    ; if player is above of boss boss faces up
		jp m, BossDownRightFacing  ; if player is below of boss boss faces down

		BossLevelRightFacing:
			ld a, 4                ; load 4 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		BossUpRightFacing:
			ld a, 5                ; load 5 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		BossDownRightFacing:
			ld a, 6                ; load 6 into a
			ld (BossDirection), a  ; set boss direction
			jp EndBossDirection    ; jump to EndBossDirection marker to avoid code that is not required

		jp EndBossDirection        ; jump to EndBossDirection marker to avoid code that is not required

	EndBossDirection:              ; EndBossDirection marker

	; move boss
	; ~~~~~~~~~
	ld a, (BossMoveDelay)          ; load boss move delay into a
	cp BossDelay                   ; compare boss move delay with BossDelay constant
	jp nz, EndBossMove             ; if it is not time for the boss to move then jump to EndBossMove

	ld a, 0                        ; load 0 into a
	ld (BossMoveDelay), a          ; reset boss move delay in RAM

	; if it is time for the boss to move then change his coordinates
	ld a, (BossDirection)          ; load boss direction into a

	cp 1                           ; compare BossDirection with up
	jp z, BossMoveUp               ; if point up, jump to move up
	cp 2                           ; compare BossDirection with down
	jp z, BossMoveDown             ; if point down, jump to move down
	cp 3                           ; compare BossDirection with left
	jp z, BossMoveLeft             ; if point left, jump to move left
	cp 4                           ; compare BossDirection with right
	jp z, BossMoveRight            ; if point right, jump to move right
	cp 5                           ; compare BossDirection with up-right
	jp z, BossMoveUpRight          ; if point up-right, jump to move up-right
	cp 6                           ; compare BossDirection with down-right
	jp z, BossMoveDownRight        ; if point down-right, jump to move down-right
	cp 7                           ; compare BossDirection with up-right
	jp z, BossMoveUpLeft           ; if point up-left, jump to move up-left
	cp 8                           ; compare BossDirection with down-right
	jp z, BossMoveDownLeft         ; if point down-left, jump to move down-left

	jp EndBossMove                 ; jump to EndBossMove marker to avoid code that is not required

	BossMoveUp:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		dec a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveDown:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		inc a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveLeft:
		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		dec a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveRight:
		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		inc a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveUpRight:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		dec a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		inc a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveDownRight:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		inc a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		inc a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveUpLeft:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		dec a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		dec a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	BossMoveDownLeft:
		ld a, (BossYCoord)         ; load boss y coordinate into the accumulator
		inc a                      ; update y coordinate
		ld (BossYCoord), a         ; store updated y coordinate in RAM

		ld a, (BossXCoord)         ; load boss x coordinate into the accumulator
		dec a                      ; update x coordinate
		ld (BossXCoord), a         ; store updated x coordinate in RAM

		jp EndBossMove             ; jump to EndBossMove marker to avoid code that is not required

	EndBossMove:                   ; end boss move marker

	ld a, (BossMoveDelay)          ; load boss move delay into a
	inc a                          ; increment boss move delay
	ld (BossMoveDelay), a          ; store updated boss move delay in RAM

	; fire boss attack
	; ~~~~~~~~~~~~~~~~
	ld bc, (BossFireDelay)         ; load boss fire delay into bc
	ld a, b                        ; load high byte (b) from counter into register a
    or c                           ; compare a and c; if both are zero then set the z flag so that the firing sequence is triggered
    jp nz, EndBossFire             ; if it is not time for the boss to fire then jump to EndBossFire

	ld bc, FireDelay               ; load FireDelay into bc
	ld (BossFireDelay), bc         ; reset boss fire delay in RAM

	call FireBossAttack            ; fire the boss' attack

	EndBossFire:                   ; end boss fire marker

	ld bc, (BossFireDelay)         ; load boss fire delay into a
	dec bc                         ; increment boss fire delay
	ld (BossFireDelay), bc         ; store updated boss fire delay in RAM

	ret

; A function to decrement the boss' lives
; ---------------------------------------
; Parameters: nil
DecrementBossLives:
	; trigger life lost graphic effect
	ld hl, Hurt                       ; load the address of the life lost effect object in hl as a pointer
	ld (hl), 1                        ; set alive flag to alive
	inc hl                            ; increment to hl to point to the effect's y coordinate
	ld a, (BossYCoord)                ; load the effect's y coordinate into a
	sub 4                             ; adjust effect's coord to be centred on player
	ld (hl), a                        ; set the effect's y coordinate
	inc hl                            ; increment to hl to point to the effect's x coordinate
	ld a, (BossXCoord)                ; load the effect's x coordinate into a
	sub 4                             ; adjust effect's coord to be centred on player
	ld (hl), a                        ; set the effect's x coordinate
	inc hl                            ; increment to hl to point to the effect's count down value
	ld (hl), 40                       ; set the effect's count down value to 40

	; decrement lives and test for boss defeat
	ld bc, (BossLives)                ; load current lives into bc
	dec bc                            ; decrement the number of lives
	ld (BossLives), bc                ; update the number of lives in RAM

	ld a, c                           ; load c into a
	cp 0                              ; compare current lives with zero
	jp nz, EndFunctionDecrementBLives ; if lives remain, jump to end of function

	ld a, 1                           ; load 1 into accumulator
	ld (NextLevelFlag), a             ; set next level flag to break the boss battle loop

	EndFunctionDecrementBLives:       ; EndFunctionDecrementBLives marker

	ret
	
; A function to handle sprite collisions in the boss battles
; ----------------------------------------------------------
; Parameters: nil
BCollisionHandler:
	; *** I HAVE REMOVED THE CODE DETECTING THE COLLISION SIGNAL FROM THE VDP ***
	; *** I WOULD HAVE LIKED TO KEEP THIS CODE FOR EFFICIENCY PURPOSES BUT IT SEEMS TO DISABLE COLLISION DETECTION ***
	;in a,(VDPControl)                  ; read the output of the VDPControl port to detect sprite collision signal
	;and COL                            ; conduct logical and to isolate collision signal
	;jp z, EndFunctionBCollisionHandler ; if no collision detected, jump to End of function

	; detect collisions between fairy dust attack and boss
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; test to see if attack is alive
	ld a, (DustAtt)                    ; load dust attack alive status flag into a
	cp 0                               ; compare with 0
	jp z, EndFairyDustBAttack          ; if the fairy dust attack is dead jump to end of
	                                   ; fairy dust collision code
	
	; test to see if attack is below the y upper limit of the collision box
	ld a, (BossYCoord)                 ; load boss y coord into register a
	ld b, 16                           ; load 16 pixels into register b
	sub b                              ; substract b from a to define top of collision box
	ld b, a                            ; shift top of collision box to register b
	ld a, (DustAtt + 1)                ; load attack's current y coord into register a
	sub b                              ; subtract b from a
	jp m, EndFairyDustBAttack          ; if attack is above collision box
		                               ; jump to end of fairy dust collision code

	; test to see if player is above the y lower limit of the collision box
	ld a, (BossYCoord)                 ; load boss y coord into register a
	add a, 16                          ; add 16 pixels to a to define bottom of collision box
	ld b, a                            ; shift bottom of collision box to register b
	ld a, (DustAtt + 1)                ; load attack's current y coord into register a
	sub b                              ; subtract b from a
	jp p, EndFairyDustBAttack          ; if attack is below collision box
		                               ; jump to end of fairy dust collision code
	
	; test to see if attack is to the right of the x left limit of the collision box
	ld a, (BossXCoord)                 ; load boss x coord into register a
	ld b, 8                            ; load 8 pixels into register b
	sub b                              ; substract b from a to define left of collision box
	ld b, a                            ; shift left of collision box to register b
	ld a, (DustAtt + 2)                ; load attack's current x coord into register a
	sub b                              ; subtract b from a
	jp m, EndFairyDustBAttack          ; if attack is left of the collision box
		                               ; jump to end of fairy dust collision code

	; test to see if attack is to the left of the x right limit of the collision box
	ld a, (BossXCoord)                 ; load boss x coord into register a
	add a, 8                           ; add 8 pixels to a to define right of collision box
	ld b, a                            ; shift right of collision box to register b
	ld a, (DustAtt + 2)                ; load attack's current x coord into register a
	sub b                              ; subtract b from a
	jp p, EndFairyDustBAttack          ; if attack is right of collision box
		                               ; jump to end of fairy dust collision code
	
	; if collision conditions are met, trigger the collision response
	; switch fairy dust attack off
	ld a, 0                            ; load 0 into accumulator
	ld (DustAtt), a                    ; set dust attack to off
	
	; trigger start burst effect
	ld a, 1                            ; load 1 into a
	ld (Burst), a                      ; set star burst effect to alive
	ld a, (DustAtt + 1)                ; load dust attack's y coord in a
	ld (Burst + 1), a                  ; set initial y coord for one of the star burst sprites
	ld (Burst + 3), a                  ; set initial y coord for one of the star burst sprites
	ld (Burst + 5), a                  ; set initial y coord for one of the star burst sprites
	ld (Burst + 7), a                  ; set initial y coord for one of the star burst sprites
	ld a, (DustAtt + 2)                ; load dust attack's x coord in a
	ld (Burst + 2), a                  ; set initial x coord for one of the star burst sprites
	ld (Burst + 4), a                  ; set initial x coord for one of the star burst sprites
	ld (Burst + 6), a                  ; set initial x coord for one of the star burst sprites
	ld (Burst + 8), a                  ; set initial x coord for one of the star burst sprites
	ld a, 40                           ; load 40 into a
	ld (Burst + 9), a                  ; set the star burst effect's countdown

	; trigger fairy dust hit effect
	ld a, 10                           ; load sound effect duration in a
	ld (SndFX), a                      ; send sound effect duration to RAM
	ld a, %11000000                    ; load 1st byte of PSG data into a
	ld (SndFX + 1), a                  ; send byte to RAM
	ld a, %00000000                    ; load 2st byte of PSG data into a
	ld (SndFX + 2), a                  ; send byte to RAM
	ld a, %11011111                    ; load 3st byte of PSG data into a
	ld (SndFX + 3), a                  ; send byte to RAM
	ld a, %00000000                    ; load 4st byte of PSG data into a
	ld (SndFX + 4), a                  ; send byte to RAM
	ld a, %11100110                    ; load 5st byte of PSG data into a
	ld (SndFX + 5), a                  ; send byte to RAM
	ld a, %11110101                    ; load 6st byte of PSG data into a
	ld (SndFX + 6), a                  ; send byte to RAM
	
	call DecrementBossLives            ; decrement boss lives
	
	EndFairyDustBAttack:               ; EndFairyDustBAttack marker
	
	; detect collisions between boss attack and player
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; test to see if attack is alive
	ld a, (BossAtt)                    ; load dust attack alive status flag into a
	cp 0                               ; compare with 0
	jp z, EndBossAttack                ; if the fairy dust attack is dead jump to end of
	                                   ; fairy dust collision code
	
	; test to see if attack is below the y upper limit of the collision box
	ld a, (PlayerYCoord)               ; load boss y coord into register a
	ld b, 16                           ; load 16 pixels into register b
	sub b                              ; substract b from a to define top of collision box
	ld b, a                            ; shift top of collision box to register b
	ld a, (BossAtt + 1)                ; load attack's current y coord into register a
	sub b                              ; subtract b from a
	jp m, EndBossAttack                ; if attack is above collision box
		                               ; jump to end of fairy dust collision code

	; test to see if player is above the y lower limit of the collision box
	ld a, (PlayerYCoord)               ; load boss y coord into register a
	add a, 16                          ; add 16 pixels to a to define bottom of collision box
	ld b, a                            ; shift bottom of collision box to register b
	ld a, (BossAtt + 1)                ; load attack's current y coord into register a
	sub b                              ; subtract b from a
	jp p, EndBossAttack                ; if attack is below collision box
		                               ; jump to end of fairy dust collision code
	
	; test to see if attack is to the right of the x left limit of the collision box
	ld a, (PlayerXCoord)               ; load boss x coord into register a
	ld b, 8                            ; load 8 pixels into register b
	sub b                              ; substract b from a to define left of collision box
	ld b, a                            ; shift left of collision box to register b
	ld a, (BossAtt + 2)                ; load attack's current x coord into register a
	sub b                              ; subtract b from a
	jp m, EndBossAttack                ; if attack is left of the collision box
		                               ; jump to end of fairy dust collision code

	; test to see if attack is to the left of the x right limit of the collision box
	ld a, (PlayerXCoord)               ; load boss x coord into register a
	add a, 8                           ; add 8 pixels to a to define right of collision box
	ld b, a                            ; shift right of collision box to register b
	ld a, (BossAtt + 2)                ; load attack's current x coord into register a
	sub b                              ; subtract b from a
	jp p, EndBossAttack                ; if attack is right of collision box
		                               ; jump to end of fairy dust collision code
	
	; if collision conditions are met, trigger the collision response
	; switch fairy dust attack off
	ld a, 0                            ; load 0 into accumulator
	ld (BossAtt), a                    ; set dust attack to off
	
	call DecrementLives                ; decrement boss lives
	
	EndBossAttack:                     ; EndBossAttack marker
	
	EndFunctionBCollisionHandler:      ; EndFunctionBCollisionHandler marker

	ret

; Game event loop functions
; =========================

; A function to implement the world 1 event loop
; ----------------------------------------------
; Parameters: nil
World1EventLoop:
	call IniVarsForEventLoop            ; initialize variable values for this world
	call LoadTilesWorld1                ; load the tiles required for this world
	call LoadWorld1EnemiesAndPowerUps   ; load the enemies and power-ups required for this world into RAM

	W1EventLoop:                        ; top of world 1 event loop
		; important event loop function calls
		call RenderBG                   ; update background graphics as player moves around
		call UpdateSprites              ; update sprites
		call GetInputs                  ; get input from player
		call MovePlayer                 ; move player based upon their inputs
		call MovePlayer                 ; move player based upon their inputs
		                                ; second MovePlayer call made to increase speed of player
		call CollisionHandler           ; handle sprite collisions
		call MusicDriver                ; play music
		call SoundFXDriver              ; play sound effects

		; delay to titrate player movement speed
		;ld bc, 500                      ; delay execution by bc loop iterations
		;call DelayExecution             ; delay function to slow down event loop
		halt                            ; previous delay code replaced by a halt
		
		; check to see if level is complete
		ld a, (NextLevelFlag)           ; load NextLevelFlag
		cp 0                            ; compare with 0
		jp z, EndW1EventLoop            ; if the level is still running jump to EndW1EventLoop

		ld a, (CurrentWorld)            ; load current world into a
		inc a                           ; increment current world
		ld (CurrentWorld), a            ; store updated current world in RAM

		call TurnOffScreen              ; turn off the screen
		call SilencePSG                 ; turn off the sound

		jp World1Done                   ; jump out of the world event loop

		EndW1EventLoop:                 ; EndW1EventLoop marker

		jp W1EventLoop                  ; jump to top of world 1 event loop

	ret

; A function to implement the world 2 event loop
; ----------------------------------------------
; Parameters: nil
World2EventLoop:
	call IniVarsForEventLoop            ; initialize variable values for this world
	call LoadTilesWorld2                ; load the tiles required for this world
	call LoadWorld2EnemiesAndPowerUps   ; load the enemies and power-ups required for this world into RAM

	W2EventLoop:                        ; top of world 1 event loop
		; important event loop function calls
		call RenderBG                   ; update background graphics as player moves around
		call UpdateSprites              ; update sprites
		call GetInputs                  ; get input from player
		call MovePlayer                 ; move player based upon their inputs
		call MovePlayer                 ; move player based upon their inputs
		                                ; second MovePlayer call made to increase speed of player
		call CollisionHandler           ; handle sprite collisions
		call MusicDriver                ; play music
		call SoundFXDriver              ; play sound effects

		; delay to titrate player movement speed
		;ld bc, 500                      ; delay execution by bc loop iterations
		;call DelayExecution             ; delay function to slow down event loop
		halt                            ; previous delay code replaced by a halt

		; check to see if level is complete
		ld a, (NextLevelFlag)           ; load NextLevelFlag
		cp 0                            ; compare with 0
		jp z, EndW2EventLoop            ; if the level is still running jump to EndW1EventLoop

		ld a, (CurrentWorld)            ; load current world into a
		inc a                           ; increment current world
		ld (CurrentWorld), a            ; store updated current world in RAM

		call TurnOffScreen              ; turn off the screen
		call SilencePSG                 ; turn off the sound

		jp World2Done                   ; jump out of the world event loop

		EndW2EventLoop:                 ; EndW1EventLoop marker

		jp W2EventLoop                  ; jump to top of world 1 event loop

	ret

; A function to implement the world 3 event loop
; ----------------------------------------------
; Parameters: nil
World3EventLoop:
	call IniVarsForEventLoop            ; initialize variable values for this world
	call LoadTilesWorld3                ; load the tiles required for this world
	call LoadWorld3EnemiesAndPowerUps   ; load the enemies and power-ups required for this world into RAM

	W3EventLoop:                        ; top of world 1 event loop
		; important event loop function calls
		call RenderBG                   ; update background graphics as player moves around
		call UpdateSprites              ; update sprites
		call GetInputs                  ; get input from player
		call MovePlayer                 ; move player based upon their inputs
		call MovePlayer                 ; move player based upon their inputs
		                                ; second MovePlayer call made to increase speed of player
		call CollisionHandler           ; handle sprite collisions
		call MusicDriver                ; play music
		call SoundFXDriver              ; play sound effects

		; delay to titrate player movement speed
		;ld bc, 500                      ; delay execution by bc loop iterations
		;call DelayExecution             ; delay function to slow down event loop
		halt                            ; previous delay code replaced by a halt

		; check to see if level is complete
		ld a, (NextLevelFlag)           ; load NextLevelFlag
		cp 0                            ; compare with 0
		jp z, EndW3EventLoop            ; if the level is still running jump to EndW1EventLoop

		ld a, (CurrentWorld)            ; load current world into a
		inc a                           ; increment current world
		ld (CurrentWorld), a            ; store updated current world in RAM

		call TurnOffScreen              ; turn off the screen
		call SilencePSG                 ; turn off the sound

		jp World3Done                   ; jump out of the world event loop

		EndW3EventLoop:                 ; EndW1EventLoop marker

		jp W3EventLoop                  ; jump to top of world 1 event loop

	ret

; A function to implement the boss battle 1 event loop
; ----------------------------------------------------
; Parameters: nil
Boss1EventLoop:
	call IniVarsForEventLoop            ; initialize variable values for this world
	call LoadTilesWorld1                ; load the tiles required for this world
	call RenderBGBossBattle             ; render the boss battle background

	B1EventLoop:                        ; top of boss battle 1 event loop
		; important event loop function calls
		call UpdateBossBattleSprites    ; update sprites
		call GetInputs                  ; get input from player
		call MovePlayer                 ; move player based upon their inputs
		call MovePlayer                 ; move player based upon their inputs
		                                ; second MovePlayer call made to increase speed of player
		call MoveBoss                   ; logic that moves the boss around
		call BCollisionHandler          ; handle sprite collisions
		call MusicDriver                ; play music
		call SoundFXDriver              ; play sound effects

		; delay to titrate player movement speed
		;ld bc, 500                      ; delay execution by bc loop iterations
		;call DelayExecution             ; delay function to slow down event loop
		halt                            ; previous delay code replaced by a halt

		; check to see if level is complete
		ld a, (NextLevelFlag)           ; load NextLevelFlag
		cp 0                            ; compare with 0
		jp z, EndB1EventLoop            ; if the level is still running jump to EndW1EventLoop

		call TurnOffScreen              ; turn off the screen
		call SilencePSG                 ; turn off the sound

		jp Boss1Done                    ; jump out of the world event loop

		EndB1EventLoop:                 ; EndB1EventLoop marker

		jp B1EventLoop                  ; jump to top of world 1 event loop

	ret

; A function to implement the boss battle 2 event loop
; ----------------------------------------------------
; Parameters: nil
Boss2EventLoop:
	call IniVarsForEventLoop            ; initialize variable values for this world
	call LoadTilesWorld2                ; load the tiles required for this world
	call RenderBGBossBattle             ; render the boss battle background

	B2EventLoop:                        ; top of boss battle 1 event loop
		; important event loop function calls
		call UpdateBossBattleSprites    ; update sprites
		call GetInputs                  ; get input from player
		call MovePlayer                 ; move player based upon their inputs
		call MovePlayer                 ; move player based upon their inputs
		                                ; second MovePlayer call made to increase speed of player
		call MoveBoss                   ; logic that moves the boss around
		call BCollisionHandler          ; handle sprite collisions
		call MusicDriver                ; play music
		call SoundFXDriver              ; play sound effects

		; delay to titrate player movement speed
		;ld bc, 500                      ; delay execution by bc loop iterations
		;call DelayExecution             ; delay function to slow down event loop
		halt                            ; previous delay code replaced by a halt

		; check to see if level is complete
		ld a, (NextLevelFlag)           ; load NextLevelFlag
		cp 0                            ; compare with 0
		jp z, EndB2EventLoop            ; if the level is still running jump to EndW1EventLoop

		call TurnOffScreen              ; turn off the screen
		call SilencePSG                 ; turn off the sound

		jp Boss2Done                    ; jump out of the world event loop

		EndB2EventLoop:                 ; EndB1EventLoop marker

		jp B2EventLoop                  ; jump to top of world 1 event loop

	ret