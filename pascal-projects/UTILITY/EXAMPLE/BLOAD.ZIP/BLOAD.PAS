program bload_demo;
uses crt;
{A program to demonstrate how to load files saved the Basic BSAVE }
{command into Turbo Pascal for display.                           }
{By William Hersh, MD.                                            }
{Not copyrighted.  Released to the public domain for all use.     }

type
  newpage=array[1..16512] of byte;       {array of byte to hold screen     }
  page=record                            {array to hold BSAVE'd file with  }
    hdr: array[0..7] of byte;            {  special location for first     }
    scr: newpage;                        {  8 attribute bytes              }
  end;
  str14=string[14];

var
  grpage: newpage absolute $B800:$0000;  {screen location to write to      }
  pageholder: page;                      {holder for all of BSAVE'd file   }
  fileholder: file of page;              {file variable                    }
  filename: str14;                       {file name                        }

procedure bload(filename: str14);
begin
  assign(fileholder,filename);           {open and                         }
  reset(fileholder);                     {  reset file                     }
  read(fileholder,pageholder);           {read BSAVE'd screen to pageholder}
  close(fileholder);                     {close file                       }
  grpage:=pageholder.scr;                {move picture into screen memory  }
end;                                     {  stripped of first 7 bytes      }

begin {main program}
  clrscr; gotoxy(1,5);
  write('Name of BSAVE''d graphics file?  ');
  read(filename);
  graphcolormode;
  bload(filename);
  repeat until keypressed;
end.
                                                                                                                              