# Z80test
Repository to consolidate many Z80 Assembly ideas


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