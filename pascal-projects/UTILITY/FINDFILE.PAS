Uses
    Dos, Crt;
Type
    FName = String[12];
VAR
   TEDAD_FILE  :  WORD;
Function FindFile ( Dir : DirStr; Name : FName ) : String;
 Var
    R : SearchRec;
 Begin
      FindFirst ( Dir + Name, AnyFile, R );
      While DosError = 0 do
            Begin
                 GOTOXY(1,1);
                 CLRSCR;
                 Write( Dir + R.Name );
                 FindNext(R);
                 TEDAD_FILE:=TEDAD_FILE+1;
            end;
      FindFirst ( Dir +'*.*', ANYFILE, R );
      While DosError = 0 Do
            Begin
                 If ( R.Attr And Directory = Directory ) And
                    ( R.Name <> '.' ) And ( R.Name <> '..' ) Then
                    FindFile := FindFile ( Dir + R.Name + '\', Name );
                 FindNext ( R );
            End;
 end;
(* ************************************************************************ *)
Begin
     TEDAD_FILE:=0;
     clrscr;
     FindFile ( 'd:\', '*.exe' );
     GOTOXY(1,2);
     WRITELN ('TEDAD FLIRE>>',TEDAD_FILE);
     WriteLn ( 'Press Enter To Exit. . .' );
     ReadLn;
End.