program scrsaleh;
uses
    crt,dos;
TYPE
    A =ARRAY [1..4000] OF BYTE;
VAR
   MSS,MON : A;
   I,J,x : INTEGER;
begin
textbackground(1);
clrscr;
FOR I:=0 TO 3999 DO MON[I]:=MEMW[$B800:I];
textbackground(0);
clrscr;
readln;
FOR I:=0 TO 3999 DO
begin
MEMW[$B800:I]:=mon[i];
delay(10);
end;
end.

