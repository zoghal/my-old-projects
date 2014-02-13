  {DOSXCODE.PAS}

{ Example for DosExitCode and Exec }

{$M $4000,0,0 }   { 16K stack, no heap }

program meno;
    uses crt,dos;
    var
       item:array[1..6] of string[9];
       ch:char;
       i,row,choice:byte;
{***************************************************************************}
  procedure normalcolor;
  begin
       textcolor(yellow);
       textbackground(blue);
       gotoxy(3,row);
       write(item[choice]);
  end;
{***************************************************************************}
  procedure highlight;
  begin
       gotoxy(3,row);
       textcolor(white);
       textbackground(red);
       write(item[choice]);
  end;
{***************************************************************************}
  procedure execute;
  begin
    window(1,1,80,25);
    textbackground(black);
    clrscr;
    gotoxy(36,12);
    textcolor(red+blink);
    case choice of
       1:exec('w:\buser\bagham00.m00\bambi.exe','');
       2:exec('w:\buser\bagham00.m00\example2.exe','');
       3:exec('w:\buser\bagham00.m00\keen1\keen1.exe','');
       4:write('option4');
       5:write('option5');
       6:halt;
     end;
    readln;
    clrscr;
  end;
{***************************************************************************}
 begin
   item[1]:='§¯ó˛¢ê';
   item[2]:='option2';
   item[3]:='option3';
   item[4]:='option4';
   item[5]:='option5';
   item[6]:='exit';
   choice:=1;
   row:=2;

   repeat
         textbackground(black);
         clrscr;

         window(34,8,64,15);
         textbackground(blue);
         clrscr;
         textcolor(yellow);
         for i:=1 to 6 do
         begin

         gotoxy(3,i+1);
         write(item[i]);
         end;
         gotoxy(3,row);
         textcolor(white);
         textbackground(red);
         write(item[choice]);
         repeat
               ch:=readkey;
               if ch=#0 then ch:=readkey;
         until ch in [#72,#80,#71,#79,#13];
         normalcolor;
         case ch of
         #72:if choice <> 1 then
                           begin
                            dec(choice);
                            dec(row);
                           end
                           else
                               begin
                               choice:=6;
                               row:=7;
                               end;
        #80:if choice <>6 then
                          begin
                          inc(choice);
                          inc(row);
                          end
                          else
                          begin
                           choice:=1;
                           row:=2;
                           end;
        #71:begin
              choice:=1;
              row:=2;
            end;
            #79:begin
                 choice:=6;
                 row:=7;
                 end;
             end;
            highlight;
            until ch=#13;
            execute;

            {until false;}

            readln;
            end.










