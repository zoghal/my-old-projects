unit reportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TReprtForm = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReprtForm: TReprtForm;

implementation

uses mainU;

{$R *.dfm}

end.
