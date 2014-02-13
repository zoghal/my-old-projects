Unit Dir ;

{ This unit will give you a pop-up window with a list of files in the current
    subdirectory.  If you are in the root directory, then it will also give a
    list of the current disk drives available, and allow the user to log on to
    any available drives.  There are two routines implemented that you can
    easily integrate into your own programs.

 1) The first routine obtains a list of all files in the current directory.  It
    excludes hidden, system, and volume files, as well as the '.' file.  The
    files are kept in the heap in a series of records of type SearchRec.  The
    array FilPtrs contains pointers into the heap to find the appropriate
    record.  Usage of GetFileList is simple:

       GetFileList (PathName) ;      (* get file list for named directory *)
          or
       GetFileList (FExpand('')) ;   (* get file list for current directory *)

    Either one will get the files in the current or named directory and put
    them into the heap, with FilPtrs pointing the way.  You can find the last
    entry in FilPtrs by either searching for a NIL pointer, or accessing the
    last one through FilPtrs [TotalDirFiles].  You do not need to ever call
    this routine by itself unless you want to perform your own file management
    as DisplayList calls this routine internally.  It is available if you need
    it though.

 2) The second routine is DisplayList (wt,wl,wh,ww,FilName).  DisplayList
    automatically calls GetFileList, so you do not need to call GetFileList
    first.  To use it, you must pass it five parameters:

       wt       : the top row of the top of the directory window
       wl       : the left column of the side of the directory window
       wh       : the number of rows in the directory window
       ww       : the number of columns in the directory window
       FilName  : the variable name for the selected file

    Usage is also quite simple:

       DisplayList (wt,wl,wh,ww,FilName) ;

    The four window coordinates must be variables and not constants as
    DisplayList allows the user to move the window around, and remembers the
    last location for the window.  Before you call DisplayList for the first
    time, you MUST call the InitWindow routine first, or be prepared for weird
    results.

    Operation is very simple and intuitive (I hope).  The user uses the arrow
    keys, PgUp, PgDn, Home, and End keys for moving the file selector bar
    around, and the Enter or Return key to either select a file, or to select
    another drive/directory.  Ctrl+arrow keys moves the window, and Alt+arrows
    resizes the window.  When all else fails, press F1 for help with the keys.

Note: This program uses the Quik and Wndw screen and windowing packages
    from Eagle Performance Software, and you must have these units available
    to use Dir.  These packages are shareware and may be downloaded from their
    BBS at (214) 539-9878,  1200/2400 N81.

    This software also requires the drivefnd, extrados, and keyboard units
    which are supplied as part of the package.


    This software is copyright (c) 1990 by Michael Courtney.  It may be used by
    anyone as long as it remains intact and without modification.  There are
    no royalties needed, and it may be freely distributed and copied as long
    as no charges are levied for its distribution, other than the actual cost
    of distribution.

    Michael Courtney
    (714) 893-8165

HISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORY

   04Aug90 M. Courtney - Created version 1.0

HISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORYhistoryHISTORY}

Interface

uses dos, Qwik, Wndw, Strs, Goof;

Procedure GetFileList (PathName: string) ;
Procedure DisplayList (var wt,wl,wh,ww: integer; var FilName: string) ;

type
   SRecP           = ^SearchRec ;      { pointer to a file name }

var
   FilPtrs         : Array[0..999] of SRecP ;  { array of pointers to file names }
   TotalDirFiles   : integer ;         { total number of files in given dir }

Implementation

uses crt, drivefnd, extrados, keyboard ;

var
   GoodKey         : Boolean ;
   Sub             : string[11] ;


Procedure ShowErrorMessage(ErrorMessage:String) ;
   { General error message display pop-up window }

begin
   SetWindowModes(ZoomMode+ShadowRight+CursorOffMode) ;
   MakeWindow(18,0,5,Length(ErrorMessage)+4,Yellow+RedBG,White+RedBG,SingleBrdr,aWindow) ;
   With TopWndwStat do begin
      WndwAttr := Blink+White+RedBG ;
      WWriteC (1,ErrorMessage) ;
      WndwAttr := OrigAttr ;
      end ;
   WWriteC (2,'Press any key') ;
   WWriteC (3,'to continue...') ;
   Key := Readkey ;
   RemoveWindow ;
end ;


Procedure ReleaseFilePtrs ;
   { release the file pointers off of the heap in the last directory }

   var
      i               : integer ;

begin
   i := 1 ;
   While (FilPtrs[i] <> nil) do begin
      Dispose(FilPtrs[i]) ;
      inc(i) ;
      end ;
end ;


Procedure GetFileList (PathName: string) ;
   { get a list of files in the current directory }

   var
      FileP           : SRecP ;       { a pointer to a file name }
      DirInfo         : SearchRec ;   { file data, name, date, attrib, etc }
      i,j             : integer ;
      TempStr,
      TempSt2         : string[80] ;

begin
   i := 1 ;                            { init file pointer counter }
   j := 1 ;                            { init disk drive counter }
   if copy(PathName,3,80) = '\' then begin  { if in root directory }
      While (j < NumbDrives+1) do begin              { for all drives }
         if copy(PathName,1,1) <> Drives[j] then begin  { don't list current drive }
            New(FileP) ;                 { create heap space for drive data }
            FilPtrs[i] := FileP ;        { put pointer to disk drive pointer }
            with DirInfo do begin        { assign data to drive for rest of program }
               Name := Drives[j] + ':';  {   'file' name is drive name }
               Attr := Directory ;       {   'attribute' is directory }
               end ;
            FilPtrs[i]^ := DirInfo ;     { save drive data in the heap }
            inc(i) ;                     { inc to next heap pointer }
            end ;
         inc(j) ;                        { inc to next drive }
         end ;
      end ;
   New(FileP) ;                       { create heap space for first file in directory }
   FilPtrs[i] := FileP ;              { put pointer to first file in pointer array }
   FindFirst('*.*',AnyFile,DirInfo) ; { anyfile is included }
   While (DirInfo.Name = '.') OR
      ((DirInfo.Attr AND VolumeID) <> 0) OR
      ((DirInfo.Attr AND Hidden)   <> 0) OR
      ((DirInfo.Attr AND SysFile)  <> 0) do FindNext(DirInfo) ;
   FilPtrs[i]^ := DirInfo ;           { put the file data on the heap where pointer points }

   { Get rest of files in directory }
   While (DosError = 0) AND (FileP <> Nil) do begin
      FindNext(DirInfo) ;
      if ((DirInfo.Attr AND VolumeID) = 0) AND
         ((DirInfo.Attr AND Hidden)   = 0) AND
         ((DirInfo.Attr AND SysFile)  = 0) then begin
         inc(i) ;
         New(FileP) ;
         FilPtrs[i] := FileP ;
         FilPtrs[i]^ := DirInfo ;
         end ;
      end ;
   TotalDirFiles := i-1 ;       { Total number of files found in this directory }
   FilPtrs[i] := nil ;          { mark last + 1 as nil for end point }
end ;


Function MinI(Value1,Value2:integer) : integer ;

begin
   If Value1 < Value2 then MinI := Value1
                      else MinI := Value2 ;
end ;


Function MaxI(Value1,Value2:integer) : integer ;

begin
   If Value1 > Value2 then MaxI := Value1
                      else MaxI := Value2 ;
end ;


Procedure VerifyParamters (var wt,wl,wh,ww: integer) ;
   { verify that the parameters passed to DisplayList are ok }

begin
   wt := MinI(wt,22) ;
   wl := MinI(wl,62) ;
   wh := MinI(wh,25) ;
   ww := MinI(ww,50) ;

   wt := MaxI(wt,1) ;
   wl := MaxI(wl,1) ;
   wh := MaxI(wh,3) ;
   ww := MaxI(ww,16) ;
end ;


Procedure DisplayList (var wt,wl,wh,ww: integer; var FilName: string) ;
   { display list of files found by GetFileList }

   var
      FileOffset,                    { first file in directory shown on screen }
      FNum            : integer ;    { number of files displayed }
      DT              : DateTime ;
      Attribute       : String[2] ;
      M               : String[12] ;


   Procedure GetSubName (FileName : string) ;
      { find name of the current subdirectory }

      var
         P               : PathStr ;
         D               : DirStr ;
         N               : NameStr ;
         E               : ExtStr ;
         i               : integer ;

   begin
      if FileName <> '' then begin
         FSPlit(FileName,D,N,E) ;
         i := length (D) - 1 ;
         While (D[i] <> '\') AND (i >= 0) do dec(i) ;
         if (i > 0) then Sub := copy(D,i+1,length(D)-i-1)
                    else Sub := '' ;
         end ;
   end ;


   Function SubOffset : integer ;
      { find subroutine offset in display list }

      var
         i              : integer ;

   begin
      i := 0 ;
      Repeat
         inc(i) ;
      Until (i >= wh-2) OR (i >= TotalDirFiles) OR (FilPtrs[i]^.Name = Sub) ;
      if (FilPtrs[i]^.Name = Sub) then SubOffset := i
                                  else SubOffset := 1 ;
   end ;


   Procedure DisplayOne (row,i : integer) ;
      { display one file in the current directory on the screen }

      var
         TempStr    : string[16] ;
         TempNum    : integer ;

   begin
      with FilPtrs[i]^ do begin
         UnpackTime(Time,DT) ;
         with DT do begin                     { for parent directory }
            If Pos('..',Name) > 0 then Wwrite(Row,2,Copy(Name + '            ',1,12))
            else begin                        { look for dot before extension }
               If Pos('.',Name) > 0 then M := Copy(Name,1,Pos('.',Name)-1)
                                    else M := Copy(Name,1,8) ;
               WWrite(Row,2,Copy(M + '        ',1,8)) ;  { write the file name }
               { now write out the extension }
               If Pos('.',Name) > 0 then QWriteEOS(SameAttr,Copy(Copy(Name,Pos('.',Name),4)+'   ',1,4))
                                    else QWriteEOS(SameAttr,'    ') ;
               end ; {else-begin}
            if (Pos(':',Name) = 0) then begin
               if (Attr = Directory) then QWriteEOS(SameAttr,'   <Dir>')
               else
                  if Size <= 9999999 then begin
                     Str(Size:8,TempStr) ;         { if will fit in space }
                     QWriteEOS(SameAttr,TempStr) ;
                     end
                  else begin
                     Str((Size/1024):6:0,TempStr) ; { if won't fit in space }
                     QWriteEOS(SameAttr,TempStr + ' M') ;
                     end ;
               Str(Month:4,TempStr) ;
               QWriteEOS(SameAttr,TempStr+'/') ;
               Str(Day:2,TempStr) ;
               QWriteEOS(SameAttr,TempStr+'/') ;
               Str(Year:4,TempStr) ;
               QWriteEOS(SameAttr,TempStr) ;
               TempNum := (Hour mod 12) ;
               If (TempNum = 0) then TempNum := 12 ;
               Str(TempNum:5,TempStr) ;
               QWriteEOS(SameAttr,TempStr+':') ;
               Str(Min,M) ;
               M := Copy('0'+M,length(M),2) ;
               if Hour < 12 then M := M + 'a'
                            else M := M + 'p' ;
               QWriteEOS(SameAttr,M) ;
               Attribute := '..' ;
               if ((Attr AND ReadOnly) <> 0) then Attribute[1] := 'R' ;
               if ((Attr AND Archive ) <> 0) then Attribute[2] := 'A' ;

{ Use these only if you want to display these attributes and change the length
    of the Attribute string.

               if ((Attr AND Hidden    ) <> 0) then Attribute[ ] := 'H' ;
               if ((Attr AND SysFile   ) <> 0) then Attribute[ ] := 'S' ;
               if ((Attr AND VolumeID  ) <> 0) then Attribute[ ] := 'V' ;
               if ((Attr AND Directory ) <> 0) then Attribute[ ] := 'D' ;
}
               WWrite(Row,46,Attribute) ;
               end ;
          end ; {with}
      end ; {with}
   end ;


   Procedure DisplaySome (FirstFileOffset :integer) ;
      { display either the entire directory, or a screenful depending on
           how many files there are }

      var
         i       : integer ;            { file offset counter }

   begin
      i := FirstFileOffset ;         { start at file offset passed to routine }
      FNum := 0 ;                    { count number of files displayed to not overrun window }
      While (FNum <= wh-3) AND (FilPtrs[i] <> nil) do begin
         inc(FNum) ;
         DisplayOne(FNum,i) ;              { display data for next file }
         if (FNum <= wh-3) then QEosLn ;   { cr except at last line }
         inc(i) ;                          { increment file counter to next file }
         end ;
      VUpdateWindow ;
   end ;


   Procedure ScrollUp ;
      { scroll the file list up by one file }

   begin
      WDelLine(1) ;                  { delete the top line and scroll others up }
      inc(FileOffset) ;              { start next display at next file }
      WGotoRC(wh-2,1) ;              { next file goes at bottom of list }
      DisplayOne (wh-2,FileOffset+wh-3) ; { display next file data }
   end ;


   Procedure ScrollDown ;
      { scroll the file list down by one file }

   begin
      WInsLine(1) ;                  { insert a blank line at top, and scroll other down one }
      dec(FileOffset) ;              { start next display at previous file }
      WGotoRC(1,1) ;                 { next file goes at top of list }
      DisplayOne (1,FileOffset) ;    { display next file data }
   end ;


   Procedure DirectoryHelp ;
      { display a help window when the F1 key is pressed }

      var
         temp            : string[80] ;
         key             : char ;
         Row,
         Col             : integer ;

   begin
      Row := WWhereR ;
      Col := WWhereC ;
      SetWindowModes(CursorOffMode) ;
      MakeWindow(0,0,22,68,Black+LightGrayBG,Black+LightGrayBG,SingleBrdr,Window1) ;
      TitleWindow(Top,Center,Black+LightGrayBG,' TIP Monitor Analysis Program HELP! ') ;
      TitleWindow(Bottom,Left,Black+LightGrayBG,' Directory window ') ;
      AccessWindow(Window1) ;
      WWrite ( 2,2,'The following keys are active:') ;
      With TopWndwStat do begin
         WndwAttr := LightCyan+LightGrayBG ;
         WWrite ( 3,4,chr(24)+chr(27)) ;
         WndwAttr := OrigAttr ;
         WWrite ( 3,17,'move the selector up one file') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite ( 4,4,chr(25)+chr(26)) ;
         WndwAttr := OrigAttr ;
         WWrite ( 4,17,'move the selector down one file') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite ( 6,4,'PgUp') ;
         WndwAttr := OrigAttr ;
         WWrite ( 6,17,'moves the selector up one screenful') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite ( 7,4,'PgDn') ;
         WndwAttr := OrigAttr ;
         WWrite ( 7,17,'moves the selector down one screenful') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite ( 9,4,'Home') ;
         WndwAttr := OrigAttr ;
         WWrite ( 9,17,'moves the selector to the top of the screen') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (10,4,'End ') ;
         WndwAttr := OrigAttr ;
         WWrite (10,17,'moves the selector to the bottom of the screen') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (12,4,'Ctrl-Home ') ;
         WndwAttr := OrigAttr ;
         WWrite (12,17,'moves the selector to the top of the directory') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (13,4,'Ctrl-End ') ;
         WndwAttr := OrigAttr ;
         WWrite (13,17,'moves the selector to the bottom of the directory') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (15,4,'Ctrl- '+chr(27)+chr(24)+chr(26)+chr(25)) ;
         WndwAttr := OrigAttr ;
         WWrite (15,17,'moves the window') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (16,4,'Alt - '+chr(27)+chr(26)) ;
         WndwAttr := OrigAttr ;
         WWrite (16,17,'resizes the window') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (18,4,'Return') ;
         QWriteEOS (OrigAttr,'/') ;
         QWriteEOS (LightCyan+LightGrayBG,'Enter ') ;
         WndwAttr := OrigAttr ;
         WWrite (18,17,'selects a file, or changes drive/directory') ;

         WndwAttr := LightCyan+LightGrayBG ;
         WWrite (19,4,'Esc ') ;
         WndwAttr := OrigAttr ;
         WWrite (19,17,'Escapes without selecting a file') ;

         end ;

      key := Readkey ;
      if key = #0 then key := Readkey ;
      RemoveWindow ;
      WGotoRC(Row,Col) ;

   end ;


   Procedure GetResponse (NumFil:integer) ;
      { get and respond to keys to manipulate the display list }

      var
         error           : Boolean ; { error flag when reading drives }
         FNTickNew,
         FNTick          : real ;    { number 1..wh that shows how many files }
         i               : integer ; { window relative physical display line # }
         TempStr,
         TempSt2         : string[80] ;

   begin
      i := 1 ;                              { start at first file in display }
      GoodKey := true ;
      FNTick := 2 ;                         { initial position for file postion tick }
      Repeat
         WriteToVirtual(aWindow) ;          { in case window moved }
         QAttr(i,2,1,ww-4,White+CyanBG) ;   { highlight the current file in question }
         VUpdateWindow ;                    { update window on CRT }
         WriteToCRT ;
         if (TotalDirFiles <= wh-3) then begin
            if (FNTick <> (wh-3)) then begin
               WBrdrPart(trunc(FNTick),ww-1,BrdrLV) ; { restore the vertical line }
               FNTick := wh-2 ;
               WBrdrPart(trunc(FNTick),ww-1,BrdrCL) ;  { draw a cross }
               end ;
            end
         else begin
            FNTickNew := (((FileOffset+i-1) / TotalDirFiles) * (wh-3)) + 1 ;
            if (FNTick <> FNTickNew) then begin
               WBrdrPart(trunc(FNTick),ww-1,BrdrLV) ; { restore the vertical line }
               FNTick := FNTickNew ;
               WBrdrPart(trunc(FNTick),ww-1,BrdrCL) ; { draw a cross }
               end ;
            end ;
         GetKeyDos ;                        { get a key from user using Dos }
         WriteToVirtual(aWindow) ;
         QAttr(i,2,1,ww-4,LightCyan+LightGrayBG) ; { remove highlight }
         if ExtKey then case Ord(Key) of   { if extended key...}
            Home       : i := 1 ;          { HOME key goes to top of screen }
            EndKey     : i := NumFil ;     { END key goes to bottom }
            PgDn       : begin             { PgDn key scrolls down a page if possible }
                            if (TotalDirFiles > (wh-3)) AND (FileOffset+wh+1 < TotalDirFiles) then begin
                               WClrScr ;
                               FileOffset := MinI(TotalDirFiles-(wh-3),FileOffset+(wh-3)) ;
                               DisplaySome(FileOffset) ;
                               end
                            else i := NumFil ;
                            end ;
            PgUp       : begin                        { PgUp key scrolls up one page if possible }
                            if (FileOffset > 1) then begin
                               WClrScr ;
                               FileOffset := MaxI(FileOffset-(wh-3),1) ;
                               DisplaySome(FileOffset) ;
                               end
                            else i := 1 ;
                            end ;
            CtrlHome,
            CtrlPgUp   : begin                        { Goto first file in list, scrolling if necessary }
                            if (FileOffset > 1) then begin
                               WClrScr ;
                               FileOffset := 1 ;
                               DisplaySome(FileOffset) ;
                               end ;
                            i := 1 ;
                            end ;
            CtrlEnd,
            CtrlPgDn   : begin                        { Goto last file in list, scrolling if necessary }
                            if (TotalDirFiles > (wh-2)) AND (FileOffset+wh+1 < TotalDirFiles) then begin
                               WClrScr ;
                               FileOffset := TotalDirFiles-(wh-3) ;
                               DisplaySome(FileOffset) ;
                               end ;
                            i := NumFil ;
                            end ;
            LeftArrow,   { and scroll if necessary }
            UpArrow    : if (i > 1) then dec(i)
                            else if (TotalDirFiles > wh-2) AND
                                    (FileOffset > 1) then
                               ScrollDown ;
            RightArrow,  { and scroll if necessary }
            DownArrow  : if (i < NumFil) then inc(i)
                            else if (TotalDirFiles > wh-3) AND
                                    (FileOffset+wh-3 < TotalDirFiles) then
                               ScrollUp ;
            AltLeftArrow : if (TVS.WSCol2-TVS.WSCol >= 16) then begin
                              dec(ww) ;
                              VResizeWindow(0,-1);
                              WBrdrPart(trunc(FNTick),ww-1,BrdrCL) ; { draw a cross }
                              end ;
            AltRightArrow : if (TVS.WSCol2-TVS.WSCol < 49) then
                               if (TVS.WSCol2 < 78) then begin
                                  inc(ww) ;
                                  VResizeWindow(0,1);
                                  WBrdrPart(trunc(FNTick),ww-1,BrdrCL) ; { draw a cross }
                                  end
                               else begin
                                  dec(wl) ;
                                  MoveWindow(0,-1) ;
                                  inc(ww) ;
                                  VResizeWindow(0,1);
                                  WBrdrPart(trunc(FNTick),ww-1,BrdrCL) ; { draw a cross }
                                  end ;
            CtrlLeftArrow  : if (TVS.WSCol > 1) then begin
                                dec(wl) ;
                                MoveWindow(0,-1) ;
                                end ;
            CtrlRightArrow : if (TVS.WSCol2 < 78) then begin
                                inc(wl) ;
                                MoveWindow(0,1) ;
                                end ;
            CtrlUpArrow    : if (TVS.WSRow > 1) then begin
                                dec(wt) ;
                                MoveWindow(-1,0) ;
                                end ;
            CtrlDownArrow  : if (TVS.WSRow2 < 24) then begin
                                inc(wt) ;
                                MoveWindow(1,0) ;
                                end ;
            AltHome        : begin
                                MoveWindow(-wt,-wl) ;
                                wl := 1 ;
                                wt := 1 ;
                                end ;
            AltEnd         : begin
                                MoveWindow(25 - (wt + wh), 80 - (wl + ww + 1)) ;
                                wl := 80 - (ww + 1) ;
                                wt := 25 - wh ;
                                end ;
            F1             : begin
{ comment out until get full windows package!!!
                                WriteToCRT ;
                                DirectoryHelp ;
                                WriteToVirtual (aWindow) ;
}
                                end ;
            end
         else case Key of
            RetKey     : begin       { <RET> key either selects this file or moves between directories }
                            with FilPtrs[i+FileOffset-1]^ do begin
                               if (Attr = Directory) then begin
                                  GetSubName(FExpand('')) ;
                                  WClrTitle(Top) ;
                                  if (pos(':',Name) = 0) then      { if not changing drives }
                                     ChDir(FExpand('')+Name)  {  then do a cd }
                                  else begin          {  else log on to new drive }
                                     key := chr($0) ;
                                     Repeat
                                        Error := false ;
                                        R.AH := $1C ;
                                        R.DL := Ord(name[1])-64 ;
                                        Intr($21,R) ;
                                        if (R.AL = 255) then begin
                                           Error := true ;
                                           if (MSDosVersion > 3.0) then ShowDos3xError(Name)
                                           else ShowDos2xError(name) ;
                                           end ;
                                     Until (Error = false) OR (key = EscKey) ;
                                     if key <> EscKey then begin
                                        ChDir(Name) ;
                                        if (DosError <> 0) AND (DosError <> 18) then
                                           ShowErrorMessage(DosErrorMsg(DosError)) ;
                                        ErrorCode := IOResult ;
                                        if (ErrorCode <> 0) AND (ErrorCode <> 18) then
                                           ShowErrorMessage(IOResultMsg(ErrorCode)) ;
                                        end ;
                                     end ;
                                  TitleWindow(Top,Left,Blue+LightGrayBG,' '+FExpand('')+' ') ;
                                  ReleaseFilePtrs ;
                                  GetFileList(FExpand('')) ;
                                  WClrScr ;
                                  FileOffset := 1 ;      { display some files beginning with first one }
                                  DisplaySome(FileOffset) ;
                                  NumFil := FNum ;
                                  i := Suboffset ;
                                  end
                               else begin
                                  FilName := Name ;
                                  GoodKey := false ;
                                  end ;
                               end ; {with}
                            end ;
            EscKey     : begin
                            GoodKey := false ;
                            end ;
            end ;
      Until (GoodKey = false) ;
   end ;


begin  { DisplayList }
   FilName := '' ;
   VerifyParamters (wt,wl,wh,ww) ;
   SetWindowModes(VirtualMode+ZoomMode+ShadowRight+CursorOffMode) ;
   MakeWindow(wt,wl,wh,ww,LightCyan+LightGrayBG,Blue+LightGrayBG,DoubleBrdr,aWindow) ;
   WriteToVirtual(aWindow) ;
   TitleWindow(Top,Left,Blue+LightGrayBG,' '+FExpand('')+' ') ;
   TitleWindow(Bottom,Left,Blue+LightGrayBG,' Use '+chr(24)+chr(25)+' keys, then <RET> to select file ') ;
   WClrScr ;
   FileOffset := 1 ;
   FNum := 1 ;
   FindDrives ;                { get list of available drives }
   GetFileList (FExpand('')) ; { get list of files in this directory }
   DisplaySome(FileOffset) ;   { display the directory, or the first screenful }
   GetResponse(FNum) ;         { get user responses and respond accordingly }
   ReleaseFilePtrs ;
   RemoveWindow ;
end ;  { DisplayList }

end.