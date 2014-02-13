Uses
    Dos,Msscrt;

Var
   R       : Registers;
   P       : String[12];
{$i font.pas}
procedure nnazok1;
BEGIN
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := nazok1_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(nazok1);
  r.bp := Ofs(nazok1);
  intr($10, r);
end;

procedure nnazok2;
BEGIN
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := nazok2_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(nazok2);
  r.bp := Ofs(nazok2);
  intr($10, r);
end;

procedure ttopor1;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor1_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor1);
  r.bp := Ofs(topor1);
  intr($10, r);
end;

procedure ttopor2;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor2_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor2);
  r.bp := Ofs(topor2);
  intr($10, r);
end;

procedure ttopor3;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor3_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor3);
  r.bp := Ofs(topor3);
  intr($10, r);
end;

procedure ttopor4;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor4_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor4);
  r.bp := Ofs(topor4);
  intr($10, r);
end;

procedure ttopor5;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor5_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor5);
  r.bp := Ofs(topor5);
  intr($10, r);
end;

procedure ttopor6;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := topor6_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(topor6);
  r.bp := Ofs(topor6);
  intr($10, r);
end;

procedure SSH;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := SH_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(SH);
  r.bp := Ofs(SH);
  intr($10, r);
end;

procedure KKOFI1;
begin
  r.ax := $0500;
  intr($10, r);
  r.ax := $1110;
  r.bh := KOFI_points;
  r.bl := 0;
  r.cx := 256;
  r.dx := 0;
  r.es := Seg(KOFI);
  r.bp := Ofs(KOFI);
  intr($10, r);
end;
procedure help;
begin
wincadr (10,70,3,22,9,15);
fwrite (36,3,9,14,' í‹õ‹î ');
fwrite (30,4,9,14,' ö‘“¤úõ ¢÷ø¢¡ ô‘÷ ù“ ');
Fwrite(24,6,9,14,' ƒ/€ ù‹¡‹¨‹÷ M.S.S ¥‘‹¨ ü‹¨¤‘‹ê ');
fwrite(20,8,9,14,'( ’‘óì÷ ö‘—¨¤÷û ) ü¤—øş•õ‘î –‘ìşìŸ— ¥î¤õ ');
fwrite (49,10,9,15,': ô¤ğ ü‘û ¢şóî üê¤ãõ');
fwrite (18,12,9,14,'.ü¨¤‘ê ”ş‘— ü¤“ ¢şóî ùŸê¬ ö¢¤î ù¢‘õ : Scroll Lock');
fwrite (22,13,9,14,'.ùàê‘Ÿ ¥ ¥‘¨ ü¨¤‘ê ö¢¤î ñ‘ãê ¤şè : Alt + Ctrl');
fwrite (46,14,9,14,'.ø÷õ¤‘®Ÿ : F12');
fwrite (18,15,9,14,'____________________________________________ ');
fwrite (27,17,9,14,'. –¨ ¢¥ ôøõä ü¤“ ùõ‘÷¤“ öş ¥ ù¢‘ê—¨');
fwrite (54,19,9,15,': ¯¨ø— ù¢ª ùşú—');
fwrite (12,19,9,14,'ƒ‡‰ / ƒ / ‚€            ü÷¥ø¨ ó‘¬ ¢õŸõ');
fwrite (56,21,9,15,':‘õ÷û¤ ¢‘—¨');
fwrite (40,21,9,14,'ü¤êàõ ©¤ §¢÷úõ');
end;


Begin
  If Paramcount = 0 Then
  Else
    Begin
      P := Paramstr(1);
      If P = 'Font1' Then Nnazok1;
      If P = 'Font2' Then Nnazok2;
      If P = 'Font3' Then Ttopor1;
      If P = 'Font4' Then Ttopor2;
      If P = 'Font5' Then Ttopor3;
      If P = 'Font6' Then Ttopor4;
      If P = 'Font7' Then Ttopor5;
      If P = 'Font8' Then Ttopor6;
      If P = 'Font9' Then Ssh;
      If P = 'Font10' Then Kkofi1;
      If P = 'Help' Then ;
    End;

End.
