;==============================================================
; Fairy Forest - boot include file
;
; * This file contains the executable code called when the
;   ROM is loaded by the SMS BIOS.
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

; Directive to tell assembler where to start the code on the ROM
; --------------------------------------------------------------
.bank 0 slot 0 ; start the executeable code at the very
.org $0000     ; begining of the cartridge's memory

; Boot instructions (starts at $0000 as per directive above)
; ----------------------------------------------------------
    ;di           ; disable interrupts except those which are unmaskable
	             ; previously, interrupts were disabled but it turns out that they are required
				 ; to control the speed of the event handling loop
	ei           ; interrupts are enabled to allow for handling screen interrupts
    im 1         ; interrupt mode 1
	ld sp, $dff0 ; load $dff0 into the stack pointer (this address is towards the end of the
	             ; SMS' RAM forcing the stack size to be small leaving us with most of the RAM
				 ; for our use). N.B. a small amount of stack RAM is used by various functions.
    jp main      ; jump to main program

; Interrupt handler
; -----------------
.org $0038            ; directive telling assembler to insert the following instructions at $0038
	push af           ; push af to the stack
	in a,(VDPControl) ; read the VDP control port to reset VDP interrupts
	pop af            ; pop af back
	ei                ; re-enable interrupts after interrupt called
	ret

; Pause button handler
; --------------------
.org $0066               ; directive telling assembler to insert the following instructions at $0066
                         ; (i.e. the pause handling instruction address)

	; *** NULL PAUSE HANDLER; YOU CANNOT PAUSE THE GAME ***
	
	; silence the PSG when the user presses pause so that sound does not carry on while paused
	;ld hl, ClearPSGData  ; load start address of PSG silencing table into register hl
	;ld c, SoundControl   ; load sound control port into register c
	;ld b, 4              ; load table size (4 bytes) into register b
	;otir                 ; output identified four bytes to the PSG

	; wait until player presses a button to start playing again
	;ld bc, 60000         ; delay execution by bc loop iterations
	;call DelayExecution  ; delay function used to prevent skipping the next screen due to controller
	                     ; signal retention
	;call WaitForKeyPress ; wait until player presses a key on the joypad

	;ei                   ; re-enable interrupts after interrupt called
    
	retn                 ; return to address in program that was active prior to pause interrupt being called