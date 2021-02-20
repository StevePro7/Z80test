#include "main.h"

void main ()
{
  SMS_init();
  SMS_displayOff();
  SMS_setSpritePaletteColor( 0, RGB( 3, 0, 0 ) );
  SMS_displayOn();
  
  for (;;)
  {
    SMS_waitForVBlank();
  }
}

SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2019, 12, 6, "Steven Boland", "Hello World", "Simple Sega Master System demo to run on real hardware!" );
