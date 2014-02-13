PROGRAM Where; { An example program for ENGINE.TPU }

{$R-,S+,I+,D+,F-,V-,B-,N-,L+}
{$M $4000,0,0}

{*********************************************************}
{*                                                       *}
{*  Uses SearchEngine to find and display matching files *}
{*  in any subdirectory and total their sizes (e.g., to  *}
{*  find all Pascal files, execute WHERE *.PAS).         *}
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
   Template, Path : STRING;
   ErrCode        : BYTE;
   Total          : LONGINT;

{$F+} PROCEDURE ShowFile(VAR S: SearchRec; P: PathStr); {$F-}
BEGIN
   WRITELN(P+S.name);
   Total:=Total+S.size;
END;

PROCEDURE Validate;
{ Validate the command line parameter }
VAR
   P   : BYTE;
   Ext : ExtStr;
BEGIN
   IF ParamCount<>1 THEN
   BEGIN
      WRITELN('SYNTAX: "WHERE [Path]filespec"');
      Halt;
   END;
   FSplit(ParamStr(1),Path,Template,Ext);
   IF Length(Path)=2 THEN Path:=Path+'\';
   Template:=Template+Ext;
   { If no path specified, search from root of current volume }
   IF Path='' THEN
   BEGIN
      GetDir(0,Path);
      IF Length(Path)=2 THEN
         Path:=Path+'\'
      ELSE
         Path[0]:=#3;
   END;
END;

BEGIN
   Total:=0;
   Validate;
   WRITELN('Searching for "',Template,'" in or below "',Path,'"');
   SearchEngineAll(Path,Template,ARCHIVE,ShowFile,ErrCode);
   WRITELN;
   IF ErrCode<>0 THEN
      ErrorMessage(ErrCode)
   ELSE
      WRITELN('These files occupy ',Total,' Bytes of disk space');
END.