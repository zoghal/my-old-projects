program anti_virus_cih_v1_x;
 {$M $4000,0,0 }   { 16K stack, no heap }
uses crt,dos;
var
  dee,ss,aaa :string;
  ch:char;
  ff:file;
  DOOO :BOOLEAN;
  i :byte;
  procedure files;
  begin
  Assign(ff,'farse.ovl');
  Rename(ff,'farse.exe');
  Assign(ff,'clean.dat');
  Rename(ff,'s.exe');
  ss :='';
  SwapVectors;
  Exec('farse.exe',ss);
  SwapVectors;
  end;
  procedure help;
  BEGIN
  textbackground (1);
  window (20,10,60,20);
  clrscr;
  textbackground (2);
  window (21,11,59,19);
  clrscr;
  writeln( '             *** HELP ***');
  writeln;
  writeln(' clean and remove a virus cih V1.1,2,3');
  writeln;
  writeln('      1.1,2,3 ���� CIH ����� ����� 푕 ');
  writeln('             ** ������� ** ');
  writeln;
  write('CleanCih Copyrigh (C) 1998  M.S.S');
  repeat until keypressed;
  textbackground (0);
  window (5,6,76,25);
  clrscr;
  END;
  procedure exit;
  begin
  clrscr;
  Assign(ff,'farse.exe');
  Rename(ff,'farse.ovl');
  Assign(ff,'s.exe');
  Rename(ff,'clean.dat');
  textbackground (0);
  window (1,1,80,25);
  clrscr;
  TEXTCOLOR (7);
  writeln ('                    G     O     O     D       B     A     Y');
  WRITELN;
  WRITELN ('                          ***    M.S.SOUZANCHI    ***');
  DELAY (700);
  CLRSCR;
  halt;
  end;
  procedure win;
  begin
  textbackground (0);
  window (5,6,76,25);
  clrscr;
  end;
  procedure clean;
  begin
  textbackground (4);
  window (24,10,56,17);
  clrscr;
  textbackground (7);
  window (26,11,54,16);
  clrscr;
  write (' ���� ���� �� ��� ���� �����');
  textbackground (1);
  window (27,15,53,15);
  clrscr;
  readln (dee);
  aaa :=dee++' /autoclean';
  textbackground (0);
  window (1,5,80,25);
  clrscr;
  textcolor (7);
  clrscr;
  SwapVectors;
  Exec('s.exe',aaa);
  SwapVectors;
  textcolor (0);
  repeat until keypressed;
  textbackground (0);
  window (1,5,80,25);
  clrscr;
  textbackground (1);
  window (2,3,3,25);
  clrscr;
  textbackground (1);
  window (78,3,79,25);
  clrscr;
  end;
  procedure shrh;
  begin
  textbackground (1);
  window (15,8,65,20);
  clrscr;
  textbackground (2);
  window (17,9,63,19);
  clrscr;
  writeln ('CIH v1.1,2,3               (�������) ����� ���');
  writeln;
  writeln ('����� ��� �������� 26�� CIH v1.2���� ����� ���');
  writeln('         ����� ��� ���� ��� 26�� CIH v1.3 ���� ');
  writeln('       �����  ������� ��� 26 �� CIH v1.4 ����');
  writeln('����� ����� 98�95������ ��� ��� CIH �����:����');
  repeat until keypressed;
  textbackground (0);
  window (5,6,76,25);
  clrscr;
  end;
  begin
  files;
  clrscr;
  textbackground (0);
  window (0,0,100,100);
  clrscr;
  for i := 1 to 160 do
  begin
  textcolor (7);
  write ('�');
  end;
  gotoXY(21,1);
  textcolor (2);
  write ('Clean Virus Win95.Cih v1.1,2,3 And Dos');
  textbackground (1);
  window (2,3,3,25);
  clrscr;
  textbackground (1);
  window (78,3,79,25);
  clrscr;
  textbackground (3);
  window (5,3,15,4);
  clrscr;
  TEXTCOLOR (0);
  wrIteln (' F1 : HELP');
  WRITE ('    ���  ');
  textbackground (3);
  window (20,3,31,4);
  clrscr;
  TEXTCOLOR (0);
  wrIteln (' F2 : CLEAN');
  WRITE ('  ���� 푕 ');
  textbackground (3);
  window (36,3,59,4);
  clrscr;
  TEXTCOLOR (0);
  wrIteln ( ' F3 : VIRUS INFORMATION');
  WRITE ('       ����� ��� ');
  textbackground (3);
  window (64,3,75,4);
  clrscr;
  TEXTCOLOR (0);
  wrIteln (' F10 : EXIT');
  WRITE ('    ���� ');
  repeat
  ch :=readkey;
  case ch of
  #0:
  begin
  ch :=readkey;
  case ch of
  #59: HELP;
  #68 :exit;
  #60 :clean;
  #61 :shrh;
  end;
  END;
  END;
  UNTIL DOOO;
  end.