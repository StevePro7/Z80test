#include "splash_screen.h"
#include "..\engine\audio_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
#include "..\devkit\_sms_manager.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_tiles();

	engine_font_manager_draw_text( LOCALE_HELLO_VALUE, 10, 10 );
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		engine_audio_manager_sfx_wrong();
	}
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_audio_manager_sfx_right();
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		engine_audio_manager_sfx_cheat();
	}
	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_font_manager_draw_text( LOCALE_HELLO_VALUE, 10, 12 );
	}

	*screen_type = screen_type_splash;
}