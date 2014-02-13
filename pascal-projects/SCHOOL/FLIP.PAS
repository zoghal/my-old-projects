program proce1;
uses crt;
procedure flip;
var
 c:char;
 begin
  read(c);
  if not eoln then flip;
  write(c);
  end;
  begin
  flip;
  end.