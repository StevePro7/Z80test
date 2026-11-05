# Transbot
05-Nov-2026

Source:
~/Steven/Code/testing

I have Reverse Engineer Anything REA MCP server running - I have 2x top-level projects open
#1 VanHalenDemoSMS
I got the original disassembled ROM from Emulicious debugger and refactor all the Z80 ASM code into more modular *.inc files
I would like VanHalenDemoSMS to be a guideline and use this as a template to apply the same refactor structure to
#2 Transbot
You will see in Transbot I have just the top-level main_org.asm Z80 ASM file with incbin data files - this is difficult to understand all Z80 code in one ASM file - can you help refactor Transbot into many *.inc files like  VanHalenDemoSMS?
PS: pls leverage REA MCP server as you need - thanks


_RAM_C003_


I'm identifying the jump table around 0x2F96-0x3039 with 82 entries, followed by what looks like a sound engine indexed by RAM DE00 variables and PSG ports around 0x344E-0x3488, with sound data and pointer tables extending beyond that. I'm also noting input handling via IOPort at 0x2453/0x24BF and the VDP interrupt handler at 0xFA6, planning to scan the rest of the map before naming the key sections more precisely.


VBlank ISR


I'm tracing through the jump table entries for each game state (274, 2B9, 31D, 347, 3B2, 3EE) to figure out what each state actually does so I can name the screen files correctly


Past that there's a sound engine block from 0x303A-0x3496



Continuing further, I'm decoding the tile data at 712-734, piecing together text strings like "SECRET COMMAND" and "EXIT" from the tile indices, which suggests this is some kind of hidden cheat-code or password screen rather than a standard story screen, so I'm reconsidering the module name accordingly.