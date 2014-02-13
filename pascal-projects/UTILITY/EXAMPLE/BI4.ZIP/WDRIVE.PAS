{
  Windows example of how to find out about existing 
  drives without generating an error. See Drives.pas
  for a Dos Example.
}
program WinDrives;
uses
  WGetDriv,
  WinCrt;

begin
  GetDrives;
end.