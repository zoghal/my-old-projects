program anbar;

uses
  Forms,
  Mainu in 'Mainu.pas' {Mform},
  Unit1 in 'Unit1.pas' {dm: TDataModule},
  kalaU in 'kalaU.pas' {Fkala},
  userU in 'userU.pas' {Fuser},
  customerU in 'customerU.pas' {Fcustomer},
  inoutU in 'inoutU.pas' {Finout},
  protectU in 'protectU.pas' {Fprotect},
  outU in 'outU.pas' {Fout},
  report1U in 'report1U.pas' {Frep1},
  reportinU in 'reportinU.pas' {Frepin},
  reportoutU in 'reportoutU.pas' {Frepout},
  listusertU in 'listusertU.pas' {FListuser},
  listcustomerU in 'listcustomerU.pas' {Flistcustomer};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFprotect, Fprotect);
  Application.CreateForm(TMform, Mform);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFkala, Fkala);
  Application.CreateForm(TFuser, Fuser);
  Application.CreateForm(TFcustomer, Fcustomer);
  Application.CreateForm(TFinout, Finout);
  Application.CreateForm(TFout, Fout);
  Application.CreateForm(TFrep1, Frep1);
  Application.CreateForm(TFrepin, Frepin);
  Application.CreateForm(TFrepout, Frepout);
  Application.CreateForm(TFListuser, FListuser);
  Application.CreateForm(TFlistcustomer, Flistcustomer);
  Application.Run;
end.