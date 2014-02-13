{
  TUTOR2.PAS

  This file shows, how to handle to simultanously opened files.

}

uses crt, _BigLoad;

const
  Stream1 : byte = 1;
  Stream2 : byte = 2;

var
  HelpByte : Byte;
  Counter  : Byte;

begin
  ClrScr;

  { open the BigFile "TESTBIG" and handle the index from disk. You may also
    try to hanlde the index from memory with IndexFromMemory }
  BigFileInit( 'TESTBIG', IndexFromDisk );

  { open a file for reading from the BigFile by the stream Stream1 and
    reset it. The second parameter of BigReset has NO effect on any
    procedures or functions of BigLoad. It exists just to make it easier
    to convert your routines to BigFile-compatible ones. }
  BigAssign( Stream1, 'TESTFILE.TXT' );
  BigReset( Stream1, 1 );

  { open a second file to read from BigFile by the stream Stream2 }
  BigAssign( Stream2, 'HOMEPAGE.TXT' );
  BigReset( Stream2, 1 );

  { read the first 100 charakters byte after byte of each file from BigFile
    and display them on the screen }
  for Counter := 1 to 100 do
    begin
      { read from Stream1 }
      BigReadB( Stream1, HelpByte ); Write( Chr( HelpByte ) );
      { now read from Stream2 }
      BigReadB( Stream2, HelpByte ); Write( Chr( HelpByte ) );
    end;

  { close streams Stream1 and Stream2 of the BigFile }
  BigClose( Stream1 );
  BigClose( Stream2 );

  { close reading from the BigFile }
  BigFileClose;
end.
