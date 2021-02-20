@echo off

:: Compile
sdcc -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c

:: Link
sdcc -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ..\crt0\crt0_sms.rel main.rel ..\lib\SMSlib.lib
 
 :: Execute
ihx2sms output.ihx output.sms

:: Run
::java -jar C:\SEGA\Emulicious\Emulicious.jar output.sms
output.sms