#include "func_screen.h"
#include "..\engine\audio_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\global_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
//#include "..\engine\sprite_manager.h"
#include "..\devkit\_sms_manager.h"

static const unsigned char x = 4;
static const unsigned char y = 20;

void screen_func_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_tiles();
	engine_content_manager_load_titleGap();
	engine_content_manager_load_sprites();
	engine_font_manager_draw_text( LOCALE_RECORD_TEXT, 6, 12 );
	engine_font_manager_draw_text( LOCALE_COVERS_TEXT, 20, 12 );

	engine_font_manager_draw_text( "1984", x, y );
	engine_font_manager_draw_text( "1986", x+7, y );
	engine_font_manager_draw_text( "1988", x+14, y );
	devkit_SMS_displayOn();

	
	//engine_font_manager_draw_text( "FUNC SCREEN...!!", 2, 10 );
	//engine_font_manager_draw_text( "1984", 4, 4 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	unsigned const char sx = ( x + 7 - 1 ) * 8;
	unsigned const char sy = ( y - 1 ) * 8;
	//unsigned char input;
	//input = engine_input_manager_hold( input_type_right );
	//if( input )
	//{
	//	engine_audio_manager_sfx_right();
	//}
	//input = engine_input_manager_hold( input_type_left );
	//if( input )
	//{
	//	engine_audio_manager_sfx_wrong();
	//}
	//input = engine_input_manager_hold( input_type_down );
	//if( input )
	//{
	//	engine_audio_manager_sfx_cheat();
	//}

	//engine_sprite_manager_draw( 40, 40, SPRITE_TILES + 24 );
	//engine_cursor_manager_draw( sx + 1, sy - 1, CURSOR_TILES );
	*screen_type = screen_type_func;
}
