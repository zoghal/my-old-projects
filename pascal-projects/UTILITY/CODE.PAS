uses Crt, Dos;
CONST
     a1: array [1..5] of char =(chr(5),(chr(ord('I')+1)),(chr(ord(#32)+1))
     ,(chr(ord('A')+1)),(chr(ord('M')+1)));

 var S  : string[4] absolute a1;
    v: string[10];
    i,q,z,sum:byte;

begin
   for i:=1 to length(s) do
   begin
   s[i]:= char(ord(s[i])-1);
     v:=v+s[i];
     end;
   writeln(v);
   readkey;
end.



