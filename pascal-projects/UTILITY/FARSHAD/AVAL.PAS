program aval(inout,output);    { üŸ‘óê ùóó¢¨ : ô‘÷ }
        uses crt;              {      ü¢şõŸ : ¢‘—¨   }
        var a,flag,n,d,b:integer;
                  c:real;
                  asad:char;
             begin
                 clrscr;
                 write('¢ş÷î ¢¤ø ¤ ü¢¢ä ‘ê¯ó:');
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
                          write('–¨ş÷ ñø ¢¢ä :',n)
                          else write(' –¨ ñø ¢¢ä :',n);

                              end
                              else write(' –¨ ¥‘›õ ¤şè ¢¢ä :',n);
                              end
                              else
                              write(' ñø ¤şè ù÷ –¨ ñø ù÷  :',n);
                              readln;
                          end.