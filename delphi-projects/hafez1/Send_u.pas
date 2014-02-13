unit Send_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, DBCtrls, Db, DBTables, VCLBase, EPButtons,
  Buttons;

type
  TSendForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    shDBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    Shape7: TShape;
    DBComboBox2: TDBComboBox;
    Shape8: TShape;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Shape9: TShape;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBComboBox3: TDBComboBox;
    Shape5: TShape;
    date_outDBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Shape10: TShape;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Shape12: TShape;
    Label12: TLabel;
    DBComboBox4: TDBComboBox;
    Shape11: TShape;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Shape13: TShape;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Shape14: TShape;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NameDBEdit10: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SendForm: TSendForm;

implementation

uses Main_u, list_S_r_u, list_Sestem_u, Print_send;

{$R *.DFM}

procedure TSendForm.BitBtn2Click(Sender: TObject);
begin
  SendForm.Close;
  Listsend.SendTable1.Cancel;;
end;

procedure TSendForm.BitBtn1Click(Sender: TObject);
begin
 if DBComboBox3.Text = '' Then
  Begin
   ShowMessage( '”Ì” „Ì »— ﬂ—«ÌÂ «‰ Œ«» ‰ê—œÌœÂ «” ' );
   Listsend.SendTable1.Cancel;
  End
 Else
  Begin
   if List_system.SystemTable1.FindKey ( [ Listsend.SendTable1.FieldByName('Type_s').AsString ] ) Then
     Begin
       List_system.SystemTable1.Edit;
       List_system.SystemTable1.FieldValues['Backed'] := True;
       List_system.SystemTable1.post;
       Listsend.SendTable1.Post;
       SendForm.Close;
     if ( Listsend.SendTable1.FieldValues['L-sim'] = True ) Or
       ( Listsend.SendTable1.FieldValues['L-RF'] = True ) Or
       ( Listsend.SendTable1.FieldValues['L-Tabdel'] = True ) Or
       ( Listsend.SendTable1.FieldValues['L-payeh'] = True ) Or
       ( Listsend.SendTable1.FieldValues['L-Control'] = True ) Then
      Begin
         If Listsend.SendTable1.FieldValues['L-Control'] = True Then Print1.QRLabel19.Caption := ' / ﬂ‰ —· / ';
         If Listsend.SendTable1.FieldValues['L-sim'] = True Then Print1.QRLabel19.Caption := ' / ”Ì„ —«»ÿ/ ' + Print1.QRLabel19.Caption;
         If Listsend.SendTable1.FieldValues['L-Tabdel'] = True Then Print1.QRLabel19.Caption := ' /  »œÌ· Â‰œÌﬂ„ / '+ Print1.QRLabel19.Caption;
         If Listsend.SendTable1.FieldValues['L-Payeh'] = True Then Print1.QRLabel19.Caption := ' / Å«ÌÂ œÊ—»Ì‰ / '+Print1.QRLabel19.Caption;
         If Listsend.SendTable1.FieldValues['L-RF'] = True Then Print1.QRLabel19.Caption := ' / RF  »œÌ· / '+Print1.QRLabel19.Caption;
      End
    Else
     Begin
       Print1.QRLabel19.Caption := '»œÊ‰ ·Ê«“„ Ã«‰»Ì';
     End;
       Print1.PreviewModal;
     End;
  End;
end;

procedure TSendForm.BitBtn3Click(Sender: TObject);
begin
 Print1.Preview;
end;

procedure TSendForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #27 Then SendForm.Close;
end;

end.

