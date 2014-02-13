program Hafez;

uses
  Forms,
  windows,
  Main_u in 'Main_u.pas' {MainForm},
  list_S_r_u in 'list_S_r_u.pas' {Listsend},
  list_Sestem_u in 'list_Sestem_u.pas' {List_system},
  Send_u in 'Send_u.pas' {SendForm},
  system_u in 'system_u.pas' {SystemForm},
  List_Total_Send in 'List_Total_Send.pas' {List_total},
  Print_send in 'Print_send.pas' {Print1: TQuickRep},
  about in 'about.pas' {AboutBox};


{$R *.RES}

begin
    Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TList_system, List_system);
  Application.CreateForm(TListsend, Listsend);
  Application.CreateForm(TSendForm, SendForm);
  Application.CreateForm(TSystemForm, SystemForm);
  Application.CreateForm(TList_total, List_total);
  Application.CreateForm(TPrint1, Print1);
  Application.CreateForm(TAboutBox, AboutBox);
  MainForm.TileMode := Tbhorizontal;
  MainForm.Tile;
  Application.Run;
end.
