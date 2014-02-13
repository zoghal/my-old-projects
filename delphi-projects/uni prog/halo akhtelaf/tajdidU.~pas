unit tajdidU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  Ttajdidform = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tajdidform: Ttajdidform;

implementation

uses datamU, DB, Math;

{$R *.dfm}
procedure Ttajdidform.BitBtn1Click(Sender: TObject);
begin
  DataM.dadkhastT.Active := True;
  if  DataM.dadkhastT.FindKey([ Edit1.Text]) then // çò ò—œ‰ „ÊÃÊœ »Êœ‰ œ«œŒÊ«” 
      begin
      DataM.querym.Active := False;
      DataM.Querym.SQL.Clear;
      datam.Querym.SQL.Add('select * from dadnamedadkhast where Clase='+#39+Edit1.Text+#39);
      datam.Querym.Active :=true;
      If DataM.Querym.RecNo > 0 then
      begin
         DataM.dadkhastT.Active := false;
         ShowMessage('«Ì‰ Å—Ê‰œÂ „Œ Ê„ ‘œÂ «” ');
         Exit;
      End;

      DataM.querym.Active := False;
      DataM.Querym.SQL.Clear;
      datam.Querym.SQL.Add('select * from tajdid where R4dadnumber='+#39+Edit1.Text+#39);
      datam.Querym.Active := true;
      If DataM.Querym.RecNo > 0 then
      begin
         DataM.dadkhastT.Active := false;
         ShowMessage('ﬁ»·« »—«Ì  ÃœÌœ ‰Ÿ— «ﬁœ«„ ‘œÂ «” ');
         Exit;
      End;

      DataM.tajdidT.Active := True;
      DataM.tajdidT.Insert;
      DataM.tajdidTR4dadnumber.Value := DataM.dadkhastTClase.Value;
      Edit2.Text := DataM.dadkhastTSetdate.AsString;
      GroupBox1.Enabled := False;
      GroupBox2.Enabled := True;
      GroupBox3.Enabled := True;
      GroupBox4.Enabled := True;
      GroupBox5.Enabled := True;
      GroupBox6.Enabled := True;
      BitBtn2.Enabled := True;
      DataM.dadkhastT.Active:= False;
     end
  else
     ShowMessage('‘„«—Â ò·«” Å—Ê‰œÂ „ÊÃÊœ ‰„Ì »«‘œ');
  DataM.dadkhastT.Active := False;
end;

procedure Ttajdidform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DataM.tajdidT.Cancel;
   DataM.tajdidT.Active := False;
end;

procedure Ttajdidform.BitBtn3Click(Sender: TObject);
begin
GroupBox1.Enabled := True;
      GroupBox2.Enabled := False;
      GroupBox3.Enabled := False;
      GroupBox4.Enabled := False;
      GroupBox5.Enabled := False;
      GroupBox6.Enabled := False;
    DataM.tajdidT.Cancel;
   DataM.tajdidT.Active := False;
   tajdidform.Close;
end;

procedure Ttajdidform.BitBtn2Click(Sender: TObject);
begin
GroupBox1.Enabled := True;
      GroupBox2.Enabled := False;
      GroupBox3.Enabled := False;
      GroupBox4.Enabled := False;
      GroupBox5.Enabled := False;
      GroupBox6.Enabled := False;
      BitBtn2.Enabled := True;
    DataM.tajdidTR4date.AsString := Edit2.Text;
    DataM.tajdidTDate.AsDateTime:= Now;
    DataM.tajdidT.Post;
      ShowMessage('‘„«—Â ò·«”Â  ÃœÌœ ‰Ÿ— :'+ datam.tajdidTCodet.AsString);
    Datam.tajdidT.Active := false;
    tajdidform.Close;
end;

end.
