// Code generated by mkpreempt.go; DO NOT EDIT.

#include "go_asm.h"
#include "textflag.h"

TEXT ·asyncPreempt(SB),NOSPLIT|NOFRAME,$0-0
	PUSHFL
	ADJSP $264
	NOP SP
	MOVL AX, 0(SP)
	MOVL CX, 4(SP)
	MOVL DX, 8(SP)
	MOVL BX, 12(SP)
	MOVL BP, 16(SP)
	MOVL SI, 20(SP)
	MOVL DI, 24(SP)
	FSAVE 28(SP)
	FLDCW runtime·controlWord64(SB)
	CMPB internal∕cpu·X86+const_offsetX86HasSSE2(SB), $1
	JNE nosse
	MOVUPS X0, 136(SP)
	MOVUPS X1, 152(SP)
	MOVUPS X2, 168(SP)
	MOVUPS X3, 184(SP)
	MOVUPS X4, 200(SP)
	MOVUPS X5, 216(SP)
	MOVUPS X6, 232(SP)
	MOVUPS X7, 248(SP)
	nosse:
	CALL ·asyncPreempt2(SB)
	CMPB internal∕cpu·X86+const_offsetX86HasSSE2(SB), $1
	JNE nosse2
	MOVUPS 248(SP), X7
	MOVUPS 232(SP), X6
	MOVUPS 216(SP), X5
	MOVUPS 200(SP), X4
	MOVUPS 184(SP), X3
	MOVUPS 168(SP), X2
	MOVUPS 152(SP), X1
	MOVUPS 136(SP), X0
	nosse2:
	FRSTOR 28(SP)
	MOVL 24(SP), DI
	MOVL 20(SP), SI
	MOVL 16(SP), BP
	MOVL 12(SP), BX
	MOVL 8(SP), DX
	MOVL 4(SP), CX
	MOVL 0(SP), AX
	ADJSP $-264
	POPFL
	RET
