unit fatctorU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFactorForm = class(TForm)
    DBGrid2: TDBGrid;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FactorForm: TFactorForm;

implementation

uses factorprintU;

{$R *.dfm}

procedure TFactorForm.SpeedButton1Click(Sender: TObject);
begin

  FactorPrintform.ADODataSet1.Active := false;
  FactorPrintform.ADODataSet1.CommandText :='select sum(price) as sump from servic where mosafer_id=:p';
  FactorPrintform.ADODataSet1.Parameters[0].Value := ADODataSet2.FieldValues['codem'];
  FactorPrintform.ADODataSet1.Active := True;

  FactorPrintform.QRLabel12.Caption := FactorPrintform.ADODataSet1.FieldValues['sump'];


  FactorPrintform.ADODataSet1.Active := false;
  FactorPrintform.ADODataSet1.CommandText :='select * from servic where types=0 and mosafer_id=:p';
  FactorPrintform.ADODataSet1.Parameters[0].Value := ADODataSet2.FieldValues['codem'];
  FactorPrintform.ADODataSet1.Active := True;

  FactorPrintform.ADODataSet2.Active := false;
  FactorPrintform.ADODataSet2.CommandText :='select * from servic where types=1 and mosafer_id=:p';
  FactorPrintform.ADODataSet2.Parameters[0].Value := ADODataSet2.FieldValues['codem'];
  FactorPrintform.ADODataSet2.Active := True;

  factorprintform.QuickRep2.PreviewModal;
end;

end.
