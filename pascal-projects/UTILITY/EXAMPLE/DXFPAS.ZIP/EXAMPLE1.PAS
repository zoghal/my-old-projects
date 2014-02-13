PROGRAM EXAMPLE1;

{This program serves as an example of how to write a Turbo Pascal program that
 utilizes DXFWRITE.TPU}

USES TPCRT,DXFWRITE;   {Allows program to use DXFWRITE} 

PROCEDURE DRAW_POINT;

VAR
  X,Y:REAL;
  LAYER:STRING;

BEGIN
  CLRSCR;
  WRITELN('Enter X coordinate');
  READLN(X);
  WRITELN('Enter Y coordinate');
  READLN(Y);
  WRITELN('Enter Layer name');
  READLN(LAYER);
  DXF2D_POINT(X,Y,LAYER);
END;


PROCEDURE DRAW_LINE;

VAR
  X1,Y1,X2,Y2:REAL;
  LAYER:STRING;

BEGIN
  CLRSCR;
  WRITELN('Enter beginning X coordinate');
  READLN(X1);
  WRITELN('Enter beginning Y coordinate');
  READLN(Y1);
  WRITELN('Enter ending X coordinate');
  READLN(X2);
  WRITELN('Enter ending Y coordinate');
  READLN(Y2);
  WRITELN('Enter Layer name');
  READLN(LAYER);
  DXF2D_LINE(X1,Y1,X2,Y2,LAYER);
END;

PROCEDURE DRAW_ARC;

VAR
  X,Y,RAD,START_ANG,END_ANG:REAL;
  LAYER:STRING;

BEGIN
  CLRSCR;
  WRITELN('Enter X coordinate');
  READLN(X);
  WRITELN('Enter Y coordinate');
  READLN(Y);
  WRITELN('Enter length of radius');
  READLN(RAD);
  WRITELN('Enter starting angle');
  READLN(START_ANG);
  WRITELN('Enter ending angle');
  READLN(END_ANG);
  WRITELN('Enter Layer name');
  READLN(LAYER);
  DXF2D_ARC(X,Y,RAD,START_ANG,END_ANG,LAYER);
END;

PROCEDURE DRAW_CIRCLE;

VAR
  X,Y,RAD:REAL;
  LAYER:STRING;

BEGIN
  CLRSCR;
  WRITELN('Enter X coordinate');
  READLN(X);
  WRITELN('Enter Y coordinate');
  READLN(Y);
  WRITELN('Enter length of radius');
  READLN(RAD);
  WRITELN('Enter Layer name');
  READLN(LAYER);
  DXF2D_CIRCLE(X,Y,RAD,LAYER);
END;

PROCEDURE DRAW_PLINE;

VAR
  X,Y,BEGIN_WIDTH,END_WIDTH:REAL;
  LAYER:STRING;
  I,COUNT:INTEGER;
  CHOICE:CHAR;
  CLOSED:BOOLEAN;

BEGIN
  CLRSCR;
  {Widths of polylines set to 0, could be entered with ponts.}
  BEGIN_WIDTH:=0.0; 
  END_WIDTH:=0.0;   
  WRITELN('Enter Layer name');
  READLN(LAYER);
  WRITELN('Is the polyline Open or Closed? Enter O or C.');
  REPEAT;
    READLN(CHOICE);
    CHOICE:=UPCASE(CHOICE);
  UNTIL (CHOICE='O') OR (CHOICE='C');
  IF CHOICE='C' THEN CLOSED:=TRUE ELSE CLOSED:=FALSE;
  BEGIN2D_PLINE(LAYER,CLOSED);
  WRITELN('How many points do you want to enter?');
  READLN(COUNT);
  FOR I:=1 TO COUNT DO BEGIN
                         WRITELN('Enter X coordinate');
                         READLN(X);
                         WRITELN('Enter Y coordinate');
                         READLN(Y);
                         DXF2D_PLINE(X,Y,BEGIN_WIDTH,END_WIDTH);
                       END;
  END_PLINE;
END;

PROCEDURE SET_ELEV;

BEGIN
  CLRSCR;
  WRITELN('Enter new default elevation');
  READLN(DXFELEV);
END;


PROCEDURE SET_THICK;

BEGIN
  CLRSCR;
  WRITELN('Enter new default thickness');
  READLN(DXFTHICK);
END;


PROCEDURE MAIN;

VAR
  FILENAME:STRING;
  DONE:BOOLEAN;
  CHOICE:BYTE;

BEGIN
  CLRSCR;
  WRITELN('Enter .DXF filename to use as output file.  Must have .DXF suffix');
  READLN(FILENAME);
  INIT_DXFFILE(FILENAME);
  DONE:=FALSE;
  REPEAT;
    CLRSCR;   
    WRITELN('Which do you want to do?');
    WRITELN('1 => Draw Point');
    WRITELN('2 => Draw Line');
    WRITELN('3 => Draw Arc');
    WRITELN('4 => Draw Circle');
    WRITELN('5 => Draw Pline');
    WRITELN('6 => Change Default Elevation');
    WRITELN('7 => Change Default Thickness');
    WRITELN('8 => Quit');
    REPEAT;
      READLN(CHOICE);
    UNTIL (CHOICE>=1) AND (CHOICE <=8);
    CASE CHOICE OF
      1 : DRAW_POINT;
      2 : DRAW_LINE;
      3 : DRAW_ARC;
      4 : DRAW_CIRCLE;
      5 : DRAW_PLINE;
      6 : SET_ELEV;
      7 : SET_THICK;
      8 : DONE:=TRUE;
    END; {Case}
  UNTIL DONE;
  CLOSE_DXFFILE;
END;

BEGIN
  MAIN;
END.