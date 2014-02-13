unit customerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask;

type
  TFcustomer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button1: TButton;
    DBComboBox1: TDBComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcustomer: TFcustomer;

implementation

uses Unit1;

{$R *.dfm}

procedure TFcustomer.Button1Click(Sender: TObject);
begin
  dm.Tcustomer.Cancel;
  dm.Tcustomer.Active := False;
  Fcustomer.close;
end;

procedure TFcustomer.Button2Click(Sender: TObject);
begin
  dm.Tcustomer.Post;
  dm.Tcustomer.Active:= False;
  Fcustomer.Close;
end;

procedure TFcustomer.FormShow(Sender: TObject);
begin
    dm.Tcustomer.Active := True;
    dm.Tcustomer.Insert;
end;

end.
