Hello World
06-Nov-2026


| Property | Value |
| --- | --- |
| Number of memory slots | 1 |
| Default memory slot | Slot 0 |
| Slot starting address | `$0000` |
| Slot size | 32 KB (`$8000`) |
| Slot address range | `$0000–$7FFF` |
| Total ROM banks | 1 |
| ROM bank size | 32 KB (`$8000`) |
| Total ROM capacity | 32 KB |

Key distinction:

- `.memorymap` defines the Z80 CPU memory address space.
- `.rombankmap` defines how ROM data is organised into banks.


Here there is only one memory slot and one ROM bank, both of size 32 KB.


Boot
https://www.smspower.org/maxim/HowToProgram/Boot

di
im 1
things which cause code execution to jump somewhere 
interrupting program flow to handle something else

We don't want this to happen until we're ready


Pause
https://www.smspower.org/maxim/HowToProgram/PauseHandler
$0066
NMI (Non-Maskable Interrupt) handler address

When puaes button pressed then code execution stops
and jumps to the NMI handler at `$0066`.
Do whatever instructions until
retn        ; return from NMI handler and resume normal execution

.org $0066


VDP registers
https://www.smspower.org/maxim/HowToProgram/Initialisation

Block transfer to VDP
OTIR
    ld hl,VdpData
    ld b,VdpDataEnd-VdpData
    ld c,$bf
    otir

otir means "output the b bytes of data starting at the memory location stored in hl to the port specified in c".

.db $04,$80,$00,$81,$ff,$82,$ff,$85,$ff,$86,$ff,$87,$00,$88,$00,$89,$ff,$8a


Word 1:  $04 $80
Word 2:  $00 $81
Word 3:  $FF $82
Word 4:  $FF $85
Word 5:  $FF $86
Word 6:  $FF $87
Word 7:  $00 $88
Word 8:  $00 $89
Word 9:  $FF $8A

[value] [register number | $80]

REMEMBER
10 = VDP REGISTER WRITE
so
$8004 = $40 80   = VDP REGISTER WRITE for register 0 with value $04
$8100 = $00 81   = VDP REGISTER WRITE for register 1 with value $00
$82FF = $FF 82   = VDP REGISTER WRITE for register 2 with value $FF
etc.


VDP Table

| VDP Register | Value | Initialised? | Purpose |
| --- | --- | --- | --- |
| R0 | `$04` | Yes | Mode/control settings |
| R1 | `$00` | Yes | Mode/control settings |
| R2 | `$FF` | Yes | Name table base address |
| R3 | — | No | Colour table base address |
| R4 | — | No | Background pattern generator base |
| R5 | `$FF` | Yes | Sprite attribute table base |
| R6 | `$FF` | Yes | Sprite pattern generator selection |
| R7 | `$00` | Yes | Text foreground/background colour |
| R8 | `$00` | Yes | Horizontal scrolling |
| R9 | `$FF` | Yes | Vertical scrolling |
| R10 | `$FF` | Yes | Line interrupt counter reload |


Clearing VRAM - VRAM write access, looping, conditional jumps

    ld a,$00
    out ($bf),a
    ld a,$40
    out ($bf),a

The first $4000 is NOT the actual VRAM address, but rather the VDP's internal address for VRAM access. The code above sets the VRAM write address to $4000 before performing any data transfer.

ld bc, $4000    ; Counter for 16KB of VRAM
    ClearVRAMLoop:
        ld a,$00    ; Value to write
        out ($be),a ; Output to VRAM
        dec bc
        ld a,b
        or c
        jp nz,ClearVRAMLoop

But the second ld bc, $4000 is used as a counter for the number of bytes to write to VRAM. It does not represent an actual memory address, but rather the number of iterations needed to clear 16KB of VRAM.


Proof
    ld a,$00
    out ($bf),a
    ld a,$40
    out ($bf),a

$4000
0100 0000

01 000000

Bits 0–13: VRAM address ($0000)
Bits 14–15: Operation (01 = VRAM write)

00 = VRAM READ
01 = VRAM WRITE
10 = VDP REGISTER WRITE
11 = CRAM WRITE