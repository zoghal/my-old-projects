program aval(inout,output);    { ����� ��󐢨� : ��� }
        uses crt;              {      ����� : �����   }
        var a,flag,n,d,b:integer;
                  c:real;
                  asad:char;
             begin
                 clrscr;
                 write('���� ���� �� ���� ���:');
                 readln(n);
                 flag:=0;
                 if n<>1 then
                            begin
                                if n > 0 then
                                           begin
                 for b:=2 to trunc(sqrt(n)) do
                                        begin
                        c:= n mod b;
                   if c=0 then
                   flag:=1;
                          end;
                          if flag=1 then
                          write('���� ��� ��� :',n)
                          else write(' ��� ��� ��� :',n);

                              end
                              else write(' ��� ���� ��� ��� :',n);
                              end
                              else
                              write(' ��� ��� �� ��� ��� ��  :',n);
                              readln;
                          end.