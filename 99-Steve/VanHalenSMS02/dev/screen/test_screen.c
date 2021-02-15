#include "test_screen.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\global_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
//#include "..\engine\sprite_manager.h"
#include "..\devkit\_sms_manager.h"

static unsigned char index;

void screen_test_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_titleGap();
	engine_font_manager_draw_text( LOCALE_PRESS_START, 10, 21 );
	devkit_SMS_displayOn();

	index = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	//input = engine_input_manager_hold( input_type_down );
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		//engine_font_manager_draw_data( index, 20, 10 );
		devkit_SMS_setBGScrollY( index );
		//engine_font_manager_draw_data( index, 20, 20 );
		index++;
	}

	//engine_sprite_manager_draw( 120, 88, SPRITE_TILES );
	*screen_type = screen_type_test;
}
