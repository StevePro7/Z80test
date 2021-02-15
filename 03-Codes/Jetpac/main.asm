; Jetpac "remake" for SMS Power! Coding Competition 2009
; email: grz.zrg at gmail dot com
; web: http://garzul.tonsite.biz
; Note: Some ugly code cause of quick rush to try to do the more i can at time!
;
;       For the story, i started another game project 2month before the contest but it
;       was too heavy and required much time, 5 day before the deadline i had the idea to make a remake of a tiny game,
;       so i loaded a couple of games in a Zx spectrum emulator and played Jetpac, since it looked not too heavy to
;       do and it was funny i started working on a remake, altough it is unfinished (still too big i guess)! :) 

; This version of the source code is buggy, not recommended to learn from (except basics stuffs).
; ==== banking ====
.memorymap
defaultslot 0
slotsize $4000
slot 0 $0000
slot 1 $4000
slot 2 $8000
.endme

.rombankmap
bankstotal 4
banksize $4000
banks 4
.endro

.computesmschecksum

.sdsctag 1.0,"Jetpac","Remake of Jetpac","Grz-"

; ==== Boot section ====
.bank 0 slot 0
.org $0000
.section "Boot section" force
    di
    im 1
    jp main
.ends

; ==== pause ====
.org $0066
.section "Pause handler" force
	retn
.ends
	
; ==== var ====
.define jetman_x        $C009
.define jetman_y        $C005
.define jetman_speed_x  $C020
.define jetman_speed_y  $C021
.define jetman_dir      $C022
.define jetman_up       $C023
.define jetman_frame    $C024
.define jetman_pick     $C027
.define jetman_goal     $C028
.define hi_score        $C025
.define frame_counter   $C026
.define RandomNumberGeneratorWord $C040

; ==== constants ====
.define MAX_Y_SPEED 4
.define jetman_xDec 8
.define jetman_yDec 12

; ==== psgmod
.define PSGMOD_START_ADDRESS     $C100
.define PSGMOD_SUPPORT_GG_STEREO 1
.define PSGMOD_PSG_PORT          $7F

; ==== main ====
.section "Main" free
main:
    ld sp, $dff0
	
    ld hl,VdpData
    ld b,VdpDataEnd-VdpData
    ld c,$bf
    otir

	; ==== clear vram ====
    ld hl,$4000 
    call VRAMToHL 
	call ClrVRAM
	
	; = load title screen
	call loadTitleScreen
	call loadJetman
	call initJetmanTitleScreenStartingPosition
	call loadFont
	
	; = sound stuff
	;ld   hl, introModule
	;ld   a, :introModule
	;call PSGMOD_LoadModule
	;call PSGMOD_Start
  
	;ld   hl, soundCallback
	;call PSGMOD_SetCallbackFunction
	
    ; ==== display ====
    ld a,%11000000
    out ($bf),a
    ld a,$81
    out ($bf),a	

	ld c,0
	xor a
	ld (frame_counter),a
	loop: ; title screen loop
		in a,($dc)
		bit 4,a
		jp z,initGame
		
		in a,($dc)
		bit 0,a
		jp z,moveJetmanUp
		
		continue:
		
		in a,($dc)
		bit 2,a
		jp z,moveJetmanLeft
		
		continueAfterLeft:
		
		in a,($dc)
		bit 3,a
		jp z,moveJetmanRight
		
		continueAfterRight:
		
		call updateMovement
		
		call WaitVBL
		
		;call PSGMOD_Play

		ld a,%10000000
		out ($bf),a
		ld a,$81
		out ($bf),a	
		call updateVRAM
		ld a,%11000000
		out ($bf),a
		ld a,$81
		out ($bf),a	
		
		ld hl,frame_counter
		inc (hl)
		
		jp loop
		
	initGame: ; game loop
		ld a,%10000000
		out ($bf),a
		ld a,$81
		out ($bf),a	
	
		call loadMap
		call loadSprites
		;call PSGMOD_Pause
		call initJetmanMapStartingPosition
		
		ld a,%11000000
		out ($bf),a
		ld a,$81
		out ($bf),a	
		
		gameLoop:
			in a,($dc)
			bit 0,a
			jp z,moveJetmanUpMap
			
			continueMap:
			
			in a,($dc)
			bit 2,a
			jp z,moveJetmanLeftMap
			
			continueAfterLeftMap:
			
			in a,($dc)
			bit 3,a
			jp z,moveJetmanRightMap
			
			continueAfterRightMap:
		
			call checkCollision
			call updateMovement
			dontUpdateMovement:
			call pickObject
			
			call WaitVBL
			; get rid of timing stuff by shutting down display (there is ~12 wrong vram access if this stuff is removed)
			ld a,%10000000
			out ($bf),a
			ld a,$81
			out ($bf),a	
			
			call updateVRAM2
			call updateVRAM
			
			ld a,%11000000
			out ($bf),a
			ld a,$81
			out ($bf),a	
			
			ld hl,frame_counter
			inc (hl)
		
			jp gameLoop

; === pick an object at the position of the jetman (same as collision stuff...) === 
; another crappy piece of code, there is some illogical/mistake operation but it work (almost) :p
pickObject:
	ld a,(jetman_pick)
	or a
	jp z,passObjectCheck
	
	; check if the player position is between the main rocket
	ld a,(jetman_x)
	ld b,a
	ld a,(jetman_y)
	ld c,a
	
	ld a,(RocketStartingPosition80)
	dec a
	cp b
	jr nz,dontDrop
	
	ld a,(RocketStartingPosition00)
	sub 20
	cp c
	jr c,dontDrop
	
	; fix 2pixels right before dropping
	ld a,(jetman_dir)
	or a
	jr nz,dontFixPlacement

	ld a,(jetman_pick)
	cp 1
	jr nz,fixObject2
	
	ld hl,$C045
	inc (hl)
	inc (hl)
	ld hl,$C049
	inc (hl)
	inc (hl)
	ld hl,$C047
	inc (hl)
	inc (hl)
	ld hl,$C04B
	inc (hl)
	inc (hl)	
	
	fixObject2:

	ld hl,$C04D
	inc (hl)
	inc (hl)
	ld hl,$C051
	inc (hl)
	inc (hl)
	ld hl,$C04F
	inc (hl)
	inc (hl)
	ld hl,$C053
	inc (hl)
	inc (hl)
	
	dontFixPlacement:
	ld a,4
	ld (jetman_pick),a
	ret
	
	dontDrop:
	ld a,(jetman_pick)
	cp 1
	jr nz,checkNextObject

	ld a,($C001) ; put object to the player position
	ld ($C034),a
	ld ($C035),a
	sub 8
	ld ($C036),a
	ld ($C037),a
	
	ld a,($C007)
	ld ($C045),a
	ld ($C049),a
	add a,8
	ld ($C047),a
	ld ($C04B),a
	
	ret
	checkNextObject:
	
	ld a,(jetman_pick)
	cp 2
	jr nz,checkNextObject2

	ld a,($C001)
	ld ($C038),a
	ld ($C039),a
	ld a,($C002)
	ld ($C03A),a
	ld ($C03B),a
	
	ld a,($C007)
	ld ($C04D),a
	ld ($C051),a
	add a,8
	ld ($C04F),a
	ld ($C053),a
	
	ret
	checkNextObject2:
	passObjectCheck:
	
	; drop the object to the rocket
	ld a,(jetman_pick)
	cp 4
	jr nz,continueCheckingObject
	
	ld a,(jetman_goal)
	cp 1
	jr z,decSecondObj
		
	ld hl,$C034
	inc (hl)
	ld hl,$C035
	inc (hl)
	ld hl,$C036
	inc (hl)
	ld hl,$C037
	inc (hl)

	ld a,($C034)
	ld c,a
	ld a,($C030)
	sub 17
	cp c
	jr c,goal1Finished
	ret
	
	goal1Finished:
	xor a
	ld (jetman_pick),a
	
	ld hl,jetman_goal
	inc (hl)
	
	ret
	
	decSecondObj:

	ld hl,$C038
	inc (hl)
	ld hl,$C039
	inc (hl)
	ld hl,$C03A
	inc (hl)
	ld hl,$C03B
	inc (hl)
	
	ld a,($C038)
	ld c,a
	ld a,($C030)
	sub 17*2-1
	cp c
	jr c,goal2Finished
	ret
	
	goal2Finished:
	xor a
	ld (jetman_pick),a
	
	ld hl,jetman_goal
	inc (hl)
	
	ret
	
	continueCheckingObject:
	ld a,(jetman_goal)
	cp 0
	jr nz,secondRocket
		
	ld a,(jetman_x) ; get pos
	add a,11
	ld b,a
	ld a,(jetman_y)
	sub jetman_yDec+5
	ld c,a
	
	ld a,(RocketStartingPosition80+8)
	add a,4
	cp b
	jr nc,secondRocket
	
	ld a,(RocketStartingPosition80+10)
	add a,10
	cp b
	jr c,secondRocket
	
	ld a,(RocketStartingPosition00+4)
	cp c
	jr c,secondRocket
	
	ld a,(RocketStartingPosition00+4)
	sub 31
	cp c
	jr c,object1ToPlayer
	
	jp secondRocket

	object1ToPlayer:
		ld a,1
		ld (jetman_pick),a
		ret
	
	secondRocket:	
	
	; check it only if the first rocket stage is achevied
		ld a,(jetman_goal)
		cp 1
		jr nz,pickObjectEnd
		
		ld a,(jetman_x) ; get pos
		add a,11
		ld b,a
		ld a,(jetman_y)
		sub jetman_yDec+5
		ld c,a
		
		ld a,(RocketStartingPosition80+16)
		add a,4
		cp b
		jr nc,pickObjectEnd
		
		ld a,(RocketStartingPosition80+18)
		add a,10
		cp b
		jr c,pickObjectEnd
		
		ld a,(RocketStartingPosition00+8)
		cp c
		jr c,pickObjectEnd
		
		ld a,(RocketStartingPosition00+8)
		sub 31
		cp c
		jr c,object2ToPlayer
		ret
		
	object2ToPlayer:
		ld a,2
		ld (jetman_pick),a
	pickObjectEnd:
	ret
	
; === check sprite collision against platform (very very crappy stuff, i dunno how i coded that, its buggy :p...) ===
checkCollision:
	ld a,(MapSolidTiles)
	ld d,a
	ld a,48
	ld e,a
	exx
	ld a,(MapSolidTiles+1)
	ld d,a
	ld a,8
	ld e,a	
	exx
	ld a,(jetman_x) ; get pos
	;add a,11
	ld h,a
	ld a,(jetman_y)
	;sub jetman_yDec+5
	ld b,a
	ld a,16
	ld l,a
	ld a,24
	ld c,a	
	call rectCollision
	jr nc,secondPlatform
	jp updateAnim
	
	; do a load of tests to check collisions with first platform
	;ld a,(MapSolidTiles)
	;sub 17
	;cp b
	;jr nc,secondPlatform
	
	;ld a,(MapSolidTiles+1)
	;cp b
	;jr c,secondPlatform

	;ld a,(MapSolidTiles+2)
	;cp c
	;jr c,incYCheck
	
	;ld a,(MapSolidTiles+2)
	;sub 31
	;cp c
	;jr c,updateAnim	

	;jp secondPlatform
	
	updateAnim:
	xor a 
	ld (jetman_up),a
	
	in a,($dc)
	bit 0,a
	jr z,decY

	jp dontUpdateMovement
	
	decY:
		ld hl,$C000
		dec (hl)
		ld hl,$C001
		dec (hl)
		ld hl,$C002
		dec (hl)
		ld hl,$C003
		dec (hl)
		ld hl,$C004
		dec (hl)
		ld hl,$C005
		dec (hl)
	jp dontUpdateMovement

	incYCheck:
	ld a,(MapSolidTiles+2)
	add a,3
	cp c
	jr nc,checkPad

	ret
	
	checkPad:
		in a,($dc)
		bit 0,a
		jr nz,continueUpdateMovement	
	
	jp dontUpdateMovement
	
	; do a load of tests to check collisions with second platform
	secondPlatform:
	
	ld a,(MapSolidTiles+3)
	sub 17
	cp b
	jr nc,thirdPlatform
	
	ld a,(MapSolidTiles+4)
	cp b
	jr c,thirdPlatform
	
	ld a,(MapSolidTiles+5)
	cp c
	jr c,incYCheck2
	
	ld a,(MapSolidTiles+5)
	sub 31
	cp c
	jr c,updateAnim	

	jp thirdPlatform

	incYCheck2:
	ld a,(MapSolidTiles+5)
	add a,3
	cp c
	jr nc,checkPad
	
	ret
	
	; do a load of tests to check collisions with third platform
	thirdPlatform:

	ld a,(MapSolidTiles+6)
	sub 17
	cp b
	jr nc,continueUpdateMovement
	
	ld a,(MapSolidTiles+7)
	cp b
	jr c,continueUpdateMovement
	
	ld a,(MapSolidTiles+8)
	cp c
	jr c,incYCheck3
	
	ld a,(MapSolidTiles+8)
	sub 31
	cp c
	jp c,updateAnim	

	ret

	incYCheck3:
	ld a,(MapSolidTiles+8)
	add a,3
	cp c
	jr nc,checkPad
	
	continueUpdateMovement:
	ret
	
; === update all jetman movement ===		
updateMovement:
	; if vel y == 0 then pass
	ld a,(jetman_speed_y)
	or a
	jp z,pass
	
	; check if button up is still pushed
	in a,($dc)
	bit 0,a
	jr nz,decSpeed
	jp goup
	
	; decrement velocity if not
	decSpeed:
	ld hl,jetman_speed_y
	dec	(hl)
	
	; continue to go up
	goup:
	ld a,(jetman_y)
	cp $12
	jp c,pass3	; except if he hit the screen corner
	
	ld a,(jetman_speed_y)
	goUp:
		ld hl,$C000
		dec (hl)
		ld hl,$C001
		dec (hl)
		ld hl,$C002
		dec (hl)
		ld hl,$C003
		dec (hl)
		ld hl,$C004
		dec (hl)
		ld hl,$C005
		dec (hl)
		dec a
		jp nz,goUp	
	
	; check jetman position, if he hit the ground then no need to go down
	pass:
	ld a,(jetman_y)
	cp $AF
	jp nc,pass2
	
	; else go down
	ld hl,$C000
	inc (hl)
	inc (hl)
	ld hl,$C001
	inc (hl)
	inc (hl)
	ld hl,$C002
	inc (hl)
	inc (hl)
	ld hl,$C003
	inc (hl)
	inc (hl)
	ld hl,$C004
	inc (hl)
	inc (hl)
	ld hl,$C005
	inc (hl)
	inc (hl)	
	
	ld a,1
	ld (jetman_up),a
	
	jp pass3
	pass2:
	xor a ; update direction to change sprite
	ld (jetman_up),a
	pass3:
	ret
	
moveJetmanUp:
	ld a,1
	ld (jetman_up),a
	
	ld a,(jetman_speed_y)
	cp MAX_Y_SPEED
	jp z,continue
	
	ld hl,jetman_speed_y
	inc	(hl)

	jp continue
	
moveJetmanLeft:

	xor a
	inc a
	ld (jetman_dir),a
	
	ld hl,$C007
	dec (hl)
	ld hl,$C009
	dec (hl)
	ld hl,$C00b
	dec (hl)
	ld hl,$C00d
	dec (hl)
	ld hl,$C00f
	dec (hl)
	ld hl,$C011
	dec (hl)	
	
	jp continueAfterLeft
	
moveJetmanRight:

	xor a
	ld (jetman_dir),a
	
	ld hl,$C007
	inc (hl)
	ld hl,$C009
	inc (hl)
	ld hl,$C00b
	inc (hl)
	ld hl,$C00d
	inc (hl)
	ld hl,$C00f
	inc (hl)
	ld hl,$C011
	inc (hl)	
	
	jp continueAfterRight
	
; total crappy double code stuff for one label... did it in rush :P
moveJetmanUpMap:
	ld a,1
	ld (jetman_up),a
	
	ld a,(jetman_speed_y)
	cp MAX_Y_SPEED
	jp z,continueMap
	
	ld hl,jetman_speed_y
	inc	(hl)

	jp continueMap
	
moveJetmanLeftMap:

	inc a
	ld (jetman_dir),a
	
	ld hl,$C007
	dec (hl)
	ld hl,$C009
	dec (hl)
	ld hl,$C00b
	dec (hl)
	ld hl,$C00d
	dec (hl)
	ld hl,$C00f
	dec (hl)
	ld hl,$C011
	dec (hl)	
	
	jp continueAfterLeftMap
	
moveJetmanRightMap:

	xor a
	ld (jetman_dir),a
	
	ld hl,$C007
	inc (hl)
	ld hl,$C009
	inc (hl)
	ld hl,$C00b
	inc (hl)
	ld hl,$C00d
	inc (hl)
	ld hl,$C00f
	inc (hl)
	ld hl,$C011
	inc (hl)	
	
	jp continueAfterRightMap

; === where sprite anim is refresh ===
updateVRAM:
	in a,($dc)
	bit 2,a
	jr nz, checkActivity
	jr dontresetFrame
	
	checkActivity:
	in a,($dc)
	bit 3,a
	jr nz, resetFrame
	
	jr dontresetFrame
	resetFrame:
	ld a,255
	ld (jetman_frame),a
		
	dontresetFrame:
	ld a,(frame_counter)
	cp 5
	jr nz,passAnim
	ld hl,jetman_frame
	inc (hl)
	passAnim:
	ld a,(frame_counter)
	cp 6
	jr nc,resetAnim
	jr dontreset
	resetAnim:
	xor a
	ld (frame_counter),a
	dontreset:
	
	; copy ram jetman data to vram
    ld hl,$3F00
	call VRAMToHL	
	
    ld hl,$C000
    ld b,6
    ld c,$be
    otir	

	ld hl,$3F80
	call VRAMToHL
	
    ld hl,$C007
    ld b,12
    ld c,$be
    otir
	
	; if flying then change the sprite
	ld a,(jetman_up)
	or a
	jp nz,copyUp
	
	; change sprite direction
	ld a,(jetman_dir)
	or a
	jr z,copyRight
	
	ld a,(jetman_frame)
	cp 1
	jr z,copyLeft2
	cp 2
	jr z,copyLeft3
	cp 3
	jr nc,resetAnimLeft
	
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanLeftData
    ld b,48*4
    ld c,$be
    otir
	ret
	
	copyLeft2:
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanLeftFrame2Data
    ld b,48*4
    ld c,$be
    otir	
	ret

	copyLeft3:
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanLeftFrame3Data
    ld b,48*4
    ld c,$be
    otir	
	ret	
	
	resetAnimLeft:
	xor a
	ld (jetman_frame),a
	ret
	
	copyRight:
	ld a,(jetman_frame)
	cp 1
	jr z,copyRight2
	cp 2
	jr z,copyRight3
	cp 3
	jr nc,resetAnimRight
	
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanRightData
    ld b,48*4
    ld c,$be
    otir
	ret
	
	copyRight2:
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanRightFrame2Data
    ld b,48*4
    ld c,$be
    otir	
	ret
	
	copyRight3:
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanRightFrame3Data
    ld b,48*4
    ld c,$be
    otir	
	ret	
	
	resetAnimRight:
	xor a
	ld (jetman_frame),a
	ret
	
	copyUp:
	ld a,(jetman_dir)
	or a
	jr z,copyRightFlying
	
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanFlyLeftData
    ld b,48*4
    ld c,$be
    otir		
	ret
	
	copyRightFlying:
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanFlyRightData
    ld b,48*4
    ld c,$be
    otir	
	ret
	
; === another one ===
updateVRAM2:
	; copy ram rocket data to vram
    ld hl,$3F06
	call VRAMToHL	
	
    ld hl,$C030
    ld b,13
    ld c,$be
    otir	

	ld hl,$3F8C
	call VRAMToHL
	
    ld hl,$C03D
    ld b,24
    ld c,$be
    otir
	ret
	
; setup title screen
loadTitleScreen:
	; palette
	ld hl,$C000
	call VRAMToHL

    ld hl,TitleScreenPal
    ld b,TitleScreenPalEnd-TitleScreenPal
    ld c,$be
    otir
	
	; tiles
    ld hl,$4000
	call VRAMToHL
	
    ld hl,TitleScreenData
    ld bc,(TitleScreenDataEnd+8*32)-TitleScreenData
    call WriteVRAM 

	; tilemap
    ld hl,$3800|$4000
	call VRAMToHL

    ld hl,TitleScreenDataMap
    ld bc,TitleScreenDataMapEnd-TitleScreenDataMap
    call WriteVRAM
	ret
	
loadMap:
	; palette
	ld hl,$C000
	call VRAMToHL

    ld hl,MapPal
    ld b,MapPalEnd-MapPal
    ld c,$be
    otir
	
	; tiles
    ld hl,$4000
	call VRAMToHL
	
    ld hl,MapData
    ld bc,(MapDataEnd+8*32)-MapData
    call WriteVRAM 

	; tilemap
    ld hl,$3800|$4000
	call VRAMToHL

    ld hl,MapDataM
    ld bc,MapDataMEnd-MapDataM
    call WriteVRAM
	ret
	
; setup jetman
loadJetman:
	; palette
	ld hl,$C010
	call VRAMToHL

    ld hl,SpritesPal
    ld b,SpritesPalEnd-SpritesPal
    ld c,$be
    otir

	; tiles
    ld hl,$5520
	call VRAMToHL
	
    ld hl,JetmanRightData
    ld b,48*4
    ld c,$be
    otir

	ret

; load all game sprites (rocket, monsters, bonus...)
loadSprites:
	; rocket
    ld hl,$5600
	call VRAMToHL
	
    ld hl,RocketData
    ld b,4*32
    ld c,$be
    otir
	
    ld hl,$5680
	call VRAMToHL
	
    ld hl,Rocket1Data
    ld b,4*32
    ld c,$be
    otir
	
    ld hl,$5700
	call VRAMToHL
	
    ld hl,Rocket2Data
    ld b,4*32
    ld c,$be
    otir

    ld hl,$5780
	call VRAMToHL
	
    ld hl,Fuel
    ld b,3*32
    ld c,$be
    otir
	
	ld bc,13
	ld hl,RocketStartingPosition00
	ld de,$C030
	ldir

	ld bc,24
	ld hl,RocketStartingPosition80
	ld de,$C03D
	ldir
	
	ret
	
; setup jetman at his starting position on title screen
initJetmanTitleScreenStartingPosition:
	ld bc,6
	ld hl,JetmanStartingPositionTitleScreen00
	ld de,$C000
	ldir

	ld bc,12
	ld hl,JetmanStartingPositionTitleScreen80
	ld de,$C007
	ldir
	
	xor a
	ld (jetman_dir),a
	ld (jetman_frame),a
	
	ld hl,$3F06
	call PutSpriteTerminator
	ret

; setup jetman on game map
initJetmanMapStartingPosition:
	ld bc,6
	ld hl,JetmanStartingPositionTitleScreen00
	ld de,$C000
	ldir

	ld bc,12
	ld hl,JetmanStartingPositionMap80
	ld de,$C007
	ldir
	
	xor a
	ld (jetman_dir),a
	ld (jetman_frame),a
	ld (jetman_goal),a
	ret
	
; === font loading (taken from Maxim tutorials)
loadFont:
    ld hl,$59E0
	call VRAMToHL
    ld hl,FontData
    ld bc,FontDataEnd-FontData 
    WriteTilesLoop:
        ld a,(hl)
        out ($be),a
        xor a
        out ($be),a
        out ($be),a
        out ($be),a
        inc hl
        dec c
        jp nz,WriteTilesLoop
        dec b
        jp nz,WriteTilesLoop
	ret
	
soundCallback:
	ret
	
.include "utils.inc"
	
; ==== data section ====
; VDP data
VdpData:
.db $C6,$80,$80,$81,$ff,$82,$ff,$83,$ff,$84,$ff,$85,$fb,$86,$ff,$87,$00,$88,$00,$89,$ff,$8a
VdpDataEnd:

.include "gfx/titlescreen.inc"
.include "gfx/map.inc"
.include "gfx/sprites.inc"
.include "gfx/font.inc"
.include "gfx/texts.inc"

;.include "sound/psgmod.inc"
;.include "sound/psgmod.asm"

;	introModule:
;	  .incbin "sound/jetpac_intro.epsgmod"
.ends
 
;.bank 3 slot 2
;.org $0000
;.section "psgmod vib" force
;	PSGMOD_VIBRATO_TABLES:
;	  .incbin "sound/psgmod.vib"
;.ends