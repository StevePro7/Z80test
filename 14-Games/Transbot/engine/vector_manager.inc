; Reset, RST/IRQ/NMI vectors and VDP init data ($0000-$0089)
_LABEL_0_:	
		jp _LABEL_8A_
	
; Data from 3 to 7 (5 bytes)	
_DATA_3_:	
	.db $00 $15 $1A $1F $2F
	
; Data from 8 to E (7 bytes)	
_DATA_8_:	
	.db $2A $25 $35 $3A $3F $13 $17
	
; Data from F to 1F (17 bytes)	
_DATA_F_:	
	.db $12 $22 $32 $00 $00 $3F $3A $35 $2F $2A $25 $0B $03 $02 $0E $0C
	.db $08
	
; Data from 20 to 37 (24 bytes)	
_DATA_20_:	
	.db $3E $38 $00
	.dsb 21, $FF
	
_LABEL_38_:	
		jp _LABEL_FA6_
	
; Data from 3B to 65 (43 bytes)	
_DATA_3B_:	
	.db $76 $80 $A0 $81 $FF $82 $FF $83 $FF $84 $FF $85 $FB $86 $00 $87
	.db $00 $88 $00 $89
	.dsb 23, $FF
	
_LABEL_66_:	
		push af
		ld a, (_RAM_C000_)
		and $0C
		cp $04
		jr nz, +
		ld a, (_RAM_C00C_)
		cp $0F
		jr c, +
		xor a
		ld (_RAM_C00C_), a
		ld a, (_RAM_C00B_)
		cpl
		ld (_RAM_C00B_), a
+:	
		pop af
		retn
	
; Data from 85 to 89 (5 bytes)	
_DATA_85_:	
	.db $02 $00 $00 $80 $7A
	
