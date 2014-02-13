{$A+,B-,D+,E+,F+,G+,I+,L+,N+,O+,P+,Q+,R+,S+,T-,V+,X+,Y+}
{$M 16384,0,16384}
Program RipCD;

Uses
	Crt,Dos;

Const
	DriveNo	: Word	= 4;

Var
	_AX, _Flags	: Word;

Const
	DriverOk		: Byte	= 255;
	CDOk				: Byte	= 255;
	CDDrives		: Byte	= 0;

Function cdExist : Boolean; Assembler;
Asm
	CMP		[CDOk],-1
	JE		@@DOCHECK
	MOV		AL,[CDOk]
	JMP		@@EXIT
@@DOCHECK:
	MOV		AX,$1500
	XOR		BX,BX
	XOR		CX,CX
	INT		$2F
	TEST	BX,BX
	JNZ		@@OK
	MOV		AL,FALSE
	JMP		@@EXIT
@@OK:
	MOV		AL,TRUE
	MOV		[CDDrives],BL
@@EXIT:
	MOV		[CDOk],AL
End;

Function cdDriveCount : Byte; Assembler;
Asm
	CALL	cdExist
	OR		AL,AL
	JZ		@@NO_CD
	MOV		AL,[CDDrives]
	JMP		@@EXIT
@@NO_CD:
	XOR		AX,AX
@@EXIT:
End;

Function driverExist : Boolean; Assembler;
Asm
	CMP		[DriverOk],-1
	JE		@@DOCHECK
	MOV		AL,[DriverOk]
	JMP		@@EXIT
@@DOCHECK:
	MOV		AX,$1100
	PUSH	$DADA
	INT		$2F
	POP		BX
	CMP		AL,$FF
	JE		@@OK
@@NOT_OK:
	MOV		AL,FALSE
	JMP		@@EXIT
@@OK:
	CMP		BX,$ADAD
	JNE		@@NOT_OK
	MOV		AL,TRUE
@@EXIT:
	MOV		[DriverOK],AL
End;

Procedure Request(Prompt: String; rCommand,rParam: Byte; rDataLength: Byte; Var rData);
Var
	DeviceRequest	: Record
		Len				: Byte;
		UnitNo		: Byte;
		Command		: Byte;
		Status		: Word;
		Reserved	: Array[1..8] Of Byte;
		TheData		: Array[0..31] Of Byte;
	End;
	Data					: Array[0..31] Of Byte;
	P							: PChar;
	W							: Word;

	Procedure SendRequest(Var R);
	Begin
		Asm
			MOV		AX,$1510
			MOV		CX,[DriveNo]
			LES		BX,[DWORD PTR R]
			INT		$2F
		End;
	End;

Begin
	If Prompt<>'' Then
		Write('Reading: ',Prompt);
	With DeviceRequest Do Begin
		Len:=13;
		UnitNo:=0;
		Command:=3;

		TheData[0]:=0;
		P:=@Data;
		Move(P,TheData[1],4);
		W:=rDataLength+1;
		Move(W,TheData[5],2);
		TheData[7]:=0;
		TheData[8]:=0;
		TheData[9]:=0;
		TheData[10]:=0;
		TheData[11]:=0;
		TheData[12]:=0;
	End;
	Data[0]:=rCommand;
	Data[1]:=rParam;
	SendRequest(DeviceRequest);
	Move(Data[1],rData,rDataLength);
	If Prompt<>'' Then
		WriteLn;
End;

Function ReadVTOC(Var VTOC; Index : Word) : Word; Assembler;
Asm
	MOV		AX,$1505
	LES		BX,[DWORD PTR VTOC]
	MOV		CX,[DriveNo]
	MOV		DX,[Index]
	INT		$2F
	PUSHF
	POP		[_Flags]
	MOV		[_AX],AX
	JC		@@ERR

	MOV		[DosError],0
	JMP		@@EXIT
@@ERR:
	MOV		[DosError],AX
	XOR		AX,AX
@@EXIT:
End;

Function cdDrive(Index : Byte) : Char; Assembler;
Var
	Letters	: Array[1..26] Of Char;
Asm
	CMP		[Index],0
	JE		@@NO_DRIVE
	CALL	cdDriveCount
	CMP		AL,[Index]
	JB		@@NO_DRIVE
	MOV		AX,$150D
	MOV		BX,SS
	MOV		ES,BX
	LEA		BX,[Letters]
	INT		$2F
	MOV		BL,[Index]
	XOR		BH,BH
	MOV		SI,BX
	MOV		AL,[BYTE PTR Letters+SI-1]
	ADD		AL,'A'
	JMP		@@EXIT
@@NO_DRIVE:
	MOV		AL,0
@@EXIT:
End;

Function cdDriveExist(Drive : Char) : Boolean; Assembler;
Asm
	CALL	driverExist
	OR		AL,AL
	JZ		@@NO_DRIVER
	MOV		CL,[Drive]
	XOR		CH,CH
	AND		CL,$DF
	CMP		CL,'A'
	JB		@@NO_DRIVER
	CMP		CL,'Z'
	JA		@@NO_DRIVER
	SUB		CL,'A'
	MOV		AX,$150B
	XOR		BX,BX
	INT		$2F
	CMP		BX,$ADAD
	JNE		@@NO_DRIVER
	TEST	AX,AX
	JZ		@@NO_DRIVER
	MOV		AL,TRUE
	JMP		@@EXIT
@@NO_DRIVER:
	MOV		AL,FALSE
@@EXIT:
End;

Function GetFileName(Func: Byte; Var Name) : Boolean; Assembler;
Asm
	MOV		AH,$15
	MOV		AL,[Func]
	LES		BX,[DWORD PTR Name]
	MOV		CX,[DriveNo]
	INT		$2F
End;

Procedure ReadSector(Index : LongInt; Var Sector); Assembler;
Asm
	mov		ax,$1508
	les		bx,[dword ptr Sector]
	mov		cx,[DriveNo]
	mov		dx,$0001
	mov		di,[word ptr Index]
	mov		si,[word ptr Index+2]
	int		$2f
End;

Procedure GetDiskFree(Var _ax,_bx,_cx,_dx : Word); Assembler;
Asm
	mov		ah,$36
	mov   dx,[DriveNo]
	inc		dx
	int		$21
	les		di,[dword ptr _ax]
	mov		[es:di],ax
	les		di,[dword ptr _bx]
	mov		[es:di],bx
	les		di,[dword ptr _cx]
	mov		[es:di],cx
	les		di,[dword ptr _dx]
	mov		[es:di],dx
End;

Procedure GetVolumeLabel(Var VL);
Var
	SR	: SearchRec;
Begin
	Write('Reading: Volume label');
	FillChar(VL,13,#0);
	FindFirst(Chr(65+DriveNo)+':\*.*',VolumeID,SR);
	While DosError=0 Do Begin
		If (SR.Attr And VolumeID)<>0 Then Begin
			If Pos('.',SR.Name)>0 Then
				Delete(SR.name,Pos('.',SR.Name),1);
			Move(SR.Name[1],VL,Length(SR.Name));
			Break;
		End;
		FindNext(SR);
	End;
	WriteLn;
End;

Var
	Data						: Array[1..16] Of Byte;
	F,F2						: File;
	I								: Word;
	TrackLo					: Byte;
	TrackHi					: Byte;
	VTOC						: Array[0..16383] Of Byte;
	Index						: Word;

	Dir							: DirStr;
	Name						: NameStr;
	Ext							: ExtStr;
	Size						: Word;
	InBuffer				: Word;
	S								: String;
	C								: Char;
	_bx,_cx,_dx			: Word;

Begin
	If Not driverExist Then Begin
		WriteLn('MSCDEX not loaded');
		Halt(1);
	End;
	If ParamStr(1)='/?' Then Begin
		WriteLn('Usage: RIPCD filename d:');
		Halt(1);
	End;
	If cdDriveCount=1 Then Begin
		If (ParamCount<1) Or (ParamCount>2) Then Begin
			WriteLn('Invalid number of parameters; RIPCD /? for help');
			Halt(1);
		End;
		DriveNo:=Ord(cdDrive(1))-Ord('A');
	End Else Begin
		If ParamCount<>2 Then Begin
			WriteLn('Invalid number of parameters; RIPCD /? for help');
			Halt(1);
		End;
		S:=ParamStr(2);
		If (Length(S)=2) And (S[2]=':') And (UpCase(S[1]) In ['A'..'Z']) Then Begin
			C:=UpCase(S[1]);
			If Not cdDriveExist(C) Then Begin
				WriteLn('Drive ',C,': is not a cd-rom');
				Halt(1);
			End;
			DriveNo:=Ord(C)-Ord('A');
		End Else Begin
			WriteLn('Invalid parameters; RIPCD /? for help');
			Halt(1);
		End;
	End;
	FSplit(ParamStr(0),Dir,Name,Ext);
	Assign(F,ParamStr(1));
	ReWrite(F,1);
	I:=0;
	BlockWrite(F,I,2);	{ Offset of VTOC		}
	BlockWrite(F,I,2);	{ Offset of Sectors	}
	Request('Sector size',7,0,3,Data);
	BlockWrite(F,Data,3);
	Request('Volume size',8,0,4,Data);
	BlockWrite(F,Data,4);
	Request('Audio disk info',10,0,6,Data);
	BlockWrite(F,Data,6);
	TrackLo:=Data[1];
	TrackHi:=Data[2];
	Request('UPC code',14,0,10,Data);
	BlockWrite(F,Data,10);

	Write('Reading: Filenames');
	GetFileName(2,VTOC);
	BlockWrite(F,VTOC,38);

	GetFileName(3,VTOC);
	BlockWrite(F,VTOC,38);

	GetFileName(4,VTOC);
	BlockWrite(F,VTOC,38);
	WriteLn;

	GetVolumeLabel(VTOC);
	BlockWrite(F,VTOC,12);

	Write('Reading: Disk free data');
	GetDiskFree(_ax,_bx,_cx,_dx);
	BlockWrite(F,_ax,2);
	BlockWrite(F,_bx,2);
	BlockWrite(F,_cx,2);
	BlockWrite(F,_dx,2);
	WriteLn;

	BlockWrite(F,TrackLo,1);
	BlockWrite(F,TrackHi,1);
	Write('Reading: Audio track info, tracks ',TrackLo,'-',TrackHi);
	For I:=TrackLo To TrackHi Do Begin
		WriteLn(I);
		Request('',11,I,6,Data);
		BlockWrite(F,Data[2],5);
	End;
	WriteLn;

	I:=FileSize(F);
	Seek(F,0);
	BlockWrite(F,I,2);
	Seek(F,I);

	ReadVTOC(VTOC,0);
	Index:=0;
	Repeat
		Write('Reading: Sector ',Index);
		Write(', reading');
		ReadVTOC(VTOC,Index);
		If DosError<>0 Then Begin
			WriteLn(', end of table');
			Break;
		End;
		Write(', compressing');
		Assign(F2,'VTOC.TMP');
		ReWrite(F2,1);
		BlockWrite(F2,VTOC,2048);
		Close(F2);
		SwapVectors;
		If GetEnv('COMSPEC')='' Then
			Exec('C:\COMMAND.COM','/C '+Dir+'CRUNCH.COM VTOC.TMP VTOC_C.TMP >NUL')
		Else
			Exec(GetEnv('COMSPEC'),'/C '+Dir+'CRUNCH.COM VTOC.TMP VTOC_C.TMP >NUL');
		SwapVectors;

		Assign(F2,'VTOC.TMP');
		Erase(F2);
		Assign(F2,'VTOC_C.TMP');
		ReSet(F2,1);
		BlockWrite(F,Index,2);
		Size:=FileSize(F2)+6;
		BlockWrite(F,Size,2);
		BlockWrite(F,_AX,2);
		BlockWrite(F,_Flags,2);
		BlockRead(F2,VTOC,16384,InBuffer);
		BlockWrite(F,VTOC,InBuffer);
		Close(F2);
		Erase(F2);
		WriteLn;

		Inc(Index);
	Until FALSE;
	ReadVTOC(VTOC,$FFFF);
	Index:=$FFFF;
	BlockWrite(F,Index,2);
	BlockWrite(F,Size,2);
	BlockWrite(F,_AX,2);
	_Flags:=_Flags Or 1;
	BlockWrite(F,_Flags,2);
	I:=FileSize(F);
	Seek(F,2);
	BlockWrite(F,I,2);
	Seek(F,I);
	Write('Reading: System sector 16');
	ReadSector(16,VTOC);
	Assign(F2,'VTOC.TMP');
	ReWrite(F2,1);
	BlockWrite(F2,VTOC,2048);
	Close(F2);

	SwapVectors;
	Exec(GetEnv('COMSPEC'),'/C '+Dir+'CRUNCH.COM VTOC.TMP VTOC_C.TMP >NUL');
	SwapVectors;

	Assign(F2,'VTOC.TMP');
	Erase(F2);
	Assign(F2,'VTOC_C.TMP');
	ReSet(F2,1);
	Size:=FileSize(F2)+6;
	BlockRead(F2,VTOC,16384,InBuffer);
	BlockWrite(F,VTOC,InBuffer);
	Close(F2);
	Erase(F2);

	WriteLn;
	Close(F);
End.
{ return 33032 for invalid tracks }
