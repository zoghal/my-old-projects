{
  MakeBig - BigFilegenerator version 1.1

  (c) vIRtECH 1996 Ansgar Scherp, Joachim Gelhaus

  Example file to show how to create a BigFile.
}
uses Dos, Crt, _BigLoad;

const
  { the name BigFile you want to create; optional: file extension }
  Name  = 'TESTBIG';

begin
  ClrScr;
  BigFileCreateOpen( Name ); { initialising the bigfile }

  { ************************************************************ }

  { add the files to the BigFile; 1st parameter : directory name
                                  2nd parameter : file name
    Wildcars are also supported! }

  Add2BigFile( '', '*.TXT' ); { add all *.TXT files of the current
                                                         directory }
  Add2BigFile( '', 'MAKEBIG.EXE' ); { add MAKEBIG.EXE to BigFile }

  { ************************************************************ }

  BigFileCreateClose; { close the BigFile }
  AddIndex2BigFile;   { add BigIndexFile to BigFile }
end.
