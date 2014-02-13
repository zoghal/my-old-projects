unit factorprintU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TFactorPrintform = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    QRBand3: TQRBand;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FactorPrintform: TFactorPrintform;

implementation

uses fatctorU, Unit1;

{$R *.dfm}

end.
