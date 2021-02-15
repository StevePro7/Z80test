# Z80test
Repository to consolidate many Z80 Assembly ideas

15/02/2021
Code files to copy up to StevProXNA

01-Intro
02-Outro
03-Codes	get another code file
04-Games
05-Utils	BinaryFileWrite


Automate scripts
gfx.bat
D:\Steven\VanHalen\SMS02_asm\Test_scripts

e.g.
ASM
bmp2tile.exe raw\splash.bmp
-savetiles "splash (tiles).inc"
-removedupes -mirror -planar -tileoffset 64

-savetilemap "splash (tilemap).inc"
-savepalette "splash (palette).inc"
-fullpalette -exit

SRC
bmp2tile.exe raw\splash.bmp
-savetiles "splash (tiles).psgcompr"
-removedupes -mirror -planar -tileoffset 64 

-savetilemap "splash (tilemap).stmcompr"
-savepalette "splash (palette).bin"
-fullpalette -exit


SDCC - Interfacing with Z80 assembler code
https://gist.github.com/Konamiman/af5645b9998c802753023cf1be8a2970


GOOGLE
sega master system z80 tutorials

https://www.chibiakumas.com/z80/MasterSystemGameGear.php

https://www.smspower.org/Development/GettingStarted

https://www.smspower.org/Development/GettingStarted?action=sourceblock&num=1
https://www.smspower.org/Articles/TrainersDoItYourself