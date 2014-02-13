program file1;
        uses crt;
     type
         student=record
            stdname:string[20];
            stdno:real;
            bdate:array[1..3] of integer;
            ave:real;
            end;
     {************************************************}
     procedure readstd(var std:student);
             begin
                with std do
                begin
                write('enter name :');
                readln(stdname);
                write('enter no :');
                readln(stdno);
                write('enter birth year :');
                readln(bdate[1]);
                write('enter birth month :');
                readln(bdate[2]);
                write('enter birth day :');
                readln(bdate[3]);
                write('enter average :');
                readln(ave);
                end;
              end;
       {************************************************}
     var
        std1:student;
        fp: file of student;
        begin
        clrscr;
        assign(fp,'student.dat');
        rewrite(fp);
        repeat
              readstd(std1);
              write(fp,std1);
        until  std1.stdno=-1;
        close(fp);
        end.




