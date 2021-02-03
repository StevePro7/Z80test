#include "select_screen.h"
#include "..\engine\asm_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\cursor_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\global_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
#include "..\engine\scroll_manager.h"
#include "..\engine\record_manager.h"
#include "..\devkit\_sms_manager.h"

void screen_select_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	if( GAP_OFFSET == so->scroll_value_offset )
	{
		devkit_SMS_displayOff();
		engine_asm_manager_clear_VRAM();
		engine_content_manager_load_tiles();
		engine_content_manager_load_titleTop();
		engine_content_manager_load_sprites();

		engine_font_manager_draw_text( LOCALE_RECORD_TEXT, 6, 8 );
		engine_font_manager_draw_text( LOCALE_COVERS_TEXT, 20, 8 );
		devkit_SMS_displayOn();
	}

	//devkit_SMS_setBGScrollY( GAP_OFFSET );
	engine_cursor_manager_load( so->scroll_value_offset );
	//engine_font_manager_draw_text( "SELECT SCREEN!!!", 2, 4 );
}

void screen_select_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char index;
	engine_cursor_manager_draw();

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		index = engine_cursor_manager_save();
		engine_record_manager_init( index );

		*screen_type = screen_type_record;
		return;
	}

	//input = engine_input_manager_hold( input_type_fire2 );
	//if( input )
	//{
	//	*screen_type = screen_type_title;
	//	return;
	//}

	input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		engine_cursor_manager_decX();
	}
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_cursor_manager_incX();
	}
	input = engine_input_manager_hold( input_type_up );
	if( input )
	{
		engine_cursor_manager_decY();
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		engine_cursor_manager_incY();
	}

	*screen_type = screen_type_select;
}
