;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл RCS (Revision Control System) Version Log                                лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;
; $Log: 0cd.asm $
; Revision 1.40  1995/12/06 22:13:29  Lasse
; Fixed so that -a was disabled if mscdex was loaded.
;
; Revision 1.39  1995/12/05 22:11:53  Lasse
; Adjusted the revision messages
;
; Revision 1.38  1995/12/05 22:00:45  Lasse
; Version 7.0; Removes data segment when going resident, shrinked down to
; 6.5 Kb of memory from 8.7 Kb. Also, fixed a bug when allocating more
; drives than available consecutively. Also, inserted rcs keywords in a
; message
;
; Revision 1.37  1995/12/05 09:05:14  Lasse
; Version 6.7; now co-exists with mscdex, and also enables audio through-
; put.
;
; Revision 1.36  1995/12/04 00:56:07  Lasse
; Version 6.6; Now works with worms too, and simulates the following new
; device requests:
;   Play
;   Stop
; also, the AudioStatus function has been augmented to react on the Play
; and Stop functions, and the HeadLocation function will return different
; values, as though the cd was playing or moving around.
; Also, the -a option will make 0cd simulate FakeCD.
;
; Revision 1.35  1995/12/03 02:35:45  Lasse
; Version 6.5; Fixed the root-directory subst problem which came back :(
;
; Revision 1.34  1995/11/26 09:46:54  Lasse
; Version 6.4; Fixed several bugs with the DiskFree function
;
; Revision 1.33  1995/11/16 06:36:22  Lasse
; Fixed a bug in the makecd program, and an inconsistency in 0cd
;
; Revision 1.32  1995/11/16 06:14:39  Lasse
; Put Decrunch into 0cd.asm for maximum distributability
;
; Revision 1.31  1995/11/16 06:04:28  Lasse
; Version 6.2
;
; Revision 1.30  1995/11/16 05:24:59  Lasse
; Commented all code; Done some minor cosmetic changes, tidied up the
; code a bit
;
; Revision 1.29  1995/11/14 22:04:22  Lasse
; If last character in directory was \ then redirection failed; fixed!
;
; Revision 1.28  1995/11/14 21:57:59  Lasse
; Removed the "Unmangling" of filename
;
; Revision 1.27  1995/11/14 21:46:19  Lasse
; Version 6.2; Fixed so that magic carpet works; Fixed so that DiskFree(d:)
; where d: is a cd-rom now returns correct data
;
; Revision 1.26  1995/11/14 19:50:33  Lasse
; Bug in previous revision concerning the drive letter in speed messages;
; fixed
;
; Revision 1.25  1995/11/14 19:48:43  Lasse
; Fixed so that speed message included correct drive letter
;
; Revision 1.24  1995/11/14 19:29:30  Lasse
; Version 6.1; Super speed emulation enabled
;
; Revision 1.23  1995/11/14 19:02:11  Lasse
; Updated the usage message, and renamed VTC to data
;
; Revision 1.22  1995/11/14 18:51:36  Lasse
; Version 6.0; Now simulates speed of cd-rom; Also read sector 16 (system
; data)
;
; Revision 1.21  1995/11/12 21:52:52  Lasse
; Version 5.0; fixed a couple of bugs with the audio track information
;
; Revision 1.20  1995/11/12 08:14:22  Lasse
; Version 4.1
;
; Revision 1.19  1995/11/12 08:09:58  Lasse
; Removed some old dummy-stuff
;
; Revision 1.18  1995/11/12 06:44:56  Lasse
; Audio Status now responds music paused; fix necessary for MechWarrior 2
;
; Revision 1.17  1995/11/12 03:39:43  Lasse
; Fixed the return to directory bug
;
; Revision 1.16  1995/11/12 03:24:55  Lasse
; Bug-fix; couldn't supply more than name.ext, no dir to run
;
; Revision 1.15  1995/11/12 03:21:29  Lasse
; Version 4; supply name of program to run
;
; Revision 1.14  1995/11/12 02:34:58  Lasse
; Fixed so that it reads audio data also
;
; Revision 1.13  1995/11/11 22:51:03  Lasse
; Fixed so cd-roms could be redirected to the root of a drive
;
; Revision 1.12  1995/11/11 22:48:52  Lasse
; Fixed a bug which caused strange symbols in 'dir' listings
;
; Revision 1.11  1995/11/11 22:39:32  Lasse
; Fixed so it didn't automatically write protect cd-roms unless the user
; asked for it
;
; Revision 1.10  1995/11/11 20:50:50  Lasse
; DiskFree function now clears carry flag
;
; Revision 1.9  1995/11/11 20:44:24  Lasse
; Version 3.1; added option to supply name of .vtc file
;
; Revision 1.8  1995/11/11 20:15:29  Lasse
; Returns dummy filenames, and uses CD0.VTC - CD7.VTC instead of DIR.VTC
; so that the same directory may be used for different cd's.
;
; Revision 1.7  1995/11/11 05:55:23  Lasse
; Fixed so it reads the VTOC into memory and returns it upon request.
;
; Revision 1.6  1995/11/10 23:14:47  Lasse
; Fixed the volume label bug that appeared in the last revision.
;
; Revision 1.5  1995/11/10 23:05:40  Lasse
; Fixed a bug when checking more than 8 drives past the first emulated
; cd-rom drive.
;
; Revision 1.4  1995/11/07 22:15:01  Lasse
; Version 2.0
;
; Revision 1.3  1995/11/07 22:13:19  Lasse
; Now saves current drive and directory and restores them when the sub-
; process exits. Also has self-installed check code now.
;
; Revision 1.2  1995/11/07 21:50:29  Lasse
; Moved all string procedures into 0cd.asm itself. Tidied up some of the
; code. Replace the uppercase functions. Fixed so that the GetDirEntry call
; to MSCDEX will go through (possibly returning garbage, but...) and some
; other stuff.
;
; Revision 1.1  1995/11/07 20:15:56  Lasse
; Initial revision
;
;
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Assembler options and directives                                         лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

ideal			; IDEAL assembly mode

stacksize	= 60h		; Size of stack (words)

p386			; Select the processor
p387			; Support for math coprocessor
model tiny, pascal		; Always must be TINY model

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Initialized data segment                                                 лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

dataseg			; Initialized data segment

MaxCDs	= 8
HookMsg	db	'0cd: installed', 13, 10, 0
MSCDEX	db	'0cd error: mscdex already installed', 13, 10, 0
Installed	db	'0cd error: already installed', 13, 10, 0
NoRedirs	db	'0cd error: no redirections specified', 13, 10, 0
UnknownOp	db	'0cd error: unknown command line parameter: ', 0
InvOption	db	'0cd: invalid option ',0
TooManyCDs	db	'0cd error: cannot handle more than ',48+MaxCDs
	db	' drives', 13, 10, 0
No66Msg	db	'0cd error: int 66h not available', 13, 10, 0
NoDrives	db	'0cd error: no drives available', 13, 10, 0
NotRoom	db	'0cd error: no more drive letters available', 13, 10, 0
CDSize	db	'0cd: host drive(s) and cd-rom(s) report host drive(s) size', 13, 10, 0
CD0	db	'0cd: host drive(s) and cd-rom(s) report 0 bytes free', 13, 10, 0
IsProt	db	'0cd: cd-rom(s) are write protected', 13, 10, 0
NotProt	db	'0cd: cd-rom(s) are not write protected', 13, 10, 0
DataTooBig	db	'0cd error: data file is too big (>65535 bytes)', 13, 10, 0
DataNoMem	db	'0cd error: no memory for data file', 13, 10, 0
RunProg	db	'0cd: program to run is ', 0
UnknownSpd	db	'0cd error: unknown speed option ', 0
InvDrive	db	'0cd warning: can only adjust drive letter before redirections', 13, 10, 0
SuccessMsg	db	'0cd: functions will succeed with dummy data', 13, 10, 0
FailMsg	db	'0cd: functions will fail with no data', 13, 10, 0
AltMsg	db	'0cd: alternate simulation enabled', 13, 10, 0
TruMsg	db	'0cd: audio through-put enabled',	13,	10,	0
NoMSCDEX	db	'0cd warning: no mscdex detected, audio through-put not enabled', 13, 10, 0
CoMsg	db	'0cd: mscdex co-existance enabled',	13,	10,	0
UnknownMSC	db	'0cd error: unknown mscdex option	',0
TooFew	db	'0cd error: not enough consecutive drive letters, use the /lx option', 13, 10, 0

UnknownSim	db	'0cd error: unknown simulation option	',0
SimMsg1	db	'0cd: drive '
SimDrv	db	'E'
	db	': simulates a ',0
SimMsg2	db	'physical drive', 13, 10, 0
SimMsg3	db	'substed drive', 13, 10, 0
SimMsg4	db	'remote or cd-rom drive', 13, 10, 0
SpeedMsg1	db	'0cd: drive '
SpeedDrv	db	'E'
	db	': is a',0
SpeedMsg2	db	' drive', 13, 10, 0
SingleMsg	db	' single speed',0
DoubleMsg	db	' double speed',0
TripleMsg	db	' triple speed',0
QuadraMsg	db	' quadra speed',0
SexaMsg	db	' sexa speed',0
OctaMsg	db	'n octa speed',0
SuperMsg	db	' super speed',0

ReadData1	db	'0cd: data for drive '
ReadData2	db	'?'
ReadData3	db	': read into memory from ', 0

Prompt1	db	'0cd: mounted ', 0
Prompt2	db	': in ', 0
DriveID	db	0, 0
AnyRedir	db	0
CSEnv	db	'COMSPEC=',0
UsageMsg	db	'0cd usage: 0cd [options] <directory> [<directory> ... ]', 13, 10
	db	'0cd options: -q         = quiet; no messages except for error messages',	13, 10
	db	'             -0         = host and cd-rom drives report 0 bytes free', 13, 10
	db	'             -w         = cd-rom drives are write protected', 13, 10
	db	'             -dfilename = supply name of data file', 13, 10
	db	'             -rfilename = supply name of program to run',13,10
	db	'             -sx        = supply speed of drive (x=s, 1, 2, 3, 4, 6 or 8)', 13, 10
	db	'             -i0        = simulate physical drive', 13, 10
	db	'             -i1        = simulate substed drive', 13, 10
	db	'             -i2        = simulate remote or cd-rom drive (default)', 13, 10
	db	'             -f         = failure if no cd-rom data', 13, 10
	db	'             -a         = alternate simulation', 13, 10
	db	'             -mx        = mscdex co-existance level (x=0-3, default=0)', 13, 10
	db	'             -v         = show revision information', 13, 10, 0
CRLF	db	13, 10, 0

Line	db	30 dup (0)
PathName	db	128 dup (0)
DataName	db	128 dup (0)
RevMsg	db	'0cd: revision $Revision: 1.40 $', 13, 10
	db	'0cd: state $State: Exp $', 13, 10
	db	'0cd: source $Source: D:/ASM/PROJECTS/0CD/RCS/0cd.asm $', 13, 10
	db	'0cd: rcsfile $RCSfile: 0cd.asm $', 13, 10
	db	0
Label	EndOfData word

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Uninitialized data segment                                               лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Code segment                                                             лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

	assume	cs:@code, \
		ds:@data, \
		es:@data

codeseg			; Code segment
 
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Macro declarations                                                       лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

macro	iCLC
	push	bp	; Preserve BP register
	mov	bp,sp	; Set BP to	stack pointer
	and	[word ptr bp+6],0fffeh	; Modify flags on the stack
	pop	bp	; Restore BP register
endm

macro	iSTC
	push	bp	; Preserve BP register
	mov	bp,sp	; Set BP to	stack pointer
	or	[word ptr bp+6],0001h	; Modify flags on the stack
	pop	bp	; Restore BP register
endm

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Program initialization                                                   лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

	StartUpCode	; Insert startup code
	mov	sp,offset TheStack	; Fix stack pointers
	mov	bx,offset EndOfData	;	Get	end	of data	segment
	shr	bx,4	; Make segment count
	add	bx,1	; Make last segment count
	mov	ah,4ah	; Fn 4ah = Resize memory block
	int	21h	; Call dos interrupt
	push	cs	; Point ds to
	pop	ds	; data segment (after code)
	push	cs	; Point es to
	pop	es	; data segment (after code)

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл User-code                                                                лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

	call	SaveDir
	call	GetCOMSPEC
	call	Init
	call	Report
	call	Hook
	call	MinMem
	call	Exec, cs offset ProgName, cs offset Params
	call	UnHook
	call	ReturnDir

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Exit program here, returning 0000h as ExitCode (ERRORLEVEL in DOS)       лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

	ExitCode	0000h	; Return to	dos, clear up heap

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл Procedure/function declarations                                          лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

; Code segment variables
OldDir	db	79 dup (0)
OldDrive	db	0

ProgName	db	128 dup (0)
Params	db	'/C '
RunName	db	'0CDSTART.BAT',0
	db	115 dup (0)
SimType	db	2
SimFlag	dw	0100000010000000b
CoMSCDEX	db	0
FirstRealCD	db	0
AudioTru	db	0
AltSimul	db	0
DoFailure	db	0
CDPlaying	dw	0001h
CDPos	dw	0010h
CurSpeed	db	2
CurDelay	dw	6200
UnHookMsg	db	'0cd: removed', 13, 10, 0
InitMsg	db	'0cd: version 7.1', 13, 10, 0
Inited	db	0
Datas	db	2*MaxCDs dup (0)
FirstID	db	0
LastID	db	0
IsRun	db	0
RetZero	db	0
WriteProt	db	0
Quiet	db	0
DriveCount	db	0
DriveSpeeds	dw	MaxCDs dup (0)
DeviceHdr	dw	-1, -1
	dw	0100100001000000b
	dw	Strategy
	dw	Strategy	; No interrupt
	db	'0CD-CDx',0
	db	0,0

	dw	stacksize dup (0)	; Set up space for stack
Label	TheStack	Word	; Here begins the stack

; Strategy procedure
proc	Strategy	far
	ret		; Return to	caller
endp

; MinMem procedure
proc	MinMem
	mov	ah,62h	;	Dos	Fn 62h = Get PSP in	bx
	int	21h	;	Call dos interrupt
	mov	es,bx	;	Store	in es	for	realloc
	mov	ah,4ah	;	Dos	Fn 4ah = Realloc
	lea	bx,[HookMsg]	;	Get	offset of	data
	shr	bx,4	;	Calculate	segments
	inc	bx	;	Adjust for last	segment
	int	21h	;	Reallocate memory
	ret		;	Return to	caller
endp

; GetCDData procedure
; returns segment in	es, or 0-segment if failure
proc	GetCDData
arg	@@DriveID:word
local	@@Handle:word, @@NewSeg:word, @@Size:word
uses	ax, bx, si
	mov	[@@NewSeg],0	; No segment yet
	cmp	[byte ptr ds:DataName],0	; Got a filename of datafile ?
	je	@@Exit	; No --> @@Exit

	mov	ah,3dh	; Dos Fn 3dh = Open file
	lea	dx,[DataName]	; Filename in dx:dx
	mov	al,00h	; Open mode	in al
	int	21h	; Call DOS interrupt
	jc	@@Exit	; Error -->	@@Exit
	mov	[@@Handle],ax	; Save file handle

	mov	ax,4202h	; Dos Fn 42	= LSeek
	mov	bx,[@@Handle]	; Filehandle in bx
	xor	cx,cx	; High 16 bits of position
	xor	dx,dx	; Low 16 bits of position
	int	21h	; Call DOS interrupt

	test	dx,dx	; File larger than 64K ?
	jz	@@OkSize	; No --> @@OkSize
	mov	ah,3eh	; Dos Fn 3eh = Close file
	mov	bx,[@@Handle]	; Filehandle in bx
	int	21h	; Call DOS interrupt
	mov	[cs:Quiet],00h	; Turn of quiet mode
	call	LStrWrite, offset DataTooBig	; Write error msg
	call	CleanUp	; Clean up
	ExitCode	0001h	; Exit to DOS
@@OkSize:
	mov	[@@Size],ax	; Save size	of file
	shr	ax,4	; Divide by	16
	inc	ax	; And add 1
	mov	bx,ax	; Number of	segments in	bx
	mov	ah,48h	; Dos Fn 48h = AllocMem
	int	21h	; Call DOS interrupt
	jc	@@NoMem	; Error -->	@@NoMem
	mov	es,ax	; Segment in es
	mov	[@@NewSeg],ax	; Store new	segment

	mov	ax,4200h	; Dos Fn 42	= LSeek
	mov	bx,[@@Handle]	; Filehandle in bx
	xor	cx,cx	; High 16 bits of position
	xor	dx,dx	; Low 16 bits of position
	int	21h	; Call DOS interrupt

	mov	ah,3fh	; Dos Fn 3fh = Read file
	mov	bx,[@@Handle]	; Filehandle in bx
	push	ds	; Save ds
	push	es	; Put ds ...
	pop	ds	; ... in es
	xor	dx,dx	; High 16 bits of size in dx
	mov	cx,[@@Size]	; Low 16 bits of size in cx
	int	21h	; Call DOS interrupt
	pop	ds	; Restore ds

	mov	al,[byte ptr @@DriveID]	; Get driveletter
	mov	[ReadData2],al	; Update message text
	call	LStrWrite, offset ReadData1	; Write text
	call	LStrWrite, offset DataName	; Write filename
	call	LStrWrite, offset CRLF		; Newline
	mov	bx,[@@Handle]	; Filehandle in bx
	mov	ah,3eh	; Dos Fn 3eh = Close file
	int	21h	; Call DOS interrupt
	jmp	@@Exit	; Exit
@@NoMem:
	mov	bx,[@@Handle]	; Filehandle in bx
	mov	ah,3eh	; Dos Fn 3eh = Close file
	int	21h	; Call DOS interrupt
	mov	[cs:Quiet],00h	; Turn off quiet mode
	call	LStrWrite, offset DataNoMem	; Write error msg
	call	CleanUp	; Clean up
	ExitCode	0001h	; Exit to dos
@@Exit:
	lea	si,[Datas]	; ds:si point to Datas
	mov	cx,[@@DriveID]	; Get drive	letter
	sub	cl,[cs:FirstID]	; Make 0-based
	cmp	cl,0	; First drive ?
	je	@@DoExit	; Yes --> @@DoExit
@@Loop:
	add	si,2	; Next data	index
	dec	cl	; One less to skip
	jnz	@@Loop	; More --> @@Loop
@@DoExit:
	mov	es,[@@NewSeg]	; Return segment in es
	mov	[ds:si],es	; Save segment in Datas
	ret		; Return to	caller
endp

; Report procedure
proc	Report
	cmp	[cs:CoMSCDEX],01h	;	MSCDEX co-existance	?
	jne	@@NoCoEXIST
	call	LStrWrite, offset CoMsg	;	Write	message
@@NoCoExist:
	cmp	[cs:AudioTru],00h	;	Audio	throughput ?
	je	@@NoTru	;	No --> @@NoTru
	call	LStrWrite, offset TruMsg	;	Write	message
@@NoTru:
	cmp	[cs:AltSimul],00h	;	Alternate	simulation ?
	je	@@NoAlt	;	No --> @@NoAlt
	call	LStrWrite, offset AltMsg	;	Write	message
@@NoAlt:
	cmp	[cs:DoFailure],00h	;	Failure	or success ?
	je	@@Success
	call	LStrWrite, offset FailMsg	;	Write	message
	jmp	@@OkFail
@@Success:
	call	LStrWrite, offset SuccessMsg	;	Write	message
@@OkFail:
	cmp	[cs:WriteProt],00h	; Write-protected ?
	je	@@NotProt	; No --> @@NotProt
	call	LStrWrite, offset IsProt	; Write message
	jmp	@@Size	; --> @@Size
@@NotProt:
	call	LStrWrite, offset NotProt	; Write message
@@Size:
	cmp	[cs:RetZero],00h	;	Zero disk	free ?
	je	@@NotZero	;	No --> @@NotZero
	call	LStrWrite, offset CD0	;	Write	message
	jmp	@@Exit	;	Exit
@@NotZero:
	call	LStrWrite, offset CDSize	;	Write	message
@@Exit:
	call	LStrWrite, offset CRLF	;	Write	an empty line
	ret		;	Return to	caller
endp

; SaveDir procedure
proc	SaveDir
uses	ax, si, dx
	mov	ah,47h	;	Dos	Fn 47h = GetCurDir
	lea	si,[OldDir+1]	;	Destination in ds:si
	push	ds
	push	cs
	pop	ds
	mov	[byte ptr ds:si-1],'\'	;	Make \ relative
	mov	dl,00h	;	Set	to current drive
	int	21h	;	Call DOS interrupt
	pop	ds

	mov	ah,19h	;	Dos	Fn 19h = GetCurDrive
	int	21h	;	Call DOS interrupt
	mov	[cs:OldDrive],al	;	Save drive
	ret		;	Return to	caller
endp

; ReturnDir	procedure
proc	ReturnDir
uses	ax, dx
	mov	ah,0eh	;	Dos	Fn 0eh = SetCurDrive
	mov	dl,[cs:OldDrive]	;	Drive	no in dl
	int	21h	;	Call DOS interrupt

	mov	ah,3bh	;	Dos	Fn 3bh = SetCurDir
	lea	dx,[OldDir]	;	Directory	in ds:dx
	push	ds
	push	cs
	pop	ds
	int	21h	;	Call DOS interrupt
	pop	ds
	ret		;	Return to	caller
endp

; LStrWrite procedure
proc	LStrWrite
arg	@@Str:word
	cmp	[cs:Quiet],1	;	Quiet	mode ?
	je	@@Exit	;	Yes	-->	@@Exit
	cmp	[cs:Inited],0	;	Already	shown version	?
	jne	@@Ok	;	Yes	-->	@@Ok
	mov	[cs:Inited],1	;	Set	version shown flag
	call	StrWrite, cs offset InitMsg	;	Show version message
@@Ok:
	call	StrWrite, [@@Str]	;	Write	text
@@Exit:
	ret		;	Return to	caller
endp

; Init procedure
proc	Init
	call	GetFirstDrive
	call	ReadDescription
	call	Needed
	call	CheckMSCDEX
	ret
endp

; GetCOMSPEC procedure
proc	GetCOMSPEC
uses	ax, si, di, es, ds
	mov	ah,62h	;	Dos	Fn 62h = Get PSP
	int	21h	;	Call DOS interrupt
	mov	es,bx	;	Segment	of PSP in es
	mov	es,[es:002ch]	;	Get	environment segment
	xor	si,si	;	Start	of environment
@@Loop:
	call	StrLIComp, es si, ds offset CSEnv, 8	;	COMSPEC=xxx ?
	jc	@@Next	;	No --> @@Next
	add	si,8	;	Skip to	xxx
	call	StrCopy, cs offset ProgName, es si	;	Save program name
	jmp	@@Exit	;	Exit
@@Next:
	inc	si	;	Next character
	cmp	[byte ptr es:si],0	;	At end of	string ?
	jne	@@Next	;	No --> @@Next
	inc	si	;	Skip end-of-string char
	cmp	[byte ptr es:si],0	;	End	of environment ?
	jne	@@Loop	;	No --> @@Loop
@@Exit:
	ret		;	Return to	caller
endp

; Needed procedure
proc	Needed
	cmp	[AnyRedir],1	;	Any	redirections at all ?
	je	@@Exit	;	Yes	-->	@@Exit
	call	LStrWrite, offset NoRedirs	;	Write	error message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@Exit:
	call	CheckFile	;	Check	for	program to run
	ret		;	Return to	caller
endp

; CheckFile	procedure
proc	CheckFile
	mov	ax,3d00h	;	Dos	Fn 3d	= Open file
	push	ds
	push	cs
	pop	ds
	lea	dx,[RunName]	;	Filename in ds:dx
	int	21h	;	Call DOS interrupt
	pop	ds
	jc	@@NoFile	;	Error	-->	@@NoFile
	mov	bx,ax	;	Filehandle in bx
	mov	ah,3eh	;	Dos	Fn 3eh = Close file
	int	21h	;	Call DOS interrupt
	call	LStrWrite, offset RunProg	;	Show run message
	push	ds cs	;	Save ds	and	put	cs ...
	pop	ds	;	...	into ds
	call	LStrWrite, offset RunName	;	Show name of program
	pop	ds	;	Restore	ds
	call	LStrWrite, offset CRLF	;	Newline
	jmp	@@Exit	;	Exit
@@NoFile:
	mov	[byte ptr cs:Params],0	;	No parameters to COMSPEC
@@Exit:
	ret		;	Return to	caller
endp

; GetCDS procedure
; Returns pointer in	es:bx, and carry set if success, or	0:0	in es:bx and
; carry clear if failure
proc	GetCDS
arg	@@DriveID:word
uses	ax
	call	UpCase, [@@DriveID]	;	Make letter uppercase
	mov	[@@DriveID],ax	;	Store	in @@DriveID

	mov	ah,52h	;	Dos	Fn 52h = Get DosSysVars
	int	21h	;	Call DOS interrupt
	add	bx,16h	;	Skip to	CDS entry
	les	bx,[dword ptr es:bx]	;	Get	pointer to CDS in	es:bx
	mov	al,'A'	;	First	drive letter in	CDS
@@Loop:
	cmp	al,[byte ptr @@DriveID]	;	Correct	CDS record ?
	je	@@Found	;	Yes	-->	@@Found
	add	bx,88	;	Skip record
	inc	al	;	Next drive letter
	cmp	al,'['	;	Beyond end of CDS ?
	jb	@@Loop	;	No --> @@Loop
	xor	bx,bx	;	Zero offset
	mov	es,bx	;	Zero segment
	clc		;	Signal failure via carry
	jmp	@@Exit	;	Exit
@@Found:
	stc		;	Signal success via carry
@@Exit:
	ret		;	Return
endp

; GetFirstDrive procedure
proc	GetFirstDrive
local	@@DriveID:word
uses	ax
	mov	[@@DriveID],'D'	;	First	available drive	letter
@@Loop:
	call	GetCDS, [@@DriveID]	;	Get	CDS	entry for drive
	jnc	@@Exit	;	Failure	--> @@Exit
	cmp	[word ptr es:bx+67],0000h	;	Drive	available ?
	jne	@@Next	;	No --> @@Next
	cmp	[word ptr es:bx+69],0000h	;	Drive	available ?
	jne	@@Next	;	No --> @@Next
	cmp	[word ptr es:bx+71],0000h	;	Drive	available ?
	jne	@@Next	;	No --> @@Next
	mov	al,[byte ptr @@DriveID]	;	Get	drive	ID
	mov	[DriveID],al	;	Store	ID
	jmp	@@Exit	;	Exit
@@Next:
	inc	[@@DriveID]	;	Next ID
	cmp	[@@DriveID],'['	;	Beyond available IDs?
	je	@@Err	;	Yes	-->	@@Err
	jmp	@@Loop	;	Loop
@@Exit:
	mov	al,[DriveID]	;	Get	drive	ID
	mov	[cs:FirstID],al	;	Save as	first ID
	ret		;	Return to	caller
@@Err:
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset NoDrives	;	Write	error message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
endp

; CheckMSCDEX procedure
proc	CheckMSCDEX
	push	0dadah	;	Put	0dadah on stack
	mov	ax,1100h	;	Multiplex	Fn 1100h = MSCDEX
	mov	si,'0C'	;	si:ds	=	'0CD6' ...
	mov	di,'D7'	;	...
	int	2fh	;	Call multiplex interrupt
	pop	bx	;	Get	stack	entry
	cmp	al,0ffh	;	MSCDEX installed ?
	jne	@@NoMSCDEX	;	No --> @@NoMSCDEX
	cmp	bx,0adadh	;	Correct	entry on stack ?
	jne	@@NoMSCDEX	;	No --> @@NoMSCDEX
@@Installed:
	cmp	[cs:AudioTru],01h	;	Audio	throughput ?
	je	@@ExitInstalled	;	Yes	-->	@@ExitInstalled
	cmp	si,'7D'	;	0cd signature ?
	jne	@@MSC	;	No --> @@MSC
	cmp	di,'C0'	;	...
	jne	@@MSC	;	...
	call	LStrWrite, offset Installed	;	Show installed message
	jmp	@@Quit	;	Exit to	dos
@@NoMSCDEX:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	enabled	?
	jne	@@Exit	;	No --> @@Exit
	call	LStrWrite, offset NoMSCDEX	;	Write	warning	message
	mov	[cs:AudioTru],00h	;	Disable	audio	throughput
	jmp	@@Exit	;	Exit
@@MSC:
	mov	[cs:AltSimul],00h	;	Disable	alternate	simulation
	cmp	[cs:CoMSCDEX],01h	;	MSCDEX co-existance	?
	je	@@Exit	;	Yes	-->	@@Exit
	call	LStrWrite, offset MSCDEX	;	Show MSCDEX message
@@Quit:
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@ExitInstalled:
	mov	[cs:AltSimul],00h	;	Disable	alternate	simulation
	mov	ax,1500h	;	Get	number of	drives
	int	2fh	;	Call old driver
	mov	[cs:FirstRealCD],cl	;	Store	first	unit
@@Exit:
	ret		;	Return to	caller
endp

; ReadDescription procedure
proc	ReadDescription
local	@@File:word
	mov	ah,62h	;	Dos	Fn 62h = Get PSP
	int	21h	;	Call DOS interrupt
	mov	es,bx	;	Segment	of PSP in es
	mov	si,81h	;	Offset 81h = Parameters
	lea	di,[Line]	;	Point	ds:di to Line
	mov	[byte ptr ds:di],0	;	Terminate	Line variable
	mov	cl,[es:si-1]	;	Get	number of characters
	cmp	cl,0	;	Any	at all ?
	je	@@Exit	;	No --> @@Exit
@@Loop:
	mov	al,[es:si]	;	Get	character
	inc	si	;	Skip character
	cmp	al,09h	; Tab character ?
	je	@@Space	;	Yes	-->	@@Space
	cmp	al,20h	;	Space	character
	je	@@Space	;	Yes	-->	@@Space
	cmp	al,0dh	;	End	of parameters ?
	je	@@Space	;	Yes	-->	@@Space
	mov	[ds:di],al	;	Store	character in Line
	inc	di	;	Skip character in Line
	mov	[byte ptr ds:di],0	;	Terminate	Line variable
@@Next:
	dec	cl	;	One	less character to	process
	jnz	@@Loop	;	More --> @@Loop
	call	Parse	;	Parse	current parameter
	jmp	@@Exit	;	Exit
@@Space:
	cmp	[byte ptr Line],0	;	Parameter	?
	je	@@NoLine	;	No --> @@NoLine
	call	Parse	;	Parse	current parameter
@@NoLine:
	mov	[byte ptr Line],0	;	Empty	Line variable
	lea	di,[Line]	;	Rewind pointer to Line
	jmp	@@Next	;	Next character
@@Exit:
	ret		;	Return to	caller
endp

; Parse procedure
proc	Parse
uses	si, ax, cx, bx, ds, es
	cmp	[byte ptr ds:Line],'/'	;	Option character ?
	je	@@Option	;	Yes	-->	@@Option
	cmp	[byte ptr ds:Line],'-'	;	Option character ?
	je	@@Option	;	Yes	-->	@@Option
	call	Redirect	;	Redirect new drive
	jmp	@@Exit	;	Exit
@@Option:
	mov	al,[byte ptr ds:Line+1]	;	Get	option character
	call	UpCase, ax	;	Convert	to uppercase
	cmp	al,'V'	;	Revision option	?
	je	@@ShowRev
	cmp	al,'M'	;	MSCDEX option	?
	je	@@MSCDEX	;	Yes	-->	@@MSCDEX
	cmp	al,'A'	;	Alternate	option ?
	je	@@Alt	;	Yes	-->	@@Alt
	cmp	al,'F'	;	Failure	option ?
	je	@@Failure	;	Yes	-->	@@Failure
	cmp	al,'I'	;	Simulation option	?
	je	@@Simulate	;	Yes	-->	@@Simulate
	cmp	al,'R'	;	Run	option ?
	je	@@SetRun	;	Yes	-->	@@SetRun
	cmp	al,'D'	;	DataFile option ?
	je	@@Data	;	Yes	-->	@@Data
	cmp	al,'0'	;	0-free option ?
	je	@@ZeroRet	;	Yes	-->	@@ZeroRet
	cmp	al,'L'	;	Letter option ?
	je	@@NewLetter	;	Yes	-->	@@NewLetter
	cmp	al,'Q'	;	Quiet	mode option ?
	je	@@Quiet	;	Yes	-->	@@Quiet
	cmp	al,'?'	;	Help option ?
	je	@@Usage	;	Yes	-->	@@Usage
	cmp	al,'W'	;	Write-protect option ?
	je	@@WriteProt	;	Yes	-->	@@WriteProt
	cmp	al,'S'	;	Speed	option ?
	je	@@SetSpeed	;	Yes	-->	@@SetSpeed
@@NotRedir:
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset UnknownOp	;	Write	error message
	call	LStrWrite, offset Line	;	Write	offending option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@ShowRev:
	call	LStrWrite, offset RevMsg	;	Show revision	message
	call	CleanUp	;	Clean	up
	ExitCode	0000h	;	Exit to	dos
@@MSCDEX:
	mov	al,[ds:Line+2]	;	Get	mscdex selection
	cmp	al,'0'	;	Default	?
	je	@@Exit	;	Yes	-->	@@Exit
	cmp	al,'1'	;	Audio	through-put	?
	je	@@Tru	;	Yes	-->	@@Tru
	cmp	al,'2'	;	Coexist	?
	je	@@CoExist	;	Yes	-->	@@Coexist
	cmp	al,'3'	;	Coexist	+	audio	through-put ?
	je	@@CoExistTru	;	Yes	-->	@@CoExistTru

	call	LStrWrite, offset UnknownMSC	;	Write	error	message
	call	LStrWrite, offset Line	;	Write	offending	option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@CoExist:
	mov	[cs:CoMSCDEX],01h	;	Set	coexist	flag
	jmp	@@Exit	;	Exit
@@CoExistTru:
	mov	[cs:CoMSCDEX],01h	;	Set	coexist	flag
@@Tru:
	mov	[cs:AudioTru],01h	;	Set	audio	throughput flag
	jmp	@@Exit	;	Exit
@@Alt:
	mov	[cs:AltSimul],01h	;	Set	alternate	simulation flag
	jmp	@@Exit	;	Exit
@@Failure:
	mov	[cs:DoFailure],01h	;	Set	failure	flag
	jmp	@@Exit
@@Simulate:
	mov	al,[ds:Line+2]	;	Get	simulation selection
	sub	al,'0'	;	Calculate	simulation no
	mov	[cs:SimType],al	;	Save it
	add	al,'0'	;	Adjust back	to digits
	cmp	al,'0'	;	Physical simulation	?
	je	@@SimPhys	;	Yes	-->	@@SimPhys
	cmp	al,'1'	;	Subst	simulation ?
	je	@@SimSubst	;	Yes	-->	@@SimSubst
	cmp	al,'2'	;	Remote simulation	?
	je	@@SimRemote	;	Yes	-->	@@SimRemote
	call	LStrWrite, offset UnknownSim	;	Write	error	message
	call	LStrWrite, offset Line	;	Write	offending	option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@SimPhys:
	mov	[cs:SimFlag],0100000000000000b	;	Save flags
	jmp	@@Exit	;	Exit
@@SimSubst:
	mov	[cs:SimFlag],0101000000000000b	;	Save flags
	jmp	@@Exit	;	Exit
@@SimRemote:
	mov	[cs:SimFlag],0100000010000000b	;	Save flags
	jmp	@@Exit	;	Exit
@@SetSpeed:
	mov	al,[ds:Line+2]	;	Get	speed	selection
	sub	al,'0'	;	Calculate	speed no
	mov	[cs:CurSpeed],al	;	Save it
	add	al,'0'	;	Adjust back	to characters
	cmp	al,'s'	;	Super	speed mode ?
	je	@@Super	;	Yes	-->	@@Super
	cmp	al,'S'	;	Super	speed mode ?
	je	@@Super	;	Yes	-->	@@Super
	cmp	al,'1'	;	Single spin ?
	je	@@Single	;	Yes	-->	@@Single
	cmp	al,'2'	;	Double spin ?
	je	@@Double	;	Yes	-->	@@Double
	cmp	al,'3'	;	Triple spin ?
	je	@@Triple	;	Yes	-->	@@Triple
	cmp	al,'4'	;	Quadra spin ?
	je	@@Quadra	;	Yes	-->	@@Quadra
	cmp	al,'6'	;	Sexa spin	?
	je	@@Sexa	;	Yes	-->	@@Sexa
	cmp	al,'8'	;	Octa spin	?
	je	@@Octa	;	Yes	-->	@@Octa
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset UnknownSpd	;	Write	error message
	call	LStrWrite, offset Line	;	Write	offending option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@Super:
	mov	[cs:CurSpeed],0	;	Set	super	speed mode
	mov	[cs:CurDelay],0	;	Set	super	speed delay
	jmp	@@Exit	;	Exit
@@Single:
	mov	[cs:CurDelay],13000	;	Set	single spin delay
	jmp	@@Exit	;	Exit
@@Double:
	mov	[cs:CurDelay],6200	;	Set	double spin delay
	jmp	@@Exit	;	Exit
@@Triple:
	mov	[cs:CurDelay],4200	;	Set	triple spin delay
	jmp	@@Exit	;	Exit
@@Quadra:
	mov	[cs:CurDelay],3100	;	Set	quadra spin delay
	jmp	@@Exit	;	Exit
@@Sexa:
	mov	[cs:CurDelay],2000	;	Set	sexa spin delay
	jmp	@@Exit	;	Exit
@@Octa:
	mov	[cs:CurDelay],1700	;	Set	octa spin delay
	jmp	@@Exit	;	Exit
@@Data:
	lea	si,[Line+2]	;	/Dxxx, xxx in ds:si
	lea	di,[DataName]	;	DataName in ds:di
	cld		;	Forward	copy
@@DataLoop:
	lodsb		;	Get	character
	mov	[ds:di],al	;	Store	character
	inc	di	;	Skip character
	test	al,al	;	End	of parameter ?
	jnz	@@DataLoop	;	No --> @@DataLoop
	call	TrueName, ds offset DataName	; Fix
	jmp	@@Exit	;	Exit
@@SetRun:
	lea	si,[Line+2]	;	/Rxxx, xxx in ds:si
	lea	di,[RunName]	;	RunName	in ds:di
	cld		;	Forward	copy
@@SetRunLoop:
	lodsb		;	Get	character
	mov	[cs:di],al	;	Store	character
	inc	di	;	Skip character
	test	al,al	;	End	of parameter ?
	jnz	@@SetRunLoop	;	No --> @@SetRunLoop
	call	TrueName, cs offset RunName	; Fix
	jmp	@@Exit	;	Exit
@@ZeroRet:
	mov	[cs:RetZero],1	;	Set	zero free flag
	jmp	@@Exit	;	Exit
@@WriteProt:
	mov	[cs:WriteProt],1	;	Set	write-protect flag
	jmp	@@Exit	;	Exit
@@NewLetter:
	cmp	[AnyRedir],01h	;	Any	redirections already ?
	je	@@OnlyBeforeFirst	;	Yes	-->	@@OnlyBeforeFirst
	mov	al,[byte ptr ds:Line+2]	;	Get	drive	letter
	call	UpCase, ax	;	Convert	to uppercase
	cmp	al,'D'	;	<D ?
	jb	@@NotOk	;	Yes	-->	@@NotOk
	cmp	al,'Z'	;	>Z ?
	ja	@@NotOk	;	Yes	-->	@@NotOk
	mov	[cs:FirstID],al	;	Save first id to use
	mov	[DriveID],al	;	Save current id to use
	jmp	@@Exit	;	Exit
@@OnlyBeforeFirst:
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset InvDrive	;	Write	error message
	call	LStrWrite, offset Line	;	Write	offending option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@NotOk:
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset InvOption	;	Write	error message
	call	LStrWrite, offset Line	;	Write	offending option
	call	LStrWrite, offset CRLF	;	Newline
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@Quiet:
	mov	[cs:Quiet],01h	;	Turn on quiet mode
	jmp	@@Exit	;	Exit
@@Usage:
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset UsageMsg	;	Write	error message
	Call	CleanUp	;	Clean	up
	ExitCode	0000h	;	Exit to	dos
@@Exit:
	ret		;	Return to	caller
endp

; Redirect procedure
proc	Redirect	far
uses	si, ax, es, bx
local	@@TempCDS:dword
	cmp	[cs:DriveCount],MaxCDs	;	Already	redirected max ?
	jb	@@RoomForMore	;	No --> @@RoomForMore
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset TooManyCDs	;	Write	error message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@RoomForMore:
	cmp	[DriveID],'['	;	Exhausted	drive letters ?
	jb	@@OkDrives	;	No --> @@OkDrives
	mov	[cs:Quiet],0	;	Turn off quiet mode
	call	LStrWrite, offset NotRoom	;	Write	error message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@OkDrives:
	mov	[AnyRedir],1	;	Set	redirected flag
	call	LStrWrite, offset Prompt1	;	Write	message
	call	LStrWrite, offset DriveID	;	Write	new drive id
	call	LStrWrite, offset Prompt2	;	Write	rest of message
	call	StrCopy, ds offset PathName, ds offset Line	;	Copy path
	call	TrueName, ds offset PathName	;	Fix	it
	push	si	;	Save si
	lea	si,[PathName]	;	Pathname in	ds:si
@@CheckBackslash:
	cmp	[byte ptr ds:si],00h	;	End	of pathname	?
	je	@@OkEnd	;	Yes	-->	@@OkEnd
	inc	si	;	Next character
	jmp	@@CheckBackslash	;	Loop
@@OkEnd:
	cmp	[byte ptr ds:si-1],00h	;	Last character was \
	jne	@@OkBackslash	;	No --> @@OkBackslash
	mov	[byte ptr ds:si-1],'\'	;	Remove last	\
	mov	[byte ptr ds:si],00h	;	Remove last	\
@@OkBackslash:
	pop	si	;	Restore	si
	call	LStrWrite, offset PathName	;	Write	pathname
	call	LStrWrite, offset CRLF	;	Newline

	mov	al,[byte ptr PathName]	;	Get	drive	letter
	call	GetCDS, ax	;	Get	CDS	pointer
	mov	[word ptr @@TempCDS],bx	;	Save offset
	mov	[word ptr @@TempCDS+2],es	;	Save segment

	mov	al,[DriveID]	;	Get	drive	id
	call	GetCDS, ax	;	Get	CDS	pointer
	cmp	[word ptr es:bx+67],0000h	;	Drive	letter available
	jne	@@NotAvail	;	No --> @@NotAvail
	cmp	[word ptr es:bx+69],0000h	;	Drive	letter available
	jne	@@NotAvail	;	No --> @@NotAvail
	cmp	[word ptr es:bx+71],0000h	;	Drive	letter available
	jne	@@NotAvail	;	No --> @@NotAvail
	call	CopyData, [@@TempCDS], es bx, 88	;	Copy host	CDS

	call	StrCopy, es bx, ds offset PathName	;	Copy pathname
	call	StrLen, ds offset PathName	;	Calculate	length of	path

	mov	si,ax	;	Get	length
	add	si,bx	;	Adjust into	CDS
	cmp	[byte ptr es:si-1],'\'	;	Last was \ ?
	jne	@@OkLength	;	No --> @@OkLength
	dec	ax	;	Adjust path
@@OkLength:
	mov	[es:bx+79],ax	;	Hide redirected	path
	mov	ax,[cs:SimFlag]	;	Get	flags
	xor	ax,1111111111111111b	;	Make mask
	and	[es:bx+67],ax	;	Mask out bits	to set
	xor	ax,1111111111111111b	;	Make flag
	or	[es:bx+67],ax	;	Set	bits

	mov	al,[DriveID]	;	Get	drive	id
	mov	[SimDrv],al	;	Update simulation	message
	call	LStrWrite, offset SimMsg1	;	Write	simulation message
	cmp	[cs:SimType],00h	;	Simulate physical	?
	je	@@Sim00	;	Yes	-->	@@Sim00
	cmp	[cs:SimType],01h	;	Simulate substed ?
	je	@@Sim01	;	Yes	-->	@@Sim01
@@Sim02:
	call	LStrWrite, offset SimMsg4	;	Write	physical message
	jmp	@@SimOk	;	Ok
@@NotAvail:
	call	LStrWrite, offset TooFew	;	Write	error	message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
@@Sim00:
	call	LStrWrite, offset SimMsg2	;	Write	substed	message
	jmp	@@SimOk	;	Ok
@@Sim01:
	call	LStrWrite, offset SimMsg3	;	Write	remote message
@@SimOk:
	mov	al,[DriveID]	;	Get	drive	id
	call	SetSpeed,ax	;	Set	speed	of drive
	call	FixDrive	;	Update dos buffers for	drive
	mov	al,[DriveID]	;	Get	drive	id
	mov	[cs:LastID],al	;	Update LastID
	call	GetCDData, ax	;	Read data	from file
	mov	al,[DriveID]	;	Get	drive	id
	inc	[byte ptr DriveID]	;	Update DriveID
	inc	[byte ptr cs:DriveCount]	;	Update DriveCount

	mov	[SpeedDrv],al	;	Update message
	call	LStrWrite, offset SpeedMsg1	;	Write	message
	cmp	[cs:CurSpeed],0	;	Superspeed ?
	jne	@@NotSuper	;	No --> @@NotSuper
	call	LStrWrite, offset SuperMsg	;	Write	super	message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotSuper:
	cmp	[cs:CurSpeed],1	;	Single spin	?
	jne	@@NotSingle	;	No --> @@NotSingle
	call	LStrWrite, offset SingleMsg	;	Write	single message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotSingle:
	cmp	[cs:CurSpeed],2	;	Double spin	?
	jne	@@NotDouble	;	No --> @@NotDouble
	call	LStrWrite, offset DoubleMsg	;	Write	double message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotDouble:
	cmp	[cs:CurSpeed],3	;	Triple spin	?
	jne	@@NotTriple	;	No --> @@NotTriple
	call	LStrWrite, offset TripleMsg	;	Write	triple message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotTriple:
	cmp	[cs:CurSpeed],4	;	Quadra spin	?
	jne	@@NotQuadra	;	No --> @@NotQuadra
	call	LStrWrite, offset QuadraMsg	;	Write	quadra message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotQuadra:
	cmp	[cs:CurSpeed],6	;	Sexa spin	?
	jne	@@NotSexa	;	No --> @@NotSexa
	call	LStrWrite, offset SexaMsg	;	Write	sexa message
	jmp	@@SpeedOk	;	-->	@@SpeedOk
@@NotSexa:
	call	LStrWrite, offset OctaMsg	;	Write	octa message
@@SpeedOk:
	call	LStrWrite, offset SpeedMsg2	;	Write	end	of message
	ret		;	Return to	caller
endp

; SetSpeed procedure
proc	SetSpeed
arg	@@DriveID:word
uses	ax, bx
	mov	bl,[byte ptr @@DriveID]	;	Get	drive	id
	sub	bl,[cs:FirstID]	;	Make 0-based
	xor	bh,bh	;	Make 16-bit
	shl	bx,1	;	Multiply with	2	(make	index)
	mov	ax,[CurDelay]	;	Get	current	delay
	mov	[cs:DriveSpeeds+bx],ax	;	Save in	DriveSpeeds
	ret		;	Return to	caller
endp

; FixDrive procedure
proc	FixDrive
uses	ax, dx
	lea	dx,[PathName]	;	PathName in	ds:dx
	mov	al,[DriveID]	;	Get	drive	id
	mov	[PathName],al	;	Store	in pathname
	mov	[byte ptr PathName+1],':'	;	Make into	'D:\',0
	mov	[byte ptr PathName+2],'\'	;	...
	mov	[byte ptr PathName+3],0	;	...
	mov	ah,3bh	;	Dos	Fn 3bh = ChDir
	int	21h	;	Call DOS interrupt
	ret		;	Return to	caller
endp

; CopyData procedure
proc	CopyData	far
arg	@@Source:dword, @@Dest:dword, @@Length:word
uses	ds, si, es, di, cx
	cld		;	Forward	copy
	lds	si,[dword ptr @@Source]	;	Source in	ds:si
	les	di,[dword ptr @@Dest]	;	Destination	in es:di
	mov	cx,[@@Length]	;	Length in	cx
	rep	movsb	;	Copy it
	ret		;	Return to	caller
endp

; TrueName procedure
proc	TrueName	far
arg	@@Dest:dword
uses	ax, ds, es, si, di
	mov	ah,60h	;	Dos	Fn 60h = TrueName
	lds	si,[dword ptr @@Dest]	;	Source in	ds:si
	les	di,[dword ptr @@Dest]	;	Destination	in es:di
	int	21h	;	Call DOS interrupt
	ret		;	Return to	caller
endp

; ZeroDefault procedure
proc	ZeroDefault
arg	@@DriveNo:word
	mov	al,[byte ptr @@DriveNo]
	cmp	al,0	;	Default	drive	(0)	?
	je	@@IsDefault	;	Yes	-->	@@IsDefault
	add	al,'@'	;	Convert	to A-Z
	jmp	@@Exit	;	Exit
@@IsDefault:
	mov	ah,19h	;	Dos	Fn 19h = GetCurDrive
	int	21h	;	Call DOS interrupt
	add	al,'A'	;	Convert	to A-Z
@@Exit:
	ret		;	Return to	caller
endp

; IsOwn procedure
proc	IsOwn
arg	@@DriveID:word, @@Redirect:word
uses	ax, es, bx, dx
	call	UpCase, [@@DriveID]	;	Convert	id to	uppercase
	mov	[@@DriveID],ax	;	Store	new	id
	cmp	[@@Redirect],0	;	Redirect before	checking ?
	jne	@@CheckIt	;	No --> @@CheckIt

	mov	al,[byte ptr @@DriveID]	;	Get	drive	id in	al
	cmp	al,[cs:FirstID]	;	< First ID ?
	jb	@@Nope	;	Yes	-->	@@Nope
	cmp	al,[cs:LastID]	;	>	Last ID	?
	ja	@@Nope	;	Yes	-->	@@Nope
	jmp	@@GotIt	;	Got	it
@@CheckIt:
	mov	al,[cs:FirstID]	;	Get	first	emulated id
@@GetLoop:
	call	GetCDS,ax	;	Get	CDS	entry
	mov	bl,[es:bx]	;	Get	host drive letter
	cmp	bl,[byte ptr @@DriveID]	;	Id to	check	?
	je	@@GotIt	;	Yes	-->	@@GotIt
	inc	al	;	Next drive
	cmp	al,[cs:LastID]	;	Our drive ?
	jbe	@@GetLoop	;	Yes	-->	@@GetLoop
@@Nope:
	clc		;	Signal external	drive
	jmp	@@Exit	;	Exit
@@GotIt:
	stc		;	Signal own drive
@@Exit:
	ret		;	Return to	caller
endp

; NewInt21
OldInt21	dw	0,0

proc	NewInt21	far
	cmp	ah,4eh	;	FindFirst	function ?
	je	@@FindFirst	;	Yes	-->	@@FindFirst
	cmp	ah,36h	;	DiskFree function	?
	je	@@DiskFree	;	Yes	-->	@@DiskFree

	cmp	[cs:WriteProt],00h	;	Writeprotect flag	?
	je	@@NotWriteProtected	;	No --> @@NotWriteProtected
	cmp	ah,3ch	;	CreateFile function	?
	je	@@DoKillSomething	;	Yes	-->	@@DoKillSomething
	cmp	ah,0fh	;	Open FCB function	?
	je	@@DoFCB	;	Yes	-->	@@DoFCB
	cmp	ah,16h	;	Create FCB function	?
	je	@@DoFCB	;	Yes	-->	@@DoFCB
	cmp	ah,17h	;	Rename FCB function	?
	je	@@DoFCB	;	Yes	-->	@@DoFCB
	cmp	ah,39h	;	MkDir	function ?
	je	@@DoKillSomething	;	Yes	-->	@@DoKillSomething
	cmp	ah,3ah	;	RmDir	function ?
	je	@@DoKillSomething	;	Yes	-->	@@DoKillSomething
	cmp	ah,41h	;	Delete file	function ?
	je	@@DoKillSomething	;	Yes	-->	@@DoKillSomething
@@NotWriteProtected:
	jmp	@@CallOld	;	Call old interrupt handler
@@DoKillSomething:
	push	si	;	Save si
	mov	si,dx	;	ds:dx	=	Filename
	cmp	[byte ptr ds:si+1],':'	;	Contains drive letter	?
	je	@@HasDriveToKill	;	Yes	-->	@@HasDriveToKill
	push	ax	;	Save ax
	mov	ah,19h	;	Dos	Fn 19h = GetCurDrive
	int	21h	;	Call DOS interrupt
	mov	[@@TempB],al	;	Save drive letter
	pop	ax	;	Restore	ax
	mov	al,[@@TempB]	;	Drive	letter in	al
	pop	si	;	Restore	si
	add	al,'A'	;	Convert	to A-Z
	jmp	@@KillIt	;	-->	@@KillIt
@@HasDriveToKill:
	mov	al,[ds:si]	;	Get	drive	letter
	pop	si	;	Restore	si
@@KillIt:
	call	IsOwn, ax, 0000h	;	Our	drive	?
	jnc	@@CallOld	;	No --> @@CallOld
	iSTC		;	Signal error
	mov	ax,0013h	;	Write	protected	error
	iret		;	Return to	interrupt	caller
@@DoFCB:
	push	si	;	Save si
	mov	si,dx	;	Filename in	ds:si
	mov	al,[ds:si]	;	Get	drive	no
	pop	si	;	Restore	si
	call	ZeroDefault, ax	;	Calculate	drive	letter
	call	IsOwn, ax, 0001h	;	Our	drive	?
	jnc	@@CallOld	;	No --> @@CallOld
	mov	al,0ffh	;	Signal error
	iret		;	Return to	interrupt	caller
@@DiskFree:
	cmp	[cs:RetZero],1	;	Return zero	free ?
	jne	@@CallOld	;	No --> @@CallOld

	push	ax bx cx dx	;	Save registers

	call	ZeroDefault, dx	;	Calculate	drive	letter
	call	IsOwn, ax, 0000h	;	Our	drive	?
	jc	@@FakeIt	;	Yes	-->	@@FakeIt
	call	IsOwn, ax, 0001h	;	Our	drive	?
	jnc	@@NotFree	;	No --> @@NotFree
@@GotIt:
	pop	dx cx bx ax	;	Restore	registers
	int	66h	;	Call old interrupt handler
	cmp	ax,0ffffh	;	Error	?
	je	@@DiskFreeError	;	No --> @@NoDiskFreeError
	xor	bx,bx	;	0	clusters	free
@@DiskFreeError:
	iret		;	Return to	interrupt	caller
@@FakeIt:
	pop	dx cx bx ax	;	Restore	registers
	push	ax dx ds si	;	Save registers
	call	ZeroDefault, dx	;	Calculate	drive	id
	call	GetData, ax	;	Get	cd data structure
	jc	@@NoFreeData	;	Error	-->	@@NoFreeData
	mov	ax,[ds:si+153]	;	Get	sectors	per	cluster
	mov	bx,[ds:si+155]	;	Get	available	clusters
	mov	cx,[ds:si+157]	;	Get	bytes	per	sector
	mov	dx,[ds:si+159]	;	Get	total	clusters
	pop	si ds	;	Restore	registers
	add	sp,4	;	Remove two words from	stack
	iCLC		;	Signal ok
	iret		;	Return to	interrupt	caller
@@NoFreeData:
	pop	si ds dx ax	;	Restore	registers
	mov	ax,0001h	;	1	sector per cluster
	mov	bx,0000h	;	0	sectors	free
	mov	cx,0800h	;	2048 bytes per sector
	mov	dx,0ffffh	;	65535	total	clusters
	iCLC		;	Signal ok
	iret		;	Return to	interrupt	caller
@@NotFree:
	pop	dx cx bx ax	;	Restore	registers
	jmp	@@CallOld	;	Call old interrutp handler
@@FindFirst:
	test	cx,0008h	;	Volume label search	?
	jz	@@CallOld	;	No --> @@CallOld
@@CheckLabel:
	push	es bx ds si ax dx	;	Save registers

	mov	si,dx	;	Filename in	ds:si

	cmp	[byte ptr ds:si+1],':'	;	Contains drive letter	?
	je	@@OkDrive	;	Yes	-->	@@OkDrive
	push	ax	;	Save ax
	mov	ah,19h	;	Dos	Fn 19h = GetCurDrive
	int	21h	;	Call DOS interrupt
	mov	[@@TempB],al	;	Save drive letter
	pop	ax	;	Restore	ax
	mov	al,[@@TempB]	;	Get	drive	letter
	mov	bl,al	;	Put	drive	letter in	bl
	jmp	@@CheckDrive	;	-->	@@CheckDrive
@@OkDrive:
	mov	bl,[ds:si]	;	Get	drive	letter
	push	ax	;	Save ax
	call	UpCase, bx	;	Convert	to uppercase
	mov	bx,ax	;	Put	new	letter in	bx
	pop	ax	;	Restore	ax
@@CheckDrive:
	cmp	bl,[cs:FirstID]	;	Our	drive	?
	jb	@@DoCallOld	;	No --> @@DoCallOld
	cmp	bl,[cs:LastID]	;	Our	drive	?
	ja	@@DoCallOld	;	No --> @@DoCallOld
	jmp	@@CheckOk	;	-->	@@CheckOk
@@DoCallOld:
	pop	dx ax si ds bx es	;	Restore	registers
	jmp	@@CallOld	;	Call old interrupt handler
@@CheckOk:
	call	GetData, bx	;	Get	cd data
	jc	@@NoLabel	;	No data	-->	@@NoLabel
	add	si,141	;	Adjust offset
	cmp	[byte ptr ds:si],0	;	Label	?
	je	@@NoLabel	;	No --> @@NoLabel
	mov	ah,2fh	;	Get	DTA	pointer
	int	21h	;	Call DOS interrupt
	mov	[byte ptr es:bx+15h],08h	;	Set	attribute
	mov	[word ptr es:bx+16h],0000h	;	Zero time
	mov	[word ptr es:bx+18h],0000h	;	Zero date
	mov	[word ptr es:bx+1ah],0000h	;	Zero size	low
	mov	[word ptr es:bx+1ch],0000h	;	Zero size	high
	add	bx,001eh	;	Adjust offset
@@Loop:
	mov	al,[ds:si]	;	Get	character
	inc	si	;	Skip character read
	mov	[es:bx],al	;	Store	character
	inc	bx	;	Skip character stored
	test	al,al	;	End	of label ?
	jnz	@@Loop	;	No --> @@Loop
	pop	dx ax si ds bx es	;	Restore	registers
	iCLC		;	Signal success
	jmp	@@Exit	;	Exit
@@NoLabel:
	pop	dx ax si ds bx es	;	Restore	registers
	iSTC		;	Signal failure
	mov	ax,0002h	;	File not found error
	iret		;	Return to	interrupt	caller
@@CallOld:
	jmp	[dword ptr cs:OldInt21]	;	Call old interrupt handler
@@Exit:
	iret		;	Return to	interrupt	caller
@@TempB	db	1
@@TempW	dw	0
endp

; GetData procedure
proc	GetData
uses	cx
arg	@@DriveID:word
	mov	cx,[@@DriveID]	;	Get	drive	ID
	cmp	cl,[cs:FirstID]	;	Our	drive	?
	jb	@@NoData	;	No --> @@NoData
	cmp	cl,[cs:LastID]	;	Our	drive	?
	ja	@@NoData	;	No --> @@NoData
	lea	si,[Datas]	;	ds:si	-->	Datas
	sub	cl,[cs:FirstID]	;	Make drive id	0-based
	cmp	cl,0	;	First	id ?
	je	@@OkData	;	Yes	-->	@@OkData
@@NextData:
	add	si,2	;	Next index in	Datas
	dec	cl	;	Next drive
	jnz	@@NextData	;	More --> @@NextData
@@OkData:
	mov	si,[cs:si]	;	Get	segment	of data
	test	si,si	;	Data there ?
	jz	@@NoData	;	No --> @@NoData
	mov	ds,si	;	Put	segment	in ds
	xor	si,si	;	Zero offset
	clc		;	Signal success
	jmp	@@Exit	;	Exit
@@NoData:
	stc		;	Signal failure
@@Exit:
	ret		;	Return to	caller
endp

; NewInt2F
OldInt2F	dw	0,0
proc	NewInt2f	far
	mov	[cs:@@OldAX],ax
	cmp	ax,1100h	;	MSCDEX check ?
	je	@@CheckMSCDEX	;	Yes	-->	@@CheckMSCDEX
	cmp	ax,1500h	;	Installation check ?
	je	@@CheckInstall	;	Yes	-->	@@CheckInstall
	cmp	ax,1501h	;	DeviceList function	?
	je	@@DeviceList	;	Yes	-->	@@DeviceList
	cmp	ax,1502h	;	GetCopyright function	?
	je	@@GetFileName	;	Yes	-->	@@GetFileName
	cmp	ax,1503h	;	GetAbstract	function ?
	je	@@GetFilename	;	Yes	-->	@@GetFileName
	cmp	ax,1504h	;	GetBibliographical function ?
	je	@@GetFilename	;	Yes	-->	@@GetFileName

	cmp	[cs:AltSimul],01h	;	Alternate	simulation ?
	je	@@AltSimul

	cmp	ax,1505h	;	VTOC read	function ?
	je	@@ReadVTOC	;	Yes	-->	@@ReadVTOC
	cmp	ax,1508h	;	Absolute read	function ?
	je	@@AbsRead	;	Yes	-->	@@AbsRead
	cmp	ax,1509h	;	Absolute write function	?
	je	@@Dummy	;	Yes	-->	@@Dummy
	cmp	ax,150bh	;	DriveCheck function	?
	je	@@DriveCheck	;	Yes	-->	@@DriveCheck
	cmp	ax,150ch	;	Version	check	function ?
	je	@@GetVersion	;	Yes	-->	@@CheckVersion
	cmp	ax,150eh	;	Descriptor function	?
	je	@@GetDescriptorPreference	;	Yes	-->	@@GetDescriptorPreference
	cmp	ax,150fh	;	Get	directory	entry	?
	je	@@GetDirEntry	;	Yes	-->	@@GetDirEntry
	cmp	ax,1510h	;	Device request ?
	je	@@DeviceRqz	;	Yes	-->	@@DeviceRqz
	cmp	ax,150dh	;	DriveList function ?
	je	@@DriveList	;	Yes	-->	@@DriveList
@@CallOld:
	mov	ax,[cs:@@OldAX]
	jmp	[dword ptr cs:OldInt2F]	;	Call old interrupt handler
@@AltSimul:
	cmp	ax,150bh	;	DriveCheck function	?
	je	@@DriveCheck	;	Yes	-->	@@DriveCheck
	cmp	ax,150ch	;	Version	check	function ?
	je	@@GetVersion	;	Yes	-->	@@CheckVersion
	cmp	ax,150dh	;	DriveList function ?
	je	@@DriveList	;	Yes	-->	@@DriveList
	cmp	ax,1510h	;	Device request ?
	je	@@SuccessDev	;	Yes	-->	@@SuccessDev
	jmp	@@CallOld	;	Call old
@@AbsRead:
	test	dx,dx	;	Sector count > 0	?
	jz	@@ReadFinished	;	Yes	-->	@@ReadFinished
	push	cx ds si	;	Save registers
	add	cl,'A'	;	Convert	drive letter to A-Z
	push	ax	;	Save ax
	call	GetSpeed, cx	;	Get	drive	speed
	mov	[@@DelaySize],ax	;	Save speed of	delay
	pop	ax	;	Restore	ax
	call	GetData, cx	;	Get	cd data
	jc	@@NoAbsRead	;	Error	-->	@@NoAbsRead
	mov	si,[ds:si+2]	;	Adjust offset
	cmp	si,0ffffh	;	Sector data ?
	je	@@NoAbsRead	;	No --> @@NoAbsRead
	push	bx dx	;	Save registers
@@ReadDataLoop:
	push	ds si es bx	;	Save registers
	call	DeCrunch, ds si, es bx	;	Decrunch sector	data
	pop	bx es si ds	;	Restore	registers
	add	bx,2048	;	Next sector	offset
	dec	dx	;	One	less sector	to read
	jnz	@@ReadDataLoop	;	More --> @@ReadDataLoop
	pop	dx bx si ds cx	;	Restore	registers
@@ReadFinished:
	push	ax cx dx	;	Save registers
	cmp	[@@DelaySize],0	;	Any	delay	?
	je	@@NoDelay	;	No --> @@NoDelay
@@DelayLoop:
	test	dx,dx	;	Sectors	=	0	?
	jz	@@NoDelay	;	Yes	-->	@@NoDelay
	push	dx	;	Save dx
	mov	ah,86h	;	AT Fn	86h	=	Wait
	mov	cx,0	;	High 16	bit	of delay
	mov	dx,[@@DelaySize]	;	Low	16 bit of	delay
	int	15h	;	Call AT	interrupt
	pop	dx	;	Restore	dx
	dec	dx	;	One	less delay to	perform
	jmp	@@DelayLoop	;	Loop
@@NoDelay:
	pop	dx cx ax	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt caller
@@NoAbsRead:
	pop	si ds cx	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@Dummy	;	No --> @@Dummy
	iSTC		;	Signal failure
	mov	ax,0015h	;	Drive	not	ready	error
	iret		;	Return to	interrupt	caller
@@GetDescriptorPreference:
	cmp	bx,0	;	Get	function ?
	je	@@GetPreference	;	Yes	-->	@@GetPreference
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@GetPreference:
	mov	dx,0100h	;	Set	return bits
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@Dummy:
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@ReadVTOC:
	push	ds si	;	Save registers
	add	cl,'A'	;	Convert	id to	A-Z
	call	GetData, cx	;	Get	cd data
	jc	@@HasNoVTOC	;	Error	-->	@@HasNoVTOC
	mov	si,[ds:si]	; Adjust offset
@@GetVTOC:
	cmp	[word ptr ds:si],0ffffh	;	Last sector	?
	je	@@ReadFlags	;	Yes	-->	@@ReadFlags
	cmp	[ds:si],dx	;	Sector wanted	?
	je	@@ReadTheVTOC	;	Yes	-->	@@ReadFlags
	add	si,2	; Skip index word
	add	si,[word ptr ds:si]	; Skip _ax+_flags+data
	jmp	@@GetVTOC	;	Loop
@@ReadTheVTOC:
	push	ax cx si	;	Save registers
	add	si,8	;	Adjust offset
	call	DeCrunch, ds si, es bx	;	Decrunch sector
	pop	si cx ax	;	Restore	registers
@@ReadFlags:
	mov	ax,[word ptr ds:si+6]	;	Get	flags	to return

	push	bp	;	Save bp
	mov	bp,sp	;	Point	bp to	sp in	stack
	mov	[word ptr bp+10],ax	;	Adjust flags on	stack
	pop	bp	;	Restore	bp

	mov	ax,[word ptr ds:si+4]	;	Get	ax to	return
	pop	si ds	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@Dummy	;	No --> @@Dummy
	mov	al,17h
	iSTC		;	Signal failure
	iret		;	Return to	interrupt	caller
@@HasNoVTOC:
	pop	si ds	;	Restore	registers
@@NoVTOC:
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@Dummy	;	No --> @@Dummy
	iSTC		;	Signal failure
	mov	al,17h	;	Error	code
	iret		;	Return to	interrupt	caller
@@DeviceRqz:
	mov	cl,[cs:FirstRealCD]	;	Get	the	real cd-drive
	mov	al,[byte ptr es:bx+2]	;	Get	device command code
	cmp	al,1	;	Media	check	function ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,2	;	Build	BPB	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,3	;	IOCTL	input	?
	je	@@IOCTLI	;	Yes	-->	@@IOCTLI
	cmp	al,4	;	Input	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,5	;	Nondestructive read	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,6	;	Input	status ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,8	;	Output ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,9	;	Output with	verify ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,10	;	Output status	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,11	;	Output flush ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,12	;	IOCTL	output ?
	je	@@IOCTLO	;	Yes	-->	@@IOCTLO
	cmp	al,15	;	Removable	media	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,16	;	Output until busy	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,129	;	Reserved ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,132	;	Play audio ?
	je	@@Play	;	Yes	-->	@@Play
	cmp	al,133	;	Stop audio ?
	je	@@Stop	;	Yes	-->	@@Stop
	cmp	al,134	;	Read long	verify ?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,135	;	Write	long verify	?
	je	@@ErrRqz	;	Yes	-->	@@ErrRqz
	cmp	al,136	;	Resume audio ?
	je	@@Play	;	Yes	-->	@@Play
@@SuccessDev:
	mov	[word ptr es:bx+03],0100h	;	Set	success	status
	iret		;	Return to	interrupt	caller
@@Play:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	mov	[cs:CDPlaying],0000h	;	Set	flags
	jmp	@@SuccessDev	;	Success
@@Stop:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	mov	[cs:CDPlaying],0001h	;	Set	flags
	jmp	@@SuccessDev	;	Success
@@FailureDev:
	mov	[byte ptr es:bx+04],80h	;	Set	success	status
	mov	[byte ptr es:bx+03],al	;	Set	failure	code
	iret		;	Return to	interrupt	caller
@@IOCTLO:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	jmp	@@SuccessDev	;	Set success	status
@@IOCTLI:
	mov	[word ptr es:bx+03],0	;	Signal ok	for	now
	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	al,[es:bx]	;	Get	data command byte
	pop	bx es	;	Restore	registers

	cmp	al,0	;	Address	of device	header ?
	je	@@NotReady	;	Yes	-->	@@NotReady
	cmp	al,1	;	Location of	head ?
	je	@@HeadPos	;	Yes	-->	@@HeadPos
	cmp	al,4	;	Info about audio channels	?
	je	@@AudioChannelInfo	;	Yes	-->	@@AudioChannelInfo
	cmp	al,5	;	Read drive bytes ?
	je	@@NotReady	;	Yes	-->	@@NotReady
	cmp	al,6	;	Status of	device ?
	je	@@DeviceStatus	;	Yes	-->	@@DeviceStatus
	cmp	al,7	;	Size of	sectors	?
	je	@@SectorSize	;	Yes	-->	@@SectorSize
	cmp	al,8	;	Size of	disk ?
	je	@@VolumeSize	;	Yes	-->	@@VolumeSize
	cmp	al,9	;	MediaChanged ?
	je	@@MediaChanged	;	Yes	-->	@@MediaChanged
	cmp	al,10	;	Info about audio disk	?
	je	@@AudioDiskInfo	;	Yes	-->	@@AudioDiskInfo
	cmp	al,11	;	Info about audio track ?
	je	@@AudioTrackInfo	;	Yes	-->	@@AudioTrackInfo
	cmp	al,12	;	Info about Q-channel ?
	je	@@NotReady	;	Yes	-->	@@NotReady
	cmp	al,13	;	Info about sub-channel ?
	je	@@NotReady	;	Yes	-->	@@NotReady
	cmp	al,14	;	Get	UPC	Code ?
	je	@@UPCCode	;	Yes	-->	@@UPCCode
	cmp	al,15	;	Info about audio status	?
	je	@@AudioStatus	;	Yes	-->	@@AudioStatus
@@NotReady:
	mov	[word ptr es:bx+03],3+32768	;	Signal not ready
	iret		;	Return to	interrupt	caller
@@AudioStatus:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	ax es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	ax,[cs:CDPlaying]	;	Get	flags
	mov	[es:bx+1],ax	;	Set	flags
	pop	bx es ax	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@HeadPos:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	push	ax ds
	mov	ax,[cs:CDPos]	;	Get	old	position
	inc	ax	;	Move to	next position
	jnz	@@OkPos	;	Looped around	?
	mov	ax,0010h	;	Set	to start of	tracks
@@OkPos:
	mov	[cs:CDPos],ax	;	Store	for	next read
	mov	[es:bx+1],ax	;	Set	location
	mov	[word ptr es:bx+3],0000h	;	...
	pop	bx es	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@AudioChannelInfo:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	[word ptr es:bx+1],0FF00h	;	Set	channel	0
	mov	[word ptr es:bx+3],0FF01h	;	Set	channel	1
	mov	[word ptr es:bx+5],0FF02h	;	Set	channel	2
	mov	[word ptr es:bx+7],0FF03h	;	Set	channel	3
	pop	bx es	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@DeviceStatus:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	[word ptr es:bx+1],0000001110110110b	;	Set	status
	mov	[word ptr es:bx+3],00000h	;	...
	pop	bx es	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@SectorSize:
	push	ds si	;	Save registers
	mov	cl,[es:bx+1]	;	Get	drive	id
	add	cl,[cs:FirstID]	;	Convert	to A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoSectorSize	;	No data	-->	@@NoSectorSize

	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	ax,[ds:si+4]	;	Get	sector size
	mov	[es:bx+1],ax	;	Store	sector size
	mov	al,[ds:si+6]	;	...
	mov	[es:bx+3],al	;	...
	pop	bx es si ds	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@NoSectorSize:
	pop	si ds	;	Restore	registers
	mov	al,17	;	Failure	code
	jmp	@@FailureDev	;	Failure
	iret		;	Return to	interrupt	caller
@@VolumeSize:
	push	ds si	;	Save registers
	mov	cl,[es:bx+1]	;	Get	drive	id
	add	cl,[cs:FirstID]	;	Convert	to A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoVolumeSize	;	No data	-->	@@NoVolumeSize

	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	ax,[ds:si+7]	;	Get	volume size
	mov	[es:bx+1],ax	;	Store	volume size
	mov	ax,[ds:si+9]	;	...
	mov	[es:bx+3],ax	;	...
	pop	bx es si ds	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@NoVolumeSize:
	pop	si ds	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@SuccessDev	;	No --> @@SuccessDev
	mov	al,17	;	Failure	code
	jmp	@@FailureDev
@@MediaChanged:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	[byte ptr es:bx+1],01h	;	Set	media	not	changed	flag
	pop	bx es	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@AudioDiskInfo:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	ds si	;	Save registers
	mov	cl,[es:bx+1]	;	Get	drive	id
	add	cl,[cs:FirstID]	;	Convert	to A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoAudioDiskInfo	;	No data	-->	@@NoAudioDiskInfo

	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	ax,[ds:si+11]	;	Get	info data
	mov	[es:bx+1],ax	;	Store	info data
	mov	ax,[ds:si+13]	;	...
	mov	[es:bx+3],ax	;	...
	mov	ax,[ds:si+15]	;	...
	mov	[es:bx+5],ax	;	...
	pop	bx es si ds	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@NoAudioDiskInfo:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	pop	si ds	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@SuccessDev	;	No --> @@SuccessDev
	mov	al,17	;	Failure	code
	jmp	@@FailureDev	;	Failure
@@AudioTrackInfo:
	cmp	[cs:AudioTru],01h	;	Audio	through-put	?
	je	@@CallOld	;	Yes	-->	@@CallOld
	push	ds si es bx	;	Save registers
	mov	cl,[es:bx+1]	;	Get	drive	id
	add	cl,[cs:FirstID]	;	Convert	to A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoAudioTrackInfo	;	No data	-->	@@NoAudioTrackInfo
	add	si,161	;	Adjust offset
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	al,[es:bx+1]	;	Get	track	no
	cmp	al,[ds:si]	;	Track	<	first	track	on cd	?
	jb	@@NoAudioTrackInfo	;	Yes	-->	@@NoAudioTrackInfo
	cmp	al,[ds:si+1]	;	Track	>	last track on	cd ?
	ja	@@NoAudioTrackInfo	;	Yes	-->	@@NoAudioTrackInfo
	add	si,2	;	Adjust offset
	sub	al,[ds:si-2]	;	Make track 0-based
	cmp	al,0	;	First	track	?
	je	@@ReadTrackInfo	;	Yes	-->	@@ReadTrackInfo
@@SkipLoop:
	add	si,5	;	Adjust offset
	dec	al	;	Next track
	jnz	@@SkipLoop	;	More --> @@SkipLoop
@@ReadTrackInfo:
	mov	ax,[ds:si]	;	Get	track	info data
	mov	[es:bx+2],ax	;	Store	track	info data
	mov	ax,[ds:si+2]	;	...
	mov	[es:bx+4],ax	;	...
	mov	al,[ds:si+4]	;	...
	mov	[es:bx+6],al	;	...
	pop	bx es si ds	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@NoAudioTrackInfo:
	pop	bx es si ds	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@SuccessDev	;	No --> @@SuccessDev
	mov	al,17	;	Failure	code
	jmp	@@FailureDev	;	Failure
@@UPCCode:
	push	ds si	;	Save registers
	mov	cl,[es:bx+1]	;	Get	drive	id
	add	cl,[cs:FirstID]	;	Convert	to A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoUPCCode	;	No data	-->	@@NoUPCCode

	push	es bx	;	Save registers
	les	bx,[es:bx+14]	;	Get	pointer	to data
	mov	ax,[ds:si+17]	;	Get	upc	code
	mov	[es:bx+1],ax	;	Store	upc	code
	mov	ax,[ds:si+19]	;	...
	mov	[es:bx+3],ax	;	...
	mov	ax,[ds:si+21]	;	...
	mov	[es:bx+5],ax	;	...
	mov	ax,[ds:si+23]	;	...
	mov	[es:bx+7],ax	;	...
	mov	ax,[ds:si+25]	;	...
	mov	[es:bx+9],ax	;	...
	pop	bx es si ds	;	Restore	registers
	jmp	@@SuccessDev	;	Success
@@NoUPCCode:
	pop	si ds	;	Restore	registers
	mov	al,17	;	Failure	code
	jmp	@@FailureDev	;	Failure
@@ErrRqz:
	mov	[word ptr es:bx+03],3+32768	;	Set	invalid	request	code
	iret		;	Return to	interrupt	caller
@@GetDirEntry:
	iCLC		;	Signal success
	mov	[byte ptr es:bx],0	;	Zero pathname
	push	es	;	Save register
	mov	es,si	;	Get	segment
	mov	[byte ptr es:di+26],0	;	Zero pathname
	mov	[byte ptr es:di+27],0	;	Zero pathname
	pop	es	;	Restore	register
	mov	ax,1	;	ISO9660	cd format
	iret		;	Return to	interrupt	caller
@@DriveList:
	push	cx bx	;	Save registers
	mov	cl,[cs:FirstID]	;	Get	first	id
	sub	cl,'A'	;	Calculate	first drive	no
	mov	ch,[cs:DriveCount]	;	Get	number of	drives
@@DriveLoop:
	mov	[es:bx],cl	;	Store	drive	no
	inc	bx	;	Next drive no
	dec	ch	;	One	less drive
	jnz	@@DriveLoop	;	More --> @@DriveLoop
	pop	bx cx	;	Restore	registers
	iCLC		;	Success
	iret		;	Return to	interrupt	caller
@@GetVersion:
	mov	bx,0217h	; Version 2.23 (mscdex)
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@DriveCheck:
	mov	bx,cx	;	Get	drive	id
	add	bl,'A'	;	Convert	to A-Z
	cmp	bl,[cs:FirstID]	;	Our	drive	?
	jb	@@NotACD	;	No --> @@NotACD
	cmp	bl,[cs:LastID]	;	Our	drive	?
	ja	@@NotACD	;	No --> @@NotACD
	mov	al,01h	;	Signal cd	rom
	jmp	@@RetIt	;	Return it
@@NotACD:
	mov	al,00h	;	Signal not a cd	rom
@@RetIt:
	mov	bx,0adadh	;	Set	extensions supported
	mov	ah,00h	;	Zero high	8	bit	of return
	iret		;	Return to	interrupt	caller
@@DeviceList:
	push	ax bx cx si di	;	Save registers
	lea	si,[DeviceHdr]	;	ds:si	=	DeviceHdr
	mov	cl,[cs:DriveCount]	;	Get	number of	drives
	xor	ax,ax	;	Zero ax
	xor	di,di	;	Zero di
@@DeviceLoop:
	mov	[es:bx],al	;	Store	subunit no
	mov	[es:bx+3],si	;	Store	offset of	device
	mov	[es:bx+1],di	;	Store
	inc	al
	add	bx,5	;	Next entry
	dec	cl	;	One	less drive
	jnz	@@DeviceLoop	;	More --> @@DeviceLoop
	pop	di si cx bx ax	;	Restore	registers
	iret		;	Return to	interrupt	caller
@@CheckInstall:
	cmp	bx,0	;	Check	?
	jne	@@CallOld	;	No --> @@CallOld
	xor	ch,ch	;	Zero high	8	bit
	mov	cl,[cs:FirstID]	;	Get	drive	id
	sub	cl,'A'	;	Make 0-based
	xor	bh,bh	;	No more	than 255 drives!
	mov	bl,[cs:DriveCount]	;	Get	drivecount
	iret		;	Return to	interrupt	caller
@@GetFileName:
	push	ds si	;	Save registers
	add	cl,'A'	;	Make id	A-Z
	call	GetData, cx	;	Get	data
	jc	@@NoCD	;	No data	-->	@@NoCD
	add	si,27	;	Adjust offset
@@ReadIt:
	cmp	al,02h	;	Need to	adjust offset	?
	je	@@OkRead	;	No --> @@OkRead
	add	si,38	;	Adjust offset
	dec	al	;	Adjust counter
	jmp	@@ReadIt	;	Loop
@@OkRead:
	push	bx cx	;	Save register
	mov	cx,38	;	Number of	characters to	copy
	cld		;	Forward	copy
	rep	movsb	;	Copy filename
	pop	cx bx si ds	;	Restore	registers
	iCLC		;	Signal success
	iret		;	Return to	interrupt	caller
@@NoCD:
	pop	si ds	;	Restore	registers
	cmp	[cs:DoFailure],01h	;	Failure	on exit	?
	jne	@@Dummy	;	No --> @@Dummy
	iSTC		;	Signal failure
	mov	ax,000fh	;	Drive	not	ready	error
	jmp	@@Exit	;	Exit
@@CheckMSCDEX:
	push	bp	;	Save bp
	mov	bp,sp	;	Point	bp to	sp
	cmp	[word ptr bp+8],0dadah	;	Installation check ?
	je	@@YesMSCDEX	;	Yes	-->	@@YesMSCDEX
	pop	bp	;	Restore	bp
	jmp	@@CallOld	;	Call old handler
@@YesMSCDEX:
	mov	[word ptr bp+8],0adadh	;	Adjust stack
	pop	bp	;	Restore	bp
	cmp	si,'0C'	;	Self-check ?
	jne	@@NotSelf	;	No --> @@NotSelf
	cmp	di,'D7'	;	Self-check ?
	jne	@@NotSelf	;	No --> @@NotSelf
	mov	si,'7D'	;	Adjust si
	mov	di,'C0'	;	and	di
	push	cs	;	Put	code segment
	pop	es	;	into es
@@NotSelf:
	mov	al,0ffh	;	Signal success
@@Exit:
	iret		;	Return to	interrupt	caller
@@DelaySize	dw	3200
@@OldAX	dw	0
endp

; GetSpeed procedure
proc	GetSpeed
arg	@@DriveID:word
uses	bx
	mov	bl,[byte ptr @@DriveID]	;	Get	Drive	ID
	sub	bl,[cs:FirstID]	;	Make 0-based
	xor	bh,bh	;	Zero high	8	bit	(make	index)
	shl	bx,1	;	Make word-index
	mov	ax,[cs:DriveSpeeds+bx]	;	Get	drive	speed	from table
	ret		;	Return to	caller
endp

; SetIntVec	procedure
proc	SetIntVec
arg	@@IntNo:word, @@Vector:dword
uses	ax, ds, dx
	mov	ah,25h	;	Dos	Fn 25h = SetIntVec
	mov	al,[byte ptr @@IntNo]	;	Interrupt	no in	al
	lds	dx,[dword ptr @@Vector]	;	Vector in	ds:dx
	int	21h	;	Call DOS interrupt
	ret		;	Return to	caller
endp

; GetIntVec	procedure
proc	GetIntVec
arg	@@IntNo:word
uses	ax
	mov	ah,35h	;	Dos	Fn 35h = GetIntVec
	mov	al,[byte ptr @@IntNo]	;	Interrupt	no in	al
	int	21h	;	Call DOS interrupt
	ret		;	Return to	caller
endp

; Hook procedure
proc	Hook
	call	GetIntVec, 66h	;	Get	interrupt	vector 66h
	test	bx,bx	;	Any	vector there ?
	jnz	@@No66	;	Yes	-->	@@No66
	mov	bx,es	;	Get	segment	in bx
	test	bx,bx	;	Vector there ?
	jnz	@@No66	;	Yes	-->	@@No6
	mov	ah,62h	;	Dos	Fn 62h = Get PSP
	int	21h	;	Call DOS interrupt
	mov	es,bx	;	Put	segment	in es
	mov	es,[es:002ch]	;	Get	environment	segment
	mov	ah,49h	;	Dos	Fn 49h = FreeMem
	int	21h	;	Call DOS interrupt

	call	GetIntVec, 21h	;	Get	interrupt	vector 21h
	call	SetIntVec, 66h, es bx	;	Make copy	at vector	66h

	mov	[word ptr cs:OldInt21],bx	;	Save vector	21h
	mov	[word ptr cs:OldInt21+2],es	;	...
	call	GetIntVec, 2Fh	;	Get	interrupt	vector 2fh
	mov	[word ptr cs:OldInt2F],bx	;	Save vector	2fh
	mov	[word ptr cs:OldInt2F+2],es	;	...

	call	SetIntVec, 21h, cs offset NewInt21	;	Set	new	int	21h
	call	SetIntVec, 2Fh, cs offset NewInt2F	;	Set	new	int	2fh

	call	LStrWrite, offset HookMsg	;	Write	message

	ret		;	Return to	caller
@@No66:
	mov	[cs:Quiet],00h	;	Turn off quiet mode
	call	LStrWrite, offset No66Msg	;	Write	error	message
	call	CleanUp	;	Clean	up
	ExitCode	0001h	;	Exit to	dos
endp

; CleanUp procedure
proc	CleanUp
	lea	si,[Datas]	;	Point	ds:si	to Datas
	mov	cx,MaxCDs	;	Get	number of	CDs
@@DataLoop:
	mov	ah,49h	;	Dos	Fn 49h = FreeMem
	mov	bx,[cs:si]	;	Get	segment	of data
	test	bx,bx	;	Any	data there ?
	jz	@@NextData	;	No --> @@NextData
	mov	es,bx	;	Put	segment	in es
	int	21h	;	Call DOS interrupt
@@NextData:
	add	si,2	;	Next index of	Datas
	dec	cx	;	One	less CD	do clean up
	jnz	@@DataLoop	;	More --> @@DataLoop
	mov	al,[cs:FirstID]	;	Get	drive	ID of	first	cd
@@Loop:
	call	GetCDS, ax	;	Get	cd data
	xor	cx,cx	;	Zero cx
	mov	[es:bx],al	;	Set	old	drive	letter
	mov	[byte ptr es:bx+1],':'	;	Set	to 'D:\',	0
	mov	[byte ptr es:bx+2],'\'	;	...
	mov	[byte ptr es:bx+3],0	;	...
	mov	[word ptr es:bx+79],2	;	...
	mov	[word ptr es:bx+67],0	;	Fix	up drive bit flags
	mov	[es:bx+69],cx	;	Remove drive pointer
	mov	[es:bx+71],cx	;	...
@@Next:
	inc	al	;	Next drive letter
	cmp	al,[cs:LastID]	;	Beyond last	cd ?
	jbe	@@Loop	;	No --> @@Loop
	ret		;	Return to	interrupt	caller
endp

; UnHook procedure
proc	UnHook
	call	CleanUp	;	Clean	up
	call	SetIntVec, 66h, 0 0	;	Restore	int	66h
	call	SetIntVec, 21h, [dword ptr OldInt21]	;	Restore	int	21h
	call	SetIntVec, 2Fh, [dword ptr OldInt2F]	;	Restore	int	2fh
	push	ds cs	;	Save ds	and	put	cs ...
	pop	ds	;	...	into ds
	call	LStrWrite, offset UnHookMsg	;	Write	message
	pop	ds	;	Restore	ds
	ret		;	Return to	caller
endp

; Exec procedure
proc	Exec
arg	@@ProgName:dword, @@Params:dword
uses	ds, dx, es, bx, ax, si, di	; Save registers
	lds	si,[dword ptr @@Params]	;	Source in	ds:si
	cmp	[byte ptr ds:si],'&'	;	Dummy	letter ?
	jne	@@OkLetter	;	No --> @@OkLetter
	mov	al,[cs:FirstID]	;	Get	cd letter
	mov	[ds:si],al	;	Update parameter
@@OkLetter:
	push	cs	;	Put	cs ...
	pop	es	;	...	in es
	lea	di,[@@LocalPms+1]	; es:di = Destination
	cld		; Forward direction
@@Loop:
	mov	[cs:@@EPB+4],cs	;	Save segment
	lodsb		; Get character
	stosb		; Store it
	test	al,al	; Finished yet ?
	jnz	@@Loop	; No --> @@Loop
	mov	al,0dh	;	End	of parameters
	stosb		;	Store	it
	sub	di,offset @@LocalPms	; Calculate	length+1
	dec	di	; Calculate	length
	mov	ax,di	; Store in ax
	mov	[@@LocalPMS],al	; Store length byte
	mov	ax,4b00h	; Fn 4bh = exec, 00=load+exec
	lds	dx,[@@ProgName]	; ds:dx = progname
	push	cs	;	Put	cs ...
	pop	es	;	...	in es
	lea	bx,[@@EPB]	;	Point	es:bx	to EPB
	int	21h	; Call dos interrupt
	int	3
	ret		; Return to	caller
@@EPB	dw	0
	dw	offset @@LocalPms
	dw	0
	dw	0,0
	dw	0,0
@@LocalPms	db	0
	db	128 dup (0)
endp

; StrLIComp procedure
proc	StrLIComp
arg	@@Dest:dword, @@Source:dword, @@Length:word
uses	ds, es, si, di, cx, bx
	lds	si,[dword ptr @@Dest]	;	Destination	in ds:si
	les	di,[dword ptr @@Source]	;	Source in	es:di
	cld		;	Forward	copy
	mov	cx,[@@Length]	;	Length in	cx
	jcxz	@@Equal	;	No bytes --> @@Equal
@@Loop:
	lodsb		;	Get	character	from dest
	mov	bl,[es:di]	;	Get	character	from source
	inc	di	;	Next char	in source
	call	UpCase, ax	;	Convert	to uppercase
	push	ax	;	Save it
	call	UpCase, bx	;	Convert	to uppercase
	mov	bx,ax	;	Put	it back	in bx
	pop	ax	;	Restore	ax
	cmp	al,bl	;	a<b or a>b ?
	jb	@@Less	;	a<b -->	@@Less
	ja	@@More	;	a>b	-->	@@More
	cmp	al,0	;	End	of strings ?
	je	@@Equal	;	Yes	-->	@@Equal
	dec	cx	;	One	less character
	jnz	@@Loop	;	More --> @@Loop
@@Equal:
	xor	al,al	;	Zero al
	clc		;	Signal equal
	jmp	@@Exit	;	Exit
@@Less:
	mov	al,-1	;	Signal less
	stc		;	Signal different
	jmp	@@Exit	;	Exit
@@More:
	mov	al,1	;	Signal more
	stc		;	Signal different
@@Exit:
	ret		;	Return to	caller
endp

; StrWrite procedure
proc	StrWrite
arg	@@Source:word	; Set up parameters
uses	dx, si, ax	; Preserve registers
	mov	si,[@@Source]	; Point ds:si to string
	cld		; Forward read
@@Loop:
	lodsb		; Get character
	or	al,al	; At end of	string ?
	jz	@@Exit	; Yes --> @@Exit
	mov	dl,al	; Put character in dl
	mov	ah,02h	; Fn 02h = Print character
	int	21h	; Call dos interrupt
	jmp	@@Loop	; Loop for more characters
@@Exit:
	ret		; Return
endp

; StrCopy procedure
proc	StrCopy
arg	@@Dest:dword, @@Source:dword	; Set up parameters
uses	ds, si, es, di	; Preserve registers
	lds	si,[@@Source]	; Point ds:si to @@Source
	les	di,[@@Dest]	; Point es:di to @@Dest
	cld		; Forward copy
@@Loop:
	lodsb		; Get byte
	stosb		; Store byte
	or	al,al	; At end of	string ?
	jnz	@@Loop	; No --> @@Loop
	mov	ax,[word @@Dest]	; Return dest offset in ax
	ret		; Return
endp

; StrLen procedure
proc	StrLen
uses	ds, si
arg	@@Source:dword	; Set up parameters
	xor	ax,ax	;	Zero length
	lds	si,[dword ptr @@Source]	;	Source in	ds:si
@@Loop:
	cmp	[byte ptr ds:si],0	;	End	of string
	je	@@Exit	;	Yes	-->	@@Exit
	inc	si	;	Next character
	inc	ax	;	Increment	counter
	jmp	@@Loop	;	Loop
@@Exit:
	ret		;	Return to	caller
endp

; UpCase procedure
proc	UpCase
arg	@@Character:word	; Set up parameters
uses	bx
	push	[@@Character]	;	Put	character	in stack
	mov	ax,1213h	;	Multiplex	Fn 1213h = UpCase
	int	2fh	;	Call multiplex interrupt
	pop	bx	;	Restore	bx
	ret		; Return
endp

; StrUpper procedure
proc	StrUpper
arg	@@Dest:dword	; Set up parameters
uses	bx, cx, ds, si	; Preserve registers
	lds	si,[@@Dest]	; Point ds:si to string
@@Loop:
	mov	al,[ds:si]	; Get character
	or	al,al	; Is at end	?
	jz	@@Exit	; Yes --> @@Exit
	push	ax	;	Put	character	on stack
	mov	ax,1213h	;	Multiplex	Fn 1213h = UpCase
	int	2fh	;	Call multiplex interrupt
	pop	bx	;	Restore	bx
	mov	[ds:si],al	; Store back in string
	inc	si	; Go to next character
	jmp	@@Loop	;	Loop
@@Exit:
	mov	ax,[word @@Dest]	; Return string
	ret		; Return
endp

; DeCrunch procedure
proc	DeCrunch
arg	@@Source:dword, @@Dest:dword	; Parameters
uses	ds, es, si, di, bx, dx	; Preserve registers
	lds	si,[dword @@Source]	; Point DS:SI to source
	les	di,[dword @@Dest]	; Point ES:DI to destination
	cld		; Forward direction
	lodsw		; Get size of raw data
	mov	cx,ax	; Put in cx
	lodsw		; Get DLE 1/2
	mov	dx,ax	; Put in dl/dh
@@loop1:
	jcxz	@@exit	; When no more --> @@exit
	lodsb		; Get one byte of data
	cmp	al,dl	; Is RLE ?
	je	@@unrle	; Yes --> @@unrle
	cmp	al,dh	; Is LZ ?
	je	@@unlz	; Yes --> @@unlz
	stosb		; Store raw	data
	loop	@@loop1	; Loop while more data
	jmp	@@exit	; Exit when done
@@unrle:
	lodsb		; Get high-byte of count
	cmp	al,0ffh	; Is only one dle ?
	je	@@storedle1	; Yes --> @@storedle1
	mov	ah,al	; Store in ah
	lodsb		; Get low-byte of count
	cmp	ax,cx	; Too big ?
	ja	@@exit	; Yes --> @@exit
	sub	cx,ax	; Decrement main counter
	push	cx	; Save main counter
	mov	cx,ax	; Use local counter
	lodsb		; Get byte to repeat cx	times
	rep	stosb	; Store repetition
	pop	cx	; Restore main counter
	jmp	@@loop1	; Loop for more data
@@storedle1:
	mov	al,dl	; Get DLE 1
	stosb		; Store it
	loop	@@loop1	; Loop for more data
	jmp	@@exit	; Exit when done
@@unlz:
	lodsb		; Get high-byte of count
	cmp	al,0ffh	; Is only one dle ?
	je	@@storedle2	; Yes --> @@storedle2
	mov	ah,al	; Put in ah
	lodsb		; Get low-byte of count
	cmp	ax,cx	; Too big ?
	ja	@@exit	; Yes --> @@exit
	sub	cx,ax	; Decrement main counter
	push	cx	; Save main counter
	mov	cx,ax	; Use local counter
	lodsw		; Get distance to look back
	mov	bx,ax	; Store in bx
	push	ds si	; Save some registers
	push	es	; Copy es
	pop	ds	; To ds
	mov	si,di	; Copy di to si
	sub	si,bx	; Go back to start of data
	rep	movsb	; Move bytes
	pop	si ds cx	; Restore registers
	jmp	@@loop1	; Loop for more data
@@storedle2:
	mov	al,dh	; Get DLE 2
	stosb		; Store it
	loop	@@loop1	; Loop for more data
@@exit:
	mov	ax,si	; Get offset of next byte
	mov	cx,si	; Into ax and cx
	lds	si,[dword @@Source]	; Get original pointer
	sub	cx,si	; Calculate difference
	ret		; Return
endp

;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
;лл End of source-file                                                       лл
;лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

end			; End of source-file
