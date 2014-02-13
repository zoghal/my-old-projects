(* BOOTLOOK written by William C. Scott and released to the public   *)
(*  domain on 12/06/89.  No rights reserved. No hooks permitted and  *)
(*  no byteing below the disk.                                       *)

program bootlook;

uses crt,dos,disk;   { Disk.tpu is just a unit with the single procedure }
                     { from Turbo Power's Turbo Professional 5.0 toolkit }
                     { The procedure is GetDiskStuff in BOOTLOOK.        }

type

  bootrecptr = ^bootrecord;
  bootrecord = record
       nj       : array[0..2] of byte;       {offset  0   Near jump code   }
       oem      : array[0..7] of byte;       {        3   OEM name and ver }
       bytesec  : word;                      {       11   Bytes/Sector     }
       sectclus : byte;                      {       13   Sectors/cluster  }
       ressect  : word;                      {       14   Reserved sectors }
       fattables: byte;                      {       16   FAT tables       }
       direntrys: word;                      {       17   Directory entries}
       logsec   : word;                      {       19   Logical sectors  }
       MDS      : byte;                      {       21   Media descriptor }
       FatSects : word;                      {       22   FAT sectors      }
       Secstrak : word;                      {       24   Sectors/track    }
       NumHeads : word;                      {       26   Number of heads  }
       HidnSecs : word;                      {       28   Hidden sectors   }
       bootcode : array[0..415] of byte;     {       30   boot code        }
       partcode : array[0..15] of byte;      {      446   partition info   }
       bootcode2: array[0..49] of byte;      {      462   rest of boot code}
     end;

var
  boot    : bootrecord;
  bootptr : bootrecptr;
  sc,sct,
  oemstr  : string;
  i       : integer;
  drvnum  : byte;
  DriveSpec,
  ch      : char;
  size    : longint;
  rsize   : real;
  lbytes  : longint;


procedure cursoroff;
var
  regs: registers;
begin
regs.cx:= $2000;
regs.ax:= $0100;
intr($10,regs);
end;

procedure cursoron;
var
  regs: registers;
begin
regs.cx:= $0607;
regs.ax:= $0100;
intr($10,regs);
end;


{ Get/show diskette info }

procedure Bootrec(DriveSpec: char);
begin
  Drvnum := ord(DriveSpec)-ord('A');
  if GetDiskStuff(drvnum,0,1,boot) then
    with boot do begin
      writeln;
      writeln('You selected Drive ',ch,' to review.');
      writeln;
      writeln('This is what was found on track 0, sector 1 ... (the boot sector).');
      writeln;
      oemstr[0] := #8;
      for i := 0 to 7 do
        oemstr[i+1] := chr(boot.oem[i]);
      writeln(' 1. Formatted using  '+oemstr);
      writeln(' 2. ',ressect,' reserved sector(s)');
      writeln(' 3. ',fattables,' FAT tables');
      writeln(' 4. Allows ',direntrys,' directory entries in the root directory.');
      writeln(' 5. ',hidnsecs,' hidden sectors.');
      writeln(' 6. ',bytesec,' bytes per sector.');
      writeln(' 7. ',sectclus,' sector(s) per cluster.');
      writeln(' 8. ',secstrak,' sectors/track.');
      writeln(' 9. Formatted using ',numheads,' head(s).');
      writeln('10. ',logsec,' logical sectors are reported.');
      rsize := boot.logsec/(boot.numheads * boot.secstrak);
      writeln;
      writeln('11. ',rsize:6:0,' Tracks (cylinders) ');

      lbytes := longint(bytesec);
      rsize := longint(logsec)*lbytes -
                 (longint(ressect)*lbytes +
                 (longint(fatsects)*lbytes)*(longint(fattables)) +
                 (longint(direntrys)/16.0)*lbytes);

      writeln;
      writeln('Based on this information, the disk capacity is ... ',rsize:6:0,' bytes.');
      writeln;
      writeln('     Select another drive or press <ESC> to quit.');
    end else
    begin
      clrscr;
      writeln;
      writeln;
      writeln('Error detected trying to read drive ',drivespec);
      writeln;
      writeln;
      writeln('Press any key to continue ... ');
      writeln;
      writeln;
      writeln('Check the oil and tire pressure in ',drivespec,' too ...');
    end;
  repeat until keypressed;
end;


begin
  cursoroff;
  drivespec := #33;
  repeat
    clrscr;
    writeln('Press <ESC> to end program. ');
    writeln;
    writeln('Input disk letter (make sure something is there to read) ... ');

    ch := upcase(readkey);
    if ch in ['A'..'Z'] then
      DriveSpec := ch
     else DriveSpec := #0;
    if DriveSpec in ['A'..'Z'] then
      Bootrec(DriveSpec);
  until ch = #27;
  Cursoron;
  clrscr;
  writeln('oops ... ',chr(1));
end.
