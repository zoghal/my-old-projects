CONST
    SCRNMAX     = 80;

TYPE
    STR80       = STRING[80];
    CHARSET     = SET OF CHAR;
    
            {Screen Display Routines}

FUNCTION At (x,y:INTEGER):CHAR;
    BEGIN
        GOTOXY(x,y);
        At := CHR(0)
    END;

FUNCTION Bright:CHAR;
    BEGIN
        HIGHVIDEO;
        Bright := CHR(0)
    END;

FUNCTION Dim:CHAR;
    BEGIN
        LOWVIDEO;
        Dim := CHR(0)
    END;

        {Screen Erase Routines}

PROCEDURE WipeUp(t:INTEGER);
    VAR
        i   : BYTE;
    BEGIN
        FOR i := 24 DOWNTO 1 DO BEGIN
            GOTOXY(1,i);
            CLREOL;
            DELAY(t)
        END;
        GOTOXY(1,1)
    END;

PROCEDURE WipeDown(t:INTEGER);
    VAR
        i   : BYTE;
    BEGIN
        FOR i := 1 TO 24 DO BEGIN
            GOTOXY(1,i);
            CLREOL;
            DELAY(t)
        END;
        GOTOXY(1,1)
    END;

PROCEDURE Scroll(lines,time:INTEGER);
    VAR
        i   : BYTE;
    BEGIN
        FOR i := 1 TO lines DO BEGIN
            WRITE(At(SCRNMAX,24),^J);
            DELAY(time)
        END;
        GOTOXY(1,1)
    END;

        {String Formatting Routines}
{$V-}

FUNCTION LString(s:STR80;n:INTEGER):STR80;
    BEGIN
        LString := COPY(s,1,n)
    END;

FUNCTION RString(s:STR80;n:INTEGER):STR80;
    BEGIN
        RString := COPY(s,LENGTH(s)-PRED(n),n)
    END;

FUNCTION PadLeft(s:STR80;n:BYTE):STR80;
    BEGIN
        WHILE LENGTH(s) < n DO
            s := ' ' + s;
        PadLeft := s
    END;

FUNCTION PadRight(s:STR80;n:BYTE):STR80;
    BEGIN
        WHILE LENGTH(s) < n DO
            s := s + ' ';
        PadRight := s
    END;

{$V+}

        {Screen Output Routines}
{$V-}

PROCEDURE Center(line:INTEGER; s:STR80);
    BEGIN
        WRITE(AT(SCRNMAX DIV 2 -(LENGTH(s) DIV 2),line),s)
    END;

PROCEDURE RPrint(s:STR80; t,x,y:INTEGER);
    VAR
        i       : BYTE;
    BEGIN
        FOR i := 1 TO LENGTH(s) DO BEGIN
            GOTOXY(PRED(x+i),y);
            WRITE(s[i]);
            DELAY(t)
        END;
    END;

PROCEDURE LPrint(s:STR80; t,x,y:INTEGER);
    VAR
        i       : BYTE;
    BEGIN
        FOR i := LENGTH(s) DOWNTO 1 DO BEGIN
            WRITE(At(PRED(x+i),y),s[i]);
            DELAY(t)
        END;
    END;

PROCEDURE Frame(line:BYTE; s:STR80);
    VAR
        i,j     : BYTE;
        s1      : STR80;
    BEGIN
        s  := '* ' + s + ' *';
        s1 := '';
        FOR i := 1 TO LENGTH(s) DO
            s1 := s1 + '*';
        Center(line,s1);
        Center(line+1,s);
        Center(line+2,s1)
    END;

{$V+}

        {Keyboard Input}

FUNCTION GetChar(okset:CHARSET; show:BOOLEAN):CHAR;
    VAR
        good        : BOOLEAN;
        ch          : CHAR;
    BEGIN
        REPEAT
            READ(KBD,ch);
            IF EOLN(KBD) THEN ch := ^M;
            good := ch IN okset;
            IF NOT good THEN WRITE(^G)
                        ELSE
                            IF show THEN
                                IF ch IN [CHR(32)..CHR(126)] THEN WRITE (ch);
        UNTIL good;
        GetChar := ch
    END;

FUNCTION GetString(okset:CHARSET; maxlen:INTEGER):STR80;
    VAR
        s1,stemp    : STR80;
        i,n         : BYTE;
    BEGIN
        s1 := ''; stemp := '';
        REPEAT
            IF LENGTH(stemp) = 0
                THEN
                    s1[1] := GetChar(okset + [^M],TRUE)
                ELSE
                    IF LENGTH(stemp) = maxlen
                        THEN
                            s1 := GetChar([^M,^H,^X],TRUE)
                        ELSE
                            s1 := GetChar(okset + [^M,^H,^X],TRUE);
            IF s1[1] in okset
                THEN
                    stemp := s1[1]
                ELSE
                    IF s1[1] = ^H  {DESTRUCTIVE BACKSPACE}
                        THEN BEGIN
                            WRITE(^H,' ',^H);
                            DELETE(stemp,LENGTH(stemp),1)
                        END;
                    IF s1[1] = ^X  {CANCEL LINE}
                        THEN BEGIN
                            FOR i := 1 TO LENGTH(stemp) DO
                                WRITE(^H,' ',^H);
                            s1    := '';
                            stemp := '';
                        END;
        UNTIL s1[1] = ^M;
        IF LENGTH (stemp) <> 0
            THEN
                GetString := stemp
            ELSE
                GetString := ''
    END;
    
            {Menu Selection Routines}

PROCEDURE Pointer(VAR cp:INTEGER; max,horiz,vert:INTEGER);
    VAR
        cpo     : INTEGER;
        ch      : CHAR;
    BEGIN
        cp      := PRED(cp);
        cpo     := cp;
        max     := PRED(max);
        WRITE(AT(horiz-1,vert+cp),Bright,'>',Dim);
        REPEAT {MAIN LOOP}
            REPEAT {READ KEYBOARD}
                ch := CHR(0);
                READ(KBD,ch)
            UNTIL (ORD(ch) IN [45,13,43,27]);
            WRITE(At(horiz-1,vert+cp),'   ');
            IF (ch = CHR(45) ) THEN
                BEGIN {MINUS SIGN}
                    cp := PRED(cp);
                    IF cp < 0 THEN cp := max
                END;
            IF (ch = chr(43)) THEN
                BEGIN {PLUS SIGN}
                    cp := SUCC(cp);
                    IF cp > max THEN cp := 0
                END;
            WRITE(At(horiz-1,vert+cp),Bright,'>',Dim);
        UNTIL (ch IN [CHR(13),CHR(27)]);
        IF (ch = chr(27)) THEN cp := cpo;
        cp := SUCC(cp)
    END;

{$V-}
FUNCTION Letter(s:STR80):CHAR;
    VAR
        s1      : STR80;
    BEGIN
        s1 := COPY(s,1,1);
        DELETE (s,1,1);
        WRITE(Bright,s1,Dim,')',s);
        Letter := CHR(0)
    END;

FUNCTION Choices(s:STR80):CHAR;
    VAR
        i       : BYTE;
    BEGIN
        WRITE(Dim,'Please select: ');
        FOR i := 1 TO LENGTH(s) DO
            WRITE(Bright,S[i],Dim,') ');
        Choices := CHR(0)
    END;
{$V-}
                    
        
            

    
