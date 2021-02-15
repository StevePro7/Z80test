;==============================================================
; Fairy Forest - PSG functions include file
;
; * This file contains the PSG functions called by the
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

; PSG interface functions
; =======================

; A function to slience the PSG
; -----------------------------
; Parameters: nil
SilencePSG:
	ld hl, ClearPSGData                  ; load start address of PSG silencing table into register hl
	ld c, SoundControl                   ; load sound control port into register c
	ld b, ClearPSGDataEnd - ClearPSGData ; load table size into register b
	otir                                 ; output data to the PSG
	ret

; A function to serve as the music driver
; ---------------------------------------
; Parameters: nil
MusicDriver:
	; check to see if it is time to send another note to the PSG
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (NoteDuration)                 ; load note duration into a
	cp 0                                 ; compare note duration to zero
	jp nz, EndFunctionMusicDriver        ; if NoteDuration is not zero, then jump to end of function

	; if it is time to send another note to the PSG do the following:
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	; reset NoteDuration variable
	ld a, NoteLength                     ; load note length into accumulator
	ld (NoteDuration), a                 ; set note duration

	; send current note to the PSG
	ld hl, (MusicPointer)                ; load music pointer into hl
	ld c, SoundControl                   ; load sound control port into register c
	ld b, 6                              ; load length in bytes of next note
	otir                                 ; send music data to PSG
	ld (MusicPointer), hl                ; store updated music pointer in RAM

	; seek MusicPointer to correct position
	and a                                ; zero the carry flag just in case
	ld bc, (MusicPointer)                ; load the music pointer value into bc
	ld hl, MusicDataEnd                  ; load the music data end address hl
	sbc hl, bc                           ; substract the music point from the music data end address
	jp z, ResetMusicPointer              ; if the difference is zero then reset the music pointer

	jp EndFunctionMusicDriver            ; jump to end function music driver to avoice MusicPointer reset code

	ResetMusicPointer:                   ; ResetMusicPointer marker

	ld hl, MusicData                     ; load music data start address into hl
	ld (MusicPointer), hl                ; set music pointer to the start of the music data

	EndFunctionMusicDriver:              ; EndFunctionMusicDriver marker

	; clean up at the end of the function
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (NoteDuration)                 ; load note duration into a
	dec a                                ; decrement note duration
	ld (NoteDuration), a                 ; store updated note duration value in RAM

	ret

; A function to serve as the sound effects driver
; -----------------------------------------------
; Parameters: nil
SoundFXDriver:
	; check to see if there is a sound effect active
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (SndFX)                        ; load sound effects CountDown into a
	cp 0                                 ; compare CountDown to zero
	jp z, EndFunctionSndFXDriver         ; if no sound effect is active, jump to end of function

	; send sound effects to the PSG
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld hl, SndFX + 1                     ; load sound effects data into hl
	ld c, SoundControl                   ; load sound control port into register c
	ld b, 6                              ; load length in bytes of sound effect
	otir                                 ; send sound effect data to PSG

	; update sound effect countdown
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld a, (SndFX)                        ; load sound effects CountDown into a
	dec a                                ; decrement a
	ld (SndFX), a                        ; store updated CountDown in RAM
	cp 0                                 ; compare CountDown to zero
	jp nz, EndFunctionSndFXDriver        ; if the CountDown is still not zero, then jump to end of function

	; silence sound effects channels if sound effects are deactivated
	; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	ld hl, ClearSoundFXData              ; load sound effects clearing data into hl
	ld c, SoundControl                   ; load sound control port into register c
	ld b, 6                              ; load length in bytes of sound effect clearing data
	otir                                 ; send sound effect clearing data to PSG

	EndFunctionSndFXDriver:              ; EndFunctionSndFXDriver marker

	ret