unit system_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TSystemForm = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Shape3: TShape;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemForm: TSystemForm;

implementation

uses list_Sestem_u;

{$R *.DFM}

procedure TSystemForm.BitBtn2Click(Sender: TObject);
begin
     LIST_SYSTEM.SystemTable1.Post;
     SystemForm.Close;
end;


procedure TSystemForm.BitBtn1Click(Sender: TObject);
begin
  SystemForm.Close;
  List_system.SystemTable1.Cancel;
end;

end.
