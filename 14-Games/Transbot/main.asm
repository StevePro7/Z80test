; This disassembly was created using Emulicious (http://www.emulicious.net)

.include "devkit/memory_manager.inc"
.include "devkit/enum_manager.inc"
.include "devkit/define_manager.inc"

.BANK 0 SLOT 0
.ORG $0000


; engine
.include "engine/vector_manager.inc"
.include "engine/boot_manager.inc"

; object
.include "object/object_manager.inc"

; engine
.include "engine/state_manager.inc"

; screen
.include "screen/splash_screen.inc"
.include "screen/title_screen.inc"
.include "screen/secret_screen.inc"
.include "screen/game_screen.inc"
.include "screen/gameover_screen.inc"

; engine
.include "engine/screen_manager.inc"
.include "engine/stage_manager.inc"
.include "engine/map_manager.inc"

; object
.include "object/sprite_object.inc"
.include "object/player_object.inc"

; engine
.include "engine/pool_manager.inc"
.include "engine/interrupt_manager.inc"
.include "engine/collision_manager.inc"

; object
.include "object/motion_object.inc"
.include "object/spawn_object.inc"
.include "object/enemy_object.inc"

; engine
.include "engine/input_manager.inc"
.include "engine/text_manager.inc"
.include "engine/vdp_manager.inc"
.include "engine/scroll_manager.inc"
.include "engine/score_manager.inc"

; screen
.include "screen/secret_select.inc"

; object
.include "object/behavior_table.inc"

; engine
.include "engine/sound_manager.inc"

; content
.include "content/psg_data.inc"
.include "content/sprite_data.inc"
.include "content/gfx_data.inc"
.include "content/level_data.inc"

.BANK 1 SLOT 1
.ORG $0000

.include "content/rom_header.inc"
