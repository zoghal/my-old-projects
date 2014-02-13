unit Mainu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Grids, DBGrids;

type
  TMform = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mform: TMform;
  ua,nua : String;
  cua : Integer;

implementation

uses kalaU, Unit1, userU, customerU, inoutU, protectU, outU, report1U,
  reportinU, reportoutU, listusertU, listcustomerU;

{$R *.dfm}

procedure TMform.N2Click(Sender: TObject);
begin
  fkala.ShowModal;
end;

procedure TMform.N4Click(Sender: TObject);
begin
  fuser.ShowModal;
end;

procedure TMform.N5Click(Sender: TObject);
begin
  Fcustomer.ShowModal;
end;

procedure TMform.N8Click(Sender: TObject);
begin

  finout.ShowModal;

end;

procedure TMform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   fprotect.Close;
end;

procedure TMform.N10Click(Sender: TObject);
begin
  fout.ShowModal;
end;

procedure TMform.Button1Click(Sender: TObject);
begin
  dm.Tinout.Active := not   dm.Tinout.Active;
end;

procedure TMform.N12Click(Sender: TObject);
begin
  dm.Query.Active := false;
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('select kala.name,sum(total) as total from inout,kala where kala.code = inout.Ckala  GROUP BY kala.name');
  dm.Query.Active := True;
  frep1.ShowModal;
end;

procedure TMform.N13Click(Sender: TObject);
begin
  dm.Query.Active := false;
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('select customer.Name as froshande,kala.Name,inout.Datein,userdb.name as operator,inout.Total from inout,kala,customer,userdb where kala.Code = inout.Ckala and  userdb.Code=inout.Cuser and customer.Code= inout.Ccust and inout.Dateout is null');
  dm.Query.Active := True;
  frepin.ShowModal;
end;

procedure TMform.N14Click(Sender: TObject);
begin
   dm.Query.Active := false;
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('select customer.Name as froshande,kala.Name,inout.Dateout,userdb.name as operator,inout.Total from inout,kala,customer,userdb where kala.Code = inout.Ckala and  userdb.Code=inout.Cuser and customer.Code= inout.Ccust and inout.Datein is null');
  dm.Query.Active := True;
  frepout.ShowModal;
end;

procedure TMform.N15Click(Sender: TObject);
begin
 dm.Query.Active := false;
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('select * from userdb');
  dm.Query.Active := True;
  flistuser.ShowModal;
end;

procedure TMform.N16Click(Sender: TObject);
begin
  dm.Query.Active := false;
  dm.Query.SQL.Clear;
  dm.Query.SQL.Add('select * from customer');
  dm.Query.Active := True;
  flistcustomer.ShowModal;
end;

procedure TMform.N17Click(Sender: TObject);
begin
  Fprotect.Close;
end;

end.
