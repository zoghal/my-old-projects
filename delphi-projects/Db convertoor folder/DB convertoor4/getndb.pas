unit getndb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TGetNameTable = class(TForm)
    BitBtn1: TBitBtn;
    NDBEdit: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GetNameTable: TGetNameTable;

implementation

{$R *.dfm}

end.
