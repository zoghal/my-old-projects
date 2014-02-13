USES DOS,CRT;
VAR F:FILE OF CHAR;
S:string[4];
i:word;
p:string;
BEGIN
p :=paramstr(1);
CLRSCR;
ASSIGN (F,p);
RESET(F);
s[0]:=#4;
SEEK(F,5500-3);
while not EOF(f) do
begin
{READKEY;}
  READ (F,S[4]);
  for i:=2 to 4 do
  s[i-1]:=s[i];

 IF S='P200' THEN
 BEGIN

 WRITELN('>>>AAAAAAAAAAAAAAAAAAAAAAAA>>>=Y');
WRITELN(FILEPOS(F));
HALT;
 END
ELSE WRITELN('<<<<<<=N');
end;
 end.