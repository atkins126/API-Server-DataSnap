unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTP,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSProxyJavaScript,
  Datasnap.DSMetadata, Datasnap.DSServerMetadata, winsvc, Vcl.ExtCtrls, IdBaseComponent, IdThreadComponent,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait;

type
  TServerContainer1 = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSHTTPService1: TDSHTTPService;
    DSAuthenticationManager1: TDSAuthenticationManager;
    DSHTTPServiceProxyDispatcher1: TDSHTTPServiceProxyDispatcher;
    DSProxyGenerator1: TDSProxyGenerator;
    DSServerMetaDataProvider1: TDSServerMetaDataProvider;
    DSHTTPServiceFileDispatcher1: TDSHTTPServiceFileDispatcher;
    DSServerClass1: TDSServerClass;
    FDConnection1: TFDConnection;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManager1UserAuthorize(Sender: TObject;
      EventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSAuthenticationManager1UserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure DataModuleCreate(Sender: TObject);
    procedure thRun(Sender: TIdThreadComponent);
  private
    { Private declarations }
  public
  end;

var
  ServerContainer1: TServerContainer1;

implementation

uses Winapi.Windows, ServerMethodsUnit1;

{$R *.dfm}

Function fncGetStatusWinService(const sWinService : string; const sComputerName : string = '') : integer;
var
    {Nome do computador onde esta localizado o serviço}
    sComputerNameEx : string;
    chrComputerName : array[0..255] of char;
    cSize           : Cardinal;
    {Handle do Gerenciador de Serviços}
    hServiceControl : SC_Handle;
    {Handle do Serviço}
    hService        : SC_Handle;
    {Status do Serviço}
    tStatus         : TServiceStatus;
    {Status Atual do Serviço}
    iStatus         : integer;
begin
    iStatus:=0;
    Result:=0;
    {Verifica se nome do computador foi declarado}
    if (sComputerName = '') then
    begin
        {Caso não tenha sido declarado captura o nome do computador local}
        FillChar(chrComputerName, SizeOf(chrComputerName), #0);
        GetComputerName(chrComputerName, cSize);
        sComputerNameEx:=chrComputerName;
    end
    else sComputerNameEx:=sComputerName;
    {Conecta ao Gerenciador de Serviços}
    hServiceControl:=OpenSCManager(PChar(sComputerNameEx), nil, SC_MANAGER_CONNECT);
    {Se conseguiu se conectar}
    if not(hServiceControl = 0) then
    begin
        {Conecta o Serviço Especificado}
        {Solicitando SERVICE_QUERY_STATUS ou o status do serviço}
        hService:=OpenService(hServiceControl, PChar(sWinService), SERVICE_QUERY_STATUS);
        {Se conseguiu se conectar}
        if not(hService = 0) then
        begin
            if (QueryServiceStatus(hService, tStatus)) then
            begin
                iStatus:=tStatus.dwCurrentState;
            end;
            {Fecha Handle do Serviço}
            CloseServiceHandle(hService);
        end
        else iStatus:=-1;
        {Fecha conexão com o Gerenciador de Serviços}
        CloseServiceHandle(hServiceControl);
    end
    else iStatus:=-2;
    {Retorna o valor do Status para a função}
    Result:=iStatus;
end;


procedure TServerContainer1.DataModuleCreate(Sender: TObject);
begin
  //write the JavaScript proxy on startup
  DSProxyGenerator1.Write;
end;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit1.TSM;
end;

procedure TServerContainer1.thRun(Sender: TIdThreadComponent);
begin
if fncGetStatusWinService('Virtus_Data_Server','') <> 4 then

end;

procedure TServerContainer1.DSAuthenticationManager1UserAuthenticate(
  Sender: TObject; const Protocol, Context, User, Password: string;
  var valid: Boolean; UserRoles: TStrings);
begin
if Protocol = 'tcp/ip' then
 Begin
  if (User = 'goodsales') and (PassWord='good&@le&') then
     valid := True
  else
     valid := false;
 End
else
     valid := True
end;

procedure TServerContainer1.DSAuthenticationManager1UserAuthorize(
  Sender: TObject; EventObject: TDSAuthorizeEventObject;
  var valid: Boolean);
begin
  { TODO : Authorize a user to execute a method.
    Use values from EventObject such as UserName, UserRoles, AuthorizedRoles and DeniedRoles.
    Use DSAuthenticationManager1.Roles to define Authorized and Denied roles
    for particular server methods. }
  valid := True;
end;


end.

