;==============================================================
; Fairy Forest - background graphics functions include file
;
; * This file contains the background graphics functions called by the
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

; Background game graphics functions
; ==================================

; A function to draw the title screen
; -----------------------------------
; Parameters: nil
DrawTitleScreen:
	; 1. Set VRAM write address to tile map location
    ld a,$00                         ; load $00 into register a
	out (VDPControl),a               ; output register a to VDP control port
	ld a,TilemapWrite                ; load tile map location into register a
	out (VDPControl),a               ; output register a to VDP control port

    ; 2. Output tilemap data
    ld hl,TitleScreen                ; load the address at which screen data starts into register hl
    ld bc,TitleScreenEnd-TitleScreen ; load the difference between end and start addresses of screen data
	                                 ; into register bc. This will be used as a counter
	call SendToVDPData               ; call function to send data to VDP Data port
	ret

; A function to draw the intro screen
; -----------------------------------
; Parameters: nil
DrawIntroScreen:
	; 1. Set VRAM write address to tile map location
    ld a,$00                         ; load $00 into register a
	out (VDPControl),a               ; output register a to VDP control port
	ld a,TilemapWrite                ; load tile map location into register a
	out (VDPControl),a               ; output register a to VDP control port

    ; 2. Output tilemap data
    ld hl,IntroScreen                ; load the address at which screen data starts into register hl
    ld bc,IntroScreenEnd-IntroScreen ; load the difference between end and start addresses of screen data
	                                 ; into register bc. This will be used as a counter
	call SendToVDPData               ; call function to send data to VDP Data port
	ret

; A function to draw the game over screen
; ---------------------------------------
; Parameters: nil
DrawGameOverScreen:
	call TurnOffScreen                     ; turn off the screen to prevent and ugly screen transition
	call SilencePSG                        ; silence the PSG
	call ClearSpriteTable                  ; clear the sprite table so only the background will be visible
	call LoadTilesTitleIntroCredit         ; Load tiles for the title and intro screens (which just happen to be the same
	                                       ; for the game over screen)
	call TurnOnScreen                      ; turn screen back on

	; 1. Set VRAM write address to tile map location
    ld a,$00                               ; load $00 into register a
	out (VDPControl),a                     ; output register a to VDP control port
	ld a,TilemapWrite                      ; load tile map location into register a
	out (VDPControl),a                     ; output register a to VDP control port

    ; 2. Output tilemap data
    ld hl,GameOverScreen                   ; load the address at which screen data starts into register hl
    ld bc,GameOverScreenEnd-GameOverScreen ; load the difference between end and start addresses of screen data
	                                       ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	ld bc, 60000                           ; delay execution by bc loop iterations
	call DelayExecution                    ; delay function used to prevent skipping the next screen due to controller
	                                       ; signal retention
	call WaitForKeyPress                   ; wait until player presses a key on the joypad

	call TurnOffScreen                     ; turn off screen to make the transition to the beginning of the game smoother

	jp main                                ; jump to main function to restart the game

	ret

; A function to draw the credit screen
; ------------------------------------
; Parameters: nil
DrawCreditScreen:
	call TurnOffScreen                     ; turn off the screen to prevent and ugly screen transition
	call SilencePSG                        ; silence the PSG
	call ClearSpriteTable                  ; clear the sprite table so only the background will be visible
	call LoadTilesTitleIntroCredit         ; Load tiles for the title and intro screens (which just happen to be the same
	                                       ; for the game over screen)
	call TurnOnScreen                      ; turn screen back on

	; 1. Set VRAM write address to tile map location
    ld a,$00                               ; load $00 into register a
	out (VDPControl),a                     ; output register a to VDP control port
	ld a,TilemapWrite                      ; load tile map location into register a
	out (VDPControl),a                     ; output register a to VDP control port

    ; 2. Output tilemap data
    ld hl,CreditScreen                     ; load the address at which screen data starts into register hl
    ld bc,CreditScreenEnd-CreditScreen     ; load the difference between end and start addresses of screen data
	                                       ; into register bc. This will be used as a counter
	call SendToVDPData                     ; call function to send data to VDP Data port

	ld bc, 60000                           ; delay execution by bc loop iterations
	call DelayExecution                    ; delay function used to prevent skipping the next screen due to controller
	                                       ; signal retention
	call WaitForKeyPress                   ; wait until player presses a key on the joypad

	call TurnOffScreen                     ; turn off screen to make the transition to the beginning of the game smoother

	jp main                                ; jump to main function to restart the game

	ret

; A function to calculate the world offset value
; ----------------------------------------------
; Parameters: ScreenRowIndex = the row index of the current screen the player is on
;             ScreenColIndex = the column index of the current screen the player is on
; Output:     This function calculates an offset that allows the calling function to
;             find the correct memory address in the world data tables so that the current
;             screen may be loaded; this offset is used to help compute the WorldPointer.
CalcWorldOffset:
	; initialization
	ld hl, 0                             ; load 0 into register hl
	ld (WorldOffset), hl                 ; reset WorldOffset to zero

	; handle ScreenRowIndex information
	ld bc, (ScreenRowIndex)              ; load the row index into register bc which will serve as a loop counter

	WorldOffsetRowLoop:                  ; WorldOffsetRowLoop marker
		ld a,b                           ; load high byte (b) from counter into register a
        or c                             ; compare a and c; if both are zero then set the z flag to break the loop
		jp z, HandleScreenColIndex       ; if there are no additional rows to cycle through, jump to HandleScreenColIndex

		ld hl, (WorldOffset)             ; otherwise, load WorldOffset into hl...
		ld de, 84                        ; load 84 into register de (84 is the offset contribution attributable to a row)...
		add hl, de                       ; add de to hl...
		ld (WorldOffset), hl             ; store the new WorldOffset in RAM

		dec bc                           ; decrement loop counter

        jp WorldOffsetRowLoop            ; if there are still rows to cycle through, jump to WorldOffsetRowLoop

	; handle ScreenColIndex information
	HandleScreenColIndex:                ; HandleScreenColIndex marker

	ld bc, (ScreenColIndex)              ; load the column index into register bc which will serve as a loop counter

	WorldOffsetColLoop:                  ; WorldOffsetColLoop marker
		ld a,b                           ; load high byte (b) from counter into register a
        or c                             ; compare a and c; if both are zero then set the z flag to break the loop
		jp z, EndFunctionCalcWorldOffset ; if there are no additional columns to cycle through, jump to EndFunctionCalcWorldOffset

		ld hl, (WorldOffset)             ; otherwise, load WorldOffset into hl...
		ld de, 4                         ; load 4 into register de (4 is the offset contribution attributable to a column)...
		add hl, de                       ; add de to hl...
		ld (WorldOffset), hl             ; store the new WorldOffset in RAM

		dec bc                           ; decrement loop counter

        jp WorldOffsetColLoop            ; if there are still rows to cycle through, jump to WorldOffsetColLoop

	EndFunctionCalcWorldOffset:          ; EndFunctionCalcWorldOffset marker

	ret

; A function to calculate the chunk offset value
; ----------------------------------------------
; Parameters: a = the chunk index of the chunk to be drawn
; Output:     This function calculates an offset that allows the calling function to
;             find the correct memory address in the chunk data table so that the correct
;             chunk may be loaded; this offset is used to help compute the ChunkPointer.
CalcChunkOffset:
	; initialization
	ld hl, 0                             ; load 0 into register hl
	ld (ChunkOffset), hl                 ; reset ChunkOffset to zero

	ld c, a                              ; load the chunk index number into low byte of bc to be used as a loop counter
	ld b, 0                              ; ensure b byte of bc equals zero in order to make loop counter work

	; loop to calculate chunk offset value
	ChunkOffsetLoop:                     ; ChunkOffsetLoop marker
		ld a,b                           ; load high byte (b) from counter into register a
        or c                             ; compare a and c; if both are zero then set the z flag to break the loop
		jp z, EndFunctionCalcChunkOffset ; if there are no additional chunks to cycle through, jump to EndFunctionCalcChunkOffset

		ld hl, (ChunkOffset)             ; otherwise, load ChunkOffset into hl...
		ld de, 64                        ; load 64 into register de (64 is the offset contribution attributable to one chunk)...
		add hl, de                       ; add de to hl...
		ld (ChunkOffset), hl             ; store the new ChunkOffset in RAM

		dec bc                           ; decrement loop counter

        jp ChunkOffsetLoop               ; if there are still rows to cycle through, jump to ChunkOffsetLoop

	EndFunctionCalcChunkOffset:          ; EndFunctionCalcChunkOffset marker

	ret

; A function to update the background graphics as the player moves about the world
; --------------------------------------------------------------------------------
; Parameters: CurrentWorld = the current world that the player is on

; Overview of this function's algorithm
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;                     ------------
;                     | RenderBG |
;                     ------------
;                         |
;                         -----
;                             |
;                             V
;                         --------------------------
;                         | Is BGChangeFlag active |---No----------------> Jump to EndFunctionRenderBG
;                         --------------------------                       and terminate function
;                             |
;                            Yes
;                             |
;                             V
;                         ---------------------------
;                         | Reset BGChangeFlag to 0 |
;                         ---------------------------
;                             |
;                             V
;                         ---------------------------------------------
;                         | Set BGMatrix pointer to start of BGMatrix |
;                         ---------------------------------------------
;                             |
;                             V
;                         -------------------------------------------------------------
;                         | Turn off screen to hide any background rendering ugliness |
;                         -------------------------------------------------------------
;                             |
;                             V
;                         -----------------------------------------
;                         | Calculate WorldOffset to apply        |------> CalcWorldOffset function
;                         | given ScreenRowIndex & ScreenColIndex |
;                         -----------------------------------------
;                             |
;                             V
;                         --------------------------------------------
;                         | Determine start address of current world |
;                         --------------------------------------------
;                             |
;                             V
;                         ----------------------------------------------
;                         | Add current world start address and offset |
;                         | to yield a pointer to the first relevant   |
;                         | byte in the world data tables              |
;                         ----------------------------------------------
;                             |
;                             V
;                         --------------------------
;     --->--------------->| Load chunk index and   |---------------------> CalcChunkOffset function
;     |   |               | calculate chunk offset |
;     |   |               | and pointer            |
;     |   |               --------------------------
;     |   |                   |
;     |   |                   V
;     |   |               ------------------------------
;     |   |   --->------->| Copy tile index from chunk |
;     |   |   |   |       | data table to BGMatrix and |
;     |   |   |   |       | increment pointers         |
;     |   |   |   |       ------------------------------
;     |   |   |   |           |
;     |   |   |   |           V
;     |   |   |   |       ------------------------
;     |   |   |   ---No---| At end of chunk row? |
;     |   |   |           ------------------------
;     |   |   |               |
;     |   |   |              Yes
;     |   |   |               |
;     |   |   |               V
;     |   |   |           -----------------------------------
;     |   |   |           | Add 24 to BGMatrixPointer       |
;     |   |   |           | to point to the next row of the |
;     |   |   |           | current chunk row in BGMatrix   |
;     |   |   |           -----------------------------------
;     |   |   |               |
;     |   |   |               V
;     |   |   |           --------------------
;     |   |   -------No---| At end of chunk? |
;     |   |               --------------------
;     |   |                   |
;     |   |                  Yes
;     |   |                   |
;     |   |                   V
;     |   |               -------------------------------------
;     |   |               | Subtract 248 from BGMatrixPointer |
;     |   |               | to point to the first row of      |
;     |   |               | the next chunk in BGMatrix        |
;     |   |               -------------------------------------
;     |   |                   |
;     |   |                   V
;     |   |               -------------------------------------
;     |   |               | Increment WorldPointer to point   |
;     |   |               | to next chunk index in world data |
;     |   |               | table                             |
;     |   |               -------------------------------------
;     |   |                   |
;     |   |                   V
;     |   |               -------------------------
;     |   -----------No---| At end of screen row? |
;     |                   -------------------------
;     |                       |
;     |                      Yes
;     |                       |
;     |                       V
;     |                   -------------------------------------
;     |                   | Add 224 to BGMatrixPointer        |
;     |                   | to point to the first row of      |
;     |                   | the next chunk in BGMatrix        |
;     |                   -------------------------------------
;     |                       |
;     |                       V
;     |                   -------------------------------------
;     |                   | Add 24 to WorldPointer to point   |
;     |                   | to next chunk index in world data |
;     |                   | table                             |
;     |                   -------------------------------------
;     |                       |
;     |                       V
;     |                   --------------------------
;     ---------------No---| Screen fully rendered? |
;                         --------------------------
;                             |
;                            Yes
;                             |
;                             V
;                         -------------------------------------------------
;                         | Send BGMatrix to VDP with $00 bytes as needed |
;                         -------------------------------------------------
;                             |
;                             V
;                         ---------------------------------------------
;                         | Turn on screen to show updated background |
;                         ---------------------------------------------

; When examining the flow-chart above and the code below, it is helpful to
; recall that the chunks are drawn in the order presented in the figure below:

; ---------------------
; |  1 |  2 |  3 |  4 |
; ---------------------
; |  5 |  6 |  7 |  8 |
; ---------------------
; |  9 | 10 | 11 | 12 |
; ---------------------

RenderBG:
	; check to see if the BG change flag is active
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (BGChangeFlag)                     ; load the BG change flag into the accumulator
	xor 1                                    ; compare the BG change flag value to 1
	jp nz, EndFunctionRenderBG               ; if the BG change flag is not 1, then jump to EndFunctionRenderBG marker

	; if the BG change flag is active, then update the BG graphics
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; reset the BG change flag and other variables
	; - - - - - - - - - - - - - - - - - - - - - - -
	ld a, 0                                  ; load 0 into the accumulator
	ld (BGChangeFlag), a                     ; reset the BG change flag value to 0
	ld hl, BGMatrix                          ; load the start address of the BG matrix into hl
	ld (BGMatrixPointer), hl                 ; save the start address of the BG matrix in a pointer

	call TurnOffScreen                       ; blank the screen during rendering

	; load world chunks into BG matrix
	; - - - - - - - - - - - - - - - - -
	call CalcWorldOffset                     ; calculate the offset of the current screen in the world

	ld hl, (WorldOffset)                     ; load WorldOffset into register hl

	; set of conditional expressions to determine which world data table to point to
	ld a, (CurrentWorld)                     ; load CurrentWorld into the accumulator
	xor 1                                    ; compare current world value with 1
	jp nz, WorldTest2                        ; if CurrentWorld is not 1 then jump to WorldTest2
	ld de, World1                            ; otherwise, load the address of World1 data into de

	WorldTest2:                              ; WorldTest2 marker

	ld a, (CurrentWorld)                     ; load CurrentWorld into the accumulator
	xor 2                                    ; compare current world value with 2
	jp nz, WorldTest3                        ; if CurrentWorld is not 2 then jump to WorldTest3
	ld de, World2                            ; otherwise, load the address of World2 data into de

	WorldTest3:                              ; WorldTest3 marker

	ld a, (CurrentWorld)                     ; load CurrentWorld into the accumulator
	xor 3                                    ; compare current world value with 3
	jp nz, EndWorldTests                     ; if CurrentWorld is not 3 then jump to EndWorldTests
	ld de, World3                            ; otherwise, load the address of World3 data into de

	EndWorldTests:                           ; EndWorldTests marker

	add hl,de                                ; add the world start address and world offsets to yield a pointer to the appropriate byte
	                                         ; in the world data tables for the current screen
	ld (WorldPointer), hl                    ; store the pointer calculated on the line above in RAM

	; nested loops to load chunks into the BG matrix
	ld bc, 3                                 ; load the number of rows of chunks in a screen into bc for use as a loop counter

	ChunkLoadLoopOuter:                      ; ChunkLoadLoopOuter marker (this loop loads the rows of chunks)
		push bc                              ; push the number of rows remaining to stack

		ld bc, 4                             ; load the number of columns of chunks in a screen into bc for use as a loop counter

		ChunkLoadLoopInner:                  ; ChunkLoadLoopInner marker (this loop loads the columns of chunks in each row)
			push bc                          ; push the number of columns remaining to stack

			ld hl, (WorldPointer)            ; load world pointer value into hl
			ld a,(hl)                        ; load the value at world pointer into register hl
			call CalcChunkOffset             ; calculate the offset to apply to base chunk data address

			ld hl, (ChunkOffset)             ; load chunk offset into hl
			ld de, Chunks                    ; load chunk data table base address into de
			add hl, de                       ; add the chunk start address and chunk offsets to yield a pointer to the appropriate byte
			                                 ; in the chunk data table
			ld (ChunkPointer), hl            ; store the pointer calculated on the line above in RAM

			ld bc, 8                         ; load the number of tile rows in a chunk for use as a loop counter

			TileLoadLoopOuter:               ; TileLoadLoopOuter marker
			                                 ; (this loop loads each row of tiles into the BG matrix for the current chunk)
				push bc                      ; push number of remaining tile rows to the stack

				ld bc, 8                     ; load the number of tile columns in a chunk for use as a loop counter

				TileLoadLoopInner:           ; TileLoadLoopInner marker
				                             ; (this loop loads each tile in each row into the BG matrix for the current chunk)
					ld hl, (ChunkPointer)    ; load the address at ChunkPointer into hl
					ld a, (hl)               ; load the data at address ChunkPointer into the accumulator
					inc hl                   ; increment the ChunkPointer to point to the next tile byte
					ld (ChunkPointer), hl    ; store the updated ChunkPointer in RAM

					ld hl, (BGMatrixPointer) ; load the address at BGMatrixPointer into hl
					ld (hl), a               ; place tile index into BGMatrix at BGMatrix pointer
					inc hl                   ; increment the BGMatrixPointer to point to the next byte
					ld (BGMatrixPointer), hl ; store the updated BGMatrixPointer

					dec bc                   ; decrement loop counter
					ld a,b                   ; load high byte (b) from counter into register a
					or c                     ; compare a and c; if both are zero then set the z flag to break the loop
					jp nz,TileLoadLoopInner  ; if nz = 1 then jump to TileLoadLoopInner

				ld hl, (BGMatrixPointer)     ; load the address at BGMatrixPointer into hl
				ld de, 24                    ; load 24 into de (24 is the offset required to point to the next line of
				                             ; the chunk in the BGMatrix)
				add hl, de                   ; add de to hl to make BGMatrixPointer point to the next line in the BGMatrix for the current chunk
				ld (BGMatrixPointer), hl     ; store updated BGMatrixPointer

				pop bc                       ; pop the number of tile rows remaining back into bc
				dec bc                       ; decrement loop counter
				ld a,b                       ; load high byte (b) from counter into register a
				or c                         ; compare a and c; if both are zero then set the z flag to break the loop
				jp nz,TileLoadLoopOuter      ; if nz = 1 then jump to TileLoadLoopOuter

			ld hl, (BGMatrixPointer)         ; load the address at BGMatrixPointer into hl
			ld de, 248                       ; load 248 into de (-248 is the offset required to point to the next chunk in the current row of chunks)
			sbc hl, de                       ; subtract de from hl to make BGMatrixPointer point to the next chunk
			ld (BGMatrixPointer), hl         ; store updated BGMatrixPointer

			ld hl, (WorldPointer)            ; load world pointer value into hl
			inc hl                           ; increment world pointer value to point to next byte in world data
			ld (WorldPointer), hl            ; store incremented world pointer value in RAM

			pop bc                           ; pop the number of columns remaining back into bc
			dec bc                           ; decrement loop counter
			ld a,b                           ; load high byte (b) from counter into register a
			or c                             ; compare a and c; if both are zero then set the z flag to break the loop
			jp nz,ChunkLoadLoopInner         ; if nz = 1 then jump to ChunkLoadLoopInner

		ld hl, (BGMatrixPointer)             ; load the address at BGMatrixPointer into hl
		ld de, 224                           ; load 224 into de (224 is the offset required to point to the next row of chunks)
		add hl, de                           ; add de to hl to make BGMatrixPointer point to the next chunk
		ld (BGMatrixPointer), hl             ; store updated BGMatrixPointer

		ld hl, (WorldPointer)                ; load world pointer value into hl
		ld de, 24                            ; load 24 into de (24 is the offset to increment to the next row in a world data table)
		add hl, de                           ; add 24 to world pointer to point to next row of world data table
		ld (WorldPointer), hl                ; store new world pointer value in RAM

		pop bc                               ; pop the number of rows remaining back into bc
		dec bc                               ; decrement loop counter
		ld a,b                               ; load high byte (b) from counter into register a
        or c                                 ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz,ChunkLoadLoopOuter             ; if nz = 1 then jump to ChunkLoadLoopOuter

	; send BG matrix to VDP for display
	; - - - - - - - - - - - - - - - - -
	ld a,$00                                 ; load $00 into register a
	out (VDPControl),a                       ; output register a to VDP control port
	ld a,TilemapWrite                        ; load tile map location into register a
	out (VDPControl),a                       ; output register a to VDP control port

	ld bc, 768                               ; load size of BGMatrix into bc to act as a loop counter
	ld hl, BGMatrix                          ; load start address of BGMatrix into hl

	SendToVDPLoopRenderBG:
		ld a,(hl)                            ; load data at address stored in hl into register a
        out (VDPData),a                      ; output byte in register a to port $be (VDP data port)
		ld a, 0                              ; load 0 into accumulator
		out (VDPData),a                      ; output byte in register a to port $be (VDP data port)
        inc hl                               ; increment hl to point to next byte in BGMatrix

		dec bc                               ; decrement loop counter
		ld a,b                               ; load high byte (b) from counter into register a
        or c                                 ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz,SendToVDPLoopRenderBG          ; if nz = 1 then jump to SendToVDPLoopRenderBG

	call TurnOnScreen                        ; turn the screen back on

	EndFunctionRenderBG:                     ; EndFunctionRenderBG marker

	ret

; A function to render the boss battle background graphics
; --------------------------------------------------------
; Parameters: nil
RenderBGBossBattle:
	call TurnOffScreen                       ; blank the screen during rendering

	; load arena into BG matrix
	; - - - - - - - - - - - - -
	ld hl, Arena                             ; load Arena start address as pointer into hl
	ld de, BGMatrix                          ; load BGMatrix start address as pointer into de
	ld bc, ArenaEnd - Arena                  ; load the size of the Arena data into bc as a loop counter

	SendArenaToBGMatrixLoop:
		ld a, (hl)                           ; load byte of data from Arena into accumulator
		ld (de), a                           ; send data in accumulator to BGMatrix

		inc hl                               ; increment Arena pointer
		inc de                               ; increment BGMatrix pointer

		dec bc                               ; decrement loop counter
		ld a,b                               ; load high byte (b) from counter into register a
        or c                                 ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz,SendArenaToBGMatrixLoop        ; if nz = 1 then jump to SendArenaToBGMatrixLoop

	; send BG matrix to VDP for display
	; - - - - - - - - - - - - - - - - -
	ld a,$00                                 ; load $00 into register a
	out (VDPControl),a                       ; output register a to VDP control port
	ld a,TilemapWrite                        ; load tile map location into register a
	out (VDPControl),a                       ; output register a to VDP control port

	ld bc, 768                               ; load size of BGMatrix into bc to act as a loop counter
	ld hl, BGMatrix                          ; load start address of BGMatrix into hl

	SendToVDPLoopRenderBGBB:
		ld a,(hl)                            ; load data at address stored in hl into register a
        out (VDPData),a                      ; output byte in register a to port $be (VDP data port)
		ld a, 0                              ; load 0 into accumulator
		out (VDPData),a                      ; output byte in register a to port $be (VDP data port)
        inc hl                               ; increment hl to point to next byte in BGMatrix

		dec bc                               ; decrement loop counter
		ld a,b                               ; load high byte (b) from counter into register a
        or c                                 ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz,SendToVDPLoopRenderBGBB        ; if nz = 1 then jump to SendToVDPLoopRenderBG

	call TurnOnScreen                        ; turn the screen back on

	ret