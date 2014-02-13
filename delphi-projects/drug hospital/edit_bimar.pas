unit edit_bimar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus;

type
  Teditbimar = class(TForm)
    DBGrid1: TDBGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editbimar: Teditbimar;

implementation

uses Unit1, Insert_bimarY;

{$R *.dfm}

procedure Teditbimar.N1Click(Sender: TObject);
begin
 MainForm.BimarTable.Edit;
 insert_b.ShowModal;
end;

procedure Teditbimar.N2Click(Sender: TObject);
begin
if   MessageDlg('¬Ì« «“ Õ–› »Ì„«— «ÿ„Ì‰«‰ œ«—Ìœø',mtWarning,[mbyes,mbno],0) = mrYes then
 MainForm.BimarTable.Delete;
end;

end.
