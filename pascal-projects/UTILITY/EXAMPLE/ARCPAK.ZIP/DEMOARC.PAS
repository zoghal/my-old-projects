program test;
uses dos,arcpak2;
var First       : Entr_;
    Pcount      : word;
    FilePoi     : Pak_point;
    Head_ptr    : pointer;
    Header      : ^PakHead;
    i           : integer;
begin
  GetAll_arc('a:test.arc',First, PCount, Head_ptr);
  FilePoi:=First.Entry;
  Header:=Head_ptr;
  if Not (Header^.Extend^.Comment=Nil) then writeln(Header^.Extend^.Comment^);
  i:=0;
  repeat
    inc(i);
    write(FilePoi^.Name^,' : ');
    if not (FilePoi^.Extend^.Comment=NIL) and not (FilePoi^.Extend=NIL) then
       writeln(FilePoi^.Extend^.Comment^)
    else writeln('');
    FilePoi:=FilePoi^.NextPak;
  until (I=Pcount);
  writeln(MemAvail);
  Dispose_Arc(First,pointer(Header));
  writeln(MemAvail);
end.
