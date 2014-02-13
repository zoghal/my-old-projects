PROGRAM DirSum; { An example program for ENGINE.TPU }

{$R-,S+,I+,D+,F-,V-,B-,N-,L+}
{$M 2048,0,0}

{*********************************************************}
{*                                                       *}
{*  Uses SearchEngine to write the names of all files    *}
{*  in the current directory and display the total disk  *}
{*  space that they occupy.                              *}
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
   Template  : PathStr;
   ErrorCode : BYTE;
   Total     : LONGINT;

{$F+} PROCEDURE WriteIt(VAR S: SearchRec; P: PathStr); {$F-}
BEGIN
   WRITELN(S.name);
   Total:=Total+S.size;
END;

BEGIN
   Total:=0;
   GetDir(0,Template);
   IF Length(Template)=3 THEN Dec(Template[0]);
   { Avoid ending up with "C:\\*.*"! }
   Template:=Template+'\*.*';
   SearchEngine(Template,ANYFILE,WriteIt,ErrorCode);
   IF ErrorCode<>0 THEN
      ErrorMessage(ErrorCode)
   ELSE
      WRITELN('Total size of displayed files: ',Total,' Bytes');
END.