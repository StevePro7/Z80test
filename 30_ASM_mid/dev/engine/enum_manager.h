#ifndef _ENUM_MANAGER_H_
#define _ENUM_MANAGER_H_

typedef enum tag_enum_screen_type
{
	screen_type_none = 0,
	screen_type_splash = 1,

} enum_screen_type;

typedef enum tag_enum_input_type
{
	input_type_up    = 0x01,
	input_type_down  = 0x02,
	input_type_left	 = 0x04,
	input_type_right = 0x08,
	input_type_fire1 = 0x10,
	input_type_fire2 = 0x20,

} enum_input_type;

#endif//_ENUM_MANAGER_H_