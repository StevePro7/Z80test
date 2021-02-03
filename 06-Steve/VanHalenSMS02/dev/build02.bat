@echo off

cd devkit
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 _sms_manager.c
cd ..

cd engine
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 asm_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 audio_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 content_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 cursor_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 enum_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 font_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 global_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 locale_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 input_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 record_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 screen_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 scroll_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 storage_manager.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 timer_manager.c
cd ..

cd object
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 cursor_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 record_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 scroll_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 storage_object.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 timer_object.c
cd ..

cd screen
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 none_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 splash_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 title_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 scroll_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 select_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 record_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 detail_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 test_screen.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file ..\peep-rules.txt --std-c99 func_screen.c
cd ..


REM echo Build main
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c



REM https://www.askingbox.com/question/batch-script-delete-file-if-it-exists
cd engine
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

cd object
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

cd screen
if exist "*.asm" del "*.asm" > nul
if exist "*.lst" del "*.lst" > nul
if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.asm" del "*.asm" > nul
if exist "*.ihx" del "*.ihx" > nul
if exist "*.lk"  del "*.lk"  > nul
if exist "*.lst" del "*.lst" > nul
REM if exist "*.map" del "*.map" > nul
if exist "*.noi" del "*.noi" > nul
REM if exist "*.rel" del "*.rel" > nul
if exist "*.sym" del "*.sym" > nul


::C:\SEGA\Fusion\fusion.exe output.sms
:: C:\SEGA\Meka\mekaw.exe output.sms
::java -jar C:\SEGA\Emulicious\emulicious.jar output.sms


@echo on