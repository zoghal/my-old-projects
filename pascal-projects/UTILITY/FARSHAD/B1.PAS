rogram b1 (input,output);
   var a,b,t,n:integer;
   begin
      writeln('               :¢þ÷î“ ¢¤ø ¢¢ä ø¢');
      read (a,b);
       if a>b then
    begin
        t:=a;
        a:=b;
        b:=t;
    end
       else
           begin
              n:=0;
              while n<=a do
              n:=n+2;
           end;
            writeln('             :¢÷—¤‘“ä öþ“ šø¥ ¢¢ä');
       while n<b do
       begin
          write(n,' ');
          n:=n+2;
       end;
       readln;
       readln;
      end.
