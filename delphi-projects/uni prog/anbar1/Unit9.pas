unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Mask, Grids, DBGrids;

type
  Tfrosh = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid3: TDBGrid;
    DBEdit4: TDBEdit;
    DBNavigator3: TDBNavigator;
    Button3: TButton;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frosh: Tfrosh;

implementation

{$R *.dfm}

procedure Tfrosh.Button3Click(Sender: TObject);
begin
 frosh.Close;
end;

end.
