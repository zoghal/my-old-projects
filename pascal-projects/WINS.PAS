{                     ��� 10 ������ ��� � ��� ����                      }
{              ����� ����� �� ��� 5 ������ ���� ��� ��� �               }
  program wins;
    uses crt;
      type
        persons = record
                    name   : string[20];
                    family : string[20];
                    status : boolean;
                  end;{of record}
      var
        ans : char;
        rec : array[1..10] of persons;
        chance_number , count , i : shortint;
      procedure read_name;
        begin
          clrscr;
          for i := 1 to 10 do
            begin
              writeln(i);
              write('��� : ');
              readln(rec[i].name);
              write('������ ��� : ');
              readln(rec[i].family);
              rec[i].status := false;
              for count := 1 to 40 do write(#196);
              writeln;
            end;{of for}
        end;{of procedure}
      procedure choose_names;
        begin
          randomize;
          count := 0;
          repeat
            chance_number := random(10) + 1;
            if rec[chance_number].status = false
              then begin
                     rec[chance_number].status := true;
                     inc(count);{count = count + 1}
                   end;
          until count = 5;
        end;{of procedure}
      procedure write_names;
        begin
          textcolor(white);
          textbackground(blue);
          clrscr;
          writeln;
          writeln(' ������ ':30);
          writeln('  ---------------------------------------------------------');
          writeln(' < ��� > ':20,'< ������ ��� > ':30);
          writeln('  ---------------------------------------------------------');
          for i := 1 to 10 do
            begin
              if rec[i].status
                then begin
                       writeln(rec[i].name:20,rec[i].family:30);
                       dec(count);{count = count - 1}
                       if count = 0 then break;
                     end;
            end;{of for}
        end;{of procedure}
      begin
        repeat
          read_name;
          choose_names;
          write_names;
          writeln('  ---------------------------------------------------------');
          writeln('                [y/n] ���� ����� ������ �� ��� ');
          ans := readkey;
        until ans = 'n';
        readln;
      end.