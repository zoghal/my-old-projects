unit dad_voteU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons;

type
  TdadVoteform = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    DBMemo2: TDBMemo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dadVoteform: TdadVoteform;

implementation

uses datamU, tajdidU;

{$R *.dfm}

procedure TdadVoteform.BitBtn1Click(Sender: TObject);
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

      DataM.DadVoteT.Active := True;
      DataM.DadVoteT.Insert;
      DataM.DadVoteTClase.Value := DataM.dadkhastTClase.Value;
      DataM.DadVoteTKhahan.AsString := DataM.dadkhastTNamef.AsString;
      DataM.DadVoteTKhandeh.AsString := DataM.dadkhastTKhanamekarfarma.AsString;
      DataM.DadVoteTKhastar.AsString := DataM.dadkhastTRequesttype.AsString;
      Edit2.Text :=   DataM.dadkhastTSetdate.AsString;
      GroupBox1.Enabled := False;
      GroupBox2.Enabled := True;
      GroupBox3.Enabled := True;
      GroupBox4.Enabled := True;
      BitBtn2.Enabled := True;
      DataM.dadkhastT.Active:= False;
     end
  else
     ShowMessage('‘„«—Â ò·«” Å—Ê‰œÂ „ÊÃÊœ ‰„Ì »«‘œ');
  DataM.dadkhastT.Active := False;
end;

procedure TdadVoteform.BitBtn3Click(Sender: TObject);
begin
  GroupBox1.Enabled := true;
      GroupBox2.Enabled := false;
      GroupBox3.Enabled := false;
      GroupBox4.Enabled := false;
      BitBtn2.Enabled := false;
   DataM.DadVoteT.Cancel;
   DataM.DadVoteT.Active := False;
   dadVoteform.Close;
end;

procedure TdadVoteform.BitBtn2Click(Sender: TObject);
begin
  GroupBox1.Enabled := true;
      GroupBox2.Enabled := false;
      GroupBox3.Enabled := false;
      GroupBox4.Enabled := false;
      BitBtn2.Enabled := false;

    DataM.DadVoteTDate.AsString := Edit2.Text;
    DataM.DadVoteT.Post;
    DataM.dadkhastT.Last;
      ShowMessage('«Ì‰ œ«œ‰«„Â »« ‘„« «⁄·«„ ‘œÂ œ— ”Ì” „ À»  ‘œ. ‘„«—Â  :'+ datam.DadVoteTCoded.AsString);
    Datam.DadVoteT.Active := false;
    dadVoteform.Close;
end;

end.
