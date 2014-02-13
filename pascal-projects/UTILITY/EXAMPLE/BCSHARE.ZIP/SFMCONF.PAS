(*   This is sample Turbo Pascal source code to read     *)
(*   a file used by SPITFIRE BBS named SFMCONF.DAT.      *)
(*   This sample source code also demonstrates file      *)
(*   sharing abilities for a LAN system of multitasking. *)
(*   This code will only work with Turbo Pascal 4.0      *)
(*   or newer.                                           *)
Program Sample_Pascal_Code_To_Read_SPITFIRES_SFMCONFDAT;
Uses
  BCShare,
  Crt,
  DOS;
TYPE
  MsgSystem = Record
                MSec           : Integer;
                NetMailConf    : Boolean;
                MDesc          : String[40];
                MEqual,
                PublicMsgConf,
                AllowDelete,
                BackupNeeded   : Boolean;
                DaysOld        : Word;
                Extra          : Array[1..78] Of Byte;
              End;

VAR
  MSysF   : File Of MsgSystem;
  MSys    : MsgSystem;
  Rec,
  IOError : Integer;
  Start   : Real;

  Function BCSTimer: Real;
  VAR
    Hour,Minute,Second,Sec100 : Word;
    H,M,S,T : Real;
    Begin
      GetTime(Hour,Minute,Second,Sec100);
      H:=(Hour);
      M:=(Minute);
      S:=(Second);
      T:=(Sec100);
      BCSTimer:=H*3600+M*60+S+T/100;
    End;

  Function TimesUp(Start : Real; HowLong : Integer) : Boolean;
  VAR
    R : Real;
    Begin;
      If BCSTimer<Start Then Start:=Start-86400;
      R:=BCSTimer-Start;
      TImesUp:=Trunc(R)>=HowLong;
    End;

  Procedure ShowFile;
  VAR
    Done : Boolean;
    C    : Char;
    Begin;
      Done:=False;
      Repeat;
        Seek(MSysF,Rec);
        Start:=BCSTimer;
        Repeat;
          {$I-}Read(MSysF,MSys);{$I+}
          IOError:=IOResult;
          If IOError=5 Then Delay(500);
        Until (IOError<>5) Or (TimesUp(Start,10));
        If IOError<>0 Then
        Begin;
          Writeln('An error occurred reading SFMCONF.DAT!');
          Writeln('Halting!!!',^G);
          {$I-}Close(MSysF);{$I+}
          If IOResult<>0 Then;
          Halt(1);
        End;
        GOTOXY(1,1);
        Write('Record No. ',Rec+1,' of ',FileSize(MSysF));
        Clreol;
        GOTOXY(1,3);
        Write('Message Conference #',Rec+1,' - "',MSys.MDesc,'"');
        Clreol;
        GOTOXY(1,4);
        Write('Conference Security Level: ',MSys.MSec);
        Clreol;
        GOTOXY(1,5);
        Write('Net-mail Conference: ');
        If MSys.NetMailConf Then Write('Yes') Else Write('No');
        Clreol;
        GOTOXY(1,7);
        Write('ENTER COMMAND - [+ - Q]? ');
        Clreol;
        Repeat;
          C:=Upcase(Readkey);
        Until C In ['+','-','Q',#27];
        Case C Of
          '+' : Begin;
                  Rec:=Rec+1;
                  If Rec>=FileSize(MSysF) Then Rec:=0;
                End;
          '-' : Begin;
                  Rec:=Rec-1;
                  If Rec<0 Then Rec:=FileSize(MSysF)-1;
                End;
          'Q' : Done:=True;
          #27 : Done:=True;
        End;
      Until Done;
    End;

Begin;
  Clrscr;
  Assign(MSysF,'SFMCONF.DAT');
  SetFileMode(ReadDenyNone);
  Start:=BCSTimer;
  Repeat;
    {$I-}Reset(MSysF);{$I+}
    IOError:=IOResult;
    If IOError=5 Then Delay(500);
  Until (IOError<>5) Or (TimesUp(Start,10));
  If (IOError<>0) And (IOError<>5) Then
  Begin;
    Writeln('SFMCONF.DAT not found!');
    Writeln('Halting!',^G);
    Halt(1);
  End;
  Rec:=0;
  ShowFile;
  {$I-}Close(MSysF);{$I+}
  If IOResult<>0 Then;
End.