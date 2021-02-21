@echo off

REM echo Linking
sdcc --debug -o output.ihx --Werror --opt-code-speed -mz80 --no-std-crt0 --data-loc 0xC000 ^
..\crt0\crt0_sms.rel main.rel ^
..\lib\SMSlib.lib ^
..\lib\PSGlib.rel ^
devkit\_sms_manager.rel ^
devkit\_snd_manager.rel ^
engine\asm_manager.rel engine\audio_manager.rel ^
engine\content_manager.rel ^
engine\enum_manager.rel engine\font_manager.rel engine\input_manager.rel engine\locale_manager.rel ^
engine\screen_manager.rel ^
screen\none_screen.rel screen\splash_screen.rel ^
gfx.rel ^
psg.rel


@echo on