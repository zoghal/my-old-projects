unit Hotelprintu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB, TeEngine, Series,
  TeeProcs, Chart, DbChart, QRTEE;

type
  THotelPrint = class(TForm)
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    QuickRep2: TQuickRep;
    TitleBand1: TQRBand;
    QRChart1: TQRChart;
    QRDBChart1: TQRDBChart;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Series2: TPieSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HotelPrint: THotelPrint;

implementation

uses Unit1;

{$R *.dfm}

end.