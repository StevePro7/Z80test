# TransBot SMS Disassembly Refactor

## Goal

Take the single flat Emulicious disassembly, [main_org.asm](/home/stevepro/Steven/Code/testing/Transbot/asm/main_org.asm) (8,779 lines), and split it into modular `*.inc` files, following the same folder structure and conventions already established in the sibling project `VanHalenDemoSMS` (`devkit/`, `engine/`, `object/`, `screen/`, `content/`), so the Z80 code is easier to read and navigate.

**Hard constraint:** the rebuilt ROM must remain byte-for-byte identical to the original `TransBot.sms` / `output.sms`. No code could be moved into relocatable `.section ... free` blocks (unlike VanHalenDemoSMS) because TransBot's jump tables and data are embedded in-line at fixed addresses — reordering or relocating anything would break address-dependent jump/pointer tables.

---

## Thought process and investigation steps

1. **Baseline check.** Confirmed `output.sms` and `TransBot.sms` were already byte-identical (`md5sum` match), giving a trustworthy baseline to diff the rebuilt ROM against.

2. **Studied the VanHalenDemoSMS template.** Read `main.asm`, the `linkfile`, `build.sh`, and the `devkit/`, `engine/`, `object/`, `screen/`, `content/` folders and their `.inc` files to understand the module naming and include-ordering conventions to mirror.

3. **Confirmed the toolchain.** Verified `wla-z80` and `wlalink` were installed and usable for round-trip verification.

4. **Mapped the file's structure.** Extracted the `.MEMORYMAP`/`.ROMBANKMAP` header, the `.enum` RAM variable blocks, and the `.define` port constants from the top of `main_org.asm`.

5. **Built a label/block index.** Wrote a small Python pass over the file to find every top-level `_LABEL_xxxx_` / `_DATA_xxxx_` symbol, its line number, its address (parsed from the label name), its size in lines, and a reference count — producing a dense map of all 659 top-level blocks in the file.

6. **Found jump/pointer tables.** Searched for every `; Jump Table` / `; Pointer Table` comment Emulicious had inserted (38 tables total), to identify dispatch points such as:
   - `_DATA_268_`: the main 6-entry game-state jump table indexed by `_RAM_C003_` (splash → title → gameplay → secret-command screen → game over, etc.)
   - `_DATA_513_`: a 6-entry stage-phase jump table indexed by `_RAM_C16F_`
   - `_DATA_2F96_`: an 82-entry object-behavior jump table
   - `_DATA_30CE_`: a 23-entry table indexed by `_RAM_DE00_` (sound engine)
   - `_DATA_3B50_`: an 80-entry pointer table (sprite animation data)
   - Several smaller 2–5 entry tables used as local `if/else` dispatch inside object-behavior routines.

7. **Walked the call graph region by region.** Sampled dozens of code blocks across the whole address range (boot code, VDP interrupt handler, main dispatcher, each of the 6 game-state handlers, collision/motion/object helpers, scroll and text-blit helpers, the PSG sound driver, and the tail-end data blocks) to understand what each contiguous address range was responsible for before deciding where to cut module boundaries.

8. **Chose 32 module boundaries.** Grouped contiguous address ranges into `.inc` files by responsibility (boot, interrupt handling, state/screen dispatch, scrolling, collision, object/enemy/player behavior, sound, and raw data blobs), matching VanHalenDemoSMS's `devkit/engine/object/screen/content` folder scheme.

9. **Wrote a scripted splitter** (Python) that:
   - Located each boundary label in the original file (backing up over any preceding comment lines so headers stay attached to their code).
   - Sliced the file into 32 ordered chunks, one per `.inc` file, each prefixed with a generated header comment (`; <description> ($start-$end)`).
   - Extracted the `.MEMORYMAP`/`.ROMBANKMAP` block into `devkit/memory_manager.inc`, the `.enum` RAM blocks into `devkit/enum_manager.inc`, and the `.define` port constants into `devkit/define_manager.inc`.
   - Generated a new slim `main.asm` containing only the `.sdsctag`/header comment, the three `devkit/` includes, the `.BANK 0 SLOT 0` / `.ORG $0000` directives, the 32 `.include` lines (grouped and commented by folder, in original address order), the `.BANK 1 SLOT 1` switch, and the final `content/rom_header.inc` include for the trailing bank-1 header bytes.

10. **Built and verified.** Compiled the new `main.asm` with `wla-z80`, linked with `wlalink`, and compared the resulting ROM's MD5 hash against the original `TransBot.sms` — **confirmed an exact match** (`dd26c323d1323691fed04cd8498afbcf`), proving the refactor preserved all behavior and addresses exactly.

11. **Cleaned up** temporary files/scripts used only for analysis and generation.

---

## Result

### Verification

```
md5sum output.sms TransBot.sms          # before refactor
dd26c323d1323691fed04cd8498afbcf  output.sms
dd26c323d1323691fed04cd8498afbcf  TransBot.sms

# after rebuilding from the new modular main.asm:
dd26c323d1323691fed04cd8498afbcf  new.sms   ← identical
```

`main_org.asm` was left untouched as the original reference disassembly.

### New layout (mirrors VanHalenDemoSMS)

- **`main.asm`** (72 lines) — `.sdsctag`-style header comment, the three `devkit/` includes, `.BANK`/`.ORG` directives, and the 32 `.include` lines in original address order, grouped and commented by folder.

- **`devkit/`** — shared low-level constructs:
  - `memory_manager.inc` — `.MEMORYMAP` / `.ROMBANKMAP`
  - `enum_manager.inc` — all RAM variable `.enum` blocks
  - `define_manager.inc` — I/O port `.define`s

- **`engine/`** — core systems:
  - `vector_manager.inc` — reset/RST/IRQ/NMI vectors and VDP init data
  - `boot_manager.inc` — cold boot and warm restart
  - `state_manager.inc` — main loop and game-state dispatcher
  - `screen_manager.inc` — screen setup/reset
  - `stage_manager.inc` — stage phase sequencer
  - `map_manager.inc` — map/level data lookup
  - `pool_manager.inc` — free object slot search
  - `interrupt_manager.inc` — VDP (VBlank) interrupt handler
  - `collision_manager.inc` — collision detection
  - `input_manager.inc` — controller input and demo playback
  - `text_manager.inc` — text blit helper, HI-SCORE and message screens
  - `vdp_manager.inc` — VBlank wait and VDP/VRAM helpers
  - `scroll_manager.inc` — background scroll and tilemap streaming
  - `score_manager.inc` — score and HUD digits
  - `sound_manager.inc` — PSG sound engine

- **`object/`** — game objects/entities:
  - `object_manager.inc` — object list update
  - `sprite_object.inc` — sprite placement, animation, and object free
  - `player_object.inc` — player object and weapons
  - `motion_object.inc` — object motion primitives
  - `spawn_object.inc` — enemy spawners
  - `enemy_object.inc` — enemy behaviors (largest file, ~1,300 lines)
  - `behavior_table.inc` — object behavior jump table

- **`screen/`** — the 6 top-level game states:
  - `splash_screen.inc`, `title_screen.inc`, `secret_screen.inc` (SECRET COMMAND screen), `game_screen.inc` (gameplay start/continue), `gameover_screen.inc`, `secret_select.inc` (SECRET COMMAND input/text)

- **`content/`** — raw data:
  - `psg_data.inc` — PSG frequency/sound tables
  - `sprite_data.inc` — sprite animation data
  - `gfx_data.inc` — graphics `.incbin` files
  - `level_data.inc` — level map data
  - `rom_header.inc` — trailing bank-1 header bytes

### Line counts (32 new `.inc` files + `main.asm`, 8,875 lines total)

| File | Lines | File | Lines | File | Lines |
|---|---|---|---|---|---|
| main.asm | 72 | engine/collision_manager.inc | 415 | object/motion_object.inc | 170 |
| devkit/memory_manager.inc | 16 | engine/input_manager.inc | 177 | object/object_manager.inc | 144 |
| devkit/enum_manager.inc | 336 | engine/interrupt_manager.inc | 154 | object/player_object.inc | 400 |
| devkit/define_manager.inc | 12 | engine/map_manager.inc | 271 | object/spawn_object.inc | 709 |
| engine/boot_manager.inc | 61 | engine/pool_manager.inc | 31 | object/sprite_object.inc | 360 |
| engine/vector_manager.inc | 53 | engine/score_manager.inc | 287 | screen/gameover_screen.inc | 36 |
| engine/state_manager.inc | 22 | engine/screen_manager.inc | 94 | screen/game_screen.inc | 78 |
| engine/scroll_manager.inc | 434 | engine/sound_manager.inc | 698 | screen/secret_screen.inc | 24 |
| engine/stage_manager.inc | 387 | engine/text_manager.inc | 234 | screen/secret_select.inc | 94 |
| engine/vdp_manager.inc | 306 | object/behavior_table.inc | 15 | screen/splash_screen.inc | 18 |
| content/gfx_data.inc | 25 | content/psg_data.inc | 237 | screen/title_screen.inc | 49 |
| content/level_data.inc | 646 | content/sprite_data.inc | 516 | content/rom_header.inc | 3 |

---

## Caveats and suggested next steps

- **No `.section` blocks.** Unlike VanHalenDemoSMS's relocatable `.section ... free` style, every `.inc` file here is address-fixed, in original order — do not reorder `.include` lines in `main.asm` or move code between files, since jump/pointer tables and in-line data depend on exact addresses.
- **Symbol names are still raw.** Labels remain the auto-generated `_LABEL_xxxx_` / `_DATA_xxxx_` names from Emulicious. File names were chosen from behavior observed while reading each block (e.g. the "SECRET COMMAND" text, "HI-SCORE" handling, the VBlank handler at `$FA6`), but the six game-state handlers are named only by their position in the state jump table — confirm and rename as their real purpose becomes clear.
- **Some module boundaries are approximate.** A few `engine/` and `object/` files are broader than their name implies (e.g. `enemy_object.inc` is ~1,300 lines and likely covers multiple distinct enemy types).
- **Follow-up work:** give the `_LABEL_`/`_DATA_` symbols meaningful names, and replace the raw `_RAM_Cxxx_` variable names in `devkit/enum_manager.inc` with descriptive ones, the same way VanHalenDemoSMS's RAM map was eventually cleaned up.
