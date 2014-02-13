Uses Crt;
Type
 User = Record
  Code : Word;
  Name : String[15];
  Out  : String[8];
  Test : Boolean;
 End;

 Book = record
  Code : Word;
  Name : String[15];
  Test : Boolean;
 End;

 S_r = record
  CodeUser,
  codeBook : Word;
  Test : Boolean;
 End;

Var
  UserF : File OF user;
  BookF : File OF Book;
  S_RF : File OF S_r;
  BankUser :   user;
  BankBook :   Book;
  BankS_R : S_r;
  Temp: Word;
  I : Byte;
  Key : Char;
{****************************************************************************}
Procedure updateUserF;
var
   Tempf : file of User;
Begin
 Assign(Userf,'user.dat');
 Rename(USERF,'temp.dat');
 Assign(Userf,'TEMP.dat');
 Reset(userf);
 Assign(Tempf,'user.dat');
 rewrite(tempF);
 Temp := Filesize(Userf);
 For i:= 0 To temp - 1 Do
  Begin
   Seek(userf,i);
   Read(userf,BankUser);
   IF BAnkUSer.Test = True Then
    WRite(Tempf,bankUser);
  End;
 Erase(userf);
 Close(userF);
 Close(tempF);
End;
{****************************************************************************}
Procedure updateS_rF;
var
   Tempf : file of s_r;
Begin
 Assign(S_Rf,'S_r.dat');
 Rename(S_Rf,'temp.dat');
 Assign(S_Rf,'TEMP.dat');
 Reset(S_Rf);
 Assign(Tempf,'s_r.dat');
 rewrite(tempF);
 Temp := Filesize(S_Rf);
 For i:= 0 To temp - 1 Do
  Begin
   Seek(S_Rf,i);
   Read(S_Rf,Banks_r);
   IF Banks_r.Test = True Then
    WRite(Tempf,Banks_r);
  End;
 Erase(s_rf);
 Close(s_rF);
 Close(tempF);
End;
{****************************************************************************}
Procedure Adding_user;
Begin
 Clrscr;
 Write('Code := ');
 Readln(BankUser.Code);
 Write('Name := ');
 Readln(BankUser.name);
 Write('Date {--/--/--} := ');
 Readln(BankUser.out);
 Bankuser.test := True;
 Assign(Userf,'User.dat');
 Reset(UserF);
 Seek(UserF,Filesize(UserF));
 WRite(Userf,BankUser);
 Close(USERF);
 Writeln;
 Writeln('Saved.. Press Any Key To continu');
 readkey;
End;
{****************************************************************************}
Procedure Adding_Book;
Begin
 Clrscr;
 Write('Code := ');
 Readln(BankBook.Code);
 Write('Name := ');
 Readln(BankBook.name);
 BankBook.test := True;
 Assign(bookf,'Book.dat');
 Reset(BookF);
 Seek(BookF,Filesize(BookF));
 WRite(bookf,Bankbook);
 Close(bookF);
 Writeln;
 Writeln('Saved.. Press Any Key To continu');
 readkey;
End;
{****************************************************************************}
Procedure Delete_User;
Var
   T : Word;
Begin
 clrscr;
 Write(' Code Of User := ');
 Readln(T);
 Assign(Userf,'user.dat');
 reset(userf);
 Temp :=Filesize(UserF);
  For I:= 0 To  temp -1Do
   Begin
    Read(Userf,BankUser);
  If T = BankUser.Code Then
   Begin
    Writeln(' Code Found And Deleted...');
    readkey;
    BankUser.test := False;
    write(userf,bankuser);
    CLOSE(USERF);
    updateUserF;
    Exit;
   End;
  End;
 Writeln(' Code Not Found... Press key To exit.' );
 readkey;
    CLOSE(USERF);
end;
{****************************************************************************}
Function CheckUser(N:Word):Boolean;
Var
   i : Byte;
Begin
 assign(userf,'user.dat');
 reset(userf);
 temp := filesize(userf);
 For I := 0 To temp -1 Do
  BEgin
   seek(Userf,i);
   read(userf,bankuser);
  If (BankUser.Code = N) And (BankUser.test = True) Then
   Begin
    CheckUser := True;
    Exit;
   End
  Else
   CheckUser := False;
 End;
 Close(userf);
End;
{*-*-*-*-*-*-*-*-*-*-*-*-*-*-*}
Function CheckBook(N:Word):Boolean;
Var
   i : Byte;
Begin
 assign(Bookf,'book.dat');
 reset(Bookf);
 temp := filesize(Bookf);
 For I := 0 To temp -1 Do
  Begin
   seek(bookF,i);
   read(Bookf,bankbook);
  If (Bankbook.Code = N) And (Bankbook.test = True) Then
   Begin
    CheckBook:= True;
    Exit;
   End
  Else
   CheckBook:= False;
 End;
 Close(bookf);
End;


{****************************************************************************}
Procedure Send_book;
Var
  T,
  T1 : Word;
  I : Byte;
{----------}
Begin
 clrscr;
 Write('Code of User := ');
 Readln(T);
 If Checkuser(t) = FAlse Then
   Begin
    Writeln('User Not found');
    Delay(600);
    Exit;
   End;
 Write('Code of Book := ');
 Readln(T1);
 If CheckBook(t1) = FAlse Then
   Begin
    Writeln('Book Not found');
    Delay(600);
    Exit;
   End;
 assign(s_rf,'S_R.dat');
 Reset(S_Rf);
 Seek(S_Rf,filesize(S_Rf));
 BankS_R.CodeUser := T;
 BankS_R.CodeBook := T1;
 BankS_R.test := True;
 Write(S_Rf,banks_r);
 Close(s_rf);
 Writeln(' Book sending....');
 Writeln('Press Any Key ..');
 Readkey;
End;
{****************************************************************************}
Procedure give_book;
Var
   T,
   T1 : Word;
   I  : Byte;
Begin
 Clrscr;
 Write('Code of User := ');
 Readln(T);
 If Checkuser(t) = FAlse Then
   Begin
    Writeln('User Not found');
    Delay(600);
    Exit;
   End;
 Write('Code of Book := ');
 Readln(T1);
 If CheckBook(t1) = FAlse Then
   Begin
    Writeln('Book Not found');
    Delay(600);
    Exit;
   End;
Assign(s_rf,'s_r.dat');
 reset(s_rf);
 Temp :=Filesize(s_rf);
  For I:= 0 To  temp -1Do
   Begin
    Read(s_rf,Banks_R);
    IF (t = BAnkS_R.codeuser) And (t1 = BAnkS_R.codebook)
    And (BankS_R.Test = True) Then
     Begin
      Writeln('Found And resived...');
      Delay(600);
      BankS_R.Test := False;
      Close(S_Rf);
      updates_rf;
      exit;
     End;
   End;
End;
{****************************************************************************}
Procedure list_Book;
Begin
 Clrscr;
 assign (Bookf,'Book.dat');
 Reset(Bookf);
 Temp := filesize(Bookf);
 IF Temp = 0 Then Exit;
 For i:= 0 To Temp -1 Do
  Begin
   Seek(Bookf,i);
   read(Bookf,bankBook);
   WRite ('Code Book :=' );
   Writeln(BankBook.Code);
   WRite ('Name book := ');
   Writeln(BankBook.Name);
   WRiteln('Press Any Key To Continu..');
   Readkey;
   WRiteln;
   WRiteln;
   WRiteln;
  End;
 Close(Bookf);
End;
{****************************************************************************}
Procedure list_User;
Begin
 Clrscr;
 assign (userf,'user.dat');
 Reset(userf);
 Temp := filesize(userf);
 IF Temp = 0 Then Exit;
 For i:= 0 To Temp -1 Do
  Begin
   Seek(userf,i);
   read(userf,bankuser);
   WRite ('Code user :=' );
   Writeln(Bankuser.Code);
   WRite ('Name user := ');
   Writeln(Bankuser.Name);
   WRite ('Date IN := ');
   Writeln(Bankuser.out);
   WRiteln('Press Any Key To Continu..');
   Readkey;
   WRiteln;
   WRiteln;
   WRiteln;
  End;
 Close(userf);
End;
{****************************************************************************}
Procedure list_S_R;
Begin
 Clrscr;
 assign (s_rf,'s_r.dat');
 Reset(s_rf);
 Temp := filesize(s_rf);
 IF Temp = 0 Then Exit;
 For i:= 0 To Temp -1 Do
  Begin
   Seek(s_rf,i);
   read(s_rf,banks_R);
   WRite ('Code give user :=' );
   Writeln(Banks_r.Codeuser);
   WRite ('Code of book outing := ');
   Writeln(Banks_r.codebook);
   WRiteln('Press Any Key To Continu..');
   Readkey;
   WRiteln;
   WRiteln;
   WRiteln;
  End;
 Close(s_rf);

End;
{----------------------------------------------------------------------------}
Begin
 Repeat
  clrScr;
  Writeln('Welcome To library');
  Writeln;
  Writeln('1- Add User');
  Writeln('2- Add Book');
  Writeln('3- Delete User');
  Writeln('4- Send book');
  Writeln('5- Resive Book');
  Writeln('6- list book');
  Writeln('7- list User');
  Writeln('8- List Sand & resive');
  Writeln('9- Exit');
  Key :=REadkey;
  Case Key Of
   '1' : Adding_user;
   '2' : Adding_Book;
   '3' : Delete_User;
   '4' : Send_book;
   '5' : Give_book;
   '6' : list_user;
   '7' : list_Book;
   '8' : list_S_R;
  End;
 Until Key = '9';
End.