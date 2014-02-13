program a_1(input,output);
        uses crt;
        procedure mat;
  var
        det,det1,det2,over:real;
       n,a,m:array[1..3,1..3] of real;
       i,j:integer;
    begin
         clrscr;
             for i:=1 to 3 do
             for j:=1 to 3 do
             begin
             write('a','[',i,',',j,']','=');
             readln(a[i,j]);
             end;
 For i := 1 To 3 Do
  Begin
  Write('º');
   For j := 1 To 3 Do
    Write (' ',A[i,j],' ');
  Writeln('º');
  End;

  writeln;

det1:=a[1,1]*a[2,2]*a[3,3]+a[1,2]*a[2,3]*a[3,1]+a[1,3]*a[2,1]*a[3,2];
det2:=-(a[1,3]*a[2,2]*a[3,1]+a[1,2]*a[2,1]*a[3,3]+a[1,1]*a[2,3]*a[3,2]);
det:=det1+det2;
       writeln;
       over:=1/det;

       n[1,1]:=a[1,1]*(a[2,2]*a[3,3]-a[2,3]*a[3,2]);
       n[1,2]:=a[1,2]*-(a[2,1]*a[3,3]-a[2,3]*a[3,1]);
       n[1,3]:=a[1,3]*(a[2,1]*a[2,3]-a[2,2]*a[3,1]);
       n[2,1]:=-a[2,1]*(a[1,2]*a[3,3]-a[1,3]*a[3,2]);
       n[2,2]:=a[2,2]*(a[1,1]*a[3,3]-a[1,3]*a[3,1]);
       n[2,3]:=-a[2,3]*(a[1,1]*a[3,2]-a[1,2]*a[3,2]);
       n[3,1]:=a[3,1]*(a[1,2]*a[2,3]-a[1,3]*a[2,2]);
       n[3,2]:=-a[3,2]*(a[1,1]*a[2,3]-a[1,3]*a[2,1]);
       n[3,3]:=a[3,3]*(a[1,1]*a[2,2]-a[1,2]*a[2,1]);

       for i:=1 to 3 do
       for j:=1 to 3 do
       m[i,j]:=n[j,i];

       for i:=1 to 3 do
       for j:=1 to 3 do
       m[i,j]:=over*m[i,j];

       for i:=1 to 3 do
       for j:=1 to 3 do
            writeln('m','[',i,',',j,']','=',m[i,j]:0:0);

       write(det:0:0);
       readln;
       end;
       begin  {main block}
       mat;
       end.