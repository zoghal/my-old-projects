(*                      BCSHARE Beta Version 0.6                         *)
(*                     Compliments of Mike Woltz                         *)
(*                 Copyright (C) By Mike Woltz 1990                      *)
(*                       Buffalo Creek Software                          *)
(*                            A Member Of                                *)
(*              The Association Of Shareware Professionals               *)
(*               Home of SPITFIRE Bulletin Board System                  *)
(*                                                                       *)
(* BCSHARE is written by Mike Woltz (Buffalo Creek Software) to be used  *)
(* to open files in a manner to provide the use of file sharing and      *)
(* locking for multitasking and/or LAN systems.  BCSHARE is a written    *)
(* in Turbo Pascal and interfaced with assembler code (BCSFILE.OBJ) for  *)
(* speed.  You are free to use BCSHARE within your programs written in   *)
(* Turbo Pascal provided Buffalo Creek Software is given credit for this *)
(* code either in your program documentation or within your program      *)
(* itself.  While you are free to use BCSHARE, you are NOT allowed to    *)
(* alter this code.                                                      *)

{$I+,N-,V-,B-,S-,R-,L+,D+,F+}
Unit BCShare;
Interface
Uses DOS;

CONST
  Lock          : Byte = 0;
  Unlock        : Byte = 1;
  ReadMode      : Byte = 0;
  WriteMode     : Byte = 1;
  NormalMode    : Byte = 2;
  ReadDenyNone  : Byte = 3;
  WriteDenyNone : Byte = 4; 
  DOS_Error            = $FFFF;

TYPE
 ASCIIZString = Array[0..64] Of Char;

VAR
  Regs      : Registers;
  A         : ASCIIZString;
  File_Pos  : LongInt;
  IO_Error  : Word;

Procedure SetFileMode(Mode : Byte);
Procedure StrToASCIIZ(S : String; VAR A : ASCIIZString);
Function  OpenFile(A : ASCIIZString; FileMode : Byte) : Word;
Procedure LockFile(Handle : Word; Mode : Byte; Start,Amount : LongInt);
Function  CreateFile(A : ASCIIZString) : Word;
Function  SeekFile(Handle : Word; Offset : LongInt; Method : Byte) : LongInt;
Procedure WriteFile(Handle : Word; VAR Buffer; Bytes : Word);
Function  ReadFile(Handle : Word; VAR Buffer; Bytes : Word) : Word;
Procedure CloseFile(Handle : Word);
Procedure Find_EOF(FHandle : Word);
Procedure AssignTxtFile(VAR TxtF : Text; FileName : String);

Implementation

{$L BCSFILE.OBJ}
Procedure SetFileMode(Mode : Byte);                                 External;
Procedure StrToASCIIZ(S : String; VAR A : ASCIIZString);            External;
Function  OpenFile(A : ASCIIZString; FileMode : Byte) : Word;       External;
Procedure LockFile(Handle : Word; Mode : Byte;
                   Start,Amount : LongInt);                         External;
Function  CreateFile(A : ASCIIZString) : Word;                      External;
Function  SeekFile(Handle : Word; Offset : LongInt;
                   Method : Byte) : LongInt;                        External;
Procedure WriteFile(Handle : Word; VAR Buffer; Bytes : Word);       External;
Function  ReadFile(Handle : Word; VAR Buffer; Bytes : Word) : Word; External;
Procedure CloseFile(Handle : Word);                                 External;

Procedure Find_EOF(FHandle : Word);
VAR
  CArray : Array[1..128] Of Char;
  Wd,W    : Word;
  Begin;
    File_Pos:=SeekFile(FHandle,0,2);
    Dec(File_Pos,1);
    If File_Pos<0 Then Exit;
    File_Pos:=File_Pos And $FFFF80;
    File_Pos:=SeekFile(FHandle,File_Pos,0);
    Wd:=ReadFile(FHandle,CArray,SizeOf(CArray));
    W:=1;
    While (W<=Wd) And (CArray[W]<>^Z) Do
    Begin;
      Inc(W);
      Inc(File_Pos);
    End;
    File_Pos:=SeekFile(FHandle,File_Pos,0);
  End;

Function TxtRead(VAR TxtF : TextRec) : Word;
  Begin;
    With TxtF Do
    Begin;
      BufEnd:=ReadFile(Handle,BufPtr^,BufSize);
      BufPos:=0;
      TxtRead:=0;
    End;
  End;

Function TxtWrite(VAR TxtF : TextRec) : Word;
  Begin;
    WriteFile(TxtF.Handle,TxtF.BufPtr^,TxtF.BufPos);
    TxtF.BufPos:=0;
    TxtF.BufEnd:=0;
    TxtWrite:=0;
  End;

Function TxtClose(VAR TxtF : TextRec):  Word;
  Begin;
    CloseFile(TxtF.Handle);
    TxtF.BufPos:=0;
    TxtF.BufEnd:=0;
    TxtClose:=0;
    SetFileMode(2);
  End;

Function SetNull(VAR TxtF : TextRec):  Word;
  Begin;
    SetNull:=0;
  End;

Function OpenTxt(VAR TxtF : TextRec) : Word;
VAR
  FName : String;
  Begin;
    TxtF.CloseFunc:=@TxtClose;
    TxtF.FlushFunc:=@SetNull;
    FName:=TxtF.Name;
    StrToASCIIZ(FName,A);
    If TxtF.Mode=FmInput Then
    Begin;
      SetFileMode(ReadDenyNone);
      TxtF.Handle:=OpenFile(A,FileMode);
      TxtF.InOutFunc:=@TxtRead;
    End
    Else 
    If TxtF.Mode=FmOutput Then
    Begin;
      TxtF.Handle:=CreateFile(A);
      TxtF.InOutFunc:=@TxtWrite;
    End
    Else
    Begin;
      SetFileMode(NormalMode);
      TxtF.Handle:=OpenFile(A,FileMode);
      If TxtF.Handle=DOS_Error Then TxtF.Handle:=CreateFile(A)
      Else
      Find_EOF(TxtF.Handle);
      TxtF.Mode:=FmOutput;
      TxtF.InOutFunc:=@TxtWrite;
   End;
   TxtF.BufPos:=0;
   TxtF.BufEnd:=0;
   If TxtF.Handle=DOS_Error Then OpenTxt:=IO_Error
   Else
   OpenTxt:=0;
   SetFileMode(2);
End;

Procedure AssignTxtFile(VAR TxtF : Text; FileName : String);
VAR
  I  : Integer;
  TR : TextRec ABSOLUTE TxtF;
  Begin;
    With TR Do
    Begin;
      Handle:= $FFFF;
      Mode:=FmClosed;
      BufSize:=SizeOf(Buffer);
      BufPtr:=@Buffer;
      OpenFunc:=@OpenTxt;
      StrToASCIIZ(FileName,A);
      Move(A,Name,SizeOf(A));
    End;
  End;
End.