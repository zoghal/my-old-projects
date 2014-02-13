{
  TUTOR1.PAS

  Example file to show how to use the _BigLoad - Toolkit.

}

uses crt, _BigLoad;

const
  Stream1 : byte = 1;

var
  HelpByte   : Byte;
  HelpString : String;

begin
  ClrScr;

  { open the BigFile "TESTBIG" and handle the index from disk. You may also
    try to hanlde the index from memory with IndexFromMemory }
  BigFileInit( 'TESTBIG', IndexFromDisk );

  { checks if a file with the specified name exists in the opened BigFile }
  Write( 'The File TESTFILE.TXT does ' );
  if BigFileExists( 'TESTFILE.TXT' ) then
      WriteLn( 'exist.' )
    else
      WriteLn( 'not exist.' );

  { open a file for reading from the BigFile by the stream Stream1 and
    reset it. The second parameter of BigReset has NO effect on any
    procedures or functions of BigLoad. It exists just to make it easier
    to convert your routines to BigFile-compatible ones. }
  BigAssign( Stream1, 'TESTFILE.TXT' );
  BigReset( Stream1, 1 );

  { get the size of a file }
  Write( 'The FileSize of TESTFILE.TXT is ' );
  Writeln( BigFileSize( Stream1 ), ' bytes ' );

  { read the file and display it on the screen as long as you don't have
    reached the End Of File (EOF). }
  WriteLn( 'File contains : ' );
  while not BigEOF( Stream1 ) do
    begin
      BigReadS( Stream1, HelpString );
      WriteLn( HelpString );
      { You may also try the folling code: }
      {BigReadB( Stream1, HelpByte );
      Write( Chr( HelpByte ) );}
    end;

  { seek to file position 20 }
  BigSeek( Stream1, 20 );

  { read the 20th character }
  Write( 'The 20th character is : ' );
  BigReadB( Stream1, HelpByte );
  WriteLn( Chr( HelpByte ) );

  { close stream Stream1 of the BigFile }
  BigClose( Stream1 );

  { close reading from the BigFile }
  BigFileClose;
end.
