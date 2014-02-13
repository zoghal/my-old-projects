Program film2;
    uses crt;
        var
           count    :integer;
           c        :text;
           filename :string[20];
           q,ch  :char;
       Begin
       textbackground(blue);
         clrscr;
         textcolor(white);
         gotoxy(5,5);
         write('enter file  :');
         readln(filename);
         assign(c,FileName);
         reset(c);
         while not eof(c) do
         begin
         readln(c,ch);
         count:=count+1;
         end;
         clrscr;gotoxy(10,10);
         textcolor(white+blink);
         writeln('file is ',count,' line');
         readln;
         readln;
     End.

