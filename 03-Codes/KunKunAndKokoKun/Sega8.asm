;----------------------------------------------------------------------
; KunKun & KokoKun
; Sega8.asm - Sega 8-bit Hardware Definitions
;----------------------------------------------------------------------

.define IO_MEM_CNT      $3E
.define IO_PORT_CNT     $3F
.define IO_VCOUNT       $7E
.define IO_HCOUNT       $7F
.define IO_PSG          $7F
.define IO_VDP_DATA     $BE
.define IO_VDP_ADDR     $BF
.define IO_PORT_A       $DC
.define IO_PORT_B       $DD

.define IO_PORT_A_P1_UP             $01
.define IO_PORT_A_P1_DOWN           $02
.define IO_PORT_A_P1_LEFT           $04
.define IO_PORT_A_P1_RIGHT          $08
.define IO_PORT_A_P1_BUTTON1        $10
.define IO_PORT_A_P1_BUTTON2        $20
.define IO_PORT_A_P2_UP             $40
.define IO_PORT_A_P2_DOWN           $80

.define IO_PORT_A_P1_UP_BIT         0
.define IO_PORT_A_P1_DOWN_BIT       1
.define IO_PORT_A_P1_LEFT_BIT       2
.define IO_PORT_A_P1_RIGHT_BIT      3
.define IO_PORT_A_P1_BUTTON1_BIT    4
.define IO_PORT_A_P1_BUTTON2_BIT    5
.define IO_PORT_A_P2_UP_BIT         6
.define IO_PORT_A_P2_DOWN_BIT       7

.define IO_PORT_B_P2_LEFT           $01
.define IO_PORT_B_P2_RIGHT          $02
.define IO_PORT_B_P2_BUTTON1        $04
.define IO_PORT_B_P2_BUTTON2        $08
.define IO_PORT_B_RESET             $10
.define IO_PORT_B_UNUSED            $20
.define IO_PORT_B_P1_TH_PIN         $40
.define IO_PORT_B_P2_TH_PIN         $80

.define IO_PORT_B_P2_LEFT_BIT       0
.define IO_PORT_B_P2_RIGHT_BIT      1
.define IO_PORT_B_P2_BUTTON1_BIT    2
.define IO_PORT_B_P2_BUTTON2_BIT    3
.define IO_PORT_B_RESET_BIT         4
.define IO_PORT_B_UNUSED_BIT        5
.define IO_PORT_B_P1_TH_PIN_BIT     6
.define IO_PORT_B_P2_TH_PIN_BIT     7

;----------------------------------------------------------------------
