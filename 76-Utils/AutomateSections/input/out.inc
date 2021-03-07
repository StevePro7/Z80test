;.section "OUT128 section" free

OUTI128:	
.rept 64
		outi
.endr
;.ends

;.section "OUT64 section" free
OUTI64:	
		.rept 32
		outi
.endr
;.ends

;.section "OUT32 section" free
OUTI32:	
		.rept 32
		outi
.endr
		ret
	
; Data from 19A to 1FF (102 bytes)
;	.dsb 102, $00
.rept 102
	nop
.endr	

;.ends