PROGRAM DelBak; { An example program for ENGINE.TPU }

{$R-,S+,I+,D+,F-,V-,B-,N-,L+}
{$M $4000,0,0}

{*********************************************************}
{*                                                       *}
{*  Uses SearchEngine to find and delete all *.BAK files *}
{*  in any subdirectory in the current volume.           *}
{*                                                       *}
{*  Taken from Turbo Technix #6, 1988.                   *}
{*                                                       *}
{*  Originally written by                                *}
{*     Neil Rubenking                                    *}
{*                                                       *}
{*  Compiled and rewritten by                            *}
{*     Jens Bruun, Borland Scandinavia                   *}
{*                                                       *}
{*********************************************************}

USES DOS, ENGINE;

VAR
   Path    : PathStr;
   ErrCode : BYTE;
   Number  : INTEGER;
   Size    : LONGINT;

{$F+} PROCEDURE DelFile(VAR S: SearchRec; P: PathStr); {$F-}
VAR
   F: FILE;
BEGIN
   Inc(Size,S.size);
   Assign(F,P+S.name);
   WRITE('Deleting ',P+S.name,'... ');
   Erase(F);
   WRITELN('Done');
   Inc(Number);
END;

PROCEDURE Initialize;
BEGIN
   Number:=0;
   Size:=0;
   GetDir(0,Path);
   IF Length(Path)=2 THEN
      Path:=Path+'\'
   ELSE
      Path[0]:=#3;
   WRITELN('Going to delete ALL *.BAK files in the current volume.');
   WRITELN('Press <RETURN> to proceed, <Ctrl><Break> to stop.');
   READLN;
END;

BEGIN
   Initialize;
   SearchEngineAll(Path,'*.BAK',ANYFILE,DelFile,ErrCode);
   WRITELN;
   IF ErrCode<>0 THEN
      ErrorMessage(ErrCode)
   ELSE
      WRITELN('Erased ',Number,' *.BAK file(s) for a saving of ',Size,' Bytes');
END.