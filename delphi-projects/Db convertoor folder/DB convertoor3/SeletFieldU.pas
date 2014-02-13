unit SeletFieldU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, dbcgrids, Buttons,db,DBTables;

type
  TSelectForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    ListBox2: TListBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  SelectForm: TSelectForm;
  convertOK: Boolean;
implementation

uses mainU;

{$R *.dfm}

procedure TSelectForm.BitBtn1Click(Sender: TObject);
var ITI : Byte;
begin
 ITI := ListBox1.ItemIndex;
  ListBox2.Items.Add(ListBox1.Items.Strings[iti]);
end;

procedure TSelectForm.BitBtn2Click(Sender: TObject);
begin
 ListBox2.Items.Delete(ListBox2.ItemIndex);
end;


procedure TSelectForm.BitBtn3Click(Sender: TObject);
begin
 If SelectForm.ListBox2.Count = 0 then
  Begin
   ShowMessage('ÂÌçêÊ‰Â ›Ì·œÌ «‰ Œ«» ‰‘œÂ «” ');
   Exit;
  End
 Else
 Begin
  convertOK := True;
  SelectForm.Close;
 End;
end;

procedure TSelectForm.BitBtn4Click(Sender: TObject);
begin
 Close;
end;

end.
