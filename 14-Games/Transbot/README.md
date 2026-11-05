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



Great - PS: with the SECRET_COMMAND - I remember there was an invincibility cheat in this game - I think you had to enter a joystick combo to set invincibility to true so you could go thru the entire game without dying  - can we locate this cheat / easter egg and tell me which byte to set if I want to ROM hack the generated binary?



https://segaretro.org/TransBot/Hidden_content



PATCH
Yes. I'll write the IPS file (the same 3-byte change, 3E 0F 00) and apply it to a copy of the ROM. Your original TransBot.sms and all the code stay untouched.

I created the IPS file and used it to patch a copy of the ROM. I haven't played the patched ROM, so the cheat itself is untested.

Patch file: TransBot_AllSecretCommands.ips (16 bytes). It changes only offset 0x3CA from 3A 12 C0 to 3E 0F 00. That makes the game start with all four secret commands set: 10 lives, infinite arms, infinite power and slow weapon cycling.
Patched ROM: TransBot_AllSecretCommands.sms. It's the same 32,768 bytes as the original, and exactly 3 bytes differ.
Originals untouched: asm/TransBot.sms still has MD5 dd26c323…, and no source files changed. The patched ROM's MD5 is 4f879f3d….
Load the patched ROM in Emulicious, start a game, and check that you have 10 lives and don't die. You don't need to go through the secret screen, because the toggles are forced on at the start of every real game. Any IPS tool, such as Lunar IPS or Flips, can also apply the .ips to a fresh copy of TransBot.sms.


Why a RAM address matters here
Your selected code, ld a,($C100) / bit 0,a, isn't patched, and that's fine. It reads RAM at run time, and the patch changes what gets written into that RAM before the game starts:

Secret screen (RAM $C012): the menu toggles are stored in $C012. A cold boot sets it to 0 (no commands on).
Game start (the patched instruction): the original code runs ld a,($C012) and then ld ($C100),a, so whatever was on the menu gets copied into $C100. After the patch, a is always $0F, so $C100 always gets $0F (all four bits on).
During play: the game checks bits of $C100. Your selection is the bit 0 check, which gives 10 lives instead of 3. The other checks test bits 1, 2 and 3.
So I patched the one instruction in ROM that fills $C100, not the checks that read it.


The label confusion
In my earlier table I wrote _LABEL_3A2_ for the lives check, and that label doesn't exist. The check is in _LABEL_429_, which is the code you selected. The address where the patch lands is 0x3CA, which falls inside _LABEL_3B2_ (the "game start" state, in game_screen.inc). In your selection, the line numbers are from main_org.asm. The code hasn't moved and still sits at the same ROM addresses in the split files.


You can confirm the patch with a hex dump of both files:
xxd -s 0x3C8 -l 8 asm/TransBot.sms
xxd -s 0x3C8 -l 8 patches/TransBot_AllSecretCommands.sms


Python code
cd /home/stevepro/Steven/Code/testing/Transbot && mkdir -p patches && python3 - <<'EOF'
import hashlib
off, data = 0x3CA, bytes([0x3E,0x0F,0x00])   # ld a,$0F ; nop  (all 4 secret commands ON)
ips = b'PATCH' + off.to_bytes(3,'big') + len(data).to_bytes(2,'big') + data + b'EOF'
open('patches/TransBot_AllSecretCommands.ips','wb').write(ips)

# apply IPS to a copy of the ROM
rom = bytearray(open('asm/TransBot.sms','rb').read())
p = open('patches/TransBot_AllSecretCommands.ips','rb').read()
assert p[:5]==b'PATCH'; i=5
while p[i:i+3]!=b'EOF':
o=int.from_bytes(p[i:i+3],'big'); n=int.from_bytes(p[i+3:i+5],'big'); i+=5
assert n>0; rom[o:o+n]=p[i:i+n]; i+=n
open('patches/TransBot_AllSecretCommands.sms','wb').write(rom)

a=open('asm/TransBot.sms','rb').read(); b=bytes(rom)
print('ips bytes:',p.hex(' '))
print('diffs:',[(hex(k),a[k],b[k]) for k in range(len(a)) if a[k]!=b[k]])
print('sizes',len(a),len(b))
print('orig md5',hashlib.md5(a).hexdigest()); print('new  md5',hashlib.md5(b).hexdigest())
EOF
ls -la patches; md5sum asm/TransBot.sms



BEFORE
000003c8: edb0 3a12 c032 00c1

AFTER
000003c8: edb0 3e0f 0032 00c1


0x03A	3a 12 c0
0x03A	3e 0f 00



ld a, (_RAM_C100_)			; stevepro before
3a 12 c0


ld a, $0f					; stevepro after!
nop							; stevepro after!
3e 0f 00