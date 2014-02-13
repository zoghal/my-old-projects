program dblktest;
{ Uses more of the functions in dblook to select particular records and
  fields to display.
}
uses
   crt,dblook;

var
   i         :integer;
   ch        :char;

begin   { main }
   clrscr;
   writeln('Utility to read Dbase III+ .DBF files.         ',version_no);
   writeln;
   if(dbuse('TEST.DBF') = DBOK) then { open file, read the header of the database file }
      begin
      showstruc;           { show us what you have found }
      if(dbtop = DBOK) then
         writeln('Record 1 field ALPHA = ',dbstr(dbfldno('ALPHA')))
      else
         writeln('Could not find record 1');
      if(dbgoto(2) = DBOK) then
         begin
         writeln('Record 2 field ALPHA   = ',dbstr(dbfldno('ALPHA')));
         writeln('Record 2 field REAL    = ',dbreal(dbfldno('REAL')):8:2);
         writeln('Record 2 field BOOLEAN = ',dblogic(dbfldno('BOOLEAN')));
         end
      else
         writeln('dbgoto returned error, Could not find record 2');
      if(dbgoto(1) = DBOK) then
         begin
         writeln('Record 1 field INTEGER = ',dbint(dbfldno('INTEGER')));
         writeln('Record 1 field BOOLEAN = ',dblogic(dbfldno('BOOLEAN')));
      end
      else
         writeln('Could not find record 1');

      if(dbclose <> DBOK) then
         writeln('Error closing DBF file.');
   end
   else
      writeln('Unable to open Dbase file TEST.DBF');
   writeln('End of DBlook.');
end.
