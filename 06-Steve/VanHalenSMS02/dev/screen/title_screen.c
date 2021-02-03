#include "title_screen.h"
#include "..\engine\audio_manager.h"
#include "..\engine\cursor_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
#include "..\engine\record_manager.h"
#include "..\engine\storage_manager.h"
#include "..\engine\timer_manager.h"
#include "..\devkit\_sms_manager.h"

#define TITLE_FLASH_DELAY	50
static unsigned char flash;

void screen_title_screen_load()
{
	struct_record_object *ro = &global_record_object;
	unsigned char storage;

	devkit_SMS_displayOff();
	engine_content_manager_load_tiles();
	engine_content_manager_load_sprites();
	engine_content_manager_load_titleGap();
	engine_font_manager_draw_text( LOCALE_PRESS_START, 10, 21 );

	engine_font_manager_draw_text( LOCALE_RECORD_TEXT, 6, 12 );
	engine_font_manager_draw_text( LOCALE_COVERS_TEXT, 20, 12 );
	engine_font_manager_draw_text( LOCALE_BUILD_VALUE, 28, 23 );
	devkit_SMS_displayOn();

	engine_delay_manager_load( TITLE_FLASH_DELAY );

	// Deal with storage.
	engine_record_manager_init( 0 );

	storage = engine_storage_manager_available();
	if( storage )
	{
		engine_storage_manager_read();
	}

	engine_record_manager_init( ro->record_album_index );
	engine_cursor_manager_init( ro->record_album_index );
	flash = 0;
}

void screen_title_screen_update( unsigned char *screen_type )
{
	unsigned char delay;
	unsigned char input;

	delay = engine_delay_manager_update();
	if( delay )
	{
		flash = 1 - flash;
		if( flash )
		{
			engine_font_manager_draw_text( LOCALE_BLANK_CLEAR, 10, 21 );
		}
		else
		{
			engine_font_manager_draw_text( LOCALE_PRESS_START, 10, 21 );
		}
	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		// TODO slight pause
		//engine_audio_manager_sfx_right();

		engine_font_manager_draw_text( LOCALE_BLANK_CLEAR, 10, 21 );
		engine_font_manager_draw_text( LOCALE_BLANK_CLEAR, 21, 23 );

		*screen_type = screen_type_scroll;
		return;
	}

	*screen_type = screen_type_title;
}
