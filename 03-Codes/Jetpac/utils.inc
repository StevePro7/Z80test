; some usefull routines

; collision detection for two rectangle
; use hl,de,bc and de'
; x1/w1 -> h/l
; x2/w2 -> d/e
; y1/h1 -> b/c
; y2/h2 -> d'/e'
rectCollision:
	ex af,af'
		ld a,h
		add a,l
		cp d ; if (x1 + w1) < x2
		jr nc,+
		ld a,d
		add a,e
		cp h ; if (x2 + w2) < x1
		jr nc,+
		ld a,b
		add a,c
		exx
		cp d ; if (y1 + h1) < y2
		jr nc,+
		ld a,d
		add a,e
		exx
		cp b ; if (y2 + h2) < y1
	+:
	ex af,af'
	ret
	
; put sprite list terminator at location pointed by hl
PutSpriteTerminator:
	ex af,af'
		ld a,l
		out ($bf),a
		ld a,h
		or $40
		out ($bf),a
		ld a,$D0
		out ($be),a
	ex af,af'
	ret
	
VRAMToHL:
	ex af,af'
		ld a,l
		out ($bf),a
		ld a,h
		or $40
		out ($bf),a
	ex af,af'
	ret

; put a value (located in b) in vram
PutVRAM:
	ld a,b
	out ($be),a
	ret
	
WriteVRAM:
	ex af,af'
	push bc 
	push hl
		-: ; loop
			ld a,(hl)
			out ($be),a
			inc hl
			dec c
			jp nz,-
			dec b
			jp nz,-
	pop hl 
	pop bc 
	ex af,af'
	ret

WriteToHL:
	ex af,af'
	push bc 
	push hl
	push de
		-:
			ld a,(hl)
			ld (de),a
			inc hl
			inc de
			dec b
			jp nz,-
	pop de
	pop hl 
	pop bc 
	ex af,af'
	ret	

ClrVRAM:
	ex af,af'
	push bc
		ld bc,$4000
		ld a,$00
		bclrvram:
			out ($be),a
		    dec c
		    jp nz,bclrvram
		    dec b 
		    jp nz,bclrvram 
	pop bc
	ex af,af'
	ret
	
WaitVBL:
	-:
		in a,($BF)
		and $80
		jp z,-
	ret
	
GetRandomNumber:
    push hl
        ld hl,(RandomNumberGeneratorWord)
        ld a,h
        rrca
        rrca
        xor h
        rrca
        xor l
        rrca
        rrca
        rrca
        rrca
        xor l
        rra
        adc hl,hl
        jr nz,+
        ld hl,$733c
+:      ld a,r
        xor l
        ld (RandomNumberGeneratorWord),hl 
    pop hl
    ret
