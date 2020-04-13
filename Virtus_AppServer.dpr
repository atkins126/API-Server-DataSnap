program Virtus_AppServer;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ServerMethodsUnit1 in 'ServerMethodsUnit1.pas' {SM: TDSServerModule},
  ServerContainerUnit1 in 'ServerContainerUnit1.pas' {ServerContainer1: TDataModule},
  umetodo in 'umetodo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TServerContainer1, ServerContainer1);
  Application.Run;
end.

