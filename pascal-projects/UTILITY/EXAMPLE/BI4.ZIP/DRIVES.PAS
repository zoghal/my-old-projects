{
  This code shows how to find information about which drives
  exist on the system. It returns the information without
  ever causing an error message to appear on screen.
  See WDrive.Pas for a Windows example.
}
program Drives;
uses
  GetDrive,
  Crt;

begin
  ClrScr;
  GetDrives;
  ReadLn;
end.