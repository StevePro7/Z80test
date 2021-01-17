;==============================================================
; Fairy Forest - foreground graphics functions include file
;
; * This file contains the foreground graphics functions called by the
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

; Foreground game graphics functions
; ==================================

; A function to update the character sprites
; ------------------------------------------
; Parameters: nil
; N.B. In hindsight, I probably should have made the wing flap instructions into a seperate function.
; If I am being completely honest, I only thought of that after I had wrote the code; this is
; and embarassing oversight on my part. Oh well, the code seems to work and so I am leaving it as is.
UpdateCharacterSprites:
	; conditional statements to call appropriate instructions based upon the direction the character is facing
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 4                                    ; compare with code for right
	jp z, CharacterRight                     ; if character is facing right jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 5                                    ; compare with code for right and up
	jp z, CharacterUpRight                   ; if character is facing up and right jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 6                                    ; compare with code for right and down
	jp z, CharacterDownRight                 ; if character is facing down and right jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 3                                    ; compare with code for left
	jp z, CharacterLeft                      ; if character is facing left jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 7                                    ; compare with code for left and up
	jp z, CharacterUpLeft                    ; if character is facing up and left jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 8                                    ; compare with code for left and down
	jp z, CharacterDownLeft                  ; if character is facing down and left jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 1                                    ; compare with code for up
	jp z, CharacterUp                        ; if character is facing up jump to appropriate section

	ld a, (PlayerDirection)                  ; load player direction in accumulator
	xor 2                                    ; compare with code for down
	jp z, CharacterDown                      ; if character is facing down jump to appropriate section

	jp EndFunctionUpdateCharacterSprites     ; if no conditions are met, then jump to the end of the function

	; sections to draw character based upon the direction they are facing
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; if character is facing right
	; - - - - - - - - - - - - - - -
	CharacterRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 44                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 45                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 46                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 47                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1RightFacing           ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2RightFacing           ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3RightFacing           ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapRightFacing            ; if no conditions are met jump to end of wing flap instructions

		WingFlap1RightFacing:                ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapRightFacing        ; jump to end of wing flap instructions

		WingFlap2RightFacing:                ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapRightFacing        ; jump to end of wing flap instructions

		WingFlap3RightFacing:                ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapRightFacing        ; jump to end of wing flap instructions

		EndWingFlapRightFacing:              ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing up and right
	; - - - - - - - - - - - - - - - - - -
	CharacterUpRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 40                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 41                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 42                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 43                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1UpRightFacing         ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2UpRightFacing         ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3UpRightFacing         ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapUpRightFacing          ; if no conditions are met jump to end of wing flap instructions

		WingFlap1UpRightFacing:              ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpRightFacing      ; jump to end of wing flap instructions

		WingFlap2UpRightFacing:              ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpRightFacing      ; jump to end of wing flap instructions

		WingFlap3UpRightFacing:              ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapUpRightFacing      ; jump to end of wing flap instructions

		EndWingFlapUpRightFacing:            ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing down and right
	; - - - - - - - - - - - - - - - - - - -
	CharacterDownRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 48                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 49                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 50                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 51                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1DownRightFacing       ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2DownRightFacing       ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3DownRightFacing       ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapDownRightFacing        ; if no conditions are met jump to end of wing flap instructions

		WingFlap1DownRightFacing:            ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownRightFacing    ; jump to end of wing flap instructions

		WingFlap2DownRightFacing:            ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownRightFacing    ; jump to end of wing flap instructions

		WingFlap3DownRightFacing:            ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapDownRightFacing    ; jump to end of wing flap instructions

		EndWingFlapDownRightFacing:          ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing left
	; - - - - - - - - - - - - - -
	CharacterLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 60                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 61                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 62                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 63                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1LeftFacing            ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2LeftFacing            ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3LeftFacing            ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapLeftFacing             ; if no conditions are met jump to end of wing flap instructions

		WingFlap1LeftFacing:                 ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapLeftFacing         ; jump to end of wing flap instructions

		WingFlap2LeftFacing:                 ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapLeftFacing         ; jump to end of wing flap instructions

		WingFlap3LeftFacing:                 ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapLeftFacing         ; jump to end of wing flap instructions

		EndWingFlapLeftFacing:               ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing up and left
	; - - - - - - - - - - - - - - - - - -
	CharacterUpLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 56                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 57                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 58                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 59                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1UpLeftFacing          ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2UpLeftFacing          ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3UpLeftFacing          ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapUpLeftFacing           ; if no conditions are met jump to end of wing flap instructions

		WingFlap1UpLeftFacing:               ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpLeftFacing       ; jump to end of wing flap instructions

		WingFlap2UpLeftFacing:               ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpLeftFacing       ; jump to end of wing flap instructions

		WingFlap3UpLeftFacing:               ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapUpLeftFacing       ; jump to end of wing flap instructions

		EndWingFlapUpLeftFacing:             ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing down and left
	; - - - - - - - - - - - - - - - - - - -
	CharacterDownLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 64                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 65                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 66                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 67                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1DownLeftFacing        ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2DownLeftFacing        ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3DownLeftFacing        ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapDownLeftFacing         ; if no conditions are met jump to end of wing flap instructions

		WingFlap1DownLeftFacing:             ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownLeftFacing     ; jump to end of wing flap instructions

		WingFlap2DownLeftFacing:             ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownLeftFacing     ; jump to end of wing flap instructions

		WingFlap3DownLeftFacing:             ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapDownLeftFacing     ; jump to end of wing flap instructions

		EndWingFlapDownLeftFacing:           ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon character direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing up
	; - - - - - - - - - - - - -
	CharacterUp:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 68                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 69                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 70                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 71                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 72                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 73                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 74                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 75                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1UpFacing              ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2UpFacing              ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3UpFacing              ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapUpFacing               ; if no conditions are met jump to end of wing flap instructions

		WingFlap1UpFacing:                   ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpFacing           ; jump to end of wing flap instructions

		WingFlap2UpFacing:                   ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 88                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapUpFacing           ; jump to end of wing flap instructions

		WingFlap3UpFacing:                   ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 89                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapUpFacing           ; jump to end of wing flap instructions

		EndWingFlapUpFacing:                 ; EndWingFlagRightFacing marker

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	; if character is facing down
	; - - - - - - - - - - - - - -
	CharacterDown:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (PlayerYCoord)                 ; load y coordinate of player into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (PlayerXCoord)                 ; load x-coordinate of player into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 76                             ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 77                             ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 78                             ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 79                             ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 80                             ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 81                             ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 82                             ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 83                             ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, WingFlap1DownFacing            ; if WingFlapFlag = 1 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, WingFlap2DownFacing            ; if WingFlapFlag = 2 jump to required instructions

		ld a, (WingFlapFlag)                 ; load WingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, WingFlap3DownFacing            ; if WingFlapFlag = 3 jump to required instructions

		jp EndWingFlapDownFacing             ; if no conditions are met jump to end of wing flap instructions

		WingFlap1DownFacing:                 ; if WingFlapFlag = 1 draw open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownFacing         ; jump to end of wing flap instructions

		WingFlap2DownFacing:                 ; if WingFlapFlag = 2 draw 1/2 open wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 88                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (WingFlapFlag)             ; load WingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (WingFlapFlag), a             ; store the flag back in RAM

			jp EndWingFlapDownFacing         ; jump to end of wing flap instructions

		WingFlap3DownFacing:                 ; if WingFlapFlag = 3 draw closed wings
			ld a, (PlayerXCoord)             ; load PlayerXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 8                            ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 8                         ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 89                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95                         ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (WingFlapFlag), a             ; reset the flag

			jp EndWingFlapDownFacing         ; jump to end of wing flap instructions

		EndWingFlapDownFacing:               ; EndWingFlagRightFacing marker

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateCharacterSprites ; jump to end of function once done

	EndFunctionUpdateCharacterSprites:       ; EndFunctionUpdateCharacterSprites marker

	ret

; A function to update bat enemy sprites
; --------------------------------------
; Parameters: nil
UpdateBatEnemySprites:
	ld bc, NoOfBats                   ; load the number of bats in the world into bc to be used as a loop counter
	ld hl, Bats                       ; load the start address of the bat objects in RAM into hl as a pointer

	BatUpdateLoop:                    ; BatUpdateLoop marker
		push bc                       ; push loop counter to stack for use later

		; check to see if the bat is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceBatPointer1     ; if the bat is not alive then jump to end of loop
		                              ; and advance pointer to next bat object

		; check to see if the bat is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world row index
		ld a, (hl)                    ; load the bat's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatPointer2     ; if the bat and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next bat object

		; check to see if the bat is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment bat pointer to point at the bat's world column index
		ld a, (hl)                    ; load the bat's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceBatPointer3     ; if the bat and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next bat object

		; if the Bat is alive and on the same screen as the player, then update the bat's sprites
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		; 1) update bat's y coordinate and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment bat pointer to point at the bat's vertical direction
		ld a, (hl)                    ; load bat's vertical direction into a
		cp 0                          ; compare bat's direction to 0
		jp z, MoveBatUp               ; if bat is moving up jump to MoveBatUp
		cp 1                          ; compare bat's direction to 1
		jp z, MoveBatDown             ; if bat is moving down jump to MoveBatDown

		MoveBatUp:                    ; MoveBatUp marker
			inc hl                    ; increment bat pointer to point at the bat's y coordinate
			ld a, (hl)                ; load bat's y coordinate into a

			ld e, a                   ; shift bat's y coordinate into e
			ld a, (BatMoveDelay)      ; load bat move delay into a
			cp BatDelay               ; compare bat move delay with BatDelay constant
			jp nz, EndBatMoveUp       ; if it is not time for the bat to move then jump to EndBatMoveUp

			ld a, e                   ; return bat's y coordinate to a
			dec a                     ; decrement bat's y coordinate
			ld (hl), a                ; store updated y coordinate in bat object

			EndBatMoveUp:             ; EndBatMoveUp marker

			ld a, e                   ; return bat's y coordinate to a

			jp EndBatVerticalMvmt     ; jump to EndBatVerticalMvmt to avoid move down code

		MoveBatDown:                  ; MoveBatDown marker
			inc hl                    ; increment bat pointer to point at the bat's y coordinate
			ld a, (hl)                ; load bat's y coordinate into a

			ld e, a                   ; shift bat's y coordinate into e
			ld a, (BatMoveDelay)      ; load bat move delay into a
			cp BatDelay               ; compare bat move delay with BatDelay constant
			jp nz, EndBatMoveDown     ; if it is not time for the bat to move then jump to EndBatMoveDown

			ld a, e                   ; return bat's y coordinate to a
			inc a                     ; increment bat's y coordinate
			ld (hl), a                ; store updated y coordinate in bat object

			EndBatMoveDown:           ; EndBatMoveDown marker

			ld a, e                   ; return bat's y coordinate to a

		EndBatVerticalMvmt:           ; EndBatVerticalMvmt marker

		inc hl                        ; increment Bat pointer to point at the bat's max y coordinate
		ld c, (hl)                    ; load bat's max y coordinate into c
		cp c                          ; compare bat's y coordinate with the bat's max y coordinate
		jp z, TurnBatUp               ; if bat is at the bottom of its box turn upwards
		inc hl                        ; increment Bat pointer to point at the bat's min y coordinate
		ld c, (hl)                    ; load bat's min y coordinate into c
		cp c                          ; compare bat's y coordinate with the bat's min y coordinate
		jp z, TurnBatDown             ; if bat is at the top of its box turn downwards

		jp EndBatVertDirChange        ; jump to EndBatVertDirChange to avoid direction change code if not required

		TurnBatUp:                    ; TurnBatUp marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement bat pointer by two to point at the vertical direction
			ld c, 0                   ; load up direction into c
			ld (hl), c                ; set bat direction upwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment bat pointer by three to point at the minimum y coordinate

			jp EndBatVertDirChange    ; jump to EndBatVertDirChange to avoid turn down code

		TurnBatDown:                  ; TurnBatDown marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement bat pointer by three to point at the vertical direction
			ld c, 1                   ; load down direction into c
			ld (hl), c                ; set bat direction downwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment bat pointer by three to point at the minimum y coordinate

		EndBatVertDirChange:          ; EndBatVertDirChange

		ld bc, (SpritePointerY)       ; load current sprite Y pointer in bc
		ld (bc), a 	                  ; send bat's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send bat's right wing updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send bat's left wing updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (SpritePointerY), bc       ; store updated sprite Y pointer in RAM

		; 2) update bat's x coordinate and tile index and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment bat pointer to point at the bat's horizontal direction
		ld a, (hl)                    ; load bat's horizontal direction into a
		cp 0                          ; compare bat's direction to 0
		jp z, MoveBatLeft             ; if bat is moving left jump to MoveBatLeft
		cp 1                          ; compare bat's direction to 1
		jp z, MoveBatRight            ; if bat is moving right jump to MoveBatRight

		MoveBatLeft:                  ; MoveBatLeft marker
			inc hl                    ; increment bat pointer to point at the bat's x coordinate
			ld a, (hl)                ; load bat's x coordinate into a

			ld e, a                   ; shift bat's x coordinate into e
			ld a, (BatMoveDelay)      ; load bat move delay into a
			cp BatDelay               ; compare bat move delay with BatDelay constant
			jp nz, EndBatMoveLeft     ; if it is not time for the bat to move then jump to EndBatMoveLeft

			ld a, e                   ; return bat's y coordinate to a
			dec a                     ; decrement bat's x coordinate
			ld (hl), a                ; store updated x coordinate in bat object

			EndBatMoveLeft:           ; EndBatMoveLeft marker

			ld a, e                   ; return bat's x coordinate to a

			jp EndBatHorizontalMvmt   ; jump to EndBatVerticalMvmt to avoid move right code

		MoveBatRight:                 ; MoveBatRight marker
			inc hl                    ; increment bat pointer to point at the bat's x coordinate
			ld a, (hl)                ; load bat's x coordinate into a

			ld e, a                   ; shift bat's x coordinate into e
			ld a, (BatMoveDelay)      ; load bat move delay into a
			cp BatDelay               ; compare bat move delay with BatDelay constant
			jp nz, EndBatMoveRight    ; if it is not time for the bat to move then jump to EndBatMoveRight

			ld a, e                   ; return bat's y coordinate to a
			inc a                     ; increment bat's x coordinate
			ld (hl), a                ; store updated x coordinate in bat object

			EndBatMoveRight:          ; EndBatMoveRight

			ld a, e                   ; return bat's x coordinate to a

		EndBatHorizontalMvmt:         ; EndBatHorizontalMvmt marker

		inc hl                        ; increment bat pointer to point at the bat's max x coordinate
		ld c, (hl)                    ; load bat's max x coordinate into c
		cp c                          ; compare bat's x coordinate with the bat's max x coordinate
		jp z, TurnBatLeft             ; if bat is at the right side of its box turn left
		inc hl                        ; increment bat pointer to point at the bat's min x coordinate
		ld c, (hl)                    ; load bat's min x coordinate into c
		cp c                          ; compare bat's x coordinate with the bat's min x coordinate
		jp z, TurnBatRight            ; if bat is at the left side of its box turn right

		jp EndBatHorizDirChange       ; jump to EndBatHorizDirChange to avoid direction change code if not required

		TurnBatLeft:                  ; TurnBatLeft marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement bat pointer by two to point at the horizontal direction
			ld c, 0                   ; load left direction into c
			ld (hl), c                ; set bat direction leftwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment bat pointer by three to point at the minimum x coordinate

			jp EndBatHorizDirChange   ; jump to EndBatHorizDirChange to avoid turn right code

		TurnBatRight:                 ; TurnBatRight marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement bat pointer by three to point at the horizontal direction
			ld c, 1                   ; load right direction into c
			ld (hl), c                ; set bat direction rightwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment bat pointer by three to point at the minimum x coordinate

		EndBatHorizDirChange:         ; EndBatHorizDirChange

		; check to see if the bat wings are opened or closed
		inc hl                        ; increment bat pointer to look at bat's wing flap status
		ld e, a                       ; shift bat's x coordinate to e
		ld a, (hl)                    ; load bat's wing flap status into a
		sub BatWingFlapItrs           ; compare bat's wing status with the associated constant
		jp p, BatWingsClosed          ; if bat's wings are to be drawn closed, then jump to BatWingsClosed marker

		; code to draw bat wings open
		ld a, (hl)                    ; load bat wing flap status into a
		inc a                         ; increment a
		ld (hl), a                    ; set updated bat wing status flag
		ld bc, (SpritePointerXT)      ; load current sprite XT pointer in bc
		ld a, e                       ; return bat's x coordinate to a
		ld (bc), a	                  ; send bat's x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift bat's x coordinate to e
		ld a, 164                     ; load bat face tile index into a
		ld (bc), a	                  ; send bat face tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return bat's x coordinate to a
		add a, 8                      ; add eight to accumulator to calc bat's right wing position
		ld (bc), a                    ; send bat's right wing updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift bat's x coordinate to e
		ld a, 165                     ; load bat right wing tile index into accumulator
		ld (bc), a                    ; send bat right wing tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return bat's x coordinate to a
		sub 16                        ; subtract sixteen from accumulator to calc bat's left wing position
		ld (bc), a                    ; send bat's left wing updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, 166                     ; load bat left wing tile index into accumulator
		ld (bc), a                    ; send bat left wing tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld (SpritePointerXT), bc      ; store updated sprite XT pointer in RAM
		jp EndBatXTUpdate             ; jump to EndBatXTUpdate to avoid the code which draws the bat with wings closed

		; code to draw bat wings closed
		BatWingsClosed:               ; BatWingsClosed marker
			ld a, (hl)                ; load bat wing flap status into a
			inc a                     ; increment a
			
			cp 2 * BatWingFlapItrs    ; compare the wing flap status with twice the flap constant
			jp nz, BatWingsClosed2    ; if it is time to reset the flap status then reset
			
			ld a, 0                   ; load 0 into accumulator
			
			BatWingsClosed2:          ; BatWingsClosed2 marker
			
			ld (hl), a                ; set updated bat wing status flag
			ld bc, (SpritePointerXT)  ; load current sprite XT pointer in bc
			ld a, e                   ; return bat's x coordinate to a
			ld (bc), a	              ; send bat's x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift bat's x coordinate to e
			ld a, 164                 ; load bat face tile index into a
			ld (bc), a	              ; send bat face tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return bat's x coordinate to a
			add a, 8                  ; add eight to accumulator to calc bat's right wing position
			ld (bc), a                ; send bat's right wing updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift bat's x coordinate to e
			ld a, 167                 ; load bat right wing tile index into accumulator
			ld (bc), a                ; send bat right wing tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return bat's x coordinate to a
			sub 16                    ; subtract sixteen from accumulator to calc bat's left wing position
			ld (bc), a                ; send bat's left wing updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, 168                 ; load bat left wing tile index into accumulator
			ld (bc), a                ; send bat left wing tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld (SpritePointerXT), bc  ; store updated sprite XT pointer in RAM

		EndBatXTUpdate:               ; EndBatXTUpdate marker

		ld a, (BatMoveDelay)          ; load BatMoveDelay into a
		cp BatDelay                   ; compare BatMoveDelay with BatDelay constant
		jp nz, EndBatMoveDelayInc     ; if BatMoveDelay is not the same as BatDelay jump to EndBatMoveDelayInc

		ld a, 0                       ; load 0 into a
		ld (BatMoveDelay), a          ; reset BatMoveDelay if delay is expired

		EndBatMoveDelayInc:           ; EndBatMoveDelayInc marker

		inc a                         ; increment BatMoveDelay
		ld (BatMoveDelay), a          ; store updated BatMoveDelay in RAM

		inc hl                        ; increment bat pointer to point to the next bat object

		jp EndBatUpdateLoop           ; after sprite updates are completed, jump to the end of the loop

		AdvanceBatPointer1:           ; AdvanceBatPointer1 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatPointer2:           ; AdvanceBatPointer2 marker

		inc hl                        ; increment Bat pointer one time

		AdvanceBatPointer3:           ; AdvanceBatPointer3 marker

		ld de, 10                     ; load 10 into de
		add hl, de                    ; add 10 to Bat pointer to point to next bat object

		EndBatUpdateLoop:             ; EndBatUpdateLoop marker

		pop bc                        ; pop loop counter back from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, BatUpdateLoop          ; if counter has not run out then jump to BatUpdateLoop

	ret

; A function to update spider enemy sprites
; -----------------------------------------
; Parameters: nil
UpdateSpiderEnemySprites:
	ld bc, NoOfSpiders                ; load the number of spiders in the world into bc to be used as a loop counter
	ld hl, Spiders                    ; load the start address of the spider objects in RAM into hl as a pointer

	SpiderUpdateLoop:                 ; SpiderUpdateLoop marker
		push bc                       ; push loop counter to stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceSpiderPointer1  ; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next spider object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpiderPointer2  ; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next spider object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceSpiderPointer3  ; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next spider object

		; if the Spider is alive and on the same screen as the player, then update the spider's sprites
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		; 1) update spider's y coordinate and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		ld a, (hl)                    ; load spider's vertical direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveSpiderUp            ; if spider is moving up jump to MoveSpiderUp
		cp 1                          ; compare spider's direction to 1
		jp z, MoveSpiderDown          ; if spider is moving down jump to MoveSpiderDown

		MoveSpiderUp:                 ; MoveSpiderUp marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (SpiderMoveDelay)   ; load spider move delay into a
			cp SpiderDelay            ; compare spider move delay with SpiderDelay constant
			jp nz, EndSpiderMoveUp       ; if it is not time for the spider to move then jump to EndSpiderMoveUp

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndSpiderMoveUp:          ; EndSpiderMoveUp marker

			ld a, e                   ; return spider's y coordinate to a

			jp EndSpiderVerticalMvmt  ; jump to EndSpiderVerticalMvmt to avoid move down code

		MoveSpiderDown:               ; MoveSpiderDown marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (SpiderMoveDelay)   ; load spider move delay into a
			cp SpiderDelay            ; compare spider move delay with SpiderDelay constant
			jp nz, EndSpiderMoveDown  ; if it is not time for the spider to move then jump to EndSpiderMoveDown

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndSpiderMoveDown:        ; EndSpiderMoveDown marker

			ld a, e                   ; return spider's y coordinate to a

		EndSpiderVerticalMvmt:        ; EndSpiderVerticalMvmt marker

		inc hl                        ; increment Spider pointer to point at the spider's max y coordinate
		ld c, (hl)                    ; load spider's max y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's max y coordinate
		jp z, TurnSpiderUp            ; if spider is at the bottom of its box turn upwards
		inc hl                        ; increment Spider pointer to point at the spider's min y coordinate
		ld c, (hl)                    ; load spider's min y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's min y coordinate
		jp z, TurnSpiderDown          ; if spider is at the top of its box turn downwards

		jp EndSpiderVertDirChange     ; jump to EndSpiderVertDirChange to avoid direction change code if not required

		TurnSpiderUp:                 ; TurnSpiderUp marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the vertical direction
			ld c, 0                   ; load up direction into c
			ld (hl), c                ; set spider direction upwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

			jp EndSpiderVertDirChange ; jump to EndSpiderVertDirChange to avoid turn down code

		TurnSpiderDown:               ; TurnSpiderDown marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the vertical direction
			ld c, 1                   ; load down direction into c
			ld (hl), c                ; set spider direction downwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

		EndSpiderVertDirChange:       ; EndSpiderVertDirChange

		ld bc, (SpritePointerY)       ; load current sprite Y pointer in bc
		ld (bc), a 	                  ; send spider's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's right leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's left leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (SpritePointerY), bc       ; store updated sprite Y pointer in RAM

		; 2) update spider's x coordinate and tile index and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's horizontal direction
		ld a, (hl)                    ; load spider's horizontal direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveSpiderLeft          ; if spider is moving left jump to MoveSpiderLeft
		cp 1                          ; compare spider's direction to 1
		jp z, MoveSpiderRight         ; if spider is moving right jump to MoveSpiderRight

		MoveSpiderLeft:               ; MoveSpiderLeft marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (SpiderMoveDelay)   ; load spider move delay into a
			cp SpiderDelay            ; compare spider move delay with SpiderDelay constant
			jp nz, EndSpiderMoveLeft  ; if it is not time for the spider to move then jump to EndSpiderMoveLeft

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndSpiderMoveLeft:        ; EndSpiderMoveLeft marker

			ld a, e                   ; return spider's x coordinate to a

			jp EndSpiderHorizontalMvmt; jump to EndSpiderHorizontalMvmt to avoid move right code

		MoveSpiderRight:              ; MoveSpiderRight marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (SpiderMoveDelay)   ; load spider move delay into a
			cp SpiderDelay            ; compare spider move delay with SpiderDelay constant
			jp nz, EndSpiderMoveRight ; if it is not time for the spider to move then jump to EndSpiderMoveRight

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndSpiderMoveRight:       ; EndSpiderMoveRight

			ld a, e                   ; return spider's x coordinate to a

		EndSpiderHorizontalMvmt:      ; EndSpiderHorizontalMvmt marker

		inc hl                        ; increment spider pointer to point at the spider's max x coordinate
		ld c, (hl)                    ; load spider's max x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's max x coordinate
		jp z, TurnSpiderLeft          ; if spider is at the right side of its box turn left
		inc hl                        ; increment spider pointer to point at the spider's min x coordinate
		ld c, (hl)                    ; load spider's min x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's min x coordinate
		jp z, TurnSpiderRight         ; if spider is at the left side of its box turn right

		jp EndSpiderHorizDirChange    ; jump to EndSpiderHorizDirChange to avoid direction change code if not required

		TurnSpiderLeft:               ; TurnSpiderLeft marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the horizontal direction
			ld c, 0                   ; load left direction into c
			ld (hl), c                ; set spider direction leftwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

			jp EndSpiderHorizDirChange; jump to EndSpiderHorizDirChange to avoid turn right code

		TurnSpiderRight:              ; TurnSpiderRight marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the horizontal direction
			ld c, 1                   ; load right direction into c
			ld (hl), c                ; set spider direction rightwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

		EndSpiderHorizDirChange:      ; EndSpiderHorizDirChange

		; check to see if the bat's legs are opened or closed
		inc hl                        ; increment bat pointer to look at bat's wing flap status
		ld e, a                       ; shift bat's x coordinate to e
		ld a, (hl)                    ; load bat's wing flap status into a
		sub SpiderLegMoveItrs         ; compare bat's wing status with the associated constant
		jp p, SpiderLegsClosed        ; if bat's wings are to be drawn closed, then jump to BatWingsClosed marker

		; code to draw bat wings open
		ld a, (hl)                    ; load bat wing flap status into a
		inc a                         ; increment a
		ld (hl), a                    ; set updated bat wing status flag
		ld bc, (SpritePointerXT)      ; load current sprite XT pointer in bc
		ld a, e                       ; return spider's x coordinate to a
		ld (bc), a	                  ; send spider's x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 169                     ; load spider face tile index into a
		ld (bc), a	                  ; send spider face tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		add a, 8                      ; add eight to accumulator to calc spider's right leg position
		ld (bc), a                    ; send spider's right leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 170                     ; load spider right leg tile index into accumulator
		ld (bc), a                    ; send spider right leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		sub 16                        ; subtract sixteen from accumulator to calc spider's left leg position
		ld (bc), a                    ; send spider's left leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, 171                     ; load spider left leg tile index into accumulator
		ld (bc), a                    ; send spider left leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld (SpritePointerXT), bc      ; store updated sprite XT pointer in RAM
		jp EndSpiderXTUpdate          ; jump to EndSpiderXTUpdate to avoid the code which draws the spider with legs closed

		; code to draw spider legs closed
		SpiderLegsClosed:             ; SpiderLegsClosed marker
			ld a, (hl)                ; load bat wing flap status into a
			inc a                     ; increment a
			
			cp 2 * SpiderLegMoveItrs  ; compare the wing flap status with twice the flap constant
			jp nz, SpiderLegsClosed2  ; if it is time to reset the flap status then reset
			
			ld a, 0                   ; load 0 into accumulator
			
			SpiderLegsClosed2:        ; BatWingsClosed2 marker
			
			ld (hl), a                ; set spider leg status to open
			ld bc, (SpritePointerXT)  ; load current sprite XT pointer in bc
			ld a, e                   ; return spider's x coordinate to a
			ld (bc), a	              ; send spider's x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 169                 ; load spider face tile index into a
			ld (bc), a	              ; send spider face tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			add a, 8                  ; add eight to accumulator to calc spider's right leg position
			ld (bc), a                ; send spider's right leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 172                 ; load spider right leg tile index into accumulator
			ld (bc), a                ; send spider right leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			sub 16                    ; subtract sixteen from accumulator to calc spider's left leg position
			ld (bc), a                ; send spider's left leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, 173                 ; load spider left leg tile index into accumulator
			ld (bc), a                ; send spider left leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld (SpritePointerXT), bc  ; store updated sprite XT pointer in RAM

		EndSpiderXTUpdate:            ; EndSpiderXTUpdate marker

		ld a, (SpiderMoveDelay)       ; load SpiderMoveDelay into a
		cp SpiderDelay                ; compare SpiderMoveDelay with SpiderDelay constant
		jp nz, EndSpiderMoveDelayInc  ; if SpiderMoveDelay is not the same as SpiderDelay jump to EndSpiderMoveDelayInc

		ld a, 0                       ; load 0 into a
		ld (SpiderMoveDelay), a       ; reset SpiderMoveDelay if delay is expired

		EndSpiderMoveDelayInc:        ; EndSpiderMoveDelayInc marker

		inc a                         ; increment SpiderMoveDelay
		ld (SpiderMoveDelay), a       ; store updated SpiderMoveDelay in RAM

		inc hl                        ; increment spider pointer to point to the next spider object

		jp EndSpiderUpdateLoop        ; after sprite updates are completed, jump to the end of the loop

		AdvanceSpiderPointer1:        ; AdvanceSpiderPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceSpiderPointer2:        ; AdvanceSpiderPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceSpiderPointer3:        ; AdvanceSpiderPointer3 marker

		ld de, 10                     ; load 10 into de
		add hl, de                    ; add 10 to spider pointer to point to next spider object

		EndSpiderUpdateLoop:          ; EndSpiderUpdateLoop marker

		pop bc                        ; pop loop counter back from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, SpiderUpdateLoop       ; if counter has not run out then jump to SpiderUpdateLoop

	ret

; A function to update mushroom enemy sprites
; -------------------------------------------
; Parameters: nil
; N.B. This function is based upon the other sprite update functions.
; there are references in the comments to spiders; these spiders should be
; read as mushrooms. I'm too lazy to change the nomenclature in the comments.
UpdateMushEnemySprites:
	ld bc, NoOfMush                   ; load the number of spiders in the world into bc to be used as a loop counter
	ld hl, Mush                       ; load the start address of the spider objects in RAM into hl as a pointer

	MushUpdateLoop:                   ; SpiderUpdateLoop marker
		push bc                       ; push loop counter to stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceMushPointer1    ; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next spider object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMushPointer2    ; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next spider object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceMushPointer3    ; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next spider object

		; if the Spider is alive and on the same screen as the player, then update the spider's sprites
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		; 1) update spider's y coordinate and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		ld a, (hl)                    ; load spider's vertical direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveMushUp              ; if spider is moving up jump to MoveSpiderUp
		cp 1                          ; compare spider's direction to 1
		jp z, MoveMushDown            ; if spider is moving down jump to MoveSpiderDown

		MoveMushUp:                   ; MoveSpiderUp marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (MushMoveDelay)     ; load spider move delay into a
			cp MushDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndMushMoveUp      ; if it is not time for the spider to move then jump to EndSpiderMoveUp

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndMushMoveUp:            ; EndSpiderMoveUp marker

			ld a, e                   ; return spider's y coordinate to a

			jp EndMushVerticalMvmt    ; jump to EndSpiderVerticalMvmt to avoid move down code

		MoveMushDown:                 ; MoveSpiderDown marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (MushMoveDelay)     ; load spider move delay into a
			cp MushDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndMushMoveDown    ; if it is not time for the spider to move then jump to EndSpiderMoveDown

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndMushMoveDown:          ; EndSpiderMoveDown marker

			ld a, e                   ; return spider's y coordinate to a

		EndMushVerticalMvmt:          ; EndSpiderVerticalMvmt marker

		inc hl                        ; increment Spider pointer to point at the spider's max y coordinate
		ld c, (hl)                    ; load spider's max y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's max y coordinate
		jp z, TurnMushUp              ; if spider is at the bottom of its box turn upwards
		inc hl                        ; increment Spider pointer to point at the spider's min y coordinate
		ld c, (hl)                    ; load spider's min y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's min y coordinate
		jp z, TurnMushDown            ; if spider is at the top of its box turn downwards

		jp EndMushVertDirChange       ; jump to EndSpiderVertDirChange to avoid direction change code if not required

		TurnMushUp:                   ; TurnSpiderUp marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the vertical direction
			ld c, 0                   ; load up direction into c
			ld (hl), c                ; set spider direction upwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

			jp EndMushVertDirChange   ; jump to EndSpiderVertDirChange to avoid turn down code

		TurnMushDown:                 ; TurnSpiderDown marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the vertical direction
			ld c, 1                   ; load down direction into c
			ld (hl), c                ; set spider direction downwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

		EndMushVertDirChange:         ; EndSpiderVertDirChange

		ld bc, (SpritePointerY)       ; load current sprite Y pointer in bc
		ld (bc), a 	                  ; send spider's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's right leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		add a, 8
		ld (bc), a 	                  ; send spider's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's right leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (SpritePointerY), bc       ; store updated sprite Y pointer in RAM

		; 2) update spider's x coordinate and tile index and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's horizontal direction
		ld a, (hl)                    ; load spider's horizontal direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveMushLeft            ; if spider is moving left jump to MoveSpiderLeft
		cp 1                          ; compare spider's direction to 1
		jp z, MoveMushRight           ; if spider is moving right jump to MoveSpiderRight

		MoveMushLeft:                 ; MoveSpiderLeft marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (MushMoveDelay)     ; load spider move delay into a
			cp MushDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndMushMoveLeft    ; if it is not time for the spider to move then jump to EndSpiderMoveLeft

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndMushMoveLeft:          ; EndSpiderMoveLeft marker

			ld a, e                   ; return spider's x coordinate to a

			jp EndMushHorizontalMvmt  ; jump to EndSpiderHorizontalMvmt to avoid move right code

		MoveMushRight:                ; MoveSpiderRight marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (MushMoveDelay)     ; load spider move delay into a
			cp MushDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndMushMoveRight   ; if it is not time for the spider to move then jump to EndSpiderMoveRight

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndMushMoveRight:         ; EndSpiderMoveRight

			ld a, e                   ; return spider's x coordinate to a

		EndMushHorizontalMvmt:        ; EndSpiderHorizontalMvmt marker

		inc hl                        ; increment spider pointer to point at the spider's max x coordinate
		ld c, (hl)                    ; load spider's max x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's max x coordinate
		jp z, TurnMushLeft            ; if spider is at the right side of its box turn left
		inc hl                        ; increment spider pointer to point at the spider's min x coordinate
		ld c, (hl)                    ; load spider's min x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's min x coordinate
		jp z, TurnMushRight           ; if spider is at the left side of its box turn right

		jp EndMushHorizDirChange      ; jump to EndSpiderHorizDirChange to avoid direction change code if not required

		TurnMushLeft:                 ; TurnSpiderLeft marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the horizontal direction
			ld c, 0                   ; load left direction into c
			ld (hl), c                ; set spider direction leftwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

			jp EndMushHorizDirChange  ; jump to EndSpiderHorizDirChange to avoid turn right code

		TurnMushRight:                ; TurnSpiderRight marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the horizontal direction
			ld c, 1                   ; load right direction into c
			ld (hl), c                ; set spider direction rightwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

		EndMushHorizDirChange:        ; EndSpiderHorizDirChange

		; check to see if the bat's legs are opened or closed
		inc hl                        ; increment bat pointer to look at bat's wing flap status
		ld e, a                       ; shift bat's x coordinate to e
		ld a, (hl)                    ; load bat's wing flap status into a
		sub MushLegMoveItrs           ; compare bat's wing status with the associated constant
		jp p, MushLegsClosed          ; if bat's wings are to be drawn closed, then jump to BatWingsClosed marker

		; code to draw bat wings open
		ld a, (hl)                    ; load bat wing flap status into a
		inc a                         ; increment a
		ld (hl), a                    ; set updated bat wing status flag
		ld bc, (SpritePointerXT)      ; load current sprite XT pointer in bc
		ld a, e                       ; return spider's x coordinate to a
		ld (bc), a	                  ; send spider's x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 176                     ; load spider face tile index into a
		ld (bc), a	                  ; send spider face tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		add a, 8                      ; add eight to accumulator to calc spider's right leg position
		ld (bc), a                    ; send spider's right leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 177                     ; load spider right leg tile index into accumulator
		ld (bc), a                    ; send spider right leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		sub 8                         ; subtract sixteen from accumulator to calc spider's left leg position
		ld (bc), a                    ; send spider's left leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 178                     ; load spider left leg tile index into accumulator
		ld (bc), a                    ; send spider left leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		add a, 8                      ; subtract sixteen from accumulator to calc spider's left leg position
		ld (bc), a                    ; send spider's left leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, 179                     ; load spider left leg tile index into accumulator
		ld (bc), a                    ; send spider left leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld (SpritePointerXT), bc      ; store updated sprite XT pointer in RAM
		jp EndMushXTUpdate          ; jump to EndSpiderXTUpdate to avoid the code which draws the spider with legs closed

		; code to draw spider legs closed
		MushLegsClosed:               ; SpiderLegsClosed marker
			ld a, (hl)                ; load bat wing flap status into a
			inc a                     ; increment a
			
			cp 2 * MushLegMoveItrs    ; compare the wing flap status with twice the flap constant
			jp nz, MushLegsClosed2    ; if it is time to reset the flap status then reset
			
			ld a, 0                   ; load 0 into accumulator
			
			MushLegsClosed2:          ; BatWingsClosed2 marker
			
			ld (hl), a                ; set spider leg status to open
			ld bc, (SpritePointerXT)  ; load current sprite XT pointer in bc
			ld a, e                   ; return spider's x coordinate to a
			ld (bc), a	              ; send spider's x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 176                 ; load spider face tile index into a
			ld (bc), a	              ; send spider face tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			add a, 8                  ; add eight to accumulator to calc spider's right leg position
			ld (bc), a                ; send spider's right leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 177                 ; load spider right leg tile index into accumulator
			ld (bc), a                ; send spider right leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			sub 8                     ; subtract sixteen from accumulator to calc spider's left leg position
			ld (bc), a                ; send spider's left leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 180                 ; load spider left leg tile index into accumulator
			ld (bc), a                ; send spider left leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			add a, 8                  ; subtract sixteen from accumulator to calc spider's left leg position
			ld (bc), a                ; send spider's left leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, 181                 ; load spider left leg tile index into accumulator
			ld (bc), a                ; send spider left leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld (SpritePointerXT), bc  ; store updated sprite XT pointer in RAM

		EndMushXTUpdate:              ; EndSpiderXTUpdate marker

		ld a, (MushMoveDelay)         ; load SpiderMoveDelay into a
		cp MushDelay                  ; compare SpiderMoveDelay with SpiderDelay constant
		jp nz, EndMushMoveDelayInc    ; if SpiderMoveDelay is not the same as SpiderDelay jump to EndSpiderMoveDelayInc

		ld a, 0                       ; load 0 into a
		ld (MushMoveDelay), a         ; reset SpiderMoveDelay if delay is expired

		EndMushMoveDelayInc:          ; EndSpiderMoveDelayInc marker

		inc a                         ; increment SpiderMoveDelay
		ld (MushMoveDelay), a         ; store updated SpiderMoveDelay in RAM

		inc hl                        ; increment spider pointer to point to the next spider object

		jp EndMushUpdateLoop          ; after sprite updates are completed, jump to the end of the loop

		AdvanceMushPointer1:          ; AdvanceSpiderPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceMushPointer2:          ; AdvanceSpiderPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceMushPointer3:          ; AdvanceSpiderPointer3 marker

		ld de, 10                     ; load 10 into de
		add hl, de                    ; add 10 to spider pointer to point to next spider object

		EndMushUpdateLoop:            ; EndSpiderUpdateLoop marker

		pop bc                        ; pop loop counter back from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, MushUpdateLoop         ; if counter has not run out then jump to SpiderUpdateLoop

	ret

; A function to update tree enemy sprites
; ---------------------------------------
; Parameters: nil
; N.B. This function is based upon the other sprite update functions.
; there are references in the comments to spiders; these spiders should be
; read as mushrooms. I'm too lazy to change the nomenclature in the comments.
UpdateTreeEnemySprites:
	ld bc, NoOfTrees                  ; load the number of spiders in the world into bc to be used as a loop counter
	ld hl, Trees                      ; load the start address of the spider objects in RAM into hl as a pointer

	TreeUpdateLoop:                   ; SpiderUpdateLoop marker
		push bc                       ; push loop counter to stack for use later

		; check to see if the spider is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceTreePointer1    ; if the spider is not alive then jump to end of loop
		                              ; and advance pointer to next spider object

		; check to see if the spider is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world row index
		ld a, (hl)                    ; load the spider's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTreePointer2    ; if the spider and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next spider object

		; check to see if the spider is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment spider pointer to point at the spider's world column index
		ld a, (hl)                    ; load the spider's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceTreePointer3    ; if the spider and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next spider object

		; if the Spider is alive and on the same screen as the player, then update the spider's sprites
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		; 1) update spider's y coordinate and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's vertical direction
		ld a, (hl)                    ; load spider's vertical direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveTreeUp              ; if spider is moving up jump to MoveSpiderUp
		cp 1                          ; compare spider's direction to 1
		jp z, MoveTreeDown            ; if spider is moving down jump to MoveSpiderDown

		MoveTreeUp:                   ; MoveSpiderUp marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (TreeMoveDelay)     ; load spider move delay into a
			cp TreeDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndTreeMoveUp      ; if it is not time for the spider to move then jump to EndSpiderMoveUp

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndTreeMoveUp:            ; EndSpiderMoveUp marker

			ld a, e                   ; return spider's y coordinate to a

			jp EndTreeVerticalMvmt    ; jump to EndSpiderVerticalMvmt to avoid move down code

		MoveTreeDown:                 ; MoveSpiderDown marker
			inc hl                    ; increment spider pointer to point at the spider's y coordinate
			ld a, (hl)                ; load spider's y coordinate into a

			ld e, a                   ; shift spider's y coordinate into e
			ld a, (TreeMoveDelay)     ; load spider move delay into a
			cp TreeDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndTreeMoveDown    ; if it is not time for the spider to move then jump to EndSpiderMoveDown

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's y coordinate
			ld (hl), a                ; store updated y coordinate in spider object

			EndTreeMoveDown:          ; EndSpiderMoveDown marker

			ld a, e                   ; return spider's y coordinate to a

		EndTreeVerticalMvmt:          ; EndSpiderVerticalMvmt marker

		inc hl                        ; increment Spider pointer to point at the spider's max y coordinate
		ld c, (hl)                    ; load spider's max y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's max y coordinate
		jp z, TurnTreeUp              ; if spider is at the bottom of its box turn upwards
		inc hl                        ; increment Spider pointer to point at the spider's min y coordinate
		ld c, (hl)                    ; load spider's min y coordinate into c
		cp c                          ; compare spider's y coordinate with the spider's min y coordinate
		jp z, TurnTreeDown            ; if spider is at the top of its box turn downwards

		jp EndTreeVertDirChange       ; jump to EndSpiderVertDirChange to avoid direction change code if not required

		TurnTreeUp:                   ; TurnSpiderUp marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the vertical direction
			ld c, 0                   ; load up direction into c
			ld (hl), c                ; set spider direction upwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

			jp EndTreeVertDirChange   ; jump to EndSpiderVertDirChange to avoid turn down code

		TurnTreeDown:                 ; TurnSpiderDown marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the vertical direction
			ld c, 1                   ; load down direction into c
			ld (hl), c                ; set spider direction downwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum y coordinate

		EndTreeVertDirChange:         ; EndSpiderVertDirChange

		ld bc, (SpritePointerY)       ; load current sprite Y pointer in bc
		ld (bc), a 	                  ; send spider's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's right leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		add a, 8
		ld (bc), a 	                  ; send spider's updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (bc), a                    ; send spider's right leg updated y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (SpritePointerY), bc       ; store updated sprite Y pointer in RAM

		; 2) update spider's x coordinate and tile index and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment spider pointer to point at the spider's horizontal direction
		ld a, (hl)                    ; load spider's horizontal direction into a
		cp 0                          ; compare spider's direction to 0
		jp z, MoveTreeLeft            ; if spider is moving left jump to MoveSpiderLeft
		cp 1                          ; compare spider's direction to 1
		jp z, MoveTreeRight           ; if spider is moving right jump to MoveSpiderRight

		MoveTreeLeft:                 ; MoveSpiderLeft marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (TreeMoveDelay)     ; load spider move delay into a
			cp TreeDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndTreeMoveLeft    ; if it is not time for the spider to move then jump to EndSpiderMoveLeft

			ld a, e                   ; return spider's y coordinate to a
			dec a                     ; decrement spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndTreeMoveLeft:          ; EndSpiderMoveLeft marker

			ld a, e                   ; return spider's x coordinate to a

			jp EndTreeHorizontalMvmt  ; jump to EndSpiderHorizontalMvmt to avoid move right code

		MoveTreeRight:                ; MoveSpiderRight marker
			inc hl                    ; increment spider pointer to point at the spider's x coordinate
			ld a, (hl)                ; load spider's x coordinate into a

			ld e, a                   ; shift spider's x coordinate into e
			ld a, (TreeMoveDelay)     ; load spider move delay into a
			cp TreeDelay              ; compare spider move delay with SpiderDelay constant
			jp nz, EndTreeMoveRight   ; if it is not time for the spider to move then jump to EndSpiderMoveRight

			ld a, e                   ; return spider's y coordinate to a
			inc a                     ; increment spider's x coordinate
			ld (hl), a                ; store updated x coordinate in spider object

			EndTreeMoveRight:         ; EndSpiderMoveRight

			ld a, e                   ; return spider's x coordinate to a

		EndTreeHorizontalMvmt:        ; EndSpiderHorizontalMvmt marker

		inc hl                        ; increment spider pointer to point at the spider's max x coordinate
		ld c, (hl)                    ; load spider's max x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's max x coordinate
		jp z, TurnTreeLeft            ; if spider is at the right side of its box turn left
		inc hl                        ; increment spider pointer to point at the spider's min x coordinate
		ld c, (hl)                    ; load spider's min x coordinate into c
		cp c                          ; compare spider's x coordinate with the spider's min x coordinate
		jp z, TurnTreeRight           ; if spider is at the left side of its box turn right

		jp EndTreeHorizDirChange      ; jump to EndSpiderHorizDirChange to avoid direction change code if not required

		TurnTreeLeft:                 ; TurnSpiderLeft marker
			ld de, 2                  ; load 2 into de
			sbc hl, de                ; decrement spider pointer by two to point at the horizontal direction
			ld c, 0                   ; load left direction into c
			ld (hl), c                ; set spider direction leftwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

			jp EndTreeHorizDirChange  ; jump to EndSpiderHorizDirChange to avoid turn right code

		TurnTreeRight:                ; TurnSpiderRight marker
			ld de, 3                  ; load 3 into de
			sbc hl, de                ; decrement spider pointer by three to point at the horizontal direction
			ld c, 1                   ; load right direction into c
			ld (hl), c                ; set spider direction rightwards
			ld de, 3                  ; load 3 into de
			add hl, de                ; increment spider pointer by three to point at the minimum x coordinate

		EndTreeHorizDirChange:        ; EndSpiderHorizDirChange

		; check to see if the bat's legs are opened or closed
		inc hl                        ; increment bat pointer to look at bat's wing flap status
		ld e, a                       ; shift bat's x coordinate to e
		ld a, (hl)                    ; load bat's wing flap status into a
		sub TreeLegMoveItrs           ; compare bat's wing status with the associated constant
		jp p, TreeLegsClosed          ; if bat's wings are to be drawn closed, then jump to BatWingsClosed marker

		; code to draw bat wings open
		ld a, (hl)                    ; load bat wing flap status into a
		inc a                         ; increment a
		ld (hl), a                    ; set spider leg status to closed
		ld bc, (SpritePointerXT)      ; load current sprite XT pointer in bc
		ld a, e                       ; return spider's x coordinate to a
		ld (bc), a	                  ; send spider's x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 182                     ; load spider face tile index into a
		ld (bc), a	                  ; send spider face tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		add a, 8                      ; add eight to accumulator to calc spider's right leg position
		ld (bc), a                    ; send spider's right leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 183                     ; load spider right leg tile index into accumulator
		ld (bc), a                    ; send spider right leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		sub 8                         ; subtract sixteen from accumulator to calc spider's left leg position
		ld (bc), a                    ; send spider's left leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld e, a                       ; shift spider's x coordinate to e
		ld a, 184                     ; load spider left leg tile index into accumulator
		ld (bc), a                    ; send spider left leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, e                       ; return spider's x coordinate to a
		add a, 8                      ; subtract sixteen from accumulator to calc spider's left leg position
		ld (bc), a                    ; send spider's left leg updated x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, 185                     ; load spider left leg tile index into accumulator
		ld (bc), a                    ; send spider left leg tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld (SpritePointerXT), bc      ; store updated sprite XT pointer in RAM
		jp EndTreeXTUpdate            ; jump to EndSpiderXTUpdate to avoid the code which draws the spider with legs closed

		; code to draw spider legs closed
		TreeLegsClosed:               ; SpiderLegsClosed marker
			ld a, (hl)                ; load bat wing flap status into a
			inc a                     ; increment a
			
			cp 2 * TreeLegMoveItrs    ; compare the wing flap status with twice the flap constant
			jp nz, TreeLegsClosed2    ; if it is time to reset the flap status then reset
			
			ld a, 0                   ; load 0 into accumulator
			
			TreeLegsClosed2:          ; BatWingsClosed2 marker
			
			ld (hl), a                ; set spider leg status to open
			ld bc, (SpritePointerXT)  ; load current sprite XT pointer in bc
			ld a, e                   ; return spider's x coordinate to a
			ld (bc), a	              ; send spider's x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 182                 ; load spider face tile index into a
			ld (bc), a	              ; send spider face tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			add a, 8                  ; add eight to accumulator to calc spider's right leg position
			ld (bc), a                ; send spider's right leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 183                 ; load spider right leg tile index into accumulator
			ld (bc), a                ; send spider right leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			sub 8                     ; subtract sixteen from accumulator to calc spider's left leg position
			ld (bc), a                ; send spider's left leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld e, a                   ; shift spider's x coordinate to e
			ld a, 186                 ; load spider left leg tile index into accumulator
			ld (bc), a                ; send spider left leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, e                   ; return spider's x coordinate to a
			add a, 8                  ; subtract sixteen from accumulator to calc spider's left leg position
			ld (bc), a                ; send spider's left leg updated x coordinate to sprite table
			inc bc                    ; increment sprite XT pointer
			ld a, 187                 ; load spider left leg tile index into accumulator
			ld (bc), a                ; send spider left leg tile index to sprite table
			inc bc                    ; increment sprite XT pointer
			ld (SpritePointerXT), bc  ; store updated sprite XT pointer in RAM

		EndTreeXTUpdate:              ; EndSpiderXTUpdate marker

		ld a, (TreeMoveDelay)         ; load SpiderMoveDelay into a
		cp TreeDelay                  ; compare SpiderMoveDelay with SpiderDelay constant
		jp nz, EndTreeMoveDelayInc    ; if SpiderMoveDelay is not the same as SpiderDelay jump to EndSpiderMoveDelayInc

		ld a, 0                       ; load 0 into a
		ld (TreeMoveDelay), a         ; reset SpiderMoveDelay if delay is expired

		EndTreeMoveDelayInc:          ; EndSpiderMoveDelayInc marker

		inc a                         ; increment SpiderMoveDelay
		ld (TreeMoveDelay), a         ; store updated SpiderMoveDelay in RAM

		inc hl                        ; increment spider pointer to point to the next spider object

		jp EndTreeUpdateLoop          ; after sprite updates are completed, jump to the end of the loop

		AdvanceTreePointer1:          ; AdvanceSpiderPointer1 marker

		inc hl                        ; increment spider pointer one time

		AdvanceTreePointer2:          ; AdvanceSpiderPointer2 marker

		inc hl                        ; increment spider pointer one time

		AdvanceTreePointer3:          ; AdvanceSpiderPointer3 marker

		ld de, 10                     ; load 10 into de
		add hl, de                    ; add 10 to spider pointer to point to next spider object

		EndTreeUpdateLoop:            ; EndSpiderUpdateLoop marker

		pop bc                        ; pop loop counter back from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, TreeUpdateLoop         ; if counter has not run out then jump to SpiderUpdateLoop

	ret

; A function to update heart power-up sprites
; -------------------------------------------
; Parameters: nil
UpdateHeartPowerUpSprites:
	ld bc, NoOfHearts                 ; load the number of hearts in the world into bc to be used as a loop counter
	ld hl, Hearts                     ; load the start address of the heart objects in RAM into hl as a pointer

	HeartUpdateLoop:                  ; HeartUpdateLoop marker
		push bc                       ; push loop counter to stack for use later

		; check to see if the heart is alive
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		ld a, (hl)                    ; load alive status flag into a
		cp 1                          ; compare alive status flag to one
		jp nz, AdvanceHeartPointer1   ; if the heart is not alive then jump to end of loop
		                              ; and advance pointer to next heart object

		; check to see if the heart is in the current world row
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's world row index
		ld a, (hl)                    ; load the heart's world row index into a
		ld bc, (ScreenRowIndex)       ; load the player's world row index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceHeartPointer2   ; if the heart and the player are not occupying the same row index,
		                              ; jump to end of loop and advance pointer to next heart object

		; check to see if the heart is in the current world column
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		inc hl                        ; increment heart pointer to point at the heart's world column index
		ld a, (hl)                    ; load the heart's world column index into a
		ld bc, (ScreenColIndex)       ; load the player's world column index into bc
		cp c                          ; compare a and c
		jp nz, AdvanceHeartPointer3   ; if the heart and the player are not occupying the same column index,
		                              ; jump to end of loop and advance pointer to next heart object

		; if the heart is alive and on the same screen as the player, then update the heart's sprites
		; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		; 1) read heart's y coordinate and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment heart pointer to point at the heart's y coordinate
		ld a, (hl)                    ; load heart's y coordinate
		ld bc, (SpritePointerY)       ; load current sprite Y pointer in bc
		ld (bc), a 	                  ; send heart's y coordinate to sprite table
		inc bc                        ; increment sprite Y pointer
		ld (SpritePointerY), bc       ; store updated sprite Y pointer in RAM

		; 2) read heart's x coordinate and tile index and write to sprite table
		; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		inc hl                        ; increment heart pointer to point at the heart's x coordinate
		ld a, (hl)                    ; load heart's x coordinate
		ld bc, (SpritePointerXT)      ; load current sprite XT pointer in bc
		ld (bc), a	                  ; send heart's x coordinate to sprite table
		inc bc                        ; increment sprite XT pointer
		ld a, 174                     ; load heart tile index into a
		ld (bc), a	                  ; send heart tile index to sprite table
		inc bc                        ; increment sprite XT pointer
		ld (SpritePointerXT), bc      ; store updated sprite XT pointer in RAM

		inc hl                        ; increment heart pointer to point to the next heart object

		jp EndHeartUpdateLoop         ; after sprite updates are completed, jump to the end of the loop

		AdvanceHeartPointer1:         ; AdvanceHeartPointer1 marker

		inc hl                        ; increment heart pointer one time

		AdvanceHeartPointer2:         ; AdvanceHeartPointer2 marker

		inc hl                        ; increment heart pointer one time

		AdvanceHeartPointer3:         ; AdvanceHeartPointer3 marker

		ld de, 3                      ; load 3 into de
		add hl, de                    ; add 3 to heart pointer to point to next heart object

		EndHeartUpdateLoop:           ; EndHeartUpdateLoop marker

		pop bc                        ; pop loop counter back from the stack
		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, HeartUpdateLoop        ; if counter has not run out then jump to HeartUpdateLoop

	ret

; A function to update door sprites
; ---------------------------------
; Parameters: nil
UpdateDoorSprites:
	ld hl, Doors                        ; load the start address of the door object in RAM into hl as a pointer

	; check to see if the door is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (hl)                          ; load alive status flag into a
	cp 1                                ; compare alive status flag to one
	jp nz, EndFunctionUpdateDoorSprites ; if the door is not alive then jump to end of function

	; check to see if the door is in the current world row
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                              ; increment pointer to point at the world row index
	ld a, (hl)                          ; load the world row index into a
	ld bc, (ScreenRowIndex)             ; load the player's world row index into bc
	cp c                                ; compare a and c
	jp nz, EndFunctionUpdateDoorSprites ; if the door and the player are not occupying the same row index,
		                                ; jump to end of the function

	; check to see if the door is in the current world column
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	inc hl                              ; increment pointer to point at the world column index
	ld a, (hl)                          ; load the world column index into a
	ld bc, (ScreenColIndex)             ; load the player's world column index into bc
	cp c                                ; compare a and c
	jp nz, EndFunctionUpdateDoorSprites ; if the door and the player are not occupying the same column index,
		                                ; jump to end of the function

	; if the door is alive and on the same screen as the player, then update the door's sprites
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; 1) read door's y coordinate and write to sprite table
	; - - - - - - - - - - - - - - - - - - - - - - - - - - -
	inc hl                              ; increment pointer to point at the y coordinate
	ld a, (hl)                          ; load door's y coordinate
	ld bc, (SpritePointerY)             ; load current sprite Y pointer in bc
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	add a, 8                            ; add 8 to accumulator to draw next row of door sprites
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	add a, 8                            ; add 8 to accumulator to draw next row of door sprites
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	add a, 8                            ; add 8 to accumulator to draw next row of door sprites
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	ld (bc), a 	                        ; send door's y coordinate to sprite table
	inc bc                              ; increment sprite Y pointer
	ld (SpritePointerY), bc             ; store updated sprite Y pointer in RAM

	; 2) read door's x coordinate and tile index and write to sprite table
	; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	inc hl                              ; increment pointer to point at the x coordinate
	ld a, (hl)                          ; load door's x coordinate
	ld bc, (SpritePointerXT)            ; load current sprite XT pointer in bc

	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 188                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	add a, 8                            ; add 8 to x coord
	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 189                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	sub 8                               ; subtract 8 from x coord

	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 190                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	add a, 8                            ; add 8 to x coord
	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 191                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	sub 8                               ; subtract 8 from x coord

	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 192                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	add a, 8                            ; add 8 to x coord
	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 193                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	sub 8                               ; subtract 8 from x coord

	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 194                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer
	add a, 8                            ; add 8 to x coord
	ld (bc), a	                        ; send door's x coordinate to sprite table
	inc bc                              ; increment sprite XT pointer
	ld e, a                             ; shift a into e
	ld a, 195                           ; load door tile index into a
	ld (bc), a	                        ; send door tile index to sprite table
	ld a, e                             ; return e into a
	inc bc                              ; increment sprite XT pointer

	ld (SpritePointerXT), bc            ; store updated sprite XT pointer in RAM

	EndFunctionUpdateDoorSprites:       ; EndFunctionUpdateDoorSprites marker

	ret

; A function to draw the lives indicator
; --------------------------------------
; Parameters: nil
DrawLivesIndicator:
	ld bc, (CurrentLives)             ; load the number of lives the player has into bc as a loop counter
	ld hl, (SpritePointerY)           ; load SpritePointerY into hl

	UpdateLivesYLoop:                 ; UpdateLivesYLoop marker
		ld (hl), 182                  ; load y coord of lives indicator into sprite table
		inc hl                        ; increment SpritePointerY pointer

		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, UpdateLivesYLoop       ; if counter has not run out then jump to UpdateLivesYLoop

	ld (SpritePointerY), hl           ; store the updated SpritePointerY in RAM
	ld bc, (CurrentLives)             ; load the number of lives the player has into bc as a loop counter
	ld hl, (SpritePointerXT)          ; load SpritePointerXT into hl

	ld e, 9                           ; load starting x coord into e

	UpdateLivesXTLoop:                ; UpdateLivesXTLoop marker
		ld (hl), e                    ; load x coord of life indicator into sprite table
		ld a, e
		add a, 8                      ; add 8 to life indicator x coord
		ld e, a
		inc hl                        ; increment SpritePointerXT pointer
		ld (hl), 174                  ; load heart tile index into sprite table
		inc hl

		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, UpdateLivesXTLoop      ; if counter has not run out then jump to UpdateLivesXTLoop

	ld (SpritePointerXT), hl          ; store the updated SpritePointerXT in RAM

	ret

; A function to draw the player's fairy dust attack
; -------------------------------------------------
; Parameters: nil
DrawFairyDustAttack:
	ld hl, DustAtt                        ; load the start address of the dust attack object in RAM into hl as a pointer

	; check to see if the dust is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (hl)                            ; load alive status flag into a
	cp 1                                  ; compare alive status flag to one
	jp nz, EndFunctionDrawFairyDustAttack ; if the dust is not alive then jump to end of function

	; check to see what direction the player is pointing in
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (PlayerDirection)               ; load player direction into a
	cp 1                                  ; compare with up direction
	jp z, MoveAttUp                       ; jump to MoveAttUp
	ld a, (PlayerDirection)               ; load player direction into a
	cp 2                                  ; compare with down direction
	jp z, MoveAttDown                     ; jump to MoveAttDown
	ld a, (PlayerDirection)               ; load player direction into a
	cp 3                                  ; compare with left direction
	jp z, MoveAttLeft                     ; jump to MoveAttLeft
	ld a, (PlayerDirection)               ; load player direction into a
	cp 4                                  ; compare with right direction
	jp z, MoveAttRight                    ; jump to MoveAttRight
	ld a, (PlayerDirection)               ; load player direction into a
	cp 5                                  ; compare with up-right direction
	jp z, MoveAttUpRight                  ; jump to MoveAttUpRight
	ld a, (PlayerDirection)               ; load player direction into a
	cp 6                                  ; compare with down-right direction
	jp z, MoveAttDownRight                ; jump to MoveAttDownRight
	ld a, (PlayerDirection)               ; load player direction into a
	cp 7                                  ; compare with up-left direction
	jp z, MoveAttUpLeft                   ; jump to MoveAttUpLeft
	ld a, (PlayerDirection)               ; load player direction into a
	cp 8                                  ; compare with down-left direction
	jp z, MoveAttDownLeft                 ; jump to MoveAttDownLeft

	jp EndFunctionDrawFairyDustAttack     ; move to end of function to avoid all the movement code
	                                      ; if no player direction is detected

	MoveAttUp:                            ; MoveAttUp marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttUpEnd               ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttUpEnd:                     ; MoveAttUpEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttDown:                          ; MoveAttDown marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttDownEnd             ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttDownEnd:                   ; MoveAttDownEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttLeft:                          ; MoveAttLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttLeftEnd             ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttLeftEnd:                   ; MoveAttLeftEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttRight:                         ; MoveAttRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttRightEnd            ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttRightEnd:                  ; MoveAttRightEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttUpRight:                       ; MoveAttUpRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttUpRightEnd          ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttUpRightEnd:                ; MoveAttUpRightEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttDownRight:                     ; MoveAttDownRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttDownRightEnd        ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttDownRightEnd:              ; MoveAttUpRightEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttUpLeft:                        ; MoveAttUpLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttUpLeftEnd           ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttUpLeftEnd:                 ; MoveAttUpRightEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	MoveAttDownLeft:                      ; MoveAttDownLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 175                         ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveAttDownLeftEnd         ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveAttDownLeftEnd:               ; MoveAttUpRightEnd marker

		jp EndFunctionDrawFairyDustAttack ; jump to the end of the function

	EndFunctionDrawFairyDustAttack:       ; EndFunctionDrawFairyDustAttack marker

	ret

; A function to draw the life lost and gained graphic effects
; -----------------------------------------------------------
; Parameters: nil
DrawLifeLostGainedGraphicEffect:
	ld hl, Hurt                                 ; load the start address of the effect object in RAM into hl as a pointer

	; check to see if the effect is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (hl)                                  ; load alive status flag into a
	cp 1                                        ; compare alive status flag to one
	jp nz, EndFunctionDrawLifeLostGraphicEffect ; if the effect is not alive then jump to end of function

	; load and update y coordinate
	inc hl                                      ; increment hl to point to y coordinate of effect sprite
	ld a, (hl)                                  ; load y coordinate into a
	inc a                                       ; increment y coordinate
	ld (hl), a                                  ; store updated effect sprite y coordinate in RAM

	; send y coordinate to sprite table
	ld bc, (SpritePointerY)                     ; load SpritePointerY into bc as a pointer
	ld (bc), a                                  ; send effect sprite y coordinate to sprite table
	inc bc                                      ; increment SpritePointerY
	ld (SpritePointerY), bc                     ; store updated SpritePointerY in RAM

	; load and update x coordinate
	inc hl                                      ; increment hl to point to x coordinate of effect sprite
	ld a, (hl)                                  ; load x coordinate into a

	; send x coordinate and tile index to sprite table
	ld bc, (SpritePointerXT)                    ; load SpritePointerXT into bc as a pointer
	ld (bc), a                                  ; send effect sprite x coordinate to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld a, 174                                   ; load heart tile index into accumulator
	ld (bc), a                                  ; send heart tile index to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld (SpritePointerXT), bc                    ; store updated SpritePointerXT in RAM

	; cope with fairy dust attack count down
	inc hl                                      ; increment hl to point to CountDown
	ld a, (hl)                                  ; load CountDown into accumulator
	dec a                                       ; decrement CountDown
	ld (hl), a                                  ; update CountDown in RAM

	cp 0                                        ; compare CountDown with 0
	jp nz, EndFunctionDrawLifeLostGraphicEffect ; if CountDown is not zero then jump to end

	ld de, 3                                    ; load 3 into de
	sbc hl, de                                  ; subtract 3 from the effect pointer to point at alive flag
	ld (hl), 0                                  ; kill the effect sprite

	EndFunctionDrawLifeLostGraphicEffect:       ; EndFunctionDrawLifeLostGraphicEffect marker

	ret

; A function to draw the star burst graphic effect
; ------------------------------------------------
; Parameters: nil
DrawStarBurstGraphicEffect:
	; check to see if the effect is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (Burst)                               ; load alive status flag into a
	cp 1                                        ; compare alive status flag to one
	jp nz, EndFunctionDrawStarBurstGraphicEffect; if the effect is not alive then jump to end of function

	; load and update y coordinates
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; sprite 1
	ld a, (Burst + 1)                           ; load y coordinate into a
	inc a                                       ; increment y coordinate
	ld (Burst + 1), a                           ; store updated effect sprite y coordinate in RAM
	ld bc, (SpritePointerY)                     ; load SpritePointerY into bc as a pointer
	ld (bc), a                                  ; send effect sprite y coordinate to sprite table
	inc bc                                      ; increment SpritePointerY
	ld (SpritePointerY), bc                     ; store updated SpritePointerY in RAM
	; sprite 2
	ld a, (Burst + 3)                           ; load y coordinate into a
	inc a                                       ; increment y coordinate
	ld (Burst + 3), a                           ; store updated effect sprite y coordinate in RAM
	ld bc, (SpritePointerY)                     ; load SpritePointerY into bc as a pointer
	ld (bc), a                                  ; send effect sprite y coordinate to sprite table
	inc bc                                      ; increment SpritePointerY
	ld (SpritePointerY), bc                     ; store updated SpritePointerY in RAM
	; sprite 3
	ld a, (Burst + 5)                           ; load y coordinate into a
	dec a                                       ; increment y coordinate
	ld (Burst + 5), a                           ; store updated effect sprite y coordinate in RAM
	ld bc, (SpritePointerY)                     ; load SpritePointerY into bc as a pointer
	ld (bc), a                                  ; send effect sprite y coordinate to sprite table
	inc bc                                      ; increment SpritePointerY
	ld (SpritePointerY), bc                     ; store updated SpritePointerY in RAM
	; sprite 4
	ld a, (Burst + 7)                           ; load y coordinate into a
	dec a                                       ; increment y coordinate
	ld (Burst + 7), a                           ; store updated effect sprite y coordinate in RAM
	ld bc, (SpritePointerY)                     ; load SpritePointerY into bc as a pointer
	ld (bc), a                                  ; send effect sprite y coordinate to sprite table
	inc bc                                      ; increment SpritePointerY
	ld (SpritePointerY), bc                     ; store updated SpritePointerY in RAM

	; load and update x coordinates & tile indexes
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	; sprite 1
	ld a, (Burst + 2)                           ; load x coordinate into a
	dec a                                       ; increment x coordinate
	ld (Burst + 2), a                           ; store updated effect sprite x coordinate in RAM
	ld bc, (SpritePointerXT)                    ; load SpritePointerXT into bc as a pointer
	ld (bc), a                                  ; send effect sprite x coordinate to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld a, 175                                   ; load 175 into a
	ld (bc), a                                  ; load tile index into sprite table
	inc bc                                      ; increment SpritePointerXT
	ld (SpritePointerXT), bc                    ; store updated SpritePointerXT in RAM
	; sprite 2
	ld a, (Burst + 4)                           ; load x coordinate into a
	inc a                                       ; increment x coordinate
	ld (Burst + 4), a                           ; store updated effect sprite x coordinate in RAM
	ld bc, (SpritePointerXT)                    ; load SpritePointerXT into bc as a pointer
	ld (bc), a                                  ; send effect sprite x coordinate to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld a, 175                                   ; load 175 into a
	ld (bc), a                                  ; load tile index into sprite table
	inc bc                                      ; increment SpritePointerXT
	ld (SpritePointerXT), bc                    ; store updated SpritePointerXT in RAM
	; sprite 3
	ld a, (Burst + 6)                           ; load x coordinate into a
	dec a                                       ; increment x coordinate
	ld (Burst + 6), a                           ; store updated effect sprite x coordinate in RAM
	ld bc, (SpritePointerXT)                    ; load SpritePointerXT into bc as a pointer
	ld (bc), a                                  ; send effect sprite x coordinate to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld a, 175                                   ; load 175 into a
	ld (bc), a                                  ; load tile index into sprite table
	inc bc                                      ; increment SpritePointerXT
	ld (SpritePointerXT), bc                    ; store updated SpritePointerXT in RAM
	; sprite 4
	ld a, (Burst + 8)                           ; load x coordinate into a
	inc a                                       ; increment x coordinate
	ld (Burst + 8), a                           ; store updated effect sprite x coordinate in RAM
	ld bc, (SpritePointerXT)                    ; load SpritePointerXT into bc as a pointer
	ld (bc), a                                  ; send effect sprite x coordinate to sprite table
	inc bc                                      ; increment SpritePointerXT
	ld a, 175                                   ; load 175 into a
	ld (bc), a                                  ; load tile index into sprite table
	inc bc                                      ; increment SpritePointerXT
	ld (SpritePointerXT), bc                    ; store updated SpritePointerXT in RAM

	; cope with effect count down
	ld a, (Burst + 9)                           ; load CountDown into accumulator
	dec a                                       ; decrement CountDown
	ld (Burst + 9), a                           ; update CountDown in RAM

	cp 0                                        ; compare CountDown with 0
	jp nz, EndFunctionDrawStarBurstGraphicEffect; if CountDown is not zero then jump to end

	ld a, 0                                     ; load 0 into accumulator
	ld (Burst), a                               ; kill the effect sprite

	EndFunctionDrawStarBurstGraphicEffect:      ; EndFunctionDrawStarBurstGraphicEffect marker

	ret

; A function to update sprites on screen
; --------------------------------------
; Parameters: nil
UpdateSprites:
	; update sprite pointer values
	ld hl, SpriteTable                   ; load the start of the Y coordinate portion of the sprite table in hl
	ld (SpritePointerY), hl              ; save the start of the Y coordinate portion of the sprite table as a pointer
	ld hl, SpriteTable + 128             ; load the start of the X coordinate and tile index portion of the sprite
	                                     ; table in hl
	ld (SpritePointerXT), hl             ; save the start of the X coordinate and tile index portion of the sprite
	                                     ; table in hl

	call UpdateCharacterSprites          ; update the character's sprites
	call UpdateBatEnemySprites           ; update the bat enemy sprites
	call UpdateSpiderEnemySprites        ; update the spider enemy sprites
	call UpdateMushEnemySprites          ; update the mushroom enemy sprites
	call UpdateTreeEnemySprites          ; update the tree enemy sprites
	call UpdateHeartPowerUpSprites       ; update the heart power-up sprites
	call UpdateDoorSprites               ; update the sprites that make up the door
	call DrawLivesIndicator              ; update the lives indicator sprites
	call DrawFairyDustAttack             ; update the sprites related to the player's fairy dust attack
	call DrawFairyDustAttack             ; update the sprites related to the player's fairy dust attack
	                                     ; second function call made to increase speed of sprites
	call DrawLifeLostGainedGraphicEffect ; update the sprites related to the life lost/gained graphic effects
	call DrawStarBurstGraphicEffect      ; update the sprites related to the star burst effect
	call DrawStarBurstGraphicEffect      ; update the sprites related to the star burst effect
	                                     ; second function call made to increase speed of sprites

	; add terminator to sprite attribute table
	ld hl, (SpritePointerY)              ; load current sprite Y pointer in hl
	ld (hl), $D0                         ; add the sprite table terminator

	; send updated local RAM sprite map to the VDP
    ld a,$00                             ; load $00 into register a
	out (VDPControl),a                   ; output register a to VDP control port
	ld a,SpritemapWrite                  ; load sprite map location into register a
	out (VDPControl),a                   ; output register a to VDP control port

	ld hl, SpriteTable                   ; load address of local RAM sprite table into register hl
    ld b, 255                            ; load the size of the local RAM sprite table in bytes to register b
    ld c, VDPData                        ; load the VDP data port No. ($be) into register c
    otir                                 ; output b bytes of data to port c starting at address hl

	; the three lines of code below were used to send the updated local sprite table to the VDP in the past
	; the use of the SendToVDPData function is slower than otir and therefore has been replaced
	; the original code has been retained in commented form for future reference
	;ld hl,SpriteTable                 ; load address of local RAM sprite table into register hl
	;ld bc,256                         ; load the size of the local RAM sprite table in bytes to register bc
	;call SendToVDPData                ; send the local RAM sprite table to the VDP sprite table in VRAM

	ret

; A function to update the boss sprites
; -------------------------------------
; Parameters: nil
;
; N.B. In hindsight, I probably should have made the wing flap instructions into a seperate function.
; If I am being completely honest, I only thought of that after I had wrote the code; this is
; and embarassing oversight on my part. Oh well, the code seems to work and so I am leaving it as is.
;
; N.B. This function is based upon the UpdateCharacterSprites function; the comments have not been
; changed so they refer to the character.
UpdateBossSprites:
	; conditional statements to call appropriate instructions based upon the direction the Boss is facing
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 4                                    ; compare with code for right
	jp z, BossRight                          ; if Boss is facing right jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 5                                    ; compare with code for right and up
	jp z, BossUpRight                        ; if Boss is facing up and right jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 6                                    ; compare with code for right and down
	jp z, BossDownRight                      ; if Boss is facing down and right jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 3                                    ; compare with code for left
	jp z, BossLeft                           ; if Boss is facing left jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 7                                    ; compare with code for left and up
	jp z, BossUpLeft                         ; if Boss is facing up and left jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 8                                    ; compare with code for left and down
	jp z, BossDownLeft                       ; if Boss is facing down and left jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 1                                    ; compare with code for up
	jp z, BossUp                             ; if Boss is facing up jump to appropriate section

	ld a, (BossDirection)                    ; load Boss direction in accumulator
	xor 2                                    ; compare with code for down
	jp z, BossDown                           ; if Boss is facing down jump to appropriate section

	jp EndFunctionUpdateBossSprites          ; if no conditions are met, then jump to the end of the function

	; sections to draw Boss based upon the direction they are facing
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; if Boss is facing right
	; - - - - - - - - - - - - - - -
	BossRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 44 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 45 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 46 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 47 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1RightFacing          ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2RightFacing          ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3RightFacing          ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapRightFacing           ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1RightFacing:               ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapRightFacing       ; jump to end of wing flap instructions

		BWingFlap2RightFacing:               ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapRightFacing       ; jump to end of wing flap instructions

		BWingFlap3RightFacing:               ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapRightFacing       ; jump to end of wing flap instructions

		EndBWingFlapRightFacing:             ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing up and right
	; - - - - - - - - - - - - - - - - - -
	BossUpRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 40 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 41 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 42 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 43 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1UpRightFacing        ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2UpRightFacing        ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3UpRightFacing        ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapUpRightFacing         ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1UpRightFacing:             ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpRightFacing     ; jump to end of wing flap instructions

		BWingFlap2UpRightFacing:             ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpRightFacing     ; jump to end of wing flap instructions

		BWingFlap3UpRightFacing:             ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapUpRightFacing     ; jump to end of wing flap instructions

		EndBWingFlapUpRightFacing:           ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing down and right
	; - - - - - - - - - - - - - - - - - - -
	BossDownRight:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 48 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 49 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 50 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 51 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 36 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 37 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 38 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 39 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1DownRightFacing      ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2DownRightFacing      ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3DownRightFacing      ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapDownRightFacing       ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1DownRightFacing:           ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownRightFacing   ; jump to end of wing flap instructions

		BWingFlap2DownRightFacing:           ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownRightFacing   ; jump to end of wing flap instructions

		BWingFlap3DownRightFacing:           ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 4 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapDownRightFacing   ; jump to end of wing flap instructions

		EndBWingFlapDownRightFacing:         ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites ; jump to end of function once done

	; if Boss is facing left
	; - - - - - - - - - - - - - -
	BossLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 60 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 61 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 62 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 63 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1LeftFacing           ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2LeftFacing           ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3LeftFacing           ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapLeftFacing            ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1LeftFacing:                ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapLeftFacing        ; jump to end of wing flap instructions

		BWingFlap2LeftFacing:                ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapLeftFacing        ; jump to end of wing flap instructions

		BWingFlap3LeftFacing:                ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapLeftFacing        ; jump to end of wing flap instructions

		EndBWingFlapLeftFacing:              ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing up and left
	; - - - - - - - - - - - - - - - - - -
	BossUpLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 56 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 57 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 58 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 59 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1UpLeftFacing         ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2UpLeftFacing         ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3UpLeftFacing         ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapUpLeftFacing          ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1UpLeftFacing:              ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpLeftFacing      ; jump to end of wing flap instructions

		BWingFlap2UpLeftFacing:              ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpLeftFacing      ; jump to end of wing flap instructions

		BWingFlap3UpLeftFacing:              ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapUpLeftFacing      ; jump to end of wing flap instructions

		EndBWingFlapUpLeftFacing:            ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing down and left
	; - - - - - - - - - - - - - - - - - - -
	BossDownLeft:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 64 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 65 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 66 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 67 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 52 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 53 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 54 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 55 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1DownLeftFacing       ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2DownLeftFacing       ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3DownLeftFacing       ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapDownLeftFacing        ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1DownLeftFacing:            ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownLeftFacing    ; jump to end of wing flap instructions

		BWingFlap2DownLeftFacing:            ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 88 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownLeftFacing    ; jump to end of wing flap instructions

		BWingFlap3DownLeftFacing:            ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			add a, 4                         ; adjust x coord of wings
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 89 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapDownLeftFacing    ; jump to end of wing flap instructions

		EndBWingFlapDownLeftFacing:          ; EndWingFlagRightFacing marker

		; place holder sprites
		; these sprites are blank and ensure sprite table alignment to prevent transient
		; sprite shifts upon Boss direction change
		ld a, 0                              ; load 0 into accumulator
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer
		ld (hl), a                           ; send 0 to sprite table
		inc hl                               ; increment sprite pointer

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing up
	; - - - - - - - - - - - - -
	BossUp:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 68 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 69 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 70 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 71 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 72 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 73 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 74 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 75 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1UpFacing             ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2UpFacing             ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3UpFacing             ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapUpFacing              ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1UpFacing:                  ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpFacing          ; jump to end of wing flap instructions

		BWingFlap2UpFacing:                  ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 88 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapUpFacing          ; jump to end of wing flap instructions

		BWingFlap3UpFacing:                  ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 89 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapUpFacing          ; jump to end of wing flap instructions

		EndBWingFlapUpFacing:                ; EndWingFlagRightFacing marker

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	; if Boss is facing down
	; - - - - - - - - - - - - - -
	BossDown:
		; update y-coords
		; ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerY)              ; load SpritePointerY into hl
		ld a, (BossYCoord)                   ; load y coordinate of Boss into accumulator

		; head sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; body sprites
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		; wing sprites
		sub 16                               ; subtract 16 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send y-coordinate to the sprite table
		inc hl                               ; increment SpritePointerY

		ld (SpritePointerY), hl              ; store updated SpritePointerY in RAM

		; update y-coords and tile indexes
		; ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
		ld hl, (SpritePointerXT)             ; load SpritePointerXT into hl
		ld a, (BossXCoord)                   ; load x-coordinate of Boss into accumulator

		; head sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 76 + 160                       ; load index of top left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 77 + 160                       ; load index of top right corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 78 + 160                       ; load index of bottom left corner of head in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 79 + 160                       ; load index of bottom right corner of head in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; body sprites
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 80 + 160                       ; load index of top left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 81 + 160                       ; load index of top right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		sub 8                                ; subtract 8 from value in accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 82 + 160                       ; load index of bottom left corner of body in d
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT
		add a, 8                             ; add 8 to the accumulator
		ld (hl), a                           ; send x-coordinate to the sprite table
		inc hl                               ; increment SpritePointerXT
		ld d, 83 + 160                       ; load index of bottom right corner of body in data
		ld (hl), d                           ; send tile index to sprite table
		inc hl                               ; increment SpritePointerXT

		; wing sprites
		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 1                                ; compare against 1
		jp z, BWingFlap1DownFacing           ; if BWingFlapFlag = 1 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 2                                ; compare against 2
		jp z, BWingFlap2DownFacing           ; if BWingFlapFlag = 2 jump to required instructions

		ld a, (BWingFlapFlag)                ; load BWingFlapFlag into accumulator
		xor 3                                ; compare against 3
		jp z, BWingFlap3DownFacing           ; if BWingFlapFlag = 3 jump to required instructions

		jp EndBWingFlapDownFacing            ; if no conditions are met jump to end of wing flap instructions

		BWingFlap1DownFacing:                ; if BWingFlapFlag = 1 draw open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 84 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 90 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 87 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 93 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownFacing        ; jump to end of wing flap instructions

		BWingFlap2DownFacing:                ; if BWingFlapFlag = 2 draw 1/2 open wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 85 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 91 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 88 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 94 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, (BWingFlapFlag)            ; load BWingFlapFlag into accumulator
			inc a                            ; increment the flag
			ld (BWingFlapFlag), a            ; store the flag back in RAM

			jp EndBWingFlapDownFacing        ; jump to end of wing flap instructions

		BWingFlap3DownFacing:                ; if BWingFlapFlag = 3 draw closed wings
			ld a, (BossXCoord)               ; load BossXCoord into accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			sub 12                           ; subtract 8 from accumulator
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 86 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 92 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			add a, 16                        ; add 8 to accumulator
			inc hl                           ; increment SpritePointerXT
			ld d, 89 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT
			ld (hl), a                       ; send x-coordinate to the sprite table
			inc hl                           ; increment SpritePointerXT
			ld d, 95 + 160                   ; load index of wing sprite
			ld (hl), d                       ; send tile index to sprite table
			inc hl                           ; increment SpritePointerXT

			ld a, 1                          ; load 1 into accumulator
			ld (BWingFlapFlag), a            ; reset the flag

			jp EndBWingFlapDownFacing        ; jump to end of wing flap instructions

		EndBWingFlapDownFacing:              ; EndWingFlagRightFacing marker

		ld (SpritePointerXT), hl             ; store updated SpritePointerXT in RAM

		jp EndFunctionUpdateBossSprites      ; jump to end of function once done

	EndFunctionUpdateBossSprites:            ; EndFunctionUpdateBossSprites marker

	ret

; A function to draw the lives indicator for the boss
; ---------------------------------------------------
; Parameters: nil
DrawBossLives:
	ld bc, (BossLives)                ; load the number of lives the boss has into bc as a loop counter
	ld hl, (SpritePointerY)           ; load SpritePointerY into hl

	UpdateBLivesYLoop:                ; UpdateBLivesYLoop marker
		ld (hl), -2                   ; load y coord of lives indicator into sprite table
		inc hl                        ; increment SpritePointerY pointer

		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, UpdateBLivesYLoop      ; if counter has not run out then jump to UpdateBLivesYLoop

	ld (SpritePointerY), hl           ; store the updated SpritePointerY in RAM
	ld bc, (BossLives)                ; load the number of lives the boss has into bc as a loop counter
	ld hl, (SpritePointerXT)          ; load SpritePointerXT into hl

	ld e, 9                           ; load starting x coord into e

	UpdateBLivesXTLoop:               ; UpdateBLivesXTLoop marker
		ld (hl), e                    ; load x coord of life indicator into sprite table
		ld a, e
		add a, 8                      ; add 8 to life indicator x coord
		ld e, a
		inc hl                        ; increment SpritePointerXT pointer
		ld (hl), 174                  ; load heart tile index into sprite table
		inc hl

		dec bc                        ; decrement counter
        ld a, b                       ; load high byte (b) from counter into register a
        or c                          ; compare a and c; if both are zero then set the z flag to break the loop
        jp nz, UpdateBLivesXTLoop     ; if counter has not run out then jump to UpdateBLivesXTLoop

	ld (SpritePointerXT), hl          ; store the updated SpritePointerXT in RAM

	ret

; A function to draw the boss's attack
; ------------------------------------
; Parameters: nil
DrawBossAttack:
	ld hl, BossAtt                        ; load the start address of the dust attack object in RAM into hl as a pointer

	; check to see if the dust is alive
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (hl)                            ; load alive status flag into a
	cp 1                                  ; compare alive status flag to one
	jp nz, EndFunctionDrawBossAttack      ; if the dust is not alive then jump to end of function

	; check to see what direction the player is pointing in
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (BossDirection)                 ; load player direction into a
	cp 1                                  ; compare with up direction
	jp z, MoveBAttUp                      ; jump to MoveAttUp
	ld a, (BossDirection)                 ; load player direction into a
	cp 2                                  ; compare with down direction
	jp z, MoveBAttDown                    ; jump to MoveAttDown
	ld a, (BossDirection)                 ; load player direction into a
	cp 3                                  ; compare with left direction
	jp z, MoveBAttLeft                    ; jump to MoveAttLeft
	ld a, (BossDirection)                 ; load player direction into a
	cp 4                                  ; compare with right direction
	jp z, MoveBAttRight                   ; jump to MoveAttRight
	ld a, (BossDirection)                 ; load player direction into a
	cp 5                                  ; compare with up-right direction
	jp z, MoveBAttUpRight                 ; jump to MoveAttUpRight
	ld a, (BossDirection)                 ; load player direction into a
	cp 6                                  ; compare with down-right direction
	jp z, MoveBAttDownRight               ; jump to MoveAttDownRight
	ld a, (BossDirection)                 ; load player direction into a
	cp 7                                  ; compare with up-left direction
	jp z, MoveBAttUpLeft                  ; jump to MoveAttUpLeft
	ld a, (BossDirection)                 ; load player direction into a
	cp 8                                  ; compare with down-left direction
	jp z, MoveBAttDownLeft                ; jump to MoveAttDownLeft

	jp EndFunctionDrawBossAttack          ; move to end of function to avoid all the movement code
	                                      ; if no player direction is detected

	MoveBAttUp:                           ; MoveAttUp marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttUpEnd              ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttUpEnd:                    ; MoveAttUpEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttDown:                         ; MoveAttDown marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttDownEnd            ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttDownEnd:                  ; MoveAttDownEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttLeft:                         ; MoveAttLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttLeftEnd            ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttLeftEnd:                  ; MoveAttLeftEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttRight:                        ; MoveAttRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttRightEnd           ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttRightEnd:                 ; MoveAttRightEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttUpRight:                      ; MoveAttUpRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttUpRightEnd         ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttUpRightEnd:               ; MoveAttUpRightEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttDownRight:                    ; MoveAttDownRight marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		inc a                             ; increment x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttDownRightEnd       ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttDownRightEnd:             ; MoveAttUpRightEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttUpLeft:                       ; MoveAttUpLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		dec a                             ; decrement y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttUpLeftEnd          ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttUpLeftEnd:                ; MoveAttUpRightEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	MoveBAttDownLeft:                     ; MoveAttDownLeft marker
		; load and update y coordinate
		inc hl                            ; increment hl to point to y coordinate of attack sprite
		ld a, (hl)                        ; load y coordinate into a
		inc a                             ; increment y coordinate
		ld (hl), a                        ; store updated attack sprite y coordinate in RAM

		; send y coordinate to sprite table
		ld bc, (SpritePointerY)           ; load SpritePointerY into bc as a pointer
		ld (bc), a                        ; send attack sprite y coordinate to sprite table
		inc bc                            ; increment SpritePointerY
		ld (SpritePointerY), bc           ; store updated SpritePointerY in RAM

		; load and update x coordinate
		inc hl                            ; increment hl to point to x coordinate of attack sprite
		ld a, (hl)                        ; load x coordinate into a
		dec a                             ; decrement x coordinate
		ld (hl), a                        ; store updated attack sprite x coordinate in RAM

		; send x coordinate and tile index to sprite table
		ld bc, (SpritePointerXT)          ; load SpritePointerXT into bc as a pointer
		ld (bc), a                        ; send attack sprite x coordinate to sprite table
		inc bc                            ; increment SpritePointerXT
		ld a, 98                          ; load fairy dust attack tile index into accumulator
		ld (bc), a                        ; send attack sprite tile index to sprite table
		inc bc                            ; increment SpritePointerXT
		ld (SpritePointerXT), bc          ; store updated SpritePointerXT in RAM

		; cope with fairy dust attack count down
		inc hl                            ; increment hl to point to CountDown
		ld a, (hl)                        ; load CountDown into accumulator
		dec a                             ; decrement CountDown
		ld (hl), a                        ; update CountDown in RAM

		cp 0                              ; compare CountDown with 0
		jp nz, MoveBAttDownLeftEnd        ; if CountDown is not zero then jump to end

		ld de, 3                          ; load 3 into de
		sbc hl, de                        ; subtract 3 from the attack pointer to point at alive flag
		ld (hl), 0                        ; kill the fairy dust attack sprite

		MoveBAttDownLeftEnd:              ; MoveAttUpRightEnd marker

		jp EndFunctionDrawBossAttack      ; jump to the end of the function

	EndFunctionDrawBossAttack:            ; EndFunctionDrawFairyDustAttack marker

	ret

; A function to update sprites on screen in the boss battle environment
; ---------------------------------------------------------------------
; Parameters: nil
UpdateBossBattleSprites:
	; update sprite pointer values
	ld hl, SpriteTable                   ; load the start of the Y coordinate portion of the sprite table in hl
	ld (SpritePointerY), hl              ; save the start of the Y coordinate portion of the sprite table as a pointer
	ld hl, SpriteTable + 128             ; load the start of the X coordinate and tile index portion of the sprite
	                                     ; table in hl
	ld (SpritePointerXT), hl             ; save the start of the X coordinate and tile index portion of the sprite
	                                     ; table in hl

	call UpdateCharacterSprites          ; update the character's sprites
	call UpdateBossSprites               ; update the boss's sprites
	call DrawLivesIndicator              ; update the lives indicator sprites
	call DrawBossLives                   ; update the lives the boss has
	call DrawFairyDustAttack             ; update the sprites related to the player's fairy dust attack
	call DrawFairyDustAttack             ; update the sprites related to the player's fairy dust attack
		                                 ; second function call made to increase speed of sprites
	call DrawBossAttack                  ; update the sprites related to the boss's fairy dust attack
	call DrawBossAttack                  ; update the sprites related to the boss's fairy dust attack
			                             ; second function call made to increase speed of sprites
	call DrawLifeLostGainedGraphicEffect ; update the sprites related to the life lost/gained graphic effects
	call DrawStarBurstGraphicEffect      ; update the sprites related to the star burst effect
	call DrawStarBurstGraphicEffect      ; update the sprites related to the star burst effect
		                                 ; second function call made to increase speed of sprites

	; add terminator to sprite attribute table
	ld hl, (SpritePointerY)              ; load current sprite Y pointer in hl
	ld (hl), $D0                         ; add the sprite table terminator

	; send updated local RAM sprite map to the VDP
    ld a,$00                             ; load $00 into register a
	out (VDPControl),a                   ; output register a to VDP control port
	ld a,SpritemapWrite                  ; load sprite map location into register a
	out (VDPControl),a                   ; output register a to VDP control port

	ld hl, SpriteTable                   ; load address of local RAM sprite table into register hl
    ld b, 255                            ; load the size of the local RAM sprite table in bytes to register b
    ld c, VDPData                        ; load the VDP data port No. ($be) into register c
    otir                                 ; output b bytes of data to port c starting at address hl

	; the three lines of code below were used to send the updated local sprite table to the VDP in the past
	; the use of the SendToVDPData function is slower than otir and therefore has been replaced
	; the original code has been retained in commented form for future reference
	;ld hl,SpriteTable                 ; load address of local RAM sprite table into register hl
	;ld bc,256                         ; load the size of the local RAM sprite table in bytes to register bc
	;call SendToVDPData                ; send the local RAM sprite table to the VDP sprite table in VRAM

	ret