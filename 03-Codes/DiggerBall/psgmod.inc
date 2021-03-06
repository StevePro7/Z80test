.enum PSGMOD_START_ADDRESS
 PSGMOD_INSTRUMENTS DS 9*16
 
 PSGMOD_SEQ_LIST_START_PTR DW
 PSGMOD_SEQ_LIST_PTR       DW
 
 PSGMOD_LENGTH         DW
 PSGMOD_LENGTH_CNT     DW
 PSGMOD_NUM_SEQ        DW
 PSGMOD_REPEAT_POINT   DW
 PSGMOD_SEQ_PTR        DS 2*4
 PSGMOD_SEQ_WAIT       DS 4
 PSGMOD_SEQ_LENGTH_CNT DB
 
 PSGMOD_SPEED          DB
 PSGMOD_SPEED_CNT      DB
 
 PSGMOD_INSTR_PTR        DS 4
 PSGMOD_PHASE            DS 4
 PSGMOD_PHASE_VOLUME     DS 4
 PSGMOD_PHASE_VOLUME_ADD DS 4
 PSGMOD_PHASE_DELAY      DS 4
 PSGMOD_VOLUME           DS 4
 PSGMOD_FREQUENCY        DS 7
 PSGMOD_VIBRATO          DS 3
 PSGMOD_VIBRATO_CNT      DB
 PSGMOD_NOTES_PTR        DS 8
 PSGMOD_FRAME            DB
 PSGMOD_PLAYING          DB
 PSGMOD_SFX_2_PRIORITY   DB
 PSGMOD_SFX_3_PRIORITY   DB
 PSGMOD_SFX_2_CNT        DB
 PSGMOD_SFX_3_CNT        DB
 PSGMOD_SFX_2_ADDRESS    DW
 PSGMOD_SFX_3_ADDRESS    DW
 
 PSGMOD_ADDRESS DW
.ENDE
