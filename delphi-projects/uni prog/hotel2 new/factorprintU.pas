unit factorprintU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  TFactorPrintform = class(TForm)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
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
