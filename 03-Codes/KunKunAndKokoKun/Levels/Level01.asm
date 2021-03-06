;----------------------------------------------------------------------

Level01_Data:
    .db     LEVEL_TYPE_GAME
    .dw     DataLevelsTilemap+(1*(2*32*24)) ; Tilemap
    .dw     Level01_LogicMap                ; Logic map
    .db     0, 160                          ; KunKun X/Y start
    .db     224, 152                        ; KokoKun X/Y
    .db     224/8+1, 152/8,                 ; KokoKun X/Y Tile Win Trigger
    .dw     Level01_Cannons
    .dw     Level01_Doors
    .dw     Level01_Switches
    .dw     Level01_HandlerReset
    .dw     Level01_HandlerUpdate
    .dw     Level02_Data

Level01_Cannons:
    .db     1   ; Count

    ; Cannon 0
    .db     CANNON_FLAGS_ENABLED | CANNON_FLAGS_DIRECTION_RIGHT ; flags
    .db     24, 48                                              ; X/Y
    .db     0                                                   ; cannon ball X
    .dw     231                                                 ; shooting interval
    .dw     1                                                   ; timer

Level01_Doors:
    .db     1   ; Count
   
    ; Door 0
    .db     0|DOOR_FLAGS_CLOSE  ; Switch ID, Close
    .db     0                   ; Counter
    .db     216, 176            ; X/Y
    
Level01_Switches:
    .db     1   ; Count

    ; Switch 0 -> Door 0
    .db     24, 32              ; X/Y

Level01_LogicMap:
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$10,$10,$10,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$01,$01,$01,$42,$00,$00, $00,$00,$00,$42,$00,$00,$00,$00, $00,$42,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$01,$21,$00,$42,$00,$00, $00,$00,$00,$42,$00,$00,$00,$00, $00,$42,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$01,$01,$01,$01,$01,$00, $01,$01,$01,$01,$01,$00,$01,$01, $01,$01,$01,$82,$01,$01,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 

    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$82,$00,$00,$00,$40, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$82,$00,$00,$00,$01, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$40,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$82,$00,$00,$00,$00, $00,$40,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$00,$00,$01,$00,$01, $84,$01,$01,$01,$00,$01,$00,$01, $01,$01,$01,$01,$01,$00,$00,$00, $00,$01,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$40,$00,$00,$00,$00, $00,$84,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$00,$00,$01,$00,$00,$00,$00, $00,$00,$01,$01,$00,$01,$00,$01, $84,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$40,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$84,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, 
    .db     $00,$01,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$84,$00,$00,$00,$00,$00, $40,$00,$00,$00,$00,$00,$00,$00, 

    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$01,$01,$44,$01,$00, $01,$00,$00,$00,$00,$00,$40,$00, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$44,$00,$00,$00, $00,$00,$00,$01,$01,$01,$01,$01, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$00,$00,$40,$00,$00, $00,$00,$00,$44,$00,$00,$00,$00, $00,$00,$00,$01,$00,$00,$00,$01, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$82,$01,$08,$01,$08,$01, $42,$01,$01,$00,$00,$00,$00,$00, $00,$00,$00,$01,$00,$00,$00,$01, 
    .db     $00,$00,$00,$00,$00,$00,$00,$00, $00,$00,$82,$01,$01,$01,$01,$01, $42,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$01,$01,$01,$42,$01, 
    .db     $01,$01,$84,$00,$00,$82,$01,$01, $01,$00,$82,$01,$01,$01,$01,$01, $42,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$01,$00,$00,$42,$01, 
    .db     $01,$01,$00,$84,$00,$82,$01,$40, $00,$00,$82,$01,$01,$01,$01,$01, $42,$00,$00,$00,$00,$00,$00,$00, $00,$00,$00,$01,$44,$01,$01,$01, 
    .db     $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, $01,$01,$01,$01,$01,$01,$01,$01, 

;----------------------------------------------------------------------

Level01_HandlerReset:
    ret

Level01_HandlerUpdate:
    ret
    
;----------------------------------------------------------------------
