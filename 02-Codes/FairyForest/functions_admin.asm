;==============================================================
; Fairy Forest - admin functions include file
;
; * This file contains the admin functions called by the
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

; Misc/Administrative functions
; =============================

; A function to delay execution via a loop
; ----------------------------------------
; Parameters: bc = no of loop interations
DelayExecution:
	DelayLoop:          ; top of loop (analogous to for loop)
		dec bc          ; decrement loop counter
		ld a, b         ; load high byte from bc into register a
		or c            ; compare high and low bytes
		jp nz,DelayLoop ; if result non-zero then jump to top of loop

	ret

; A function to initialize variable values for the program at start-up
; --------------------------------------------------------------------
; Parameters: nil
IniVarsGlobal:
	; set player location variables
	ld a, 1                ; load 1 into the accumulator
	ld (CurrentWorld), a   ; set the current world to 1

	; set game dynamics variables
	ld bc, 3               ; load 3 into bc
	ld (CurrentLives), bc  ; set the current lives value to 3

	ret

; A function to initialize variable values for each world event loop
; ------------------------------------------------------------------
; Parameters: nil
IniVarsForEventLoop:
	; set player location variables
	ld a, 124                    ; load 124 into the accumulator
	ld (PlayerXCoord), a         ; set PlayerXCoord to the middle of the screen
	ld a, 92                     ; load 92 into the accumulator
	ld (PlayerYCoord), a         ; set PlayerYCoord to the middle of the screen
	ld hl, 3                     ; load 3 into the accumulator
	ld (ScreenRowIndex), hl      ; set the screen row index
	ld hl, 0                     ; load 0 into the accumulator
	ld (ScreenColIndex), hl      ; set the screen column index
	ld a, 4                      ; load 4 into the accumulator
	ld (PlayerDirection), a      ; set the player direction

	; set boss location variables
	ld a, 192                    ; load 192 into the accumulator
	ld (BossXCoord), a           ; set BossXCoord to the right of the screen
	ld a, 92                     ; load 92 into the accumulator
	ld (BossYCoord), a           ; set BossYCoord to the middle of the screen
	ld a, 3                      ; load 3 into the accumulator
	ld (BossDirection), a        ; set the boss direction
	ld a, 0                      ; load 0 into the accumulator
	ld (BossMoveDelay), a        ; set boss move delay
	ld bc, FireDelay             ; load FireDelay into bc
	ld (BossFireDelay), bc       ; set boss fire delay
	ld bc, 3                     ; load 3 into bc
	ld (BossLives), bc           ; set BossLives

	; set BG graphics variables
	ld a, 1                      ; load 1 into the accumulator
	ld (BGChangeFlag), a         ; set BG change flag to force BG graphic update

	; set sprite control variables
	ld a, 1                      ; load 1 into the accumulator
	ld (WingFlapFlag), a         ; set WingFlapFlag to 1
	ld a, 1                      ; load 1 into the accumulator
	ld (BWingFlapFlag), a        ; set WingFlapFlag to 1
	ld a, 0                      ; load 0 into the accumulator
	ld (BatMoveDelay), a         ; set BatMoveDelay
	ld a, 0                      ; load 0 into the accumulator
	ld (SpiderMoveDelay), a      ; set SpiderMoveDelay
	ld a, 0                      ; load 0 into the accumulator
	ld (MushMoveDelay), a        ; set MushMoveDelay
	ld a, 0                      ; load 0 into the accumulator
	ld (TreeMoveDelay), a        ; set TreeMoveDelay

	; music and sound effects variables
	ld hl, MusicData             ; load music data start address into hl
	ld (MusicPointer), hl        ; set music pointer to the start of the music data
	ld a, NoteLength             ; load note length into accumulator
	ld (NoteDuration), a         ; set note duration

	; set level status flags
	ld a, 0                      ; load 0 into the accumulator
	ld (NextLevelFlag), a        ; set NextLevelFlag

	ret

; A function to load world 1 enemies and power-ups into RAM
; ---------------------------------------------------------
; Parameters: nil
LoadWorld1EnemiesAndPowerUps:
	; load bats
	; ~~~~~~~~~
	ld bc, World1BatsEnd-World1Bats       ; load the number of bytes of bat data that exist into bc for use as a loop counter
	ld de, World1Bats                     ; load the start address of the bat data in the ROM as a pointer
	ld hl, Bats                           ; load the start address of the bat objects in RAM as a pointer

	World1BatLoadLoop:                    ; World1BatLoadLoop marker
		ld a, (de)                        ; load next byte of bat data into a
		ld (hl), a                        ; send next byte of bat data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1BatLoadLoop          ; if counter has not run out then jump to World1BatLoadLoop

	; load spiders
	; ~~~~~~~~~~~~
	ld bc, World1SpidersEnd-World1Spiders ; load the number of bytes of spider data that exist into bc for use as a loop counter
	ld de, World1Spiders                  ; load the start address of the spider data in the ROM as a pointer
	ld hl, Spiders                        ; load the start address of the spider objects in RAM as a pointer

	World1SpiderLoadLoop:                 ; World1SpiderLoadLoop marker
		ld a, (de)                        ; load next byte of spider data into a
		ld (hl), a                        ; send next byte of spider data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1SpiderLoadLoop       ; if counter has not run out then jump to World1SpiderLoadLoop

	; load mushrooms
	; ~~~~~~~~~~~~~~
	ld bc, World1MushEnd-World1Mush       ; load the number of bytes of mushroom data that exist into bc for use as a loop counter
	ld de, World1Mush                     ; load the start address of the mushroom data in the ROM as a pointer
	ld hl, Mush                           ; load the start address of the mushroom objects in RAM as a pointer

	World1MushLoadLoop:                   ; World1MushLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1MushLoadLoop         ; if counter has not run out then jump to World1MushLoadLoop

	; load trees
	; ~~~~~~~~~~
	ld bc, World1TreesEnd-World1Trees     ; load the number of bytes of tree data that exist into bc for use as a loop counter
	ld de, World1Trees                    ; load the start address of the tree data in the ROM as a pointer
	ld hl, Trees                          ; load the start address of the tree objects in RAM as a pointer

	World1TreeLoadLoop:                   ; World1TreeLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1TreeLoadLoop         ; if counter has not run out then jump to World1TreeLoadLoop

	; load heart power-ups
	; ~~~~~~~~~~~~~~~~~~~~
	ld bc, World1HeartsEnd-World1Hearts   ; load the number of bytes of heart data that exist into bc for use as a loop counter
	ld de, World1Hearts                   ; load the start address of the heart data in the ROM as a pointer
	ld hl, Hearts                         ; load the start address of the heart objects in RAM as a pointer

	World1HeartLoadLoop:                  ; World1HeartLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1HeartLoadLoop        ; if counter has not run out then jump to World1HeartLoadLoop

	; load door
	; ~~~~~~~~~
	ld bc, World1DoorEnd-World1Door       ; load the number of bytes of door data that exist into bc for use as a loop counter
	ld de, World1Door                     ; load the start address of the door data in the ROM as a pointer
	ld hl, Doors                          ; load the start address of the door objects in RAM as a pointer

	World1DoorLoadLoop:                   ; World1DoorLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1DoorLoadLoop         ; if counter has not run out then jump to World1DoorLoadLoop

	; load fairy dust attack
	; ~~~~~~~~~~~~~~~~~~~~~~
	ld bc, World1DustEnd-World1Dust       ; load the number of bytes of dust data that exist into bc for use as a loop counter
	ld de, World1Dust                     ; load the start address of the dust data in the ROM as a pointer
	ld hl, DustAtt                        ; load the start address of the dust object in RAM as a pointer

	World1DustLoadLoop:                   ; World1DustLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World1DustLoadLoop         ; if counter has not run out then jump to World1DustLoadLoop

	ret

; A function to load world 2 enemies and power-ups into RAM
; ---------------------------------------------------------
; Parameters: nil
LoadWorld2EnemiesAndPowerUps:
	; load bats
	; ~~~~~~~~~
	ld bc, World2BatsEnd-World2Bats       ; load the number of bytes of bat data that exist into bc for use as a loop counter
	ld de, World2Bats                     ; load the start address of the bat data in the ROM as a pointer
	ld hl, Bats                           ; load the start address of the bat objects in RAM as a pointer

	World2BatLoadLoop:                    ; World1BatLoadLoop marker
		ld a, (de)                        ; load next byte of bat data into a
		ld (hl), a                        ; send next byte of bat data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2BatLoadLoop          ; if counter has not run out then jump to World1BatLoadLoop

	; load spiders
	; ~~~~~~~~~~~~
	ld bc, World2SpidersEnd-World2Spiders ; load the number of bytes of spider data that exist into bc for use as a loop counter
	ld de, World2Spiders                  ; load the start address of the spider data in the ROM as a pointer
	ld hl, Spiders                        ; load the start address of the spider objects in RAM as a pointer

	World2SpiderLoadLoop:                 ; World1SpiderLoadLoop marker
		ld a, (de)                        ; load next byte of spider data into a
		ld (hl), a                        ; send next byte of spider data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2SpiderLoadLoop       ; if counter has not run out then jump to World1SpiderLoadLoop

	; load mushrooms
	; ~~~~~~~~~~~~~~
	ld bc, World2MushEnd-World2Mush       ; load the number of bytes of mushroom data that exist into bc for use as a loop counter
	ld de, World2Mush                     ; load the start address of the mushroom data in the ROM as a pointer
	ld hl, Mush                           ; load the start address of the mushroom objects in RAM as a pointer

	World2MushLoadLoop:                   ; World1MushLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2MushLoadLoop         ; if counter has not run out then jump to World1MushLoadLoop

	; load trees
	; ~~~~~~~~~~
	ld bc, World2TreesEnd-World2Trees     ; load the number of bytes of tree data that exist into bc for use as a loop counter
	ld de, World2Trees                    ; load the start address of the tree data in the ROM as a pointer
	ld hl, Trees                          ; load the start address of the tree objects in RAM as a pointer

	World2TreeLoadLoop:                   ; World1TreeLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2TreeLoadLoop         ; if counter has not run out then jump to World1TreeLoadLoop

	; load heart power-ups
	; ~~~~~~~~~~~~~~~~~~~~
	ld bc, World2HeartsEnd-World2Hearts   ; load the number of bytes of heart data that exist into bc for use as a loop counter
	ld de, World2Hearts                   ; load the start address of the heart data in the ROM as a pointer
	ld hl, Hearts                         ; load the start address of the heart objects in RAM as a pointer

	World2HeartLoadLoop:                  ; World1HeartLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2HeartLoadLoop        ; if counter has not run out then jump to World1HeartLoadLoop

	; load door
	; ~~~~~~~~~
	ld bc, World2DoorEnd-World2Door       ; load the number of bytes of door data that exist into bc for use as a loop counter
	ld de, World2Door                     ; load the start address of the door data in the ROM as a pointer
	ld hl, Doors                          ; load the start address of the door objects in RAM as a pointer

	World2DoorLoadLoop:                   ; World1DoorLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2DoorLoadLoop         ; if counter has not run out then jump to World1DoorLoadLoop

	; load fairy dust attack
	; ~~~~~~~~~~~~~~~~~~~~~~
	ld bc, World2DustEnd-World2Dust       ; load the number of bytes of dust data that exist into bc for use as a loop counter
	ld de, World2Dust                     ; load the start address of the dust data in the ROM as a pointer
	ld hl, DustAtt                        ; load the start address of the dust object in RAM as a pointer

	World2DustLoadLoop:                   ; World1DustLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World2DustLoadLoop         ; if counter has not run out then jump to World1DustLoadLoop

	ret

; A function to load world 3 enemies and power-ups into RAM
; ---------------------------------------------------------
; Parameters: nil
LoadWorld3EnemiesAndPowerUps:
	; load bats
	; ~~~~~~~~~
	ld bc, World3BatsEnd-World3Bats       ; load the number of bytes of bat data that exist into bc for use as a loop counter
	ld de, World3Bats                     ; load the start address of the bat data in the ROM as a pointer
	ld hl, Bats                           ; load the start address of the bat objects in RAM as a pointer

	World3BatLoadLoop:                    ; World1BatLoadLoop marker
		ld a, (de)                        ; load next byte of bat data into a
		ld (hl), a                        ; send next byte of bat data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3BatLoadLoop          ; if counter has not run out then jump to World1BatLoadLoop

	; load spiders
	; ~~~~~~~~~~~~
	ld bc, World3SpidersEnd-World3Spiders ; load the number of bytes of spider data that exist into bc for use as a loop counter
	ld de, World3Spiders                  ; load the start address of the spider data in the ROM as a pointer
	ld hl, Spiders                        ; load the start address of the spider objects in RAM as a pointer

	World3SpiderLoadLoop:                 ; World1SpiderLoadLoop marker
		ld a, (de)                        ; load next byte of spider data into a
		ld (hl), a                        ; send next byte of spider data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3SpiderLoadLoop       ; if counter has not run out then jump to World1SpiderLoadLoop

	; load mushrooms
	; ~~~~~~~~~~~~~~
	ld bc, World3MushEnd-World3Mush       ; load the number of bytes of mushroom data that exist into bc for use as a loop counter
	ld de, World3Mush                     ; load the start address of the mushroom data in the ROM as a pointer
	ld hl, Mush                           ; load the start address of the mushroom objects in RAM as a pointer

	World3MushLoadLoop:                   ; World1MushLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3MushLoadLoop         ; if counter has not run out then jump to World1MushLoadLoop

	; load trees
	; ~~~~~~~~~~
	ld bc, World3TreesEnd-World3Trees     ; load the number of bytes of tree data that exist into bc for use as a loop counter
	ld de, World3Trees                    ; load the start address of the tree data in the ROM as a pointer
	ld hl, Trees                          ; load the start address of the tree objects in RAM as a pointer

	World3TreeLoadLoop:                   ; World1TreeLoadLoop marker
		ld a, (de)                        ; load next byte of mushroom data into a
		ld (hl), a                        ; send next byte of mushroom data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3TreeLoadLoop         ; if counter has not run out then jump to World1TreeLoadLoop

	; load heart power-ups
	; ~~~~~~~~~~~~~~~~~~~~
	ld bc, World3HeartsEnd-World3Hearts   ; load the number of bytes of heart data that exist into bc for use as a loop counter
	ld de, World3Hearts                   ; load the start address of the heart data in the ROM as a pointer
	ld hl, Hearts                         ; load the start address of the heart objects in RAM as a pointer

	World3HeartLoadLoop:                  ; World1HeartLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3HeartLoadLoop        ; if counter has not run out then jump to World1HeartLoadLoop

	; load door
	; ~~~~~~~~~
	ld bc, World3DoorEnd-World3Door       ; load the number of bytes of door data that exist into bc for use as a loop counter
	ld de, World3Door                     ; load the start address of the door data in the ROM as a pointer
	ld hl, Doors                          ; load the start address of the door objects in RAM as a pointer

	World3DoorLoadLoop:                   ; World1DoorLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3DoorLoadLoop         ; if counter has not run out then jump to World1DoorLoadLoop

	; load fairy dust attack
	; ~~~~~~~~~~~~~~~~~~~~~~
	ld bc, World3DustEnd-World3Dust       ; load the number of bytes of dust data that exist into bc for use as a loop counter
	ld de, World3Dust                     ; load the start address of the dust data in the ROM as a pointer
	ld hl, DustAtt                        ; load the start address of the dust object in RAM as a pointer

	World3DustLoadLoop:                   ; World1DustLoadLoop marker
		ld a, (de)                        ; load next byte of heart data into a
		ld (hl), a                        ; send next byte of heart data to RAM

		dec bc                            ; decrement counter
		inc de                            ; increment ROM pointer
		inc hl                            ; increment RAM pointer
        ld a, b                           ; load high byte (b) from counter into register a
        or c                              ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, World3DustLoadLoop         ; if counter has not run out then jump to World1DustLoadLoop

	ret