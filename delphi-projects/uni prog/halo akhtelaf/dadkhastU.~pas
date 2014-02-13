unit dadkhastU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TinsertdadForm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBComboBox4: TDBComboBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    DBComboBox5: TDBComboBox;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  insertdadForm: TinsertdadForm;

implementation

uses datamU;

{$R *.dfm}

procedure TinsertdadForm.BitBtn1Click(Sender: TObject);
begin
   DataM.dadkhastT.Cancel;
   DataM.dadkhastT.Active := False;
   insertdadForm.Close;
end;

procedure TinsertdadForm.BitBtn2Click(Sender: TObject);
begin
  DataM.dadkhastT.Post;
  DataM.dadkhastT.Last;
  ShowMessage('‘„«—Â ò·«”Â :'+ datam.dadkhastTClase.AsString);
  DataM.dadkhastT.Active := False;
   insertdadForm.Close;
end;

procedure TinsertdadForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataM.dadkhastT.Cancel;
   DataM.dadkhastT.Active := False;
end;

end.
