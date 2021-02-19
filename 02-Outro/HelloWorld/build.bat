@echo off
echo Build
sdcc --debug -c -mz80 --std-sdcc99 main.c

echo Link
sdcc --debug -mz80 --no-std-crt0 --data-loc 0xC000 -o output.ihx crt0_sms.rel main.rel SMSlib.lib

echo Run
ihx2sms output.ihx output.sms

:: Cleanup
if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.noi" del "*.noi" > nul
if exist "*.sym" del "*.sym" > nul

java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
::output.sms