uses crt;
var i: byte;
 f : text;
 s : string;
Begin
assign(f,'code.txt');
rewrite(f);
 for  i := 10 to 255 do
 Begin
  str(i,s);
  writeln(f,s +'  =  '+ chr(i));
  end;
End.