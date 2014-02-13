program scorol;
        uses crt;
        var
           name:array[1..10] of string[10];
           family:array[1..10] of string[20];
           salary:array[1..10] of longint;
           i,first,last,n:byte;
           ch:char;
       begin
            textbackground(black);
            clrscr;
            name[1]:='alireza';family[1]:='naderi';salary[1]:=10000;
            name[2]:='ali';family[2]:='naseri';salary[2]:=20000;
            name[3]:='nader';family[3]:='hamidi';salary[3]:=300000;
            name[4]:='naser';family[4]:='karimi';salary[4]:=300000;
            name[5]:='ahmad';family[5]:='asgaary';salary[5]:=1200;
            name[6]:='baahman';family[6]:='akrami';salary[6]:=40021;
            name[7]:='hamid';family[7]:='hasani';salary[7]:=136354356;
            name[8]:='karim';family[8]:='azimi';salary[8]:=315453524;
            name[9]:='akbar';family[9]:='afllah';salary[9]:=356461;
            name[10]:='mehdi';family[10]:='fnaii';salary[10]:=3561435;
            textcolor(white);textbackground(red);
            gotoxy(31,8);write('spasiication');
            textcolor(white+blink);
            gotoxy(19,24);write('press <crsr down>,<crsr up>,or <esc>');
            window(15,11,63,15);
            textbackground(blue);
            textcolor(cyan);
            clrscr;
            for i:=1 to 5 do
            begin
              gotoxy(3,i);write(name[i]);
              gotoxy(15,i);write(family[i]);
              gotoxy(37,i);write(salary[i]);
            end;
            first:=1;
            last:=5;
            repeat
                  repeat
                  ch:=readkey;
                  if ch=#0 then ch:=readkey else if ch<>#27 then ch:=#0;
            until  ch in[#72,#80,#27];
            case  ch of
            #80:if last<>10 then
                   begin
                        gotoxy(1,1);
                        delline;
                        inc(last);
                        inc(first);
                        gotoxy(3,5);write(name[last]);
                        gotoxy(15,5);write(family[last]);
                        gotoxy(37,5);write(salary[last]);
                    end;
            #72:if first<> 1 then
                   begin
                        gotoxy(1,1);
                        insline;
                        dec(last);
                        dec(first);
                        gotoxy(3,1);write(name[first]);
                        gotoxy(15,1);write(family[first]);
                        gotoxy(37,1);write(salary[first]);
                   end;
               end;
             until ch=#27;
             window(1,1,80,25);
             textbackground(black);
             clrscr;
             end.
