unit edit_drug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus;

type
  Teditdrug = class(TForm)
    DBGrid2: TDBGrid;
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
  editdrug: Teditdrug;

implementation

uses Unit1, insertDeug;

{$R *.dfm}

procedure Teditdrug.N1Click(Sender: TObject);
begin
  MainForm.DrugTable.Edit;
  insertdrug.ShowModal;
end;

procedure Teditdrug.N2Click(Sender: TObject);
begin
if   MessageDlg('¬Ì« «“ Õ–›  œ«—Ê «ÿ„Ì‰«‰ œ«—Ìœø',mtWarning,[mbyes,mbno],0) = mrYes then
 MainForm.DrugTable.Delete;
end;

end.
