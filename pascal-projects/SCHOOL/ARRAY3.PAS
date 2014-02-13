program array3;
uses crt;
var
   a1 :array [1..8] of char;
   x,nmax,nmin :byte;
   min,max:char;
begin
     clrscr;
     for x:=1 to 8 do
         begin
              write('a1[',x,']= ');
              readln(a1[x]);
         end;
     readkey;
clrscr;
max:=a1[1];
min:=a1[1];
nmin:=1;
nmax:=1;
for x:=1 to 8  do
    if a1[x] >max then
  begin
  max:=a1[x];
  nmax:=x;
  end;
  if a1[x] <min then
  begin
  min:=a1[x];
  nmin:=x;
  end;
  writeln('max >> ',max);
  writeln('nmax >> ',nmax);
  writeln('min >> ',min);
  writeln('Nmin>> ',nmin);

            readkey;

end.