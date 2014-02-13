{ --------------------------------------------------------------------------- }
{ DRVTYPES.PAS  Drive type detection unit.			 Version 2.00 }
{                                                                             }
{ *** PUBLIC DOMAIN ***                                                       }
{ *** THERE ARE NO WARRANTIES PROVIDED AND AS-IS BASIS IS ASSUMED ***         }
{                                                                             }
{ Initially written, placed in public domain, detection of Norton Diskreet    }
{  and SuperStor drives in assembly language by Mr. Byte.                     }
{ Network drive detection fix, Stacker 4, DoubleDisk and                      }
{  Bernoully drive detection by Bobby Z.                                      }
{ RAM drive detection by Janis Smits.                                         }
{ Diskreet, SuperStor detection code donated by Vitaly Lysenko                }
{ --------------------------------------------------------------------------- }
{ History:

	mid November, 1994  -  initially released
         29 November, 1994  -  fixed network drive detection and added
			       Stacker 4 drive detection
         10 December, 1994  -  added Janis's RAM drive detection method
	 16 January,  1995  -  added Vertisoft DoubleDisk 2.6 drive detection
	 31 January,  1995  -  added Bernoully drive detection
          4 February, 1995  -  added Norton Diskreet drive detection
	  5 February, 1995  -  added SuperStor drive detection algo
          6 February, 1995  -  fixed bug with detection of CD-ROM drives,
                               thanx to Ralf Quint
          7 March,    1995  -  released version 2. Mr. Byte made some
                               modifications to the entire code
}
(**** General notes:

  This code can be easily ported to C/C++, because most of it is written in
  inline assembler. Just convert @@-style labels to __ and add "asm"s where
  needed. Note, that the call to checkStacker4 cannot be made in C/C++ the way
  it is done here (at least in Borland C++), you should do it like this:

  unsigned char GetDriveType( void )
  {
  register unsigned char temp;
  ...
  mov	temp,Drive		// passing the parameter
    }
  checkStacker4(temp);
asm {
  ...
  }

  Warning: the entire code require 2048 stack space.

  end of General notes ****)

{$S-,R-,I-,X+}
{ disable stack, I/O and range checking, enable extended syntax }

unit DrvTypes;
{ drive types }

interface

const
  dtError      = $00; { Invalid drive, letter not assigned }
  dtFixed      = $01; { Fixed drive }
  dtRemovable  = $02; { Removeable (floppy, etc.) drive }
  dtRemote     = $03; { Remote (network) drive }
  dtCDROM      = $04; { MSCDEX V2.00+ driven CD-ROM drive }
  dtDblSpace   = $05; { DoubleSpace compressed drive }
  dtSUBST      = $06; { SUBST'ed drive }
  { dudes, where are Stacker 1,2,3 check-routines? }
  dtStacker4   = $08; { Stacker 4 compressed drive }
  dtRAMDrive   = $09; { RAM drive }
  dtDublDisk   = $0A; { Vertisoft DoubleDisk 2.6 compressed drive }
  dtBernoully  = $0B; { IOmega Bernoully drive }
  dtDiskreet   = $0C; { Norton Diskreet drive }
  dtSuperStor  = $0D; { SuperStor compressed drive }

  checkABforStacker : Boolean = False;
 { Controls whether we should check drives A: and B: for Stacker volumes.
   There is no convenient way to determine if drive is Stacker volume (like
   for DoubleSpace/Drive*Space volumes), so we should use absolute disk read
   function to do it. Drives A: and B: are typically floppy drives, thus one
   may not want to check them causing reads from floppies (which could be
   not inserted at all). /Bobby Z., 29/11/94 }

function GetDriveType(Drive : byte) : byte;
function CountValidDrives : byte;

implementation

type
	ControlBlk25 = record	{ control block for INT 25 extended call }
			StartSector : LongInt; { start sector to read }
			Count	    : Word;    { number of sectors to read }
			BufferOffs  : Word;    { data buffer offset }
			BufferSeg   : Word;    { data buffer segment }
		       end;

function checkStacker4( Drive : Byte ) : Boolean; near; assembler;
{ returns True if Drive is Stacker 4 compressed volume, False otherwise.
  This also may return True with previous versions of Stacker - I didn't
  check it. /Bobby Z. 29/11/94 }

var CB   : ControlBlk25;
    Boot : array[1..512] of Byte;
asm
	push	ds
	mov	al,Drive
	cmp	checkABforStacker,1 { check A: & B: for Stacker volume? }
	jz	@@1
	cmp	al,1
	ja	@@1
	sub	al,al
	jmp	@@Q
@@1:
	push	ss
	pop	ds
	lea	bx,CB
	sub	ax,ax
	mov	word ptr ds:ControlBlk25[bx].StartSector,ax
	mov	word ptr ds:ControlBlk25[bx].StartSector[2],ax
	mov	word ptr ds:ControlBlk25[bx].Count,1
	lea	dx,Boot
	mov	word ptr ds:ControlBlk25[bx].BufferOffs,dx
	mov	word ptr ds:ControlBlk25[bx].BufferSeg,ds
	mov	al,Drive
	sub	cx,cx
	dec	cx
	mov	si,sp
	int	25h
	cli
	mov	sp,si
	sti
	pushf
	lea	si,Boot
	add	si,1F0h		{ Stacker signature CD13CD14CD01CD03 should }
	sub	al,al		{ appear at offset 1F0 of boot sector.      }
	popf
	jc	@@Q		{ was error reading boot sector - assume    }
				{ not Stacker drive                         }
	cmp	word ptr ds:[si],13CDh
	jnz	@@Q
	cmp	word ptr ds:[si][2],14CDh
	jnz	@@Q
	cmp	word ptr ds:[si][4],01CDh
	jnz	@@Q
	cmp	word ptr ds:[si][6],03CDh
	jnz	@@Q
	mov	al,1
@@Q:
	pop	ds
end; { checkStacker4 }

function checkDiskreet(Drive : byte) : boolean; near; assembler;
{ Returns True if Drive is Norton Diskreet drive, otherwise it returns False }
type
  TDiskreetPacket = record
    Header : array [1..6] of byte;
    Drive  : char;
    Size   : longint
  end;
const DrvName : PChar = '@DSKREET'; {-Diskreet driver name}
var Packet : TDiskreetPacket;
asm
        push    ds
        mov     ax,0FE00h
        mov     di,'NU'   { 4E55h='NU' }
        mov     si,'DC'   { 4443h='DC' }
        int     2Fh
        or      al,al     { check for zero }
        je      @@2
        cmp     al,1      { check for 1 }
        je      @@2
@@1:
        sub     al,al      { return False }
        jmp     @@4
@@2:
        lds     dx,DrvName
        mov     ax,3D02h
        int     21h
        jc      @@1
        mov     bx,ax
        mov     ax,seg [Packet]
        mov     ds,ax
        mov     dx,offset [Packet]
        mov     es,ax
        mov     di,dx
        mov     cx,type TDiskreetPacket
        sub     al,al
        cld
        rep     stosb     { initialize Packet fields }
        mov     di,offset [Packet.Header]
        mov     ax,12FFh  { store first two bytes in Packet header }
        stosw
        mov     di,offset [Packet.Drive]
        mov     al,Drive
        add     al,64     { convert drive number to drive letter }
        stosb             { store drive letter }
        mov     ax,4403h  { ready to send Diskreet Packet }
        mov     cx,7
        mov     si,'dc'   { 6463h = 'dc' }
        mov     di,'NU'   { 4E55h = 'NU' }
        int     21h       { assuming ds=seg [Packet], dx=offset [Packet],
                            bx=Handle }
        mov     ah,3Eh
        int     21h       { close device }
        mov     si,offset [Packet.Size]
        lodsw
        or      ax,ax
        jnz     @@3
        lodsw
        or      ax,ax
        jz      @@1
@@3:
        mov     al,True   { return True }
@@4:
        pop     ds
end; { checkDiskreet }

function checkSuperStor(Drive : byte) : boolean; near; assembler;
type
  TSSPacket = record
    Sign  : word;
    Sign1 : word;
    P     : pointer;
    Res   : array [1..4] of byte
  end;
var
  Packet : TSSPacket;
asm
        push    ds
        mov     ax,seg [Packet]
        mov     es,ax
        mov     di,offset [Packet]
        mov     cx,type TSSPacket
        cld
        rep     stosb   { initialize SStor Packet structure }
        mov     di,offset [Packet.Sign]
        mov     ax,0AA55h
        stosw             { init Packet.Sign }
        mov     ax,0201h
        stosw             { init Packet.Sign1 }
        mov     ax,4404h
        mov     dx,seg [Packet]
        mov     ds,dx
        mov     dx,offset [Packet]
        mov     cx,12
        mov     bl,Drive
        int     21h
        jc      @@2          { if error then quit }
        mov     si,offset [Packet.Sign]
        lodsw
        or      ax,ax        { if Packet.Sign<>0 then quit }
        jnz     @@2
        lodsw
        cmp     ax,0201h     { if Packet.Sign1<>0201h then quit }
        jne     @@2
        les     di,[Packet.P]
        mov     ax,[es:di+5Dh]
        test    ax,40h       { host drive? }
        jz      @@2
        mov     cl,byte ptr es:[di+24h]
        add     cl,'A'
        mov     ah,30h
        int     21h
        cmp     ah,4
        jb      @@1
        inc     di
@@1:
        les     di,dword ptr es:[di+5Fh]
        mov     bl,[es:di]
        add     bl,'A'
        cmp     cl,Drive   { ????? I don't know whether bl or cl is a host
                             SStor drive... }
        jne     @@2
        mov     al,True   { return True }
        jmp     @@3
@@2:
        sub     al,al     { return False }
@@3:
        pop     ds
end; { checkSuperStor }

function GetDriveType; assembler;
{ Detects the type for a specified drive. Drive is a drive number to detect the
  type for (0=detect current (default) drive, 1=A, 2=B, 3=C...)

  Returns: One of the dtXXX-constants.

  Note: Function will work under DOS version 3.30 or later
        Also should work under DPMI and Windows.
}

asm
	cmp	Drive,0
	jne	@@1
	mov	ah,19h    { get active drive number in al }
	int	21h
	mov	Drive,al
	inc	Drive
@@1:
        push    word ptr [Drive]
        call    checkDiskreet
        or	al,al
	jz	@CDROMcheck
	mov	bl,dtDiskreet
        jmp     @@7
@CDROMcheck:
	mov	ax,1500h  { check for CD-ROM v2.00+ }
	sub	bx,bx
	int	2Fh
	or	bx,bx
	jz	@@2
	mov	ax,150Bh
	sub	ch,ch
	mov	cl,Drive
        dec     cl      { bug fixed with CD-ROM drives, thanx to Ralf Quint }
	int	2Fh     { drives for this function start with 0 for A: }
	cmp	bx,0ADADh
	jne	@@2
	or	ax,ax
	jz	@@2
	mov	bl,dtCDROM
	jmp	@@7
@@2:
	mov	ax,4409h { check for SUBST'ed drive }
	mov	bl,Drive
	int	21h
	jc	@DblSpaceChk
	test	dh,80h
	jz	@DblSpaceChk
	mov	bl,dtSUBST
	jmp	@@7
@DblSpaceChk:
	mov	ax,4A11h  { check for DoubleSpace drive }
	mov	bx,1
	mov	dl,Drive
	dec	dl
	int	2Fh
	or	ax,ax     { is DoubleSpace loaded? }
	jnz	@@3
	cmp	dl,bl     { if a host drive equal to compressed, then get out... }
	je	@@3
	test	bl,80h    { bit 7=1: DL=compressed,BL=host
                                 =0: DL=host,BL=compressed }
	jz	@SStorChk   { so avoid host drives, assume host=fixed :) }
	inc	dl
	cmp	Drive,dl
	jne	@SStorChk
	mov	bl,dtDblSpace
	jmp	@@7
@SStorChk:
        push    word ptr [Drive]
        call    checkSuperStor
        or	al,al
	jz	@@3
	mov	bl,dtSuperStor
        jmp     @@7
@@3:
	mov	ax,4409h     { check for remote drive }
	mov	bl,Drive
	int	21h
	jc	@@5
	and	dh,10h
	jz	@@4
	mov	bl,dtRemote
	jmp	@@7
@@4:
	mov	al,Drive     { check for Stacker 4 volume }
	or	al,al
	jz	@@getDrv
	dec	al
@@goStac:
	push	ax
	call	checkStacker4
	or	al,al
	jz	@@8
	mov	bl,dtStacker4
	jmp	@@7
@@8:
        mov     ax,4408h     { check for fixed (hard) drive }
        mov     bl,Drive
        int     21h
        jc      @@5
        or      al,al
        jz      @@6
        push    ds           { check for RAM drive }
        mov     ax,ss
        mov     ds,ax
        mov     si,sp
        sub     sp,28h	     { allocate 28h bytes on stack }
        mov     dx,sp
        mov     ax,440Dh     { generic IOCTL }
        mov     cx,860h      { get device parameters }
        int     21h          { RAMDrive and VDISK don't support this command }
	jc	@@cleanup
	pushf
	mov	di,dx
	cmp	byte ptr ds:[di+6],0F8h	{ DoubleDisk returns 0F8h in media type}
	jz	@@dubldsk		{ field of BPB if drive in question is }
					{ compressed }
	popf
	jmp	@@cleanup
@@dubldsk:
	popf
	mov	bl,dtDublDisk
	mov	sp,si
	pop	ds
	jmp	@@7
@@cleanup:
        mov     sp,si
        pop     ds
        mov     bl,dtRAMDrive
        jc      @@7
	push	ds
	mov	ah,1Ch			{ this function works _really_ slowly }
	mov	dl,Drive		{ get media descriptor pointer }
	int	21h
	cmp	byte ptr ds:[bx],0FDh
	pop	ds
	jnz	@@fixed
	push	ds
	mov	ah,32h			{ get BPB pointer }
	mov	dl,Drive
	int	21h
	cmp	byte ptr ds:[bx+0Bh],2	{ Sectors per FAT is more than 2 for }
	pop	ds			{ Bernoully drives }
	jz	@@fixed
	mov	bl,dtBernoully
	jmp	@@7
@@fixed:
        mov     bl,dtFixed
        jmp     @@7
@@5:
	sub	bl,bl        { mov bl,dtError cuz dtError=0 }
	jmp	@@7
@@getDrv:
	mov	ah,19h
	int	21h
	jmp	@@goStac		
@@6:
	mov	bl,dtRemovable   { else - removeable media }
@@7:
	mov	al,bl
end; { GetDriveType }

function CountValidDrives; assembler;
{ - returns number of assigned letters in system }
var Drive, Count : byte;
asm
        mov     Drive,1
        mov     Count,0
@@1:
        push    word ptr Drive
        call    GetDriveType
        or      al,dtError
        jz      @@2
        inc     Count
@@2:
        inc     Drive
        cmp     Drive,26
        jbe     @@1
        mov     al,Count
end;

end.
