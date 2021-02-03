#include "scroll_screen.h"
#include "..\engine\asm_manager.h"
#include "..\engine\content_manager.h"
//#include "..\engine\cursor_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\global_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
#include "..\engine\scroll_manager.h"
#include "..\devkit\_sms_manager.h"

static unsigned char offset;

void screen_scroll_screen_load()
{
	//engine_font_manager_draw_text( "SS", 28, 10 );
	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_load_tiles();
	//engine_content_manager_load_titleGap();
	//engine_content_manager_load_sprites();

	//engine_font_manager_draw_text( LOCALE_RECORD_TEXT, 6, 12 );
	//engine_font_manager_draw_text( LOCALE_COVERS_TEXT, 20, 12 );
	//devkit_SMS_displayOn();
	offset = 0;
}

void screen_scroll_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char value;

	value = TOP_SCROLL == offset;
	//input = engine_input_manager_move( input_type_down );
	//if( input )
	//{
		devkit_SMS_setBGScrollY( offset++ );
//	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input || value )
	{
		engine_scroll_manager_load( TOP_OFFSET );
		devkit_SMS_setBGScrollY( TOP_SCROLL );

		*screen_type = screen_type_select;
		return;
	}

	*screen_type = screen_type_scroll;
}
