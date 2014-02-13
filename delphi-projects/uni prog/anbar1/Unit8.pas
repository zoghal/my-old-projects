unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Grids, DBGrids;

type
  Tkharid = class(TForm)
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBGrid5: TDBGrid;
    DBEdit9: TDBEdit;
    DBNavigator5: TDBNavigator;
    Button5: TButton;
    DBEdit10: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit11: TDBEdit;
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kharid: Tkharid;

implementation

{$R *.dfm}

procedure Tkharid.Button5Click(Sender: TObject);
begin
  kharid.Close;
end;

end.
