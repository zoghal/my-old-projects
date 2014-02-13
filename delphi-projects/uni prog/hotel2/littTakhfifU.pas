unit littTakhfifU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask;

type
  TlisttakhfifForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listtakhfifForm: TlisttakhfifForm;

implementation

uses Unit2;

{$R *.dfm}

procedure TlisttakhfifForm.SpeedButton2Click(Sender: TObject);
begin
  listtakhfifForm.Close;
end;

procedure TlisttakhfifForm.SpeedButton1Click(Sender: TObject);
begin
  Form2.ADODataSet1.Active := False;
  Form2.ADODataSet1.CommandText:='select * from servic where types=1 and odate  between :p1 and :p2 ';
  Form2.ADODataSet1.Parameters[0].Value := MaskEdit1.Text;
  Form2.ADODataSet1.Parameters[1].Value := MaskEdit2.Text;
  Form2.ADODataSet1.Active := True;


  form2.QuickRep1.Preview;
end;

end.
