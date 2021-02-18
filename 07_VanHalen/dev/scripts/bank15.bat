@echo off
REM splash

cd ..
cd banks
cd bank15


:: Tiles
bmp2tile.exe "raw\VanHalen2012.bmp" -savetiles "VanHalen2012 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "VanHalen2012 (tilemap).stmcompr" -savepalette "VanHalen2012 (palette).bin" -fullpalette -exit
::bmp2tile.exe raw\splash.bmp -savetiles "splash (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 64 -savetilemap "splash (tilemap).stmcompr" -savepalette "splash (palette).bin" -fullpalette -exit


cd ..
folder2c bank15 bank15 15

sdcc -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK15 bank15.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts