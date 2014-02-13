unit WritExec;

  { ==================================================================

                               Unit: WritExec
                             Author: David Doty
                                     Skipjack Software
                                     Columbia, Maryland
               CompuServe User I.D.: 76244,1043

    This unit is based on a previously published program:

                            Program: AutoInst v2.0
                             Author: David Dubois
                                     Zelkop Software
                                     Halifax, Nova Scotia
               CompuServe User I.D.: 71401,747
                  Date last revised: 1988.04.24

    ==================================================================

    This source code is released to the public domain.  If further changes
    are made, please include the above credits in the distributed code.

    This unit allows a program to change the value of a typed constant in its
    own .EXE file.  When the program is run again, the data will be initialized
    to the new value.  No external configuration files are necessary.

    USES

    Examples of the usefulness of this technique would be:

    o   A program that allows the user to change default display colors.

    o   A program that keeps track of a password that the user can change.

    HOW IT WORKS

    You don't have to understand all the details in order to use this
    technique, but here they are.

    The data to be changed must be stored in a TurboPascal typed
    constant.  In all effect, a typed constant is actually a pre-
    initialized variable.  It is always stored in the program's Data
    Segment.  The data can be of any type.

    First, the procedure finds the .EXE file by examining the DOS command
    line, stored with the copy of the DOS environment for the program.  This
    allows the program to find itself no matter where is resides on disk and
    no matter how its name is changed by the user.

    The untyped file is opened with a record size of 1. This allows us
    to read or write a string of bytes using BlockRead and BlockWrite.

    As documented in the DOS Technical Reference, the size of the .EXE
    header, in paragraphs (a paragraph is 16 bytes), is stored as a
    two-byte word at position 8 of the file.  This is read into the
    variable HeaderSize.

    The next step is to find the position of the typed constant in the
    .EXE file. This requires an understanding of the Turbo Pascal 4.0
    memory map, documented on the first and second pages of the Inside
    Turbo Pascal chapter. (That's chapter 26, pages 335 and 336 in my
    manual.)

    First, find the address in memory where the typed constant is
    stored. This can be done in Turbo Pascal by using the Seg and Ofs
    functions. Next find the segment of the PSP (program segment
    prefix). This should always be the value returned by PrefixSeg.
    That will mark the beginning of the program in memory. The
    position of the typed constant in the .EXE image should be the
    number of bytes between these two places in memory. But ...

    But, two corrections must be made. First, the PSP is not stored in
    the .EXE file. As mentioned on page 335, the PSP is always 256
    bytes. We must subtract that out. Secondly, there is the .EXE file
    header. The size of this has already been read in and must be
    added in to our calculations.

    Once the position has been determined, the data stored in the
    typed constant is written in one fell swoop using a BlockWrite.
    This replaces the original data, so that the next time the program
    is run, the new values will used.

    LIMITATIONS

    You cannot use MicroSoft's EXEPACK on the .EXE file, or any other
    packing method I know of. This may change the position, or even
    the size of the typed constant in the file image.

    NOTES

    Since typed constants are always stored in the data segment, the
    function call to Seg( ObjectToWrite ) can be replaced with DSeg. I
    prefer using Seg since it is more descriptive.

    One might think that Cseg can used as an alternative to using
    PrefixSeg and subtracting 256. This will work only if the code
    resides in the main program. If, on the other hand, the code is
    used in a unit, PrefixSeg must be used as described here. You
    might as well use PrefixSeg and save yourself some headaches.

    If you have any comments or questions we would be glad to hear
    them. If you're on CompuServe, you can EasyPlex a letter to
    76244,1043 or 71401,747. Or leave a message on the Borland Programmer's A
    Forum (GO BPROGA). Or, you can write to

                         Skipjack Software
                         P. O. Box 61
                         Simpsonville Maryland 21150

                            or

                         Zelkop Software
                         P.O. Box 5177
                         Armdale, N.S.
                         Canada
                         B3L 4M7

    ==================================================================}


INTERFACE

FUNCTION GetExecutableName : STRING;
{  This function returns the full drive, path, and file name of the application
   program that is running.  This function is of more general interest than
   just for writing into the EXE file.

   NOTE: THIS FUNCTION WILL ONLY WORK UNDER DOS 3.X!!! }

FUNCTION WriteToExecutable( { input } VAR ObjectToWrite;
                            { input } ObjectSize : WORD ) : INTEGER;
{  This procedure modifies the EXE file on disk to contain changes to typed
   constants.  NOTE - the object MUST be a typed constant.  It may be found
   in any part of the program (i.e., main program or any unit).  The call is
   made by untyped address, to allow any kind of object to be written.  The
   function returns the DOS error code from the I/O operation that failed
   (if any did); if all operations were successful, the function returns 0. }

IMPLEMENTATION

FUNCTION GetExecutableName : STRING;
{  This function returns the full drive, path, and file name of the application
   program that is running.  This function is of more general interest than
   just writing into the EXE file.

   NOTE: THIS FUNCTION WILL ONLY WORK UNDER DOS 3.X!!! }

TYPE
   Environment = ARRAY[ 0..32766 ] OF CHAR;
CONST
   NullChar : Char = #0;
   SearchFailed = $FFFF;
VAR
   MyEnviron : ^Environment;
   Loop : WORD;
   TempWord : WORD;
   EnvironPos : WORD;
   FilenamePos : WORD;
   TempString : STRING;
BEGIN { FUNCTION GetExecutableName }

   { Get pointer to DOS environment }
   MyEnviron := Ptr( MemW[ PrefixSeg:$2C ], 0 );

   { Look for end of environment }

   EnvironPos := SearchFailed;
   Loop := 0;
   WHILE Loop <= 32767 DO BEGIN
      IF MyEnviron^[ Loop ] = NullChar
      THEN IF MyEnviron^[ Loop + 1 ] = NullChar
         THEN BEGIN { found two nulls - this is end of environment }
            EnvironPos := Loop;
            Loop := 32767
         END { found two nulls };
      Inc( Loop )
   END { WHILE Loop };
   IF EnvironPos = SearchFailed
   THEN GetExecutableName := ''
   ELSE BEGIN { found end of environment - now look for path/file of exec }

      EnvironPos := EnvironPos + 4;
      FilenamePos := SearchFailed;
      TempWord := EnvironPos;
      Loop := 0;
      WHILE Loop <= 127 DO BEGIN
         IF MyEnviron^[ TempWord ] = NullChar
         THEN BEGIN { found a null - this is end of path/file of exec }
            FilenamePos := Loop;
            Loop := 127
         END { found a null };
         Inc( Loop );
         Inc( TempWord )
      END { WHILE Loop };
      IF FilenamePos = SearchFailed
      THEN GetExecutableName := ''
      ELSE BEGIN { found executable name - move into return string }
        TempString[ 0 ] := Chr( FilenamePos );
        Move( MyEnviron^[ EnvironPos ], TempString[ 1 ], FilenamePos );
        GetExecutableName := TempString
      END { found executable name }

   END { found environment end }

END { FUNCTION GetExecutableName };


FUNCTION WriteToExecutable( { input } VAR ObjectToWrite;
                            { input } ObjectSize : WORD ) : INTEGER;
{  This procedure modifies the EXE file on disk to contain changes to typed
   constants.  NOTE - the object MUST be a typed constant.  It may be found
   in any part of the program (i.e., main program or any unit).  The call is
   made by untyped address, to allow any kind of object to be written.  The
   function returns the DOS error code from the I/O operation that failed
   (if any did); if all operations were successful, the function returns 0. }
CONST
   PrefixSize = 256; { number of bytes in the Program Segment Prefix }
VAR
   Executable : FILE;
   HeaderSize : WORD;
   ErrorCode : INTEGER;

BEGIN { FUNCTION WriteToExecutable }
   Assign( Executable, GetExecutableName );
   {$I-} Reset( Executable, 1 );
   ErrorCode := IOResult;

   IF ErrorCode = 0
   THEN BEGIN { seek position of header size in EXE file }
      Seek( Executable, 8 );
      ErrorCode := IOResult
   END { seek header };

   IF ErrorCode = 0
   THEN BEGIN { read header size in EXE file }
      BlockRead( Executable, HeaderSize, SizeOf( HeaderSize ) );
      ErrorCode := IOResult
   END { read header };

   IF ErrorCode = 0
   THEN BEGIN { seek position of object in EXE file }
      Seek( Executable,
            LONGINT( 16 ) * ( HeaderSize + Seg( ObjectToWrite ) - PrefixSeg ) +
            Ofs( ObjectToWrite ) - PrefixSize );
      ErrorCode := IOResult
   END { Seek object position in file };

   IF ErrorCode = 0
   THEN BEGIN { write new password in EXE file }
      BlockWrite( Executable, ObjectToWrite, ObjectSize );
      ErrorCode := IOResult
   END { write new password };

   Close( Executable );
   WriteToExecutable := ErrorCode

END { FUNCTION WriteToExecutable };

END { UNIT WritExec }.