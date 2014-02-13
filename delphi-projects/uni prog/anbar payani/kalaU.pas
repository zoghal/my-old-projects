unit kalaU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFkala = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fkala: TFkala;

implementation

uses Unit1;

{$R *.dfm}

procedure TFkala.FormShow(Sender: TObject);
begin
    dm.Tkala.Active := True;
    dm.Tkala.Insert;
end;

procedure TFkala.Button1Click(Sender: TObject);
begin
 dm.Tkala.Cancel;
 dm.Tkala.Active := False;
 Fkala.Close;
end;

procedure TFkala.Button2Click(Sender: TObject);
begin
  dm.Tkala.Post;
  dm.Tkala.Active := false;
  Fkala.Close;  
end;

end.
