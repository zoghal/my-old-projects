

program pr1(input,output);
uses graph,crt,dos;
label  10,20;
var
   gd,gm:integer;
   a:word;
   c:char;
   flag:boolean;
   procedure saat;
    var  h,m,s,hs:word;

        begin

           gd:= detect;
           initgraph(gd,gm,'c:\tp\bgi');

           clrscr;
           repeat
           gettime(h,m,s,hs);
           gotoxy(70,1);

             writeln(h,':',m,':',s);
             delay(1000);
             setviewport (0,631,10,639,clipon);
             clearviewport;
           until keypressed;
           closegraph;
        readln;
     end;
     procedure tehran;
     procedure phones;
        begin


  {    gd:=detect;
   initgraph(gd,gm,'c:\tp\bgi');

outtext('in the name of god');}
            textbackground(8);
            clrscr;

            gotoxy(40,2);
            writeln('province:tehran');
            writeln;
            writeln;
            writeln('emergency phones                                   tel.');
            writeln('---------------------------------------------------------');
            writeln('tehran emergency service                           115');
            writeln('24 hours pharmacies                                191');
            writeln('telephone repair service                           117');
            writeln('fire department                                    125');
            writeln('telephone info center                              195');
            writeln('post office                                        193');
            writeln('telgraph                                           120');
            writeln('road accident                                      197');
            writeln('weather forecast                                   111');
            writeln('telephone prefix change                            190');
            writeln('telex disorders                                    196');
            writeln('time                                               119');
            writeln('prayer time                                        192');
            writeln('voice of the holy qoran                            114');
            writeln('gas line accident                                  194');
            writeln('water department                                   6171');
            writeln('electericrty department                            3261');
            writeln('rod police                                         660017');
            writeln('rail way company                                   556114_15');
            writeln('mhrabad air port                                   91021');
            writeln('t.r.iran air line                                  9111');
            writeln('road info. center                                  8083096_7');
          end;
     procedure  stores;
         begin
 {
      gd:=detect;
   initgraph(gd,gm,'c:\tp\bgi');

  }


         clrscr;
          { textcolor(3);
           textbackground(2);}
           gotoxy(40,2);
           writeln('province:tehran');
            gotoxy(2,5);
            writeln('*24 hours drug stores');
            writeln('name                addres                            tel.');
            writeln('-------------------------------------------------------------');
            writeln('bonyad shahid 1     qarani ave. nikoo st.             896695');
            writeln('bonyad shahid 2     keshavars boulvar                 650994');
            writeln('bonyad shahid 3     wali asr.taleqani                 6503855');
            writeln('bonyad shahid 4     naseri st. hafdah shahrivar       356407');
            writeln('bonyad shahid 5     wali asr ave. khatam-anbia        6401016');
            writeln('sizdah aban         kheradmand st. karimkhan ave      8833804');
            writeln('emdad cometee       bahar st. taleqani ave.           8841842');
            writeln('helal ahmar         qarani taleqani ave.              8823947');
            writeln('bou-ali             damavand ave.                     336046');
            writeln('isar                qazvin ave.                       5703470');
            writeln('taleqani            tadjrish sq.                      270588');
            writeln('bistonohe farvardin  hor sq. kargar ave.              6401016');
            writeln('alpha                vanak sq.                        2261322');
            writeln('omid                 shahr-rey                        592680');
            writeln('pascal               sharee ati ave.                  7550348');
            writeln('qods                 jeyhoon st. azadi ave.           647152');
            writeln('wali-asr             zartoosht st.                    655506');
         end;
         procedure libraries;
         begin
         clrscr;
         gotoxy(40,2);
         writeln('province:tehran');
         gotoxy(2,5);
         writeln('*libraris in tehran');
         writeln(' name                    addres                          tel.  ');
         writeln('-----------------------------------------------------------------');
         writeln('ayatollah taleqani       khayam park shohada sq.         2545820');
         writeln('orkid                    shams-abad                      2525377');
         writeln('emamzadeh zeyd           al-qadir boolvard               6489628');
         writeln('esargaran                park.shahr                      5639674');
         writeln('peyk farhang             postall library                 5611777');
         writeln('piroozi                  piroozi park                    7529879');
         writeln('resalat                  syyed khandan                   2389857');
         writeln('daneshjoo                enqelab crossroad               6498530');
         writeln('seyyed morteza           takhti ave.                     5605681');
         writeln('shahid ayyat             zarkesh park narmak ave.        7816466');
         writeln('shahid mottahari         naziabad                        551058');
         writeln('majidiyeh                majidiyeh shomal ave.           2508807');
         writeln('markazi                  south of park shahr             5639673');
         writeln('vali-asr                 azaer & frdows resalat          7896848');
         end;
  procedure  hotels;
   begin
     clrscr;
      gotoxy(40,2);
      writeln('province:tahran');
      gotoxy(2,5);
      writeln('*hotls');
      writeln(' name                          addrss                       tel.');
      writeln('----------------------------------------------------------------------');
      writeln('azadi grand                    chamran high way             8083021-9');
      writeln('esteqlal                       vali-asr st.                 2040011-5');
      writeln('cowsar                         vali-asr sq.                 898121-5');
      writeln('tahran grand                   vali-asr st.                 8729610');
      writeln('ferdowsi grand                 ferdowsi st.                 385991-3');
      writeln('jahan                          vali-asr st.                 6465596-7');
      writeln('daryaye shomal                 taleqani st.                 834066-9');
      writeln('rudaki                         hafez    st.                 679421');
      writeln('kiyan                          vali-asr st.                 650235');
      writeln('evin                           chamran-high way             2041036-9');
      writeln('atlas                          taleqani st.                 890286-8');
      writeln('eneqlap                        taleqani st.                 6467251-5');
      writeln('sasan                          shariatee st.                75090719');

writeln('iran                           vali-asr  sq.                893161');
      writeln('karoon                         vali-asr  st.                891962');
      writeln('homa                           vali-asr  st.                2263021-9');
      write('m=mainmenu                         q=exit');
     { read(a);
      if a=m then goto 10;
      if a=q then goto 20;  }

      end;

   begin

   {   gd:=detect;
   initgraph(gd,gm,'c:\tp\bgi');
    }


           clrscr;

        gotoxy(40,2);
        writeln('province:tehran');
        writeln('1_emergency phones');
        writeln('2_24 hours drugstores');
        writeln('3_libraries');
        writeln('4_hotels');
        writeln('5_exit');
        writeln('select (1_5)');

        read(a);
        case a of
        1:phones;
        2:stores;
        3:libraries;
        4:hotels;
        5: ;
       { 5:end;}

         end;

         end;
  procedure fars;
   procedure phones2;
   begin
      clrscr;
      gotoxy(40,2);
      writeln('province:fars');
      writeln;
      writeln;
      writeln('*emergency phones                                                  tel. ');
      writeln('------------------------------------------------------------------------------');
      writeln('fire depart ment                                                   21121,112');
      writeln('medical emergencies                                                115,66663-5');
      writeln('phone post                                                         119');
      writeln('water accidents                                                    49888-9');
      writeln('power accidents                                                    2000-7');
      writeln('natural gas accident                                               337031');
      writeln('public plkasces affairs                                            677004');
      writeln('coron                                                              28050');
      writeln('car accident                                                       22285');
      writeln('traffic police affice                                              22298');
      writeln('blood transfation agency                                           33910-11');
      writeln('air port information                                               22061-4');
   readln;
  end;
  procedure hoteles2;
   begin
   clrscr;
   gotoxy(40,2);
   writeln('province:fars');
   writeln;
   writeln;
   writeln('*hotels');
   writeln(' name              class                addres                    tel.');
   writeln('---------------------------------------------------------------------------');
   writeln('homa                 5                  meshgin fam shiraz        28000-14');
   writeln('park                 4                  zand,shiraz               21426-31');
   writeln('apadana              3                  ahli shiraz               59332');
   writeln('atlas                2                  atlasi sq. shiraz         29225');
   writeln('eram                 2                  zand,shiraz               235108');
   writeln('talar                2                  ferdowsi,shiraz           42596');
   writeln('parsien              2                  roudaki ,shiraz           37512');
   writeln('mehdi                2                  hli,shiraz                33770');
   writeln('roudaki              2                  roudaki shiraz            26900');
   writeln('fars                 2                  piroozi,shiraz            26659');
   writeln('sina                 1                  vali asr shiraz           22587');
   writeln('reza                 1                  piroozi shiraz            25665');
   readln;
   end;
   procedure  stores2;
   begin
   clrscr;
   gotoxy(40,2);
   writeln('province:fars');
   writeln;
   writeln;
   writeln('*24 hour drogstores');
   writeln('name                             address                            tel.');
   writeln('----------------------------------------------------------------------------');
   writeln('asmari                           atlasi sq. hejrat boulvard         49224');
   writeln('amir                             rahmat boulvard                    41651');
   writeln('babak                            shahid qandi                       50492');
   writeln('dragon                           vali-asr sq.                       49126');
   writeln('shiraz                           karimkhan zand                     335272');
   readln;
   end;
   procedure  libraris2;
   begin
      clrscr;
      gotoxy(40,2);
      writeln('province:fars');
      writeln('*libraris');
      writeln(' name                        address                             tel.');
      writeln('------------------------------------------------------------------------');
      writeln('dastqeyb markazi             taleqani ave. zand                  241164');
      writeln('dastqeyb no.2                darvazeh kazroun                    24058');
      writeln('hafezieh                     hafez shenasi                       21071');
      writeln('saadi                        saadi mausleum                      770071');
      writeln('mowlavi                      zand                                224057');
      writeln('abddollah                    aboozar highschool                  -- ');
      writeln('shahid                       qasr dasht                          --');
      readln;
      end;
 procedure museums2;

    begin
     clrscr;
     gotoxy(40,2);
     writeln('province:fars');
     writeln;
     writeln;
     writeln('* museum');
     writeln('  name                    address                           tel.');
     writeln('-------------------------------------------------------------------');
     writeln('  takht jamshid           takht jamshid marvdasht shiraz    ----');
     writeln('  pars                    zand,shiraz                       24151');
     writeln('  narejestan              zand,shiraz                       24381');
 writeln('  military                golshan,garden                    667343');
 writeln('  shohaday shiraz         gas sq.eram boulvard shiraz       59108');
 writeln('  shah cheraq             the holy shrine of ahmad          22158');
 readln;
 end;





 begin

   textbackground(1);
   clrscr;
   textcolor(14);
   gotoxy(40,2);
   writeln('province:fars');
   writeln('1-emergency phones');
   writeln('2-hotels');
   writeln('3-24 hour drugstores');
   writeln('4-libraries');
   writeln('5-museum');
   writeln('6-exit');
   writeln('select (1-6)');
   read(a);
   case a of
      1:phones2;
      2:hoteles2;
      3:stores2;
      4:libraris2;
      5:museums2;
      6:
   end;
   readln;
 end;
 procedure isfahan;
 procedure phones3;
 begin
  clrscr;
  gotoxy(40,2);
  writeln('province:isfahan');
  writeln;
  writeln;
  writeln(' * emergency phones                                          tel.');
  writeln('---------------------------------------------------------------------');
  writeln('fire department                                              224444-5');
  writeln('medical emergensy                                            275555');
  writeln('water accidents                                              229000');
  writeln('lique fied gas accident                                      689122');
  writeln('natural gas accident                                         208000');
  writeln('power accident                                               248608');
  writeln('traffic police                                               684141');
  writeln('car accident                                                 28888');
  writeln('law enforcement                                              68888');
  writeln('intelligence hotline                                         224318');
  writeln('anti-narcotics squad                                         228666');
  writeln('pricechec                                                    617002');
  writeln('blood transfsion agency                                      227775');
  readln;
  end;
 procedure drugstores3;
 begin
   clrscr;
   gotoxy(40,2);
   writeln('province:isfahan');
   writeln;
   writeln;
   writeln('*24 hours drug stores');
   writeln(' name                               address                         tel.');
   writeln('----------------------------------------------------------------------------');
   writeln('takhjamshid                         ahmadabad ave.                  255242');
   writeln('zakaria                             bozorgmehr st.                  381481');
   writeln('jalinous                            qods sq.                        256643');
   writeln('sjjad                               adjacent to khorshid hospitall  224197');
   writeln('shahid sadouqi                      bozorgmehr st.                  282038');
   writeln('shahid montazeri                    shams abadi st.                 266005');
   writeln('edalat                              char baq st.                    244606');
   writeln('koushesh                            shikh bahaee st.                2344494');
   writeln('markazi                              masjed seyyed st.               230036');
   readln;
 end;
 procedure libraries3;
  begin
   clrscr;
   gotoxy(40,2);
   writeln('province:isfahan');
   writeln;
   writeln;
   writeln('* libraries3');
   writeln(' name                            address                           tel. ');
   writeln('-------------------------------------------------------------------------');
   writeln('al-zahra                         abd-ol-reza                       215500');
   writeln('ibn masque                       chahar baq st.                    220070');
   writeln('ershad                           qods sq.                          253633');
   writeln('amir qoli amini                  shahid beheshti st.               252546');
   readln;
   end;
   procedure hotels3;
    begin
     clrscr;
     gotoxy(40,2);
     writeln('province:isfahan');
     writeln;
     writeln;
     writeln('* hotels');
     writeln(' name             class           address                            tel.');
     writeln('----------------------------------------------------------------------------');
     writeln('suite             2               a`ineh khaneh boulvard             616071');
     writeln('azadi             2               takht cross road                   204011');
     writeln('pol & park        2               a`ineh khaneh boulvard             61785-8');
     writeln('julfa             2               fakhri st.                         244441-2');
     writeln('tourist           -               abbasabad st.                      263094');
     writeln('iran              1               chahar baq abbasi st.              227282');
     writeln('arya              1               ayyatollah madani                  228033');
     writeln('22 bahman         1               masjed seyyed                      237546');
     writeln('pars              1               chahar baq abbasi                  261018');
     writeln('karoun            1               hkim nezami                        244544');
     writeln('jahangardi        1               shiraz road                        688090');
     writeln('abbasi            5               ayytollah madani                   226010-9');
     writeln('cowsar            4               boustan mellat                     240230-9');
     writeln('ali qapou         4               chaharbaq                          231282-4');
     readln;
     end;
 procedure museums3;
   begin
    clrscr;
    gotoxy(40,2);
    writeln('province:isfahan');
    writeln;
    writeln;
    writeln('* museums in isfahan');
    writeln(' name                         address                              tel.');
    writeln('------------------------------------------------------------------------');
    writeln('chehel sotoun                 chehel sotoun                        22686');
    writeln('natural history               adjecsent chehelsotun gavernor`s     29700');
    writeln('armenians                     jolfa                                43471');
    readln;
    end;
 begin
   clrscr;
   gotoxy(40,2);
   writeln('province:isfhan');
   writeln;
   writeln;
   writeln('1.emergency phones');
   writeln('2.24 hours drugstores');
   writeln('3.libraries');
   writeln('4.hotels');
   writeln('5.museums');
   writeln('6.exit');
   writeln('select (1-6)');
   read(a);
   case a of
   1:phones3;
   2:drugstores3;
   3:libraries3;
   4:hotels3;
   5:museums3;
   6:;
   end;
 readln;
 end;
 procedure yazd;
 procedure phones4;
 begin
   clrscr;
   gotoxy(40,2);
   writeln('province:yazd');
   writeln;
   writeln;
   writeln('* emergency phones                                             tel.');
   writeln('-------------------------------------------------------------------------');
   writeln('police                                                         29999,110');
   writeln('fire department                                                66666,112');
   writeln('intelligence hotline                                           39000,113');
   writeln('medical emergency                                              110');
   writeln('post & telephone                                               25555');
   writeln('water supply emergency                                         41100');
   writeln('islamic revolution                                             36000,114');
   writeln('electrisity supply emergency                                   42111');
   writeln('air line office                                                43031');
   writeln('metearology                                                    43163');
   writeln('rail road office                                               48551');
   readln;
 end;
 procedure hotels4;
 begin
   clrscr;
   gotoxy(40,2);
   writeln('province:yazd');
   writeln;
   writeln;
   writeln('* hotels');
   writeln(' name                  class             address                    tel.');
   writeln('-----------------------------------------------------------------------------');
   writeln('jahangardi             2                 danshju boolvard           47222');
   writeln('enqelab                2                 jomhury boolvard           56111-12');
   readln;
 end;
 procedure stors4;
 begin
 clrscr;
 gotoxy(40,2);
 writeln('province:yazd');
 writeln;
 writeln('* 24 hours drugstores');
 writeln;
 writeln(' name                           address                          tel.');
 writeln('------------------------------------------------------------------------');
 writeln('shahid chamran                  farokhhi ave.                    66900 ');
 writeln('dr emamzadeh                    montazeri qaem boolvard          41888 ');
 readln;
 end;
 procedure museums4;
   begin
     clrscr;
     gotoxy(40,2);
     writeln('province:yazd');
     writeln;
     writeln;
     writeln('* museums');
     writeln(' name                           address                                tel.');
     writeln('-----------------------------------------------------------------------------');
     writeln('qasr-ayneh                      kashani ave.                           35077');
     writeln('olum tabiee                     shahid rajaee ave.                     23434 ');
     readln;
   end;

 begin
   clrscr;
   gotoxy(40,2);
   writeln('province:yazd');
   writeln;
   writeln;
   writeln('1.emergency phones');
   writeln('2.hoteles');
   writeln('3.24 hour drugstores');
   writeln('4.museums');
   writeln('5.exit');
   writeln('select (1-5)');
   read(a);
   case a of
   1:phones4;
   2:hotels4;
   3:stors4;
   4:museums4;
   5:;
   end;
   readln;
end;

 procedure hamedan;
 procedure phones5;
   begin
     clrscr;
     gotoxy(40,2);
     writeln('province:hamedan');
     writeln;
     writeln;
     writeln('* emergncy phones                                            tel.   ');
     writeln('------------------------------------------------------------------------');
     writeln('fire department                                              22444-5');
     writeln('medecal emergency                                            115');
     writeln('blood transfution                                            228808-9');
     writeln('water company                                                33231');
     writeln('power company                                                225142');
     writeln('natural gas company                                          344445');
     writeln('tehran road police                                           222181');
     writeln('kermanshahan road police                                     223950');
     readln;
  end;
  procedure drugstores5;
  begin
   clrscr;
   gotoxy(40,2);
   writeln('province:hamedan');
   writeln;
   writeln;
   writeln('* 24 houres drugstores');
   writeln(' name                            address                     tel.');
   writeln('----------------------------------------------------------------------');
   writeln('imam khomeini                    emam sq. babataher st.      223371');
   writeln('22 bahman                        booali st.                  223202');
   writeln('fajr                             shareeati sq.               225338');
   readln;
  end;
   procedure hotels5;
    begin
     clrscr;
     gotoxy(40,2);
     writeln;
     writeln;
     writeln(' * hotels ');
     writeln('  name                class          address                        tel.');
     writeln(' --------------------------------------------------------------------------');
     writeln('  bouali                3            bouali st. hamedan             33071-2');
     writeln('  yas                   1            imam khomeini sq hamedan       223446');
     writeln('  jahan-gardi           1            alisadr village hamedan        2099');
     writeln('  enqlab                -            boulvard eram                  53001-7');
     writeln('  hegmataneh            -            boulvard shahid rajaee         247471');
     readln;
     end;
     procedure museums5;
     begin
     gotoxy(40,2);
     writeln('province:hamedan');
     writeln;
     writeln;
     writeln( '* meuseums');
     writeln(' name                           address                          tel.');
     writeln('------------------------------------------------------------------------');
     writeln(' bou ali mausleum               bouali st.                       95360');
     writeln(' natural history                manuchehri st.                   26041-4');
     writeln(' bouali university              agricature college                ----');
     readln;
     end;
     procedure libraies5;
     begin

     clrscr;
     gotoxy(40,2);
     writeln('province:hamedan');
     writeln;
     writeln;
     writeln('* libraies');
     writeln(' name                          address                              tel.');
     writeln('--------------------------------------------------------------------------');
     writeln(' azad                          adjecent totaleqanni                 34546');
     writeln(' shahed                        shahed boulvard                      60888');
     writeln(' shahid moddares               moddras township                     238934');
     writeln(' shahid motahhari              famanin district                      ---- ');


 Writeln('Please press a key');
 C := Readkey;
 Writeln(' You pressed ', C, ' whose ASCII value is ', Ord(C), '.');


     readln;
     end;



  begin
   clrscr;
   gotoxy(40,2);
   writeln('province:hamedan');
   writeln;
   writeln;
   writeln('1. emegency phones');
   writeln('2. 24 hour drugstores');
   writeln('3. hotels');
   writeln('4. meuseums');
   writeln('5. libraies');
   writeln('6. exit');
   writeln('select(1-6)');
   read(a);
   case a of
    1:phones5;
    2:drugstores5;
    3:hotels5;
    4:museums5;
    5:libraies5;
    6:;
    end;
    readln;
  end;

procedure chahar;

begin


   clrscr;
   gd:=detect;
   initgraph(gd,gm,'c:\tp\bgi');
      settextstyle(4,0,5);
      setcolor(12);
      OUTTEXTXY(60,10,'*IN THE NAME OF GOD*');
      SETTEXTSTYLE(1,0,5);
      outtextxy(10,100,'WELL COM TO CUP SOFT WARE ');
      OUTTEXTXY(10,200,'WRITERS:');
      DELAY(500);
      OUTTEXTXY(10,250,' rohollah');
      DELAY(500);
      OUTTEXTXY(10,300,'abbas baqeri rad');
      delay(500);
     { closegraph;}
     cleardevice;
readln;
end;

 begin
  clrscr;

        gd:=detect;
   initgraph(gd,gm,'c:\tp\bgi');

       setbkcolor(8);
repeat

   setcolor(14);
   line(0,295,639,295);
   line(0,300,639,300);
   delay(500);
   line(0,310,639,310);
   line(0,329,639,329);
   delay(500);
   line(0,350,639,350);
   line(0,385,639,385);
   delay(500);
   line(0,430,639,430);
   line(0,479,639,479);
   delay(500);
   line(315,295,340,639);
   line(300,295,260,639);
   line(285,295,190,639);
   line(270,295,120,639);
   line(250,295,40,639);
   line(230,295,65,479);
   line(210,295,8,475);
   line(190,295,0,423);
   line(170,295,0,380);
   line(150,295,0,350);
   line(130,295,0,330);
   line(110,295,0,310);
   line(70,295,0,300);
   line(330,295,420,639);
   line(345,295,500,639);
   line(360,295,580,639);
   line(380,295,660,639);
   line(400,295,740,639);
   line(420,295,820,639);
   line(440,295,900,600);
   line(460,295,900,500);
   line(480,295,900,440);
   line(500,295,900,380);
   line(520,295,900,340);
   arc(315,250,30,150,250);

   settextstyle(triplexfont,horizdir,7);
   outtextxy(215,130,'*province*');
   settextstyle(triplexfont,horizdir,7);

          until keypressed;
   closegraph;

   readln;
   textbackground(1);
   clrscr;
   flag:= false;
   repeat
   clrscr ;
   gotoxy(40,2);
   writeln(' province');
   gotoxy(1,3);
   writeln('1.tehran');
   gotoxy(1,4);
   WRITEln('2.fars');
   writeln('3.isfahan');
   writeln('4.yazd');
   writeln('5.hamadan');
   writeln('6.exit');
   writeln ;
   writeln('select(1-6)');
   readln(a);
   if a=1 then
      begin
       tehran;
       continue;
      end;
   if a=2 then
     begin
       fars;
       continue;
      end;
   if a=3 then
     begin
       isfahan;
       continue;
      end;
   if a=4 then
     begin
       yazd;
       continue;
      end;
   if a=5 then
     begin
       hamedan;
       continue;
      end;
   if a=6 then flag := true;
   until flag;
 end.




