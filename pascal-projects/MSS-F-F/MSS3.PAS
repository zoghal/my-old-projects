Unit Mss3;
Interface
Uses
    dos,crt;
Var
   X,Xx,Y,
   Startear_Menu,
   Startear_Popup,
   Menu,
   Gozeneh,
   End_Menu : Byte;
   Key      : Char;
   Trace    : Byte;
   R        : Registers;

Procedure Cadr ( L,R,U,D : Word; BC,TC : Byte );
Procedure WinCadr ( L,R,U,D : Word; Color,Win_Color : Byte );
Procedure Ajor ( L,R,U,D,T,B : Byte; C : Char );
Procedure Fwrite ( X,Y : ShortInt; BG, FG : Byte; Const S : String );
Procedure CurscrOn;
Procedure CurscrOff;
Function Popup ( L,R,U,D,Color_Cadr,Bk_Win,Text_Color,Bk_Menu,Text_Menu,Tedad : Byte; Var A1 : Array Of String ) : String;
Function MenuBar ( L,U,BK_Line,Text_Line,BK_Menu,Text_Menu,Tedad_G : Byte; Var A : Array Of String ) : String;
Implementation
{************************************************************************}
Procedure Cadr ( L,R,U,D : Word; BC,TC : Byte );
Var
   I,J : Word;
Begin
    Fwrite ( L,U,BC,TC,'É' );
    For I := L+1 To R-1 Do Fwrite ( I,U,BC,TC,'Í' );
    Fwrite ( R,U,BC,TC,'»' );
    For J := U+1 To D-1 Do Fwrite( L,J,BC,TC,'º' );
    For J := U+1 To D-1 Do Fwrite( R-L+L,J,BC,TC,'º' );
    Fwrite ( L,D,BC,TC,'È' );
    For I := L+1 To R-1 Do Fwrite ( I,D,BC,TC,'Í' );
    Fwrite ( R,D,BC,TC,'¼' );
End;
{****************************************************************************}
Procedure WinCadr ( L,R,U,D : Word; Color,Win_Color : Byte );
Begin
     Ajor ( L,R,U,D,Color,Win_Color,'Û' );
     Cadr ( L,R,U,D,Color,Win_Color );
End;
{****************************************************************************}
Procedure Ajor ( L,R,U,D,T,B : Byte; C : Char );
Var
   X,Y : Byte;
Begin
     For X:=L To R Do
      For Y:=U To D Do
       Fwrite ( X,Y,B,T,C );
End;
{****************************************************************************}
Procedure Fwrite ( X,Y : ShortInt; BG, FG : Byte; Const S : String );
var
   SegC, OfsC : Word;
   I, EndStr  : Byte;
begin
     SegC   := $B800;
     OfsC   := ( Y - 1 ) * 160 + X * 2 - 2;
     EndStr := Ord ( S[0] );
     For I  := 1 To EndStr Do
      Begin
       MemW[SegC:OfsC] := ( BG ShL 4 + FG ) ShL 8 + Ord ( S[i] );
       Inc ( OfsC, 2 );
      End;
end;
{****************************************************************************}
Procedure CurscrOn;
begin
R.AH := 01;
r.ch :=5;
R.CL :=6;
Intr ( $10 , r );
end;
{****************************************************************************}
Procedure CurscrOff;
begin
R.AH := 01;
r.ch :=9;
R.CL :=0;
Intr ( $10 , r );
end;
{****************************************************************************}
{****************************************************************************}
Function Popup ( L,R,U,D,Color_Cadr,Bk_Win,Text_Color,Bk_Menu,Text_Menu,Tedad : Byte; Var A1 : Array Of String ) : String;
Var
   I : Byte;
Procedure Start;
Var
   I : Byte;
Begin
     WinCadr ( L,R,U,D,BK_Win,Color_Cadr );
     For I := 1 To Tedad Do Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
     Fwrite ( l + 2,u + 1,BK_Menu,Text_Menu,A1[ 1 ]);
     Y := 2;
     Startear_Popup := 1;
     Menu := 1;
END;
                        {******************}
Begin
     If Startear_Popup = 0 Then Start;
     Key := Readkey;
     If key = Chr ( 80 ) Then
      Begin
       If Y = Tedad + 1 Then Y := 1;
       For I := 1 To Tedad Do Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
       Y := Y + 1;
       Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_Menu,Text_Menu,A1[ y - 1 ]);
       Menu := Y - 1;
      End;
        {*********************************}
     IF KEY=CHR(72) THEN
      BEGIN
       IF Y=2 THEN Y:=TEDAD+2;
       FOR I:=1 TO TEDAD DO Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[I]);
       Y:=Y-1;
       Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_MENU,Text_MENU,A1[y-1]);
       Menu:=Y-1;
      END;
END;
{*****************************************************************************}
Function MenuBar ( L,U,BK_Line,Text_Line,BK_Menu,Text_Menu,Tedad_G : Byte; Var A : Array Of String ) : String;
Var
   I,Temp:Byte;
Procedure Start;
Var
   I : Byte;
Begin
     Fwrite ( L,U,BK_Line,Text_Line,'                                                                                ' );
     Fwrite ( L,U,BK_Line,Text_Line,'  ' + A[ 1 ] + '  ' );
     xx := 1;
     For I := 2 To Tedad_G Do
      Begin
       Xx := Xx + Length ( '  ' + A[ I ] + '  ' );
       Fwrite ( Xx,U,BK_Line,text_Line, '  ' + A[ I ] + '  ' );
      End;
     X := 1;
     Startear_Menu := 1;
     Gozeneh := 0;
     End_Menu := 0;
     Trace := 0;
     For I := 1 To Tedad_G Do End_Menu:=End_Menu+Length('  ' + A[ I ] + '  ' );
End;
Begin
     If Startear_Menu = 0 Then Start;
     Key := Readkey;
     If Key = Chr ( 77 ) Then
      Begin
       If Trace = 1 then X := X + Length ( '  ' + a[ Gozeneh ] + '  ' );
       If Gozeneh = Tedad_G Then Gozeneh := 0;
       If X = End_Menu + 1 Then X := 1;
       Gozeneh := Gozeneh + 1;
       Fwrite ( L,U,BK_Line,Text_Line,'  ' + A[ 1 ] + '  ' );
       xx:=1;
       For I:=2 To Tedad_G Do
        Begin
         Xx := Xx + Length ( '  ' + a[ i ] + '  ' );
         Fwrite ( Xx,U,BK_Line,text_Line, '  ' + A[ I ] + '  ' );
        End;
       Fwrite ( X,U,BK_Menu,Text_Menu, '  ' + A[ Gozeneh ] + '  ' );
       Menu := Gozeneh;
       X := X + Length ( '  ' + a[ Gozeneh ] + '  ' );
       Trace := 2;
      End;
{**/*/*/*/*/*/*/*/-/+*/-*/-/-/-/-/-/-/-/-/-/}
     If Key=Chr ( 75 ) Then
      Begin
       If Trace = 2 then X := X - Length ( '  ' + a[ Gozeneh ] + '  ' );
       If Gozeneh = 1 Then Gozeneh := Tedad_G + 1;
       If X = 1 Then X := End_Menu + 1;
       Gozeneh := Gozeneh - 1;
       X := X - Length ( '  ' + a[ Gozeneh ] + '  ' );
       Fwrite ( L,U,BK_Line,Text_Line,'  ' + A[ 1 ] + '  ' );
       Xx:=1;
       For I:=2 To Tedad_G Do
        Begin
         Xx := Xx + Length ( '  ' + a[ i ] + '  ' );
         Fwrite ( Xx,U,BK_Line,text_Line, '  ' + A[ I ] + '  ' );
        End;
       Fwrite ( X,U,BK_Menu,Text_Menu, '  ' + A[ Gozeneh ] + '  ' );
       Menu:=GOZENEH;
       Trace:=1;
      End;
End;
END.