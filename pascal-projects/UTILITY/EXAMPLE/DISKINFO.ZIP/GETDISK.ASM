; GETDISK.ASM: Get the active disk drive
; Pascal definition is
;	Function GetDisk: Integer; External;

code segment byte public
	assume cs:code
	public GetDisk

; Entry
GetDisk		Proc Near
	push 	bp
	mov	bp, sp
; Use Dos fcn 19h
	mov 	ah, 19h
	int	21h
; Note : Dos returns drive in al, which is right for Pascal
	xor 	ah, ah
	mov 	sp, bp
	pop	bp
	ret	0
GetDisk		EndP	
code		EndS
		End
