{                     ¤ê÷ 10 üğ¢ø÷‘¡ ô‘÷ ø ô‘÷ ö—ê¤ğ                      }
{              ù¢÷¤“ öø÷ä ù“ ¤ê÷ 5 üğ¢ø÷‘¡ ô‘÷ø ô‘÷ ôòä ø               }
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
              write('ô‘÷ : ');
              readln(rec[i].name);
              write('üğ¢ø÷‘¡ ô‘÷ : ');
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
          writeln(' ö‘ğ¢÷¤“ ':30);
          writeln('  ---------------------------------------------------------');
          writeln(' < ô‘÷ > ':20,'< üğ¢ø÷‘¡ ô‘÷ > ':30);
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
          writeln('                [y/n] ¢şû¢ ùõ¢ ¢şûø¡ üõ ‘ş ');
          ans := readkey;
        until ans = 'n';
        readln;
      end.