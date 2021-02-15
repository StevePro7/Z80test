#include "detail_screen.h"
//#include "..\engine\cursor_manager.h"
#include "..\engine\content_manager.h"
#include "..\engine\enum_manager.h"
#include "..\engine\font_manager.h"
#include "..\engine\global_manager.h"
#include "..\engine\input_manager.h"
#include "..\engine\locale_manager.h"
//#include "..\engine\sprite_manager.h"
#include "..\devkit\_sms_manager.h"

void screen_detail_screen_load()
{
	//engine_font_manager_draw_text( "DS", 28, 10 );
}

void screen_detail_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_detail;
}
