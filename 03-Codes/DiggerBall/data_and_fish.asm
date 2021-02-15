;==============================================================
;
; Digger Ball (c) Aypok 2007
;
; Email: aypok at aypok dot co dot uk
; Web:   http://www.aypok.co.uk/
;
;==============================================================
; 
; This file loads all the data required for this fun pile of
; gamage! Wee!!1
; 
;==============================================================



;==============================================================
; Include all of the music data. It must go in slot 2.
;==============================================================
.slot 2
.section "Music Data Intro" superfree
    ; Intro music for Aypok's image.
    music_data_intro_aypok:
    .incbin "music/music_data_intro_aypok.epsgmod"
.ends

.section "Music Data Title" superfree
    ; Title music.
    music_data_title:
    .incbin "music/music_data_title.epsgmod"
.ends

.section "Music Data Game Completed" superfree
    music_data_game_complete:
    .incbin "music/music_data_game_complete.epsgmod"
.ends

.section "Music Data In-Game" superfree
    music_data_ingame:
    .incbin "music/music_data_ingame_03.epsgmod"
.ends

.section "Music Data Level Ending" superfree
    music_data_level_ending:
    .incbin "music/music_data_level_done.epsgmod"
.ends



;==============================================================
; Tile data.
;==============================================================
.section "Tile Data" superfree
    ; "Aypok presents" screen tiles.
    tile_data_presents:
    .include "tiles/tile_data_aypok_playgen.inc"
.ends

.section "Tile Data Stuff" superfree
    ; "SMS Power!" screen tiles.
    tile_data_smspower:
    .include "tiles/tile_data_smspower.inc"

    ; In-game tiles.
    tile_data:
    .include "tiles/tile_data.inc"
    .include "tiles/tile_data_font.inc"
    .include "tiles/tile_data_chars.inc"
    .include "tiles/tile_data_misc.inc"
.ends

.section "Title Screen Tiles" superfree
    ; Title screen tiles.
    tile_data_title:
    .include "tiles/tile_data_title.inc"
    tile_data_title_menu:
    .include "tiles/tile_data_menu.inc"
.ends



;==============================================================
; Tile map data (excluding levels).
;==============================================================
.section "Tilemap Data" superfree
    ; "Aypok presents" screen tile-map.
    tile_map_presents:
    .include "tilemaps/tile_map_aypok_playgen.inc"

    ; "SMS Power!" screen tilemap.
    tile_map_smspower:
    .include "tilemaps/tile_map_smspower.inc"

    ; Credits screen tile-map.
    tile_map_credits:
    .include "tilemaps/tile_map_credits.inc"
.ends

.section "Title Tilemap Data" superfree
    ; Title screen tile-map.
    tile_map_title:
    .include "tilemaps/tile_map_title.inc"
.ends



;==============================================================
; Tile map data containing the base of the levels.
;==============================================================
.section "Levels 01 to 10 Data" superfree
    level_01:
    .include "tilemaps/level_01.inc"
    level_02:
    .include "tilemaps/level_02.inc"
    level_03:
    .include "tilemaps/level_03.inc"
    level_04:
    .include "tilemaps/level_04.inc"
    level_05:
    .include "tilemaps/level_05.inc"
    level_06:
    .include "tilemaps/level_06.inc"
    level_07:
    .include "tilemaps/level_07.inc"
    level_08:
    .include "tilemaps/level_08.inc"
    level_09:
    .include "tilemaps/level_09.inc"
    level_10:
    .include "tilemaps/level_10.inc"
.ends

.section "Levels 11 to 20 Data" superfree
    level_11:
    .include "tilemaps/level_11.inc"
    level_12:
    .include "tilemaps/level_12.inc"
    level_13:
    .include "tilemaps/level_13.inc"
    level_14:
    .include "tilemaps/level_14.inc"
    level_15:
    .include "tilemaps/level_15.inc"
    level_16:
    .include "tilemaps/level_16.inc"
    level_17:
    .include "tilemaps/level_17.inc"
    level_18:
    .include "tilemaps/level_18.inc"
    level_19:
    .include "tilemaps/level_19.inc"
    level_20:
    .include "tilemaps/level_20.inc"
.ends



;==============================================================
; Palette data.
;==============================================================
.slot 0
.section "Palette Data" superfree
    ; "Aypok presents" screen palettes. Including the fading palettes.
    presents_palette_data:
    .db $00,$04,$34,$0e,$03,$00,$08,$00,$0d,$00,$30,$00,$00,$00,$00,$00
    
    fade_presents_palette_data_1:
    .db $00,$00,$20,$08,$02,$2a,$04,$15,$08,$00,$20,$00,$00,$00,$00,$00
    
    fade_presents_palette_data_2:
    .db $00,$00,$10,$04,$01,$15,$00,$00,$04,$00,$10,$00,$00,$00,$00,$00
    
    
    
    ; SMS Power screen palettes. Including the fading palettes.
    sms_power_palette_data:
    .db $00,$14,$24,$3f,$2a,$15,$29,$3a,$25,$3e,$19,$2e,$1a,$05,$04,$2f
    
    fade_sms_power_palette_data_1:
    .db $00,$00,$00,$2a,$2a,$15,$20,$00,$30,$20,$20,$2a,$2a,$2a,$00,$00
    
    fade_sms_power_palette_data_2:
    .db $00,$00,$00,$15,$15,$00,$10,$00,$20,$10,$10,$15,$15,$15,$00,$00
    
    
    
    ; Title screen palettes. Including the fading palettes.
    title_palette_data:
    .db $2a,$0a,$06,$15,$28,$20,$2b,$02,$31,$39,$24,$00,$3f,$03,$0f,$35
    .db $24,$00,$0c,$0f,$31,$0b,$03,$22,$00,$00,$00,$00,$00,$00,$00,$00
    
    fade_title_palette_data_1:
    .db $15,$08,$02,$00,$20,$10,$22,$01,$20,$30,$20,$00,$2a,$02,$08,$30
    .db $20,$00,$08,$08,$20,$06,$02,$11,$00,$00,$00,$00,$00,$00,$00,$00
    
    fade_title_palette_data_2:
    .db $00,$04,$01,$00,$10,$00,$11,$00,$10,$20,$10,$00,$15,$01,$04,$20
    .db $10,$00,$04,$04,$10,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00
    
    
    
    ; Ending credits colours.
    palette_data_credits:
    .db $10,$0c,$08,$00,$00,$15,$00,$00,$0f,$00,$00,$00,$00,$00,$00,$00 ; Normal colours.
    .db $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Sprite colours.
    palette_data_credits_end:
    
    
    
    ; In-game colours.
    palette_data:           ; R G B Y
    .db $00,$01,$02,$03,$04,$08,$0c,$20,$30,$38,$0a,$0f,$1f,$3f,$2a,$15 ; Normal colours.
    .db $00,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$0b,$00,$3f,$2a,$3f ; Sprite colours.
    
    palette_data_ice:       ; R G B
    .db $10,$3c,$3e,$3f,$22,$36,$3a,$30,$39,$3c,$0f,$1f,$1f,$3f,$3f,$2a ; Normal colours.
    .db $10,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$0b,$00,$3f,$2a,$3f ; Sprite colours.
    
    palette_data_desert:    ; R G Y
    .db $01,$01,$02,$03,$06,$0b,$0f,$20,$30,$38,$0a,$0f,$2f,$2a,$15,$00 ; Normal colours.
    .db $01,$0c,$08,$00,$06,$15,$2a,$2b,$0f,$30,$03,$0b,$00,$3f,$2a,$3f ; Sprite colours.
    
    data_palette_char:
    .db 21,21,21,21,21,21,21,21,63
.ends



;==============================================================
; String data.
;==============================================================
.slot 0
.section "Strings" superfree
    ; Strings for tiling, but set to use the sprite palette (hence "inv" for inverted).
    str_score_tile_inv:     .db 39,08,46,08,34,08,60,08,48,08                                           ; "SCORE".
    str_level_tile_inv:     .db 55,08,48,08,63,08,48,08,55,08                                           ; "LEVEL".
    str_tries_tile_inv:     .db 61,08,60,08,52,08,48,08,39,08                                           ; "TRIES".
    
    ; Normal strings built with tiles. Uses tile palette.
    str_score_tile:         .db 39,00,46,00,34,00,60,00,48                                              ; "SCORE".
    str_level_tile:         .db 55,00,48,00,63,00,48,00,55                                              ; "LEVEL".
    str_complete_tile:      .db 00,00,46,00,34,00,56,00,58,00,55,00,48,00,61,00,48,00,69                ; " COMPLETE!".
    str_start_cont_tile:    .db 58,24,60,24,48,24,39,24,39,24,00,24,00,24,39,24,61,24,44,24,60,24,61,24 ; "PRESS  START".
    str_game_over_tile:     .db 00,24,50,24,44,24,56,24,48,24,00,24,34,24,63,24,48,24,60,24,69,24,00,24 ; " GAME OVER! ".
    str_you_have_tile:      .db 66,00,34,00,62,00,00,00,51,00,44,00,63,00,48                            ; "YOU HAVE".
    str_tries_left_tile:    .db 00,00,61,00,60,00,52,00,48,00,39,00,00,00,55,00,48,00,49,00,61,00,69    ; " TRIES LEFT!".
    str_retry_tile:         .db 60,00,48,00,61,00,60,00,66                                              ; "RETRY".
    str_quit_tile:          .db 59,00,62,00,52,00,61                                                    ; "QUIT".
    str_the_workers_tile:   .db 61,08,51,08,48,08,00,08,00,08,64,08,34,08,60,08,54,08,48,08,60,08,39,08 ; "THE  WORKERS"
    str_are_now_safe_tile:  .db 44,08,60,08,48,08,00,08,57,08,34,08,64,08,00,08,39,08,44,08,49,08,48,08 ; "ARE NOW SAFE"
    str_well_done_tile:     .db 64,08,48,08,55,08,55,08,00,08,47,08,34,08,57,08,48,08,69,08             ; "WELL DONE!".
    str_game_complete_tile: .db 50,08,44,08,56,08,48,08,00,08,46,08,34,08,56,08,58,08,55,08,48,08,61,08,48,08,69,08 ;   "GAME COMPLETE!"
    
    ; For title screen menu.
    str_easy_tile:          .db $82,$09,$83,$09,$84,$09,$85,$09                                         ; "EASY".
    str_medium_tile:        .db $88,$09,$89,$09,$8a,$09,$8b,$09,$8c,$09,$8d,$09                         ; "MEDIUM".
    str_hard_tile:          .db $8f,$09,$90,$09,$91,$09,$92,$09,$93,$09                                 ; "HARD".
    str_credits_tile:       .db $94,$09,$95,$09,$96,$09,$97,$09,$98,$09,$99,$09                         ; "CREDITS".
    
    ; 32 byte null string.
    str_null_tile:          .db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
    str_score_sprite:       .db 212,39,220,46,228,34,236,60,244,48                                      ; "SCORE".
.ends

