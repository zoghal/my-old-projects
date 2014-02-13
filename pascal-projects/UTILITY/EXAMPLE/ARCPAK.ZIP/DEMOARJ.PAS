program test;
uses dos,arcpak2;
var First       : Entr_;
    Pcount      : word;
    FilePoi     : Arj_point;
    Head_ptr    : pointer;
    i           : integer;
begin
  GetAll_Arj('a:unarj.arj',First, PCount);
  FilePoi:=First.Entry;
  i:=1;
  FilePoi:=FilePoi^.Nextarj;             { First entry is arj file itself }
  writeln(FilePoi^.Name^);
  repeat
    inc(i);
    FilePoi:=FilePoi^.Nextarj;
    writeln(FilePoi^.Name^);
  until (I=Pcount-1);
  Dispose_arj(First);
end.
