program file9;
var
   f:file of integer;
   i,k:integer;
begin
   assign(f,'data2.dat');
   rewrite(f);
   for i:=1 to 100 do
       if (i mod 2)=1 then
       write(f,i);
   seek(f,0);
   while not eof(f) do
   begin
      read(f,k);
      write(k:4);
   end;
   close(f);
end.
