program dadkhast;

uses
  Forms,
  mainU in 'mainU.pas' {mainform},
  dadkhastU in 'dadkhastU.pas' {insertdadForm},
  datamU in 'datamU.pas' {DataM: TDataModule},
  tajdidU in 'tajdidU.pas' {tajdidform},
  listDadU in 'listDadU.pas' {ListDadform},
  dad_voteU in 'dad_voteU.pas' {dadVoteform},
  listdadnamehU in 'listdadnamehU.pas' {listdadnamehform},
  listtajdidU in 'listtajdidU.pas' {listtajdidform},
  loginU in 'loginU.pas' {loginF};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TloginF, loginF);
  Application.CreateForm(Tmainform, mainform);
  Application.CreateForm(TinsertdadForm, insertdadForm);
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(Ttajdidform, tajdidform);
  Application.CreateForm(TListDadform, ListDadform);
  Application.CreateForm(TdadVoteform, dadVoteform);
  Application.CreateForm(Tlistdadnamehform, listdadnamehform);
  Application.CreateForm(Tlisttajdidform, listtajdidform);
  Application.Run;
end.
