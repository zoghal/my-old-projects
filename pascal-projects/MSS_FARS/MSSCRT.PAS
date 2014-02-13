Unit Msscrt;
Interface
Uses
    dos,crt;
const
     part='@\';
Var
   X,Xx,Y :word;
   Startear_Menu,
   Startear_Popup,
   Menu,
   Gozeneh,
   End_Menu : Byte;
   Key      : BYTE;
   Trace    : Byte;
   R        : Registers;

Procedure Cadr ( L,R,U,D : Word; BC,TC : Byte );
Procedure WinCadr ( L,R,U,D : Word; Color,Win_Color : Byte );
Procedure Ajor ( L,R,U,D,T,B : Byte; C : Char );
Procedure Fwrite ( X,Y : ShortInt; BG, FG : Byte; Const S : String );
Procedure CurscrOn;
Procedure CurscrOff;
Function inkey : BYTE;
{Function Popup ( L,R,U,D,Color_Cadr,Bk_Win,Text_Color,Bk_Menu,Text_Menu,Tedad : Byte; Var A1 : Array Of String ) : String;}
Function MenuBar ( L,U,BK_Line,Text_Line,BK_Menu,Text_Menu,Tedad_G : Byte; Var A : Array Of String ) : String;
procedure inputSTr(x,y,text_color,back_color,in_text_color,in_back_color,tedad:byte;text:string;var buf:string);
procedure inputNUM(x,y,text_color,back_color,in_text_color,in_back_color,tedad:byte;text:string;var buf:longint);
Procedure Prompt( X,Y,BG,FG,HotChar:byte; var buf:array of string);
Implementation
{************************************************************************}
Procedure Cadr ( L,R,U,D : Word; BC,TC : Byte );
Var
   I,J : Word;
Begin
    Fwrite ( L,U,BC,TC,'Ú' );
    For I := L+1 To R-1 Do Fwrite ( I,U,BC,TC,'Ä' );
    Fwrite ( R,U,BC,TC,'¿' );
    For J := U+1 To D-1 Do Fwrite( L,J,BC,TC,'³' );
    For J := U+1 To D-1 Do Fwrite( R-L+L,J,BC,TC,'³' );
    Fwrite ( L,D,BC,TC,'À' );
    For I := L+1 To R-1 Do Fwrite ( I,D,BC,TC,'Ä' );
    Fwrite ( R,D,BC,TC,'Ù' );
End;
{****************************************************************************}
Procedure WinCadr ( L,R,U,D : Word; Color,Win_Color : Byte );
Begin
     ajor (l+2,r+2,u+1,d+1,8,0,' ');
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
Function inkey:BYTE;
var s:byte;
begin
r.ah := 0;
intr ( $16 , r );
inkey :=r.ah;
end;
{****************************************************************************}
(*Function Popup ( L,R,U,D,Color_Cadr,Bk_Win,Text_Color,Bk_Menu,Text_Menu,Tedad : Byte; Var A1 : Array Of String ) : String;
Var
   I,ww : Byte;
Procedure Start;
Var
   I,ww: Byte;
Begin
     WinCadr ( L,R,U,D,BK_Win,Color_Cadr );
     For I := 1 To Tedad Do
      begin
       if a1[i]=part then
         BEGIN
          Fwrite (  L  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ã');
          FOR ww:=L+1 TO R-1 DO Fwrite (  ww  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ä');
          Fwrite (  R  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'´');
         END
         else Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
      end;
     Fwrite ( l + 2,u + 1,BK_Menu,Text_Menu,A1[ 1 ]);
     Y := 2;
     Startear_Popup := 1;
     Menu := 1;
END;
                        {******************}
Begin
     If Startear_Popup = 0 Then Start;
     Key := inkey;
     If key =  80  Then
      Begin
       If Y = Tedad + 1 Then Y := 1;
         For I := 1 To Tedad Do
         begin
       if a1[i]=part then
         BEGIN
          Fwrite (  L  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ã');
          FOR ww:=L+1 TO R-1 DO Fwrite (  ww  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ä');
          Fwrite (  R  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'´');
         END
         else Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
      end;
   Y := Y + 1;
       IF A1[Y-1] =part THEN Y:=Y+1;
       Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_Menu,Text_Menu,A1[ y - 1 ]);
       Menu := Y - 1;
      End;
        {*********************************}
     IF KEY=72 THEN
      BEGIN
       IF Y=2 THEN Y:=TEDAD+2;
          For I := 1 To Tedad Do
      begin
       if a1[i]=part then
         BEGIN
          Fwrite (  L  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ã');
          FOR ww:=L+1 TO R-1 DO Fwrite (  ww  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'Ä');
          Fwrite (  R  , ( ( u - 1 ) + I + 1 ) ,BK_Win,COLOR_CADR,'´');
         END
         else Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
      end;
      Y:=Y-1;
        IF A1[Y-1] =part THEN Y:=Y-1;
         Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_MENU,Text_MENU,A1[y-1]);
       Menu:=Y-1;
      END;
END; *)
{*****************************************************************************}
Function MenuBar ( L,U,BK_Line,Text_Line,BK_Menu,Text_Menu,Tedad_G : Byte; Var A : Array Of String ) : String;
Var
   I,Temp:Byte;
Procedure Start;
Var
   I : Byte;
Begin
     Fwrite ( L,U,BK_Line,Text_Line,'                                                                                ' );
     Fwrite ( L+1,U,BK_Line,Text_Line,' ' + A[ 1 ] + ' ' );
     Xx := 2;
      For I := 2 To Tedad_G Do
      Begin
       Xx := Xx + Length ( ' ' + A[ I-1 ] + ' ' );
       Fwrite ( Xx,U,BK_Line,text_Line, ' ' + A[ I ] + ' ' );
       End;
     X := 2;
     Startear_Menu := 1;
     Gozeneh := 0;
     End_Menu := 0;
     Trace := 0;
     For I := 1 To Tedad_G Do End_Menu:=End_Menu+Length(' ' + A[ I ] + ' ' );
End;
Begin
     If Startear_Menu = 0 Then Start;
     Key := Inkey;
     If Key = 77  Then
      Begin
       If Trace = 1 then X := X + Length ( ' ' + a[ Gozeneh ] + ' ' );
       If Gozeneh = Tedad_G Then Gozeneh := 0;
       If X = End_Menu + 2 Then X := 2;
       Gozeneh := Gozeneh + 1;
       Fwrite ( L+1,U,BK_Line,Text_Line,' ' + A[ 1 ] + ' ' );
       xx:=2;
       For I:=2 To Tedad_G Do
        Begin
         Xx := Xx + Length ( ' ' + a[ I-1 ] + ' ' );
         Fwrite ( Xx,U,BK_Line,text_Line, ' ' + A[ I ] + ' ' );
        End;
       Fwrite ( X,U,BK_Menu,Text_Menu, ' ' + A[ Gozeneh ] + ' ' );
       Menu := Gozeneh;
       X := X + Length ( ' ' + a[ Gozeneh ] + ' ' );
       Trace := 2;
      End;
{**/*/*/*/*/*/*/*/-/+*/-*/-/-/-/-/-/-/-/-/-/}
     If Key= 75  Then
      Begin
       If Trace = 2 then X := X - Length ( ' ' + a[ Gozeneh ] + ' ' );
       If Gozeneh = 0 Then Gozeneh := Tedad_G + 1;
       If Gozeneh = 1 Then Gozeneh := Tedad_G +1;
       If X = 2 Then X := End_Menu+2;
       Gozeneh := Gozeneh - 1;
       X := X - Length ( ' ' + a[ Gozeneh ] + ' ' );
       Fwrite ( L+1,U,BK_Line,Text_Line,' ' + A[ 1 ] + ' ' );
       Xx:=2;
       For I:=2 To Tedad_G Do
        Begin
         Xx := Xx + Length ( ' ' + a[ I-1 ] + ' ' );
         Fwrite ( Xx,U,BK_Line,text_Line, ' ' + A[ I ] + ' ' );
        End;
       Fwrite ( X,U,BK_Menu,Text_Menu, ' ' + A[ Gozeneh ] + ' ' );
       Menu:=GOZENEH;
       Trace:=1;
      End;
End;
{*************************************************************************}
procedure inputSTR(x,y,text_color,back_color,in_text_color,in_back_color,tedad:byte;text:string;var buf:string);
var i,temp:byte;
    a:char;
    temp1:string;
begin
     fwrite(x,y,back_color,text_color,text);
     temp:=length(text);
     x:=x+1;
     for i:=0 to tedad do
     fwrite(x+temp+i,y,in_back_color,in_back_color,'Û');
     I:=0;
     temp1:='';
     while i<=10 do
           begin
                a:=readkey;
                case ord(a) of
                     13:break;
                end;
                fwrite(x+temp+i,y,in_back_color,in_text_color,a);
                i:=i+1;
                temp1:=temp1+a;
           end;
     buf:=temp1;
end;
{*************************************************************************}
procedure InputNUM(x,y,text_color,back_color,in_text_color,in_back_color,tedad:byte;text:string;var buf:longint);
var I,Temp:byte;
    d:integer;
    a:char;
    temp1:string;
begin
     fwrite(x,y,back_color,text_color,text);
     temp:=length(text);
     x:=x+1;
     for i:=0 to tedad do fwrite(x+temp+i,y,in_back_color,in_back_color,'Û');
     I:=0;
     temp1:='';
     while i<=TEDAD do
       begin
         a:=readkey;
         IF ORD(A)=13 THEN break;
         case a of
           '0'..'9' :BEGIN
                          fwrite(x+temp+i,y,in_back_color,in_text_color,a);
                          i:=i+1;
                          temp1:=temp1+a;
                     END;
         end;
       end;
VAL(temp1,buf,d);
end;
Procedure Prompt( X,Y,BG,FG,HotChar:byte; var buf:array of string);
var test,temp:string;
    b,i,s,s1:byte;
    t:boolean;
begin
B:=LENGTH(BUF[0]);
writeln('b==',b);
temp:=buf[0];
writeln('temp==',temp);
test:=temp;
S:=POS('~',BUF[0]);
writeln('s==',s);
delete(temp,1,s);
writeln('temp delete==',temp);
s1:=pos('~',temp);
writeln('s1==',s1);

for i:=1 to b do
begin
if (i>=s) or (i<=s1) then fwrite(X,Y,BG,HotChar,test[i])
else fwrite(X+i,Y,BG,FG,test[i])
end;
end;
end.

