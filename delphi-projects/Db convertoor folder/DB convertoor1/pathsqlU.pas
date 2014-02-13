unit pathsqlU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tpathsql = class(TForm)
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pathsql: Tpathsql;

implementation

uses mainU, Math, reportU;

{$R *.dfm}

procedure Tpathsql.SpeedButton1Click(Sender: TObject);
begin
  mainform.Table3.Edit;

  connectionStringSql :='Provider=SQLOLEDB.1;';

  if DBEdit3.Text <> '' then
    connectionStringSql := connectionStringSql +'Password='+'"'+Trim(DBEdit3.text)+'"'+';'
  else
    connectionStringSql := connectionStringSql +'Password="";';

  connectionStringSql := connectionStringSql +'Persist Security Info=True;';

  if DBEdit2.Text = '' then ShowMessage('‰«„ ﬂ«—»— „‘Œ’ ‰‘œÂ «” ') Else
     connectionStringSql := connectionStringSql +'User ID='+Trim(DBEdit2.Text)+';';

  if DBEdit4.Text = '' then ShowMessage('‰«„ œÌ «»Ì” „‘ÕŒ’ ‰‘œÂ «” ') Else
     connectionStringSql := connectionStringSql +'Initial Catalog='+trim(DBEdit4.Text)+';';

  if DBEdit1.Text <> '' then connectionStringSql := connectionStringSql +'Data Source='+trim(DBEdit1.Text)+';';

  connectionStringSql := connectionStringSql +'Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;';
//  connectionStringSql := connectionStringSql +'Workstation ID=SERVER01;';
  connectionStringSql := connectionStringSql +'Use Encryption for Data=False;Tag with column collation when possible=False';

  ShowMessage(connectionStringSql);
  Mainform.Table3.Post;
  pathsql.Close;
end;

end.








