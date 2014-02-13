{
  TUTOR2.PAS

  This example shows, how to extract files from a BigFile.

}

uses crt, _BigLoad;

const
  Stream1 : byte = 1;

procedure ExtractFileFromBigFile( Stream : Byte; FromFileName : String;
                                                 ToFileName   : String );
var
  Buffer : array[1..512] of byte;
  ToF    : file;
  NumRead,
  NumWritten : Word;
begin
  { open a file for reading from the BigFile by the stream Stream1 and
    reset it. The second parameter of BigReset has NO effect on any
    procedures or functions of BigLoad. It exists just to make it easier
    to convert your routines to BigFile-compatible ones. }
  BigAssign( Stream, FromFileName );
  BigReset( Stream, 1 );

  { Open output file }
  Assign(ToF, ToFileName );
  { Record size = 1 }
  Rewrite(ToF, 1);

  { now copy it }
  Writeln('Copying ', BigFileSize( Stream ), ' bytes...');
  repeat

    { reads from the stream Stream to Buffer; NumRead contains the
      Number of really readed bytes }
    BigBlockRead( Stream, Buffer, SizeOf(Buffer), NumRead);

    { write the buffer of the size NumRead to disk }
    BlockWrite( ToF, Buffer, NumRead, NumWritten );

  until (NumRead = 0) or (NumWritten <> NumRead);
    { stop, if we had read 0 bytes (EOF occured) or if we wrote an unequal
      number bytes to disk as we read (disk is full). }


  { close stream Stream of the BigFile }
  BigClose( Stream );

  { Close output file }
  Close(ToF);
end;

begin
  ClrScr;

  { open the BigFile "TESTBIG" and handle the index from disk. You may also
    try to hanlde the index from memory with IndexFromMemory }
  BigFileInit( 'TESTBIG', IndexFromDisk );

  { now extract the File MAKEBIG.EXE from BigFile and save it under the
    file name EXTRACT.EXE }
  ExtractFileFromBigFile( Stream1, 'MAKEBIG.EXE', 'EXTRACT.EXE' );

  { close reading from the BigFile }
  BigFileClose;
end.
