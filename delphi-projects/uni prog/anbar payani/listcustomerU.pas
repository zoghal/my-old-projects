unit listcustomerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TFlistcustomer = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flistcustomer: TFlistcustomer;

implementation

uses Unit1;

{$R *.dfm}

end.
