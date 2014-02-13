unit mainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, Menus;

type
  Tmainform = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PopupMenuDad: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    PopupMenudadnameh: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SpeedButton3: TSpeedButton;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform: Tmainform;
  typevote : string;

implementation

uses dadkhastU, datamU, tajdidU, listDadU, dad_voteU, listdadnamehU,
  listtajdidU, loginU;

{$R *.dfm}

procedure Tmainform.SpeedButton1Click(Sender: TObject);
begin
    DataM.dadkhastT.Active := true;
    DataM.dadkhastT.Last;
    DataM.dadkhastT.Insert;
    DataM.dadkhastTSetdate.AsDateTime := Now;
   insertdadform.ShowModal;

end;

procedure Tmainform.SpeedButton2Click(Sender: TObject);
begin
  tajdidform.Show;
end;

procedure Tmainform.N1Click(Sender: TObject);
begin
  DataM.Querym.Active := False;
  DataM.Querym.SQL.Clear;
  DataM.Querym.SQL.Add('select * from dadkhast where clase not in (select R4dadnumber from tajdid ) and  clase not in (select clase from dadnamedadkhast)');
  DataM.Querym.Active := True;
  listdadform.ShowModal;
end;

procedure Tmainform.N3Click(Sender: TObject);
begin
   typevote :='dad';
   dadvoteform.ShowModal;
end;

procedure Tmainform.N4Click(Sender: TObject);
begin
typevote :='tajdid';
dadvoteform.ShowModal;

end;

procedure Tmainform.N6Click(Sender: TObject);
begin
  DataM.Querym.Active := False;
  DataM.Querym.SQL.Clear;
  DataM.Querym.SQL.Add('select * from dadnamedadkhast where type='+#39+'dad'+#39+ 'and clase not in (select R4dadnumber from tajdid)');
  DataM.Querym.Active := True;
  listdadnamehform.ShowModal;
end;

procedure Tmainform.N8Click(Sender: TObject);
begin
  DataM.Querym.Active := False;
  DataM.Querym.SQL.Clear;
  DataM.Querym.SQL.Add('select * from dadnamedadkhast where type='+#39+'tajdid'+#39);
  DataM.Querym.Active := True;
  listdadnamehform.ShowModal;

end;

procedure Tmainform.N10Click(Sender: TObject);
begin
 DataM.Querym.Active := False;
  DataM.Querym.SQL.Clear;
  DataM.Querym.SQL.Add('select * from dadkhast where clase in (select R4dadnumber from tajdid ) and  clase not in (select clase from dadnamedadkhast where type='+#39+'tajdid'+#39+')');
  DataM.Querym.Active := True;
  listtajdidform.ShowModal;
end;

procedure Tmainform.SpeedButton3Click(Sender: TObject);
begin
  loginf.close;
end;

end.
