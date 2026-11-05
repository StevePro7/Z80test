; PSG frequency and sound data ($349B-$3B4F)
; Data from 349B to 349E (4 bytes)	
_DATA_349B_:	
	.db $9F $BF $DF $FF
	
; Data from 349F to 3530 (146 bytes)	
_DATA_349F_:	
	.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
	.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
	.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
	.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
	.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
	.db $6C $00 $66 $00 $60 $00 $5B $00 $55 $00 $51 $00 $4C $00 $48 $00
	.db $44 $00 $40 $00 $3C $00 $39 $00 $36 $00 $33 $00 $30 $00 $2D $00
	.db $2B $00 $28 $00 $26 $00 $24 $00 $22 $00 $20 $00 $1E $00 $1C $00
	.db $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13 $00 $12 $00
	.db $11 $00
	
; 1st entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 3531 to 35B4 (132 bytes)	
_DATA_3531_:	
	.db $03 $80 $20 $04 $4F $35 $DF $00 $10 $0D $80 $21 $04 $4D $35 $DF
	.db $00 $10 $0B $80 $23 $04 $76 $35 $0F $00 $06 $0C $80 $03 $80 $3C
	.db $AE $09 $B5 $1B $B8 $04 $B7 $B3 $B5 $24 $AE $09 $B5 $1B $B8 $03
	.db $BA $B7 $B3 $B5 $18 $B8 $03 $BA $B7 $B3 $B5 $18 $B8 $03 $BA $B7
	.db $09 $B3 $B5 $18 $E2 $E3 $07 $EA $96 $35 $AE $AE $03 $AE $AE $06
	.db $AE $02 $AE $AE $AE $06 $AE $AE $03 $AE $AE $06 $EC $00 $02 $76
	.db $35 $EA $96 $35 $E2 $AE $02 $AE $AE $AE $06 $AE $AE $03 $AE $AE
	.db $06 $AE $02 $AE $AE $AE $06 $AE $AE $03 $AE $AE $06 $AE $02 $AE
	.db $AE $AE $06 $EB
	
; 2nd entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 35B5 to 35EB (55 bytes)	
_DATA_35B5_:	
	.db $03 $80 $20 $03 $D3 $35 $F7 $00 $01 $0B $80 $21 $03 $D1 $35 $F7
	.db $00 $01 $09 $80 $22 $03 $D3 $35 $EB $00 $01 $0A $80 $03 $AE $03
	.db $B5 $B1 $B5 $AC $B3 $B0 $B3 $AE $B5 $B3 $B1 $B3 $B1 $B0 $B1 $B0
	.db $AE $B0 $AE $AC $AE $0C $E2
	
; 3rd entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 35EC to 3761 (374 bytes)	
_DATA_35EC_:	
	.db $03 $80 $20 $02 $0A $36 $EB $00 $00 $0B $80 $21 $02 $08 $36 $EB
	.db $00 $00 $08 $80 $22 $02 $DF $36 $EB $00 $01 $0B $80 $03 $E4 $06
	.db $EA $8B $36 $E4 $06 $AE $04 $AE $AE $E4 $01 $B5 $0C $E4 $06 $AE
	.db $04 $AE $AE $E4 $01 $B5 $0C $E4 $06 $AE $04 $AE $AE $B2 $B2 $B2
	.db $E4 $01 $B5 $18 $EA $8B $36 $E4 $06 $AE $04 $AE $AE $E4 $01 $B5
	.db $0C $E4 $06 $AE $04 $AE $AE $E4 $01 $B5 $0C $E4 $06 $AE $04 $AE
	.db $AE $B2 $B0 $AE $E4 $01 $B0 $18 $EA $AB $36 $B5 $08 $B5 $04 $B5
	.db $08 $B5 $04 $B5 $08 $B5 $04 $B5 $B3 $B2 $EA $AB $36 $B5 $08 $B5
	.db $04 $B5 $B3 $B5 $B7 $18 $EA $BB $36 $EA $CD $36 $EA $BB $36 $B7
	.db $04 $B8 $BA $BC $0C $C1 $BF $04 $BE $BA $BC $24 $E5 $08 $36 $B0
	.db $04 $B0 $B0 $E4 $01 $B7 $0C $E4 $06 $B0 $04 $B0 $B0 $E4 $01 $B7
	.db $0C $E4 $06 $B0 $04 $B0 $B0 $B8 $B7 $B3 $E4 $01 $B0 $18 $EB $B0
	.db $08 $B0 $04 $B0 $08 $B0 $04 $B0 $08 $B0 $04 $B0 $B2 $B3 $EB $B7
	.db $04 $B8 $BA $BC $08 $BC $04 $BC $03 $BF $BE $BA $E4 $01 $BC $18
	.db $EB $B7 $04 $B8 $BA $BC $08 $BC $04 $BC $03 $C1 $BE $BA $E4 $01
	.db $BC $18 $EB $EA $2E $37 $EA $38 $37 $EA $2E $37 $A2 $08 $A2 $04
	.db $EC $00 $04 $E8 $36 $A2 $08 $A2 $04 $A2 $08 $A2 $04 $A7 $0C $A6
	.db $A4 $04 $EC $00 $0C $FC $36 $A2 $EC $00 $0C $03 $37 $A4 $EC $00
	.db $0C $09 $37 $A2 $EC $00 $0C $0F $37 $EA $42 $37 $EA $52 $37 $EA
	.db $42 $37 $9F $04 $A0 $A2 $A4 $0C $A9 $A7 $04 $A6 $A2 $A4 $27 $E5
	.db $DF $36 $A4 $08 $A4 $04 $EC $00 $08 $2E $37 $EB $A2 $08 $A2 $04
	.db $EC $00 $08 $38 $37 $EB $9F $04 $A0 $A2 $A4 $08 $A4 $04 $A4 $03
	.db $A7 $A6 $A2 $A4 $18 $EB $9F $04 $A0 $A2 $A4 $08 $A4 $04 $A4 $03
	.db $A9 $A6 $A2 $A4 $18 $EB
	
; 4th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 3762 to 3878 (279 bytes)	
_DATA_3762_:	
	.db $03 $80 $20 $04 $7E $37 $EB $00 $01 $0A $80 $21 $04 $E2 $37 $EB
	.db $00 $01 $09 $80 $22 $04 $46 $38 $DF $00 $01 $0D $EA $B7 $37 $80
	.db $A9 $AA $AC $80 $A7 $A9 $AA $EA $B7 $37 $80 $A9 $AA $AC $B1 $06
	.db $B0 $EA $D1 $37 $80 $06 $AC $03 $AE $80 $AC $AE $06 $AC $AE $B1
	.db $B0 $EA $D1 $37 $80 $06 $AC $03 $AE $80 $B0 $B1 $B0 $AE $06 $AC
	.db $AA $A9 $E5 $7E $37 $B1 $03 $AE $80 $09 $AC $03 $AE $80 $B1 $AE
	.db $80 $B3 $09 $80 $06 $B1 $03 $AE $80 $09 $AC $03 $AE $80 $EB $80
	.db $B1 $03 $B3 $80 $B1 $B3 $06 $80 $B0 $03 $B1 $80 $AE $B0 $AE $EB
	.db $EA $1B $38 $80 $A5 $A7 $A9 $80 $A4 $A5 $A7 $EA $1B $38 $80 $A5
	.db $A7 $A9 $AE $06 $AC $EA $35 $38 $80 $06 $A9 $03 $AA $80 $A9 $AA
	.db $06 $A9 $AA $AE $AC $EA $35 $38 $80 $06 $A9 $03 $AA $80 $AC $AE
	.db $AC $AA $06 $A9 $A7 $A5 $E5 $E2 $37 $AE $03 $AA $80 $09 $A9 $03
	.db $AA $80 $AE $AA $80 $B0 $09 $80 $06 $AE $03 $AA $80 $09 $A9 $03
	.db $AA $80 $EB $80 $AE $03 $B0 $80 $AE $B0 $06 $80 $AC $03 $AE $80
	.db $AA $AC $AA $EB $A2 $03 $A2 $A2 $EC $00 $06 $49 $38 $EC $01 $08
	.db $46 $38 $A5 $A7 $A7 $EC $00 $06 $56 $38 $A4 $A5 $A5 $A5 $A2 $A4
	.db $A4 $A4 $A2 $A2 $A2 $EC $00 $06 $66 $38 $EC $01 $02 $64 $38 $EC
	.db $02 $02 $54 $38 $E5 $46 $38
	
; 5th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 3879 to 38AA (50 bytes)	
_DATA_3879_:	
	.db $01 $88 $21 $01 $83 $38 $00 $00 $01 $00 $E1 $01 $00 $01 $01 $E1
	.db $0D $E4 $0C $EA $A4 $38 $E1 $0C $EA $A4 $38 $E1 $0A $EA $A4 $38
	.db $E1 $06 $E4 $01 $E6 $00 $A0 $00 $C8 $04 $E2 $00 $70 $01 $00 $20
	.db $01 $EB
	
; 6th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 38AB to 38D2 (40 bytes)	
_DATA_38AB_:	
	.db $01 $88 $21 $02 $B5 $38 $F7 $00 $01 $0D $00 $01 $02 $E6 $00 $30
	.db $00 $20 $02 $00 $20 $00 $30 $02 $EC $00 $01 $B8 $38 $00 $30 $00
	.db $20 $02 $00 $20 $00 $60 $02 $E2
	
; 7th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 38D3 to 38FC (42 bytes)	
_DATA_38D3_:	
	.db $01 $88 $21 $01 $DD $38 $F7 $00 $0C $0D $00 $01 $02 $E6 $00 $80
	.db $00 $44 $02 $00 $88 $00 $4C $02 $00 $98 $00 $55 $02 $00 $AB $00
	.db $60 $02 $E1 $08 $00 $60 $01 $00 $03 $E2
	
; 8th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 38FD to 390E (18 bytes)	
_DATA_38FD_:	
	.db $01 $A8 $23 $04 $07 $39 $00 $00 $03 $0D $E3 $07 $00 $05 $00 $55
	.db $08 $E2
	
; 9th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 390F to 3938 (42 bytes)	
_DATA_390F_:	
	.db $01 $88 $21 $02 $19 $39 $F7 $00 $01 $0D $00 $01 $02 $E6 $00 $80
	.db $00 $44 $02 $00 $88 $00 $4C $02 $00 $98 $00 $55 $02 $00 $AB $00
	.db $60 $02 $E4 $07 $00 $60 $00 $C0 $03 $E2
	
; 10th entry of Pointer Table from 30A2 (indexed by _RAM_DE00_)	
; Data from 3939 to 3AAD (373 bytes)	
_DATA_3939_:	
	.db $01 $88 $21 $01 $43 $39 $03 $00 $0C $0D $00 $01 $02 $00 $10 $02
	.db $00 $40 $01 $00 $2B $01 $00 $44 $01 $00 $30 $01 $00 $4C $01 $00
	.db $36 $01 $00 $55 $01 $00 $3C $01 $E6 $E1 $08 $00 $2B $00 $15 $03
	.db $E2 $01 $A8 $21 $04 $74 $39 $03 $00 $03 $0E $00 $60 $00 $44 $03
	.db $EC $00 $06 $74 $39 $E2 $01 $88 $21 $01 $89 $39 $F7 $00 $01 $0B
	.db $00 $30 $02 $E6 $00 $40 $00 $60 $04 $E7 $E2 $01 $88 $23 $04 $9E
	.db $39 $00 $00 $01 $0E $E3 $07 $00 $01 $02 $00 $10 $02 $00 $40 $01
	.db $00 $2B $01 $00 $44 $01 $00 $30 $01 $00 $4C $01 $00 $36 $01 $00
	.db $55 $01 $00 $3C $01 $E6 $E1 $08 $00 $2B $00 $15 $03 $EE $02 $88
	.db $21 $02 $DA $39 $00 $00 $02 $07 $88 $23 $02 $E4 $39 $00 $00 $01
	.db $0C $00 $00 $04 $E6 $00 $25 $00 $40 $0A $E2 $E3 $07 $00 $25 $01
	.db $00 $15 $01 $EC $00 $02 $E4 $39 $E4 $02 $E1 $0E $E6 $00 $30 $00
	.db $44 $0A $E2 $03 $88 $20 $03 $18 $3A $03 $00 $06 $0D $88 $21 $03
	.db $21 $3A $03 $00 $06 $0B $88 $23 $03 $2A $3A $00 $00 $06 $0B $00
	.db $20 $02 $E4 $03 $00 $05 $05 $E2 $00 $26 $02 $E4 $03 $00 $10 $05
	.db $E2 $E3 $07 $00 $20 $02 $E4 $03 $00 $05 $05 $E2 $01 $80 $20 $03
	.db $3F $3A $F7 $00 $06 $0F $AE $02 $EC $00 $04 $3F $3A $EE $01 $88
	.db $20 $04 $51 $3A $03 $01 $06 $0C $00 $80 $01 $E2 $03 $80 $20 $03
	.db $73 $3A $EB $00 $01 $0B $80 $21 $03 $71 $3A $EB $00 $01 $09 $80
	.db $22 $03 $73 $3A $DF $00 $01 $0B $80 $03 $B5 $03 $B5 $B5 $B3 $B5
	.db $B8 $80 $BC $80 $BA $B7 $B3 $80 $B5 $09 $B8 $BC $BA $06 $B7 $B3
	.db $B5 $0C $E2 $01 $A0 $21 $01 $96 $3A $EB $00 $01 $0E $A5 $AA $04
	.db $E1 $0D $A2 $A7 $04 $E1 $0C $9E $A4 $04 $E1 $0B $9B $A0 $04 $E1
	.db $0A $98 $9D $04 $E2
	
; Pointer Table from 3AAE to 3ACD (16 entries, indexed by _RAM_DE09_)	
_DATA_3AAE_:	
	.dw _DATA_3ACE_ _DATA_3AD5_ _DATA_3ADE_ _DATA_3AE6_ _DATA_3AF5_ _DATA_3AFD_ _DATA_3B01_ _DATA_3B07_
	.dw _DATA_3B0A_ _DATA_3B1A_ _DATA_3B21_ _DATA_3B2B_ _DATA_3B2D_ _DATA_3B37_ _DATA_3B3F_ _DATA_3B45_
	
; 1st entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3ACE to 3AD4 (7 bytes)	
_DATA_3ACE_:	
	.db $FF $EE $DD $CC $BB $AA $01
	
; 2nd entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3AD5 to 3ADD (9 bytes)	
_DATA_3AD5_:	
	.db $DE $FF $EE $DD $DC $BB $AA $99 $01
	
; 3rd entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3ADE to 3AE5 (8 bytes)	
_DATA_3ADE_:	
	.db $FF $EE $DC $BA $A9 $87 $76 $01
	
; 4th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3AE6 to 3AF4 (15 bytes)	
_DATA_3AE6_:	
	.db $44 $44 $55 $55 $66 $66 $77 $77 $88 $99 $AA $BB $CC $DD $01
	
; 5th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3AF5 to 3AFC (8 bytes)	
_DATA_3AF5_:	
	.db $EF $FF $EE $DD $CC $BB $AA $01
	
; 6th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3AFD to 3B00 (4 bytes)	
_DATA_3AFD_:	
	.db $FF $ED $CA $02
	
; 7th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B01 to 3B06 (6 bytes)	
_DATA_3B01_:	
	.db $A9 $99 $88 $88 $77 $01
	
; 8th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B07 to 3B09 (3 bytes)	
_DATA_3B07_:	
	.db $FF $BB $02
	
; 9th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B0A to 3B19 (16 bytes)	
_DATA_3B0A_:	
	.db $FF $EE $DD $CC $BB $AA $AA $AA $A9 $99 $98 $88 $87 $77 $76 $01
	
; 10th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B1A to 3B20 (7 bytes)	
_DATA_3B1A_:	
	.db $AB $BC $CB $BA $AA $A9 $01
	
; 11th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B21 to 3B2A (10 bytes)	
_DATA_3B21_:	
	.db $AB $BC $CD $EE $EE $ED $DC $CB $BA $01
	
; 12th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B2B to 3B2C (2 bytes)	
_DATA_3B2B_:	
	.db $F7 $02
	
; 13th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B2D to 3B36 (10 bytes)	
_DATA_3B2D_:	
	.db $66 $77 $88 $99 $AA $BB $CC $DD $EE $01
	
; 14th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B37 to 3B3E (8 bytes)	
_DATA_3B37_:	
	.db $9A $AB $BC $CD $DE $EE $ED $01
	
; 15th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B3F to 3B44 (6 bytes)	
_DATA_3B3F_:	
	.db $EF $FF $FD $DB $99 $01
	
; 16th entry of Pointer Table from 3AAE (indexed by _RAM_DE09_)	
; Data from 3B45 to 3B4F (11 bytes)	
_DATA_3B45_:	
	.db $EF $FF $FF $FE $ED $DC $BA $AA $99 $01 $FF
	
