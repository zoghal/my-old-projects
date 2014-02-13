unit userU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFuser = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fuser: TFuser;

implementation

uses Unit1;

{$R *.dfm}

procedure TFuser.Button1Click(Sender: TObject);
begin
   dm.Tuser.Cancel;
   dm.Tuser.Active := False;
   Fuser.Close;
end;

procedure TFuser.FormShow(Sender: TObject);
begin
    dm.Tuser.Active := True;
    dm.Tuser.Insert;
end;

procedure TFuser.Button2Click(Sender: TObject);
begin
    dm.Tuser.Post;
    dm.Tuser.Active := False;
    Fuser.Close;
end;

end.
