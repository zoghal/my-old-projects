program char1(input,output);
        uses crt;
        var
           charin,charout :char;
           flag :boolean;
        begin
             clrscr;
             flag:=true;
             repeat
writeln('           ******���� ���� �� * ���� ���� ������ �� ������ �� ��******');
             write('���� �� ���� ���� ��� :');
             readln(charin);
             if charin='*' then flag:=false
                else begin
                          if (charin >='0') and (charin < '9') or
                             (charin >='a') and (charin < 'z') or
                             (charin>= 'A') and (charin < 'Z')
                             then charout:= succ(charin)
                             else if charin ='9'
                                     then charout:='0'
                                     else if charin='Z'
                                     then charout:='A'
                                     else if charin='z'
                                     then charout:='a'
                                     else charout:='*';
                             writeln('     ���� ���� :',charout);
                             writeln;
                       end;
                       until flag=false
        end.


