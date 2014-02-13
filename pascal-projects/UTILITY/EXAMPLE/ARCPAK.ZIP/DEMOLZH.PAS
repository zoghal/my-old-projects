program test;
uses dos,arcpak2;
var First       : Entr_;
    Pcount      : word;
    FilePoi     : Lharc_point;
    Head_ptr    : pointer;
    i           : integer;
begin
  GetAll_Lzh('a:test.lzh',First, PCount ,Head_ptr);
  FilePoi:=First.Entry;
  i:=0;
  writeln(FilePoi^.Name^);
  repeat
    inc(i);
    FilePoi:=FilePoi^.NextLzh;
    writeln(FilePoi^.Name^);
  until (I=Pcount-1);
  Dispose_Lzh(First, Head_ptr);
  writeln(memavail);
end.
