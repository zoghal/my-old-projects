unit outU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFout = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fout: TFout;

implementation

uses Unit1, Mainu, DB;

{$R *.dfm}

procedure TFout.Button1Click(Sender: TObject);
begin
dm.Tinout.Cancel;
  dm.Tinout.Active := False;
  dm.Tuser.Active := False;
  dm.Tkala.Active := False;
  dm.Tcustomer.Active := False;
  Fout.Close
end;

procedure TFout.Button2Click(Sender: TObject);
var
 command :String;
begin
  dm.Query.Active := False;
  dm.Query.SQL.Clear;
  command := 'select sum(total) as sumall from inout where Ckala ='+dm.Tkala.FieldByName('Code').AsString;
  dm.Query.SQL.Add( command);
  dm.Query.Active := True;
  if StrToInt(Edit2.Text) >  dm.Query.FieldByName('sumall').AsInteger then
  begin
     ShowMessage(dm.Query.FieldByName('sumall').AsString+' :  ⁄œ«œ œ—ŒÊ«”  »Ì‘ — «“ „ÊÃÊœÌ „Ì»«‘œ. „ÊÃÊœÌ ›⁄·Ì');
     Exit;
  end;
   dm.Query.Active := False;
  dm.Query.SQL.Clear;
  command := 'select price from inout where Dateout is null';
  dm.Query.SQL.Add( command);
  dm.Query.Active := True;
  dm.Query.Last;
  dm.Tinout.FieldByName('price').Value:= dm.Query.FieldByName('price').Value;

  dm.Tinout.FieldByName('total').Value:=(StrToInt(Edit2.Text)* -1);
  dm.Tinout.FieldByName('Cuser').Value :=cua;
  dm.Tinout.FieldByName('Dateout').Value := Now;
  dm.Tinout.Post;
  dm.Tinout.Active := False;
  dm.Tkala.Active := False;
  dm.Tcustomer.Active := False;
   Fout.close;
end;

procedure TFout.FormShow(Sender: TObject);
begin
dm.Tinout.Active := True;
  dm.Tkala.Active := True;
  dm.Tcustomer.Filter := 'Type='+QuotedStr('Œ—Ìœ«—');
  dm.Tcustomer.Filtered := True;
  dm.Tcustomer.Active := True;
  dm.Tinout.Insert;

  Edit1.Text := nua;
end;

end.
