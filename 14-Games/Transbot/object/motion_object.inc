; Object motion primitives ($138F-$14E4)
; 2nd entry of Jump Table from 2F96 (indexed by unknown)	
_LABEL_138F_:	
		ld b, (ix+22)
		rrc b
		call c, _LABEL_13FD_
		rrc b
		call c, _LABEL_13E5_
		rrc b
		call c, +
		rrc b
		ret nc
		ld e, (ix+20)
		ld d, (ix+21)
_LABEL_13AA_:	
		xor a
		ld l, (ix+15)
		ld h, (ix+16)
		adc hl, de
		ld (ix+15), l
		ld (ix+16), h
		jp c, _LABEL_A40_
		jp ++
	
+:	
		ld e, (ix+20)
		ld d, (ix+21)
_LABEL_13C5_:	
		xor a
		ld l, (ix+15)
		ld h, (ix+16)
		sbc hl, de
		ld (ix+15), l
		ld (ix+16), h
		jp c, _LABEL_A40_
++:	
		ld a, (ix+6)
		add a, a
		add a, a
		add a, a
		add a, h
		ret nc
		cp $08
		ret c
		jp _LABEL_A40_
	
_LABEL_13E5_:	
		ld e, (ix+18)
		ld d, (ix+19)
_LABEL_13EB_:	
		xor a
		ld l, (ix+12)
		ld h, (ix+13)
		adc hl, de
		ld (ix+12), l
		ld (ix+13), h
		jp +
	
_LABEL_13FD_:	
		ld e, (ix+18)
		ld d, (ix+19)
_LABEL_1403_:	
		xor a
		ld l, (ix+12)
		ld h, (ix+13)
		sbc hl, de
		ld (ix+12), l
		ld (ix+13), h
+:	
		ld a, $D0
		cp (ix+13)
		jp z, _LABEL_A40_
		ret c
		ld a, (ix+5)
		add a, a
		add a, a
		add a, a
		add a, (ix+13)
		cp $D0
		ret c
		jp _LABEL_A40_
	
_LABEL_142A_:	
		ld b, (ix+22)
		rrc b
		call c, _LABEL_13FD_
		rrc b
		call c, _LABEL_13E5_
		ld hl, $0080
		ld e, (ix+20)
		ld d, (ix+21)
		add hl, de
		ex de, hl
		bit 0, b
		jp nz, _LABEL_13C5_
		bit 1, b
		jp nz, _LABEL_13AA_
		ret
	
_LABEL_144D_:	
		ld a, (ix+13)
		cp (ix+26)
		jr nz, _LABEL_146B_
_LABEL_1455_:	
		ld l, (ix+27)
		ld h, (ix+28)
		ld (ix+18), l
		ld (ix+19), h
		ld (ix+12), l
		ld a, (ix+24)
		cpl
		ld (ix+24), a
_LABEL_146B_:	
		xor a
		ld l, (ix+18)
		ld h, (ix+19)
		ld de, $0020
		sbc hl, de
		ld (ix+18), l
		ld (ix+19), h
		ld e, (ix+12)
		ld d, (ix+13)
		ex de, hl
		ld a, (ix+24)
		and a
		jr nz, +
		sbc hl, de
		jr 1
	
+:	
		adc hl, de
		ld (ix+12), l
		ld (ix+13), h
		jp _LABEL_138F_
	
_LABEL_1499_:	
		ld a, (ix+16)
		cp (ix+26)
		jr nz, +
		ld l, (ix+27)
		ld h, (ix+28)
		ld (ix+20), l
		ld (ix+21), h
		ld (ix+15), l
		ld a, (ix+24)
		cpl
		ld (ix+24), a
+:	
		xor a
		ld l, (ix+20)
		ld h, (ix+21)
		ld de, $0020
		sbc hl, de
		ld (ix+20), l
		ld (ix+21), h
		ld e, (ix+15)
		ld d, (ix+16)
		ex de, hl
		ld a, (ix+24)
		and a
		jr nz, +
		sbc hl, de
		jr 1
	
+:	
		adc hl, de
		ld (ix+15), l
		ld (ix+16), h
		jp _LABEL_138F_
	
