program test;
uses dos,arcpak2;
var First       : Entr_;
    Pcount      : word;
    FilePoi     : ZCent_point;
    HeadEnd     : ZipEnd_point;
    Head_ptr    : pointer;
    i           : integer;
begin
  GetAll_Zip('a:test2.zip',First, PCount,Head_ptr);
  FilePoi:=First.Entry;
  i:=0;
  HeadEnd:=Head_ptr;
  write(FilePoi^.Name^);
  if (Filepoi^.Comment <> NIL) then
    writeln(' : ',FilePoi^.Comment^)
  else writeln;
  repeat
    inc(i);
    FilePoi:=FilePoi^.Nextzipl;
    write(FilePoi^.Name^);
    if (Filepoi^.Comment <> NIL) then
      writeln(' : ',FilePoi^.Comment^)
    else writeln;
  until (I=Pcount-1);
  Dispose_Zip(First, Head_ptr);
  writeln(memavail);
end.
