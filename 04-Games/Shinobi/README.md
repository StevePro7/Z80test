20-Oct-2026
I have opened Shinobi - when the game launches we have the title screen then we start the game at Mission one - level one
Can you help hack the ROM so we by pass the Title screen and also let us start the game at any Mission 1, 2, 3, 4, 5 and for each mission what stage: 1, 2, 3, 4
Finally, is there a hack that can disable any damage on the player so Joe has like God mode


		di
		call _LABEL_11E9_
		ld a, $00
		ld (_RAM_C640_), a
		ld a, $00
		ld (_RAM_C641_), a
		ei
		ld a, $82
		ld (_RAM_C006_), a
		ret