program g_zarb;
uses crt;
var
   f,sum: integer;
   i,a,y,x :word;
begin
clrscr;
  For x :=10 Downto 1 Do
  for i:=1 to 11 - x do
   begin
    For y := 10 DownTo 1 Do
    for a:=1 to 11 -y do
      begin
       gotoxy (a*5,i);
       write(a*i)
      end;
    writeln;
   end;



end.