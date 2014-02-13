program dblktest;
{ just a test program to read a Dbase III + file, show the structure,
  and optionally list the records in SDF format.
}
uses
   crt,dblook;

var
   infile    :string;
   i         :integer;
   ch        :char;

begin   { main }
   clrscr;
   writeln('Utility to read Dbase III+ .DBF files.         ',version_no);
   writeln;
   write('Enter Dbase file to read (END to exit) ');
   readln(infile);
   for i := 1 to length(infile) do infile[i] := upcase(infile[i]);
   if (infile <> 'END') then
      begin
      if(dbuse(infile) = DBOK) then { open file, read the header of the database file }
         begin
         showstruc;           { show us what you have found }
         write('Read and display the data (Y/N) ');
         readln(ch);
         ch := upcase(ch);
         if ch = 'Y' then
            list_all_recs;
         if(dbclose <> DBOK) then
            writeln('Unable to close ',infile);
      end
      else
         writeln('Unable to open Dbase file ',infile);
   end;
   writeln('End of DBlook.');
end.
