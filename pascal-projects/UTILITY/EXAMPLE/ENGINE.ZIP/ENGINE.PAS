UNIT engine; { A generalized search engine for TURBO PASCAL 5.0 }

{$V-}

{********************************************************}
{*                                                      *}
{*  SEARCH ENGINE                                       *}
{*      Input parameters:                               *}
{*         Mask: The file specification to search for.  *}
{*               May contain wildcards.                 *}
{*         Attr: File attribute to search for.          *}
{*         Proc: Procedure to process each found file.  *}
{*                                                      *}
{*      Output parameters:                              *}
{*         ErrorCode: Contains the final error code.    *}
{*                                                      *}
{*  Taken from Turbo Technix #6, 1988.                  *}
{*                                                      *}
{*  Originally written by                               *}
{*     Neil Rubenking                                   *}
{*                                                      *}
{*  Compiled and rewritten by                           *}
{*     Jens Bruun, Borland Scandinavia                  *}
{*                                                      *}
{********************************************************}

INTERFACE

USES DOS;

TYPE
   ProcType    = PROCEDURE (VAR S: SearchRec; P: PathStr);
   FullNameStr = STRING[12];

PROCEDURE SearchEngine( Mask: PathStr;
                        Attr: BYTE;
                        Proc: ProcType;
               VAR ErrorCode: BYTE );

FUNCTION GoodDirectory(S: SearchRec): BOOLEAN;
PROCEDURE ShrinkPath(VAR Path: PathStr);
PROCEDURE ErrorMessage(ErrCode: BYTE);

PROCEDURE SearchEngineAll( Path: PathStr;
                           Mask: FullNameStr;
                           Attr: BYTE;
                           Proc: ProcType;
                  VAR ErrorCode: BYTE );

IMPLEMENTATION

VAR
   EngineMask: FullNameStr;
   EngineAttr: BYTE;
   EngineProc: ProcType;
   EngineCode: BYTE;

PROCEDURE SearchEngine;
VAR
   S  : SearchRec;
   P  : PathStr;
   Ext: ExtStr;
BEGIN
   FSplit(Mask,P,Mask,Ext);
   Mask:=Mask+ext;
   FindFirst(P+Mask,Attr,S);
   IF DosError<>0 THEN
   BEGIN
      ErrorCode:=DosError;
      Exit;
   END;
   WHILE DosError=0 DO
   BEGIN
      Proc(S,P);
      FindNext(S);
   END;
   IF DosError=18 THEN
      ErrorCode:=0
   ELSE
      ErrorCode:=DosError;
END;

FUNCTION GoodDirectory;
BEGIN
   GoodDirectory:=
      (S.name <> '.') AND
      (S.name <> '..') AND
      (S.Attr AND Directory = Directory);
END;

PROCEDURE ShrinkPath;
VAR
   P    : BYTE;
   Dummy: NameStr;
BEGIN
   FSplit(Path,Path,Dummy,Dummy);
   Dec(Path[0]);
END;

{$F+} PROCEDURE SearchOneDir(VAR S: SearchRec; P: PathStr); {$F-}
{ Recursive procedure to search one directory }
BEGIN
   IF GoodDirectory(S) THEN
   BEGIN
      P:=P+S.name;
      SearchEngine(P+'\'+EngineMask,EngineAttr,EngineProc,EngineCode);
      SearchEngine(P+'\*.*', Directory OR Archive,SearchOneDir,EngineCode);
   END;
END;

PROCEDURE SearchEngineAll;
BEGIN
   { Set up UNIT global variables for use in  }
   { recursive directory search procedure.    }
   EngineMask:=Mask;
   EngineProc:=Proc;
   EngineAttr:=Attr;
   SearchEngine(Path+Mask,Attr,Proc,ErrorCode);
   SearchEngine(Path+'*.*',Directory OR Attr,SearchOneDir,ErrorCode);
   ErrorCode:=EngineCode;
END;

PROCEDURE ErrorMessage;
BEGIN
   CASE ErrCode OF
      00:; { OK - no error }
      02: WRITELN('File not found');
      03: WRITELN('Path not found');
      05: WRITELN('Acces denied');
      06: WRITELN('Invalid handle');
      08: WRITELN('Not enough memory');
      10: WRITELN('Invalid environment');
      11: WRITELN('Invalid format');
      18:; { OK - merely "no more files" }
   ELSE
      WRITELN('ERROR #',ErrCode);
   END;
END;

END.