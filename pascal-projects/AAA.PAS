{     **************************************************
      *                                                *
      *             –î¤ª îş ü¤¢ ¤‘“÷    :ù¦ø¤•       *
      *               ñ‘î¨‘• ö‘“¥ ù“                   *
      *                                                *
      *                                                *
      **************************************************
}


program project;

uses crt;

type
    info = record
         number : integer;
         name   : string[10];
         price  : longint;
    end ; { of record }

var
   menu_item : integer;
   data_file : file of info ;

   procedure screener;
   var
        i ,j : integer ;
   begin
        textcolor( LIGHTBLUE );
        textbackground( BLUE );
        clrscr;
        for i:=2 to 24 do
            for j:=2 to 79 do
             begin
                  gotoxy(j,i);
                  write('²');
             end;
   end; { of screener procedure }

   procedure draw_win;
   var
      i : integer;
   begin
        textbackground( BLUE );
        gotoxy(22,9);
        write('                                   ');
        for i:=10 to 16 do
         begin
              textbackground( BLUE );
              gotoxy(22,i);
              write('                                   ');
              textbackground( BLACK );
              write('  ');
         end; { for }
        gotoxy(24,17);
        write('                                   ');
   end; { of draw_win procedure }

   procedure clear_win;
   var
      i : integer;
   begin
        textcolor( LIGHTBLUE );
        textbackground( BLUE );
        for i:=9 to 17 do
         begin
              gotoxy(22,i);
              write('²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²');
         end; { for }
   end; { of clear_win procedure }


   procedure add;
   var
      add_item : info ;
   begin
        draw_win ;

        textcolor( CYAN );
        textbackground( BLUE );
        gotoxy(24,11) ; write('ù¤‘õª :');
        gotoxy(24,12) ; write('‘ó‘îô‘÷ :');
        gotoxy(24,13) ; write('–õşì :');
        textcolor( YELLOW );
        gotoxy(33,11) ; readln(add_item.number);
        gotoxy(33,12) ; readln(add_item.name);
        gotoxy(33,13) ; readln(add_item.price);
        textcolor( LIGHTRED );

        {   *********** saving to disk *************  }
        assign( data_file,'info.dat');
        reset( data_file );
        seek( data_file,filesize(data_file) ); { go to the end of file }
        write( data_file,add_item );
        close( data_file );

        gotoxy(40,15) ; write('!¢ª ¯“®ñş‘ê¤¢');
        readln;

        clear_win ;
   end; { of add procedure }

   procedure draw_list;
   var
      i : integer;
   begin
        textbackground( BLUE );
        gotoxy(22,9);
        write('                                   ');
        for i:=10 to 20 do
         begin
              textbackground( BLUE );
              gotoxy(22,i);
              write('                                   ');
              textbackground( BLACK );
              write('  ');
         end; { for }
        gotoxy(24,21);
        write('                                   ');
        textcolor( WHITE );
        textbackground( BLUE );
        gotoxy(23,9) ; write('  ù¤‘õª     ‘ó‘îô‘÷     –õşì ');
        textcolor( YELLOW );
        gotoxy(23,10); write('ÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ');
   end; { of draw_list procedure }

   procedure clear_list;
   var
      i :integer;
   begin
        textcolor( LIGHTBLUE );
        textbackground( BLUE );
        for i:=9 to 24 do
         begin
              gotoxy(21,i);
              write('²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²');
         end; { for }
   end; { of clear_list procedure }


   procedure list;
   var
      i , r :integer ;
      t :info ;
   begin
        draw_list;
        assign( data_file,'info.dat' );
        reset( data_file );
        r := 11 ;
        textcolor( YELLOW );
        textbackground( BLUE );
        while not eof( data_file ) do
         begin
              read( data_file,t );
              gotoxy(23,r) ; write(t.number:10);
              write('³');
              write(t.name:10);
              write('³');
              write(t.price:10);
              inc(r);
              if r>19 then
               begin
                    readln;
                    draw_list;
                    r := 11 ;
               end; { if }
         end; { while }
        close( data_file );
        readln;
        clear_list;
   end; { of list procedure }

   procedure show_an_item( item : info );
   begin
      draw_win;
      textcolor( CYAN );
      textbackground( BLUE );
      gotoxy(24,11) ; write('ù¤‘õª :');
      gotoxy(24,12) ; write('‘ó‘îô‘÷ :');
      gotoxy(24,13) ; write('–õşì :');
      textcolor( YELLOW );
      gotoxy(33,11) ; write(item.number);
      gotoxy(33,12) ; write(item.name);
      gotoxy(33,13) ; write(item.price);
      readln;
      clear_win;
   end; { of show_an_item procedure }

   procedure ser_no;
   var
      found : boolean;
      t : info ;
      no:integer;
   begin
        found := FALSE ;

        draw_win;
        textcolor( YELLOW );
        textbackground( BLUE );
        gotoxy(25,10) ; write( '¤à÷¢¤øõü‘ó‘îù¤‘õª: ') ;
        textcolor( WHITE );
        readln(no);
        clear_win;

        assign(data_file,'info.dat');
        reset( data_file );
        while not eof( data_file ) do
          begin
               read( data_file,t);
               if t.number = no then
                begin
                     show_an_item(t);
                     found := TRUE ;
                end; { if }
          end; { while }
        close( data_file );
        if not found then
         begin
              draw_win;
              textcolor( LIGHTRED );
              textbackground( BLUE );
              sound(220);
              delay(200);
              nosound;
              gotoxy(25,13) ; write('!–¨ş÷¤‘“÷¤¢ù¤‘õªöş‘“ü‘ó‘î') ;
              readln;
              clear_win;
         end; { if }
   end; { of ser_no procedure }

   procedure ser_name;
   var
      found : boolean;
      t : info ;
      name:string[10];
   begin
        found := FALSE ;

        draw_win;
        textcolor( YELLOW );
        textbackground( BLUE );
        gotoxy(25,10) ; write( '¤à÷¢¤øõü‘ó‘îô‘÷ : ') ;
        textcolor( WHITE );
        readln(name);
        clear_win;

        assign(data_file,'info.dat');
        reset( data_file );
        while not eof( data_file ) do
          begin
               read( data_file,t);
               if t.name = name then
                begin
                     show_an_item(t);
                     found := TRUE ;
                end; { if }
          end; { while }
        close( data_file );
        if not found then
         begin
              draw_win;
              textcolor( LIGHTRED );
              textbackground( BLUE );
              sound(220);
              delay(200);
              nosound;
              gotoxy(25,13) ; write('–¨ş÷¤‘“÷¤¢ô‘÷öş‘“üş‘ó‘î') ;
              readln;
              clear_win;
         end; { if }
   end; { of ser_no procedure }

   procedure del_record(n:integer);
   var
      temp_file : file of info;
      i : integer;
      t : info ;
   begin
        assign( temp_file,'temp' );
        assign( data_file,'info.dat' );
        rewrite( temp_file );
        reset( data_file );
        for i:= 1 to n-1 do
         begin
              read ( data_file,t );
              write( temp_file,t);
         end; { for }
        read( data_file,t );
        while not eof( data_file ) do
         begin
              read ( data_file,t );
              write( temp_file,t);
         end; { while }
        close( data_file );
        erase( data_file );
        close( temp_file );
        rename(temp_file,'info.dat');
   end; { of del_record procedure }

   procedure del;
   var
      found : boolean;
      t : info;
      no,p: integer;
   begin
        found := FALSE ;
        p:=0;

        draw_win;
        textcolor( YELLOW );
        textbackground( BLUE );
        gotoxy(25,10) ; write( '¤à÷¢¤øõü‘ó‘îù¤‘õª : ') ;
        textcolor( WHITE );
        readln(no);
        clear_win;

        assign(data_file,'info.dat');
        reset( data_file );
        while not eof( data_file ) do
          begin
               read( data_file,t);
               inc(p);
               if t.number = no then
                begin
                     del_record(p);
                     found := TRUE ;
                    { break;}
                end; { if }
          end; { while }
        if not found then
         begin
              draw_win;
              textcolor( LIGHTRED );
              textbackground( BLUE );
              sound(220);
              delay(200);
              nosound;
              gotoxy(25,13) ; write('!–¨ş÷¤‘“÷¤¢ù¤‘õªöş‘“üş‘ó‘î') ;
              readln;
              clear_win;
         end; { if }
   end; { of del procedure }

   procedure edit_record( t:info;n:integer );
   var
      m : info;
   begin
        draw_win;
        textcolor( CYAN );
        textbackground( BLUE );
        gotoxy(24,11) ; write('number :');
        gotoxy(24,12) ; write('  name :');
        gotoxy(24,13) ; write(' price :');
        textcolor( white );
        gotoxy(33,11) ; write(t.number);
        gotoxy(33,12) ; write(t.name);
        gotoxy(33,13) ; write(t.price);
        textcolor( LIGHTRED );
        gotoxy(33,11) ; readln(m.number);
        gotoxy(33,12) ; readln(m.name);
        gotoxy(33,13) ; readln(m.price);
        seek( data_file,n-1 );
        write( data_file,m);
        clear_win;
   end; { of edit_record procedure }

   procedure edit;
   var
      found : boolean;
      t : info;
      no,p: integer;
   begin
        found := FALSE ;
        p:=0;

        draw_win;
        textcolor( YELLOW );
        textbackground( BLUE );
        gotoxy(25,10) ; write( 'number to edit : ') ;
        textcolor( WHITE );
        readln(no);
        clear_win;

        assign(data_file,'info.dat');
        reset( data_file );
        while not eof( data_file ) do
          begin
               read( data_file,t);
               inc(p);
               if t.number = no then
                begin
                     edit_record(t,p);
                     found := TRUE ;
                    { break;}
                end; { if }
          end; { while }
        close( data_file );
        if not found then
         begin
              draw_win;
              textcolor( LIGHTRED );
              textbackground( BLUE );
              sound(220);
              delay(200);
              nosound;
              gotoxy(25,13) ; write('  no item whit this number!') ;
              readln;
              clear_win;
         end; { if }
   end; { of del procedure }


   procedure search_menu ;
   var
      s_menu_item : integer;

      procedure draw_search;
      begin
           textbackground( BLUE );
           gotoxy(37,5) ; write('          ');
           gotoxy(37,6) ; write('          ');
           gotoxy(37,7) ; write('          ');
           gotoxy(37,8) ; write('          ');
           if s_menu_item=1 then
            begin
                 textcolor( YELLOW );
                 textbackground( RED );
            end
           else
            begin
                 textcolor( WHITE );
                 textbackground( BLUE );
            end;
           gotoxy(38,6) ; write(' NAME   ');
           textbackground( BLACK );
           gotoxy(47,6) ; write('  ');

           if s_menu_item=2 then
            begin
                 textcolor( YELLOW );
                 textbackground( RED );
            end
           else
            begin
                 textcolor( WHITE );
                 textbackground( BLUE );
            end;
           gotoxy(38,7) ; write(' NUMBER ');
           textbackground( BLACK );
           gotoxy(47,7) ; write('  ');
           textbackground( BLACK );
           gotoxy(47,8) ; write('  ');
           textbackground( BLACK );
           gotoxy(39,9) ; write('          ');
      end; { of draw search procedure }

      procedure clear_search_menu;
      var
         i,j : integer;
      begin
           textcolor( LIGHTBLUE );
           textbackground( BLUE );
           for i:=37 to 48 do
               for j:=4 to 9 do
                begin
                     gotoxy(i,j);
                     write('²');
                end;
      end; { of clear_search_menu procedure }

      procedure read_search;
      var
         ch : char;
         l  : integer;
         flag : boolean;
      begin
        flag := FALSE;
        repeat
              if keypressed then
               begin
                    ch := readkey;
                    if ord(ch)=0 then  ch := readkey;
                    l := ord(ch);
                    case l of
                              80 : begin         { down arrow is pressed }
                                       s_menu_item := s_menu_item + 1;
                                       if s_menu_item>2 then s_menu_item := 1;
                                       draw_search;
                                  end;
                             72 : begin         { up arrow is pressed }
                                       s_menu_item := s_menu_item - 1;
                                       if s_menu_item<1 then s_menu_item := 2;
                                       draw_search;
                                  end;
                             13 : begin
                                       if s_menu_item=1 then
                                        begin
                                             clear_search_menu;
                                             ser_name;
                                             flag := true;
                                        end; { if }
                                       if s_menu_item=2 then
                                        begin
                                             clear_search_menu;
                                             ser_no;
                                             flag := true;
                                        end; { if }
                                  end;
                             27 : flag := TRUE; { Esc key is pressed }
                    end; { of case }
               end; { of if }
        until flag;
      end; { of read_search procedure }

   begin
        s_menu_item := 1 ;
        draw_search;
        read_search;
        clear_search_menu;
   end; { of search_menu procedure }

   procedure draw_menu ;
   begin
        if menu_item=1 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(4,3);
        write(' NEW ITEM ');

        if menu_item=2 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(15,3);
        write(' DELETE ');

        if menu_item=3 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(24,3);
        write(' EDIT ');


        if menu_item=4 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(31,3);
        write(' LIST ');


        if menu_item=5 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(38,3);
        write(' SEARCH ');

        if menu_item=6 then
         begin
              textcolor( YELLOW );
              textbackground( RED );
         end
        else
         begin
              textcolor( WHITE );
              textbackground( BLUE );
         end;
        gotoxy(47,3);
        write(' EXIT ');


   end; { of draw_menu procedure }

   procedure read_menu;
   var
      ch : char;
      l  : integer;
      flag : boolean;
   begin
        flag := FALSE;
        repeat
              if keypressed then
               begin
                    ch := readkey;
                    if ord(ch)=0 then  ch := readkey;
                    l := ord(ch);
                    case l of
                             77 : begin
                                       menu_item := menu_item + 1;
                                       if menu_item >6 then menu_item := 1;
                                       draw_menu;
                                  end;
                             75 : begin
                                       menu_item := menu_item - 1;
                                       if menu_item <1 then menu_item := 6;
                                       draw_menu;
                                  end;
                             13 : begin
                                       case menu_item of
                                                        1 : add;
                                                        2 : del;
                                                        3 : edit;
                                                        4 : list;
                                                        5 : search_menu;
                                                        6 : flag := TRUE;
                                       end ; { of inner case }
                                  end;
                    end; { of case }
               end; { of if }
        until flag;
   end; { of read_menu procedure }

begin    { of main program }
     menu_item := 1 ;
     screener;
     draw_menu;
     read_menu;
end.     { of main program }


