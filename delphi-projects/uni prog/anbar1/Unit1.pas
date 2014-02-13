unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Menus, StdCtrls, DBCtrls, Mask, jpeg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    jadid1: TMenuItem;
    mahsool1: TMenuItem;
    Image1: TImage;
    froshkala1: TMenuItem;
    kharidkala1: TMenuItem;
    exit1: TMenuItem;
    moshtari1: TMenuItem;
    kharidar1: TMenuItem;
    froshande1: TMenuItem;
    gozaresh1: TMenuItem;
    frosh1: TMenuItem;
    frosh2: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure mahsool1Click(Sender: TObject);
    procedure froshkala1Click(Sender: TObject);
    procedure kharidkala1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure kharidar1Click(Sender: TObject);
    procedure froshande1Click(Sender: TObject);
    procedure frosh1Click(Sender: TObject);
    procedure frosh2Click(Sender: TObject);
    procedure exit1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  data.foroshande.Active := False;
  data.forosh.Active := False;
  data.mahsool.Active := False;
 Froshkala.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  data.mahsool.Active := True;
  mahsool.ShowModal;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  data.foroshande.Active := False;
frosh.Close;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 data.kharidar.Active := false;
  kharid.Close;
end;

procedure TForm1.mahsool1Click(Sender: TObject);
begin
 data.mahsool.Active := True;
 mahsool.ShowModal;
end;

procedure TForm1.froshkala1Click(Sender: TObject);
begin
  data.kharidar.Active := True;
  data.forosh.Active := True;
  data.mahsool.Active := True;
  Froshkala.Visible := True;
end;

procedure TForm1.kharidkala1Click(Sender: TObject);
begin
 data.foroshande.Active := True;
  data.Kharid.Active := True;
  data.mahsool.Active := True;
  kharidkala.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
data.kharidar.Active := False;
  data.Kharid.Active := False;
  data.mahsool.Active := False;
   kharidkala.ShowModal;
end  ;

procedure TForm1.kharidar1Click(Sender: TObject);
begin
 data.kharidar.Active := true;
  kharid.ShowModal;

end;

procedure TForm1.froshande1Click(Sender: TObject);
begin
  data.foroshande.Active := true;
  frosh.ShowModal;
end;

procedure TForm1.frosh1Click(Sender: TObject);
begin
  kharidForm.Query1.Active := True;
  kharidForm.QuickRep1.Preview;
end;

procedure TForm1.frosh2Click(Sender: TObject);
begin
  froshForm.Query1.Active := True;
  froshform.QuickRep1.Preview;
end;

procedure TForm1.exit1Click(Sender: TObject);
begin
   form5.close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   form5.close;
end;

end.
