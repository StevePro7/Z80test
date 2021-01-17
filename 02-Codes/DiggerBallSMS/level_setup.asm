;==============================================================
;
; Digger Ball (c) Aypok 2007
;
; Email: aypok at aypok dot co dot uk
; Web:   http://www.aypok.co.uk/
;
;==============================================================
; 
; Used for setting up the levels for Digger Ball.
; 
;==============================================================

.define LEVELS $21     ; Binary coded decimal.

.section "Load Level Data" free
load_level_data:
    ; Level 1.
    ld a,(level)
    cp $01
    jp nz,+
    
    ld hl,level_01
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_01
    ret
    
    ; Level 2.
  +:cp $02
    jp nz,+
    
    ld hl,level_02
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_02
    ret
    
    ; Level 3.
  +:cp $03
    jp nz,+
    
    ld hl,level_03
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_03
    ret
    
    ; Level 4.
  +:cp $04
    jp nz,+
    
    ld hl,level_04
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_04
    ret
    
    ; Level 5.
  +:cp $05
    jp nz,+
    
    ld hl,level_05
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_05
    ret
    
    ; Level 6.
  +:cp $06
    jp nz,+
    
    ld hl,level_06
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_06
    ret
    
    ; Level 7.
  +:cp $07
    jp nz,+
    
    ld hl,level_07
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_07
    ret
    
    ; Level 8.
  +:cp $08
    jp nz,+
    
    ld hl,level_08
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_08
    ret
    
    ; Level 9.
  +:cp $09
    jp nz,+
    
    ld hl,level_09
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_09
    ret
    
    ; Level 10.
  +:cp $10
    jp nz,+
    
    ld hl,level_10
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_10
    ret
    
    ; Level 11.
  +:cp $11
    jp nz,+
    
    ld hl,level_11
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_11
    ret
    
    ; Level 12.
  +:cp $12
    jp nz,+
    
    ld hl,level_12
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_12
    ret
    
    ; Level 13.
  +:cp $13
    jp nz,+
    
    ld hl,level_13
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_13
    ret
    
    ; Level 14.
  +:cp $14
    jp nz,+
    
    ld hl,level_14
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_14
    ret
    
    ; Level 15.
  +:cp $15
    jp nz,+
    
    ld hl,level_15
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_15
    ret
    
    ; Level 16.
  +:cp $16
    jp nz,+
    
    ld hl,level_16
    ld a,0                      ; City.
    ld (terrain),a
    ld a,:level_16
    ret
    
    ; Level 17.
  +:cp $17
    jp nz,+
    
    ld hl,level_17
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_17
    ret
    
    ; Level 18.
  +:cp $18
    jp nz,+
    
    ld hl,level_18
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_18
    ret
    
    ; Level 19.
  +:cp $19
    jp nz,+
    
    ld hl,level_19
    ld a,2                      ; Desert.
    ld (terrain),a
    ld a,:level_19
    ret
    
    ; Level 20.
  +:cp $20
    jp nz,+
    
    ld hl,level_20
    ld a,1                      ; Arctic.
    ld (terrain),a
    ld a,:level_20
    ret
    
  +:ret
.ends
