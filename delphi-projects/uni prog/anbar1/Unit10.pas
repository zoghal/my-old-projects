unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  Tkharidkala = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    DBGrid4: TDBGrid;
    DBNavigator4: TDBNavigator;
    Button4: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kharidkala: Tkharidkala;

implementation

uses Unit2;

{$R *.dfm}

procedure Tkharidkala.Button4Click(Sender: TObject);
begin
    kharidkala.Close;
end;

end.