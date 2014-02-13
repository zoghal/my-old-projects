unit ChartU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, Grids, DBGrids, Buttons, TeEngine,
  Series, ExtCtrls, TeeProcs, Chart, DbChart;

type
  TchartForm = class(TForm)
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  chartForm: TchartForm;

implementation

uses Hotelprintu;



{$R *.dfm}

procedure TchartForm.SpeedButton3Click(Sender: TObject);
begin
 HotelPrint.ADODataSet1.Active := False;
 HotelPrint.ADODataSet1.CommandText:='SELECT DISTINCT city, COUNT(star) AS total FROM hotel where star='''+trim(DBLookupComboBox1.Text)+''' GROUP BY city order by total desc';
 HotelPrint.ADODataSet1.Active := True;
 hotelprint.QuickRep2.PreviewModal;
end;

end.
