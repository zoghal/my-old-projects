unit listtajdidU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tlisttajdidform = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listtajdidform: Tlisttajdidform;

implementation

uses datamU;

{$R *.dfm}

end.
