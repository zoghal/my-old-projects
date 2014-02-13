; ABSREAD.ASM Reads absolute locigcal disk sector
; Function AbsRead(Drive, nSecs, LogSec : Word;
;                  var Buffer); Integer; external;

code 	segment byte public
	assume cs:code
	public AbsRead

; Parameters
	Drive 	equ	Byte Ptr [BP+12]
	nSecs 	equ	Word Ptr [BP+10]
	LogSec 	equ	Word Ptr [BP+8]
	Buffer  equ	DWord Ptr [BP+4]

; Entry

AbsRead		Proc	Near
	push	Bp
	mov	Bp, sp
	push 	ds

; Set up and call Int 25h

	mov	al, Drive
	mov	cx, nSecs
	mov	dx, LogSec
	lds	bx, Buffer
	push 	bp
	int 	25h
	pop	ax
	pop	bp

; Check for success

	jc	fail
	mov	ax, nSecs
	jmp	exit
fail:	xor	ax, ax

exit:
	pop	ds
	mov	sp, bp
	pop	bp
	ret	10
AbsRead		Endp
code		Ends
		End