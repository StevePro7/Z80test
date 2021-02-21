.enum $C000 export	
VDPBlank db				; VDPBlank = $C000
SMS_VDPFlags db			; SMS_VDPFlags = $C001
PauseRequested db		; PauseRequested = $C002
VDPType db				; VDPType = $C003
KeysStatus dw			; KeysStatus = $C004
PreviousKeysStatus dw	; PreviousKeysStatus = $C006
SpriteTableY db			; SpriteTableY = $C008
.ende	
	
.enum $C048 export	
SpriteTableXN db		; SpriteTableXN = $C048
.ende	
	
.enum $C0C8 export	
SpriteNextFree db		; SpriteNextFree = $C0C8
SMS_theLineInterruptHandler dw		; SMS_theLineInterruptHandler = $C0C9
VDPReg dsb $4			; VDPReg = $C0CB
.ende	
	
.enum $FFFC export	
_RAM_FFFC_ db	
.ende