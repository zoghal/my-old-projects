{$Q-,R-,S-,V-,Y-,L-,I-,F+}
{$M 1024,0,0}
Uses
    Dos,msscrt,strings;
type
    mm=array [1..4000] of byte;

CONST
     Eng : Array [1..45] Of Byte=(30,48,46,32,18,33,34,35,23,36,37,38,
                                  50,49,24,25,16,19,31,20,22,47,17,45,
                                  21,44,26,27,43,40,39,51,41,
                                  2,3,4,5,6,7,8,9,10,11,12,13);

{*****************************KEY ALT****************************************}
     Normal_ScanCode_Key_BY_ALT : Array [ 1..78 ] Of Byte = ( 1,59,60,61,62,63,64,65,66,67,68,87,88,{Esc & f1..12}
                                                              41,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,   {1...9 & a..}
                                                        {W |} 17{|},18,19,20,21,22,23,24,25,26,27,28,       {.}
                                                              30,31,32,33,34,35,36,37,38,39,40,43,       {.}
                                                              86,44,45,46,47,48,49,50,51,52,53,          {z}
                                                   {Space |}  57{|},85,71,73,83,79,81,
                                                                 {ins,hom,p_u,del,..,down}
                                                              72,80,75,77,
                                                              {up,dow,lef,rig}
                                                              55,74,78 );
                                                              {*,-,+,calcu..}
     Alt_AsciiCode_key : Array [1..78] Of Byte= (00,104,105,106,107,108,109,110,111,112,113,00,00,
       {Alt+Key ....}                          00,120,121,122,123,124,125,126,127,128,129,130,131,00,00,16,
                                               17,18,19,20,21,22,23,24,25,26,27,28,
                                               30,31,32,33,34,35,36,37,38,39,40,43,
                                               86,44,45,46,47,48,49,50,51,52,53,
                                               00,00,00,00,00,00,00,
                                               00,00,00,00,
                                               00,00,00);

{***************************** CTRL KEY *************************************}
     ScanCode_AsciiCode : Array [ 1..35 ] Of Byte = ( 16,17,18,19,20,21,22,23,24,25,26,27,
                                                      30,31,32,33,34,35,36,37,38,39,40,43,
                                                      86,44,45,46,47,48,49,50,51,52,53 );

     Ctrl_AsciiCode_Key : Array [ 1..35 ] Of Byte = ( 17,23,5,18,20,25,21,9,15,16,27,29,
                                                      1,18,4,6,7,8,10,11,12,00,00,28,
                                                      28,26,24,3,22,2,14,13,00,00,00 );
Var
 upperchar : array [1..10] of char;
 chasb,alaf:byte;
 monitor : mm absolute $b800:0;
 P1,
 P2 : PathStr;
 buf:mm;
 f:file;
 Uninstall   : Procedure;
 Last2,
 Last3,
 Current,
 Temp,
 I,i2,Y,
 Startear_Popup,
 Menu,
 Gozeneh,key   : Byte;
 ok,ok1,
 IntNo,
 Scroll,
 ShiftL,
 ShiftR,
 F12,
 NumLock,
 CapsLock,
 Alt,
 Ctrl,
 Test, ExitCode,test2: Boolean;
 Farsi  : String;
{****************************************************************************}
{***************************** Start Procedure ******************************}
{****************************************************************************}

{**************************function  menu popup******************************}
Procedure InstallFont ( F: string);
Begin
  SwapVectors;
  Exec(FExpand(P2),F);
  SwapVectors;
End;
Function Popup ( L,R,U,D,Color_Cadr,Bk_Win,Text_Color,Bk_Menu,Text_Menu,Tedad : Byte; Var A1 : Array Of String ) : String;
Var
   I : Byte;
Procedure Start;
Var
   I : Byte;
Begin
     wincadr (17,63,3,7,7,15);
     Fwrite(24,4,7,0,' É/Ä ˘ã°ã®ã˜ M.S.S •ëã® ¸ã®§ëãÍ ');
     fwrite(20,6,7,0,'( íëÛÏ˜ê ˆëó®§˜˚ ) ¸§ó¯˛ïıëÓ ñëÏ˛Ïüó •Ó§ı ');
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
     Key := current;
     If key =  80  Then
      Begin
       If Y = Tedad + 1 Then Y := 1;
       For I := 1 To Tedad Do Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[ I ]);
       Y := Y + 1;
       Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_Menu,Text_Menu,A1[ y - 1 ]);
       Menu := Y - 1;
      End;
        {*********************************}
     IF KEY=72 THEN
      BEGIN
       IF Y=2 THEN Y:=TEDAD+2;
       FOR I:=1 TO TEDAD DO Fwrite ( ( l + 2 ),( ( u - 1 ) + I + 1 ),BK_Win,Text_Color,A1[I]);
       Y:=Y-1;
       Fwrite ( ( l + 2 ),( ( u + 1 ) + Y - 2 ),BK_MENU,Text_MENU,A1[y-1]);
       Menu:=Y-1;
      END;
END;
{**************************procedure program menu_main **********************}
procedure program_menu;
Var
 m1:array [0..13] of string;
   I : Byte;
   buf1:mm;

begin
m1[1]:=' Å Ì•ë˜ Ø° ';
m1[2]:=' Ç Ì•ë˜ Ø° ';
m1[3]:=' Å §ï¯ó Ø° ';
m1[4]:=' Ç §ï¯ó Ø° ';
m1[5]:=' É §ï¯ó Ø° ';
m1[6]:=' Ñ §ï¯ó Ø° ';
m1[7]:=' Ö §ï¯ó Ø° ';
m1[8]:=' Ü §ï¯ó Ø° ';
m1[9]:=' ˘ó®Óã™ Ø° ';
m1[10]:=' ¸ãÍ¯ãÓ Ø° ';
m1[11]:='  ÌããıããÓ  ';
Curscroff;
Popup ( 33,47,10,22,15,7,0,1,15,11,m1);
Curscron;
if key=28 then
begin
if menu=1 then InstallFont('Font1');
if menu=2 then InstallFont('Font1');
if menu=3 then InstallFont('Font1');
if menu=4 then InstallFont('Font1');
if menu=5 then InstallFont('Font1');
if menu=6 then InstallFont('Font1');
if menu=7 then InstallFont('Font1');
if menu=8 then InstallFont('Font1');
if menu=9 then InstallFont('Font1');
if menu=10 then InstallFont('Font1');
if menu=11 then ;
end;
end;
{-+-+-+-+-+-+-+-+-+-+-+-+Story Key In Buffer KeyBorad-+-+-+-+-+-+-+-+-+-+-+-+}
Procedure SetToBuff ( Scan_AsciiCode : Word );
Begin
 If Scan_AsciiCode = 0 Then
  Exit;
 If MemW[$0040:$001C] >= $003C Then
  Begin
   If MemW[$0040:$001A] = $001E Then
    Begin
     Write ( #7 );
    End
   Else
    Begin
     MemW[$0040:MemW[$0040:$001C]] := Scan_AsciiCode;
     MemW[$0040:$001C] := $001E;
    End;
  End
 Else
  Begin
   If MemW[$0040:$001C] = MemW[$0040:$001A] - 2 Then
    Write ( #7 )
   Else
    Begin
     MemW[$0040:MemW[$0040:$001C]] := Scan_AsciiCode;
     Inc ( MemW[$0040:$001C], 2 );
    End;
  End;
End;
{-+-+-+-+-+-+-+-+-+-+-+- Change The eng to farsiLow +-+-+-+-+-+-+-+-+-+-+-+-+}
Function Farslow(Ch:Byte):Byte;
Begin
 Farsi := '™£•˛ôìÛë˙ó˜ıé¢°üÆÏ®Í„§¨ØÁ‡õù¶Ó¯ïÅÇÉÑÖÜáàâÄ-=';
 For I := 1 To 45 Do                             { ˘˙˙˚ êëÁ„Ó }
 If Ch=Eng[i] Then
    if chasb=0 then
    begin
    case eng[i] of
    22 :  BEGIN
           SetToBuff(Ord('‰'));
           SetToBuff(19);
           chasb :=1;
           test2:=true;
           END;
    23 : BEGIN
           SetToBuff(Ord('˚'));
           SetToBuff(19);
           chasb :=1;
           test2:=true;
         END;
    21 : BEGIN
           SetToBuff(Ord('Ë'));
           SetToBuff(19);
           chasb :=1;
           test2:=true;
         END;
    35 : BEGIN
       SetToBuff(Ord('ê'));
           SetToBuff(19);
           chasb :=1;
           test2:=true;
           END;
    else
           SetToBuff(Ord(farsi[i]));
           SetToBuff(19);
           chasb :=1;
           test2:=true;
    end;
    end
 {Begin
     if (eng[i]=35) and (last3 in [43,35,51,49,48,47,46]) then
     begin
     chasb :=1;
     SetToBuff(Ord('ê'));
     SetToBuff(19);
     end}
     else
       begin
            chasb :=1;
            SetToBuff(Ord(Farsi[i]));
            SetToBuff(19);
       End;
{    end;}
 Temp:=Ch;
End;
{-+-+-+-+-+-+-+-+-+-+-+- Change The eng to farsiUp -+-+-+-+-+-+-+-+-+-+-+-+-+}
Function FarsUp(Ch:Byte):Byte;
BEGIN
 Farsi :='©Ú•¸òíÒê˘ñˆÙè¢†û≠ÎßÈ·§´ØÂ‡öú|ÔÌäî!@#$%^&*()ã+';
 For I := 1 To 45 Do
   If Ch=Eng[i] Then
   Begin
    SetToBuff(Ord(Farsi[i]));
    SetToBuff(19);
   End;
 Temp:=Ch;
End;

Procedure RepeatMess; Interrupt;
Begin
 InLine ( $9C );
end;
{-+-+-+-+-+-+-+-+-+-+-+- Check Kay In Press Or Uppress -+-+-+-+-+-+-+-+-+-+-+}
Procedure Check_Kay; Interrupt;
Begin
 Mem[$0040:$0019] := 5;
 Last3 := Last2;
 Last2 := Current;
 Current := Port[$60];
 Port[$61] := Port[$61] Or  128;
 Port[$61] := Port[$61] And 127;
  Case  Current Of
        70       :  Begin
                     Mem[$0040:$0017] := Mem[$0040:$0017] XOr 16;  (* ScrollLock *)
                     Mem[$0040:$0018] := Mem[$0040:$0018] Or 16;   (* ScrollLock Press *)
                     Scroll := Not Scroll;
                    END;
        70 + 128 :  Mem[$0040:$0018] := Mem[$0040:$0018] And (255 - 16);   (* ScrollLock UnPress *)
        69       : Begin
                    Mem[$0040:$0017] := Mem[$0040:$0017] XOr 32;  (* NumLock *)
                    Mem[$0040:$0018] := Mem[$0040:$0018] Or 32;   (* NumLock Press *)
                    NumLock := Not NumLock;
                   end;
        65 + 128 : Mem[$0040:$0018] := Mem[$0040:$0018] And 223;  (* NumLock Unpress *)
        58       : Begin
                    Mem[$0040:$0017] := Mem[$0040:$0017] XOr 64;  (* CapsLock *)
                    CapsLock := Not CapsLock;
                    Mem[$0040:$0018] := Mem[$0040:$0018] Or 64;   (* CapsLock Press *)
                   End;
        58 + 128 : Mem[$0040:$0018] := Mem[$0040:$0018] And 191;  (* CapsLock Unpress *)
        88       : begin
                   if  f12 =false then buf:=monITOR;
                   if  f12 =TRUE then
                      begin
                           monITOR:=buf;
                           Startear_Popup := 0;
                      end;
                    f12 :=not f12;
                   END;
        54       :  ShiftR:= True;
        42       :  ShiftL:= True;
        54+128   :  ShiftR:=False;
        42+128   :  ShiftL:=False;

        56       :  Alt:= True;
        56+128   :  Alt:=False;

        29       :  Ctrl := True;
        29+128   :  Ctrl := False;
  End;
  {*/*/*/*/*/*/*/*/*/*/*}
  ok :=false;
  ok1 :=false;
{ If Ctrl And Alt  Then
  Begin
   SetIntVec ( $9, Addr ( Uninstall ) );
   r.ah :=$49;
   r.es := PREFIXSEG;
   intr($21,r);
  End;}

   If (f12 = true)   Then
   begin
   program_menu;
      Port[$20] := $20;
      ok1:=true;
  End;
 If  ( Scroll = True )  Then
  Begin
   If (Alt = False) And ( ctrl = False ) and (f12 = false) Then
    Begin
     If (ShiftL = False) and (Shiftr = False) Then FarsLow( Current );
      If (ShiftL = true) or (Shiftr = true)Then FarsUp( Current );
        Case Current Of
             14       : Settobuff( 8 );  {BackSpace}
             82       : Settobuff( ( 82 Shl 8 ) + 0 ); {Insert}
             83       : Settobuff( ( 83 Shl 8 ) + 0 ); {del}
             71       : Settobuff( ( 71 Shl 8 ) + 0 ); {Home}
             79       : Settobuff( ( 79 Shl 8 ) + 0 ); {End}
             73       : Settobuff( ( 73 Shl 8 ) + 0 ); {Page Up}
             81       : Settobuff( ( 81 Shl 8 ) + 0 ); {Page Down}
             72       : Settobuff( ( 72 Shl 8 ) + 0 ); {Up}
             80       : Settobuff( ( 80 Shl 8 ) + 0 ); {Down}
             75       : Settobuff( ( 75 Shl 8 ) + 0 ); {Left}
             77       : Settobuff( ( 77 Shl 8 ) + 0 ); {Rghit}
             59       : Settobuff( ( 59 Shl 8 ) + 0 ); {F1}
             60       : Settobuff( ( 60 Shl 8 ) + 0 ); {F2}
             61       : Settobuff( ( 61 Shl 8 ) + 0 ); {F3}
             62       : Settobuff( ( 62 Shl 8 ) + 0 ); {F4}
             63       : Settobuff( ( 63 Shl 8 ) + 0 ); {F5}
             64       : Settobuff( ( 64 Shl 8 ) + 0 ); {F6}
             65       : Settobuff( ( 65 Shl 8 ) + 0 ); {F7}
             66       : Settobuff( ( 66 Shl 8 ) + 0 ); {F8}
             67       : Settobuff( ( 67 Shl 8 ) + 0 ); {F9}
             68       : Settobuff( ( 68 Shl 8 ) + 0 ); {F10}
             28       : Settobuff( 13 ); {Enter}
             1        : Settobuff( 27 ); {Esc}
             15       : Settobuff( 9 ); {Tab}
             57       : Begin   {Space}
                          If Temp = 00 Then
                            Begin
                              Settobuff( 32 );
                              Settobuff( 19 );
                              temp :=0;
                              chasb:=0;
                              alaf :=0;
                            End
                          Else
                            Begin
                              Settobuff( 7 );
                              Settobuff( FarsUp( last3 ) );
                              Settobuff( 32 );
                              Settobuff( 19 );
                              temp :=0;
                              chasb:=0;
                              alaf :=0;
                            End;
                        End;
    End;
  End;
{*******************************program menu*********************************}
{*******************************alt check************************************}
   If (Alt = True)  and (f12 = false)then
     begin
       For I := 1 To 78 Do
         If Current = Normal_ScanCode_Key_BY_ALT [ I ] Then  Settobuff( ( Alt_AsciiCode_Key [ I ] shl 8 ) + 0 ); {F1}
     end;
{*********************************** Ctrl check *****************************}
   If (Ctrl = True) and (f12 = false)Then
     Begin
      Test := False;
       For I := 1 To 35 Do
         If Current =  ScanCode_AsciiCode [ I ] Then
           Begin
             Settobuff( ctrl_AsciiCode_key[I] ); {F1}
             Test := True;
           End;
       If Test = False Then
         Begin
           Case Current Of
                3        : Settobuff( ( 3 Shl 8 ) + 0 ); {2}
                7        : Settobuff( 30 ); {8}
                55       : Settobuff( ( 114 Shl 8 ) + 0 );{*}
                12       : Settobuff( 31 );{-}
                59       : Settobuff( ( 94 Shl 8 ) + 0 ); {F1}
                60       : Settobuff( ( 95 Shl 8 ) + 0 ); {F2}
                61       : Settobuff( ( 96 Shl 8 ) + 0 ); {F3}
                62       : Settobuff( ( 97 Shl 8 ) + 0 ); {F4}
                63       : Settobuff( ( 98 Shl 8 ) + 0 ); {F5}
                64       : Settobuff( ( 99 Shl 8 ) + 0 ); {F6}
                65       : Settobuff( ( 100 Shl 8 ) + 0 ); {F7}
                66       : Settobuff( ( 101 Shl 8 ) + 0 ); {F8}
                67       : Settobuff( ( 102 Shl 8 ) + 0 ); {F9}
                68       : Settobuff( ( 103 Shl 8 ) + 0 ); {F10}
                75       : Settobuff( ( 115 Shl 8 ) + 0 ); {Left}
                77       : Settobuff( ( 116 Shl 8 ) + 0 ); {Right}
                83       : Settobuff( ( 255 Shl 8 ) + 0 ); {del}
                71       : Settobuff( ( 119 Shl 8 ) + 0 ); {Home}
                79       : Settobuff( ( 117 Shl 8 ) + 0 ); {End}
                73       : Settobuff( ( 132 Shl 8 ) + 0 ); {Page Up}
                81       : Settobuff( ( 118 Shl 8 ) + 0 ); {Page Down}
                28       : Settobuff( 10 ); {Enter}
                1        : Settobuff( 27 ); {Esc}
                14+128   : Settobuff( 127 );  {BackSpace}
           End;
         End;
     End;
     ok :=true;
   Port[$20] := $20;
  End;
if (ok=false) and (ok1 =false)  then
   Begin
   Inline ( $9C );
   uninstall;
  End;
 End;
{****************************************************************************}
{*****************************  End  Procedure ******************************}
{****************************************************************************}

{****************************************************************************}
{************************** Start Main Program ******************************}
{****************************************************************************}
Begin
 If Paramcount =0 Then
   begin
 If Mem[$0040:$0019] = 5 Then
 begin
 wincadr(20,60,8,12,7,0);
 fwrite (25,10,7,1+128,' program risedented in memory ');
  Halt;
  end;
  P1 := FSearch('mss.ovl',GetEnv('PATH'));
  P2 := FSearch('fontl.exe',GetEnv('PATH'));
 if (p1 = '') then
 BEGIN
      if (P2 = '') then
        BEGIN
           writeln('file " mss.ovl " not found ');
           writeln('program halted ');
           HALT;
        END;

       writeln('file " Fontl.exe " not found ');
       writeln('program halted ');
       HALT;
  END
  else
  BEGIN
     Write('TEST IN PROGRAM');
     WriteLN('     ','TEST O.K');
  END;
assign(f,FExpand(P1));
SETFATTR(F,0);
rename(f,'MSS1.EXE');
 P1 := FSearch('mss1.EXE',GetEnv('PATH'));
SwapVectors;
Exec(FExpand(P1),'');
SwapVectors;
 P1 := FSearch('mss1.EXE',GetEnv('PATH'));
assign(f,FExpand(P1));
rename(f,'MSS.OVL');
InstallFont('Font1');
  Mem[$0040:$0019] := 5;
  Current := 0;
  Temp := 0;
  chasb :=1;
  alaf := 1;
  IntNo := False;
  Scroll := False;
  ShiftR := False;
  Shiftl := False;
  NumLock := False;
  test2:=false;
  CapsLock := False;
  Alt := False;
  Ctrl := False;
  ok :=false;
  ok1 :=false;
  f12 := false;
  GetIntVec( $9, @Uninstall );
  SetIntVec( $9, Addr ( Check_Kay ) );
  MemW[$0040:$001A] := $001E;
  MemW[$0040:$001C] := $001E;
  Keep ( 0 );
  end
  else
  if paramstr(1) = ('/U') then
    begin
   SetIntVec ( $9, Addr ( Uninstall ) );
   r.ah :=$49;
   r.es := PREFIXSEG;
   intr($21,r);
    end
    else writeln( ' NO PARAMETRS IN PROGRAM ');


End.
