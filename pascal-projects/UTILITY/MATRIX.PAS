program ss;
USES CRT;
var a1 :array [1..100,1..100] of INTEGER;
    I,I1 :BYTE;
   K1,K2,K3, Z,X,C,A,S,V,B,N:INTEGER;
BEGIN
CLRSCR;
FOR I :=1 TO 4 DO
    FOR I1:=1 TO 4 DO
        BEGIN
             WRITE('A[',I,',',I1,']= ');
             READLN(A1[I,I1]);
        END;
Z:=A1[1,1]*A1[2,2]*A1[3,3];
X:=A1[1,2]*A1[2,3]*A1[3,1];
C:=A1[1,3]*A1[2,1]*A1[3,2];
K1:=Z+X+C;
V:=A1[1,2]*A1[2,1]*A1[3,3];
B:=A1[1,1]*A1[2,3]*A1[3,2];
N:=A1[1,3]*A1[2,2]*A1[3,1];
K2:=V+B+N;
K3:=K1-K2;
WRITELN('KOOL= ',K3);
READLN;
END.