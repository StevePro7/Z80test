@echo off
REM title

cd ..
cd banks
cd bank14


:: Tiles
bmp2tile.exe "raw\VanHalen1998.bmp" -savetiles "VanHalen1998 (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 0 -savetilemap "VanHalen1998 (tilemap).stmcompr" -savepalette "VanHalen1998 (palette).bin" -fullpalette -exit
::bmp2tile.exe "raw\VanHalenTitle.bmp" -savetiles "VanHalenTitle (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 64 -savetilemap "VanHalenTitle (tilemap).stmcompr" -savepalette "VanHalenTitle (palette).bin" -fullpalette -exit
::bmp2tile.exe "raw\VanHalenTitleGap.bmp" -savetiles "VanHalenTitleGap (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 64 -savetilemap "VanHalenTitleGap (tilemap).stmcompr" -savepalette "VanHalenTitleGap (palette).bin" -fullpalette -exit
::bmp2tile.exe "raw\VanHalenTitleTop.bmp" -savetiles "VanHalenTitleTop (tiles).psgcompr" -removedupes -mirror -planar -tileoffset 64 -savetilemap "VanHalenTitleTop (tilemap).stmcompr" -savepalette "VanHalenTitleTop (palette).bin" -fullpalette -exit


cd ..
folder2c bank14 bank14 14

sdcc -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK14 bank14.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

cd ..
cd scripts