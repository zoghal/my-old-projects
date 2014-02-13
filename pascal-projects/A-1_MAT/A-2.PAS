program a_2;
        uses crt;
        var
           i,j,k,n:integer;
             over:real;
             x,y,z:array[1..3,1..3] of real;
         {**************************************************}
             function kehad(i,j:integer):real;
              var
              t:real;
              t1,temp1,temp2,temp3,temp4: integer;
              begin
              if (i+1)> 3 then temp1:=(i+1) mod 3
                 else temp1:=(i+1);
              if (j+1)> 3 then temp2:=(j+1) mod 3
                 else temp2:=(j+1);
              if (i+2)> 3 then temp3:=(i+2) mod 3
                 else temp3:=(i+2);
              if (j+2)> 3 then temp4:=(j+2) mod 3
                 else temp4:=(j+2);
  t:=((x[temp1,temp2]*x[temp3,temp4])-(x[temp1,temp4]*x[temp3,temp2]));
              kehad:=t;
               end;
        {***************************************************}

        {***************************************************}
            function det:real;
            var
               det1:real;
            begin
            det1:=0;i:=1;
            for j:=1 to 3 do
            det1:=det1+(kehad(i,j)*x[i,j]);
            det:=det1;
            end;
        {****************************************************}
       begin  {** main block **}
             clrscr;
             for i:=1 to 3 do
             for j:=1 to 3 do
             begin
             write('x','[',i,',',j,']','=');
             readln(x[i,j]);
             end;
             for i:=1 to 3 do
             for j:=1 to 3 do
             begin
             y[i,j]:=kehad(i,j);
             z[j,i]:=y[i,j];
             end;
             writeln;
             over:=1/det;
             for i:=1 to 3 do
             for j:=1 to 3 do
             y[i,j]:=over*z[i,j];
             WRiteln('a-1 MAtric is :=');
             for i:=1 to 3 do
              Begin
               WRite('º');
             for j:=1 to 3 do
                write(' ',y[i,j]:5:2, ' ');
                WRiteln('º');
                End;
             readln;
          end.
