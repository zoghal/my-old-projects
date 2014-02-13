unit ShowNTF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TShowNTForm = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowNTForm: TShowNTForm;

implementation

uses mainU;

{$R *.dfm}

end.
