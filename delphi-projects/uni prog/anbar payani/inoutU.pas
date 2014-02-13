unit inoutU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFinout = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Finout: TFinout;

implementation

uses Unit1, Mainu;

{$R *.dfm}

procedure TFinout.Button1Click(Sender: TObject);
begin
  dm.Tinout.Cancel;
  dm.Tinout.Active := False;
  dm.Tuser.Active := False;
  dm.Tkala.Active := False;
  dm.Tcustomer.Active := False;
  Finout.Close;
end;

procedure TFinout.FormShow(Sender: TObject);
begin
  dm.Tinout.Active := True;
  dm.Tkala.Active := True;
  dm.Tcustomer.Filter := 'Type='+QuotedStr('›—Ê‘‰œÂ');
  dm.Tcustomer.Filtered := True;
  dm.Tcustomer.Active := True;
  dm.Tinout.Insert;

  Edit1.Text := nua;
end;

procedure TFinout.Button2Click(Sender: TObject);
begin
    dm.Tinout.FieldByName('Cuser').Value :=cua;
   dm.Tinout.FieldByName('Datein').Value := Now;
   dm.Tinout.Post;
     dm.Tinout.Active := False;
  dm.Tkala.Active := False;
  dm.Tcustomer.Active := False;
   Finout.close;
end;

end.
