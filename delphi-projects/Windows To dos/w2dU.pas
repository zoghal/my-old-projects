unit w2dU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
CodeWin : array[1..68] of Byte = (194,199,199,200,200,129,129,202,202,203,203,
                                    204,204,141,141,205,205,206,206,207,208,209,
                                    210,142,211,211,212,212,213,213,214,214,216,
                                    217,218,218,218,218,219,219,219,219,221,222,
                                   222,223,144,225,225,225,227,227,228,228,230,
                                    0229,0229,0229,0229,237,237,237,237,ord('ù'),198,ord('ù'),32,32);

{237,198

 }
implementation

uses StrUtils, Math;

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
   f:TextFile;
   Ts,ii : Integer;
   wst,
   Dst : String;
   nextchar,backchar,currentchar : Char;

begin
  AssignFile(f,'converting.txt');
  Rewrite(f);


  wst := Edit1.Text;
// wst := #32+wst+#32;
   ts := Length(wst);
   dst :='';
  for ii  := 1 to ts do
   Begin

 Memo1.Lines.Add('num := '+IntToStr(Ii));
 Memo1.Lines.Add('Curcod :='+IntToStr( ord(wst[ii])));
 Memo1.Lines.Add('Ccurchar :='+wst[ii]);
 Memo1.Lines.Add('next :='+WST[ii+1]);
 Memo1.Lines.Add('Back :='+wst[ii-1]);
 Memo1.Lines.Add('----------------------');
 Memo1.Lines.Add('');
   if  ii = ts then  nextchar :=#32 else  nextchar := wst[ii+1];

    case wst[ii] of
     #0194  : currentchar := chr(141);
     #0199  : if (backchar in [#32,#194,#199,#145,#0207,#0208,#0209,#210,#0142,#0230]) then currentchar := chr(144)
                                   else currentchar := chr(145);

     #0200  : if (nextchar = #32)  Then currentchar := chr(146)
                                   else currentchar := chr(147);

     #0129  : if (nextchar = #32)  Then currentchar := chr(148)
                                   else currentchar := chr(149);
     #0202  : if (nextchar = #32)  Then currentchar := chr(150)
                                   else currentchar := chr(151);
     #0203  : if (nextchar = #32)  Then currentchar := chr(152)
                                   else currentchar := chr(153);

     #0204  : if (nextchar = #32)  Then currentchar := chr(154)
                                   else currentchar := chr(155);

     #0205  : if (nextchar = #32)  Then currentchar := chr(158)
                                   else currentchar := chr(159);

     #0206  : if (nextchar = #32)  Then currentchar := chr(160)
                                   else currentchar := chr(161);

     #0141  : if (nextchar = #32)  Then currentchar := chr(156)
                                   else currentchar := chr(157);
     #0207  : currentchar := chr(162);
     #0208  : currentchar := chr(163);
     #0209  : currentchar := chr(164);
     #0210  : currentchar := chr(165);
     #0142  : currentchar := chr(166);

     #0211   : if (nextchar = #32)  Then currentchar := chr(167)
                                    else currentchar := chr(168);
     #0212   : if (nextchar = #32)  Then currentchar := chr(169)
                                    else currentchar := chr(170);
     #0213   : if (nextchar = #32)  Then currentchar := chr(161)
                                    else currentchar := chr(162);
     #0214   : if (nextchar = #32)  Then currentchar := chr(163)
                                    else currentchar := chr(174);
     #0216  : currentchar := chr(175);
     #0217  : currentchar := chr(224);

     #0230  : currentchar := chr(248);

     #0221   : if (nextchar = #32)  Then currentchar := chr(233)
                                    else currentchar := chr(234);
     #0222   : if (nextchar = #32)  Then currentchar := chr(235)
                                    else currentchar := chr(236);
     #0223   : if (nextchar = #32)  Then currentchar := chr(237)
                                    else currentchar := chr(238);
     #0144   : if (nextchar = #32)  Then currentchar := chr(239)
                                    else currentchar := chr(240);
     #0225   : if (nextchar = #32)  Then currentchar := chr(241)
                                    Else
                                    if (nextchar =#199) Then
                                       currentchar := chr(242)
                                    else currentchar := chr(243);
     #0227   : if (nextchar = #32)  Then currentchar := chr(244)
                                    else currentchar := chr(245);
     #0228   : if (nextchar = #32)  Then currentchar := chr(246)
                                    else currentchar := chr(247);
     #0238  : currentchar := chr(248);

     #0218   :BEgin
               currentchar := chr(228);
               if backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198]
                               then currentchar := chr(227);
              if (nextchar = #32) and
                 (backchar in [#194,#199,#145,#0207,#0208,#0209,#210,#0142,#0230]) then currentchar := chr(225);
               if (backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                               AND (nextchar = #32)
                               then currentchar := chr(226);
              End;
     #0219   :BEgin
               currentchar := chr(232);
               if backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198]
                               then currentchar := chr(231);
              if (nextchar = #32) and
                 (backchar in [#194,#199,#0207,#0208,#0209,#210,#0142,#0230]) then currentchar := chr(229);
               if (backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                               AND (nextchar = #32)
                               then currentchar := chr(230);
              End;
      #229    : begin
                 currentchar := chr(251);
                 if (backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                               then   currentchar := chr(250);
                 if nextchar =#32 then currentchar := chr(249);

                End;

      #237    : begin
                 currentchar := chr(254);
                 if (backchar in [#0200,#0129,#0202,#0203,#0204,
                               #0141,#0205,#0206,#0211,#0212,#0213,#225,
                               #0214,#0216,#217,#0222,#0223,#0144,#0229,
                               #0218,#0219,#0221,#0227,#0228,#0237,#0198])
                               and (nextchar = #32)
                               then   currentchar := chr(252);
              if  (nextchar = #32) and
                 (backchar in [#194,#199,#0207,#0208,#0209,#210,#0142,#0230]) then currentchar := chr(253);

                End;
     else
currentchar := wst[ii];
    end;
    backchar := WST[II];
    Dst := currentchar+dst;
   End;


 Write(f,dst);

  CloseFile(F);
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 Edit2.Text :=inttostr( ord(key));
 Key :=#0;
end;

end.
