@echo off
REM albums

cd ..
cd banks
cd bank12


:: Tiles
::bmp2tile.exe "raw\VanHalen1998.bmp" -savetiles "VanHalen1998 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "VanHalen1998 (tilemap).stmcompr" -savepalette "VanHalen1998 (palette).bin" -fullpalette -exit
bmp2tile.exe "raw\VanHalen1991.bmp" -savetiles "VanHalen1991 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "VanHalen1991 (tilemap).stmcompr" -savepalette "VanHalen1991 (palette).bin" -fullpalette -exit


cd ..
folder2c bank12 bank12 12

sdcc -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK12 bank12.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts