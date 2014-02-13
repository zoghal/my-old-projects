unit protectU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFprotect = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    Button1: TButton;
    UserEdit: TEdit;
    PassEdit: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprotect: TFprotect;

implementation

uses Mainu, Unit1;

{$R *.dfm}

procedure TFprotect.Button1Click(Sender: TObject);
begin
   Fprotect.Close;
end;

procedure TFprotect.Button2Click(Sender: TObject);
var
  command :String;
begin

  dm.Query.Active := False;
  dm.Query.SQL.Clear;
  command := 'select * from userdb where Username='+#39+ UserEdit.Text+#39+' and Pass='+#39+PassEdit.Text+#39;
  dm.Query.SQL.Add(command);
  dm.Query.Active := True;

  if dm.Query.RecNo = 0 then
    ShowMessage('‰«„ ò«—»—Ì Ì« —„“ ⁄»Ê—  «‘ »«Â ‘œÂ')
  else
    begin
     ua := dm.Query.FieldValues['Username'];
     nua := dm.Query.FieldValues['Name'];
     cua := dm.Query.FieldValues['Code'];
     dm.Query.Active := False;
     Fprotect.Hide;
     mform.ShowModal;
    end;
      dm.Query.Active := False;
end;

end.
