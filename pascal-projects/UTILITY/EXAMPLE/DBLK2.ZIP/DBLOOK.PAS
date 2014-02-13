unit dblook;
{ DBLOOK is a Turbo Pascal Unit which reads Dbase III + .DBF files,
  displays the structure information on the screen, converts from
  Dbase format to various internal formats to assist gathering data
  from Dbase data files.

  The program was designed to provide simple routines to read dbase
  files to generate reports.

  Only one Dbase file may be open at one time (you may change it as
  the source code is provided) and index files are not supported.

  Each record will be placed in a character buffer dbbuf[4096] and
  may be used directly or the functions in this package may be used
  to extract data items of interest into more usable Pascal variables.

  If you make major improvements to the program, let me know as
  the ongoing effort to improve the performance of Dbase requires
  more tools.

  Turbo Pascal 5.5 was used to develope the program.

Some functions return STD_ERR_CODES, they are defined as follows:
      -1 = (BOF) Beginning of .DBF file.
       0 = (DBOK) No errors.
       1 = (EOF) End of DBF file.

  Gerald Rohr   RR#3    Anamosa, Iowa 52205
  CompuServe [70035,1223]     Genie  g.rohr

                         Revision History
  ----------------------------------------------------------------
  Rev 1.0 26 Sep 87 Original Release                           gbr
  Rev 2.0 29 Sep 89 Reworked to longints, records, TP5.5       gbr
 }

{ ----Globals for your program------ }
interface
const
   BOF       = -1;    { Beginning of .DBF file. }
   DBOK      =  0;    { No errors. }
   EOF       =  1;    { End of DBF file. }
   READ_ERR  =  2;    { Blockread error }
   CLOSE_ERR =  3;    { Error closing .DBF file }

type
   rdef = record                  { Dbase record definitions we use }
      name       :string[10];
      rtype      :char;           { type of record - C,N,D,L,etc.         }
      fld_addr   :longint;        { not used }
      width      :byte;           { total field width of this record      }
      decp       :byte;           { number of digits to right of decimal  }
      multi_user :integer;        { reserved for multi user }
      work_id    :byte;           { Work area ID }
      m_user     :integer;        { reserved for multi_user }
      set_fields :byte;           { SET_FIELDS flag }
      resrvd     :array[1..8] of byte;      { 8 bytes reserved }
      stloc      :integer;        { offset from start of field where this }
   end;

   db4head = record  { Dbase III + header definition        }
      dbvno        :byte;  { version number (03h or 83h ) }
      updyr        :byte;  { last update YY MM DD         }
      updmo        :byte;
      upddy        :byte;
      no_rec       :longint; { number of record in database }
      header_bytes :integer; { number of bytes in header }
      rec_bytes    :integer; { number of bytes in records }
      tmp          :array[1..20] of char;   { reserved bytes in header }
   end;

var
   dbbuf    :array[1..4096] of char;{ Dbase record }
   dbhead   :db4head;               { header of DBF file }
   rstru    :array[1..50] of rdef;  { holds our representation of the database structure }
   no_col   :integer;               { number of columns in database }


procedure showstruc;
          { displays the information found in the dbase header to the screen, used
            primarily to check if the file definition is correct.
          }
function dbuse(dbfilename:string):integer;
          { reads and stores header information on a Dbase III+ .dbf file.
            Must be the first call in your program as it opens the Dbase
            file name dbfilename.  Returns STD_ERR_CODES.}
function dbclose:integer;
          { Call at end of your application to close the Dbase file.  For now
            there is only one file to close, if extended to use
            multiple database files then this procedure would be required.
            Returns STD_ERR_CODES.
          }
          procedure list_all_recs;
          { list all records in the dbase file starting with record 1, listing is
            in a SDF format.
          }
function version_no:string;
          { Returns the string representation of the version of the
            dblook.pas package.
          }
function dbfldno(fname:string):integer;
          { Returns an integer which is the number in the rstru array where fname
            is located.  Used to enable user to use field names in functions to
            return data.  Returns 0 if fname not found.
          }
function dbstr(fldno:integer):string;
          { Returns the string representation of any field of the database.  This
            string is filled out to the full field length by padding with spaces.
          }
function dbint(fldno:integer):integer;
          { Returns the integer representation of any field of the database.
          }
function dblong(fldno:integer):longint;
          { Returns the long integer representation of any field of the database.
          }
function dbreal(fldno:integer):real;
          { Returns the long integer representation of any field of the database.
          }
function dblogic(fldno:integer):boolean;
          { returns true or false representing the logical value of the field.
          }
function dbdeleted:boolean;
          { Returns true if record in dbbuf[] is marked as deleted, else
            returns false.
          }
function dbgoto(rec_no:longint):integer;
          { Fills the dbbuf[] with data from rec_no record of the database, returns
            STD_ERR_CODES.  dbbuf[] is filled with rec_no or rec 1 for BOF, etc.
function dbrecno:longint;
          { Returns the present record number of the database.
          }
function dbskip(rec_no:longint):integer;
          { positions .DBF file forward (+rec_no) or backwards (-rec_no) rec_no
            records from present position.  Fills dbbuf[] from new DBF record.
            Returns  STD_ERR_CODES.
          }
function dbtop:integer;
          { Positions .DBF file to record 1, fills dbbuf[] with data
          }
function dbbottom:integer;
          { Positions .DBF file to last record, fills dbbuf[] with data
          }

{ ------- implenentation variables and code follow ------ }
implementation

const
   vno  = 'DBLOOK V2.0';            { release version number }

type
   db4ref = record
      name       :array[1..11] of char; { Name of this record             }
      rtype      :char;           { type of record - C,N,D,L,etc.         }
      fld_addr   :longint;        { not used }
      width      :byte;           { total field width of this record      }
      decp       :byte;           { number of digits to right of decimal  }
      multi_user :integer;        { reserved for multi user }
      work_id    :byte;           { Work area ID }
      m_user     :integer;        { reserved for multi_user }
      set_fields :byte;           { SET_FIELDS flag }
      resrvd     :array[1..8] of byte;      { 8 bytes reserved }
   end;                           { record starts                         }

var
   dbfin     :file;
   i,j,k     :integer;
   rec_stru  :db4ref;               { actual database record structure }
   numread   :word;
   infile    :string;               { name of database }
   db_rec_no :longint;              { Present record of DBF file }

procedure showstruc;
{ displays the information found in the dbase header to the screen, used
  primarily to check if the file definition is correct.
}
var
   i :integer;
   tmp :string[20];
   tpe :string[10];

begin
   writeln('Structure for database :',infile);
   with dbhead do
   begin
   writeln('Date of last update    :',updmo:2,'/',upddy:2,'/',updyr:2);
   writeln('Number of records      :',no_rec:8);
   writeln('Column     Type       Width  Decimals Offset');
   writeln('---------- ---------- ------ -------- ------');
   writeln('           Delete Flg      1               1');
   end;
   for i := 1 to no_col do
      begin
      with rstru[i] do
         begin
         tmp := copy(concat(rstru[i].name,'          '),1,10);
         case rtype of
            'C' :tpe := 'Character';
            'N' :tpe := 'Numeric  ';
            'D' :tpe := 'Date     ';
            'L' :tpe := 'Logical  ';
            'M' :tpe := 'Memo     ';
            else tpe := 'Unknown  ';
         end;
         writeln(tmp,' ',tpe,'    ',width:4,'      ',decp:3,'   ',rstru[i].stloc:4);

      end;  {with}
   end;  {for}
   writeln;
   writeln('                       Record length -> ',dbhead.rec_bytes:4);
end; {procedure showstruc }

procedure calc_coloff;
{ calculate the offset from the beginning of the record for each
  data element.}
var
   i,j :integer;
begin
   j := 2;       { first element of record is deleted flag }
   for i := 1 to no_col do
      begin
      with rstru[i] do
         begin
         stloc := j;
         j := j + width;
      end; {with}
   end;  {for}
end;   {procedure calc_coloff}

function dbgoto(rec_no:longint):integer;
{ Fills the dbbuf[] with data from rec_no record of the database, returns
  STD_ERR_CODES.
}
var
   numread    :word;
   fileloc    :longint;
begin
   dbgoto := DBOK;    { default to success }
   if(rec_no < 1) then
      begin
      dbgoto := BOF;
      rec_no := 1;
   end;
   if(rec_no > dbhead.no_rec) then
      begin
      dbgoto := dbhead.no_rec;
      rec_no := dbhead.no_rec;
   end;
   db_rec_no := rec_no;
   fileloc := (dbhead.header_bytes + ((rec_no -1) * dbhead.rec_bytes));
   seek(dbfin,fileloc);
   blockread(dbfin,dbbuf,dbhead.rec_bytes,numread);
   if(numread = 0) then
      dbgoto := READ_ERR;
end; {function dbgoto}

function dbuse(dbfilename:string):integer;
{ reads and stores header information on a Dbase III+ .dbf file.
  Must be the first call in your program as it opens the Dbase database
  file name dbfilename.
  Returns STD_ERR_CODES, reads record 1 into dbbuf[].
}
var
   numread :word;
   i,j     :integer;
begin
   dbuse := DBOK;        { default to successfull }
   infile := dbfilename;      { save filename }
   assign(dbfin,dbfilename);
   reset(dbfin,1);            { record size to read = 1 }
   blockread(dbfin,dbhead,sizeof(dbhead),numread);
   if(numread = 0) then
      dbuse := READ_ERR
   else
      begin
      { calc the number of columns of data to read, put in global variable }
      no_col := ((dbhead.header_bytes - sizeof(dbhead)) div 32);
      for i := 1 to no_col do       { read the column definitions }
         begin
         blockread(dbfin,rec_stru,sizeof(rec_stru),numread);
         if(numread = 0) then
            dbuse := READ_ERR
         else
            begin                   { move it to users structure }
            rstru[i].rtype := rec_stru.rtype;
            rstru[i].fld_addr := rec_stru.fld_addr;
            rstru[i].width := rec_stru.width;
            rstru[i].decp := rec_stru.decp;
            rstru[i].multi_user := rec_stru.multi_user;
            rstru[i].work_id := rec_stru.work_id;
            rstru[i].m_user := rec_stru.m_user;
            rstru[i].set_fields := rec_stru.set_fields;
            for j := 1 to 8 do
               rstru[i].resrvd[j] := rec_stru.resrvd[j];
            j := 1;                 { convert from C string to Pascal string }
            while((ord(rec_stru.name[j]) > 0) and (j <= 10)) do
               begin
               rstru[i].name[j] := rec_stru.name[j];
               inc(j);
            end;
            rstru[i].name[0] := chr(lo(j-1));    { set string length }
         end;
      end;
      calc_coloff;                        { calculate column offsets }
      dbuse := dbgoto(1);
   end;
end;   {function dbuse}

function dbclose:integer;
{ Call at end of your application to close the Dbase file.  For now
  there is only one file to close, if extended to use
  multiple database files then this procedure would be required.
  Returns STD_ERR_CODES.
}
begin
   dbclose := DBOK;
   close(dbfin);
end; {procedure dbclose}

procedure list_all_recs;
{ list all records in the dbase file starting with record 1, listing is
  in a SDF format.
}
var
   tmp_recno  :longint;
   numread    :word;
   j          :integer;
begin
   seek(dbfin,dbhead.header_bytes); { positionto first record }
   { file is already open and positioned to the first data record }
   tmp_recno := dbhead.no_rec;
   while (tmp_recno > 0) do  { need a while loop for more than int }
      begin
      blockread(dbfin,dbbuf,dbhead.rec_bytes,numread);
      if(numread > 0) then
         begin
         write('!');
         for j := 1 to dbhead.rec_bytes do
            write(dbbuf[j]);
         writeln('!');
         dec(tmp_recno);
      end
      else
         writeln('Error reading record..');
   end;
end; {procedure list_all_recs}

function version_no:string;
{ Returns the string representation of the version of the
  dblook.pas package.
}
begin
   version_no := vno;
end; {function version_no}

function dbfldno(fname:string):integer;
{ Returns an integer which is the number in the rstru array where fname
  is located.  Used to enable user to use field names in functions to
  return data.  Returns 0 if fname not found.
}
var
   i   :integer;
begin
   dbfldno := 0;       { default to not found }
   for i := 1 to no_col do
      if(fname = rstru[i].name) then
         dbfldno := i;
end; {function dbfldno}

function dbstr(fldno:integer):string;
{ Returns the string representation of any field of the database.  This
  string is filled out to the full field length by padding with spaces.
}
var
   tmp  :string;
   i    :integer;
begin
   for i := 1 to rstru[fldno].width do
      tmp[i] := dbbuf[rstru[fldno].stloc + i - 1];
   tmp[0] := chr(rstru[fldno].width);
   dbstr := tmp;
end; {function dbstr}

function dbint(fldno:integer):integer;
{ Returns the integer representation of any field of the database.
}
var
   tmp      :string;
   i,result :integer;
begin
   for i := 1 to rstru[fldno].width do
      tmp[i] := dbbuf[rstru[fldno].stloc + i - 1];
   tmp[0] := chr(rstru[fldno].width);
   val(tmp,i,result);
   dbint := i;
end; {function dbint}

function dblong(fldno:integer):longint;
{ Returns the long integer representation of any field of the database.
}
var
   tmp      :string;
   i,result :integer;
   retval   :longint;
begin
   for i := 1 to rstru[fldno].width do
      tmp[i] := dbbuf[rstru[fldno].stloc + i - 1];
   tmp[0] := chr(rstru[fldno].width);
   val(tmp,retval,result);
   dblong := retval;
end; {function dblong}

function dbreal(fldno:integer):real;
{ Returns the long integer representation of any field of the database.
}
var
   tmp      :string;
   i,result :integer;
   retval   :real;
begin
   for i := 1 to rstru[fldno].width do
      tmp[i] := dbbuf[rstru[fldno].stloc + i - 1];
   tmp[0] := chr(rstru[fldno].width);
   val(tmp,retval,result);
   dbreal := retval;
end; {function dbreal}

function dblogic(fldno:integer):boolean;
{ returns true or false representing the logical value of the field.
}
var
   i  :integer;
begin
   i := rstru[fldno].stloc;
   if((dbbuf[i] = 'T') or (dbbuf[i] = 't') or (dbbuf[i] = 'Y') or
      (dbbuf[i] = 'y')) then
      dblogic := true
   else
      dblogic := false;
end; {function dblogic}

function dbdeleted:boolean;
{ Returns true if record in dbbuf[] is marked as deleted, else
  returns false.
}
begin
   if(dbbuf[1] = '*') then
      dbdeleted := true
   else
      dbdeleted := false;
end;  {function dbdeleted}

function dbrecno:longint;
{ Returns the present record number in the database. }
begin
   dbrecno := db_rec_no;
end;  {function dbrecno}

function dbskip(rec_no:longint):integer;
          { positions .DBF file forward (+rec_no) or backwards (-rec_no) rec_no
            records from present position.  Fills dbbuf[] from new DBF record.
            Returns  STD_ERR_CODES.
          }
begin
   if(rec_no > 0) then inc(db_rec_no,rec_no);
   if(rec_no < 0) then dec(db_rec_no,rec_no);
   dbskip := dbgoto(db_rec_no);
end; {function dbskip}

function dbtop:integer;
          { Positions .DBF file to record 1, fills dbbuf[] with data }
begin
   dbtop := dbgoto(1);
end; {function dbtop}

function dbbottom:integer;
          { Positions .DBF file to last record, fills dbbuf[] with data }
begin
   dbbottom := dbgoto(dbhead.no_rec);
end; {function dbbottom}

{ ---- end of implementation ---- }

begin     { --- initialization --- }
end.  { dblook.pas }
