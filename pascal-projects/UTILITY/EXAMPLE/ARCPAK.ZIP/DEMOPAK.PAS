program test;
uses dos,arcpak2;
var First       : Entr_;
    Pcount      : word;
    FilePoi     : Pak_point;
    Head_ptr    : pointer;
    Header      : ^PakHead;
    i           : integer;
begin
  GetAll_Pak('a:test.sda',First, PCount, Head_ptr);
  Header:=Head_ptr;
  FilePoi:=First.Entry;
  i:=0;
  repeat
    inc(i);
    write(FilePoi^.Name^,' : ');
    if not (FilePoi^.Extend^.Comment=NIL) and not (FilePoi^.Extend=NIL) then begin
       write(FilePoi^.Extend^.Comment^,' : ');
       writeln(FilePoi^.Extend^.Path^);
    end;
    FilePoi:=FilePoi^.NextPak;
  until (I=Pcount);
  writeln(MemAvail);
  Dispose_Pak(First,pointer(Header));
  writeln(MemAvail);
end.
