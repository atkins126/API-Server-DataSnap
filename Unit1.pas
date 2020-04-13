unit Unit1;

interface

uses vcl.Graphics, Jpeg, pngimage, GIFImg, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids, Data.DB,winsvc, Vcl.ExtCtrls,
  IdBaseComponent, IdThreadComponent,  Vcl.StdCtrls, dxGDIPlusClasses, EnJpgGr,
  EnPngGr;

type
  TForm1 = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    Image3: TImage;
    Image4: TImage;
    procedure thRun(Sender: TIdThreadComponent);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fim;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ServerMethodsUnit1;

Function fncGetStatusWinService(const sWinService : string; const sComputerName : string = '') : integer;
var

    {Nome do computador onde esta localizado o servi�o}
    sComputerNameEx : string;
    chrComputerName : array[0..255] of char;
    cSize           : Cardinal;
    {Handle do Gerenciador de Servi�os}
    hServiceControl : SC_Handle;
    {Handle do Servi�o}
    hService        : SC_Handle;
    {Status do Servi�o}
    tStatus         : TServiceStatus;
    {Status Atual do Servi�o}
    iStatus         : integer;
begin
    iStatus:=0;
    Result:=0;
    {Verifica se nome do computador foi declarado}
    if (sComputerName = '') then
    begin
        {Caso n�o tenha sido declarado captura o nome do computador local}
        FillChar(chrComputerName, SizeOf(chrComputerName), #0);
        GetComputerName(chrComputerName, cSize);
        sComputerNameEx:=chrComputerName;
    end
    else sComputerNameEx:=sComputerName;
    {Conecta ao Gerenciador de Servi�os}
    hServiceControl:=OpenSCManager(PChar(sComputerNameEx), nil, SC_MANAGER_CONNECT);
    {Se conseguiu se conectar}
    if not(hServiceControl = 0) then
    begin
        {Conecta o Servi�o Especificado}
        {Solicitando SERVICE_QUERY_STATUS ou o status do servi�o}
        hService:=OpenService(hServiceControl, PChar(sWinService), SERVICE_QUERY_STATUS);
        {Se conseguiu se conectar}
        if not(hService = 0) then
        begin
            if (QueryServiceStatus(hService, tStatus)) then
            begin
                iStatus:=tStatus.dwCurrentState;
            end;
            {Fecha Handle do Servi�o}
            CloseServiceHandle(hService);
        end
        else iStatus:=-1;
        {Fecha conex�o com o Gerenciador de Servi�os}
        CloseServiceHandle(hServiceControl);
    end
    else iStatus:=-2;
    {Retorna o valor do Status para a fun��o}
    Result:=iStatus;
end;

procedure TForm1.fim;
begin
  application.Terminate;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=cafRee;
end;

procedure TForm1.thRun(Sender: TIdThreadComponent);
begin

if fncGetStatusWinService('Virtus_Data_Server','') <> 4 then
 begin
   //th.Stop;
   fim;

 end;

end;

end.

