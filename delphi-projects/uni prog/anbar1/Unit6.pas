unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFroshkala = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Button2: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit12: TDBEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Froshkala: TFroshkala;

implementation

uses Unit2;

{$R *.dfm}

procedure TFroshkala.Button2Click(Sender: TObject);
begin
    Froshkala.Close;
end;

end.
