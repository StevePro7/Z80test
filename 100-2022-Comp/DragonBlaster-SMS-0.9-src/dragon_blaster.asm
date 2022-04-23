;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module dragon_blaster
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _main
	.globl _timeover_sequence
	.globl _gameplay_loop
	.globl _interrupt_handler
	.globl _draw_boss
	.globl _handle_boss
	.globl _init_boss
	.globl _fire_enemy_shot
	.globl _draw_enemy_shots
	.globl _handle_enemy_shots
	.globl _init_enemy_shots
	.globl _clear_tilemap
	.globl _draw_score
	.globl _handle_score
	.globl _init_score
	.globl _draw_powerups
	.globl _handle_powerups
	.globl _handle_icons
	.globl _powerup_base_tile
	.globl _init_powerups
	.globl _draw_background
	.globl _draw_enemies
	.globl _handle_enemies
	.globl _init_enemies
	.globl _is_colliding_against_player
	.globl _draw_player
	.globl _handle_player_input
	.globl _switch_powerup
	.globl _select_combined_powerup
	.globl _wait_button_release
	.globl _wait_button_press
	.globl _load_standard_palettes
	.globl _draw_score_display
	.globl _increment_score_display
	.globl _update_score_display
	.globl _init_score_display
	.globl _draw_map
	.globl _draw_map_screen
	.globl _init_map
	.globl _check_collision_against_shots
	.globl _fire_player_shot
	.globl _draw_player_shots
	.globl _handle_player_shots
	.globl _init_player_shots
	.globl _draw_actor
	.globl _move_actor
	.globl _init_actor
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _SMS_setLineCounter
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_setBGPaletteColor
	.globl _SMS_copySpritestoSAT
	.globl _SMS_finalizeSprites
	.globl _SMS_initSprites
	.globl _SMS_loadPSGaidencompressedTilesatAddr
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _rand
	.globl _frames_elapsed
	.globl _timer_delay
	.globl _enemy_spawner
	.globl _boss
	.globl _ply_ctl
	.globl _score
	.globl _timer
	.globl _time_over
	.globl _timer_label
	.globl _powerup
	.globl _icons
	.globl _enemy_shots
	.globl _enemies
	.globl _player
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _update_score
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
G$player$0_0$0==.
_player::
	.ds 29
G$enemies$0_0$0==.
_enemies::
	.ds 87
G$enemy_shots$0_0$0==.
_enemy_shots::
	.ds 464
G$icons$0_0$0==.
_icons::
	.ds 58
G$powerup$0_0$0==.
_powerup::
	.ds 29
G$timer_label$0_0$0==.
_timer_label::
	.ds 29
G$time_over$0_0$0==.
_time_over::
	.ds 29
G$timer$0_0$0==.
_timer::
	.ds 12
G$score$0_0$0==.
_score::
	.ds 12
G$ply_ctl$0_0$0==.
_ply_ctl::
	.ds 8
G$boss$0_0$0==.
_boss::
	.ds 13
G$enemy_spawner$0_0$0==.
_enemy_spawner::
	.ds 8
G$timer_delay$0_0$0==.
_timer_delay::
	.ds 1
G$frames_elapsed$0_0$0==.
_frames_elapsed::
	.ds 1
Ldragon_blaster.handle_player_input$joy$1_0$170==.
_handle_player_input_joy_65536_170:
	.ds 1
Ldragon_blaster.is_colliding_against_player$act$1_0$183==.
_is_colliding_against_player_act_65536_183:
	.ds 2
Ldragon_blaster.is_colliding_against_player$act_x$1_0$183==.
_is_colliding_against_player_act_x_65536_183:
	.ds 2
Ldragon_blaster.is_colliding_against_player$act_y$1_0$183==.
_is_colliding_against_player_act_y_65536_183:
	.ds 2
Ldragon_blaster.init_enemies$enm$1_0$185==.
_init_enemies_enm_65536_185:
	.ds 2
Ldragon_blaster.handle_enemies$enm$1_0$188==.
_handle_enemies_enm_65536_188:
	.ds 2
Ldragon_blaster.handle_enemies$sht$1_0$188==.
_handle_enemies_sht_65536_188:
	.ds 2
Ldragon_blaster.draw_enemies$enm$1_0$200==.
_draw_enemies_enm_65536_200:
	.ds 2
Ldragon_blaster.handle_icons$tile$1_0$213==.
_handle_icons_tile_65536_213:
	.ds 2
Ldragon_blaster.init_enemy_shots$sht$1_0$234==.
_init_enemy_shots_sht_65536_234:
	.ds 2
Ldragon_blaster.handle_enemy_shots$sht$1_0$237==.
_handle_enemy_shots_sht_65536_237:
	.ds 2
Ldragon_blaster.draw_enemy_shots$sht$1_0$241==.
_draw_enemy_shots_sht_65536_241:
	.ds 2
Ldragon_blaster.fire_enemy_shot$sht$1_0$245==.
_fire_enemy_shot_sht_65536_245:
	.ds 2
Ldragon_blaster.fire_enemy_shot$shots_to_fire$1_0$245==.
_fire_enemy_shot_shots_to_fire_65536_245:
	.ds 1
Ldragon_blaster.fire_enemy_shot$fired$1_0$245==.
_fire_enemy_shot_fired_65536_245:
	.ds 1
Ldragon_blaster.fire_enemy_shot$info$1_0$245==.
_fire_enemy_shot_info_65536_245:
	.ds 2
Ldragon_blaster.fire_enemy_shot$path$1_0$245==.
_fire_enemy_shot_path_65536_245:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$load_standard_palettes$0$0	= .
	.globl	G$load_standard_palettes$0$0
	C$dragon_blaster.c$89$0_0$155	= .
	.globl	C$dragon_blaster.c$89$0_0$155
;dragon_blaster.c:89: void load_standard_palettes()
;	---------------------------------
; Function load_standard_palettes
; ---------------------------------
_load_standard_palettes::
	C$dragon_blaster.c$91$1_0$155	= .
	.globl	C$dragon_blaster.c$91$1_0$155
;dragon_blaster.c:91: SMS_loadBGPalette(tileset_palette_bin);
	ld	hl, #_tileset_palette_bin
	call	_SMS_loadBGPalette
	C$dragon_blaster.c$92$1_0$155	= .
	.globl	C$dragon_blaster.c$92$1_0$155
;dragon_blaster.c:92: SMS_loadSpritePalette(sprites_palette_bin);
	ld	hl, #_sprites_palette_bin
	call	_SMS_loadSpritePalette
	C$dragon_blaster.c$93$1_0$155	= .
	.globl	C$dragon_blaster.c$93$1_0$155
;dragon_blaster.c:93: SMS_setSpritePaletteColor(0, 0);
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
	C$dragon_blaster.c$94$1_0$155	= .
	.globl	C$dragon_blaster.c$94$1_0$155
;dragon_blaster.c:94: }
	C$dragon_blaster.c$94$1_0$155	= .
	.globl	C$dragon_blaster.c$94$1_0$155
	XG$load_standard_palettes$0$0	= .
	.globl	XG$load_standard_palettes$0$0
	ret
	G$wait_button_press$0$0	= .
	.globl	G$wait_button_press$0$0
	C$dragon_blaster.c$98$1_0$157	= .
	.globl	C$dragon_blaster.c$98$1_0$157
;dragon_blaster.c:98: void wait_button_press()
;	---------------------------------
; Function wait_button_press
; ---------------------------------
_wait_button_press::
	C$dragon_blaster.c$100$1_0$157	= .
	.globl	C$dragon_blaster.c$100$1_0$157
;dragon_blaster.c:100: do
00101$:
	C$dragon_blaster.c$102$2_0$158	= .
	.globl	C$dragon_blaster.c$102$2_0$158
;dragon_blaster.c:102: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$dragon_blaster.c$103$1_0$157	= .
	.globl	C$dragon_blaster.c$103$1_0$157
;dragon_blaster.c:103: } while (!(SMS_getKeysStatus() & (PORT_A_KEY_1 | PORT_A_KEY_2)));
	call	_SMS_getKeysStatus
	ld	a, l
	and	a, #0x30
	jr	Z, 00101$
	C$dragon_blaster.c$104$1_0$157	= .
	.globl	C$dragon_blaster.c$104$1_0$157
;dragon_blaster.c:104: }
	C$dragon_blaster.c$104$1_0$157	= .
	.globl	C$dragon_blaster.c$104$1_0$157
	XG$wait_button_press$0$0	= .
	.globl	XG$wait_button_press$0$0
	ret
	G$wait_button_release$0$0	= .
	.globl	G$wait_button_release$0$0
	C$dragon_blaster.c$106$1_0$159	= .
	.globl	C$dragon_blaster.c$106$1_0$159
;dragon_blaster.c:106: void wait_button_release()
;	---------------------------------
; Function wait_button_release
; ---------------------------------
_wait_button_release::
	C$dragon_blaster.c$108$1_0$159	= .
	.globl	C$dragon_blaster.c$108$1_0$159
;dragon_blaster.c:108: do
00101$:
	C$dragon_blaster.c$110$2_0$160	= .
	.globl	C$dragon_blaster.c$110$2_0$160
;dragon_blaster.c:110: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$dragon_blaster.c$111$1_0$159	= .
	.globl	C$dragon_blaster.c$111$1_0$159
;dragon_blaster.c:111: } while (SMS_getKeysStatus() & (PORT_A_KEY_1 | PORT_A_KEY_2));
	call	_SMS_getKeysStatus
	ld	a, l
	and	a, #0x30
	jr	NZ, 00101$
	C$dragon_blaster.c$112$1_0$159	= .
	.globl	C$dragon_blaster.c$112$1_0$159
;dragon_blaster.c:112: }
	C$dragon_blaster.c$112$1_0$159	= .
	.globl	C$dragon_blaster.c$112$1_0$159
	XG$wait_button_release$0$0	= .
	.globl	XG$wait_button_release$0$0
	ret
	G$select_combined_powerup$0$0	= .
	.globl	G$select_combined_powerup$0$0
	C$dragon_blaster.c$114$1_0$161	= .
	.globl	C$dragon_blaster.c$114$1_0$161
;dragon_blaster.c:114: void select_combined_powerup()
;	---------------------------------
; Function select_combined_powerup
; ---------------------------------
_select_combined_powerup::
	C$dragon_blaster.c$116$1_0$161	= .
	.globl	C$dragon_blaster.c$116$1_0$161
;dragon_blaster.c:116: switch (ply_ctl.powerup1)
	ld	hl, #_ply_ctl + 3
	ld	e, (hl)
	C$dragon_blaster.c$119$1_0$161	= .
	.globl	C$dragon_blaster.c$119$1_0$161
;dragon_blaster.c:119: switch (ply_ctl.powerup2)
	ld	bc, #_ply_ctl + 4
	C$dragon_blaster.c$122$1_0$161	= .
	.globl	C$dragon_blaster.c$122$1_0$161
;dragon_blaster.c:122: ply_ctl.shot_type = 3;
	ld	hl, #_ply_ctl + 1
	C$dragon_blaster.c$116$1_0$161	= .
	.globl	C$dragon_blaster.c$116$1_0$161
;dragon_blaster.c:116: switch (ply_ctl.powerup1)
	ld	a, e
	dec	a
	jr	Z, 00101$
	ld	a,e
	cp	a,#0x02
	jr	Z, 00106$
	sub	a, #0x03
	jr	Z, 00111$
	ret
	C$dragon_blaster.c$118$2_0$162	= .
	.globl	C$dragon_blaster.c$118$2_0$162
;dragon_blaster.c:118: case POWERUP_LIGHTINING:
00101$:
	C$dragon_blaster.c$119$2_0$162	= .
	.globl	C$dragon_blaster.c$119$2_0$162
;dragon_blaster.c:119: switch (ply_ctl.powerup2)
	ld	a, (bc)
	cp	a, #0x01
	jr	Z, 00102$
	cp	a, #0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	ret
	C$dragon_blaster.c$121$3_0$163	= .
	.globl	C$dragon_blaster.c$121$3_0$163
;dragon_blaster.c:121: case POWERUP_LIGHTINING:
00102$:
	C$dragon_blaster.c$122$3_0$163	= .
	.globl	C$dragon_blaster.c$122$3_0$163
;dragon_blaster.c:122: ply_ctl.shot_type = 3;
	ld	(hl), #0x03
	C$dragon_blaster.c$123$3_0$163	= .
	.globl	C$dragon_blaster.c$123$3_0$163
;dragon_blaster.c:123: break; // Thunderstrike
	ret
	C$dragon_blaster.c$124$3_0$163	= .
	.globl	C$dragon_blaster.c$124$3_0$163
;dragon_blaster.c:124: case POWERUP_FIRE:
00103$:
	C$dragon_blaster.c$125$3_0$163	= .
	.globl	C$dragon_blaster.c$125$3_0$163
;dragon_blaster.c:125: ply_ctl.shot_type = 6;
	ld	(hl), #0x06
	C$dragon_blaster.c$126$3_0$163	= .
	.globl	C$dragon_blaster.c$126$3_0$163
;dragon_blaster.c:126: break; // Firebolt
	ret
	C$dragon_blaster.c$127$3_0$163	= .
	.globl	C$dragon_blaster.c$127$3_0$163
;dragon_blaster.c:127: case POWERUP_WIND:
00104$:
	C$dragon_blaster.c$128$3_0$163	= .
	.globl	C$dragon_blaster.c$128$3_0$163
;dragon_blaster.c:128: ply_ctl.shot_type = 7;
	ld	(hl), #0x07
	C$dragon_blaster.c$131$2_0$162	= .
	.globl	C$dragon_blaster.c$131$2_0$162
;dragon_blaster.c:131: break;
	ret
	C$dragon_blaster.c$133$2_0$162	= .
	.globl	C$dragon_blaster.c$133$2_0$162
;dragon_blaster.c:133: case POWERUP_FIRE:
00106$:
	C$dragon_blaster.c$134$2_0$162	= .
	.globl	C$dragon_blaster.c$134$2_0$162
;dragon_blaster.c:134: switch (ply_ctl.powerup2)
	ld	a, (bc)
	cp	a, #0x01
	jr	Z, 00107$
	cp	a, #0x02
	jr	Z, 00108$
	sub	a, #0x03
	jr	Z, 00109$
	ret
	C$dragon_blaster.c$136$3_0$164	= .
	.globl	C$dragon_blaster.c$136$3_0$164
;dragon_blaster.c:136: case POWERUP_LIGHTINING:
00107$:
	C$dragon_blaster.c$137$3_0$164	= .
	.globl	C$dragon_blaster.c$137$3_0$164
;dragon_blaster.c:137: ply_ctl.shot_type = 6;
	ld	(hl), #0x06
	C$dragon_blaster.c$138$3_0$164	= .
	.globl	C$dragon_blaster.c$138$3_0$164
;dragon_blaster.c:138: break; // Firebolt
	ret
	C$dragon_blaster.c$139$3_0$164	= .
	.globl	C$dragon_blaster.c$139$3_0$164
;dragon_blaster.c:139: case POWERUP_FIRE:
00108$:
	C$dragon_blaster.c$140$3_0$164	= .
	.globl	C$dragon_blaster.c$140$3_0$164
;dragon_blaster.c:140: ply_ctl.shot_type = 4;
	ld	(hl), #0x04
	C$dragon_blaster.c$141$3_0$164	= .
	.globl	C$dragon_blaster.c$141$3_0$164
;dragon_blaster.c:141: break; // Hellfire
	ret
	C$dragon_blaster.c$142$3_0$164	= .
	.globl	C$dragon_blaster.c$142$3_0$164
;dragon_blaster.c:142: case POWERUP_WIND:
00109$:
	C$dragon_blaster.c$143$3_0$164	= .
	.globl	C$dragon_blaster.c$143$3_0$164
;dragon_blaster.c:143: ply_ctl.shot_type = 8;
	ld	(hl), #0x08
	C$dragon_blaster.c$146$2_0$162	= .
	.globl	C$dragon_blaster.c$146$2_0$162
;dragon_blaster.c:146: break;
	ret
	C$dragon_blaster.c$148$2_0$162	= .
	.globl	C$dragon_blaster.c$148$2_0$162
;dragon_blaster.c:148: case POWERUP_WIND:
00111$:
	C$dragon_blaster.c$149$2_0$162	= .
	.globl	C$dragon_blaster.c$149$2_0$162
;dragon_blaster.c:149: switch (ply_ctl.powerup2)
	ld	a, (bc)
	cp	a, #0x01
	jr	Z, 00112$
	cp	a, #0x02
	jr	Z, 00113$
	sub	a, #0x03
	jr	Z, 00114$
	ret
	C$dragon_blaster.c$151$3_0$165	= .
	.globl	C$dragon_blaster.c$151$3_0$165
;dragon_blaster.c:151: case POWERUP_LIGHTINING:
00112$:
	C$dragon_blaster.c$152$3_0$165	= .
	.globl	C$dragon_blaster.c$152$3_0$165
;dragon_blaster.c:152: ply_ctl.shot_type = 7;
	ld	(hl), #0x07
	C$dragon_blaster.c$153$3_0$165	= .
	.globl	C$dragon_blaster.c$153$3_0$165
;dragon_blaster.c:153: break; // Thunderstorm
	ret
	C$dragon_blaster.c$154$3_0$165	= .
	.globl	C$dragon_blaster.c$154$3_0$165
;dragon_blaster.c:154: case POWERUP_FIRE:
00113$:
	C$dragon_blaster.c$155$3_0$165	= .
	.globl	C$dragon_blaster.c$155$3_0$165
;dragon_blaster.c:155: ply_ctl.shot_type = 8;
	ld	(hl), #0x08
	C$dragon_blaster.c$156$3_0$165	= .
	.globl	C$dragon_blaster.c$156$3_0$165
;dragon_blaster.c:156: break; // Firestorm
	ret
	C$dragon_blaster.c$157$3_0$165	= .
	.globl	C$dragon_blaster.c$157$3_0$165
;dragon_blaster.c:157: case POWERUP_WIND:
00114$:
	C$dragon_blaster.c$158$3_0$165	= .
	.globl	C$dragon_blaster.c$158$3_0$165
;dragon_blaster.c:158: ply_ctl.shot_type = 5;
	ld	(hl), #0x05
	C$dragon_blaster.c$162$1_0$161	= .
	.globl	C$dragon_blaster.c$162$1_0$161
;dragon_blaster.c:162: }
	C$dragon_blaster.c$163$1_0$161	= .
	.globl	C$dragon_blaster.c$163$1_0$161
;dragon_blaster.c:163: }
	C$dragon_blaster.c$163$1_0$161	= .
	.globl	C$dragon_blaster.c$163$1_0$161
	XG$select_combined_powerup$0$0	= .
	.globl	XG$select_combined_powerup$0$0
	ret
	G$switch_powerup$0$0	= .
	.globl	G$switch_powerup$0$0
	C$dragon_blaster.c$165$1_0$166	= .
	.globl	C$dragon_blaster.c$165$1_0$166
;dragon_blaster.c:165: void switch_powerup()
;	---------------------------------
; Function switch_powerup
; ---------------------------------
_switch_powerup::
	C$dragon_blaster.c$167$1_0$166	= .
	.globl	C$dragon_blaster.c$167$1_0$166
;dragon_blaster.c:167: if (ply_ctl.powerup1_active && ply_ctl.powerup2_active)
	ld	hl, #_ply_ctl + 5
	ld	c, (hl)
	ld	de, #_ply_ctl + 6
	C$dragon_blaster.c$172$1_0$166	= .
	.globl	C$dragon_blaster.c$172$1_0$166
;dragon_blaster.c:172: ply_ctl.shot_type = ply_ctl.powerup1 - 1;
	C$dragon_blaster.c$167$1_0$166	= .
	.globl	C$dragon_blaster.c$167$1_0$166
;dragon_blaster.c:167: if (ply_ctl.powerup1_active && ply_ctl.powerup2_active)
	ld	a, c
	or	a, a
	jr	Z, 00105$
	ld	a, (de)
	or	a, a
	jr	Z, 00105$
	C$dragon_blaster.c$170$2_0$167	= .
	.globl	C$dragon_blaster.c$170$2_0$167
;dragon_blaster.c:170: ply_ctl.powerup1_active = 1;
	ld	(hl), #0x01
	C$dragon_blaster.c$171$2_0$167	= .
	.globl	C$dragon_blaster.c$171$2_0$167
;dragon_blaster.c:171: ply_ctl.powerup2_active = 0;
	xor	a, a
	ld	(de), a
	C$dragon_blaster.c$172$2_0$167	= .
	.globl	C$dragon_blaster.c$172$2_0$167
;dragon_blaster.c:172: ply_ctl.shot_type = ply_ctl.powerup1 - 1;
	ld	a, (#_ply_ctl + 3)
	dec	a
	ld	hl, #(_ply_ctl + 0x0001)
	ld	(hl), a
	ret
00105$:
	C$dragon_blaster.c$174$1_0$166	= .
	.globl	C$dragon_blaster.c$174$1_0$166
;dragon_blaster.c:174: else if (ply_ctl.powerup1_active)
	ld	a, c
	or	a, a
	jr	Z, 00102$
	C$dragon_blaster.c$177$2_0$168	= .
	.globl	C$dragon_blaster.c$177$2_0$168
;dragon_blaster.c:177: ply_ctl.powerup1_active = 0;
	ld	(hl), #0x00
	C$dragon_blaster.c$178$2_0$168	= .
	.globl	C$dragon_blaster.c$178$2_0$168
;dragon_blaster.c:178: ply_ctl.powerup2_active = 1;
	ld	a, #0x01
	ld	(de), a
	C$dragon_blaster.c$179$2_0$168	= .
	.globl	C$dragon_blaster.c$179$2_0$168
;dragon_blaster.c:179: ply_ctl.shot_type = ply_ctl.powerup2 - 1;
	ld	a, (#_ply_ctl + 4)
	dec	a
	ld	hl, #(_ply_ctl + 0x0001)
	ld	(hl), a
	ret
00102$:
	C$dragon_blaster.c$184$2_0$169	= .
	.globl	C$dragon_blaster.c$184$2_0$169
;dragon_blaster.c:184: ply_ctl.powerup1_active = 1;
	C$dragon_blaster.c$185$2_0$169	= .
	.globl	C$dragon_blaster.c$185$2_0$169
;dragon_blaster.c:185: ply_ctl.powerup2_active = 1;
	ld	a,#0x01
	ld	(hl),a
	ld	(de), a
	C$dragon_blaster.c$186$2_0$169	= .
	.globl	C$dragon_blaster.c$186$2_0$169
;dragon_blaster.c:186: select_combined_powerup();
	C$dragon_blaster.c$188$1_0$166	= .
	.globl	C$dragon_blaster.c$188$1_0$166
;dragon_blaster.c:188: }
	C$dragon_blaster.c$188$1_0$166	= .
	.globl	C$dragon_blaster.c$188$1_0$166
	XG$switch_powerup$0$0	= .
	.globl	XG$switch_powerup$0$0
	jp	_select_combined_powerup
	G$handle_player_input$0$0	= .
	.globl	G$handle_player_input$0$0
	C$dragon_blaster.c$190$1_0$170	= .
	.globl	C$dragon_blaster.c$190$1_0$170
;dragon_blaster.c:190: void handle_player_input()
;	---------------------------------
; Function handle_player_input
; ---------------------------------
_handle_player_input::
	C$dragon_blaster.c$193$1_0$170	= .
	.globl	C$dragon_blaster.c$193$1_0$170
;dragon_blaster.c:193: joy = SMS_getKeysStatus();
	call	_SMS_getKeysStatus
	C$dragon_blaster.c$195$1_0$170	= .
	.globl	C$dragon_blaster.c$195$1_0$170
;dragon_blaster.c:195: if (joy & PORT_A_KEY_LEFT)
	ld	a, l
	ld	(#_handle_player_input_joy_65536_170), a
	ld	c, l
	bit	2, c
	jr	Z, 00108$
	C$dragon_blaster.c$197$2_0$171	= .
	.globl	C$dragon_blaster.c$197$2_0$171
;dragon_blaster.c:197: if (player.x > PLAYER_LEFT)
	ld	hl, (#(_player + 0x0001) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00218$
	xor	a, #0x80
00218$:
	jp	P, 00109$
	C$dragon_blaster.c$198$2_0$171	= .
	.globl	C$dragon_blaster.c$198$2_0$171
;dragon_blaster.c:198: player.x -= PLAYER_SPEED;
	ld	a, l
	add	a, #0xfd
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	((_player + 0x0001)), bc
	jr	00109$
00108$:
	C$dragon_blaster.c$200$1_0$170	= .
	.globl	C$dragon_blaster.c$200$1_0$170
;dragon_blaster.c:200: else if (joy & PORT_A_KEY_RIGHT)
	bit	3, c
	jr	Z, 00109$
	C$dragon_blaster.c$202$2_0$172	= .
	.globl	C$dragon_blaster.c$202$2_0$172
;dragon_blaster.c:202: if (player.x < PLAYER_RIGHT)
	ld	hl, #_player+1
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0xf0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00109$
	C$dragon_blaster.c$203$2_0$172	= .
	.globl	C$dragon_blaster.c$203$2_0$172
;dragon_blaster.c:203: player.x += PLAYER_SPEED;
	inc	bc
	inc	bc
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
00109$:
	C$dragon_blaster.c$195$1_0$170	= .
	.globl	C$dragon_blaster.c$195$1_0$170
;dragon_blaster.c:195: if (joy & PORT_A_KEY_LEFT)
	ld	a,(#_handle_player_input_joy_65536_170 + 0)
	C$dragon_blaster.c$206$1_0$170	= .
	.globl	C$dragon_blaster.c$206$1_0$170
;dragon_blaster.c:206: if (joy & PORT_A_KEY_UP)
	bit	0, a
	jr	Z, 00117$
	C$dragon_blaster.c$208$2_0$173	= .
	.globl	C$dragon_blaster.c$208$2_0$173
;dragon_blaster.c:208: if (player.y > PLAYER_TOP)
	ld	hl, (#(_player + 0x0003) + 0)
	xor	a, a
	cp	a, l
	sbc	a, h
	jp	PO, 00221$
	xor	a, #0x80
00221$:
	jp	P, 00118$
	C$dragon_blaster.c$209$2_0$173	= .
	.globl	C$dragon_blaster.c$209$2_0$173
;dragon_blaster.c:209: player.y -= PLAYER_SPEED;
	ld	a, l
	add	a, #0xfd
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	((_player + 0x0003)), bc
	jr	00118$
00117$:
	C$dragon_blaster.c$211$1_0$170	= .
	.globl	C$dragon_blaster.c$211$1_0$170
;dragon_blaster.c:211: else if (joy & PORT_A_KEY_DOWN)
	bit	1, a
	jr	Z, 00118$
	C$dragon_blaster.c$213$2_0$174	= .
	.globl	C$dragon_blaster.c$213$2_0$174
;dragon_blaster.c:213: if (player.y < PLAYER_BOTTOM)
	ld	hl, #_player+3
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	sub	a, #0xb0
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC, 00118$
	C$dragon_blaster.c$214$2_0$174	= .
	.globl	C$dragon_blaster.c$214$2_0$174
;dragon_blaster.c:214: player.y += PLAYER_SPEED;
	inc	bc
	inc	bc
	inc	bc
	ld	a, b
	ld	(hl), c
	inc	hl
	ld	(hl), a
00118$:
	C$dragon_blaster.c$217$1_0$170	= .
	.globl	C$dragon_blaster.c$217$1_0$170
;dragon_blaster.c:217: if (joy & PORT_A_KEY_2)
	ld	a,(#_handle_player_input_joy_65536_170 + 0)
	bit	5, a
	jr	Z, 00124$
	C$dragon_blaster.c$219$2_0$175	= .
	.globl	C$dragon_blaster.c$219$2_0$175
;dragon_blaster.c:219: if (!ply_ctl.shot_delay)
	ld	a, (#_ply_ctl + 0)
	or	a, a
	jr	NZ, 00124$
	C$dragon_blaster.c$221$3_0$176	= .
	.globl	C$dragon_blaster.c$221$3_0$176
;dragon_blaster.c:221: if (fire_player_shot(&player, ply_ctl.shot_type))
	ld	hl, #(_ply_ctl + 0x0001)
	ld	b, (hl)
	push	bc
	inc	sp
	ld	hl, #_player
	push	hl
	call	_fire_player_shot
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z, 00124$
	C$dragon_blaster.c$223$4_0$177	= .
	.globl	C$dragon_blaster.c$223$4_0$177
;dragon_blaster.c:223: ply_ctl.shot_delay = player_shot_infos[ply_ctl.shot_type].firing_delay;
	ld	bc, #_player_shot_infos+0
	ld	a, (#(_ply_ctl + 0x0001) + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	hl, #_ply_ctl
	ld	(hl), a
00124$:
	C$dragon_blaster.c$228$1_0$170	= .
	.globl	C$dragon_blaster.c$228$1_0$170
;dragon_blaster.c:228: if (joy & PORT_A_KEY_1)
	ld	a,(#_handle_player_input_joy_65536_170 + 0)
	bit	4, a
	jr	Z, 00129$
	C$dragon_blaster.c$230$2_0$178	= .
	.globl	C$dragon_blaster.c$230$2_0$178
;dragon_blaster.c:230: if (!ply_ctl.pressed_shot_selection && ply_ctl.powerup2)
	ld	a, (#(_ply_ctl + 0x0002) + 0)
	or	a, a
	jr	NZ, 00130$
	ld	a, (#_ply_ctl + 4)
	or	a, a
	jr	Z, 00130$
	C$dragon_blaster.c$232$3_0$179	= .
	.globl	C$dragon_blaster.c$232$3_0$179
;dragon_blaster.c:232: switch_powerup();
	call	_switch_powerup
	C$dragon_blaster.c$233$3_0$179	= .
	.globl	C$dragon_blaster.c$233$3_0$179
;dragon_blaster.c:233: ply_ctl.pressed_shot_selection = 1;
	ld	hl, #(_ply_ctl + 0x0002)
	ld	(hl), #0x01
	jr	00130$
00129$:
	C$dragon_blaster.c$238$2_0$180	= .
	.globl	C$dragon_blaster.c$238$2_0$180
;dragon_blaster.c:238: ply_ctl.pressed_shot_selection = 0;
	ld	hl, #(_ply_ctl + 0x0002)
	ld	(hl), #0x00
00130$:
	C$dragon_blaster.c$241$1_0$170	= .
	.globl	C$dragon_blaster.c$241$1_0$170
;dragon_blaster.c:241: if (ply_ctl.shot_delay)
	ld	bc, #_ply_ctl+0
	ld	a, (bc)
	or	a, a
	jr	Z, 00132$
	C$dragon_blaster.c$242$1_0$170	= .
	.globl	C$dragon_blaster.c$242$1_0$170
;dragon_blaster.c:242: ply_ctl.shot_delay--;
	dec	a
	ld	(bc), a
00132$:
	C$dragon_blaster.c$243$1_0$170	= .
	.globl	C$dragon_blaster.c$243$1_0$170
;dragon_blaster.c:243: if (ply_ctl.death_delay)
	ld	bc, #_ply_ctl+7
	ld	a, (bc)
	or	a, a
	ret	Z
	C$dragon_blaster.c$244$1_0$170	= .
	.globl	C$dragon_blaster.c$244$1_0$170
;dragon_blaster.c:244: ply_ctl.death_delay--;
	dec	a
	ld	(bc), a
	C$dragon_blaster.c$245$1_0$170	= .
	.globl	C$dragon_blaster.c$245$1_0$170
;dragon_blaster.c:245: }
	C$dragon_blaster.c$245$1_0$170	= .
	.globl	C$dragon_blaster.c$245$1_0$170
	XG$handle_player_input$0$0	= .
	.globl	XG$handle_player_input$0$0
	ret
	G$draw_player$0$0	= .
	.globl	G$draw_player$0$0
	C$dragon_blaster.c$247$1_0$181	= .
	.globl	C$dragon_blaster.c$247$1_0$181
;dragon_blaster.c:247: void draw_player()
;	---------------------------------
; Function draw_player
; ---------------------------------
_draw_player::
	C$dragon_blaster.c$249$1_0$181	= .
	.globl	C$dragon_blaster.c$249$1_0$181
;dragon_blaster.c:249: if (!(ply_ctl.death_delay & 0x08))
	ld	a, (#(_ply_ctl + 0x0007) + 0)
	bit	3, a
	ret	NZ
	C$dragon_blaster.c$250$1_0$181	= .
	.globl	C$dragon_blaster.c$250$1_0$181
;dragon_blaster.c:250: draw_actor(&player);
	ld	hl, #_player
	push	hl
	call	_draw_actor
	pop	af
	C$dragon_blaster.c$251$1_0$181	= .
	.globl	C$dragon_blaster.c$251$1_0$181
;dragon_blaster.c:251: }
	C$dragon_blaster.c$251$1_0$181	= .
	.globl	C$dragon_blaster.c$251$1_0$181
	XG$draw_player$0$0	= .
	.globl	XG$draw_player$0$0
	ret
	G$is_colliding_against_player$0$0	= .
	.globl	G$is_colliding_against_player$0$0
	C$dragon_blaster.c$253$1_0$183	= .
	.globl	C$dragon_blaster.c$253$1_0$183
;dragon_blaster.c:253: char is_colliding_against_player(actor *_act)
;	---------------------------------
; Function is_colliding_against_player
; ---------------------------------
_is_colliding_against_player::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$dragon_blaster.c$258$1_0$183	= .
	.globl	C$dragon_blaster.c$258$1_0$183
;dragon_blaster.c:258: act = _act;
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	(_is_colliding_against_player_act_65536_183), hl
	C$dragon_blaster.c$259$1_0$183	= .
	.globl	C$dragon_blaster.c$259$1_0$183
;dragon_blaster.c:259: act_x = act->x;
	ld	bc, (_is_colliding_against_player_act_65536_183)
	ld	l, c
	ld	h, b
	inc	hl
	ld	a, (hl)
	ld	(_is_colliding_against_player_act_x_65536_183+0), a
	inc	hl
	ld	a, (hl)
	ld	(_is_colliding_against_player_act_x_65536_183+1), a
	C$dragon_blaster.c$260$1_0$183	= .
	.globl	C$dragon_blaster.c$260$1_0$183
;dragon_blaster.c:260: act_y = act->y;
	ld	hl, #3
	add	hl, bc
	ld	a, (hl)
	ld	(_is_colliding_against_player_act_y_65536_183+0), a
	inc	hl
	ld	a, (hl)
	ld	(_is_colliding_against_player_act_y_65536_183+1), a
	C$dragon_blaster.c$262$1_0$183	= .
	.globl	C$dragon_blaster.c$262$1_0$183
;dragon_blaster.c:262: if (player.x > act_x - 12 && player.x < act_x + 12 &&
	ld	bc, (#_player + 1)
	ld	iy, #_is_colliding_against_player_act_x_65536_183
	ld	a, 0 (iy)
	add	a, #0xf4
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00128$
	xor	a, #0x80
00128$:
	jp	P, 00102$
	ld	hl, (_is_colliding_against_player_act_x_65536_183)
	ld	de, #0x000c
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P, 00102$
	C$dragon_blaster.c$263$1_0$183	= .
	.globl	C$dragon_blaster.c$263$1_0$183
;dragon_blaster.c:263: player.y > act_y - 12 && player.y < act_y + 12)
	ld	bc, (#_player + 3)
	ld	iy, #_is_colliding_against_player_act_y_65536_183
	ld	a, 0 (iy)
	add	a, #0xf4
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P, 00102$
	ld	hl, (_is_colliding_against_player_act_y_65536_183)
	ld	de, #0x000c
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P, 00102$
	C$dragon_blaster.c$265$2_0$184	= .
	.globl	C$dragon_blaster.c$265$2_0$184
;dragon_blaster.c:265: return 1;
	ld	l, #0x01
	jr	00106$
00102$:
	C$dragon_blaster.c$268$1_0$183	= .
	.globl	C$dragon_blaster.c$268$1_0$183
;dragon_blaster.c:268: return 0;
	ld	l, #0x00
00106$:
	C$dragon_blaster.c$269$1_0$183	= .
	.globl	C$dragon_blaster.c$269$1_0$183
;dragon_blaster.c:269: }
	pop	ix
	C$dragon_blaster.c$269$1_0$183	= .
	.globl	C$dragon_blaster.c$269$1_0$183
	XG$is_colliding_against_player$0$0	= .
	.globl	XG$is_colliding_against_player$0$0
	ret
	G$init_enemies$0$0	= .
	.globl	G$init_enemies$0$0
	C$dragon_blaster.c$271$1_0$185	= .
	.globl	C$dragon_blaster.c$271$1_0$185
;dragon_blaster.c:271: void init_enemies()
;	---------------------------------
; Function init_enemies
; ---------------------------------
_init_enemies::
	C$dragon_blaster.c$275$1_0$185	= .
	.globl	C$dragon_blaster.c$275$1_0$185
;dragon_blaster.c:275: enemy_spawner.x = 0;
	ld	hl, #(_enemy_spawner + 0x0001)
	ld	(hl), #0x00
	C$dragon_blaster.c$276$1_0$185	= .
	.globl	C$dragon_blaster.c$276$1_0$185
;dragon_blaster.c:276: enemy_spawner.delay = 0;
	ld	hl, #(_enemy_spawner + 0x0003)
	ld	(hl), #0x00
	C$dragon_blaster.c$277$1_0$185	= .
	.globl	C$dragon_blaster.c$277$1_0$185
;dragon_blaster.c:277: enemy_spawner.next = 0;
	ld	hl, #(_enemy_spawner + 0x0004)
	ld	(hl), #0x00
	C$dragon_blaster.c$279$1_0$185	= .
	.globl	C$dragon_blaster.c$279$1_0$185
;dragon_blaster.c:279: FOR_EACH_ENEMY(enm)
	ld	hl, #_enemies+0
	ld	(_init_enemies_enm_65536_185), hl
	ld	bc, #0x0003
00103$:
	ld	a, b
	or	a, c
	ret	Z
	C$dragon_blaster.c$281$3_0$187	= .
	.globl	C$dragon_blaster.c$281$3_0$187
;dragon_blaster.c:281: enm->active = 0;
	ld	hl, (_init_enemies_enm_65536_185)
	ld	(hl), #0x00
	C$dragon_blaster.c$279$2_0$186	= .
	.globl	C$dragon_blaster.c$279$2_0$186
;dragon_blaster.c:279: FOR_EACH_ENEMY(enm)
	dec	bc
	ld	hl, #_init_enemies_enm_65536_185
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jr	NC, 00103$
	inc	hl
	inc	(hl)
	C$dragon_blaster.c$283$2_0$185	= .
	.globl	C$dragon_blaster.c$283$2_0$185
;dragon_blaster.c:283: }
	C$dragon_blaster.c$283$2_0$185	= .
	.globl	C$dragon_blaster.c$283$2_0$185
	XG$init_enemies$0$0	= .
	.globl	XG$init_enemies$0$0
	jr	00103$
	G$handle_enemies$0$0	= .
	.globl	G$handle_enemies$0$0
	C$dragon_blaster.c$285$2_0$188	= .
	.globl	C$dragon_blaster.c$285$2_0$188
;dragon_blaster.c:285: void handle_enemies()
;	---------------------------------
; Function handle_enemies
; ---------------------------------
_handle_enemies::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$dragon_blaster.c$289$1_0$188	= .
	.globl	C$dragon_blaster.c$289$1_0$188
;dragon_blaster.c:289: if (enemy_spawner.delay)
	ld	bc, #_enemy_spawner+0
	ld	hl, #(_enemy_spawner + 0x0003)
	ld	e, (hl)
	C$dragon_blaster.c$293$1_0$188	= .
	.globl	C$dragon_blaster.c$293$1_0$188
;dragon_blaster.c:293: else if (enemy_spawner.next != ENEMY_MAX)
	C$dragon_blaster.c$295$1_0$188	= .
	.globl	C$dragon_blaster.c$295$1_0$188
;dragon_blaster.c:295: if (!enemy_spawner.x)
	C$dragon_blaster.c$289$1_0$188	= .
	.globl	C$dragon_blaster.c$289$1_0$188
;dragon_blaster.c:289: if (enemy_spawner.delay)
	ld	a, e
	or	a, a
	jr	Z, 00108$
	C$dragon_blaster.c$291$2_0$189	= .
	.globl	C$dragon_blaster.c$291$2_0$189
;dragon_blaster.c:291: enemy_spawner.delay--;
	dec	e
	ld	hl, #(_enemy_spawner + 0x0003)
	ld	(hl), e
	jp	00109$
00108$:
	C$dragon_blaster.c$293$1_0$188	= .
	.globl	C$dragon_blaster.c$293$1_0$188
;dragon_blaster.c:293: else if (enemy_spawner.next != ENEMY_MAX)
	ld	a, (#(_enemy_spawner + 0x0004) + 0)
	sub	a, #0x03
	jp	Z,00109$
	C$dragon_blaster.c$295$2_0$190	= .
	.globl	C$dragon_blaster.c$295$2_0$190
;dragon_blaster.c:295: if (!enemy_spawner.x)
	C$dragon_blaster.c$299$1_0$188	= .
	.globl	C$dragon_blaster.c$299$1_0$188
;dragon_blaster.c:299: enemy_spawner.flags = 0;
	C$dragon_blaster.c$300$1_0$188	= .
	.globl	C$dragon_blaster.c$300$1_0$188
;dragon_blaster.c:300: enemy_spawner.path = (path_step *)path1_path;
	C$dragon_blaster.c$295$2_0$190	= .
	.globl	C$dragon_blaster.c$295$2_0$190
;dragon_blaster.c:295: if (!enemy_spawner.x)
	ld	a, (#(_enemy_spawner + 0x0001) + 0)
	or	a, a
	jr	NZ, 00104$
	C$dragon_blaster.c$297$3_0$191	= .
	.globl	C$dragon_blaster.c$297$3_0$191
;dragon_blaster.c:297: enemy_spawner.type = rand() & 1;
	push	bc
	call	_rand
	pop	bc
	ld	a, l
	and	a, #0x01
	ld	(bc), a
	C$dragon_blaster.c$298$3_0$191	= .
	.globl	C$dragon_blaster.c$298$3_0$191
;dragon_blaster.c:298: enemy_spawner.x = 8 + rand() % 124;
	push	bc
	call	_rand
	ld	de, #0x007c
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	pop	bc
	ld	a, l
	add	a, #0x08
	ld	(#(_enemy_spawner + 0x0001)),a
	C$dragon_blaster.c$299$3_0$191	= .
	.globl	C$dragon_blaster.c$299$3_0$191
;dragon_blaster.c:299: enemy_spawner.flags = 0;
	ld	hl, #(_enemy_spawner + 0x0002)
	ld	(hl), #0x00
	C$dragon_blaster.c$300$3_0$191	= .
	.globl	C$dragon_blaster.c$300$3_0$191
;dragon_blaster.c:300: enemy_spawner.path = (path_step *)path1_path;
	ld	hl, #_path1_path
	ld	((_enemy_spawner + 0x0005)), hl
	C$dragon_blaster.c$301$3_0$191	= .
	.globl	C$dragon_blaster.c$301$3_0$191
;dragon_blaster.c:301: if (rand() & 1)
	push	bc
	call	_rand
	pop	bc
	bit	0, l
	jr	Z, 00104$
	C$dragon_blaster.c$303$4_0$192	= .
	.globl	C$dragon_blaster.c$303$4_0$192
;dragon_blaster.c:303: enemy_spawner.x += 124;
	ld	a, (#(_enemy_spawner + 0x0001) + 0)
	add	a, #0x7c
	ld	(#(_enemy_spawner + 0x0001)),a
	C$dragon_blaster.c$304$4_0$192	= .
	.globl	C$dragon_blaster.c$304$4_0$192
;dragon_blaster.c:304: enemy_spawner.flags |= PATH_FLIP_X;
	ld	a, (#(_enemy_spawner + 0x0002) + 0)
	set	0, a
	ld	(#(_enemy_spawner + 0x0002)),a
00104$:
	C$dragon_blaster.c$308$2_0$190	= .
	.globl	C$dragon_blaster.c$308$2_0$190
;dragon_blaster.c:308: enm = enemies + enemy_spawner.next;
	ld	a, (#(_enemy_spawner + 0x0004) + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_enemies
	add	hl, de
	ld	(_handle_enemies_enm_65536_188), hl
	C$dragon_blaster.c$310$2_0$190	= .
	.globl	C$dragon_blaster.c$310$2_0$190
;dragon_blaster.c:310: init_actor(enm, enemy_spawner.x, 0, 2, 1, 66, 1);
	ld	a, (#(_enemy_spawner + 0x0001) + 0)
	ld	e, a
	ld	d, #0x00
	push	bc
	ld	hl, #0x0142
	push	hl
	ld	hl, #0x0001
	push	hl
	ld	l, #0x02
	push	hl
	ld	l, h
	push	hl
	push	de
	ld	hl, (_handle_enemies_enm_65536_188)
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$dragon_blaster.c$311$2_0$190	= .
	.globl	C$dragon_blaster.c$311$2_0$190
;dragon_blaster.c:311: enm->path_flags = enemy_spawner.flags;
	ld	de, (_handle_enemies_enm_65536_188)
	ld	hl, #0x0011
	add	hl, de
	ex	de, hl
	ld	a, (#(_enemy_spawner + 0x0002) + 0)
	ld	(de), a
	C$dragon_blaster.c$312$2_0$190	= .
	.globl	C$dragon_blaster.c$312$2_0$190
;dragon_blaster.c:312: enm->path = enemy_spawner.path;
	ld	de, (_handle_enemies_enm_65536_188)
	ld	hl, #0x0012
	add	hl, de
	ex	(sp), hl
	ld	de, (#(_enemy_spawner + 0x0005) + 0)
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$dragon_blaster.c$313$2_0$190	= .
	.globl	C$dragon_blaster.c$313$2_0$190
;dragon_blaster.c:313: enm->state = enemy_spawner.type;
	ld	hl, (_handle_enemies_enm_65536_188)
	ld	de, #0x0016
	add	hl, de
	ld	a, (bc)
	ld	(hl), a
	C$dragon_blaster.c$315$2_0$190	= .
	.globl	C$dragon_blaster.c$315$2_0$190
;dragon_blaster.c:315: enemy_spawner.delay = 10;
	ld	hl, #(_enemy_spawner + 0x0003)
	ld	(hl), #0x0a
	C$dragon_blaster.c$316$2_0$190	= .
	.globl	C$dragon_blaster.c$316$2_0$190
;dragon_blaster.c:316: enemy_spawner.next++;
	ld	a, (#(_enemy_spawner + 0x0004) + 0)
	inc	a
	ld	(#(_enemy_spawner + 0x0004)),a
00109$:
	C$dragon_blaster.c$319$1_0$188	= .
	.globl	C$dragon_blaster.c$319$1_0$188
;dragon_blaster.c:319: enemy_spawner.all_dead = 1;
	ld	hl, #(_enemy_spawner + 0x0007)
	ld	(hl), #0x01
	C$dragon_blaster.c$320$1_0$188	= .
	.globl	C$dragon_blaster.c$320$1_0$188
;dragon_blaster.c:320: FOR_EACH_ENEMY(enm)
	ld	hl, #_enemies+0
	ld	(_handle_enemies_enm_65536_188), hl
	ld	hl, #0x0003
	ex	(sp), hl
00128$:
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	Z, 00124$
	C$dragon_blaster.c$322$3_0$194	= .
	.globl	C$dragon_blaster.c$322$3_0$194
;dragon_blaster.c:322: move_actor(enm);
	ld	hl, (_handle_enemies_enm_65536_188)
	push	hl
	call	_move_actor
	pop	af
	C$dragon_blaster.c$311$1_0$188	= .
	.globl	C$dragon_blaster.c$311$1_0$188
;dragon_blaster.c:311: enm->path_flags = enemy_spawner.flags;
	ld	bc, (_handle_enemies_enm_65536_188)
	C$dragon_blaster.c$324$1_0$188	= .
	.globl	C$dragon_blaster.c$324$1_0$188
;dragon_blaster.c:324: if (enm->x < -32 || enm->x > 287 || enm->y < -16 || enm->y > 192)
	ld	l, c
	ld	h, b
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0xe0
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00110$
	ld	a, #0x1f
	cp	a, e
	ld	a, #0x01
	sbc	a, d
	jp	PO, 00210$
	xor	a, #0x80
00210$:
	jp	M, 00110$
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0xf0
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x7f
	jr	C, 00110$
	ld	a, #0xc0
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00211$
	xor	a, #0x80
00211$:
	jp	P, 00111$
00110$:
	C$dragon_blaster.c$326$4_0$195	= .
	.globl	C$dragon_blaster.c$326$4_0$195
;dragon_blaster.c:326: enm->active = 0;
	xor	a, a
	ld	(bc), a
00111$:
	C$dragon_blaster.c$329$3_0$194	= .
	.globl	C$dragon_blaster.c$329$3_0$194
;dragon_blaster.c:329: if (enm->active)
	ld	hl, (_handle_enemies_enm_65536_188)
	ld	a, (hl)
	or	a, a
	jr	Z, 00121$
	C$dragon_blaster.c$331$4_0$196	= .
	.globl	C$dragon_blaster.c$331$4_0$196
;dragon_blaster.c:331: sht = check_collision_against_shots(enm);
	ld	hl, (_handle_enemies_enm_65536_188)
	push	hl
	call	_check_collision_against_shots
	pop	af
	ld	(_handle_enemies_sht_65536_188), hl
	C$dragon_blaster.c$332$4_0$196	= .
	.globl	C$dragon_blaster.c$332$4_0$196
;dragon_blaster.c:332: if (sht)
	ld	iy, #_handle_enemies_sht_65536_188
	ld	a, 1 (iy)
	or	a, 0 (iy)
	jr	Z, 00116$
	C$dragon_blaster.c$334$5_0$197	= .
	.globl	C$dragon_blaster.c$334$5_0$197
;dragon_blaster.c:334: update_score(enm, sht);
	ld	hl, (_handle_enemies_sht_65536_188)
	push	hl
	ld	hl, (_handle_enemies_enm_65536_188)
	push	hl
	call	_update_score
	pop	af
	pop	af
	C$dragon_blaster.c$335$5_0$197	= .
	.globl	C$dragon_blaster.c$335$5_0$197
;dragon_blaster.c:335: sht->active = 0;
	ld	hl, (_handle_enemies_sht_65536_188)
	ld	(hl), #0x00
	C$dragon_blaster.c$336$5_0$197	= .
	.globl	C$dragon_blaster.c$336$5_0$197
;dragon_blaster.c:336: enm->active = 0;
	ld	hl, (_handle_enemies_enm_65536_188)
	ld	(hl), #0x00
00116$:
	C$dragon_blaster.c$339$4_0$196	= .
	.globl	C$dragon_blaster.c$339$4_0$196
;dragon_blaster.c:339: if (!ply_ctl.death_delay && is_colliding_against_player(enm))
	ld	a, (#(_ply_ctl + 0x0007) + 0)
	or	a, a
	jr	NZ, 00121$
	ld	hl, (_handle_enemies_enm_65536_188)
	push	hl
	call	_is_colliding_against_player
	pop	af
	ld	a, l
	or	a, a
	jr	Z, 00121$
	C$dragon_blaster.c$341$5_0$198	= .
	.globl	C$dragon_blaster.c$341$5_0$198
;dragon_blaster.c:341: enm->active = 0;
	ld	hl, (_handle_enemies_enm_65536_188)
	ld	(hl), #0x00
	C$dragon_blaster.c$342$5_0$198	= .
	.globl	C$dragon_blaster.c$342$5_0$198
;dragon_blaster.c:342: ply_ctl.death_delay = 60;
	ld	hl, #(_ply_ctl + 0x0007)
	ld	(hl), #0x3c
00121$:
	C$dragon_blaster.c$346$3_0$194	= .
	.globl	C$dragon_blaster.c$346$3_0$194
;dragon_blaster.c:346: if (enm->active)
	ld	hl, (_handle_enemies_enm_65536_188)
	ld	a, (hl)
	or	a, a
	jr	Z, 00129$
	C$dragon_blaster.c$347$3_0$194	= .
	.globl	C$dragon_blaster.c$347$3_0$194
;dragon_blaster.c:347: enemy_spawner.all_dead = 0;
	ld	hl, #(_enemy_spawner + 0x0007)
	ld	(hl), #0x00
00129$:
	C$dragon_blaster.c$320$2_0$193	= .
	.globl	C$dragon_blaster.c$320$2_0$193
;dragon_blaster.c:320: FOR_EACH_ENEMY(enm)
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	ld	hl, #_handle_enemies_enm_65536_188
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jp	NC,00128$
	inc	hl
	inc	(hl)
	jp	00128$
00124$:
	C$dragon_blaster.c$350$1_0$188	= .
	.globl	C$dragon_blaster.c$350$1_0$188
;dragon_blaster.c:350: if (enemy_spawner.all_dead)
	ld	a, (#(_enemy_spawner + 0x0007) + 0)
	or	a, a
	jr	Z, 00130$
	C$dragon_blaster.c$352$2_0$199	= .
	.globl	C$dragon_blaster.c$352$2_0$199
;dragon_blaster.c:352: enemy_spawner.x = 0;
	ld	hl, #(_enemy_spawner + 0x0001)
	ld	(hl), #0x00
	C$dragon_blaster.c$353$2_0$199	= .
	.globl	C$dragon_blaster.c$353$2_0$199
;dragon_blaster.c:353: enemy_spawner.next = 0;
	ld	hl, #(_enemy_spawner + 0x0004)
	ld	(hl), #0x00
00130$:
	C$dragon_blaster.c$355$1_0$188	= .
	.globl	C$dragon_blaster.c$355$1_0$188
;dragon_blaster.c:355: }
	ld	sp, ix
	pop	ix
	C$dragon_blaster.c$355$1_0$188	= .
	.globl	C$dragon_blaster.c$355$1_0$188
	XG$handle_enemies$0$0	= .
	.globl	XG$handle_enemies$0$0
	ret
	G$draw_enemies$0$0	= .
	.globl	G$draw_enemies$0$0
	C$dragon_blaster.c$357$1_0$200	= .
	.globl	C$dragon_blaster.c$357$1_0$200
;dragon_blaster.c:357: void draw_enemies()
;	---------------------------------
; Function draw_enemies
; ---------------------------------
_draw_enemies::
	C$dragon_blaster.c$361$1_0$200	= .
	.globl	C$dragon_blaster.c$361$1_0$200
;dragon_blaster.c:361: FOR_EACH_ENEMY(enm)
	ld	hl, #_enemies+0
	ld	(_draw_enemies_enm_65536_200), hl
	ld	bc, #0x0003
00103$:
	ld	a, b
	or	a, c
	ret	Z
	C$dragon_blaster.c$363$3_0$202	= .
	.globl	C$dragon_blaster.c$363$3_0$202
;dragon_blaster.c:363: draw_actor(enm);
	push	bc
	ld	hl, (_draw_enemies_enm_65536_200)
	push	hl
	call	_draw_actor
	pop	af
	pop	bc
	C$dragon_blaster.c$361$2_0$201	= .
	.globl	C$dragon_blaster.c$361$2_0$201
;dragon_blaster.c:361: FOR_EACH_ENEMY(enm)
	dec	bc
	ld	hl, #_draw_enemies_enm_65536_200
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jr	NC, 00103$
	inc	hl
	inc	(hl)
	C$dragon_blaster.c$365$2_0$200	= .
	.globl	C$dragon_blaster.c$365$2_0$200
;dragon_blaster.c:365: }
	C$dragon_blaster.c$365$2_0$200	= .
	.globl	C$dragon_blaster.c$365$2_0$200
	XG$draw_enemies$0$0	= .
	.globl	XG$draw_enemies$0$0
	jr	00103$
	G$draw_background$0$0	= .
	.globl	G$draw_background$0$0
	C$dragon_blaster.c$367$2_0$203	= .
	.globl	C$dragon_blaster.c$367$2_0$203
;dragon_blaster.c:367: void draw_background()
;	---------------------------------
; Function draw_background
; ---------------------------------
_draw_background::
	C$dragon_blaster.c$369$2_0$203	= .
	.globl	C$dragon_blaster.c$369$2_0$203
;dragon_blaster.c:369: unsigned int *ch = background_tilemap_bin;
	ld	bc, #_background_tilemap_bin
	C$dragon_blaster.c$371$1_0$203	= .
	.globl	C$dragon_blaster.c$371$1_0$203
;dragon_blaster.c:371: SMS_setNextTileatXY(0, 0);
	push	bc
	ld	hl, #0x7800
	rst	#0x08
	pop	bc
	C$dragon_blaster.c$372$4_0$206	= .
	.globl	C$dragon_blaster.c$372$4_0$206
;dragon_blaster.c:372: for (char y = 0; y != 30; y++)
	ld	e, #0x00
00109$:
	ld	a, e
	sub	a, #0x1e
	ret	Z
	C$dragon_blaster.c$375$3_0$205	= .
	.globl	C$dragon_blaster.c$375$3_0$205
;dragon_blaster.c:375: if (!(y & 0x01))
	bit	0, e
	jr	NZ, 00116$
	C$dragon_blaster.c$377$4_0$206	= .
	.globl	C$dragon_blaster.c$377$4_0$206
;dragon_blaster.c:377: ch = background_tilemap_bin;
	ld	bc, #_background_tilemap_bin
	C$dragon_blaster.c$380$2_0$203	= .
	.globl	C$dragon_blaster.c$380$2_0$203
;dragon_blaster.c:380: for (char x = 0; x != 32; x++)
00116$:
	ld	d, #0x00
00106$:
	ld	a, d
	sub	a, #0x20
	jr	Z, 00118$
	C$dragon_blaster.c$382$5_0$208	= .
	.globl	C$dragon_blaster.c$382$5_0$208
;dragon_blaster.c:382: unsigned int tile_number = *ch + 256;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, h
	inc	a
	ld	h, a
	C$dragon_blaster.c$383$5_0$208	= .
	.globl	C$dragon_blaster.c$383$5_0$208
;dragon_blaster.c:383: SMS_setTile(tile_number);
	rst	#0x18
	C$dragon_blaster.c$384$5_0$208	= .
	.globl	C$dragon_blaster.c$384$5_0$208
;dragon_blaster.c:384: ch++;
	inc	bc
	inc	bc
	C$dragon_blaster.c$380$4_0$207	= .
	.globl	C$dragon_blaster.c$380$4_0$207
;dragon_blaster.c:380: for (char x = 0; x != 32; x++)
	inc	d
	jr	00106$
00118$:
	C$dragon_blaster.c$372$2_0$204	= .
	.globl	C$dragon_blaster.c$372$2_0$204
;dragon_blaster.c:372: for (char y = 0; y != 30; y++)
	inc	e
	C$dragon_blaster.c$387$2_0$203	= .
	.globl	C$dragon_blaster.c$387$2_0$203
;dragon_blaster.c:387: }
	C$dragon_blaster.c$387$2_0$203	= .
	.globl	C$dragon_blaster.c$387$2_0$203
	XG$draw_background$0$0	= .
	.globl	XG$draw_background$0$0
	jr	00109$
	G$init_powerups$0$0	= .
	.globl	G$init_powerups$0$0
	C$dragon_blaster.c$389$2_0$209	= .
	.globl	C$dragon_blaster.c$389$2_0$209
;dragon_blaster.c:389: void init_powerups()
;	---------------------------------
; Function init_powerups
; ---------------------------------
_init_powerups::
	C$dragon_blaster.c$391$1_0$209	= .
	.globl	C$dragon_blaster.c$391$1_0$209
;dragon_blaster.c:391: init_actor(icons, 256 - 32 - 8, 8, 2, 1, POWERUP_LIGHTINING_TILE, 1);
	ld	de, #0x0164
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x02
	push	hl
	ld	l, #0x08
	push	hl
	ld	l, #0xd8
	push	hl
	ld	hl, #_icons
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$392$1_0$209	= .
	.globl	C$dragon_blaster.c$392$1_0$209
;dragon_blaster.c:392: init_actor(icons + 1, 256 - 16 - 8, 8, 2, 1, POWERUP_FIRE_TILE, 1);
	ld	de, #0x016c
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x02
	push	hl
	ld	l, #0x08
	push	hl
	ld	l, #0xe8
	push	hl
	ld	hl, #(_icons + 0x001d)
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$394$1_0$209	= .
	.globl	C$dragon_blaster.c$394$1_0$209
;dragon_blaster.c:394: init_actor(&powerup, 0, 0, 2, 1, POWERUP_LIGHTINING_TILE, 2);
	ld	de, #0x0264
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x02
	push	hl
	ld	l, h
	push	hl
	ld	l, h
	push	hl
	ld	hl, #_powerup
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$395$1_0$209	= .
	.globl	C$dragon_blaster.c$395$1_0$209
;dragon_blaster.c:395: powerup.active = 0;
	ld	hl, #_powerup
	ld	(hl), #0x00
	C$dragon_blaster.c$396$1_0$209	= .
	.globl	C$dragon_blaster.c$396$1_0$209
;dragon_blaster.c:396: }
	C$dragon_blaster.c$396$1_0$209	= .
	.globl	C$dragon_blaster.c$396$1_0$209
	XG$init_powerups$0$0	= .
	.globl	XG$init_powerups$0$0
	ret
	G$powerup_base_tile$0$0	= .
	.globl	G$powerup_base_tile$0$0
	C$dragon_blaster.c$398$1_0$211	= .
	.globl	C$dragon_blaster.c$398$1_0$211
;dragon_blaster.c:398: char powerup_base_tile(char type)
;	---------------------------------
; Function powerup_base_tile
; ---------------------------------
_powerup_base_tile::
	C$dragon_blaster.c$400$1_0$211	= .
	.globl	C$dragon_blaster.c$400$1_0$211
;dragon_blaster.c:400: switch (type)
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	dec	a
	jr	Z, 00101$
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	Z, 00102$
	ld	a, 0 (iy)
	sub	a, #0x03
	jr	Z, 00103$
	jr	00104$
	C$dragon_blaster.c$402$2_0$212	= .
	.globl	C$dragon_blaster.c$402$2_0$212
;dragon_blaster.c:402: case POWERUP_LIGHTINING:
00101$:
	C$dragon_blaster.c$403$2_0$212	= .
	.globl	C$dragon_blaster.c$403$2_0$212
;dragon_blaster.c:403: return POWERUP_LIGHTINING_TILE;
	ld	l, #0x64
	ret
	C$dragon_blaster.c$404$2_0$212	= .
	.globl	C$dragon_blaster.c$404$2_0$212
;dragon_blaster.c:404: case POWERUP_FIRE:
00102$:
	C$dragon_blaster.c$405$2_0$212	= .
	.globl	C$dragon_blaster.c$405$2_0$212
;dragon_blaster.c:405: return POWERUP_FIRE_TILE;
	ld	l, #0x6c
	ret
	C$dragon_blaster.c$406$2_0$212	= .
	.globl	C$dragon_blaster.c$406$2_0$212
;dragon_blaster.c:406: case POWERUP_WIND:
00103$:
	C$dragon_blaster.c$407$2_0$212	= .
	.globl	C$dragon_blaster.c$407$2_0$212
;dragon_blaster.c:407: return POWERUP_WIND_TILE;
	ld	l, #0x74
	ret
	C$dragon_blaster.c$408$1_0$211	= .
	.globl	C$dragon_blaster.c$408$1_0$211
;dragon_blaster.c:408: }
00104$:
	C$dragon_blaster.c$410$1_0$211	= .
	.globl	C$dragon_blaster.c$410$1_0$211
;dragon_blaster.c:410: return POWERUP_NONE_TILE;
	ld	l, #0x7c
	C$dragon_blaster.c$411$1_0$211	= .
	.globl	C$dragon_blaster.c$411$1_0$211
;dragon_blaster.c:411: }
	C$dragon_blaster.c$411$1_0$211	= .
	.globl	C$dragon_blaster.c$411$1_0$211
	XG$powerup_base_tile$0$0	= .
	.globl	XG$powerup_base_tile$0$0
	ret
	G$handle_icons$0$0	= .
	.globl	G$handle_icons$0$0
	C$dragon_blaster.c$413$1_0$213	= .
	.globl	C$dragon_blaster.c$413$1_0$213
;dragon_blaster.c:413: void handle_icons()
;	---------------------------------
; Function handle_icons
; ---------------------------------
_handle_icons::
	C$dragon_blaster.c$417$1_0$213	= .
	.globl	C$dragon_blaster.c$417$1_0$213
;dragon_blaster.c:417: tile = powerup_base_tile(ply_ctl.powerup1);
	ld	a, (#_ply_ctl + 3)
	push	af
	inc	sp
	call	_powerup_base_tile
	inc	sp
	ld	a, l
	ld	(_handle_icons_tile_65536_213+0), a
	xor	a, a
	ld	(_handle_icons_tile_65536_213+1), a
	C$dragon_blaster.c$418$1_0$213	= .
	.globl	C$dragon_blaster.c$418$1_0$213
;dragon_blaster.c:418: if (!ply_ctl.powerup1_active)
	ld	a, (#_ply_ctl + 5)
	or	a, a
	jr	NZ, 00102$
	C$dragon_blaster.c$419$1_0$213	= .
	.globl	C$dragon_blaster.c$419$1_0$213
;dragon_blaster.c:419: tile += 4;
	ld	hl, #_handle_icons_tile_65536_213
	ld	a, (hl)
	add	a, #0x04
	ld	(hl), a
	jr	NC, 00123$
	inc	hl
	inc	(hl)
00123$:
00102$:
	C$dragon_blaster.c$420$1_0$213	= .
	.globl	C$dragon_blaster.c$420$1_0$213
;dragon_blaster.c:420: icons[0].base_tile = tile;
	ld	bc, #_icons + 12
	ld	a,(#_handle_icons_tile_65536_213 + 0)
	ld	(bc), a
	C$dragon_blaster.c$422$1_0$213	= .
	.globl	C$dragon_blaster.c$422$1_0$213
;dragon_blaster.c:422: tile = powerup_base_tile(ply_ctl.powerup2);
	ld	a, (#(_ply_ctl + 0x0004) + 0)
	push	af
	inc	sp
	call	_powerup_base_tile
	inc	sp
	ld	a, l
	ld	(_handle_icons_tile_65536_213+0), a
	xor	a, a
	ld	(_handle_icons_tile_65536_213+1), a
	C$dragon_blaster.c$423$1_0$213	= .
	.globl	C$dragon_blaster.c$423$1_0$213
;dragon_blaster.c:423: if (ply_ctl.powerup2 && !ply_ctl.powerup2_active)
	ld	a, (#(_ply_ctl + 0x0004) + 0)
	or	a, a
	jr	Z, 00104$
	ld	a, (#_ply_ctl + 6)
	or	a, a
	jr	NZ, 00104$
	C$dragon_blaster.c$424$1_0$213	= .
	.globl	C$dragon_blaster.c$424$1_0$213
;dragon_blaster.c:424: tile += 4;
	ld	hl, #_handle_icons_tile_65536_213
	ld	a, (hl)
	add	a, #0x04
	ld	(hl), a
	jr	NC, 00124$
	inc	hl
	inc	(hl)
00124$:
00104$:
	C$dragon_blaster.c$425$1_0$213	= .
	.globl	C$dragon_blaster.c$425$1_0$213
;dragon_blaster.c:425: icons[1].base_tile = tile;
	ld	bc, #_icons + 41
	ld	a,(#_handle_icons_tile_65536_213 + 0)
	ld	(bc), a
	C$dragon_blaster.c$426$1_0$213	= .
	.globl	C$dragon_blaster.c$426$1_0$213
;dragon_blaster.c:426: }
	C$dragon_blaster.c$426$1_0$213	= .
	.globl	C$dragon_blaster.c$426$1_0$213
	XG$handle_icons$0$0	= .
	.globl	XG$handle_icons$0$0
	ret
	G$handle_powerups$0$0	= .
	.globl	G$handle_powerups$0$0
	C$dragon_blaster.c$428$1_0$214	= .
	.globl	C$dragon_blaster.c$428$1_0$214
;dragon_blaster.c:428: void handle_powerups()
;	---------------------------------
; Function handle_powerups
; ---------------------------------
_handle_powerups::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$dragon_blaster.c$430$1_0$214	= .
	.globl	C$dragon_blaster.c$430$1_0$214
;dragon_blaster.c:430: powerup.y++;
	ld	bc, (#(_powerup + 0x0003) + 0)
	inc	bc
	ld	((_powerup + 0x0003)), bc
	C$dragon_blaster.c$431$1_0$214	= .
	.globl	C$dragon_blaster.c$431$1_0$214
;dragon_blaster.c:431: if (powerup.y > SCREEN_H)
	ld	a, #0xc0
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00167$
	xor	a, #0x80
00167$:
	jp	P, 00102$
	C$dragon_blaster.c$432$1_0$214	= .
	.globl	C$dragon_blaster.c$432$1_0$214
;dragon_blaster.c:432: powerup.active = 0;
	ld	hl, #_powerup
	ld	(hl), #0x00
00102$:
	C$dragon_blaster.c$434$1_0$214	= .
	.globl	C$dragon_blaster.c$434$1_0$214
;dragon_blaster.c:434: if (powerup.active)
	C$dragon_blaster.c$437$1_0$214	= .
	.globl	C$dragon_blaster.c$437$1_0$214
;dragon_blaster.c:437: if (powerup.x > player.x - 16 && powerup.x < player.x + 24 &&
	C$dragon_blaster.c$445$1_0$214	= .
	.globl	C$dragon_blaster.c$445$1_0$214
;dragon_blaster.c:445: ply_ctl.powerup2 = powerup.state;
	C$dragon_blaster.c$434$1_0$214	= .
	.globl	C$dragon_blaster.c$434$1_0$214
;dragon_blaster.c:434: if (powerup.active)
	ld	a, (#_powerup + 0)
	or	a, a
	jp	Z, 00118$
	C$dragon_blaster.c$437$2_0$215	= .
	.globl	C$dragon_blaster.c$437$2_0$215
;dragon_blaster.c:437: if (powerup.x > player.x - 16 && powerup.x < player.x + 24 &&
	ld	bc, (#(_powerup + 0x0001) + 0)
	ld	hl, (#_player + 1)
	ld	a, l
	add	a, #0xf0
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P, 00120$
	ld	de, #0x0018
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00169$
	xor	a, #0x80
00169$:
	jp	P, 00120$
	C$dragon_blaster.c$430$1_0$214	= .
	.globl	C$dragon_blaster.c$430$1_0$214
;dragon_blaster.c:430: powerup.y++;
	ld	bc, (#(_powerup + 0x0003) + 0)
	C$dragon_blaster.c$438$2_0$215	= .
	.globl	C$dragon_blaster.c$438$2_0$215
;dragon_blaster.c:438: powerup.y > player.y - 16 && powerup.y < player.y + 16)
	ld	hl, (#_player + 3)
	ld	a, l
	add	a, #0xf0
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P, 00120$
	ld	de, #0x0010
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00171$
	xor	a, #0x80
00171$:
	jp	P, 00120$
	C$dragon_blaster.c$440$3_0$216	= .
	.globl	C$dragon_blaster.c$440$3_0$216
;dragon_blaster.c:440: update_score(&powerup, 0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #_powerup
	push	hl
	call	_update_score
	pop	af
	pop	af
	C$dragon_blaster.c$442$3_0$216	= .
	.globl	C$dragon_blaster.c$442$3_0$216
;dragon_blaster.c:442: if (!ply_ctl.powerup2)
	ld	a, (#(_ply_ctl + 0x0004) + 0)
	ld	-1 (ix), a
	C$dragon_blaster.c$447$1_0$214	= .
	.globl	C$dragon_blaster.c$447$1_0$214
;dragon_blaster.c:447: else if (!ply_ctl.powerup1_active)
	ld	bc, #_ply_ctl + 5
	C$dragon_blaster.c$452$1_0$214	= .
	.globl	C$dragon_blaster.c$452$1_0$214
;dragon_blaster.c:452: else if (!ply_ctl.powerup2_active)
	ld	de, #_ply_ctl + 6
	C$dragon_blaster.c$442$3_0$216	= .
	.globl	C$dragon_blaster.c$442$3_0$216
;dragon_blaster.c:442: if (!ply_ctl.powerup2)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00110$
	C$dragon_blaster.c$445$4_0$217	= .
	.globl	C$dragon_blaster.c$445$4_0$217
;dragon_blaster.c:445: ply_ctl.powerup2 = powerup.state;
	ld	a, (#(_powerup + 0x0016) + 0)
	ld	(#(_ply_ctl + 0x0004)),a
	jr	00111$
00110$:
	C$dragon_blaster.c$447$3_0$216	= .
	.globl	C$dragon_blaster.c$447$3_0$216
;dragon_blaster.c:447: else if (!ply_ctl.powerup1_active)
	ld	a, (bc)
	C$dragon_blaster.c$450$1_0$214	= .
	.globl	C$dragon_blaster.c$450$1_0$214
;dragon_blaster.c:450: ply_ctl.powerup1 = powerup.state;
	C$dragon_blaster.c$447$3_0$216	= .
	.globl	C$dragon_blaster.c$447$3_0$216
;dragon_blaster.c:447: else if (!ply_ctl.powerup1_active)
	or	a, a
	jr	NZ, 00107$
	C$dragon_blaster.c$450$4_0$218	= .
	.globl	C$dragon_blaster.c$450$4_0$218
;dragon_blaster.c:450: ply_ctl.powerup1 = powerup.state;
	ld	a, (#(_powerup + 0x0016) + 0)
	ld	(#(_ply_ctl + 0x0003)),a
	jr	00111$
00107$:
	C$dragon_blaster.c$452$3_0$216	= .
	.globl	C$dragon_blaster.c$452$3_0$216
;dragon_blaster.c:452: else if (!ply_ctl.powerup2_active)
	ld	a, (de)
	or	a, a
	jr	NZ, 00104$
	C$dragon_blaster.c$455$4_0$219	= .
	.globl	C$dragon_blaster.c$455$4_0$219
;dragon_blaster.c:455: ply_ctl.powerup2 = powerup.state;
	ld	a, (#(_powerup + 0x0016) + 0)
	ld	(#(_ply_ctl + 0x0004)),a
	jr	00111$
00104$:
	C$dragon_blaster.c$460$4_0$220	= .
	.globl	C$dragon_blaster.c$460$4_0$220
;dragon_blaster.c:460: ply_ctl.powerup1 = ply_ctl.powerup2;
	ld	hl, #(_ply_ctl + 0x0003)
	ld	a, -1 (ix)
	ld	(hl), a
	C$dragon_blaster.c$461$4_0$220	= .
	.globl	C$dragon_blaster.c$461$4_0$220
;dragon_blaster.c:461: ply_ctl.powerup2 = powerup.state;
	ld	a, (#(_powerup + 0x0016) + 0)
	ld	(#(_ply_ctl + 0x0004)),a
00111$:
	C$dragon_blaster.c$464$3_0$216	= .
	.globl	C$dragon_blaster.c$464$3_0$216
;dragon_blaster.c:464: ply_ctl.powerup1_active = 1;
	C$dragon_blaster.c$465$3_0$216	= .
	.globl	C$dragon_blaster.c$465$3_0$216
;dragon_blaster.c:465: ply_ctl.powerup2_active = 1;
	ld	a,#0x01
	ld	(bc),a
	ld	(de), a
	C$dragon_blaster.c$466$3_0$216	= .
	.globl	C$dragon_blaster.c$466$3_0$216
;dragon_blaster.c:466: select_combined_powerup();
	call	_select_combined_powerup
	C$dragon_blaster.c$468$3_0$216	= .
	.globl	C$dragon_blaster.c$468$3_0$216
;dragon_blaster.c:468: powerup.active = 0;
	ld	hl, #_powerup
	ld	(hl), #0x00
	jr	00120$
00118$:
	C$dragon_blaster.c$473$2_0$221	= .
	.globl	C$dragon_blaster.c$473$2_0$221
;dragon_blaster.c:473: powerup.x = 8 + rand() % (256 - 24);
	call	_rand
	ex	(sp), hl
	ld	hl, #0x00e8
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	__modsint
	pop	af
	pop	af
	ex	de, hl
	ld	hl, #0x0008
	add	hl, de
	ex	de, hl
	ld	((_powerup + 0x0001)), de
	C$dragon_blaster.c$474$2_0$221	= .
	.globl	C$dragon_blaster.c$474$2_0$221
;dragon_blaster.c:474: powerup.y = -16;
	ld	hl, #0xfff0
	ld	((_powerup + 0x0003)), hl
	C$dragon_blaster.c$475$2_0$221	= .
	.globl	C$dragon_blaster.c$475$2_0$221
;dragon_blaster.c:475: powerup.active = 1;
	ld	hl, #_powerup
	ld	(hl), #0x01
	C$dragon_blaster.c$476$2_0$221	= .
	.globl	C$dragon_blaster.c$476$2_0$221
;dragon_blaster.c:476: powerup.state = 1 + rand() % 3;
	call	_rand
	ld	de, #0x0003
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	a, l
	inc	a
	ld	(#(_powerup + 0x0016)),a
	C$dragon_blaster.c$477$2_0$221	= .
	.globl	C$dragon_blaster.c$477$2_0$221
;dragon_blaster.c:477: powerup.base_tile = powerup_base_tile(powerup.state);
	ld	a, (#(_powerup + 0x0016) + 0)
	push	af
	inc	sp
	call	_powerup_base_tile
	ld	a, l
	inc	sp
	ld	hl, #(_powerup + 0x000c)
	ld	(hl), a
00120$:
	C$dragon_blaster.c$479$1_0$214	= .
	.globl	C$dragon_blaster.c$479$1_0$214
;dragon_blaster.c:479: }
	ld	sp, ix
	pop	ix
	C$dragon_blaster.c$479$1_0$214	= .
	.globl	C$dragon_blaster.c$479$1_0$214
	XG$handle_powerups$0$0	= .
	.globl	XG$handle_powerups$0$0
	ret
	G$draw_powerups$0$0	= .
	.globl	G$draw_powerups$0$0
	C$dragon_blaster.c$481$1_0$222	= .
	.globl	C$dragon_blaster.c$481$1_0$222
;dragon_blaster.c:481: void draw_powerups()
;	---------------------------------
; Function draw_powerups
; ---------------------------------
_draw_powerups::
	C$dragon_blaster.c$483$1_0$222	= .
	.globl	C$dragon_blaster.c$483$1_0$222
;dragon_blaster.c:483: draw_actor(icons);
	ld	hl, #_icons
	push	hl
	call	_draw_actor
	C$dragon_blaster.c$484$1_0$222	= .
	.globl	C$dragon_blaster.c$484$1_0$222
;dragon_blaster.c:484: draw_actor(icons + 1);
	ld	hl, #(_icons + 0x001d)
	ex	(sp),hl
	call	_draw_actor
	C$dragon_blaster.c$485$1_0$222	= .
	.globl	C$dragon_blaster.c$485$1_0$222
;dragon_blaster.c:485: draw_actor(&powerup);
	ld	hl, #_powerup
	ex	(sp),hl
	call	_draw_actor
	pop	af
	C$dragon_blaster.c$486$1_0$222	= .
	.globl	C$dragon_blaster.c$486$1_0$222
;dragon_blaster.c:486: }
	C$dragon_blaster.c$486$1_0$222	= .
	.globl	C$dragon_blaster.c$486$1_0$222
	XG$draw_powerups$0$0	= .
	.globl	XG$draw_powerups$0$0
	ret
	G$update_score$0$0	= .
	.globl	G$update_score$0$0
	C$dragon_blaster.c$488$1_0$224	= .
	.globl	C$dragon_blaster.c$488$1_0$224
;dragon_blaster.c:488: void update_score(actor *enm, actor *sht)
;	---------------------------------
; Function update_score
; ---------------------------------
_update_score::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$dragon_blaster.c$490$1_0$224	= .
	.globl	C$dragon_blaster.c$490$1_0$224
;dragon_blaster.c:490: increment_score_display(&score, enm == &powerup ? 5 : 1);
	ld	bc, #_powerup+0
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00103$
	ld	bc, #0x0005
	jr	00104$
00103$:
	ld	bc, #0x0001
00104$:
	push	bc
	ld	hl, #_score
	push	hl
	call	_increment_score_display
	pop	af
	pop	af
	C$dragon_blaster.c$491$1_0$224	= .
	.globl	C$dragon_blaster.c$491$1_0$224
;dragon_blaster.c:491: }
	pop	ix
	C$dragon_blaster.c$491$1_0$224	= .
	.globl	C$dragon_blaster.c$491$1_0$224
	XG$update_score$0$0	= .
	.globl	XG$update_score$0$0
	ret
	G$init_score$0$0	= .
	.globl	G$init_score$0$0
	C$dragon_blaster.c$493$1_0$225	= .
	.globl	C$dragon_blaster.c$493$1_0$225
;dragon_blaster.c:493: void init_score()
;	---------------------------------
; Function init_score
; ---------------------------------
_init_score::
	C$dragon_blaster.c$495$1_0$225	= .
	.globl	C$dragon_blaster.c$495$1_0$225
;dragon_blaster.c:495: init_actor(&timer_label, 16, 8, 1, 1, 178, 1);
	ld	de, #0x01b2
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x08
	push	hl
	ld	l, #0x10
	push	hl
	ld	hl, #_timer_label
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$496$1_0$225	= .
	.globl	C$dragon_blaster.c$496$1_0$225
;dragon_blaster.c:496: init_score_display(&timer, 24, 8, 236);
	ld	de, #0xec08
	push	de
	ld	a, #0x18
	push	af
	inc	sp
	ld	hl, #_timer
	push	hl
	call	_init_score_display
	pop	af
	C$dragon_blaster.c$497$1_0$225	= .
	.globl	C$dragon_blaster.c$497$1_0$225
;dragon_blaster.c:497: update_score_display(&timer, TIMER_MAX);
	inc	sp
	ld	hl,#0x003c
	ex	(sp),hl
	ld	hl, #_timer
	push	hl
	call	_update_score_display
	pop	af
	pop	af
	C$dragon_blaster.c$498$1_0$225	= .
	.globl	C$dragon_blaster.c$498$1_0$225
;dragon_blaster.c:498: timer_delay = 60;
	ld	hl, #_timer_delay
	ld	(hl), #0x3c
	C$dragon_blaster.c$499$1_0$225	= .
	.globl	C$dragon_blaster.c$499$1_0$225
;dragon_blaster.c:499: frames_elapsed = 0;
	ld	hl, #_frames_elapsed
	ld	(hl), #0x00
	C$dragon_blaster.c$501$1_0$225	= .
	.globl	C$dragon_blaster.c$501$1_0$225
;dragon_blaster.c:501: init_score_display(&score, 16, 24, 236);
	ld	de, #0xec18
	push	de
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #_score
	push	hl
	call	_init_score_display
	pop	af
	pop	af
	inc	sp
	C$dragon_blaster.c$502$1_0$225	= .
	.globl	C$dragon_blaster.c$502$1_0$225
;dragon_blaster.c:502: }
	C$dragon_blaster.c$502$1_0$225	= .
	.globl	C$dragon_blaster.c$502$1_0$225
	XG$init_score$0$0	= .
	.globl	XG$init_score$0$0
	ret
	G$handle_score$0$0	= .
	.globl	G$handle_score$0$0
	C$dragon_blaster.c$504$1_0$226	= .
	.globl	C$dragon_blaster.c$504$1_0$226
;dragon_blaster.c:504: void handle_score()
;	---------------------------------
; Function handle_score
; ---------------------------------
_handle_score::
	C$dragon_blaster.c$506$1_0$226	= .
	.globl	C$dragon_blaster.c$506$1_0$226
;dragon_blaster.c:506: if (timer_delay)
	ld	iy, #_timer_delay
	ld	a, 0 (iy)
	or	a, a
	jr	Z, 00106$
	C$dragon_blaster.c$508$2_0$227	= .
	.globl	C$dragon_blaster.c$508$2_0$227
;dragon_blaster.c:508: timer_delay--;
	dec	0 (iy)
	ret
00106$:
	C$dragon_blaster.c$512$2_0$228	= .
	.globl	C$dragon_blaster.c$512$2_0$228
;dragon_blaster.c:512: if (timer.value)
	ld	bc, (#_timer + 4)
	ld	a, b
	or	a, c
	jr	Z, 00104$
	C$dragon_blaster.c$514$3_0$229	= .
	.globl	C$dragon_blaster.c$514$3_0$229
;dragon_blaster.c:514: char decrement = frames_elapsed / 60;
	ld	a, (#_frames_elapsed + 0)
	ld	e, a
	ld	d, #0x00
	push	bc
	ld	hl, #0x003c
	push	hl
	push	de
	call	__divsint
	pop	af
	pop	af
	ex	de, hl
	pop	bc
	C$dragon_blaster.c$515$3_0$229	= .
	.globl	C$dragon_blaster.c$515$3_0$229
;dragon_blaster.c:515: if (decrement > timer.value)
	ld	l, e
	ld	h, #0x00
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jr	NC, 00102$
	C$dragon_blaster.c$516$3_0$229	= .
	.globl	C$dragon_blaster.c$516$3_0$229
;dragon_blaster.c:516: decrement = timer.value;
	ld	e, c
00102$:
	C$dragon_blaster.c$517$3_0$229	= .
	.globl	C$dragon_blaster.c$517$3_0$229
;dragon_blaster.c:517: increment_score_display(&timer, -decrement);
	ld	d, #0x00
	ld	hl, #0x0000
	cp	a, a
	sbc	hl, de
	push	hl
	ld	hl, #_timer
	push	hl
	call	_increment_score_display
	pop	af
	pop	af
00104$:
	C$dragon_blaster.c$519$2_0$228	= .
	.globl	C$dragon_blaster.c$519$2_0$228
;dragon_blaster.c:519: timer_delay = 60;
	ld	a, #0x3c
	ld	(#_timer_delay), a
	C$dragon_blaster.c$520$2_0$228	= .
	.globl	C$dragon_blaster.c$520$2_0$228
;dragon_blaster.c:520: frames_elapsed = 0;
	ld	a, #0x00
	ld	(#_frames_elapsed), a
	C$dragon_blaster.c$522$1_0$226	= .
	.globl	C$dragon_blaster.c$522$1_0$226
;dragon_blaster.c:522: }
	C$dragon_blaster.c$522$1_0$226	= .
	.globl	C$dragon_blaster.c$522$1_0$226
	XG$handle_score$0$0	= .
	.globl	XG$handle_score$0$0
	ret
	G$draw_score$0$0	= .
	.globl	G$draw_score$0$0
	C$dragon_blaster.c$524$1_0$230	= .
	.globl	C$dragon_blaster.c$524$1_0$230
;dragon_blaster.c:524: void draw_score()
;	---------------------------------
; Function draw_score
; ---------------------------------
_draw_score::
	C$dragon_blaster.c$526$1_0$230	= .
	.globl	C$dragon_blaster.c$526$1_0$230
;dragon_blaster.c:526: draw_actor(&timer_label);
	ld	hl, #_timer_label
	push	hl
	call	_draw_actor
	C$dragon_blaster.c$527$1_0$230	= .
	.globl	C$dragon_blaster.c$527$1_0$230
;dragon_blaster.c:527: draw_score_display(&timer);
	ld	hl, #_timer
	ex	(sp),hl
	call	_draw_score_display
	C$dragon_blaster.c$529$1_0$230	= .
	.globl	C$dragon_blaster.c$529$1_0$230
;dragon_blaster.c:529: draw_score_display(&score);
	ld	hl, #_score
	ex	(sp),hl
	call	_draw_score_display
	pop	af
	C$dragon_blaster.c$530$1_0$230	= .
	.globl	C$dragon_blaster.c$530$1_0$230
;dragon_blaster.c:530: }
	C$dragon_blaster.c$530$1_0$230	= .
	.globl	C$dragon_blaster.c$530$1_0$230
	XG$draw_score$0$0	= .
	.globl	XG$draw_score$0$0
	ret
	G$clear_tilemap$0$0	= .
	.globl	G$clear_tilemap$0$0
	C$dragon_blaster.c$532$1_0$231	= .
	.globl	C$dragon_blaster.c$532$1_0$231
;dragon_blaster.c:532: void clear_tilemap()
;	---------------------------------
; Function clear_tilemap
; ---------------------------------
_clear_tilemap::
	C$dragon_blaster.c$534$1_0$231	= .
	.globl	C$dragon_blaster.c$534$1_0$231
;dragon_blaster.c:534: SMS_setNextTileatXY(0, 0);
	ld	hl, #0x7800
	rst	#0x08
	C$dragon_blaster.c$535$2_0$231	= .
	.globl	C$dragon_blaster.c$535$2_0$231
;dragon_blaster.c:535: for (int i = (SCREEN_CHAR_W * SCROLL_CHAR_H); i; i--)
	ld	bc, #0x0380
00103$:
	ld	a, b
	or	a, c
	ret	Z
	C$dragon_blaster.c$537$3_0$233	= .
	.globl	C$dragon_blaster.c$537$3_0$233
;dragon_blaster.c:537: SMS_setTile(0);
	ld	hl, #0x0000
	rst	#0x18
	C$dragon_blaster.c$535$2_0$232	= .
	.globl	C$dragon_blaster.c$535$2_0$232
;dragon_blaster.c:535: for (int i = (SCREEN_CHAR_W * SCROLL_CHAR_H); i; i--)
	dec	bc
	C$dragon_blaster.c$539$2_0$231	= .
	.globl	C$dragon_blaster.c$539$2_0$231
;dragon_blaster.c:539: }
	C$dragon_blaster.c$539$2_0$231	= .
	.globl	C$dragon_blaster.c$539$2_0$231
	XG$clear_tilemap$0$0	= .
	.globl	XG$clear_tilemap$0$0
	jr	00103$
	G$init_enemy_shots$0$0	= .
	.globl	G$init_enemy_shots$0$0
	C$dragon_blaster.c$541$2_0$234	= .
	.globl	C$dragon_blaster.c$541$2_0$234
;dragon_blaster.c:541: void init_enemy_shots()
;	---------------------------------
; Function init_enemy_shots
; ---------------------------------
_init_enemy_shots::
	C$dragon_blaster.c$545$1_0$234	= .
	.globl	C$dragon_blaster.c$545$1_0$234
;dragon_blaster.c:545: FOR_EACH_ENEMY_SHOT(sht)
	ld	hl, #_enemy_shots+0
	ld	(_init_enemy_shots_sht_65536_234), hl
	ld	bc, #0x0010
00103$:
	ld	a, b
	or	a, c
	ret	Z
	C$dragon_blaster.c$547$3_0$236	= .
	.globl	C$dragon_blaster.c$547$3_0$236
;dragon_blaster.c:547: sht->active = 0;
	ld	hl, (_init_enemy_shots_sht_65536_234)
	ld	(hl), #0x00
	C$dragon_blaster.c$545$2_0$235	= .
	.globl	C$dragon_blaster.c$545$2_0$235
;dragon_blaster.c:545: FOR_EACH_ENEMY_SHOT(sht)
	dec	bc
	ld	hl, #_init_enemy_shots_sht_65536_234
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jr	NC, 00103$
	inc	hl
	inc	(hl)
	C$dragon_blaster.c$549$2_0$234	= .
	.globl	C$dragon_blaster.c$549$2_0$234
;dragon_blaster.c:549: }
	C$dragon_blaster.c$549$2_0$234	= .
	.globl	C$dragon_blaster.c$549$2_0$234
	XG$init_enemy_shots$0$0	= .
	.globl	XG$init_enemy_shots$0$0
	jr	00103$
	G$handle_enemy_shots$0$0	= .
	.globl	G$handle_enemy_shots$0$0
	C$dragon_blaster.c$551$2_0$237	= .
	.globl	C$dragon_blaster.c$551$2_0$237
;dragon_blaster.c:551: void handle_enemy_shots()
;	---------------------------------
; Function handle_enemy_shots
; ---------------------------------
_handle_enemy_shots::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$dragon_blaster.c$555$1_0$237	= .
	.globl	C$dragon_blaster.c$555$1_0$237
;dragon_blaster.c:555: FOR_EACH_ENEMY_SHOT(sht)
	ld	hl, #_enemy_shots+0
	ld	(_handle_enemy_shots_sht_65536_237), hl
	ld	hl, #0x0010
	ex	(sp), hl
00111$:
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jr	Z, 00113$
	C$dragon_blaster.c$557$3_0$239	= .
	.globl	C$dragon_blaster.c$557$3_0$239
;dragon_blaster.c:557: if (sht->active)
	ld	hl, (_handle_enemy_shots_sht_65536_237)
	ld	a, (hl)
	or	a, a
	jr	Z, 00112$
	C$dragon_blaster.c$559$4_0$240	= .
	.globl	C$dragon_blaster.c$559$4_0$240
;dragon_blaster.c:559: move_actor(sht);
	ld	hl, (_handle_enemy_shots_sht_65536_237)
	push	hl
	call	_move_actor
	pop	af
	C$dragon_blaster.c$557$2_0$237	= .
	.globl	C$dragon_blaster.c$557$2_0$237
;dragon_blaster.c:557: if (sht->active)
	ld	bc, (_handle_enemy_shots_sht_65536_237)
	C$dragon_blaster.c$560$2_0$237	= .
	.globl	C$dragon_blaster.c$560$2_0$237
;dragon_blaster.c:560: if (sht->y < 0 || sht->y > (SCREEN_H - 16))
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	bit	7, d
	jr	NZ, 00101$
	ld	a, #0xb0
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00146$
	xor	a, #0x80
00146$:
	jp	P, 00102$
00101$:
	C$dragon_blaster.c$561$4_0$240	= .
	.globl	C$dragon_blaster.c$561$4_0$240
;dragon_blaster.c:561: sht->active = 0;
	xor	a, a
	ld	(bc), a
00102$:
	C$dragon_blaster.c$557$2_0$237	= .
	.globl	C$dragon_blaster.c$557$2_0$237
;dragon_blaster.c:557: if (sht->active)
	ld	bc, (_handle_enemy_shots_sht_65536_237)
	C$dragon_blaster.c$562$4_0$240	= .
	.globl	C$dragon_blaster.c$562$4_0$240
;dragon_blaster.c:562: if (sht->state == 1 && !sht->state_timer)
	ld	e, c
	ld	d, b
	ld	hl, #22
	add	hl, de
	ld	a, (hl)
	dec	a
	jr	NZ, 00112$
	ld	e, c
	ld	d, b
	ld	hl, #23
	add	hl, de
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jr	NZ, 00112$
	C$dragon_blaster.c$563$4_0$240	= .
	.globl	C$dragon_blaster.c$563$4_0$240
;dragon_blaster.c:563: sht->active = 0;
	xor	a, a
	ld	(bc), a
00112$:
	C$dragon_blaster.c$555$2_0$238	= .
	.globl	C$dragon_blaster.c$555$2_0$238
;dragon_blaster.c:555: FOR_EACH_ENEMY_SHOT(sht)
	pop	hl
	push	hl
	dec	hl
	ex	(sp), hl
	ld	hl, #_handle_enemy_shots_sht_65536_237
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jr	NC, 00111$
	inc	hl
	inc	(hl)
	jr	00111$
00113$:
	C$dragon_blaster.c$566$2_0$237	= .
	.globl	C$dragon_blaster.c$566$2_0$237
;dragon_blaster.c:566: }
	ld	sp, ix
	pop	ix
	C$dragon_blaster.c$566$2_0$237	= .
	.globl	C$dragon_blaster.c$566$2_0$237
	XG$handle_enemy_shots$0$0	= .
	.globl	XG$handle_enemy_shots$0$0
	ret
	G$draw_enemy_shots$0$0	= .
	.globl	G$draw_enemy_shots$0$0
	C$dragon_blaster.c$568$2_0$241	= .
	.globl	C$dragon_blaster.c$568$2_0$241
;dragon_blaster.c:568: void draw_enemy_shots()
;	---------------------------------
; Function draw_enemy_shots
; ---------------------------------
_draw_enemy_shots::
	C$dragon_blaster.c$572$1_0$241	= .
	.globl	C$dragon_blaster.c$572$1_0$241
;dragon_blaster.c:572: FOR_EACH_ENEMY_SHOT(sht)
	ld	hl, #_enemy_shots+0
	ld	(_draw_enemy_shots_sht_65536_241), hl
	ld	bc, #0x0010
00103$:
	ld	a, b
	or	a, c
	ret	Z
	C$dragon_blaster.c$574$3_0$243	= .
	.globl	C$dragon_blaster.c$574$3_0$243
;dragon_blaster.c:574: draw_actor(sht);
	push	bc
	ld	hl, (_draw_enemy_shots_sht_65536_241)
	push	hl
	call	_draw_actor
	pop	af
	pop	bc
	C$dragon_blaster.c$572$2_0$242	= .
	.globl	C$dragon_blaster.c$572$2_0$242
;dragon_blaster.c:572: FOR_EACH_ENEMY_SHOT(sht)
	dec	bc
	ld	hl, #_draw_enemy_shots_sht_65536_241
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jr	NC, 00103$
	inc	hl
	inc	(hl)
	C$dragon_blaster.c$576$2_0$241	= .
	.globl	C$dragon_blaster.c$576$2_0$241
;dragon_blaster.c:576: }
	C$dragon_blaster.c$576$2_0$241	= .
	.globl	C$dragon_blaster.c$576$2_0$241
	XG$draw_enemy_shots$0$0	= .
	.globl	XG$draw_enemy_shots$0$0
	jr	00103$
	G$fire_enemy_shot$0$0	= .
	.globl	G$fire_enemy_shot$0$0
	C$dragon_blaster.c$578$2_0$245	= .
	.globl	C$dragon_blaster.c$578$2_0$245
;dragon_blaster.c:578: char fire_enemy_shot(int x, int y, char shot_type)
;	---------------------------------
; Function fire_enemy_shot
; ---------------------------------
_fire_enemy_shot::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	C$dragon_blaster.c$585$1_0$245	= .
	.globl	C$dragon_blaster.c$585$1_0$245
;dragon_blaster.c:585: info = boss_shot_infos + shot_type;
	ld	bc, #_boss_shot_infos+0
	ld	e, 8 (ix)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	(_fire_enemy_shot_info_65536_245), hl
	C$dragon_blaster.c$586$1_0$245	= .
	.globl	C$dragon_blaster.c$586$1_0$245
;dragon_blaster.c:586: path = info->paths;
	ld	bc, (_fire_enemy_shot_info_65536_245)
	ld	e, c
	ld	d, b
	ld	hl, #5
	add	hl, de
	ld	a, (hl)
	ld	(_fire_enemy_shot_path_65536_245+0), a
	inc	hl
	ld	a, (hl)
	ld	(_fire_enemy_shot_path_65536_245+1), a
	C$dragon_blaster.c$587$1_0$245	= .
	.globl	C$dragon_blaster.c$587$1_0$245
;dragon_blaster.c:587: shots_to_fire = info->length;
	ld	hl, #4
	add	hl, bc
	ld	a, (hl)
	ld	(_fire_enemy_shot_shots_to_fire_65536_245+0), a
	C$dragon_blaster.c$588$1_0$245	= .
	.globl	C$dragon_blaster.c$588$1_0$245
;dragon_blaster.c:588: fired = 0;
	ld	hl, #_fire_enemy_shot_fired_65536_245
	ld	(hl), #0x00
	C$dragon_blaster.c$590$1_0$245	= .
	.globl	C$dragon_blaster.c$590$1_0$245
;dragon_blaster.c:590: FOR_EACH_ENEMY_SHOT(sht)
	ld	hl, #_enemy_shots+0
	ld	(_fire_enemy_shot_sht_65536_245), hl
	ld	-2 (ix), #0x10
	ld	-1 (ix), #0
00107$:
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	Z, 00105$
	C$dragon_blaster.c$592$3_0$247	= .
	.globl	C$dragon_blaster.c$592$3_0$247
;dragon_blaster.c:592: if (!sht->active)
	ld	hl, (_fire_enemy_shot_sht_65536_245)
	ld	a, (hl)
	or	a, a
	jp	NZ, 00108$
	C$dragon_blaster.c$586$1_0$245	= .
	.globl	C$dragon_blaster.c$586$1_0$245
;dragon_blaster.c:586: path = info->paths;
	ld	bc, (_fire_enemy_shot_info_65536_245)
	C$dragon_blaster.c$597$4_0$248	= .
	.globl	C$dragon_blaster.c$597$4_0$248
;dragon_blaster.c:597: info->base_tile, info->frame_count);
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ld	-4 (ix), a
	ld	a, (bc)
	ld	-3 (ix), a
	C$dragon_blaster.c$595$1_0$245	= .
	.globl	C$dragon_blaster.c$595$1_0$245
;dragon_blaster.c:595: x + path->x, y + path->y,
	ld	bc, (_fire_enemy_shot_path_65536_245)
	ld	e, c
	ld	d, b
	inc	de
	ld	a, (de)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	add	a, 6 (ix)
	ld	e, a
	ld	a, d
	adc	a, 7 (ix)
	ld	d, a
	ld	a, (bc)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	add	hl, bc
	C$dragon_blaster.c$594$4_0$248	= .
	.globl	C$dragon_blaster.c$594$4_0$248
;dragon_blaster.c:594: init_actor(sht,
	ld	b, -4 (ix)
	ld	c, -3 (ix)
	push	bc
	ld	bc, #0x0001
	push	bc
	ld	bc, #0x0001
	push	bc
	push	de
	push	hl
	ld	hl, (_fire_enemy_shot_sht_65536_245)
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$599$4_0$248	= .
	.globl	C$dragon_blaster.c$599$4_0$248
;dragon_blaster.c:599: sht->path = path->steps;
	ld	bc, (_fire_enemy_shot_sht_65536_245)
	ld	hl, #0x0012
	add	hl, bc
	ex	de, hl
	ld	hl, (_fire_enemy_shot_path_65536_245)
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	C$dragon_blaster.c$600$4_0$248	= .
	.globl	C$dragon_blaster.c$600$4_0$248
;dragon_blaster.c:600: sht->path_flags = path->flags;
	ld	bc, (_fire_enemy_shot_sht_65536_245)
	ld	hl, #0x0011
	add	hl, bc
	ex	de, hl
	ld	hl, (_fire_enemy_shot_path_65536_245)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
	C$dragon_blaster.c$601$4_0$248	= .
	.globl	C$dragon_blaster.c$601$4_0$248
;dragon_blaster.c:601: sht->state = 1;
	ld	hl, (_fire_enemy_shot_sht_65536_245)
	ld	bc, #0x0016
	add	hl, bc
	ld	(hl), #0x01
	C$dragon_blaster.c$602$4_0$248	= .
	.globl	C$dragon_blaster.c$602$4_0$248
;dragon_blaster.c:602: sht->state_timer = info->life_time;
	ld	bc, (_fire_enemy_shot_sht_65536_245)
	ld	hl, #0x0017
	add	hl, bc
	ex	de, hl
	ld	hl, (_fire_enemy_shot_info_65536_245)
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	ld	(de), a
	inc	de
	ld	a, b
	ld	(de), a
	C$dragon_blaster.c$605$4_0$248	= .
	.globl	C$dragon_blaster.c$605$4_0$248
;dragon_blaster.c:605: fired = 1;
	ld	hl, #_fire_enemy_shot_fired_65536_245
	ld	(hl), #0x01
	C$dragon_blaster.c$606$4_0$248	= .
	.globl	C$dragon_blaster.c$606$4_0$248
;dragon_blaster.c:606: path++;
	ld	hl, #_fire_enemy_shot_path_65536_245
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
	jr	NC, 00131$
	inc	hl
	inc	(hl)
00131$:
	C$dragon_blaster.c$607$4_0$248	= .
	.globl	C$dragon_blaster.c$607$4_0$248
;dragon_blaster.c:607: shots_to_fire--;
	ld	iy, #_fire_enemy_shot_shots_to_fire_65536_245
	dec	0 (iy)
	C$dragon_blaster.c$608$4_0$248	= .
	.globl	C$dragon_blaster.c$608$4_0$248
;dragon_blaster.c:608: if (!shots_to_fire)
	ld	a, 0 (iy)
	or	a, a
	jr	NZ, 00108$
	C$dragon_blaster.c$609$4_0$248	= .
	.globl	C$dragon_blaster.c$609$4_0$248
;dragon_blaster.c:609: return 1;
	ld	l, #0x01
	jr	00109$
00108$:
	C$dragon_blaster.c$590$2_0$246	= .
	.globl	C$dragon_blaster.c$590$2_0$246
;dragon_blaster.c:590: FOR_EACH_ENEMY_SHOT(sht)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	hl, #_fire_enemy_shot_sht_65536_245
	ld	a, (hl)
	add	a, #0x1d
	ld	(hl), a
	jp	NC,00107$
	inc	hl
	inc	(hl)
	jp	00107$
00105$:
	C$dragon_blaster.c$614$1_0$245	= .
	.globl	C$dragon_blaster.c$614$1_0$245
;dragon_blaster.c:614: return fired;
	ld	a, (#_fire_enemy_shot_fired_65536_245 + 0)
	ld	l, a
00109$:
	C$dragon_blaster.c$615$1_0$245	= .
	.globl	C$dragon_blaster.c$615$1_0$245
;dragon_blaster.c:615: }
	ld	sp, ix
	pop	ix
	C$dragon_blaster.c$615$1_0$245	= .
	.globl	C$dragon_blaster.c$615$1_0$245
	XG$fire_enemy_shot$0$0	= .
	.globl	XG$fire_enemy_shot$0$0
	ret
	G$init_boss$0$0	= .
	.globl	G$init_boss$0$0
	C$dragon_blaster.c$617$1_0$249	= .
	.globl	C$dragon_blaster.c$617$1_0$249
;dragon_blaster.c:617: void init_boss()
;	---------------------------------
; Function init_boss
; ---------------------------------
_init_boss::
	C$dragon_blaster.c$619$1_0$249	= .
	.globl	C$dragon_blaster.c$619$1_0$249
;dragon_blaster.c:619: SMS_loadPSGaidencompressedTiles(dracolich_tiles_psgcompr, 256);
	ld	hl, #0x6000
	push	hl
	ld	hl, #_dracolich_tiles_psgcompr
	push	hl
	call	_SMS_loadPSGaidencompressedTilesatAddr
	pop	af
	pop	af
	C$dragon_blaster.c$620$1_0$249	= .
	.globl	C$dragon_blaster.c$620$1_0$249
;dragon_blaster.c:620: SMS_loadBGPalette(dracolich_palette_bin);
	ld	hl, #_dracolich_palette_bin
	call	_SMS_loadBGPalette
	C$dragon_blaster.c$621$1_0$249	= .
	.globl	C$dragon_blaster.c$621$1_0$249
;dragon_blaster.c:621: SMS_setSpritePaletteColor(0, 0);
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
	C$dragon_blaster.c$622$1_0$249	= .
	.globl	C$dragon_blaster.c$622$1_0$249
;dragon_blaster.c:622: SMS_setBGPaletteColor(0, 0);
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_SMS_setBGPaletteColor
	pop	af
	C$dragon_blaster.c$624$1_0$249	= .
	.globl	C$dragon_blaster.c$624$1_0$249
;dragon_blaster.c:624: clear_tilemap();
	call	_clear_tilemap
	C$dragon_blaster.c$625$1_0$249	= .
	.globl	C$dragon_blaster.c$625$1_0$249
;dragon_blaster.c:625: SMS_setBGScrollX(0);
	ld	l, #0x00
	call	_SMS_setBGScrollX
	C$dragon_blaster.c$626$1_0$249	= .
	.globl	C$dragon_blaster.c$626$1_0$249
;dragon_blaster.c:626: SMS_setBGScrollY(0);
	ld	l, #0x00
	call	_SMS_setBGScrollY
	C$dragon_blaster.c$629$2_0$250	= .
	.globl	C$dragon_blaster.c$629$2_0$250
;dragon_blaster.c:629: unsigned int *t = dracolich_tilemap_bin;
	ld	bc, #_dracolich_tilemap_bin+0
	C$dragon_blaster.c$630$1_1$249	= .
	.globl	C$dragon_blaster.c$630$1_1$249
;dragon_blaster.c:630: for (char y = 0; y != 16; y++)
	ld	e, #0x00
00107$:
	C$dragon_blaster.c$632$3_1$252	= .
	.globl	C$dragon_blaster.c$632$3_1$252
;dragon_blaster.c:632: SMS_setNextTileatXY(0, y);
	ld	a,e
	cp	a,#0x10
	jr	Z, 00102$
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$dragon_blaster.c$633$1_1$249	= .
	.globl	C$dragon_blaster.c$633$1_1$249
;dragon_blaster.c:633: for (char x = 0; x != 12; x++)
	ld	d, #0x00
00104$:
	ld	a, d
	sub	a, #0x0c
	jr	Z, 00115$
	C$dragon_blaster.c$635$5_1$254	= .
	.globl	C$dragon_blaster.c$635$5_1$254
;dragon_blaster.c:635: SMS_setTile(*t + 256);
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, h
	inc	a
	ld	h, a
	rst	#0x18
	C$dragon_blaster.c$636$5_1$254	= .
	.globl	C$dragon_blaster.c$636$5_1$254
;dragon_blaster.c:636: t++;
	inc	bc
	inc	bc
	C$dragon_blaster.c$633$4_1$253	= .
	.globl	C$dragon_blaster.c$633$4_1$253
;dragon_blaster.c:633: for (char x = 0; x != 12; x++)
	inc	d
	jr	00104$
00115$:
	C$dragon_blaster.c$630$2_1$251	= .
	.globl	C$dragon_blaster.c$630$2_1$251
;dragon_blaster.c:630: for (char y = 0; y != 16; y++)
	inc	e
	jr	00107$
00102$:
	C$dragon_blaster.c$640$1_1$250	= .
	.globl	C$dragon_blaster.c$640$1_1$250
;dragon_blaster.c:640: boss.x = 128 - 96 / 2;
	ld	bc, #_boss+0
	ld	hl, #0x0050
	ld	((_boss + 0x0001)), hl
	C$dragon_blaster.c$641$1_1$250	= .
	.globl	C$dragon_blaster.c$641$1_1$250
;dragon_blaster.c:641: boss.y = 0;
	ld	l, h
	ld	((_boss + 0x0003)), hl
	C$dragon_blaster.c$642$1_1$250	= .
	.globl	C$dragon_blaster.c$642$1_1$250
;dragon_blaster.c:642: boss.next_x = boss.x;
	ld	de, (#(_boss + 0x0001) + 0)
	ld	((_boss + 0x0005)), de
	C$dragon_blaster.c$643$1_1$250	= .
	.globl	C$dragon_blaster.c$643$1_1$250
;dragon_blaster.c:643: boss.next_y = boss.y;
	ld	de, (#(_boss + 0x0003) + 0)
	ld	((_boss + 0x0007)), de
	C$dragon_blaster.c$644$1_1$250	= .
	.globl	C$dragon_blaster.c$644$1_1$250
;dragon_blaster.c:644: boss.move_delay = 0;
	ld	hl, #(_boss + 0x0009)
	ld	(hl), #0x00
	C$dragon_blaster.c$645$1_1$250	= .
	.globl	C$dragon_blaster.c$645$1_1$250
;dragon_blaster.c:645: boss.loaded = 1;
	ld	a, #0x01
	ld	(bc), a
	C$dragon_blaster.c$646$1_1$250	= .
	.globl	C$dragon_blaster.c$646$1_1$250
;dragon_blaster.c:646: boss.shot_delay = 0;
	ld	hl, #(_boss + 0x000a)
	ld	(hl), #0x00
	C$dragon_blaster.c$647$1_1$250	= .
	.globl	C$dragon_blaster.c$647$1_1$250
;dragon_blaster.c:647: boss.shot_type = 1;
	ld	hl, #(_boss + 0x000b)
	ld	(hl), #0x01
	C$dragon_blaster.c$648$1_1$250	= .
	.globl	C$dragon_blaster.c$648$1_1$250
;dragon_blaster.c:648: boss.shot_type_delay = 0;
	ld	hl, #(_boss + 0x000c)
	ld	(hl), #0x00
	C$dragon_blaster.c$650$1_1$250	= .
	.globl	C$dragon_blaster.c$650$1_1$250
;dragon_blaster.c:650: SMS_setBGScrollX(boss.x);
	ld	hl, #(_boss + 0x0001)
	ld	l, (hl)
	call	_SMS_setBGScrollX
	C$dragon_blaster.c$651$1_1$250	= .
	.globl	C$dragon_blaster.c$651$1_1$250
;dragon_blaster.c:651: SMS_setBGScrollY(boss.y);
	ld	hl, #(_boss + 0x0003)
	ld	l, (hl)
	C$dragon_blaster.c$652$1_1$249	= .
	.globl	C$dragon_blaster.c$652$1_1$249
;dragon_blaster.c:652: }
	C$dragon_blaster.c$652$1_1$249	= .
	.globl	C$dragon_blaster.c$652$1_1$249
	XG$init_boss$0$0	= .
	.globl	XG$init_boss$0$0
	jp	_SMS_setBGScrollY
	G$handle_boss$0$0	= .
	.globl	G$handle_boss$0$0
	C$dragon_blaster.c$654$1_1$255	= .
	.globl	C$dragon_blaster.c$654$1_1$255
;dragon_blaster.c:654: void handle_boss()
;	---------------------------------
; Function handle_boss
; ---------------------------------
_handle_boss::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	C$dragon_blaster.c$656$1_0$255	= .
	.globl	C$dragon_blaster.c$656$1_0$255
;dragon_blaster.c:656: if (!boss.loaded)
	ld	hl, #_boss+0
	ld	a, (hl)
	or	a, a
	C$dragon_blaster.c$657$1_0$255	= .
	.globl	C$dragon_blaster.c$657$1_0$255
;dragon_blaster.c:657: return;
	jp	Z,00128$
	C$dragon_blaster.c$659$1_0$255	= .
	.globl	C$dragon_blaster.c$659$1_0$255
;dragon_blaster.c:659: if (boss.move_delay)
	ld	hl, #(_boss + 0x0009)
	ld	c, (hl)
	C$dragon_blaster.c$664$1_0$255	= .
	.globl	C$dragon_blaster.c$664$1_0$255
;dragon_blaster.c:664: else if (boss.x != boss.next_x || boss.y != boss.next_y)
	C$dragon_blaster.c$659$1_0$255	= .
	.globl	C$dragon_blaster.c$659$1_0$255
;dragon_blaster.c:659: if (boss.move_delay)
	ld	a, c
	or	a, a
	jr	Z, 00118$
	C$dragon_blaster.c$662$2_0$256	= .
	.globl	C$dragon_blaster.c$662$2_0$256
;dragon_blaster.c:662: boss.move_delay--;
	dec	c
	ld	hl, #(_boss + 0x0009)
	ld	(hl), c
	jp	00119$
00118$:
	C$dragon_blaster.c$664$1_0$255	= .
	.globl	C$dragon_blaster.c$664$1_0$255
;dragon_blaster.c:664: else if (boss.x != boss.next_x || boss.y != boss.next_y)
	ld	hl, #(_boss + 0x0001)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	hl, #(_boss + 0x0005)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	jr	NZ, 00113$
	ld	a, -3 (ix)
	sub	a, -1 (ix)
	jr	NZ, 00113$
	ld	bc, (#(_boss + 0x0003) + 0)
	ld	hl, (#(_boss + 0x0007) + 0)
	cp	a, a
	sbc	hl, bc
	jr	Z, 00114$
00113$:
	C$dragon_blaster.c$668$2_0$257	= .
	.globl	C$dragon_blaster.c$668$2_0$257
;dragon_blaster.c:668: if (boss.x < boss.next_x)
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00183$
	xor	a, #0x80
00183$:
	jp	P, 00106$
	C$dragon_blaster.c$670$3_0$258	= .
	.globl	C$dragon_blaster.c$670$3_0$258
;dragon_blaster.c:670: boss.x++;
	pop	bc
	push	bc
	inc	bc
	ld	((_boss + 0x0001)), bc
	jr	00107$
00106$:
	C$dragon_blaster.c$672$2_0$257	= .
	.globl	C$dragon_blaster.c$672$2_0$257
;dragon_blaster.c:672: else if (boss.x > boss.next_x)
	ld	a, -2 (ix)
	sub	a, -4 (ix)
	ld	a, -1 (ix)
	sbc	a, -3 (ix)
	jp	PO, 00184$
	xor	a, #0x80
00184$:
	jp	P, 00107$
	C$dragon_blaster.c$674$3_0$259	= .
	.globl	C$dragon_blaster.c$674$3_0$259
;dragon_blaster.c:674: boss.x--;
	pop	bc
	push	bc
	dec	bc
	ld	((_boss + 0x0001)), bc
00107$:
	C$dragon_blaster.c$677$2_0$257	= .
	.globl	C$dragon_blaster.c$677$2_0$257
;dragon_blaster.c:677: if (boss.y < boss.next_y)
	ld	bc, (#(_boss + 0x0003) + 0)
	ld	hl, (#(_boss + 0x0007) + 0)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00185$
	xor	a, #0x80
00185$:
	jp	P, 00111$
	C$dragon_blaster.c$679$3_0$260	= .
	.globl	C$dragon_blaster.c$679$3_0$260
;dragon_blaster.c:679: boss.y++;
	inc	bc
	ld	((_boss + 0x0003)), bc
	jr	00119$
00111$:
	C$dragon_blaster.c$681$2_0$257	= .
	.globl	C$dragon_blaster.c$681$2_0$257
;dragon_blaster.c:681: else if (boss.y > boss.next_y)
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	PO, 00186$
	xor	a, #0x80
00186$:
	jp	P, 00119$
	C$dragon_blaster.c$683$3_0$261	= .
	.globl	C$dragon_blaster.c$683$3_0$261
;dragon_blaster.c:683: boss.y--;
	dec	bc
	ld	((_boss + 0x0003)), bc
	jr	00119$
00114$:
	C$dragon_blaster.c$689$2_0$262	= .
	.globl	C$dragon_blaster.c$689$2_0$262
;dragon_blaster.c:689: boss.next_x = rand() % (SCREEN_W - 96);
	call	_rand
	ld	de, #0x00a0
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	ex	de, hl
	ld	((_boss + 0x0005)), de
	C$dragon_blaster.c$690$2_0$262	= .
	.globl	C$dragon_blaster.c$690$2_0$262
;dragon_blaster.c:690: boss.next_y = rand() % (SCREEN_H - 128);
	call	_rand
	ld	de, #0x0040
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	ex	de, hl
	ld	((_boss + 0x0007)), de
	C$dragon_blaster.c$691$2_0$262	= .
	.globl	C$dragon_blaster.c$691$2_0$262
;dragon_blaster.c:691: boss.move_delay = 30 + rand() % 20;
	call	_rand
	ld	de, #0x0014
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	a, l
	add	a, #0x1e
	ld	(#(_boss + 0x0009)),a
00119$:
	C$dragon_blaster.c$694$1_0$255	= .
	.globl	C$dragon_blaster.c$694$1_0$255
;dragon_blaster.c:694: if (boss.shot_type_delay)
	ld	a, (#(_boss + 0x000c) + 0)
	C$dragon_blaster.c$700$1_0$255	= .
	.globl	C$dragon_blaster.c$700$1_0$255
;dragon_blaster.c:700: boss.shot_type = (boss.shot_type + 1) % BOSS_SHOT_TYPE_COUNT;
	C$dragon_blaster.c$694$1_0$255	= .
	.globl	C$dragon_blaster.c$694$1_0$255
;dragon_blaster.c:694: if (boss.shot_type_delay)
	ld	-1 (ix), a
	or	a, a
	jr	Z, 00121$
	C$dragon_blaster.c$696$2_0$263	= .
	.globl	C$dragon_blaster.c$696$2_0$263
;dragon_blaster.c:696: boss.shot_type_delay--;
	ld	a, -1 (ix)
	dec	a
	ld	(#(_boss + 0x000c)),a
	jr	00122$
00121$:
	C$dragon_blaster.c$700$2_0$264	= .
	.globl	C$dragon_blaster.c$700$2_0$264
;dragon_blaster.c:700: boss.shot_type = (boss.shot_type + 1) % BOSS_SHOT_TYPE_COUNT;
	ld	a, (#(_boss + 0x000b) + 0)
	ld	-1 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), #0
	ld	a, -4 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	hl, #0x0002
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	ld	-1 (ix), a
	ld	hl, #(_boss + 0x000b)
	ld	a, -1 (ix)
	ld	(hl), a
	C$dragon_blaster.c$701$2_0$264	= .
	.globl	C$dragon_blaster.c$701$2_0$264
;dragon_blaster.c:701: boss.shot_type_delay = 128 + (rand() & 0x1F);
	call	_rand
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	a, -2 (ix)
	ld	-1 (ix), a
	and	a, #0x1f
	ld	-1 (ix), a
	add	a, #0x80
	ld	(#(_boss + 0x000c)),a
00122$:
	C$dragon_blaster.c$704$1_0$255	= .
	.globl	C$dragon_blaster.c$704$1_0$255
;dragon_blaster.c:704: if (boss.shot_delay)
	ld	a, (#(_boss + 0x000a) + 0)
	or	a, a
	jr	Z, 00126$
	C$dragon_blaster.c$706$2_0$265	= .
	.globl	C$dragon_blaster.c$706$2_0$265
;dragon_blaster.c:706: boss.shot_delay--;
	dec	a
	ld	hl, #(_boss + 0x000a)
	ld	(hl), a
	jr	00128$
00126$:
	C$dragon_blaster.c$710$2_0$266	= .
	.globl	C$dragon_blaster.c$710$2_0$266
;dragon_blaster.c:710: if (fire_enemy_shot(boss.x + 44, boss.y + 32, boss.shot_type))
	ld	hl, #(_boss + 0x000b)
	ld	b, (hl)
	ld	de, (#(_boss + 0x0003) + 0)
	ld	hl, #0x0020
	add	hl, de
	ex	de, hl
	ld	hl, (#(_boss + 0x0001) + 0)
	push	de
	ld	de, #0x002c
	add	hl, de
	pop	de
	push	bc
	inc	sp
	push	de
	push	hl
	call	_fire_enemy_shot
	pop	af
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z, 00128$
	C$dragon_blaster.c$712$3_0$267	= .
	.globl	C$dragon_blaster.c$712$3_0$267
;dragon_blaster.c:712: boss.shot_delay = boss_shot_infos[boss.shot_type].firing_delay;
	ld	a, (#(_boss + 0x000b) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_boss_shot_infos
	add	hl, de
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	hl, #(_boss + 0x000a)
	ld	(hl), a
00128$:
	C$dragon_blaster.c$715$1_0$255	= .
	.globl	C$dragon_blaster.c$715$1_0$255
;dragon_blaster.c:715: }
	ld	sp, ix
	pop	ix
	C$dragon_blaster.c$715$1_0$255	= .
	.globl	C$dragon_blaster.c$715$1_0$255
	XG$handle_boss$0$0	= .
	.globl	XG$handle_boss$0$0
	ret
	G$draw_boss$0$0	= .
	.globl	G$draw_boss$0$0
	C$dragon_blaster.c$716$1_0$268	= .
	.globl	C$dragon_blaster.c$716$1_0$268
;dragon_blaster.c:716: void draw_boss()
;	---------------------------------
; Function draw_boss
; ---------------------------------
_draw_boss::
	C$dragon_blaster.c$718$1_0$268	= .
	.globl	C$dragon_blaster.c$718$1_0$268
;dragon_blaster.c:718: if (!boss.loaded)
	ld	a, (#_boss + 0)
	or	a, a
	C$dragon_blaster.c$719$1_0$268	= .
	.globl	C$dragon_blaster.c$719$1_0$268
;dragon_blaster.c:719: return;
	ret	Z
	C$dragon_blaster.c$721$1_0$268	= .
	.globl	C$dragon_blaster.c$721$1_0$268
;dragon_blaster.c:721: SMS_setBGScrollX(boss.x);
	ld	hl, #_boss + 1
	ld	l, (hl)
	call	_SMS_setBGScrollX
	C$dragon_blaster.c$722$1_0$268	= .
	.globl	C$dragon_blaster.c$722$1_0$268
;dragon_blaster.c:722: SMS_setBGScrollY(SCROLL_H - boss.y);
	ld	hl, #_boss + 3
	ld	c, (hl)
	ld	a, #0xe0
	sub	a, c
	ld	l, a
	C$dragon_blaster.c$723$1_0$268	= .
	.globl	C$dragon_blaster.c$723$1_0$268
;dragon_blaster.c:723: }
	C$dragon_blaster.c$723$1_0$268	= .
	.globl	C$dragon_blaster.c$723$1_0$268
	XG$draw_boss$0$0	= .
	.globl	XG$draw_boss$0$0
	jp	_SMS_setBGScrollY
	G$interrupt_handler$0$0	= .
	.globl	G$interrupt_handler$0$0
	C$dragon_blaster.c$725$1_0$269	= .
	.globl	C$dragon_blaster.c$725$1_0$269
;dragon_blaster.c:725: void interrupt_handler()
;	---------------------------------
; Function interrupt_handler
; ---------------------------------
_interrupt_handler::
	C$dragon_blaster.c$727$1_0$269	= .
	.globl	C$dragon_blaster.c$727$1_0$269
;dragon_blaster.c:727: PSGFrame();
	call	_PSGFrame
	C$dragon_blaster.c$728$1_0$269	= .
	.globl	C$dragon_blaster.c$728$1_0$269
;dragon_blaster.c:728: PSGSFXFrame();
	call	_PSGSFXFrame
	C$dragon_blaster.c$729$1_0$269	= .
	.globl	C$dragon_blaster.c$729$1_0$269
;dragon_blaster.c:729: frames_elapsed++;
	ld	iy, #_frames_elapsed
	inc	0 (iy)
	C$dragon_blaster.c$730$1_0$269	= .
	.globl	C$dragon_blaster.c$730$1_0$269
;dragon_blaster.c:730: }
	C$dragon_blaster.c$730$1_0$269	= .
	.globl	C$dragon_blaster.c$730$1_0$269
	XG$interrupt_handler$0$0	= .
	.globl	XG$interrupt_handler$0$0
	ret
	G$gameplay_loop$0$0	= .
	.globl	G$gameplay_loop$0$0
	C$dragon_blaster.c$732$1_0$270	= .
	.globl	C$dragon_blaster.c$732$1_0$270
;dragon_blaster.c:732: void gameplay_loop()
;	---------------------------------
; Function gameplay_loop
; ---------------------------------
_gameplay_loop::
	C$dragon_blaster.c$734$1_0$270	= .
	.globl	C$dragon_blaster.c$734$1_0$270
;dragon_blaster.c:734: SMS_useFirstHalfTilesforSprites(1);
	ld	l, #0x01
	call	_SMS_useFirstHalfTilesforSprites
	C$dragon_blaster.c$735$1_0$270	= .
	.globl	C$dragon_blaster.c$735$1_0$270
;dragon_blaster.c:735: SMS_setSpriteMode(SPRITEMODE_TALL);
	ld	l, #0x01
	call	_SMS_setSpriteMode
	C$dragon_blaster.c$736$1_0$270	= .
	.globl	C$dragon_blaster.c$736$1_0$270
;dragon_blaster.c:736: SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);
	ld	hl, #0x0020
	call	_SMS_VDPturnOnFeature
	C$dragon_blaster.c$738$1_0$270	= .
	.globl	C$dragon_blaster.c$738$1_0$270
;dragon_blaster.c:738: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$dragon_blaster.c$739$1_0$270	= .
	.globl	C$dragon_blaster.c$739$1_0$270
;dragon_blaster.c:739: SMS_loadPSGaidencompressedTiles(sprites_tiles_psgcompr, 0);
	ld	hl, #0x4000
	push	hl
	ld	hl, #_sprites_tiles_psgcompr
	push	hl
	call	_SMS_loadPSGaidencompressedTilesatAddr
	pop	af
	C$dragon_blaster.c$740$1_0$270	= .
	.globl	C$dragon_blaster.c$740$1_0$270
;dragon_blaster.c:740: SMS_loadPSGaidencompressedTiles(tileset_tiles_psgcompr, 256);
	ld	hl, #0x6000
	ex	(sp),hl
	ld	hl, #_tileset_tiles_psgcompr
	push	hl
	call	_SMS_loadPSGaidencompressedTilesatAddr
	pop	af
	pop	af
	C$dragon_blaster.c$741$1_0$270	= .
	.globl	C$dragon_blaster.c$741$1_0$270
;dragon_blaster.c:741: load_standard_palettes();
	call	_load_standard_palettes
	C$dragon_blaster.c$743$1_0$270	= .
	.globl	C$dragon_blaster.c$743$1_0$270
;dragon_blaster.c:743: init_map(level1_bin);
	ld	hl, #_level1_bin
	push	hl
	call	_init_map
	pop	af
	C$dragon_blaster.c$744$1_0$270	= .
	.globl	C$dragon_blaster.c$744$1_0$270
;dragon_blaster.c:744: draw_map_screen();
	call	_draw_map_screen
	C$dragon_blaster.c$746$1_0$270	= .
	.globl	C$dragon_blaster.c$746$1_0$270
;dragon_blaster.c:746: SMS_setLineInterruptHandler(&interrupt_handler);
	ld	hl, #_interrupt_handler
	call	_SMS_setLineInterruptHandler
	C$dragon_blaster.c$747$1_0$270	= .
	.globl	C$dragon_blaster.c$747$1_0$270
;dragon_blaster.c:747: SMS_setLineCounter(180);
	ld	l, #0xb4
	call	_SMS_setLineCounter
	C$dragon_blaster.c$748$1_0$270	= .
	.globl	C$dragon_blaster.c$748$1_0$270
;dragon_blaster.c:748: SMS_enableLineInterrupt();
	ld	hl, #0x0010
	call	_SMS_VDPturnOnFeature
	C$dragon_blaster.c$750$1_0$270	= .
	.globl	C$dragon_blaster.c$750$1_0$270
;dragon_blaster.c:750: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
	C$dragon_blaster.c$752$1_0$270	= .
	.globl	C$dragon_blaster.c$752$1_0$270
;dragon_blaster.c:752: init_actor(&player, 116, PLAYER_BOTTOM - 16, 3, 1, 2, 4);
	ld	de, #0x0402
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x03
	push	hl
	ld	l, #0xa0
	push	hl
	ld	l, #0x74
	push	hl
	ld	hl, #_player
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	C$dragon_blaster.c$753$1_0$270	= .
	.globl	C$dragon_blaster.c$753$1_0$270
;dragon_blaster.c:753: player.animation_delay = 20;
	ld	hl, #(_player + 0x000a)
	ld	(hl), #0x14
	C$dragon_blaster.c$754$1_0$270	= .
	.globl	C$dragon_blaster.c$754$1_0$270
;dragon_blaster.c:754: ply_ctl.shot_delay = 0;
	ld	hl, #_ply_ctl
	ld	(hl), #0x00
	C$dragon_blaster.c$755$1_0$270	= .
	.globl	C$dragon_blaster.c$755$1_0$270
;dragon_blaster.c:755: ply_ctl.shot_type = 0;
	ld	hl, #(_ply_ctl + 0x0001)
	ld	(hl), #0x00
	C$dragon_blaster.c$756$1_0$270	= .
	.globl	C$dragon_blaster.c$756$1_0$270
;dragon_blaster.c:756: ply_ctl.powerup1 = 1;
	ld	hl, #(_ply_ctl + 0x0003)
	ld	(hl), #0x01
	C$dragon_blaster.c$757$1_0$270	= .
	.globl	C$dragon_blaster.c$757$1_0$270
;dragon_blaster.c:757: ply_ctl.powerup2 = 0;
	ld	hl, #(_ply_ctl + 0x0004)
	ld	(hl), #0x00
	C$dragon_blaster.c$758$1_0$270	= .
	.globl	C$dragon_blaster.c$758$1_0$270
;dragon_blaster.c:758: ply_ctl.powerup1_active = 1;
	ld	hl, #(_ply_ctl + 0x0005)
	ld	(hl), #0x01
	C$dragon_blaster.c$759$1_0$270	= .
	.globl	C$dragon_blaster.c$759$1_0$270
;dragon_blaster.c:759: ply_ctl.powerup2_active = 0;
	ld	hl, #(_ply_ctl + 0x0006)
	ld	(hl), #0x00
	C$dragon_blaster.c$760$1_0$270	= .
	.globl	C$dragon_blaster.c$760$1_0$270
;dragon_blaster.c:760: ply_ctl.death_delay = 0;
	ld	hl, #(_ply_ctl + 0x0007)
	ld	(hl), #0x00
	C$dragon_blaster.c$762$1_0$270	= .
	.globl	C$dragon_blaster.c$762$1_0$270
;dragon_blaster.c:762: boss.loaded = 0;
	ld	hl, #_boss
	ld	(hl), #0x00
	C$dragon_blaster.c$764$1_0$270	= .
	.globl	C$dragon_blaster.c$764$1_0$270
;dragon_blaster.c:764: init_enemies();
	call	_init_enemies
	C$dragon_blaster.c$765$1_0$270	= .
	.globl	C$dragon_blaster.c$765$1_0$270
;dragon_blaster.c:765: init_player_shots();
	call	_init_player_shots
	C$dragon_blaster.c$766$1_0$270	= .
	.globl	C$dragon_blaster.c$766$1_0$270
;dragon_blaster.c:766: init_enemy_shots();
	call	_init_enemy_shots
	C$dragon_blaster.c$767$1_0$270	= .
	.globl	C$dragon_blaster.c$767$1_0$270
;dragon_blaster.c:767: init_powerups();
	call	_init_powerups
	C$dragon_blaster.c$768$1_0$270	= .
	.globl	C$dragon_blaster.c$768$1_0$270
;dragon_blaster.c:768: init_score();
	call	_init_score
	C$dragon_blaster.c$770$1_0$270	= .
	.globl	C$dragon_blaster.c$770$1_0$270
;dragon_blaster.c:770: while (timer.value)
00106$:
	ld	hl, (#(_timer + 0x0004) + 0)
	ld	a, h
	or	a, l
	ret	Z
	C$dragon_blaster.c$772$2_0$271	= .
	.globl	C$dragon_blaster.c$772$2_0$271
;dragon_blaster.c:772: handle_player_input();
	call	_handle_player_input
	C$dragon_blaster.c$773$2_0$271	= .
	.globl	C$dragon_blaster.c$773$2_0$271
;dragon_blaster.c:773: handle_enemies();
	call	_handle_enemies
	C$dragon_blaster.c$774$2_0$271	= .
	.globl	C$dragon_blaster.c$774$2_0$271
;dragon_blaster.c:774: handle_boss();
	call	_handle_boss
	C$dragon_blaster.c$775$2_0$271	= .
	.globl	C$dragon_blaster.c$775$2_0$271
;dragon_blaster.c:775: handle_icons();
	call	_handle_icons
	C$dragon_blaster.c$776$2_0$271	= .
	.globl	C$dragon_blaster.c$776$2_0$271
;dragon_blaster.c:776: handle_powerups();
	call	_handle_powerups
	C$dragon_blaster.c$777$2_0$271	= .
	.globl	C$dragon_blaster.c$777$2_0$271
;dragon_blaster.c:777: handle_player_shots();
	call	_handle_player_shots
	C$dragon_blaster.c$778$2_0$271	= .
	.globl	C$dragon_blaster.c$778$2_0$271
;dragon_blaster.c:778: handle_enemy_shots();
	call	_handle_enemy_shots
	C$dragon_blaster.c$779$2_0$271	= .
	.globl	C$dragon_blaster.c$779$2_0$271
;dragon_blaster.c:779: handle_score();
	call	_handle_score
	C$dragon_blaster.c$781$2_0$271	= .
	.globl	C$dragon_blaster.c$781$2_0$271
;dragon_blaster.c:781: SMS_initSprites();
	call	_SMS_initSprites
	C$dragon_blaster.c$783$2_0$271	= .
	.globl	C$dragon_blaster.c$783$2_0$271
;dragon_blaster.c:783: draw_player();
	call	_draw_player
	C$dragon_blaster.c$784$2_0$271	= .
	.globl	C$dragon_blaster.c$784$2_0$271
;dragon_blaster.c:784: draw_enemies();
	call	_draw_enemies
	C$dragon_blaster.c$785$2_0$271	= .
	.globl	C$dragon_blaster.c$785$2_0$271
;dragon_blaster.c:785: draw_boss();
	call	_draw_boss
	C$dragon_blaster.c$786$2_0$271	= .
	.globl	C$dragon_blaster.c$786$2_0$271
;dragon_blaster.c:786: draw_powerups();
	call	_draw_powerups
	C$dragon_blaster.c$787$2_0$271	= .
	.globl	C$dragon_blaster.c$787$2_0$271
;dragon_blaster.c:787: draw_player_shots();
	call	_draw_player_shots
	C$dragon_blaster.c$788$2_0$271	= .
	.globl	C$dragon_blaster.c$788$2_0$271
;dragon_blaster.c:788: draw_enemy_shots();
	call	_draw_enemy_shots
	C$dragon_blaster.c$789$2_0$271	= .
	.globl	C$dragon_blaster.c$789$2_0$271
;dragon_blaster.c:789: draw_score();
	call	_draw_score
	C$dragon_blaster.c$791$2_0$271	= .
	.globl	C$dragon_blaster.c$791$2_0$271
;dragon_blaster.c:791: SMS_finalizeSprites();
	call	_SMS_finalizeSprites
	C$dragon_blaster.c$792$2_0$271	= .
	.globl	C$dragon_blaster.c$792$2_0$271
;dragon_blaster.c:792: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$dragon_blaster.c$793$2_0$271	= .
	.globl	C$dragon_blaster.c$793$2_0$271
;dragon_blaster.c:793: SMS_copySpritestoSAT();
	call	_SMS_copySpritestoSAT
	C$dragon_blaster.c$795$2_0$271	= .
	.globl	C$dragon_blaster.c$795$2_0$271
;dragon_blaster.c:795: if (boss.loaded)
	ld	a, (#_boss + 0)
	or	a, a
	jr	NZ, 00106$
	C$dragon_blaster.c$801$3_0$273	= .
	.globl	C$dragon_blaster.c$801$3_0$273
;dragon_blaster.c:801: draw_map();
	call	_draw_map
	C$dragon_blaster.c$802$3_0$273	= .
	.globl	C$dragon_blaster.c$802$3_0$273
;dragon_blaster.c:802: draw_map();
	call	_draw_map
	C$dragon_blaster.c$804$3_0$273	= .
	.globl	C$dragon_blaster.c$804$3_0$273
;dragon_blaster.c:804: if (timer.value < BOSS_TIMER)
	ld	hl, (#(_timer + 0x0004) + 0)
	ld	a, l
	sub	a, #0x1e
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00106$
	C$dragon_blaster.c$805$3_0$273	= .
	.globl	C$dragon_blaster.c$805$3_0$273
;dragon_blaster.c:805: init_boss();
	call	_init_boss
	C$dragon_blaster.c$808$1_0$270	= .
	.globl	C$dragon_blaster.c$808$1_0$270
;dragon_blaster.c:808: }
	C$dragon_blaster.c$808$1_0$270	= .
	.globl	C$dragon_blaster.c$808$1_0$270
	XG$gameplay_loop$0$0	= .
	.globl	XG$gameplay_loop$0$0
	jr	00106$
	G$timeover_sequence$0$0	= .
	.globl	G$timeover_sequence$0$0
	C$dragon_blaster.c$810$1_0$274	= .
	.globl	C$dragon_blaster.c$810$1_0$274
;dragon_blaster.c:810: void timeover_sequence()
;	---------------------------------
; Function timeover_sequence
; ---------------------------------
_timeover_sequence::
	C$dragon_blaster.c$813$2_0$274	= .
	.globl	C$dragon_blaster.c$813$2_0$274
;dragon_blaster.c:813: char pressed_button = 0;
	ld	c, #0x00
	C$dragon_blaster.c$815$1_0$274	= .
	.globl	C$dragon_blaster.c$815$1_0$274
;dragon_blaster.c:815: init_actor(&time_over, 107, 64, 6, 1, 180, 1);
	push	bc
	ld	de, #0x01b4
	push	de
	ld	hl, #0x0001
	push	hl
	ld	l, #0x06
	push	hl
	ld	l, #0x40
	push	hl
	ld	l, #0x6b
	push	hl
	ld	hl, #_time_over
	push	hl
	call	_init_actor
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$dragon_blaster.c$817$2_0$275	= .
	.globl	C$dragon_blaster.c$817$2_0$275
;dragon_blaster.c:817: while (timeover_delay || !pressed_button)
	ld	b, #0x80
00107$:
	ld	a, b
	or	a,a
	jr	NZ, 00108$
	or	a,c
	jp	NZ,_wait_button_release
00108$:
	C$dragon_blaster.c$819$2_0$275	= .
	.globl	C$dragon_blaster.c$819$2_0$275
;dragon_blaster.c:819: SMS_initSprites();
	push	bc
	call	_SMS_initSprites
	pop	bc
	C$dragon_blaster.c$821$2_0$275	= .
	.globl	C$dragon_blaster.c$821$2_0$275
;dragon_blaster.c:821: if (!(timeover_delay & 0x10))
	bit	4, b
	jr	NZ, 00102$
	C$dragon_blaster.c$822$2_0$275	= .
	.globl	C$dragon_blaster.c$822$2_0$275
;dragon_blaster.c:822: draw_actor(&time_over);
	push	bc
	ld	hl, #_time_over
	push	hl
	call	_draw_actor
	pop	af
	pop	bc
00102$:
	C$dragon_blaster.c$824$2_0$275	= .
	.globl	C$dragon_blaster.c$824$2_0$275
;dragon_blaster.c:824: draw_player();
	push	bc
	call	_draw_player
	call	_draw_enemies
	call	_draw_player_shots
	call	_draw_score
	call	_SMS_finalizeSprites
	call	_SMS_waitForVBlank
	call	_SMS_copySpritestoSAT
	call	_draw_map
	pop	bc
	C$dragon_blaster.c$835$2_0$275	= .
	.globl	C$dragon_blaster.c$835$2_0$275
;dragon_blaster.c:835: if (timeover_delay)
	ld	a, b
	or	a, a
	jr	Z, 00104$
	C$dragon_blaster.c$837$3_0$276	= .
	.globl	C$dragon_blaster.c$837$3_0$276
;dragon_blaster.c:837: timeover_delay--;
	dec	b
	jr	00107$
00104$:
	C$dragon_blaster.c$841$3_0$277	= .
	.globl	C$dragon_blaster.c$841$3_0$277
;dragon_blaster.c:841: pressed_button = SMS_getKeysStatus() & (PORT_A_KEY_1 | PORT_A_KEY_2);
	push	bc
	call	_SMS_getKeysStatus
	pop	bc
	ld	a, l
	and	a, #0x30
	ld	c, a
	C$dragon_blaster.c$845$1_0$274	= .
	.globl	C$dragon_blaster.c$845$1_0$274
;dragon_blaster.c:845: wait_button_release();
	C$dragon_blaster.c$846$1_0$274	= .
	.globl	C$dragon_blaster.c$846$1_0$274
;dragon_blaster.c:846: }
	C$dragon_blaster.c$846$1_0$274	= .
	.globl	C$dragon_blaster.c$846$1_0$274
	XG$timeover_sequence$0$0	= .
	.globl	XG$timeover_sequence$0$0
	jr	00107$
	G$main$0$0	= .
	.globl	G$main$0$0
	C$dragon_blaster.c$848$1_0$278	= .
	.globl	C$dragon_blaster.c$848$1_0$278
;dragon_blaster.c:848: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$dragon_blaster.c$850$1_0$278	= .
	.globl	C$dragon_blaster.c$850$1_0$278
;dragon_blaster.c:850: while (1)
00102$:
	C$dragon_blaster.c$852$2_0$279	= .
	.globl	C$dragon_blaster.c$852$2_0$279
;dragon_blaster.c:852: gameplay_loop();
	call	_gameplay_loop
	C$dragon_blaster.c$853$2_0$279	= .
	.globl	C$dragon_blaster.c$853$2_0$279
;dragon_blaster.c:853: timeover_sequence();
	call	_timeover_sequence
	C$dragon_blaster.c$855$1_0$278	= .
	.globl	C$dragon_blaster.c$855$1_0$278
;dragon_blaster.c:855: }
	C$dragon_blaster.c$855$1_0$278	= .
	.globl	C$dragon_blaster.c$855$1_0$278
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
Fdragon_blaster$__str_0$0_0$0 == .
__str_0:
	.ascii "Haroldo-OK"
	.db 0x5c
	.ascii "2022"
	.db 0x00
Fdragon_blaster$__str_1$0_0$0 == .
__str_1:
	.ascii "Dragon Blaster"
	.db 0x00
Fdragon_blaster$__str_2$0_0$0 == .
__str_2:
	.ascii "A dragon-themed shoot-em-up."
	.db 0x0a
	.ascii "Originally made for the SHMUP JAM 1 - Dragons - https://itch"
	.ascii ".io/jam/shmup-jam-1-dragons"
	.db 0x0a
	.ascii "Enhanced for SMS Power! Competition 2022 - https://www.smspo"
	.ascii "wer.org/forums/18879-Competitions2022DeadlineIs27thMarch"
	.db 0x0a
	.ascii "Built using devkitSMS & SMSlib - https://github.com/sverx/de"
	.ascii "vkitSMS"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0_0$0 == .
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FD0
G$__SMS__SDSC_author$0_0$0 == .
___SMS__SDSC_author:
	.ascii "Haroldo-OK"
	.db 0x5c
	.ascii "2022"
	.db 0x00
	.org 0x7FC1
G$__SMS__SDSC_name$0_0$0 == .
___SMS__SDSC_name:
	.ascii "Dragon Blaster"
	.db 0x00
	.org 0x7E93
G$__SMS__SDSC_descr$0_0$0 == .
___SMS__SDSC_descr:
	.ascii "A dragon-themed shoot-em-up."
	.db 0x0a
	.ascii "Originally made for the SHMUP JAM 1 - Dragons - https://itch"
	.ascii ".io/jam/shmup-jam-1-dragons"
	.db 0x0a
	.ascii "Enhanced for SMS Power! Competition 2022 - https://www.smspo"
	.ascii "wer.org/forums/18879-Competitions2022DeadlineIs27thMarch"
	.db 0x0a
	.ascii "Built using devkitSMS & SMSlib - https://github.com/sverx/de"
	.ascii "vkitSMS"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0_0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0xd0	; 208
	.db #0x7f	; 127
	.db #0xc1	; 193
	.db #0x7f	; 127
	.db #0x93	; 147
	.db #0x7e	; 126
