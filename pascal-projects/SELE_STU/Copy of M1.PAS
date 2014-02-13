Program One;
Uses crt;
Type
   infor = record
            name        : String;
            famele      : String;
            Type_stu    : String;
            num_s       : Word;
            Num1,
            Num2        :Byte;
            Del         :boolean;
           end;
Var
   tempKey,Key : Char;
   F_stu,f : File of infor;
   inf : infor;


procedure updata;
var temp,i:word;
    T_name,T_fameley:string[20];
begin
assign(f_Stu,'STUDENT.PAS');
rename(f_Stu,'TEMP.PAS');
assign(f_Stu,'TEMP.PAS');
reset(f_Stu);
assign(f,'STUDENT.PAS');
rewrite(f);
     temp:=filesize(f_Stu);
     for i:=0 to temp-1 do
     begin
     seek (f_Stu,i);
     read(f_Stu,inf);
     with inf Do
     begin
     if del= false then
        begin
         write(f,inf);
        end;
     end;
     end;
close(f_Stu);
erase(f_Stu);
close(f);
end;


procedure Input;
Begin
 Clrscr;
 Writeln('choseing student ');
 Writeln('様様様様様様様様 ');
 writeln;
 Writeln('Plase enter of informatin Student');
 writeln;
 writeln;
 With inf do
  Begin
   Write('Name => ');
   readln (name);
   writeln;
   Write('Famele => ');
   readln (Famele);
   writeln;
   Write('number_sheanasnameh => ');
   readln (num_s);
   writeln;
   Write('Reshteh => ');
   readln (type_stu);
   writeln;
   del := false;
  end;
 Writeln('Plase enter Y = saved   N = Cansel');
 tempkey := readkey;
 case tempKey of
  'y','Y':  Begin
             with inf do
              Begin
               assign(F_stu,'STUDENT.PAS');
               reset (F_stu);
               seek (f_STU,filesize(f_STU));
               write (f_stu,inf);
               close (f_stu);
              End;
            End;
  'n','N': exit;
 End;
End;

Procedure List_stu;
Var
   tEMP,i : WORD;
Begin
 Clrscr;
 Writeln('List All student ....');
 Writeln('-------------------------------------------------------------------------');
 assign(f_stu,'STUDENT.PAS');
 reset (F_stu);
 temp:=filesize(F_stu);
 for i:=0 to temp-1 do
  Begin
   seek (F_stu,i);
   read (f_stu,inf);
   if inf.del = false then writeln('Name = ',inf.Name,'   Famele = ',inf.famele,'   Number = ',inf.num_s,'   Type = ',
   inf.type_stu,'    ',inf.num1,'  ',inf.num2);
  End;
 Readkey;
 Close(f_stu);
End;


Procedure Selected;
Var
   tEMP,i : WORD;
Begin
 Clrscr;
 assign(f_stu,'STUDENT.PAS');
 reset (F_stu);
 temp:=filesize(F_stu);
 for i:=0 to temp-1 do
  Begin
   seek(F_stu,i);
   read(f_stu,inf);
  wITH INF DO
   beGIN
   Write('Name => ',name);
   writeln;
   Write('Famele => ',famele);
   writeln;
   Write('number_sheanasnameh => ',num_s);
   writeln;
   Write('Reshteh => ',type_stu);
   writeln;
   Write('Num1 => ');
   readln(num1);
   Write('Num2 => ');
   readln(num2);
   if (num1>=50) and (num2>=70) then
    Begin
     seek(F_stu,i);
     write (f_stu,inf);
    end
   else
    Begin
     seek(F_stu,i);
     del := True;
     write (F_stu,inf);
    End;
   eND;
  End;
    CLose (f_stu);
 updata;
End;


Begin
 Clrscr;
 Repeat
   clrscr;
   Writeln('1-Input');
   Writeln('2-Select');
   Writeln('3-List student');
   Writeln ('Press Esc To exit.');
   Key := Readkey;
   Case ord(Key) Of
    49 : Input;
    50 : selected;
    51 : List_stu;
   end;
 Until Key = Chr(27);
end.
