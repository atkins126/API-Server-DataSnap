unit ServerMethodsUnit1;
interface

uses
 System.SysUtils,vcl.Graphics, Jpeg, pngimage, GIFImg, Vcl.ExtCtrls, EnImgScr,EnEncrypt, System.Classes, System.Json, umetodo,
   IdIOHandler,clCertificate,
  IdExplicitTLSClientServerBase,Datasnap.DSConnect,
  Helper,EnDiGrph,

  VCL.FlexCel.Core,System.Rtti, FlexCel.XlsAdapter,IdSSLOpenSSL,dbClient, ScripterInit,system.IniFiles, midaslib,Datasnap.DSServer, Datasnap.DSAuth,
    Vcl.AppEvnts, fs_idialogsrtti, fs_iinirtti, fs_idbctrlsrtti,
  fs_iadortti, frxExportHTML, frxGradient, frxChBox, frxClass,
  frxGZip, frxBarcode, frxRich, frxExportImage, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportPDF, frxCross, frxDBSet, fs_idbrtti, atPascal,
  atScript, atScripter,math,System.Threading,  Datasnap.Provider,StdCtrls,IdPOP3,IdSMTP,IdMessage,IdAttachmentFile,IdText,
  DBXJSON,ap_db, ap_Sysutils, ap_Classes, ap_Controls, ap_Forms, ap_Dialogs,
  ap_StdCtrls, ap_Windows, ap_System,
  ap_ExtCtrls, ap_ComCtrls, ap_Menus, ap_Buttons,
  IPPeerClient,dialogs, vcl.controls,frxChart,Unit1,windows, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Error, FireDAC.VCLUI.Login,
  FireDAC.VCLUI.Async, FireDAC.VCLUI.Script, FireDAC.VCLUI.Wait,
  FireDAC.Phys.OracleDef, FireDAC.Phys.DB2Def, FireDAC.Phys.InfxDef,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCDef, FireDAC.Phys.MSAccDef,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.ASADef, FireDAC.Phys.ADSDef,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.DSDef, FireDAC.Phys.TDBXDef,
  FireDAC.Phys.TDBX, FireDAC.Phys.TDBXBase, FireDAC.Phys.DS,
  FireDAC.Phys.SQLite, FireDAC.Phys.IB, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Phys.ADS, FireDAC.Phys.ASA, FireDAC.Phys.MySQL, FireDAC.Phys.MSAcc,
  FireDAC.Phys.ODBC, FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageXML,
  FireDAC.Stan.StorageBin, FireDAC.Moni.FlatFile, FireDAC.Moni.Custom,
  FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, FireDAC.Phys.MSSQL,
  FireDAC.Phys.Infx, FireDAC.Phys.ODBCBase, FireDAC.Phys.DB2,
  FireDAC.Phys.Oracle, FireDAC.Comp.UI, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, wsClasses, wsMain, wsDB, wsADO,DataSnap.DSProviderDataModuleAdapter,
  JvMemoryDataset, JvComponentBase, JvCipher, JvInterpreter,
  FireDAC.Phys.SQLiteVDataSet,wsControls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTPBase, DBXDataSnap, Data.DBXCommon, Data.SqlExpr,
  Data.FMTBcd, wsFireDac, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Client, IdZLibCompressorBase, IdCompressorZLib, REST.Response.Adapter,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, clMailMessage, clTcpClient,
  clTcpClientTls, clTcpCommandClient, clMC, clSmtp, FireDAC.Phys.CDataJIRADef,
  FireDAC.Phys.CDataJIRA, clCertificateStore,
  System.JSON.Types,
  System.JSON.Writers,
  Data.DB,System.JSON.Builders;

type
  TSM = class(TDSServerModule)
    ADQuery1: TFDQUERY;
    fsDBRTTI1: TfsDBRTTI;
    frxDBDataset1: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    frxXLSExport1: TfrxXLSExport;
    frxBMPExport1: TfrxBMPExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxGIFExport1: TfrxGIFExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject2: TfrxBarCodeObject;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxHTMLExport1: TfrxHTMLExport;
    fsADORTTI1: TfsADORTTI;
    fsDBCtrlsRTTI1: TfsDBCtrlsRTTI;
    fsIniRTTI1: TfsIniRTTI;
    fsDialogsRTTI1: TfsDialogsRTTI;
    ApplicationEvents1: TApplicationEvents;
    atScripter1: TatScripter;
    DataSetProvider1: TDataSetProvider;
    Script: TatPascalScripter;
    WorkflowStudio1: TWorkflowStudio;
    verifica: TDataSetProvider;
    _VERIFICA: TFDQuery;
    ADOQuery1: TFDQuery;
    _WKPENDS: TDataSetProvider;
    _WKFORMS: TDataSetProvider;
    frxChartObject1: TfrxChartObject;
    ADOQuery2: TFDQuery;
    atPascalScripter1: TatPascalScripter;
    ADConnection1: TFDCONNECTION;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDPhysDB2DriverLink1: TFDPhysDB2DriverLink;
    FDPhysInfxDriverLink1: TFDPhysInfxDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    FDMoniCustomClientLink1: TFDMoniCustomClientLink;
    FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDPhysODBCDriverLink1: TFDPhysODBCDriverLink;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDPhysASADriverLink1: TFDPhysASADriverLink;
    FDPhysADSDriverLink1: TFDPhysADSDriverLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDPhysDSDriverLink1: TFDPhysDSDriverLink;
    FDPhysTDBXDriverLink1: TFDPhysTDBXDriverLink;
    JvMemoryData1: TJvMemoryData;
    serial: TJvVigenereCipher;
    FormsF: TFDMemTable;
    FormsFNOME: TStringField;
    FormsFVALOR: TStringField;
    JvInterpreterProgram1: TJvInterpreterProgram;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    WKFORMS: TJvMemoryData;
    wkformsNOME: TStringField;
    WKFORMSTITULO: TStringField;
    WKFORMSVALOR: TMemoField;
    WKFORMSRO: TBooleanField;
    WKFORMSOBRIG: TBooleanField;
    WKFORMSSTATUS: TMemoField;
    WKPENDS: TJvMemoryData;
    WKPENDSCHAVE: TStringField;
    WKPENDSICHAVE: TStringField;
    WKPENDSNOME: TStringField;
    WKPENDSSTATUS: TStringField;
    WKPENDSUSUARIO: TStringField;
    WKPENDSASSUNTO: TStringField;
    WKPENDSDESCRICAO: TMemoField;
    WKPENDSDATA: TStringField;
    FDLocal: TFDLocalSQL;
    FDMemTable1: TFDMemTable;
    FDPhysDB2DriverLink2: TFDPhysDB2DriverLink;
    IdSMTP1: TIdSMTP;
    _TEMPLATE: TSQLConnection;
    SqlServerMethod1: TSqlServerMethod;
    WorkflowADODB1: TWorkflowADODB;
    RESTClient1: TRESTClient;
    __TRANSFER: TFDQuery;
    __TRANSFERTABELA: TStringField;
    __TRANSFERCONTEUDO: TBlobField;
    __TRANSFERFILTRO: TStringField;
    __TRANSFERID: TFDAutoIncField;
    FDStanStorageBinLink2: TFDStanStorageBinLink;
    FDStanStorageXMLLink2: TFDStanStorageXMLLink;
    FDStanStorageJSONLink2: TFDStanStorageJSONLink;
    compress: TIdCompressorZLib;
    DataSource1: TDataSource;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    RESTClient2: TRESTClient;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    clSmtp1: TclSmtp;
    clMailMessage1: TclMailMessage;
    FDPhysCDataJIRADriverLink1: TFDPhysCDataJIRADriverLink;
    clCertificateStore1: TclCertificateStore;
    FDQuery2: TFDQuery;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure WorkflowStudio1SendMail(Sender: TObject; TaskIns: TTaskInstance;
      AUser: TWorkflowUser; AEmailInfo: TEmailInformation; var Sent: Boolean);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure atPascalScripter1RuntimeError(Sender: TObject; var msg: string;
      row, col: Integer; var ShowException: Boolean);
    procedure atPascalScripter1CompileError(Sender: TObject; var msg: string;
      row, col: Integer; var ShowException: Boolean);
    procedure ADQuery1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ADQuery1AfterOpen(DataSet: TDataSet);
    procedure clSmtp1VerifyServer(Sender: TObject; ACertificate: TclCertificate;
      const AStatusText: string; AStatusCode: Integer; var AVerified: Boolean);
    procedure ADOQuery1ReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure DSServerModuleDestroy(Sender: TObject);
    procedure ADOQuery1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
    errog:TStringList;


    Procedure _LocalSQL(AMachine: TatVirtualMachine);
    procedure _uDataSets(AMachine:TatVirtualMachine);
    Procedure _fimmes(AMachine: TatVirtualMachine);
    Procedure _SegunG(AMachine: TatVirtualMachine);
    Procedure _ProcTESG(AMachine: TatVirtualMachine);
    Procedure _ProcTESG2(AMachine: TatVirtualMachine);
    Procedure _Potencia(AMachine:TatVirtualMachine);
    Procedure _OpenTMP(AMachine: TatVirtualMachine);
    Procedure _CreateTMP(AMachine: TatVirtualMachine);
    Procedure _AddField(AMachine: TatVirtualMachine);
    Procedure _DropTMP(AMachine: TatVirtualMachine);
    Procedure _GLocate(AMachine: TatVirtualMachine);


    Procedure SetOrder(AMachine: TatVirtualMachine);
    Procedure SetOrderADV(AMachine: TatVirtualMachine);
    Procedure Genericos(AMachine: TatVirtualMachine);

    Procedure _FazLog(AMachine: TatVirtualMachine);
    Procedure _Encode(AMachine: TatVirtualMachine);
    Procedure _Decode(AMachine: TatVirtualMachine);
    Procedure _Divide(AMachine: TatVirtualMachine);
    Procedure _ProcDash(AMachine: TatVirtualMachine);
    Procedure _WebFields(AMachine: TatVirtualMachine);
    Procedure _GeraSQLG(AMachine: TatVirtualMachine);
    Procedure _Request(AMachine: TatVirtualMachine);
    Procedure _Form(AMachine: TatVirtualMachine);
    Procedure _FiltroSQLG(AMachine: TatVirtualMachine);
    Procedure _RemoveFiltroG(AMachine: TatVirtualMachine);
    procedure _NewCube(AMachine: TatVirtualMachine);

    Procedure _ExecSQLG(AMachine: TatVirtualMachine);
    Procedure _MaxRECNOG(AMachine: TatVirtualMachine);
    Procedure _AsStringG(AMachine: TatVirtualMachine);
    Procedure _AsFloatG(AMachine: TatVirtualMachine);
    Procedure _AsIntegerG(AMachine: TatVirtualMachine);
    Procedure _RecordCountG(AMachine: TatVirtualMachine);
    Procedure _MoveNextG(AMachine: TatVirtualMachine);
    Procedure _MovePriorG(AMachine: TatVirtualMachine);
    Procedure _MoveLastG(AMachine: TatVirtualMachine);

    Procedure _GetRecNO(AMachine: TatVirtualMachine);
    Procedure _SetRecNO(AMachine: TatVirtualMachine);

    Procedure _MoveFirstG(AMachine: TatVirtualMachine);
    Procedure _TableEOFG(AMachine: TatVirtualMachine);
    Procedure _ComandoInserir(AMachine: TatVirtualMachine);
    Procedure _ComandoInserir2(AMachine: TatVirtualMachine);
    Procedure _ComandoGravar(AMachine: TatVirtualMachine);
    Procedure _SetString(AMachine: TatVirtualMachine);
    Procedure _SetInteger(AMachine: TatVirtualMachine);
    Procedure _SetFloat(AMachine: TatVirtualMachine);
    Procedure _StrutG(AMachine: TatVirtualMachine);
    Procedure _StrutdG(AMachine: TatVirtualMachine);
    Procedure _StrutGcm(AMachine: TatVirtualMachine);
    Procedure _StrutestG(AMachine: TatVirtualMachine);
    Procedure _StrutGSTD(AMachine: TatVirtualMachine);
    Procedure _StrutGOP(AMachine: TatVirtualMachine);
    Procedure _StrutGQ(AMachine: TatVirtualMachine);
//    Procedure LocDir(AMachine: TatVirtualMachine);
    Procedure _ProcGraf(AMachine: TatVirtualMachine);
    Procedure _ProcGraf2(AMachine: TatVirtualMachine);
    Procedure _ProcGrafL(AMachine: TatVirtualMachine);
    Procedure _SendMailG(AMachine: TatVirtualMachine);
    Procedure _SendMailidG(AMachine: TatVirtualMachine);

    Procedure _GeraDesp (AMachine: TatVirtualMachine);
    Procedure _calcular(AMachine: TatVirtualMachine);

    Procedure _TableEdit(AMachine: TatVirtualMachine);
    Procedure _Condicao(AMachine: TatVirtualMachine);
    Procedure  _NoRound(AMachine: TatVirtualMachine);

    Procedure _gLoadFile(AMachine: TatVirtualMachine);

    Procedure _gCreateFile(AMachine: TatVirtualMachine);

    Procedure _gSaveFile(AMachine: TatVirtualMachine);
    Procedure _gDeleteFile(AMachine: TatVirtualMachine);

    Procedure _runwkfg(AMachine: TatVirtualMachine);
    Procedure _ExecScriptG(AMachine: TatVirtualMachine);
    Procedure _GetTransfer(AMachine: TatVirtualMachine);
    Procedure _RestAPI(AMachine: TatVirtualMachine);



  public
      frmRel:TForm1;
      log:TStringList;
      erro:TStringList;
    secao:Integer;
    _ambiente,ip,ambiente,FormField,jobp,WebField:String;
     metodo:TSMClient;
     xls: TXlsFile;
     _restResult:String;


    str:TStringList;

    function GeraDS(comando,nome,conexao:String):TfdTable;
    function RGeraDS(comando,nome,conexao,Ambiente:String):TDataSet;

    function LocalSQL(Comando,ado:String):TDataSet;
    procedure uDataSets;
    Procedure ExecREL(codigo:String;Ambiente:String);


    Procedure CloseData(ado:String);
    Procedure setAmbiente(nome:String);


    function validaDOC(doc,tipo:String):Boolean;
  //  function calcular(valor1:String):Double;
    function existtab(tabela,banco:String):Boolean;
    function runwkf(nome,chave:String):String;

    function GetCubo(nome,cubo,filtro,r:String):string;
    function DataSetToJsonTxt(pDataSet: TDataSet): string;

    Function ProcREL(relatorio,layout,filtro,tabela,exporta:String):String;
    Function ProcRELN(relatorio,layout,filtro,tabela,exporta,nome:String):String;
    Procedure _ProcrelG(AMachine: TatVirtualMachine);
    Procedure _ProcrelnG(AMachine: TatVirtualMachine);

    function EchoString(Value: string): string;
    function GenerateID(aSequence,conexao: string): Integer;
    function GeraSQL(Comando,ado,conexao:String):Integer;
    function ESQL(Comando,ado,conexao,ambiente:String):Integer;


    function RestAPI(caminho,cubo:String):String;

    function Pesquisa(Comando,ado,conexao,ambiente:String):String;
    function traduzQuery(comando:String;con:TFdConnection):String;
    function ExecSQL(Comando,ado,conexao:String):Integer;
    Function GetLicenca:String;

    function GeraSQL2(Comando,ado,conexao:String):Integer;
//    function GeraJSON(Comando,ado,conexao:String):String;
    function ExecSQL2(Comando,ado,conexao:String):Integer;


    Procedure Terminate;

    Function ProcTES(codigo,emp,fil,uf,produto,tipo:String):Double;
    Function ProcTES2(codigo,emp,fil,produto,tipo,cf,cod,loja:String):Double;

    //Funcao para excutar os Scripts
    function segun(emp,fil,prod:String;Qtd:Double):Double;
    function iif(comparacao:Variant;op1:Variant;op2:Variant):Variant;
    function Strut(prod,emp,filial,fator,data:String):Double;
    function StrutD(prod,emp,filial,fator,data:String):Double;
    function StrutCM(prod,emp,filial,fator,data:String):Double;
    function StrutEst(prod,emp,filial,fator,data:String):Double;
    function StrutSTD(prod,emp,filial,fator,data:String):Double;
    function StrutOP(prod,emp,filial,fator,data:String):Double;
    function StrutQ(prod,emp,filial,fator,data:String):Double;
    function ExecScript(scr,obj:String):String;
    function RExecScript(busca:String):String;
    function RPainel(id:Integer;ambiente:String):TJSONObject;

    function GetTable(busca:String):TJSONObject;

    function ExecScriptRel(scr,obj,filtro:String):String;

    function AsString(tabela,campo:String):String;
    function AsInteger(tabela,campo:String):Integer;
    function AsFloat(tabela,campo:String):Double;
    //Funcoes de movimentacao
    Function TableEOF(tabela:String):Boolean;
    Function TableBOF(tabela:String):Boolean;
    Function MoveNext(Tabela:String):Double;
    Function MovePrior(Tabela:String):Double;
    Function MoveLast(Tabela:String):Double;
    Function MoveFirst(Tabela:String):Double;
    Function RecNO(Tabela:String):integer;
    Function RecOrdCount(Tabela:String):integer;
    Function ConvTag(texto:String;de,para:Char):String;
    Function FiltroSQL(datas,filtro:String):Integer;
    Procedure RemoveFiltro(datas:String);
    Function SendMail(conta,para,assunto,msg,anexo:String):Boolean;


    Function SendMailID(conta,para,assunto,msg,anexo:String;ID:Integer):Boolean;

    Function ProcessaFP(codigo,datas,emp,fili,dataset:String;valor:Double):TJvMemoryData;
    Function LoadFile(arquivo,nome:String):String;
    Function CreateFile(nome:String):String;
    Function SaveFile(arquivo,nome:String):String;
    Function deleteF(nome:String):String;
    Function Form(valor:String):String;
    Procedure NewCube(valor1,valor2:String);
    Function MaxRECNO(valor1,valor2,valor3,valor4,valor5:String):Integer;
    Procedure ComandoInserir(valor1,valor2,valor3:String);
    Procedure ComandoInserir2(valor1:String);
    Procedure ComandoGravar(valor1:String);

    Procedure SetString(valor1,valor2,valor3:String);
    Procedure SetInteger(valor1,valor2:String;valor3:Integer);
    Procedure SetFloat(valor1,valor2:String;valor3:Double);
    Function Divide(valor1,valor2:Double):Double;
    Procedure TableEdit(valor1:String);

    { Public declarations }
    function ReverseString(Value: string): string;
    procedure addField(tipo,campo,tabela,tamanho:String);
    Procedure CreateTMP(valor1:String);
    Procedure OPenTMP(valor1:String);
    Procedure DropTMP(param:String);
    Function WebFields:String;
    Function Locate(valor1,valor2,valor3:String):Integer;
    Function Potencia(Valor1,valor2:Double):Double;
    Function NoRound(Valor1:Double;valor2:Integer):Double;
    function Execute(fonte:String;sec:Integer):String;

    procedure getWorkPend(usuario:String);
    procedure getWorkForm(chave:String);

    Function getTables(conexao:String):String;

    Function GetTransfer(TABELA,FILTRO,TIPO,CURSOR:String):Integer;


    //Excel functions

    Procedure AbrirExcel(caminho,guia:String);
    Procedure TextoToExcel(celula,valor:String);
    Procedure NumeroToExcel(celula,valor:String);
    Function ExcelToNumero(celula:String;casas:Integer):Double;
    Procedure ExcelRecalc;
    Function ExcelToTexto(celula:String):String;
    Function ExcelToData(celula:String):TDate;
    Function ExcelVazio(celula:String):Boolean;
    Procedure FecharExcel;


    Procedure AbrirExcelG(AMachine: TatVirtualMachine);
    Procedure FecharExcelG(AMachine: TatVirtualMachine);

    Procedure TextoToExcelG(AMachine: TatVirtualMachine);
    Procedure NumeroToExcelG(AMachine: TatVirtualMachine);
    Procedure ExcelToNumeroG(AMachine: TatVirtualMachine);
    Procedure ExcelToTextoG(AMachine: TatVirtualMachine);
    Procedure ExcelToDataG(AMachine: TatVirtualMachine);
    Procedure ExcelVazioG(AMachine: TatVirtualMachine);
    Procedure ExcelRecalcG(AMachine: TatVirtualMachine);
    Procedure prep(DAtaSet: TDataSet);
    Procedure CriptoImage(dados:String);

    //JSon Functions
    Procedure rsetAmbiente(nome,BANCO:String);
    function GeraJSON(busca:String): TJsonObject ;
    Function RSendmail(busca:String): TJsonObject ;
    Function RCrud(tipo,dados:String): TJsonObject ;
    Function TJson(scr:String):String;
    Function GetID:String;


   // Procedure GeraJSONG(AMachine: TatVirtualMachine);

    //Excel Functions

    { Public declarations }
  end;

implementation

{$R *.dfm}

uses System.StrUtils;


Procedure TSM.CriptoImage;//(arquivo,chave: string);
var ImageScrollBox: TImageScrollBox;
    Transform : TEncryptTransform;
    FUndoGraphic : TDibGraphic;
    arquivo,salvar,chave:String;
    db:TJSONObject;

begin
   try
    FUndoGraphic := TDibGraphic.Create;
    db:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(dados), 0)  as TJSONObject;
    arquivo := db.GetValue('arquivo').Value;
    salvar := db.GetValue('salvar').Value;

    chave:= db.GetValue('chave').Value;

    ImageScrollBox:= TImageScrollBox.Create(self);
    ImageScrollBox.LoadFromFile(arquivo,0);

    FUndoGraphic.Assign(ImageScrollBox.Graphic);
    Transform := TEncryptTransform.Create;
    try
        Transform.EncryptionKey := StrToInt64(chave);
        Transform.Bidimensional := False;
        Transform.ApplyOnDest(FUndoGraphic, ImageScrollBox.Graphic);
    finally
        Transform.Free;
    end;

    ImageScrollBox.Redraw(True);
    ImageScrollBox.SaveToFile(salvar);
    ImageScrollBox.Free;
    FUndoGraphic.Free;
   Except
    on e:exception do
      Begin
        erro:=TStringList.Create;
        if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' Erro Imagem- '+e.Message);
        erro.SavetoFile('c:\GoodSales\core\erros.txt');

        erro.Free;

      End;

   end;
end;


Function TSM.TJson;//(scr: string)
begin
  scr:=stringReplace(scr,'{percent}','%',[rfReplaceAll]);
  scr:=stringReplace(scr,'{rbar}','/',[rfReplaceAll]);
  scr:=stringReplace(scr,'{lbar}','\',[rfReplaceAll]);
  Result:=scr;
end;


Function TSM.GetID;
var Uid: TGuid;
begin
  CreateGuid(Uid);
  result:=Uid.ToString;
end;

Procedure TSM.prep(DAtaSet: TDataSet);
var i:Integer;
begin
i:=0;
  while i< DataSet.FieldCount do
 Begin
 TRY
   if (DataSet.Fields[i].IsNull) or (DataSet.Fields[i].AsString='') then
    Begin

      if (DataSet.Fields[i].DataType = ftSmallint) or (DataSet.Fields[i].DataType =  ftInteger) or (DataSet.Fields[i].DataType =  ftWord) or (DataSet.Fields[i].DataType =  ftFloat) or (DataSet.Fields[i].DataType =   ftCurrency) or (DataSet.Fields[i].DataType =  ftDate)
         or (DataSet.Fields[i].DataType =   ftTime) or (DataSet.Fields[i].DataType = ftDateTime) or (DataSet.Fields[i].DataType =  ftLargeint)
         or (DataSet.Fields[i].DataType =   ftTimeStamp) or (DataSet.Fields[i].DataType =  ftFMTBcd) or (DataSet.Fields[i].DataType =  ftLongWord)
         or (DataSet.Fields[i].DataType =   ftShortint) or (DataSet.Fields[i].DataType =   ftByte) or (DataSet.Fields[i].DataType =   ftExtended)
         or (DataSet.Fields[i].DataType =   ftConnection) or (DataSet.Fields[i].DataType =   ftParams) or (DataSet.Fields[i].DataType =   ftStream)
         or (DataSet.Fields[i].DataType =  ftSingle) then
         DataSet.Fields[i].value:=0
      else
      if DataSet.Fields[i].DataType <> ftAutoInc then
         DataSet.Fields[i].value:='';
    End;
   EXCEPT
    End;
     try
     {if (DataSet.Fields[i].DataType = ftString) then
         DataSet.Fields[i].AsString:=uppercase(DataSet.Fields[i].AsString);}
     Except

     End;
    i:=i+1;
 End;
end;




//Rest Functions
function TSM.RCrud;//(tipo: string; dados: string)
var db:TJSONObject;
    cp:TJSONObject;
    i:Integer;
    d:String;
 Begin


  db:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(dados), 0)  as TJSONObject;

  d:=TJson(db.Pairs[4].ToString);
  d:=copy(d,pos('{',d),pos('}',d));
  cp:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(d), 0)  as TJSONObject;

  RsetAmbiente(db.GetValue('ambiente').Value,db.GetValue('conexao').Value);

  if tipo='C' then
    Begin
      GeraSQL2('Select * from '+db.GetValue('tabela').Value+' where 1=2','cubo',db.GetValue('conexao').Value);

      With TFDQuery(self.FindComponent('cubo')) do
        Begin
           i:=0;
           append;
           prep(TFDQuery(self.FindComponent('cubo')));

           while i < cp.Size do
            Begin
              try

                if (Fields[i].DataType = ftSmallint) or (Fields[i].DataType =  ftInteger) or (Fields[i].DataType =  ftWord)
                   or (Fields[i].DataType =   ftFloat) or (Fields[i].DataType =   ftCurrency)
                   or (Fields[i].DataType =   ftLargeint)
                   or (Fields[i].DataType =  ftFMTBcd)
                   or (Fields[i].DataType =   ftLongWord)  or (Fields[i].DataType =   ftShortint)
                   or (Fields[i].DataType =   ftByte) or (Fields[i].DataType =   ftExtended)
                   or (Fields[i].DataType =   ftConnection) or (Fields[i].DataType =   ftParams)
                   or (Fields[i].DataType =   ftStream)
                   or (Fields[i].DataType =   ftSingle) then
                      FieldByname(cp.Pairs[i].JsonString.Value).Value:=cp.GetValue(cp.Pairs[i].JsonString.Value).Value.ToDouble()
                   else
                       if
                            (Fields[i].DataType =   ftDate)
                         or (Fields[i].DataType =   ftTime) or (Fields[i].DataType = ftDateTime)
                         or (Fields[i].DataType =   ftTimeStamp) then
                          FieldByname(cp.Pairs[i].JsonString.Value).Value:=StrToDate(cp.GetValue(cp.Pairs[i].JsonString.Value).Value)
                              else
                                  FieldByname(cp.Pairs[i].JsonString.Value).Value:=cp.GetValue(cp.Pairs[i].JsonString.Value).Value;

              Except

              end;
              i:=i+1;
            End;

            post;
            result:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes('ok'), 0)  as TJSONObject;
        End;
    eND
  eLSE
  if tipo='U' then
    Begin
      GeraSQL2('Select * from '+db.GetValue('tabela').Value+' where '+db.GetValue('filtro').Value,'cubo',db.GetValue('conexao').Value);


      With TFDQuery(self.FindComponent('cubo')) do
        Begin
           if recordCount > 0 then
           Begin

           i:=0;
           Edit;

           while i < cp.Size do
            Begin
              try

                if (Fields[i].DataType = ftSmallint) or (Fields[i].DataType =  ftInteger) or (Fields[i].DataType =  ftWord)
                   or (Fields[i].DataType =   ftFloat) or (Fields[i].DataType =   ftCurrency)
                   or (Fields[i].DataType =   ftLargeint)
                   or (Fields[i].DataType =  ftFMTBcd)
                   or (Fields[i].DataType =   ftLongWord)  or (Fields[i].DataType =   ftShortint)
                   or (Fields[i].DataType =   ftByte) or (Fields[i].DataType =   ftExtended)
                   or (Fields[i].DataType =   ftConnection) or (Fields[i].DataType =   ftParams)
                   or (Fields[i].DataType =   ftStream)
                   or (Fields[i].DataType =   ftSingle) then
                      FieldByname(cp.Pairs[i].JsonString.Value).Value:=cp.GetValue(cp.Pairs[i].JsonString.Value).Value.ToDouble()
                   else
                       if
                            (Fields[i].DataType =   ftDate)
                         or (Fields[i].DataType =   ftTime) or (Fields[i].DataType = ftDateTime)
                         or (Fields[i].DataType =   ftTimeStamp) then
                          FieldByname(cp.Pairs[i].JsonString.Value).Value:=StrToDate(cp.GetValue(cp.Pairs[i].JsonString.Value).Value)
                              else
                                  FieldByname(cp.Pairs[i].JsonString.Value).Value:=cp.GetValue(cp.Pairs[i].JsonString.Value).Value;

              Except

              end;
              i:=i+1;
            End;

            post;
            result:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes('ok'), 0)  as TJSONObject;;
           End
           else
               result:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes('Sem Dados'), 0)  as TJSONObject;;
        End;



    End


  eLSE
  if tipo='D' then
    Begin
      GeraSQL2('Select * from '+db.GetValue('tabela').Value+' where '+db.GetValue('filtro').Value,'cubo',db.GetValue('conexao').Value);


      With TFDQuery(self.FindComponent('cubo')) do
        Begin
           if recordCount > 0 then
           Begin
               delete;
               result:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes('Sem Dados'), 0)  as TJSONObject;;
           End;
        End;



    End;



 // i:=;

end;

function TSM.GeraJSON;//(Comando: string; ado: string; conexao: string):String;
var comando,ado,conexao,ambiente:String;
    dados:TJSONObject;
begin
  dados:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(busca), 0)  as TJSONObject;
  conexao:=dados.GetValue('conexao').Value;
  comando:=dados.GetValue('comando').Value;
  ambiente:=dados.GetValue('ambiente').Value;
  ado:=dados.GetValue('ado').Value;

  RsetAmbiente(ambiente,conexao);
  geraSQL2(comando,ado,conexao);
  if Self.FindComponent(ado) <> nil then
    Begin
     result:=TDataSet(Self.FindComponent(ado)).ToJsonObject(ado);
    End;
  // else
//   result:=nil;
end;

function TSM.RSendmail;//(busca: string)
var amb,conta,para,assunto,msg,anexo:String;
    dados:TJSONObject;
begin

  dados:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(busca), 0)  as TJSONObject;
  amb:=dados.GetValue('ambiente').Value;
  conta:=dados.GetValue('conta').Value;
  para:=dados.GetValue('para').Value;
  assunto:=dados.GetValue('assunto').Value;
  msg:=dados.GetValue('msg').Value;
  anexo:=dados.GetValue('anexo').Value;
  RsetAmbiente(amb,'DEFS');

  SendMail(conta,para,assunto,msg,anexo);
end;



//Rest Functions

Function TSM.GetTable;//(tabela: erroneous type; conexao: erroneous type; ambiente: string)
var
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  LJsonValue : TJSONValue;
  LItem     : TJSONValue;
  i:Integer;
  dados:TJSonObject;
  conexao,amb,filtro,tabela,tipo,rfiltro:String;



  procedure js(nome,cubo:String);
  Begin

   Writer.WritePropertyName(nome);
   Writer.WriteStartArray;
   MoveFirst(cubo);
  //Filtros
      while not TableEOF(cubo) do
       Begin
          i:=0;
          Writer.WriteStartObject;

          with TDataSet(Self.FindComponent(cubo)) do
           Begin
              while i < FieldCount do
                Begin

                  Writer.WritePropertyName(Fields[i].FieldName);

                  if  (Fields[i].DataType = ftSmallint)
                   or (Fields[i].DataType = ftInteger)
                   or (Fields[i].DataType = ftWord)
                   or (Fields[i].DataType = ftFloat)
                   or (Fields[i].DataType = ftCurrency)
                   or (Fields[i].DataType = ftLargeint)
                   or (Fields[i].DataType = ftFMTBcd)
                   or (Fields[i].DataType = ftLongWord)
                   or (Fields[i].DataType = ftShortint)
                   or (Fields[i].DataType = ftByte)
                   or (Fields[i].DataType = ftExtended)
                   or (Fields[i].DataType = ftConnection)
                   or (Fields[i].DataType = ftParams)
                   or (Fields[i].DataType = ftStream)
                   or (Fields[i].DataType = ftSingle) then

                  Writer.WriteValue(Fields[i].AsFloat)
                  else
                  if   (Fields[i].DataType =  ftDate)
                    or (Fields[i].DataType = ftDateTime)
                    or (Fields[i].DataType =   ftTimeStamp) or (Fields[i].DataType =   ftTime) then

                  Writer.WriteValue(Fields[i].AsDateTime)
                  else

                    Writer.WriteValue(Fields[i].AsString);

                  i:=i+1;
                End;



           End;


          Writer.WriteEndObject;
        MoveNext(cubo);
       End;

   Writer.WriteEndArray;

  End;


begin

  dados:=TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(busca), 0)  as TJSONObject;
  tabela:=dados.GetValue('tabela').Value;
  amb:=dados.GetValue('ambiente').Value;
  conexao:=dados.GetValue('conexao').Value;
  filtro:=dados.GetValue('filtro').Value;
  tipo:=dados.GetValue('tipo').Value;
  SetAmbiente(amb);

  filtro:=stringReplace(filtro,'{percent}','%',[rfReplaceAll]);
  filtro:=stringReplace(filtro,'{rbar}','/',[rfReplaceAll]);
  filtro:=stringReplace(filtro,'{lbar}','\',[rfReplaceAll]);

  GeraSQL2('Select * from TABELA Where TABELA = "'+tabela+'" LIMIT 1','TABELA','DEFS');


  GeraSQL2('Select * from FORMULARIO Where TABELA="'+tabela+'" ','FORMULARIO','DEFS');
  GeraSQL2('Select * from '+tabela+' Where '+filtro,'_'+tabela ,CONEXAO);
  GeraSQL2('Select * from TABGUIA Where TABELA="'+tabela+'"','GUIAS','DEFS');
  GeraSQL2('Select * from SCRIPTS Where TABELA="'+tabela+'"','SCRIPTS','DEFS');


  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.Indented;
  Writer.WriteStartObject;

  js(tabELA,'_'+tabela);

  if tipo = 'F' then
    Begin
      GeraSQL2('Select * from RELAC WHERE TABELAPAI = "'+AsString('TABELA','TABELA')+'"','RELAC','DEFS');
      While not TableEOF('RELAC') do
        Begin
           rfiltro:='';
           geraSQL2('Select * from RELACCAMPO Where TABELAPAI="'+AsString('RELAC','TABELAPAI')+'" '+
                    ' and TABELAFILHO ="'+AsString('RELAC','TABELAFILHO')+'" ','RELACC','DEFS');

           while not TableEOF('RELACC') do
            Begin
              rfiltro:=rfiltro+' and '+AsString('RELACC','CAMPOFILHO')+' = "'+AsString('_'+tabela,AsString('RELACC','CAMPOPAI'))+'"';
              MoveNext('RELACC');
            End;

           GeraSQL2('Select top 1 * from TABELA Where TABELA = "'+tabela+'"','TABELAF','DEFS');

           GeraSQL2('Select * from '+AsString('RELAC','TABELAFILHO')+' WHERE 1=1 '+rfiltro,'_'+AsString('RELAC','TABELAFILHO'),AsString('TABELAF','ORIGEMT'));
           js(AsString('RELAC','TABELAFIlHO'),'_'+AsString('RELAC','TABELAFIlHO'));
           MoveNExt('RELAC');
        End;
        End;

  js('TABELA','TABELA');
  js('FORMULARIO','FORMULARIO');
  js('GUIAS','GUIAS');

  Writer.WriteEndObject;
   try
    result:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(StringWriter.ToString), 0)  as TJSONObject;
   Except
   end;

end;


Procedure TSM.Excelrecalc;
Begin
    xls.recalc(true);
End;

Procedure TSM.Excelrecalcg;
Begin
    With AMachine do
     Begin
        xls.recalc(true);
     End;
End;

Function TSM.ExcelToData;//(celula: string)
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
    d:String;
begin
  xf:=-1;
  a := TCellAddress.Create(celula);
  cell:= xls.GetCellValue(a.Row, a.Col, XF);


 if not cell.IsEmpty then
  BEgin
  try
  if cell.IsFormula then
    Begin
        d:=DateToStr(cell.AsFormula.FormulaResult.AsNumber)
    End
      else
        Begin
          d:=DateToStr(cell.AsNumber);
        End;

        result:=StrToDate(d);
  Except
  on e:Exception do
    Begin
      result:=0;
      //showmessage(e.Message);
      //form1.logs.Lines.Add('ExcelToData '+celula+' - '+e.Message);
      //form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
    End;
 END;
  End
   else result:=0;
end;

Function TSM.ExcelVazio;
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
begin


  xf:=-1;
  a := TCellAddress.Create(celula);
  cell:= xls.GetCellValue(a.Row, a.Col, XF);


  result:=cell.IsEmpty;

End;


Procedure TSM.ExcelToDataG(AMachine: TatVirtualMachine);
begin

  With AMachine do
     Begin
        ReturnOutputArg(ExcelToData(GetInputArgAsString(0)));
     End;
end;

Procedure TSM.ExcelVazioG(AMachine: TatVirtualMachine);
begin

  With AMachine do
     Begin
        ReturnOutputArg(ExcelVazio(GetInputArgAsString(0)));
     End;
end;


Procedure TSM.TextoToExcel(celula: string; valor: string);
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
begin
 try
  xf:=-1;
  a := TCellAddress.Create(celula);
  xls.SetCellValue(a.Row, a.Col, valor);

 Except
  on e:Exception do
    Begin
      //form1.logs.Lines.Add( xls.ActiveSheetByName+' - '+celula+' '+e.Message);
      //form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
    End;
 END;

 end;

Procedure TSM.TextoToExcelG(AMachine: TatVirtualMachine);
begin
  With AMachine do
     Begin
        TextoToExcel(GetInputArgAsString(0),GetInputArgAsString(1));
     End;
end;


Procedure TSM.NumeroToExcel;//(celula: string; valor: string);
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
begin
try
  xf:=-1;
  a := TCellAddress.Create(celula);
  xls.SetCellValue(a.Row, a.Col, StrTOFloat(valor));

 Except
  on e:Exception do
    Begin
      //form1.logs.Lines.Add( xls.ActiveSheetByName+' - '+celula+' '+e.Message);
      //form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');

    End;
 END;

end;

Procedure TSM.NumeroToExcelG(AMachine: TatVirtualMachine);
begin
  With AMachine do
     Begin
      try
        NumeroToExcel(GetInputArgAsString(0),GetInputArgAsString(1));

       Except
          on e:Exception do
            Begin
              // form1.logs.Lines.Add(e.Message);
              // form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
            End;
         END;
      End;
end;


Function TSM.ExcelToNumero;//(celula: string)
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
begin


  xf:=-1;
  a := TCellAddress.Create(celula);
  cell:= xls.GetCellValue(a.Row, a.Col, XF);


  try
  if cell.IsFormula then
    Begin
        result:=RoundTo(cell.AsFormula.FormulaResult.AsNumber ,casas*(-1));
    End
      else
        Begin
          result:=RoundTo(cell.AsNumber,casas*(-1));
        End;
  Except
  on e:Exception do
    Begin
      result:=0;
      // form1.logs.Lines.Add( xls.ActiveSheetByName+' - '+celula+' '+e.Message);
      // form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
    End;
 END;
end;

Procedure TSM.ExcelToNumeroG(AMachine: TatVirtualMachine);
begin

  With AMachine do
     Begin
        ReturnOutputArg(ExcelToNumero(GetInputArgAsString(0),GetInputArgAsInteger(1)));
     End;
end;


Function TSM.ExcelToTexto;//(celula: string)
var cell: TCellValue;
    a: TCellAddress;
    XF:Integer;
begin
 try
  xf:=-1;
  a := TCellAddress.Create(celula);
  cell:= xls.GetCellValue(a.Row, a.Col, XF);

  if cell.IsFormula then
    result:=cell.AsFormula.FormulaResult.AsString
      else
        result:=cell.AsString;
  Except
  on e:Exception do
    Begin
      // form1.logs.Lines.Add( xls.ActiveSheetByName+' - '+celula+' '+e.Message);
      // form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');

    End;
 END;

 end;

Procedure TSM.ExcelToTextoG(AMachine: TatVirtualMachine);
begin
  With AMachine do
     Begin
        ReturnOutputArg(ExcelToTexto(GetInputArgAsString(0)));
     End;
end;


procedure TSM.AbrirExcel;
begin
 TRY
  xls := TXlsFile.Create(caminho);
  xls.VirtualMode:=true;
  xls.ActiveSheetByName := guia;
 Except
  on e:Exception do
    Begin
      // form1.logs.Lines.Add(e.Message);
      // form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
    End;
 END;
end;

procedure TSM.FecharExcel;
begin
 TRY
  xls.FreeInstance;
  xls.Free;

 Except
  on e:Exception do
    Begin
      // form1.logs.Lines.Add(e.Message);
      // form1.logs.Lines.SaveToFile('c:\goodsales\core\erroweb.txt');
    End;
 END;
end;



Procedure TSM.AbrirExcelG(AMachine: TatVirtualMachine);
begin
  With AMachine do
     Begin
        AbrirExcel(GetInputArgAsString(0),GetInputArgAsString(1));
     End;
end;


Procedure TSM.FecharExcelG(AMachine: TatVirtualMachine);
begin
  With AMachine do
     Begin
        FecharExcel;
     End;
end;


Function TSM.RestAPI;//(caminho: string);
var db:TFDMemTable;
    pr:TDataSetProvider;
begin
  result:='';
  restClient2.BaseURL:=caminho;

  if self.FindComponent(cubo) <> nil then
     self.FindComponent(cubo).Free;

  if self.FindComponent('pr_'+cubo) <> nil then
     self.FindComponent('pr_'+cubo).Free;


  db:=TFDMemTable.Create(Self);
  db.Name:=cubo;

  pr:=TDataSetProvider.Create(SELF);
  pr.ResolveToDataSet:=true;
  pr.Options:=[poPropogateChanges];
  pr.DataSet:=db;
  pr.Exported:=true;
  pr.Name:='pr_'+cubo;

  RESTResponseDataSetAdapter1.Dataset:=db;

  try
    RESTRequest1.Execute;
    RESTResponseDataSetAdapter1.Active := True;
  Except
    on e:Exception do
      Begin
        result:=e.Message;
      End;
  end;

 self.Updated;
end;

procedure TSM._GetTransfer(AMachine: TatVirtualMachine);
begin

  With AMachine do
    ReturnOutputArg(GetTransfer(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2), GetInputArgAsString(3)));

//    SM(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

end;


function TSM.GetTransfer;
var t:TFDTable;
    dt,ds:TMemoryStream;
    pr:TDataSetProvider;
begin
  TRY
     dt := TMemoryStream.Create;
     ds := TMemoryStream.Create;

     __transfer.Close;
     __transfer.Connection:=TFDConnection(self.FindComponent('D'));
     __transfer.SQL.Text:='Select * from TRANSFER Where TABELA='+#39+tabela+#39+' '+filtro;
     __transfer.Open();

     __TRANSFERCONTEUDO.SaveToStream(dt);

     if cursor='' then
        cursor:=tabela;

     if self.FindComponent('_'+cursor) <> nil then
      Begin
        TFDQuery(self.FindComponent('_'+cursor)).Close;
        self.FindComponent('_'+cursor).Free;
      End;

      compress.DecompressStream(dt,ds,100);

     T:=TFDTable.Create(self);
     T.Name:='_'+cursor;
     T.TableName:=cursor;

     if tipo = 'XML' then
       T.LoadFromStream(dt,sfXML);

     if tipo = 'JSON' then
       T.LoadFromStream(dt,sfJSON);

       result:=t.RecordCount;


           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=t;
           pr.Exported:=true;
           pr.Name:=cursor;

      self.Updated;

  eXCEPT
      result:=-1;

  END;
end;

function TSM.traduzQuery;//(comando: string; con: TFDConnection)
var
  S, n: String;
  i: Integer;
begin

  S := comando;


  try
    if (upperCase(con.Params.DriverID) = 'MYSQL') or
      (upperCase(con.Params.DriverID) = 'PG') or
      (upperCase(con.Params.DriverID) = 'SQLITE') then
    Begin

      s:=StringReplace(s,'isnull','ifnull',[rfReplaceAll,rfIgnoreCase]);

      if pos(' TOP ', upperCase(S)) > 0 then
      Begin
        S := copy(S, 1, pos(' TOP ', upperCase(comando)) - 1);

        i := pos(' TOP ', upperCase(comando)) + 3;

        while trim(copy(comando, i, 1)) <> '' do
        Begin
          i := i + 1;
        End;

        while trim(copy(comando, i, 1)) = '' do
        Begin
          i := i + 1;
        End;

        while trim(copy(comando, i, 1)) <> '' do
        Begin
          n := n + trim(copy(comando, i, 1));
          i := i + 1;
        End;

        S := S + copy(comando, i, length(comando)) + ' limit ' + n;

      End;
    End;
  Except

  end;
  result := S;
end;

procedure ExecNewProcess(ProgramName : String; Wait: Boolean);
var
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
  str2:TStringList;

begin
    { fill with known state }
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  StartInfo.wShowWindow := SW_HIDE;

  CreateOK := CreateProcess(nil, PChar(ProgramName), nil, nil,False,
              CREATE_NEW_PROCESS_GROUP+NORMAL_PRIORITY_CLASS,
              nil, nil, StartInfo, ProcInfo);
    { check to see if successful }
  if CreateOK then
    begin
        //may or may not be needed. Usually wait for child processes
      if Wait then
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end
  else
    begin
//      ShowMessage('Unable to run '+ProgramName);
     end;
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;


Procedure TSM.ExecREL(codigo: String; Ambiente: string);
begin
    ExecNewProcess(trim('WorkRel.exe '+Ambiente+' '+Codigo),False);
end;

Procedure TSM.CloseData(ado: string);
begin
   if Self.FindComponent('pr_'+ado) <> nil  then
   Begin
       TFDQuery(Self.FindComponent('pr_'+ado)).Close;
       TFDQuery(Self.FindComponent('pr_'+ado)).Free;
   End;
end;

procedure TSM.clSmtp1VerifyServer(Sender: TObject; ACertificate: TclCertificate;
  const AStatusText: string; AStatusCode: Integer; var AVerified: Boolean);
var newInstance: TclCertificate;
begin
if not AVerified then
   begin
     Try
      newInstance := clCertificateStore1.Items.AddFrom(ACertificate);
      clCertificateStore1.StoreName := 'CA';
      clCertificateStore1.Install(newInstance);
     Except

     End;
      AVerified := True;
   end;

end;

Function TSM.GetTables;
 var list:TStringList;
 Begin
    list:=TStringList.Create;

    TFDConnection(self.FindComponent(conexao)).GetTableNames('','','', list,
  [osMy, osSystem, osOther], [tkTable, tkView]);

  result:=list.Text;


 End;

function StringToComponent(Value: string): TComponent;
 var
   StrStream:TStringStream;
   BinStream: TMemoryStream;
 begin
   StrStream := TStringStream.Create(Value);
   try
     BinStream := TMemoryStream.Create;
     try
       ObjectTextToBinary(StrStream, BinStream);
       BinStream.Seek(0, soFromBeginning);
       Result := BinStream.ReadComponent(nil);
     finally
       BinStream.Free;
     end;
   finally
     StrStream.Free;
   end;
 end;

procedure TSM._LocalSQL(AMachine: TatVirtualMachine);
begin
  With AMachine do
    ReturnOutputArg(ObjectToVar(LocalSQL(GetInputArgAsString(0), GetInputArgAsString(1))) );

   { if newScr <> nil then
       newScr.AddComponents(self);}
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;
end;


function TSM.LocalSQL;//()
var sql2:TFDQUERY;
    tempo:Real;
    parte:String;
Begin

//FThread := TThreadDataSet.Create(False);

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;


  tempo:=time;


  Begin

  IF Self.FindComponent(ado) <> NIL THEN
   Begin
     TFDQUERY(Self.FindComponent(ado)).Close;
     TFDQUERY(Self.FindComponent(ado)).Free;
   End;

  if Self.FindComponent(ado) = nil  then
    Begin
      try

      sql2:=TFDQUERY.Create(Self);
      sql2.UpdateOptions.CheckRequired:=false;
      sql2.UpdateOptions.CheckReadOnly:=false;
      sql2.UpdateOptions.CheckUpdatable:=false;
      sql2.UpdateOptions.FastUpdates:=true;


      sql2.OnPostError:=ADQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;

      sql2.FetchOptions.Mode:=fmAll;
//      sql2.FetchOptions.RowsetSize:=50000;

      sql2.Name := ado;
      sql2.Connection := FDConnection1;

      sql2.Close;
      sql2.SQL.Text := comando;
      sql2.LocalSQL:=FDLocal;
      sql2.open;
      result:=sql2;



      eXCEPT
      On E:Exception do
      Begin
       ShowMessage(ado+' - '+e.Message+' - '+comando);
        result:=nil;
        try
         // fazlog(E.Message+' - '+comando);
        Except

        end;
       End;
      eND;
    End;

  End;

End;



procedure TSM._uDataSets(AMachine: TatVirtualMachine);
var i,i2:Integer;
Begin
           FDConnection1.Close;
           FDLocal.Active:=false;
           FDLocal.DataSets.Clear;
           FDConnection1.OPen;

           i:=0;
           i2:=0;

           while i < Self.ComponentCount do
            Begin
              if (Self.Components[i].ClassType = TFDQuery) or
                 (Self.Components[i].ClassType = TFDMemTable) or
                 (Self.Components[i].ClassType = TJvMemoryData)
                then
                  try

                   if TDataSet(Self.Components[i]).Active then
                   Begin
                    FDLocal.DataSets.Remove(TDataSet(Self.Components[i]));

                    FDLocal.DataSets.Add(TDataSet(Self.Components[i]));
                    FDLocal.DataSets[i2].Name:=TDataSet(Self.Components[i]).Name;
                    i2:=i2+1;
                   End;

                  except
                  on e:Exception do
                   Begin
                     //ShowMessage(e.Message);
                   End;
                  end;
                  i:=i+1;
             End;
    FDLocal.Active:=true;

 End;

procedure TSM.uDataSets;//(AMachine: TatVirtualMachine);
var i,i2:Integer;
Begin
           FDConnection1.Close;
           FDLocal.Active:=false;
           FDLocal.DataSets.Clear;
           FDConnection1.OPen;

           i:=0;
           i2:=0;

           while i < Self.ComponentCount do
            Begin
              if (Self.Components[i].ClassType = TFDQuery) or (Self.Components[i].ClassType = TFDQuery) or
                 (Self.Components[i].ClassType = TFDMemTable) or
                 (Self.Components[i].ClassType = TJvMemoryData)
                then
                  try

                   if TDataSet(Self.Components[i]).Active then
                   Begin
                    FDLocal.DataSets.Remove(TDataSet(Self.Components[i]));

                    FDLocal.DataSets.Add(TDataSet(Self.Components[i]));

                    if copy(TDataSet(Self.Components[i]).Name,1,3) = 'pr_' then
                      FDLocal.DataSets[i2].Name:=trim(copy(TDataSet(Self.Components[i]).Name,4,1000))
                    else
                      FDLocal.DataSets[i2].Name:=TDataSet(Self.Components[i]).Name;
                    i2:=i2+1;
                   End;

                  except
                  on e:Exception do
                   Begin
                     //ShowMessage(e.Message);
                   End;
                  end;
                  i:=i+1;
             End;
    FDLocal.Active:=true;

 End;

Procedure TSM._fimmes(AMachine:TatVirtualMachine);
var mes,ano,resto,result:Integer;
Begin

With AMachine do
Begin
  mes:=GetInputArgAsInteger(0);
  ano:=GetInputArgAsInteger(1);
End;


 if mes = 1 then
    result:=31;

 if mes = 2 then
   Begin
    resto:=(ano mod 4);
    if resto > 0 then
     result:=28
    else
     result:=29;
   End;

   if mes = 3 then
     result:=31;

   if mes = 4 then
     result:=30;

   if mes = 5 then
     result:=31;

   if mes = 6 then
     result:=30;

   if mes = 7 then
     result:=31;

   if mes = 8 then
     result:=31;

   if mes = 9 then
     result:=30;

   if mes = 10 then
     result:=31;

   if mes = 11 then
     result:=30;

   if mes = 12 then
     result:=31;
AMachine.ReturnOutputArg(result);
End;


procedure TSM.getWorkForm(chave: string);
var tarefa:TTaskInstance;
    i:Integer;
    WorkIns: TWorkflowInstance;
    WorkflowVar:TWorkFlowVariable;
    st:TStringList;
begin
   geraSQL('select  * from wstaskinstance where ID='+#39+chave+#39,'wk','D');
   tarefa:=TTaskInstance.Create(self);
   tarefa:=TTaskInstance(StringToComponent(AsString('pr_wk','task')));
   WorkIns:=WorkflowStudio1.WorkflowManager.FindWorkflowInstanceByKey(AsString('pr_wk','workflowinstancekey'));



   if wkforms.Active then
      wkforms.Close;

   i:=0;
        wkforms.Open;
        st:=TStringList.Create;
        st.Clear;
        while i <= tarefa.TaskDef.StatusCount-1 do
        Begin
         st.Add(tarefa.TaskDef.StatusName[i]);
         i:=i+1;
        End;

  i:=0;
   while i < tarefa.TaskDef.Fields.Count do
    Begin
      WorkflowVar:=WorkIns.Diagram.Variables.FindByName(tarefa.TaskDef.Fields[i].WorkflowVarName);
      wkforms.Append;
      wkformsNOME.AsString:=tarefa.TaskDef.Fields[i].WorkflowVarName;
      wkformsTITULO.AsString:=tarefa.TaskDef.Fields[i].Caption;
      wkformsVALOR.AsString:=WorkflowVar.Value;
      wkformsSTATUS.AsString:=st.Text;

      if tarefa.TaskDef.Fields[i].ReadOnly then
        wkformsRO.Value:=true
      else
        wkformsRO.Value:=false;

      if tarefa.TaskDef.Fields[i].Required then
        wkformsOBRIG.Value:=true
      else
        wkformsOBRIG.Value:=false;

        wkforms.Post;
      i:=i+1;
    End;
  tarefa.Free;
end;



procedure TSM.getWorkPend(usuario:String);
var FTasks: TTaskInstanceList;
    list:TTaskListView;
begin
  FTasks := TTaskInstanceList.Create(TTaskInstanceItem);
  WorkflowStudio1.TaskManager.LoadTaskInstanceList(FTasks,tfUser, usuario,true);
  list:=TTaskListView.Create(self);
  list.WorkflowStudio:=WorkflowStudio1;
  //list.UpdateItemsDB(TFDMemTable(wkpends),TControl(self),FTasks);
  list.Free;
  FTasks.Free;

end;



Procedure TSM.Genericos(AMachine: TatVirtualMachine);
Begin


End;

Procedure TSM.SetOrder(AMachine: TatVirtualMachine);
Begin
With AMachine do
Begin
TRY
  TJvMemoryData(Self.FindComponent(GetInputArgAsString(0))).SortOnFields(GetInputArgAsString(1),false,true);
eXCEPT
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');
      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

END;
//  tabela.Name := GetInputArgAsString(0)+InttoStr(secao);
End;
End;

Procedure TSM.SetOrderADV(AMachine: TatVirtualMachine);
Begin
With AMachine do
Begin
TRY
if uppercase(GetInputArgAsString(2)) ='T' then
   TJvMemoryData(self.FindComponent(GetInputArgAsString(0))).SortOnFields(GetInputArgAsString(1),false,true)
else
   TJvMemoryData(self.FindComponent(GetInputArgAsString(0))).SortOnFields(GetInputArgAsString(1),false,false);
eXCEPT
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
      erro.Free;

    End;

END;
//  tabela.Name := GetInputArgAsString(0)+InttoStr(secao);
End;
End;



function TSM.existtab;//(tabela: string; banco: erroneous type)
begin

if self.FindComponent(banco) <> nil then
 Begin
   _verifica.Connection:=TFDConnection(self.FindComponent(banco));
   try
     _verifica.Close;
     _verifica.SQL.Text:='Select top 1 * from '+tabela;
     _verifica.Open;
     result:=true;
   Except
     result:=false;
   end;


 End;
end;

function TSM.RGeraDS;//(comando: string; conexao: string)
Begin
  SetAmbiente(ambiente);
  Result:=GeraDS(comando,nome,conexao);
End;

function TSM.GeraDS;//(comando: string; conexao: string)
begin
try
  result:=nil;
  if nome='' then
     nome:='temp';

  GeraSQL(comando,nome,conexao);
  if Self.FindComponent('pr_'+nome) <> nil then
    Begin
       result:=TFDTable(Self.FindComponent('pr_'+nome));
    End
Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
      erro.Free;

    End;

end;
end;


procedure TSM._ExecScriptG(AMachine: TatVirtualMachine);
begin

  With AMachine do
    ReturnOutputArg(ExecScript(GetInputArgAsString(0), GetInputArgAsString(1)));

//    SM(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

end;



function TSM.Execute;
Begin
secao:=sec;

//FScripter:=TatPascalScripter.Create(Self);
Script.SourceCode.Text := fonte;
//FScripter.Compile;
try
 try
  Script.Execute;
 except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
      // erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
             erro.Free;

    End;

 End;

finally
Try
 //Execute(fonte,sec);
  //FScripter.Free;
  Terminate;
Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');


      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
      erro.Free;

    End;

end;
end;

End;

function TSM.GetLicenca;
var memo1:TStringList;
begin
  memo1:=TStringList.Create;
  Memo1.LoadFromFile('c:\GoodSales\core\chave.key');
  Memo1.Text := serial.DecodeString('#',memo1.Text);
  Result:=Memo1.Text;
  memo1.Free;

end;


Procedure TSM.setAmbiente;//(nome: string);
var i:Integer;
    ado:TFDConnection;
    ad:TFDCONNECTION;
    cboCon,edtSenha, StrConn,edtUsuario,edtODBC,edtservidor,edtNome,edtBanco:String;
    CheckBox1:boolean;
    _SQL:TSQLConnection;
    _ds:TDSProviderConnection;
    _SM:TSqlServerMethod;
    FDTransaction:TFDTransaction;
begin

i:=0;
_ambiente:=nome;

{while i < self.ComponentCount do
 Begin
   if (Self.Components[i].ClassType ) = TFDConnection then
     Begin
        TFDConnection(Self.Components[i]).Close;
        TFDConnection(Self.Components[i]).free;
     End;
   i:=i+1;
 End;}

i:=0;

while i < self.ComponentCount do
 Begin
   if ((Self.Components[i].ClassType ) = TFDCONNECTION) and (Self.Components[i].Name<>'FDConnection1') then
     Begin
        TFDConnection(Self.Components[i]).Close;
        TFDConnection(Self.Components[i]).free;
     End;
   i:=i+1;
 End;

i:=0;


while (str.Strings[i] <> '[WEBSERVER]') and (str.Strings[i] <> '<'+nome+'>') do
 begin
   i:=i+1;
 End;

while (str.Strings[i] <> '[WEBSERVER]') and (str.Strings[i] <> '</'+nome+'>') do
 Begin

  if copy(str.Strings[i],1,1) = '[' then
    Begin


     edtNome :=(copy(str.Strings[i],2,POS('_',str.Strings[i])-2 ));

     i:=i+1;
     cboCon:=str.Strings[i];
     i:=i+1;
     edtODBC:=str.Strings[i];
     i:=i+1;
     edtServidor:=str.Strings[i];
     i:=i+1;
     edtUsuario:=str.Strings[i];
     i:=i+1;
     edtSenha:=str.Strings[i];
     i:=i+1;
     edtBanco:=str.Strings[i];
     i:=i+1;


     if str.Strings[i]='1' then
       checkbox1 := true
     else
       checkbox1 := false;


     ad :=TFDCONNECTION.Create(Self);
     ad.Name := edtNome;
     ad.LoginPrompt :=false;

     ad.UpdateOptions.CheckRequired:=false;
     ad.UpdateOptions.CheckReadOnly:=false;
     ad.UpdateOptions.CheckUpdatable:=false;
     ad.UpdateOptions.FastUpdates:=true;
     ad.UpdateOptions.CountUpdatedRecords:=false;
     FDTransaction:=TFDTransaction.Create(SELF);
     FDTransaction.Connection:=AD;
     FDTransaction.Name:='tr'+edtNome;

     try


     ad.ResultConnectionDef.Params.LoadFromFile('c:\goodsales\core\conexoes\'+edtODBC+'.ini');
     if pos('[DS]',ad.ResultConnectionDef.Params.Text) > 0 then
      Begin
        ad.Name:='_'+ad.Name;

        _sql:=TSQLConnection.Create(Self);
        _sql.Params.Text:=_TEMPLATE.Params.Text;
        _sql.DriverName := _TEMPLATE.DriverName;

        _sql.Params.Values['HostName']:=ad.ResultConnectionDef.Params.strings[1];
        _sql.Params.Values['CommunicationProtocol']:='tcp/ip';
        _sql.Params.Values['Port']:='212';
        _sql.Params.Values['DSAuthenticationUser']:='goodsales';
        _sql.Params.Values['DSAuthenticationPassword']:='good&@le&';

        _sql.Name:=edtNome;
        _sql.LoginPrompt:=false;
        _sql.Open;
        _ds:=TDSProviderConnection.Create(self);
        _ds.SQLConnection:=_sql;
        _ds.ServerClassName:='TSM';
        _ds.Name:='ds'+edtNome;
//         metodo:=TSMClient.Create(_SQL.DBXConnection);
//         metodo.setAmbiente(ad.ResultConnectionDef.Params.strings[2]);
        _sm := TSqlServerMethod.Create(self);
        _sm.SQLConnection:=_sql;
        _sm.ServerMethodName:='TSM.setAmbiente';
        _sm.Params[0].Value:=ad.ResultConnectionDef.Params.strings[2];
        _sm.ExecuteMethod;

        _sm.ServerMethodName:='TSM.GeraSQL';
        _sm.Name:='sm'+edtNome;

      End
     eLSE
     beGIN
        ad.ResourceOptions.AutoReconnect:=true;
        ad.FetchOptions.Mode:=fmAll;
        ad.Open;
     end;


     Except
     on e:Exception do
      Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' Erro Conexao 1- '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;
      End;
     End

    End;
   i:=i+1;
  End;

  try
   // WorkflowADODB1.Connection:=TFDConnection(self.FindComponent('D'));
  Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

  end;


  End;



Procedure TSM.rsetAmbiente;//(nome: string);
var i:Integer;
    ado:TFDConnection;
    ad:TFDCONNECTION;
    cboCon,edtSenha, StrConn,edtUsuario,edtODBC,edtservidor,edtNome,edtBanco:String;
    CheckBox1:boolean;
    _SQL:TSQLConnection;
    _ds:TDSProviderConnection;
    _SM:TSqlServerMethod;
    FDTransaction:TFDTransaction;
begin

i:=0;
_ambiente:=nome;

{while i < self.ComponentCount do
 Begin
   if (Self.Components[i].ClassType ) = TFDConnection then
     Begin
        TFDConnection(Self.Components[i]).Close;
        TFDConnection(Self.Components[i]).free;
     End;
   i:=i+1;
 End;}

i:=0;

while i < self.ComponentCount do
 Begin
   if ((Self.Components[i].ClassType ) = TFDCONNECTION) and (Self.Components[i].Name<>'FDConnection1') then
     Begin
        TFDConnection(Self.Components[i]).Close;
        TFDConnection(Self.Components[i]).free;
     End;
   i:=i+1;
 End;

i:=0;


while (str.Strings[i] <> '[WEBSERVER]') and (str.Strings[i] <> '<'+nome+'>') do
 begin
   i:=i+1;
 End;

while (str.Strings[i] <> '[WEBSERVER]') and (str.Strings[i] <> '</'+nome+'>') do
 Begin

  if copy(str.Strings[i],1,1) = '[' then
    Begin


     edtNome :=(copy(str.Strings[i],2,POS('_',str.Strings[i])-2 ));


     i:=i+1;
     cboCon:=str.Strings[i];
     i:=i+1;
     edtODBC:=str.Strings[i];
     i:=i+1;
     edtServidor:=str.Strings[i];
     i:=i+1;
     edtUsuario:=str.Strings[i];
     i:=i+1;
     edtSenha:=str.Strings[i];
     i:=i+1;
     edtBanco:=str.Strings[i];
     i:=i+1;


     if str.Strings[i]='1' then
       checkbox1 := true
     else
       checkbox1 := false;

    if uppercase(edtNome) = upperCase(banco) then
     Begin
     ad :=TFDCONNECTION.Create(Self);
     ad.Name := edtNome;
     ad.LoginPrompt :=false;

     ad.UpdateOptions.CheckRequired:=false;
     ad.UpdateOptions.CheckReadOnly:=false;
     ad.UpdateOptions.CheckUpdatable:=false;
     ad.UpdateOptions.FastUpdates:=true;
     ad.UpdateOptions.CountUpdatedRecords:=false;
     FDTransaction:=TFDTransaction.Create(SELF);
     FDTransaction.Connection:=AD;
     FDTransaction.Name:='tr'+edtNome;

     try


     ad.ResultConnectionDef.Params.LoadFromFile('c:\goodsales\core\conexoes\'+edtODBC+'.ini');
     if pos('[DS]',ad.ResultConnectionDef.Params.Text) > 0 then
      Begin
        ad.Name:='_'+ad.Name;

        _sql:=TSQLConnection.Create(Self);
        _sql.Params.Text:=_TEMPLATE.Params.Text;
        _sql.DriverName := _TEMPLATE.DriverName;

        _sql.Params.Values['HostName']:=ad.ResultConnectionDef.Params.strings[1];
        _sql.Params.Values['CommunicationProtocol']:='tcp/ip';
        _sql.Params.Values['Port']:='212';
        _sql.Params.Values['DSAuthenticationUser']:='goodsales';
        _sql.Params.Values['DSAuthenticationPassword']:='good&@le&';

        _sql.Name:=edtNome;
        _sql.LoginPrompt:=false;
        _sql.Open;
        _ds:=TDSProviderConnection.Create(self);
        _ds.SQLConnection:=_sql;
        _ds.ServerClassName:='TSM';
        _ds.Name:='ds'+edtNome;
//         metodo:=TSMClient.Create(_SQL.DBXConnection);
//         metodo.setAmbiente(ad.ResultConnectionDef.Params.strings[2]);
        _sm := TSqlServerMethod.Create(self);
        _sm.SQLConnection:=_sql;
        _sm.ServerMethodName:='TSM.setAmbiente';
        _sm.Params[0].Value:=ad.ResultConnectionDef.Params.strings[2];
        _sm.ExecuteMethod;

        _sm.ServerMethodName:='TSM.GeraSQL';
        _sm.Name:='sm'+edtNome;

      End
     eLSE
     beGIN
        ad.ResourceOptions.AutoReconnect:=true;
        ad.FetchOptions.Mode:=fmAll;
        ad.Open;
     end;


     Except
     on e:Exception do
      Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' Erro Conexao 1- '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;
      End;
     End
    End;
    End;
   i:=i+1;
  End;

  try
   // WorkflowADODB1.Connection:=TFDConnection(self.FindComponent('D'));
  Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

  end;


  End;




function TSM.validaDOC;//(doc: string; tipo: string)

Function testacpf(cpf:string):boolean;
 var i:integer;
     Want:char;
     Wvalid:boolean;
     Wdigit1,Wdigit2:integer;
 begin
     Wdigit1:=0;
     Wdigit2:=0;
     Want:=cpf[1];//variavel para testar se o cpf é repetido como 111.111.111-11
     Delete(cpf,ansipos('.',cpf),1);  //retira as mascaras se houver
     Delete(cpf,ansipos('.',cpf),1);
     Delete(cpf,ansipos('-',cpf),1);

   //testar se o cpf é repetido como 111.111.111-11
    for i:=1 to length(cpf) do
      begin
        if cpf[i] <> Want then
          begin
             Wvalid:=true;  // se o cpf possui um digito diferente ele passou no primeiro teste
             break
          end;
      end;
        // se o cpf é composto por numeros repetido retorna falso
      if not Wvalid then
        begin
           result:=false;
           exit;
        end;

     //executa o calculo para o primeiro verificador
      for i:=1 to 9 do
        begin
           wdigit1:=Wdigit1+(strtoint(cpf[10-i])*(I+1));
        end;
         Wdigit1:= ((11 - (Wdigit1 mod 11))mod 11) mod 10;
         {formula do primeiro verificador
             soma=1°*2+2°*3+3°*4.. até 9°*10
             digito1 = 11 - soma mod 11
             se digito > 10 digito1 =0
           }

         //verifica se o 1° digito confere
         if IntToStr(Wdigit1) <> cpf[10] then
           begin
              result:=false;
              exit;
           end;


         for i:=1 to 10 do
        begin
           wdigit2:=Wdigit2+(strtoint(cpf[11-i])*(I+1));
        end;
        Wdigit2:= ((11 - (Wdigit2 mod 11))mod 11) mod 10;
          {formula do segundo verificador
             soma=1°*2+2°*3+3°*4.. até 10°*11
             digito1 = 11 - soma mod 11
             se digito > 10 digito1 =0
           }

       // confere o 2° digito verificador
        if IntToStr(Wdigit2) <> cpf[11] then
           begin
              result:=false;
              exit;
           end;

   //se chegar até aqui o cpf é valido
    result:=true;
 end;

begin
  result:=testacpf(doc);
end;

Function TSM.NoRound(Valor1:Double;valor2:Integer):Double;
var numero:Double;
begin
  numero:=valor1;
  if pos(',',FloatToStr(numero))>0 then
     numero:=StrTOFloat(copy(FloatTostr(numero),1,pos(',',FloatToStr(numero))-1)+','+copy(FloatTostr(numero),pos(',',FloatToStr(numero))+1,Valor2))
  else
  if pos('.',FloatToStr(numero))>0 then
     numero:=StrTOFloat(copy(FloatTostr(numero),1,pos('.',FloatToStr(numero))-1)+','+copy(FloatTostr(numero),pos('.',FloatToStr(numero))+1,Valor2));

  Result:=(numero);
end;



Function TSM.Potencia(Valor1,valor2:Double):Double;
begin
  result:=(Power(valor1,valor2));
end;


Function TSM.Locate(valor1,valor2,valor3:String):Integer;
Begin
 try
   if TDataSet(Self.FindComponent(valor1 )).Locate(Valor2,valor2,[]) then
      Result:=(1)
   else
      Result:=(0);
 except
    on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

End;
End;


Procedure TSM.CreateTMP(valor1:String);
var tabela:TJvMemoryData;
Begin
  if Self.FindComponent(valor1 ) <> nil then
    Begin
    Try
     TJvMemoryData(Self.FindComponent(valor1 )).Close;
     TJvMemoryData(Self.FindComponent(valor1 )).Free;
    Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

    End;
    End;
  tabela:= TJvMemoryData.Create(Self);
  tabela.Name := Valor1 ;
End;

Procedure TSM.OpenTMP(valor1:String);
Begin
 try
   TDataSet(Self.FindComponent(valor1 )).open;
 except
    on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

 end;
End;




Procedure TSM.TableEdit(valor1:String);
Begin
 try
 if Self.FindComponent(valor1 ) <> nil then
   TDataSet(Self.FindComponent(valor1 )).edit;
 except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;
 end;
End;




Function TSM.WebFields:String;
Begin
    Result:=(WebField);
End;

Procedure TSM.SetFloat(valor1,valor2:String;valor3:Double);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
 try
 if Self.FindComponent(valor1 ) <> nil then
    TFDQuery(Self.FindComponent(valor1)).FieldByname(valor2).AsFloat:=valor3;
 except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

 end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM.SetInteger(valor1,valor2:String;valor3:Integer);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
 try
 if Self.FindComponent(valor1 ) <> nil then
    TFDQuery(Self.FindComponent(Valor1 )).FieldByname(valor2).AsInteger:=valor3;
 except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       erro.Free;

    End;

 end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM.SetString(valor1,valor2:String;valor3:String);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
   TFDQuery(Self.FindComponent(valor1 )).FieldByname(valor2).AsString:=valor3;

  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Function TSM.Divide(valor1,valor2:Double):Double;
Begin
Begin
   if valor2 = 0 then
      Result:=0
   else
      Result:=(valor1/valor2);
end;
End;



Procedure TSM.ComandoGravar(valor1:String);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
Try
   TDataSet(Self.FindComponent(valor1 )).Post;
Except
   on e:Exception do
    Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');
       erro.Free;
    End;
End;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;


Procedure TSM.ComandoInserir(valor1,valor2,valor3:String);
Begin

   GeraSQL2('Select TOP 1 * from '+valor1,valor2,valor3);
   TFDQuery(Self.FindComponent(valor2 )).Insert;

  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM.ComandoInserir2(valor1:String);
Begin

   if Self.FindComponent(valor1) <> nil then
   TRy
      TDataSet(Self.FindComponent(valor1)).Append;
   except

   End;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;


Function TSM.MaxRECNO(valor1,valor2,valor3,valor4,valor5:String):Integer;
Begin


    GeraSQL2('Select MAX(R_E_C_N_O_) as MAX from '+valor1+valor2+' Where '+valor3+' = "'+valor4+'"','MAXREC',VALOR5);

    Result:=AsInteger('MAXREC','MAX')+1;
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;


Procedure TSM.NewCube(valor1,valor2:String);
var dataf:TfrxDBDataset;
begin
  Begin
   if frmRel.FindComponent(valor1) <> nil then
      frmRel.FindComponent(valor1).Free;

   dataf:=TfrxDBDataset.Create(frmRel);
   dataf.Name :=valor1;
   dataf.DataSet := TDataSet(Self.FindComponent(valor2 ));
  End;
end;

Function TSM.Form(valor:String):String;
var TEXTO:String;
Begin

texto:=FormField;

Begin
if pos(valor,texto) > 0 then
 Begin
   if pos('&',texto) > 0 then
    Begin
      result:=copy(Texto,pos(valor,texto)+Length(valor)+1,Length(texto));
      if pos('&',result) > 0 then
      result:=copy(result,1,pos('&',result)-1);
    End
    else
    Begin
      result:=copy(Texto,pos(valor,texto)+Length(valor)+1,Length(texto));

    End;
 End;
 if Pos('+',result) > 0 then
 while Pos('+',result)>0 do
    Begin
     result:=trim(copy(result,1,Pos('+',result)-1)+' '+copy(result,Pos('+',result)+1,1000));
    End;

End;
End;


function TSM.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;


function TSM.GeraSQL;//()
var sql:TFDQuery;
    sql2:TFDQUERY;
    parte,hora:String;
    pr:TDataSetProvider;
    i:Integer;
    cli:TClientDataSet;
    aTask: ITask;
    conexaos:String;
Begin

//aTask := TTask.Create (procedure ()
begin



conexao:=trim(conexao);

  if pos('_',conexao) > 0 then
   Begin
     conexaos:=trim(copy(conexao,pos('_',conexao)+1,1000));
     conexao:=copy(conexao,1,pos('_',conexao)-1);
   End
  else
     conexaos:=conexao;

  if Self.FindComponent(conexao).ClassType = TSQLConnection then
   Begin
      with TSqlServerMethod(Self.FindComponent('sm'+conexao)) do
       Begin
          params[0].Value:=comando;
          params[1].Value:=ado;
          params[2].Value:=conexaos;
          ExecuteMethod;
       End;

  if self.FindComponent('pr_'+ado)=nil then
    Begin
     cli:=TClientDataSet.Create(self);
     cli.RemoteServer:=TDSProviderConnection(self.FindComponent('DS'+conexao));
     cli.ProviderName:=ado;
     cli.Name:='pr_'+ado;

     try
       cli.Open;

           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=cli;
           pr.Exported:=true;
           pr.Name:=ado;
     Except
     on e:Exception do
      Begin
       //ShowMessage(e.Message);
      End;
     end;
    End
 Else
    Begin
     TClientDataSet(self.FindComponent('pr_'+ado)).Close;
     TClientDataSet(self.FindComponent('pr_'+ado)).RemoteServer :=TDSProviderConnection(self.FindComponent('DS'+conexao));
     TClientDataSet(self.FindComponent('pr_'+ado)).ProviderName:=ado;
     TClientDataSet(self.FindComponent('pr_'+ado)).open;
    End;
   self.Updated;
   End
  Else

bEGIN
try
hora:=timetostr(time);
if uppercase(conexao) = 'BI' then
   conexao:='D';

if uppercase(conexao) = 'CON' then
   conexao:='O';

   //FThread := TThreadDataSet.Create(False);

 COMANDO:=traduzQuery(COMANDO,TFDCONNECTION(Self.FindComponent(conexao)));

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

if pos(' ON ',uppercase(comando)) > 0 then
 Begin
   parte:=comando;

   if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQLL' then
   while  pos(' ON ',uppercase(parte)) > 0 do
    Begin
      parte:= copy(parte,1,pos(' ON ',uppercase(parte)))+' with(nolock) ## '+copy(parte,pos(' ON ',uppercase(parte))+4,length(parte));
    End;

    while  pos('##',uppercase(parte)) > 0 do
     Begin
       parte:= copy(parte,1,pos('##',parte)-1)+'ON'+copy(parte,pos('##',uppercase(parte))+2,length(parte));
     End;
   Comando:=parte;

 End;


 {if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQL' then
 if (pos('WHERE',uppercase(comando)) > 0) and (pos(' ON ',uppercase(parte))=0) then
    comando:=copy(comando,1,pos('WHERE',uppercase(comando))-1)+' with(nolock) '+copy(comando,pos('WHERE',uppercase(comando)),length(comando));}

//Memo1.Lines.Add(comando);
  if Self.FindComponent('pr_'+ado) <> nil  then
   Begin
    try
     { if FDLocal.Active then
         FDLocal.DataSets.Clear;}

       TFDQuery(Self.FindComponent('pr_'+ado)).Close;
       TFDQuery(Self.FindComponent('pr_'+ado)).Free;
    Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);



        erro.SaveToFile('c:\GoodSales\core\1'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;

    end;
   End;

  if Self.FindComponent(ado) <> nil then
         begin
            Self.FindComponent(ado).Free;
         end;

 BEgin
  if Self.FindComponent('pr_'+ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);

      sql2.OnPostError:=ADQuery1PostError;
      sql2.OnReconcileError:=ADOQuery1ReconcileError;
      sql2.OnPostError:=ADOQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;
      sql2.FetchOptions.Mode:=fmOnDemand;
//      sql2.FetchOptions.CursorKind:=ckStatic;
//      sql2.FetchOptions.CursorKind:=ckStatic;
 //     sql2.FetchOptions.RowsetSize:=50000;
//      sql2.ResourceOptions.CmdExecMode:=amAsync;

        with sql2 do
         Begin
          UpdateTransaction := TFDTransaction(Self.FindComponent('tr'+conexao));
          FetchOptions.AssignedValues := [evRecordCountMode];
          FetchOptions.RecordCountMode := cmFetched;
          ResourceOptions.AssignedValues := [rvCmdExecMode];
          ResourceOptions.CmdExecMode := amNonBlocking;
          UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
          UpdateOptions.RefreshMode := rmAll;
          UpdateOptions.AutoCommitUpdates := True;
          UpdateOptions.CountUpdatedRecords:=false;
        End;

      try
      sql2.Name := 'pr_'+ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
      //sql.Connection :=  ADConnection1;
      sql2.SQL.Text := comando;

       if pos(':',comando)=0 then
       Begin
        sql2.open;
        result:=sql2.RecordCount;
        i:=0;
{        while i < sql2.Fields.Count do
         Begin
           sql2.Fields[i].Required:=false;
           i:=i+1;
         End;}

       End
      Else
      result:=0;

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=sql2;
           pr.Exported:=true;
           pr.Name:=ado;
         end;


      except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\2'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;
      end;

    End
    Else
     Begin

      try
       TFDQUERY(Self.FindComponent('pr_'+ado)).Close;
       TFDQUERY(Self.FindComponent('pr_'+ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent('pr_'+ado)).SQL.Text := comando;
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));
       if pos(':',comando)=0 then
        Begin
         TFDQUERY(Self.FindComponent('pr_'+ado)).Open;
    //     result:=TFDQUERY(Self.FindComponent('pr_'+ado)).RecordCount;
         End
       Else
         result:=0;

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=TDataSet(Self.FindComponent('pr_'+ado));
           pr.Exported:=true;
           PR.Name:=ado;
         end
         else
           TDataSetProvider(Self.FindComponent(ado)).DataSet:=TDataSet(Self.FindComponent('pr_'+ado));

      except

   on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try
       erro:=TStringList.Create;
        erro.Add('Erro2 :'+e.Message);
       erro.SaveToFile('c:\GoodSales\core\3'+ado+'_erros.txt');
       erro.Free;
      Except
      end;

    End;
      end;

     End;
 End;
//Form1.memo1.lines.add(hora+' - '+timetostr(time)+' - '+comando);
self.Updated;

 Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro3 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\4'+ado+'_erros.txt');
        erro.Free;
      Except
      end;
    End;

end;
end;
end;
 //aTask.Start;
End;


function TSM.ESQL;//()
var sql:TFDQuery;
    sql2:TFDQUERY;
    parte,hora:String;
    pr:TDataSetProvider;
    i:Integer;
    cli:TClientDataSet;
    aTask: ITask;
    conexaos:String;
Begin

//aTask := TTask.Create (procedure ()
begin


setAmbiente(ambiente);

conexao:=trim(conexao);

  if pos('_',conexao) > 0 then
   Begin
     conexaos:=trim(copy(conexao,pos('_',conexao)+1,1000));
     conexao:=copy(conexao,1,pos('_',conexao)-1);
   End
  else
     conexaos:=conexao;

  if Self.FindComponent(conexao).ClassType = TSQLConnection then
   Begin
      with TSqlServerMethod(Self.FindComponent('sm'+conexao)) do
       Begin
          params[0].Value:=comando;
          params[1].Value:=ado;
          params[2].Value:=conexaos;
          ExecuteMethod;
       End;

  if self.FindComponent('pr_'+ado)=nil then
    Begin
     cli:=TClientDataSet.Create(self);
     cli.RemoteServer:=TDSProviderConnection(self.FindComponent('DS'+conexao));
     cli.ProviderName:=ado;
     cli.Name:='pr_'+ado;

     try
       cli.Open;

           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=cli;
           pr.Exported:=true;
           pr.Name:=ado;
     Except
     on e:Exception do
      Begin
       //ShowMessage(e.Message);
      End;
     end;
    End
 Else
    Begin
     TClientDataSet(self.FindComponent('pr_'+ado)).Close;
     TClientDataSet(self.FindComponent('pr_'+ado)).RemoteServer :=TDSProviderConnection(self.FindComponent('DS'+conexao));
     TClientDataSet(self.FindComponent('pr_'+ado)).ProviderName:=ado;
     TClientDataSet(self.FindComponent('pr_'+ado)).open;
    End;
   self.Updated;
   End
  Else

bEGIN
try
hora:=timetostr(time);
if uppercase(conexao) = 'BI' then
   conexao:='D';

if uppercase(conexao) = 'CON' then
   conexao:='O';

   //FThread := TThreadDataSet.Create(False);

 COMANDO:=traduzQuery(COMANDO,TFDCONNECTION(Self.FindComponent(conexao)));

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

if pos(' ON ',uppercase(comando)) > 0 then
 Begin
   parte:=comando;

   if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQLL' then
   while  pos(' ON ',uppercase(parte)) > 0 do
    Begin
      parte:= copy(parte,1,pos(' ON ',uppercase(parte)))+' with(nolock) ## '+copy(parte,pos(' ON ',uppercase(parte))+4,length(parte));
    End;

    while  pos('##',uppercase(parte)) > 0 do
     Begin
       parte:= copy(parte,1,pos('##',parte)-1)+'ON'+copy(parte,pos('##',uppercase(parte))+2,length(parte));
     End;
   Comando:=parte;

 End;


 {if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQL' then
 if (pos('WHERE',uppercase(comando)) > 0) and (pos(' ON ',uppercase(parte))=0) then
    comando:=copy(comando,1,pos('WHERE',uppercase(comando))-1)+' with(nolock) '+copy(comando,pos('WHERE',uppercase(comando)),length(comando));}

//Memo1.Lines.Add(comando);
  if Self.FindComponent('pr_'+ado) <> nil  then
   Begin
    try
     { if FDLocal.Active then
         FDLocal.DataSets.Clear;}

       TFDQuery(Self.FindComponent('pr_'+ado)).Close;
       TFDQuery(Self.FindComponent('pr_'+ado)).Free;
    Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);



        erro.SaveToFile('c:\GoodSales\core\1'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;

    end;
   End;

  if Self.FindComponent(ado) <> nil then
         begin
            Self.FindComponent(ado).Free;
         end;

 BEgin
  if Self.FindComponent('pr_'+ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);

      sql2.OnPostError:=ADQuery1PostError;
      sql2.OnReconcileError:=ADOQuery1ReconcileError;
      sql2.OnPostError:=ADOQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;
      sql2.FetchOptions.Mode:=fmOnDemand;
//      sql2.FetchOptions.CursorKind:=ckStatic;
//      sql2.FetchOptions.CursorKind:=ckStatic;
 //     sql2.FetchOptions.RowsetSize:=50000;
//      sql2.ResourceOptions.CmdExecMode:=amAsync;

        with sql2 do
         Begin
          UpdateTransaction := TFDTransaction(Self.FindComponent('tr'+conexao));
          FetchOptions.AssignedValues := [evRecordCountMode];
          FetchOptions.RecordCountMode := cmFetched;
          ResourceOptions.AssignedValues := [rvCmdExecMode];
          ResourceOptions.CmdExecMode := amNonBlocking;
          UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
          UpdateOptions.RefreshMode := rmAll;
          UpdateOptions.AutoCommitUpdates := True;
          UpdateOptions.CountUpdatedRecords:=false;
        End;

      try
      sql2.Name := 'pr_'+ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
      //sql.Connection :=  ADConnection1;
      sql2.SQL.Text := comando;

       if pos(':',comando)=0 then
       Begin
        sql2.open;
        result:=sql2.RecordCount;
        i:=0;
{        while i < sql2.Fields.Count do
         Begin
           sql2.Fields[i].Required:=false;
           i:=i+1;
         End;}

       End
      Else
      result:=0;

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=sql2;
           pr.Exported:=true;
           pr.Name:=ado;
         end;


      except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\2'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;
      end;

    End
    Else
     Begin

      try
       TFDQUERY(Self.FindComponent('pr_'+ado)).Close;
       TFDQUERY(Self.FindComponent('pr_'+ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent('pr_'+ado)).SQL.Text := comando;
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));
       if pos(':',comando)=0 then
        Begin
         TFDQUERY(Self.FindComponent('pr_'+ado)).Open;
    //     result:=TFDQUERY(Self.FindComponent('pr_'+ado)).RecordCount;
         End
       Else
         result:=0;

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=TDataSet(Self.FindComponent('pr_'+ado));
           pr.Exported:=true;
           PR.Name:=ado;
         end
         else
           TDataSetProvider(Self.FindComponent(ado)).DataSet:=TDataSet(Self.FindComponent('pr_'+ado));

      except

   on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try
       erro:=TStringList.Create;
        erro.Add('Erro2 :'+e.Message);
       erro.SaveToFile('c:\GoodSales\core\3'+ado+'_erros.txt');
       erro.Free;
      Except
      end;

    End;
      end;

     End;
 End;
//Form1.memo1.lines.add(hora+' - '+timetostr(time)+' - '+comando);
self.Updated;

 Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro3 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\4'+ado+'_erros.txt');
        erro.Free;
      Except
      end;
    End;

end;
end;
end;
 //aTask.Start;
End;



function TSM.pesquisa;//()
var sql:TFDQuery;
    sql2:TFDQUERY;
    parte,hora:String;
    pr:TDataSetProvider;
    i:Integer;
    cli:TClientDataSet;
    aTask: ITask;
    conexaos:String;
Begin

//aTask := TTask.Create (procedure ()
begin
setAmbiente(ambiente);
conexao:=trim(conexao);

  if pos('_',conexao) > 0 then
   Begin
     conexaos:=trim(copy(conexao,pos('_',conexao)+1,1000));
     conexao:=copy(conexao,1,pos('_',conexao)-1);
   End
  else
     conexaos:=conexao;

  if Self.FindComponent(conexao).ClassType = TSQLConnection then
   Begin
      with TSqlServerMethod(Self.FindComponent('sm'+conexao)) do
       Begin
          params[0].Value:=comando;
          params[1].Value:=ado;
          params[2].Value:=conexaos;
          ExecuteMethod;
       End;

  if self.FindComponent('pr_'+ado)=nil then
    Begin
     cli:=TClientDataSet.Create(self);
     cli.RemoteServer:=TDSProviderConnection(self.FindComponent('DS'+conexao));
     cli.ProviderName:=ado;
     cli.Name:='pr_'+ado;

     try
       cli.Open;

           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=cli;
           pr.Exported:=true;
           pr.Name:=ado;
           DataSetToJsonTxt(Cli);
     Except
     on e:Exception do
      Begin
       //ShowMessage(e.Message);
      End;
     end;
    End
 Else
    Begin
     TClientDataSet(self.FindComponent('pr_'+ado)).Close;
     TClientDataSet(self.FindComponent('pr_'+ado)).RemoteServer :=TDSProviderConnection(self.FindComponent('DS'+conexao));
     TClientDataSet(self.FindComponent('pr_'+ado)).ProviderName:=ado;
     TClientDataSet(self.FindComponent('pr_'+ado)).open;
    End;
   self.Updated;
   End
  Else

bEGIN
try
hora:=timetostr(time);
if uppercase(conexao) = 'BI' then
   conexao:='D';

if uppercase(conexao) = 'CON' then
   conexao:='O';

   //FThread := TThreadDataSet.Create(False);

 COMANDO:=traduzQuery(COMANDO,TFDCONNECTION(Self.FindComponent(conexao)));

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

if pos(' ON ',uppercase(comando)) > 0 then
 Begin
   parte:=comando;

   if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQLL' then
   while  pos(' ON ',uppercase(parte)) > 0 do
    Begin
      parte:= copy(parte,1,pos(' ON ',uppercase(parte)))+' with(nolock) ## '+copy(parte,pos(' ON ',uppercase(parte))+4,length(parte));
    End;

    while  pos('##',uppercase(parte)) > 0 do
     Begin
       parte:= copy(parte,1,pos('##',parte)-1)+'ON'+copy(parte,pos('##',uppercase(parte))+2,length(parte));
     End;
   Comando:=parte;

 End;


 {if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQL' then
 if (pos('WHERE',uppercase(comando)) > 0) and (pos(' ON ',uppercase(parte))=0) then
    comando:=copy(comando,1,pos('WHERE',uppercase(comando))-1)+' with(nolock) '+copy(comando,pos('WHERE',uppercase(comando)),length(comando));}

//Memo1.Lines.Add(comando);
  if Self.FindComponent('pr_'+ado) <> nil  then
   Begin
    try
     { if FDLocal.Active then
         FDLocal.DataSets.Clear;}

       TFDQuery(Self.FindComponent('pr_'+ado)).Close;
       TFDQuery(Self.FindComponent('pr_'+ado)).Free;
    Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\5'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;

    end;
   End;

  if Self.FindComponent(ado) <> nil then
         begin
            Self.FindComponent(ado).Free;
         end;

 BEgin
  if Self.FindComponent('pr_'+ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);

      sql2.OnPostError:=ADQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;
      sql2.FetchOptions.Mode:=fmAll;
//      sql2.FetchOptions.CursorKind:=ckStatic;
//      sql2.FetchOptions.CursorKind:=ckStatic;
 //     sql2.FetchOptions.RowsetSize:=50000;
//      sql2.ResourceOptions.CmdExecMode:=amAsync;

        with sql2 do
         Begin
           UpdateTransaction := TFDTransaction(Self.FindComponent('tr'+conexao));
           FetchOptions.AssignedValues := [evRecordCountMode];
           FetchOptions.RecordCountMode := cmFetched;
           ResourceOptions.AssignedValues := [rvCmdExecMode];
           ResourceOptions.CmdExecMode := amNonBlocking;
           UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
           UpdateOptions.RefreshMode := rmAll;
           UpdateOptions.AutoCommitUpdates := True;
           UpdateOptions.CountUpdatedRecords:=false;
         End;

      try
      sql2.Name := 'pr_'+ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
      //sql.Connection :=  ADConnection1;
      sql2.SQL.Text := comando;

       if pos(':',comando)=0 then
       Begin
        sql2.open;
       // result:=sql2.RecordCount;
        i:=0;
{        while i < sql2.Fields.Count do
         Begin
           sql2.Fields[i].Required:=false;
           i:=i+1;
         End;}

       End
      Else
      result:='';

        if Self.FindComponent(ado) = nil then
         begin
           result:=DataSetToJsonTxt(sql2);
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=sql2;
           pr.Exported:=true;
           pr.Name:=ado;
         end;


      except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\6'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;
      end;

    End
    Else
     Begin

      try
       TFDQUERY(Self.FindComponent('pr_'+ado)).Close;
       TFDQUERY(Self.FindComponent('pr_'+ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent('pr_'+ado)).SQL.Text := comando;
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));
       if pos(':',comando)=0 then
        Begin
         TFDQUERY(Self.FindComponent('pr_'+ado)).Open;
    //     result:=TFDQUERY(Self.FindComponent('pr_'+ado)).RecordCount;
         End
       Else
         result:='';

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=TDataSet(Self.FindComponent('pr_'+ado));
           pr.Exported:=true;
           PR.Name:=ado;
           DataSetToJsonTxt(Cli);
         end
         else
           TDataSetProvider(Self.FindComponent(ado)).DataSet:=TDataSet(Self.FindComponent('pr_'+ado));

      except

   on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try
       erro:=TStringList.Create;
        erro.Add('Erro2 :'+e.Message);
       erro.SaveToFile('c:\GoodSales\core\7'+ado+'_erros.txt');
       erro.Free;
      Except
      end;

    End;
      end;

     End;
 End;
//Form1.memo1.lines.add(hora+' - '+timetostr(time)+' - '+comando);
self.Updated;

 Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro3 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\8'+ado+'_erros.txt');
        erro.Free;
      Except
      end;
    End;

end;
end;
end;
 //aTask.Start;
End;

function TSM.GeraSQL2;//()
var
    sql2:TFDQUERY;
    parte,hora:String;
    pr:TDataSetProvider;
    cli:TClientDataSet;
Begin

COMANDO:=traduzQuery(COMANDO,TFDCONNECTION(Self.FindComponent(conexao)));

hora:=timetostr(time);
if uppercase(conexao) = 'BI' then
   conexao:='D';

if uppercase(conexao) = 'CON' then
   conexao:='O';

   //FThread := TThreadDataSet.Create(False);

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

if pos(' ON ',uppercase(comando)) > 0 then
 Begin
   parte:=comando;

  { while  pos(' ON ',uppercase(parte)) > 0 do
    Begin
      parte:= copy(parte,1,pos(' ON ',uppercase(parte)))+' with(nolock) ## '+copy(parte,pos(' ON ',uppercase(parte))+4,length(parte));
    End;}

    while  pos('##',uppercase(parte)) > 0 do
     Begin
       parte:= copy(parte,1,pos('##',parte)-1)+'ON'+copy(parte,pos('##',uppercase(parte))+2,length(parte));
     End;
   Comando:=parte;

 End;
  if Self.FindComponent(conexao).ClassType = TSQLConnection then
   Begin
      with TSqlServerMethod(Self.FindComponent('sm'+conexao)) do
       Begin
          params[0].Value:=comando;
          params[1].Value:=ado;
          params[2].Value:=conexao;
          ExecuteMethod;
       End;

  if self.FindComponent(ado)=nil then
    Begin
     cli:=TClientDataSet.Create(self);
     cli.RemoteServer:=TDSProviderConnection(self.FindComponent('DS'+conexao));
     cli.ProviderName:=ado;
     cli.Name:=ado;

     try
       cli.Open;
     Except
     on e:Exception do
      Begin
       //ShowMessage(e.Message);
      End;
     end;
    End
 Else
    Begin
     TClientDataSet(self.FindComponent(ado)).Close;
     TClientDataSet(self.FindComponent(ado)).ProviderName:=ado;
     TClientDataSet(self.FindComponent(ado)).open;
    End;

   End
  Else

  Begin
  if Self.FindComponent(ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);
      sql2.OnPostError:=ADQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;
      sql2.UpdateOptions.CheckReadOnly:=false;
      sql2.UpdateOptions.CheckUpdatable:=false;
      sql2.UpdateOptions.FastUpdates:=true;

      sql2.UpdateOptions.CheckRequired:=false;
//      sql2.FetchOptions.Mode:=fmAll;
//      sql2.FetchOptions.CursorKind:=ckStatic;
  //    sql2.FetchOptions.RowsetSize:=50000;
      sql2.Name := ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));


         with sql2 do
         Begin
          UpdateTransaction := TFDTransaction(Self.FindComponent('tr'+conexao));
           FetchOptions.AssignedValues := [evRecordCountMode];
           FetchOptions.RecordCountMode := cmFetched;
           ResourceOptions.AssignedValues := [rvCmdExecMode];
           ResourceOptions.CmdExecMode := amNonBlocking;
           UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
           UpdateOptions.RefreshMode := rmAll;
           UpdateOptions.AutoCommitUpdates := True;
           UpdateOptions.CountUpdatedRecords:=false;
         End;
     // sql2.ResourceOptions.CmdExecMode:=amAsync;
      sql2.SQL.Text := comando;

      try
        sql2.open;
        result:=sql2.RecordCount;
      except
   on e:Exception do
    Begin

       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' Erro Conexao 2- '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;

    End;
      end;

    End
    Else
     Begin
       TFDQUERY(Self.FindComponent(ado)).Close;
       TFDQUERY(Self.FindComponent(ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent(ado)).SQL.Text := comando;
      try
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));                                           pro
        TFDQuery(Self.FindComponent(ado)).Open;
        result:=TFDQuery(Self.FindComponent(ado)).RecordCount ;
      except
   on e:Exception do
    Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' Erro Conexao 3- '+e.Message+': '+comando);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;
    End;
      end;

     End;

  End;

End;

function TSM.ExecSQL;//()
var sql:TFDQuery;
    sql2:TFDQUERY;
    parte,hora:String;
    pr:TDataSetProvider;
    i:Integer;
    cli:TClientDataSet;
    aTask: ITask;
    conexaos:String;
Begin

//aTask := TTask.Create (procedure ()
begin

conexao:=trim(conexao);

  if pos('_',conexao) > 0 then
   Begin
     conexaos:=trim(copy(conexao,pos('_',conexao)+1,1000));
     conexao:=copy(conexao,1,pos('_',conexao)-1);
   End
  else
     conexaos:=conexao;

  if Self.FindComponent(conexao).ClassType = TSQLConnection then
    Begin
      with TSqlServerMethod(self.FindComponent('sm' + conexao)) do
      Begin
        Params[0].Value := comando;
        Params[1].Value := ado;
        Params[2].Value := conexaos;
        ExecuteMethod;
      End;

      if self.FindComponent('pr_' + ado) = nil then
      Begin
        cli := TClientDataSet.Create(self);
        cli.RemoteServer := TDSProviderConnection
          (self.FindComponent('DS' + conexao));
        cli.ProviderName := ado;
        cli.Name := 'pr_' + ado;

        try
          cli.Execute;

          pr := TDataSetProvider.Create(self);
          pr.ResolveToDataSet := true;
          pr.Options := [poPropogateChanges];
          pr.DataSet := cli;
          pr.Exported := true;
          pr.Name := ado;
        Except
          on E: Exception do
          Begin
            // ShowMessage(e.Message);
          End;
        end;
      End
      Else
      Begin
     TClientDataSet(self.FindComponent('pr_'+ado)).Close;
     TClientDataSet(self.FindComponent('pr_'+ado)).RemoteServer :=TDSProviderConnection(self.FindComponent('DS'+conexao));
     TClientDataSet(self.FindComponent('pr_'+ado)).ProviderName:=ado;
     TClientDataSet(self.FindComponent('pr_'+ado)).Execute;
    End;
   self.Updated;
   End
  Else

bEGIN
try
hora:=timetostr(time);
if uppercase(conexao) = 'BI' then
   conexao:='D';

if uppercase(conexao) = 'CON' then
   conexao:='O';

   //FThread := TThreadDataSet.Create(False);

 COMANDO:=traduzQuery(COMANDO,TFDCONNECTION(Self.FindComponent(conexao)));

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

if pos(' ON ',uppercase(comando)) > 0 then
 Begin
   parte:=comando;

   if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQLL' then
   while  pos(' ON ',uppercase(parte)) > 0 do
    Begin
      parte:= copy(parte,1,pos(' ON ',uppercase(parte)))+' with(nolock) ## '+copy(parte,pos(' ON ',uppercase(parte))+4,length(parte));
    End;

    while  pos('##',uppercase(parte)) > 0 do
     Begin
       parte:= copy(parte,1,pos('##',parte)-1)+'ON'+copy(parte,pos('##',uppercase(parte))+2,length(parte));
     End;
   Comando:=parte;

 End;


 {if TFDCONNECTION(Self.FindComponent(conexao)).ConnectionIntf.ConnectionDef.Params.DriverID ='MSSQL' then
 if (pos('WHERE',uppercase(comando)) > 0) and (pos(' ON ',uppercase(parte))=0) then
    comando:=copy(comando,1,pos('WHERE',uppercase(comando))-1)+' with(nolock) '+copy(comando,pos('WHERE',uppercase(comando)),length(comando));}

//Memo1.Lines.Add(comando);
  if Self.FindComponent('pr_'+ado) <> nil  then
   Begin
    try
     { if FDLocal.Active then
         FDLocal.DataSets.Clear;}

       TFDQuery(Self.FindComponent('pr_'+ado)).Close;
       TFDQuery(Self.FindComponent('pr_'+ado)).Free;
    Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\9'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;

    end;
   End;

  if Self.FindComponent(ado) <> nil then
         begin
            Self.FindComponent(ado).Free;
         end;

 BEgin
  if Self.FindComponent('pr_'+ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);

      sql2.OnPostError:=ADQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;
      sql2.FetchOptions.Mode:=fmAll;
//      sql2.FetchOptions.CursorKind:=ckStatic;
//      sql2.FetchOptions.CursorKind:=ckStatic;
 //     sql2.FetchOptions.RowsetSize:=50000;
//      sql2.ResourceOptions.CmdExecMode:=amAsync;

        with sql2 do
         Begin
           UpdateTransaction := TFDTransaction(Self.FindComponent('tr'+conexao));
           FetchOptions.AssignedValues := [evRecordCountMode];
           FetchOptions.RecordCountMode := cmFetched;
           ResourceOptions.AssignedValues := [rvCmdExecMode];
           ResourceOptions.CmdExecMode := amNonBlocking;
           UpdateOptions.AssignedValues := [uvRefreshMode, uvAutoCommitUpdates];
           UpdateOptions.RefreshMode := rmAll;
           UpdateOptions.AutoCommitUpdates := True;
           UpdateOptions.CountUpdatedRecords:=false;
         End;

      try
      sql2.Name := 'pr_'+ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
      //sql.Connection :=  ADConnection1;
      sql2.SQL.Text := comando;

//       if pos(':',comando)=0 then
       Begin
        sql2.ExecSQL;
        result:=1;
        i:=0;
{        while i < sql2.Fields.Count do
         Begin
           sql2.Fields[i].Required:=false;
           i:=i+1;
         End;}

       End



      except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        result:=-1;
        erro:=TStringList.Create;
        erro.Add('Erro1 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\10'+ado+'_erros.txt');
        erro.Free;
      Except
      end;

    End;
      end;

    End
    Else
     Begin

      try
       TFDQUERY(Self.FindComponent('pr_'+ado)).Close;
       TFDQUERY(Self.FindComponent('pr_'+ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent('pr_'+ado)).SQL.Text := comando;
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));
       if pos(':',comando)=0 then
        Begin
         TFDQUERY(Self.FindComponent('pr_'+ado)).Open;
    //     result:=TFDQUERY(Self.FindComponent('pr_'+ado)).RecordCount;
         End
       Else
         result:=0;

        if Self.FindComponent(ado) = nil then
         begin
           pr:=TDataSetProvider.Create(SELF);
           pr.ResolveToDataSet:=true;
           pr.Options:=[poPropogateChanges];
           pr.DataSet:=TDataSet(Self.FindComponent('pr_'+ado));
           pr.Exported:=true;
           PR.Name:=ado;
         end
         else
           TDataSetProvider(Self.FindComponent(ado)).DataSet:=TDataSet(Self.FindComponent('pr_'+ado));

      except

   on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try
       erro:=TStringList.Create;
        erro.Add('Erro2 :'+e.Message);
       erro.SaveToFile('c:\GoodSales\core\11'+ado+'_erros.txt');
       erro.Free;
      Except
      end;

    End;
      end;

     End;
 End;
//Form1.memo1.lines.add(hora+' - '+timetostr(time)+' - '+comando);
self.Updated;

 Except
   on e:Exception do
    Begin
     // ShowMessage(e.Message);
      try
        erro:=TStringList.Create;
        erro.Add('Erro3 :'+e.Message);
        erro.SaveToFile('c:\GoodSales\core\12'+ado+'_erros.txt');
        erro.Free;
      Except
      end;
    End;

end;
end;
end;
End;


function TSM.ExecSQL2;//()
var
    sql2:TFDQUERY;
    parte:String;
    pr:TDataSetProvider;
Begin
if ado = conexao then
   ado:='_'+ado;

//FThread := TThreadDataSet.Create(False);

while Pos('"', COMANDO) > 0 do
  COMANDO[Pos('"',COMANDO)] := #39;

//Memo1.Lines.Add(comando);

  Begin

  if Self.FindComponent(ado) = nil  then
    Begin
      sql2:=TFDQUERY.Create(Self);
      sql2.OnPostError:=ADQuery1PostError;
      SQL2.AfterOpen:=ADQuery1AfterOpen;

      sql2.UpdateOptions.CheckRequired:=false;
      sql2.UpdateOptions.CheckReadOnly:=false;
      sql2.UpdateOptions.CheckUpdatable:=false;
      sql2.UpdateOptions.FastUpdates:=true;

      sql2.Name :=ado;
      sql2.Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
      sql2.SQL.Text := comando;

      try
        sql2.ExecSQL;
  //      FThread.ExecSQL(sql);
        result:=1;
        sql2.Free;
      except
   on e:Exception do
    Begin

      try
      sql2.free;
      Except
      end;

    End;
      end;

    End
    Else
     Begin
       TFDQUERY(Self.FindComponent(ado)).Close;
       TFDQUERY(Self.FindComponent(ado)).Connection :=  TFDCONNECTION(Self.FindComponent(conexao));
       TFDQUERY(Self.FindComponent(ado)).SQL.Text := comando;
      try
//        FThread.ExecSQL(TFDQuery(self.FindComponent(ado)));
        TFDQUERY(Self.FindComponent(ado)).execSQL;
        result:=1;
      except

   on e:Exception do
    Begin

      try
      Except
      end;
      End;
      end;

     End;
  End;
End;


function TSM.GenerateID(aSequence,conexao: string): Integer;
var
  Qry: TFDQuery;
begin
  try
    if uppercase(conexao) = 'CON' then
       conexao:='O';

    //instancia objeto em memória
    Qry:= TFDQuery.Create(Self);
    Qry.UpdateOptions.CheckRequired:=false;
    //atribui o Connection à sua propriedade
    Qry.Connection := TFDConnection(Self.FindComponent(conexao));

    //atribui comando SQL para execução do Sequence
    Qry.SQL.Add('SELECT max(R_E_C_N_O_) AS TOT FROM '+aSequence);

    //executa o comando SQL
    Qry.Open;

    //retorna o ID
    Result:= Qry.Fields[0].AsInteger+1;
  finally
    //liberda objeto criado da memória
    FreeAndNil(Qry);
  end;
end;



//funcoes  scripts


Function TSM.DeleteF;
Begin
   if DeleteFile(pchar(nome)) then
      result:='1'
   else
      result:='0';
End;


Function TSM.LoadFile;
var memo:TMemo;
begin
if self.FindComponent(nome) = nil then
  Begin
   memo:=TMemo.Create(self);
   memo.Name := nome;
  End;
 memo.Lines.LoadFromFile(arquivo);
 result:=nome;
end;


Function TSM.CreateFile;
var memo:TMemo;
begin
if self.FindComponent(nome) = nil then
  Begin
   memo:=TMemo.Create(self);
   memo.Name := nome;
  End;
 result:=nome;
end;





Function TSM.SaveFile;//(arquivo: string; nome: string)
begin
 if self.FindComponent(nome) <> nil then
   Begin
      TMemo(self.FindComponent(nome)).Lines.SaveToFile(arquivo);
      Result:='1';
   End
  Else
  Result:='0';
end;

Procedure TSM.RemoveFiltro;
Begin
if Self.FindComponent(datas ) <> nil then
 Begin
   TDataSet(Self.FindComponent(datas )).Filtered:=false;
 End;

End;


Function TSM.FiltroSQL;
Begin
   TDataSet(Self.FindComponent(datas )).Filtered:=false;
   TDataSet(Self.FindComponent(datas )).Filter:=filtro;
   TDataSet(Self.FindComponent(datas )).Filtered:=True;
   Result:=TDataSet(Self.FindComponent(datas )).RecordCount;
End;


Function TSM.ProcTES2(codigo,emp,fil,produto,tipo,cf,cod,loja:String):Double;
var cIcmNorte:String;
 nAliqIcm,
 nAliIcm,
 nValPis,
 nValCof,
 nAliqIPI,
 credICMS,
 credIPI:Double;
BEgin
try
nAliqIcm := 0;
nAliIcm  := 0;
nValPis  := 0;
nValCof  := 0;
nAliqIPI := 0;
credICMS := 0;
credIPI  := 0;

if UpperCase(cf) = 'C' then
   GeraSQL2('Select * from SA1'+emp+' Where (D_E_L_E_T_ ="" OR D_E_L_E_T_ is null) and (A1_FILIAL = "'+fil+'" or A1_FILIAL = "") and A1_COD = "'+cod+'" and A1_LOJA = "'+LOJA+'" ','CLI','O')
Else
   GeraSQL2('Select * from SA2'+emp+' Where (D_E_L_E_T_ ="" OR D_E_L_E_T_ is null) and (A2_FILIAL = "'+fil+'" or A2_FILIAL = "" ) and A2_COD = "'+cod+'" and A2_LOJA = "'+LOJA+'" ','CLI','O');

cIcmNorte  := 'AC/AL/AM/AP/BA/CE/DF/ES/GO/MA/MS/MT/PA/PB/PE/PI/SE/RN/RO/RR/TO';

   if fil <> '' then
       GeraSQL2('Select * from SF4'+emp+' Where F4_CODIGO='+#39+codigo+#39+' and D_E_L_E_T_ <> '+#39+'*'+#39,'sqlSF4','O')
   else
       GeraSQL2('Select * from SF4'+emp+' Where F4_CODIGO='+#39+codigo+#39+' and F4_FILIAL="'+fil+'" and D_E_L_E_T_ <> '+#39+'*'+#39,'sqlSF4','O');

       GeraSQL2('Select * from EMPRESA Where SIGLA = "'+emp+'" and FILIAL = "'+fil+'"','EMP','D');

if (uppercase(tipo) = 'PIS') or (uppercase(tipo) = 'COF') then
Begin
       If AsString('sqlSF4','F4_PISCOF')='1' then
        Begin
                // SOMENTE PIS
                nValPis := AsFloat('EMP','TXPIS');
                nValCof := 0;
        End
       Else
      IF AsString('sqlSF4','F4_PISCOF')  = '2' then
      Begin
                // Somente Cofins
                nValPis := 0;
                nValCof := AsFloat('EMP','TXCOFINS');
      End
      Else
      IF AsString('sqlSF4','F4_PISCOF') = '3' then
      Begin
                // Considera Ambos
                nValPis := AsFloat('EMP','TXPIS');
                nValCof := AsFloat('EMP','TXCOFINS');
       End
      Else
      Begin
         // Nào considera Nada
                nValPis := 0;
                nValCof := 0;
      End;
    End;

    if (uppercase(tipo) = 'ICM') then
    Begin
       IF AsString('sqlSF4','F4_ICM') ='S' then
       Begin
        if AsString('emp','UF') = 'PR' then
          Begin
            if cf = 'C' then
             Begin

               If (TRIM(AsString('CLI','A1_TIPO')) = 'S') then
                BEgin
                   nAliqIcm   := 0.18+((nValPis+nValCof)/100);
                   nAliIcm    := 0.18;
                End
               Else
                Begin
                  nAliqIcm   := iIf((AsString('CLI','A1_EST')='PR') OR (AsString('CLI','A1_EST')='EX'),0.12,Iif(pos(AsString('CLI','A1_EST'),cIcmNorte)>0,0.07,0.12)) + ((nValPis+nValCof)/100);
                  nAliIcm    := iIf((AsString('CLI','A1_EST')='PR') OR (AsString('CLI','A1_EST')='EX'),0.12,Iif(pos(AsString('CLI','A1_EST'),cIcmNorte)>0,0.07,0.12));
                End;

             End
             Else
             Begin
                nAliqIcm   := iIf((AsString('CLI','A2_EST')='PR') OR (AsString('CLI','A2_EST')='EX'),0.12,Iif(pos(AsString('CLI','A2_EST'),cIcmNorte)>0,0.07,0.12)) + ((nValPis+nValCof)/100);
                nAliIcm    := iIf((AsString('CLI','A2_EST')='PR') OR (AsString('CLI','A2_EST')='EX'),0.12,Iif(pos(AsString('CLI','A2_EST'),cIcmNorte)>0,0.07,0.12));
             End;
          End
          Else
          if cf = 'C' then
             nAliqIcm:= Iif((AsString('CLI','A1_EST') = 'SP') or (AsString('CLI','A1_EST') = 'EX'),0.18,Iif(pos(AsString('CLI','A1_EST'),cIcmNorte)>0,0.07,0.12))
          else
             nAliqIcm:= Iif((AsString('CLI','A2_EST') = 'SP') or (AsString('CLI','A2_EST') = 'EX'),0.18,Iif(pos(AsString('CLI','A2_EST'),cIcmNorte)>0,0.07,0.12));
       End
      else
       Begin
          nAliqIcm := 0;
          nAliIcm  := 0;
      end;
    End;

    if (uppercase(tipo) = 'IPI') then
     Begin

        IF AsString('sqlSF4','F4_IPI') ='S' then
        Begin
          GeraSQL2('Select * from SB1'+emp+' Where D_E_L_E_T_ <> "*" AND B1_COD = "'+produto+'" and B1_FILIAL = "'+FIL+'"','SB1','O');

          if AsFloat('SB1','B1_IPI') > 0 then
             nAliqIPI:=AsFloat('SB1','B1_IPI')
          Else
          Begin
          IF AsString('SB1','B1_POSIPI') <> '' THEN
            Begin
               GeraSQL2('Select * from SYD'+EMP+' Where D_E_L_E_T_ <> "*" AND YD_TEC = "'+AsString('SB1','B1_POSIPI')+'"','NCM','O');
               nAliqIPI:=AsFloat('NCM','YD_PER_IPI');
            End
          End;

        End;
     End;
    result:=nAliqIcm +  nValPis + nValCof  + nAliqIPI;
Except
   on e:Exception do
    Begin
      try
      Except
      end;

    End;
end;
End;


Function TSM.ProcTES;//(codigo,emp,fil:String;nAliqIcm,nAliIcm,nValPis,nValCof,nAliqIPI,credICMS,credIPI:Double);
var cIcmNorte:String;
 nAliqIcm,
 nAliIcm,
 nValPis,
 nValCof,
 nAliqIPI,
 credICMS,
 credIPI:Double;
BEgin
nAliqIcm := 0;
nAliIcm  := 0;
nValPis  := 0;
nValCof  := 0;
nAliqIPI := 0;
credICMS := 0;
credIPI  := 0;

cIcmNorte  := 'AC/AL/AM/AP/BA/CE/DF/ES/GO/MA/MS/MT/PA/PB/PE/PI/SE/RN/RO/RR/TO';

   if fil <> '' then
       GeraSQL2('Select * from SF4'+emp+' Where F4_CODIGO='+#39+codigo+#39+' and D_E_L_E_T_ <> '+#39+'*'+#39,'sqlSF4','O')
   else
       GeraSQL2('Select * from SF4'+emp+' Where F4_CODIGO='+#39+codigo+#39+' and F4_FILIAL="'+fil+'" and D_E_L_E_T_ <> '+#39+'*'+#39,'sqlSF4','O');

       GeraSQL2('Select * from EMPRESA Where SIGLA = "'+emp+'" and FILIAL = "'+fil+'"','EMP','D');

if (uppercase(tipo) = 'PIS') or (uppercase(tipo) = 'COF') then
Begin
       If AsString('sqlSF4','F4_PISCOF')='1' then
        Begin
                // SOMENTE PIS
                nValPis := AsFloat('EMP','TXPIS');
                nValCof := 0;
        End
       Else
      IF AsString('sqlSF4','F4_PISCOF')  = '2' then
      Begin
                // Somente Cofins
                nValPis := 0;
                nValCof := AsFloat('EMP','TXCOFINS');
      End
      Else
      IF AsString('sqlSF4','F4_PISCOF') = '3' then
      Begin
                // Considera Ambos
                nValPis := AsFloat('EMP','TXPIS');
                nValCof := AsFloat('EMP','TXCOFINS');
       End
      Else
      Begin
         // Nào considera Nada
                nValPis := 0;
                nValCof := 0;
      End;
    End;

    if (uppercase(tipo) = 'ICM') then
    Begin
       IF AsString('sqlSF4','F4_ICM') ='S' then
          nAliqIcm:= Iif(uf = 'SP',0.18,Iif(pos(uf,cIcmNorte)>0,0.07,0.12))
      else
       Begin
          nAliqIcm := 0;
          nAliIcm  := 0;
      end;
    End;

    if (uppercase(tipo) = 'IPI') then
     Begin
       IF AsString('sqlSF4','F4_IPI') ='S' then
        Begin
          GeraSQL2('Select * from SB1'+emp+' Where D_E_L_E_T_ <> "*" AND B1_COD = "'+produto+'" and B1_FILIAL = "'+FIL+'"','SB1','O');
          IF AsString('SB1','B1_POSIPI') <> '' THEN
            Begin
               GeraSQL2('Select * from SYD'+EMP+' Where D_E_L_E_T_ <> "*" AND YD_TEC = "'+AsString('SB1','B1_POSIPI')+'"','NCM','O');
               nAliqIPI:=AsFloat('NCM','YD_PER_IPI');
            End
          Else
              nAliqIPI:=AsFloat('SB1','B1_IPI');
        End;
     End;
    result:=nAliqIcm + nAliIcm  + nValPis + nValCof  + nAliqIPI;
End;


Function TSM.processaFP;
var str1,str2,str3,porc,venc,projeto:String;
    parc,qtd,i,intervalo:Integer;
    dia,mes,ano:wORD;
    datai,ndata:Double;

campof:TFloatField;
campod:TDateTimeField;
Begin

try
  Datai:=strtodate(datas);
Except
  datas:=formatDateTime('dd/mm/yyyy',date);
end;

if Self.FindComponent(dataset ) <> nil then
   Begin
      TJvMemoryData(Self.FindComponent(dataset )).Close;
      TJvMemoryData(Self.FindComponent(dataset )).free;
   End;

 Result:=TJvMemoryData.Create(Self);
 campod:=TDateTimeField.Create(Self);
// campof.DisplayFormat := '###,###,##0.00';
 campod.FieldKind :=fkData;
 campod.FieldName := 'data';
 campod.DataSet := Result;

 campof:=TFloatField.Create(Self);
 campof.DisplayFormat := '###,###,##0.00';
 campof.FieldKind :=fkData;
 campof.FieldName := 'Valor';
 campof.DataSet := Result;
 Result.Name :=dataset ;
 Result.Open;

GeraSQL2('Select * from SE4'+Emp+' Where E4_CODIGO = '+#39+codigo+#39+' and (E4_FILIAL = '+#39+fili+#39+' OR E4_FILIAL = "" OR E4_FILIAL IS NULL) and D_E_L_E_T_ <> '+#39+'*'+#39,'fp','O');

  if (AsString('fp','E4_TIPO') = '1') or (AsString('fp','E4_TIPO')= 'B') then
   Begin
     str1 := trim(AsString('fp','E4_COND'))+',';
     parc:=0;

    if length(str1) > 0 then
      Begin
         while pos(',',str1) <> 0 do
          Begin
//            str2:=copy(str1,1,pos(',',str1)-1);
            str1:=copy(str1,pos(',',str1)+1,length(str1));

            parc:=parc+1;

            if str1 = ',' then
               str1:='';
          End;
       End;

     str1 := trim(AsString('fp','E4_COND'))+',';
     datai:=0;
     if length(str1) > 0 then
      Begin
         while pos(',',str1) <> 0 do
          Begin
            str2:=copy(str1,1,pos(',',str1)-1);
            str1:=copy(str1,pos(',',str1)+1,length(str1));

            result.Append;
            result.FieldByName('Valor').AsFloat := valor / parc;

            if datai = 0 then
            Begin
              if AsString('fp','E4_DDD')='D' then
                 Datai:=strtodate(datas);
               if AsString('fp','E4_DDD')='L' then
                  Datai:=strtodate(datas);
               if AsString('fp','E4_DDD')='S' then
                  Datai:=strtodate(datas)+6;
               if AsString('fp','E4_DDD')='Q' then
                  Datai:=strtodate(datas)+14;
               if AsString('fp','E4_DDD')='F' then
                  Datai:=strtodate(datas)+29;
               if AsString('fp','E4_DDD')='Z' then
                  Datai:=strtodate(datas)+9;
             End;
             if Datai = 0 then
                Datai:=strtodate(datas);

             ndata:=Datai+strtofloat(str2);
             Result.FieldByName('Data').AsDateTime := ndata;
             Result.Post;
            if str1 = ',' then
               str1:='';
          End;
      End;
    End
    Else

  if (AsString('fp','E4_TIPO') = '2') then
   Begin
     str1 := trim(AsString('fp','E4_CODIGO'));
     parc:=0;

    if length(str1) > 0 then
       parc:=strToint(copy(str1,2,1));

     datai:=0;

      Begin
      i:=1;
         while i <= parc do
          Begin
            result.Append;
            result.FieldByName('Valor').AsFloat := valor / parc;
            if datai = 0 then
              datai := strtodate(datas)+(AsInteger('fp','E4_COND') * (strToint(copy(str1,1,1))) )
            else
              ndata:=Datai+(AsInteger('fp','E4_COND') * (strToint(copy(str1,3,1))) );

            Result.FieldByName('Data').AsDateTime := ndata;
            Result.Post;
            i:=i+1;
          End;
      End;
    End
    Else
    if AsString('fp','E4_TIPO') = '3' then
     BEgin
          str1 := trim(AsString('fp','E4_COND'));
          datai:=0;
          i:=1;
          parc:=StrToInt(copy(str1,1,pos(',',str1)-1));
          str1 := copy(str1,pos(',',str1)+1,length(str1));
          qtd:=StrToInt(copy(str1,1,pos(',',str1)-1));
          str1 := copy(str1,pos(',',str1)+1,length(str1));


               if AsString('fp','E4_DDD') ='D' then
                 Datai:=strtodate(datas);
               if AsString('fp','E4_DDD') ='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD') ='S' then
                  Datai:=strtodate(datas)+7;
               if AsString('fp','E4_DDD') ='Q' then
                  Datai:=strtodate(datas)+15;
               if AsString('fp','E4_DDD') ='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD') ='F' then
                  Datai:=strtodate(datas)+30;
               if AsString('fp','E4_DDD') ='Z' then
                  Datai:=strtodate(datas)+10;

               if Datai = 0 then
                Datai:=strtodate(datas);

         IF pos(',',str1) > 0 THEN
            str2 :=copy(str1,1,pos(',',str1)-1)
         ELSE
            str2 :=str1;


          while i <= parc do
           Begin
            result.Append;
            Result.FieldByName('Valor').AsFloat := valor / parc;

            decodedate(datai,ano,mes,dia);

            str3:= str1;
            while strtoint(str2) <= dia do
             Begin
               str3 := copy(str3,pos(',',str3)+1,length(str3));
               if pos(',',str3)>0 then
                  str2 := copy(str3,1,pos(',',str3)-1)
               else
               Begin
                  str2 := str3;
                  Break;
               End;

             End;


            Datai:=StrToDate(str2+'/'+inttostr(mes)+'/'+inttostr(ano));
            Result.FieldByName('Data').AsDateTime :=Datai;
            Result.post;
            Datai:=Datai+qtd;
            i:=i+1;
           End;
      ENd
     Else
     if AsString('fp','E4_TIPO') = '4' then
     Begin
        str1 := trim(AsString('fp','E4_COND'));
        parc:= strToint(copy(str1,1,pos(',',str1)-1));
        str2:=trim(copy(str1,pos(',',str1)+1,1000));
        intervalo:=strToint(copy(str2,1,pos(',',str2)-1));
        datai:=0;
         i:=1;
         while i <= parc do
          Begin
            result.Append;
            result.FieldByName('Valor').AsFloat := valor / parc;
            if datai = 0 then
             Begin
               if AsString('fp','E4_DDD') ='D' then
                 Datai:=strtodate(datas);
               if AsString('fp','E4_DDD') ='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD') ='S' then
                  Datai:=strtodate(datas)+7;
               if AsString('fp','E4_DDD') ='Q' then
                  Datai:=strtodate(datas)+15;
               if AsString('fp','E4_DDD') ='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD') ='F' then
                  Datai:=strtodate(datas)+30;
               if AsString('fp','E4_DDD') ='Z' then
                  Datai:=strtodate(datas)+10;

             if Datai = 0 then
                Datai:=strtodate(datas);


                while DayofWeek(datai) <> StrToInt(copy(str1,length(str1),1)) do
                  Datai:=Datai+1;

              End
            else

              datai:=Datai+intervalo;

              while DayofWeek(datai) <> StrToInt(copy(str1,length(str1),1)) do
                  Datai:=Datai+1;


            Result.FieldByName('Data').AsDateTime := datai;
            Result.Post;
            i:=i+1;
          End;
      End
     Else
     if AsString('fp','E4_TIPO') = '8' then
      Begin
        str1 := trim(AsString('fp','E4_COND'));

        str2 := copy(str1,2,pos(',[',str1)-3)+',';

        str3 := copy(str1,pos(',[',str1)+2,length(str1)-1);
        str3 := copy(str3,1,length(str3)-1)+',';

        i:=1;
        datai:=0;
        parc:=0;
       str1 := trim(AsString('fp','E4_COND'))+',';
       if length(str1) > 0 then
       Begin
         while pos(',',str1) <> 0 do
          Begin
            str1:=copy(str1,pos(',',str1)+1,length(str1));
            parc:=parc+1;
            if str1 = ',' then
               str1:= '';
          End;
       End;

       While i <= parc/2 do
        Begin

            venc:=copy(str2,1,pos(',',str2)-1);
            str2:=copy(str2,pos(',',str2)+1,length(str2));

            porc:=copy(str3,1,pos(',',str3)-1);
            str3:=copy(str3,pos(',',str3)+1,length(str3));


            result.Append;
            Result.FieldByName('Valor').AsFloat := valor * (strtofloat(porc)/100);

            if datai = 0 then
            Begin
              if AsString('fp','E4_DDD') ='D' then
                 Datai:=strtodate(datas);
               if AsString('fp','E4_DDD') ='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD')='S' then
                  Datai:=strtodate(datas)+7;
               if AsString('fp','E4_DDD')='Q' then
                  Datai:=strtodate(datas)+15;
               if AsString('fp','E4_DDD')='L' then
                  Datai:=strtodate(datas)+1;
               if AsString('fp','E4_DDD')='F' then
                  Datai:=strtodate(datas)+30;
               if AsString('fp','E4_DDD')='Z' then
                  Datai:=strtodate(datas)+10;
             if Datai = 0 then
                Datai:=strtodate(datas);


              Result.FieldByName('Data').AsDateTime :=Datai;
             End
             Else
              Result.FieldByName('Data').AsDateTime :=Datai+strtofloat(venc);

             Result.Post;


         i:=i+1;
        End;



      End;



End;


Procedure TSM.Terminate;
var i:Integer;
    sec:String;
Begin
i:=0;
sec:=inttostr(secao);


i:=0;
while i <= Self.ComponentCount - 1 do
 Begin
 try

   if (UPPERCASE(Self.Components[i].ClassName) = 'TFDQuery')  then
        BEGIN
         IF TFDQuery(Self.Components[i]).Active then
            TFDQuery(Self.Components[i]).Close;

            Try
            Except
               on e:Exception do
    Begin

      try
      Except
      end;

    End;

            End;

        END;

   if (UPPERCASE(Self.Components[i].ClassName) = uppercase('tJvMemoryData')) then
        BEGIN
         IF TJvMemoryData(Self.Components[i]).Active then
            TJvMemoryData(Self.Components[i]).Close;

            Try
            Except
               on e:Exception do
    Begin

      try
      Except
      end;

    End;

            End;

        END;

      if (UPPERCASE(Self.Components[i].ClassName) = uppercase('TFloatField')) then
        BEGIN
           Try
               TFloatField(Self.Components[i]).Free;
               i:=i-1;
            Except
               on e:Exception do
    Begin

      try
      Except
      end;

    End;

            End;

        END;

      if (UPPERCASE(Self.Components[i].ClassName) = uppercase('TStringField')) then
        BEGIN
           Try
               TStringField(Self.Components[i]).Free;
               i:=i-1;
            Except
               on e:Exception do
    Begin

      try
      Except
      end;

    End;

            End;

        END;

      if (UPPERCASE(Self.Components[i].ClassName) = uppercase('TIntegerField')) then
        BEGIN
           Try
               TIntegerField(Self.Components[i]).Free;
               i:=i-1;
            Except
               on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;

    End;

            End;

        END;

      if (UPPERCASE(Self.Components[i].ClassName) = uppercase('TMemoField')) then
        BEGIN
           Try
               TMemoField(Self.Components[i]).Free;
               i:=i-1;
            Except
               on e:Exception do
    Begin

      try
      Except
      end;

    End;

            End;

        END;


   i:=i+1;
Except
   on e:Exception do
    Begin
      try
      Except
      end;
     I:=I+1;
    End;

end;

 End;
End;

function TSM.SendMail;//()
var anexos: array of string;
i:Integer;
begin

try

  result:=true;
  geraSQL2('Select * from SMTP Where NOME='+#39+CONTA+#39,'CONTAS','DEFS');

   if (clSmtp1.Active) then
       clSmtp1.Close;

    clSmtp1.Server := AsString('contas','Servidor');
    clSmtp1.Port := AsInteger('contas','Porta');

    clSmtp1.UserName := AsString('contas','Usuario');
    clSmtp1.Password := AsString('contas','Senha');

    if AsString('contas','TLS')='T' then
    begin
      clSmtp1.UseTLS := ctExplicit;
    end else
    if AsString('contas','TLS')='A' then
    begin
      clSmtp1.UseTLS :=ctAutomatic;
    end else
    if AsString('contas','TLS')='I' then
    begin
      clSmtp1.UseTLS :=ctImplicit;
    end else

    begin
      clSmtp1.UseTLS := ctNone;
    end;

    clSmtp1.Open();
    try
      if trim(anexo) <> '' then
       Begin
        if pos(',',anexo)>0 then
         begin
           i:=0;
           anexo:=anexo+',';
           while pos(',',anexo) > 0 do
            Begin
              SetLength(anexos,i+1);
              anexos[i]:=trim(copy(anexo,1,pos(',',anexo)-1));
              anexo:=copy(anexo,pos(',',anexo)+1,100000);
              i:=i+1;
              if anexo=',' then
                 anexo:='';
            End;

         end
         Else
           anexos[0]:=anexo;

        clMailMessage1.BuildMessage('',msg,[],anexos);
       End
          else
             clMailMessage1.BuildMessage('',msg);

      clMailMessage1.From.FullAddress := AsString('contas','email');
      clMailMessage1.ToList.EmailAddresses := para;
      clMailMessage1.Subject := assunto;

      clSmtp1.Send(clMailMessage1);
      log.Add(para+' - '+TimetoStr(time)+' - Enviado com Sucesso!');
      //ShowMessage('The message was sent successfully.');
    finally
      clSmtp1.Close();
    end;

Except
On E:Exception do
    Begin
       log.Add(TimetoStr(time)+' - Erro de Envio :'+e.Message);
    End;
end;
log.SaveToFile('C:\goodsales\core\logr.txt');

{dPOP3:= TIdPOP3.Create(self);
IdSMTP:= TIdSMTP.Create(self);
IdMessage1:= TIdMessage.Create(self);


if AsString('contas','POP3') <> '' then
Begin
try
  IdPOP3.Host := AsString('contas','POP3');
  IdPOP3.Username := AsString('Contas','Usuario');
  IdPOP3.Password := AsString('Contas','Senha');
  IdPOP3.Port   := AsInteger('Contas','PortaPOP3');
  IdPOP3.Connect;
Except

end;
End;

  IdMessage1.Subject := ASSUNTO;
  IdMessage1.ContentType := 'text/html';

    with TIdText.Create(IdMessage1.MessageParts, nil) do begin
      Body.Text := MSG;
      ContentType := 'text/html';
    end;

  // Remetente
  IdMessage1.From.Address := AsString('contas','Email');
  IdMessage1.From.Name := AsString('contas','de');

  // Destinatario
  IdMessage1.Recipients.EMailAddresses := Para;
 // idMessage1.BccList.EMailAddresses:='audit.workflow@elsys.com.br';

   if FileExists(ANEXO) then
   Begin
   with TIdAttachmentFile.Create(IdMessage1.MessageParts, ANEXO) do begin

    if pos('.EZ',uppercase(ANEXO))>0 then       ContentType := 'application/andrew-inset';
    if pos('.HQX',uppercase(ANEXO))>0 then       ContentType := 'application/mac-binhex40';
    if pos('.CPT',uppercase(ANEXO))>0 then       ContentType := 'application/mac-compactpro';
    if pos('.MATHML',uppercase(ANEXO))>0 then       ContentType := 'application/mathml+xml';
    if pos('.DOC',uppercase(ANEXO))>0 then       ContentType := 'application/msword';
    if pos('.BIN DMS LHA LZH EXE CLASS SO DLL',uppercase(ANEXO))>0 then       ContentType := 'application/octet-stream';
    if pos('.ODA',uppercase(ANEXO))>0 then       ContentType := 'application/oda';
    if pos('.OGG',uppercase(ANEXO))>0 then       ContentType := 'application/ogg';
    if pos('.PDF',uppercase(ANEXO))>0 then       ContentType := 'application/pdf';
    if pos('.AI EPS PS',uppercase(ANEXO))>0 then       ContentType := 'application/postscript';
    if pos('.RDF',uppercase(ANEXO))>0 then       ContentType := 'application/rdf+xml';
    if pos('.GRAM',uppercase(ANEXO))>0 then       ContentType := 'application/srgs';
    if pos('.GRXML',uppercase(ANEXO))>0 then       ContentType := 'application/srgs+xml';
    if pos('.MIF',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.mif';
    if pos('.XUL',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.mozilla.xul+xml';
    if pos('.XLS',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.ms-excel';
    if pos('.PPT',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.ms-powerpoint';
    if pos('.WBXML',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.wap.wbxml';
    if pos('.VXML',uppercase(ANEXO))>0 then       ContentType := 'application/voicexml+xml';
    if pos('.BCPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-bcpio';
    if pos('.VCD',uppercase(ANEXO))>0 then       ContentType := 'application/x-cdlink';
    if pos('.PGN',uppercase(ANEXO))>0 then       ContentType := 'application/x-chess-pgn';
    if pos('.CPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-cpio';
    if pos('.CSH',uppercase(ANEXO))>0 then       ContentType := 'application/x-csh';
    if pos('.DVI',uppercase(ANEXO))>0 then       ContentType := 'application/x-dvi';
    if pos('.SPL',uppercase(ANEXO))>0 then       ContentType := 'application/x-futuresplash';
    if pos('.GTAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-gtar';
    if pos('.HDF',uppercase(ANEXO))>0 then       ContentType := 'application/x-hdf';
    if pos('.PHP',uppercase(ANEXO))>0 then       ContentType := 'application/x-httpd-php';
    if pos('.PHPS',uppercase(ANEXO))>0 then       ContentType := 'application/x-httpd-php-source';
    if pos('.JS',uppercase(ANEXO))>0 then       ContentType := 'application/x-javascript';
    if pos('.LATEX',uppercase(ANEXO))>0 then       ContentType := 'application/x-latex';
    if pos('.CRL',uppercase(ANEXO))>0 then       ContentType := 'application/x-pkcs7-crl';
    if pos('.SH',uppercase(ANEXO))>0 then       ContentType := 'application/x-sh';
    if pos('.SHAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-shar';
    if pos('.SWF',uppercase(ANEXO))>0 then       ContentType := 'application/x-shockwave-flash';
    if pos('.SIT',uppercase(ANEXO))>0 then       ContentType := 'application/x-stuffit';
    if pos('.SV4CPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-sv4cpio';
    if pos('.SV4CRC',uppercase(ANEXO))>0 then       ContentType := 'application/x-sv4crc';
    if pos('.TGZ',uppercase(ANEXO))>0 then       ContentType := 'application/x-tar';
    if pos('.TCL',uppercase(ANEXO))>0 then       ContentType := 'application/x-tcl';
    if pos('.TEX',uppercase(ANEXO))>0 then       ContentType := 'application/x-tex';
    if pos('.TEXINFO',uppercase(ANEXO))>0 then       ContentType := 'application/x-texinfo';
    if pos('.MAN',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-man';
    if pos('.ME',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-me';
    if pos('.MS',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-ms';
    if pos('.USTAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-ustar';
    if pos('.SRC',uppercase(ANEXO))>0 then       ContentType := 'application/x-wais-source';
    if pos('.CRT',uppercase(ANEXO))>0 then       ContentType := 'application/x-x509-ca-cert';
    if pos('.XHTML',uppercase(ANEXO))>0 then       ContentType := 'application/xhtml+xml';
    if pos('.XML',uppercase(ANEXO))>0 then       ContentType := 'application/xml';
    if pos('.DTD',uppercase(ANEXO))>0 then       ContentType := 'application/xml-dtd';
    if pos('.XSLT',uppercase(ANEXO))>0 then       ContentType := 'application/xslt+xml';
    if pos('.ZIP',uppercase(ANEXO))>0 then       ContentType := 'application/zip';
    if pos('.MID',uppercase(ANEXO))>0 then       ContentType := 'audio/midi';
    if pos('.MPGA',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP2',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP3',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP5',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.AIF',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.AIFF',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.AIFC',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.M3U',uppercase(ANEXO))>0 then       ContentType := 'audio/x-mpegurl';
    if pos('.RAM',uppercase(ANEXO))>0 then       ContentType := 'audio/x-pn-realaudio';
    if pos('.RPM',uppercase(ANEXO))>0 then       ContentType := 'audio/x-pn-realaudio-plugin';
    if pos('.RA',uppercase(ANEXO))>0 then       ContentType := 'audio/x-realaudio';
    if pos('.WAV',uppercase(ANEXO))>0 then       ContentType := 'audio/x-wav';
    if pos('.PDB',uppercase(ANEXO))>0 then       ContentType := 'chemical/x-pdb';
    if pos('.XYZ',uppercase(ANEXO))>0 then       ContentType := 'chemical/x-xyz';
    if pos('.BMP',uppercase(ANEXO))>0 then       ContentType := 'image/bmp';
    if pos('.CGM',uppercase(ANEXO))>0 then       ContentType := 'image/cgm';
    if pos('.GIF',uppercase(ANEXO))>0 then       ContentType := 'image/gif';
    if pos('.IEF',uppercase(ANEXO))>0 then       ContentType := 'image/ief';
    if pos('.JPEG',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.JPG',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.JPE',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.PNG',uppercase(ANEXO))>0 then       ContentType := 'image/png';
    if pos('.SVG',uppercase(ANEXO))>0 then       ContentType := 'image/svg+xml';
    if pos('.TIFF',uppercase(ANEXO))>0 then       ContentType := 'image/tiff';
    if pos('.TIF',uppercase(ANEXO))>0 then       ContentType := 'image/tiff';
    if pos('.DJVU DJV',uppercase(ANEXO))>0 then       ContentType := 'image/vnd.djvu';
    if pos('.RAS',uppercase(ANEXO))>0 then       ContentType := 'image/x-cmu-raster';
    if pos('.ICO',uppercase(ANEXO))>0 then       ContentType := 'image/x-icon';
    if pos('.PNM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-anymap';
    if pos('.PBM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-bitmap';
    if pos('.PGM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-graymap';
    if pos('.PPM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-pixmap';
    if pos('.RGB',uppercase(ANEXO))>0 then       ContentType := 'image/x-rgb';
    if pos('.XBM',uppercase(ANEXO))>0 then       ContentType := 'image/x-xbitmap';
    if pos('.XPM',uppercase(ANEXO))>0 then       ContentType := 'image/x-xpixmap';
    if pos('.XWD',uppercase(ANEXO))>0 then       ContentType := 'image/x-xwindowdump';
    if pos('.ICS IFB',uppercase(ANEXO))>0 then       ContentType := 'text/calendar';
    if pos('.CSS',uppercase(ANEXO))>0 then       ContentType := 'text/css';
    if pos('.SHTML',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.HTML',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.HTM',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.TXT',uppercase(ANEXO))>0 then       ContentType := 'text/plain';
    if pos('.RTX',uppercase(ANEXO))>0 then       ContentType := 'text/richtext';
    if pos('.RTF',uppercase(ANEXO))>0 then       ContentType := 'text/rtf';
    if pos('.SGML SGM',uppercase(ANEXO))>0 then       ContentType := 'text/sgml';
    if pos('.TSV',uppercase(ANEXO))>0 then       ContentType := 'text/tab-separated-values';
    if pos('.WML',uppercase(ANEXO))>0 then       ContentType := 'text/vnd.wap.wml';
    if pos('.WMLS',uppercase(ANEXO))>0 then       ContentType := 'text/vnd.wap.wmlscript';
    if pos('.ETX',uppercase(ANEXO))>0 then       ContentType := 'text/x-setext';
    if pos('.MPEG',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MPG',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MPE',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MOV',uppercase(ANEXO))>0 then       ContentType := 'video/quicktime';
    if pos('.MXU',uppercase(ANEXO))>0 then       ContentType := 'video/vnd.mpegurl';
    if pos('.AVI',uppercase(ANEXO))>0 then       ContentType := 'video/x-msvideo';
    if pos('.MOVIE',uppercase(ANEXO))>0 then       ContentType := 'video/x-sgi-movie';
    if pos('.ICE',uppercase(ANEXO))>0 then       ContentType := 'x-conference/x-cooltalk';

     FileName := ExtractFileName(ANEXO);
   end;
   End;
  IdMessage1.ContentType := 'multipart/mixed';



  // Autenticacao - Use apenas quando o servidor exigir
  IdSMTP.AuthType := satDefault;


  if AsString('contas','TLS') ='T'  then
   Begin
    //IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    IdSMTP.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
    IdSMTP.UseTLS:= utUseRequireTLS;

    IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method:=TIdSSLVersion(AsInteger('contas','TLS'));


    //IdSSL.SSLOptions.Method := sslvSSLv3;
   // IdSSL.SSLOptions.Mode := sslmClient;
   End;


  IdSMTP.Username := AsString('contas','Usuario');
  IdSMTP.Password := AsString('contas','Senha');
  // Dados do Servidor
  IdSMTP.Host := AsString('contas','Servidor');
  IdSMTP.Port := AsInteger('contas','Porta');

 try
   IdSMTP.Connect;

  if AsString('contas','TLS') ='T'  then
     try
       IdSMTP.Authenticate();
     except
     end;

   log.Add(TimetoStr(time)+' - Inicio de Envio '+para);
   IdSMTP.Send(IdMessage1);
   log.Add(TimetoStr(time)+' - Email Enviado '+para);

  Except
On E:Exception do
    Begin
       log.Add(TimetoStr(time)+' - Erro de Envio :'+e.Message);
      //ShowMessage(e.Message);
       result:=false;
      // ExecSQL('INSERT INTO EMAILERRO VALUES (1000,'',getDate())

    End;
     End;
    log.SaveToFile('C:\goodsales\core\logr.txt');
    IdSMTP.Disconnect;
    IdPOP3.Disconnect;
    IdPOP3.Free;
    IdSMTP.Free;
    IdMessage1.Free;
    if idSSL <> nil then
     idSSL.Free;
Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
      result:=false;
    End;

end;}
end;

function TSM.SendMailID;//()
var
    IdPOP3: TIdPOP3;
    IdSMTP: TIdSMTP;
    IdMessage1: TIdMessage;
    erro:Boolean;
    IdSSL: TIdSSLIOHandlerSocketOpenSSL;
begin

try
result:=true;
geraSQL2('Select * from SMTP Where NOME='+#39+CONTA+#39,'CONTAS','DEFS');

IdPOP3:= TIdPOP3.Create(self);
IdSMTP:= TIdSMTP.Create(self);
IdMessage1:= TIdMessage.Create(self);


if AsString('contas','POP3') <> '' then
Begin
try
  IdPOP3.Host := AsString('contas','POP3');
  IdPOP3.Username := AsString('Contas','Usuario');
  IdPOP3.Password := AsString('Contas','Senha');
  IdPOP3.Port   := AsInteger('Contas','PortaPOP3');
  IdPOP3.Connect;
Except

end;
End;

  IdMessage1.Subject := ASSUNTO;
  IdMessage1.ContentType := 'text/html';

    with TIdText.Create(IdMessage1.MessageParts, nil) do begin
      Body.Text := MSG;
      ContentType := 'text/html';
    end;

  // Remetente
  IdMessage1.From.Address := AsString('contas','Email');
  IdMessage1.From.Name := AsString('contas','de');

  // Destinatario
  IdMessage1.Recipients.EMailAddresses := Para;
  //idMessage1.BccList.EMailAddresses:='audit.workflow@elsys.com.br';

   if FileExists(ANEXO) then
   Begin
   with TIdAttachmentFile.Create(IdMessage1.MessageParts, ANEXO) do begin

    if pos('.EZ',uppercase(ANEXO))>0 then       ContentType := 'application/andrew-inset';
    if pos('.HQX',uppercase(ANEXO))>0 then       ContentType := 'application/mac-binhex40';
    if pos('.CPT',uppercase(ANEXO))>0 then       ContentType := 'application/mac-compactpro';
    if pos('.MATHML',uppercase(ANEXO))>0 then       ContentType := 'application/mathml+xml';
    if pos('.DOC',uppercase(ANEXO))>0 then       ContentType := 'application/msword';
    if pos('.BIN DMS LHA LZH EXE CLASS SO DLL',uppercase(ANEXO))>0 then       ContentType := 'application/octet-stream';
    if pos('.ODA',uppercase(ANEXO))>0 then       ContentType := 'application/oda';
    if pos('.OGG',uppercase(ANEXO))>0 then       ContentType := 'application/ogg';
    if pos('.PDF',uppercase(ANEXO))>0 then       ContentType := 'application/pdf';
    if pos('.AI EPS PS',uppercase(ANEXO))>0 then       ContentType := 'application/postscript';
    if pos('.RDF',uppercase(ANEXO))>0 then       ContentType := 'application/rdf+xml';
    if pos('.GRAM',uppercase(ANEXO))>0 then       ContentType := 'application/srgs';
    if pos('.GRXML',uppercase(ANEXO))>0 then       ContentType := 'application/srgs+xml';
    if pos('.MIF',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.mif';
    if pos('.XUL',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.mozilla.xul+xml';
    if pos('.XLS',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.ms-excel';
    if pos('.PPT',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.ms-powerpoint';
    if pos('.WBXML',uppercase(ANEXO))>0 then       ContentType := 'application/vnd.wap.wbxml';
    if pos('.VXML',uppercase(ANEXO))>0 then       ContentType := 'application/voicexml+xml';
    if pos('.BCPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-bcpio';
    if pos('.VCD',uppercase(ANEXO))>0 then       ContentType := 'application/x-cdlink';
    if pos('.PGN',uppercase(ANEXO))>0 then       ContentType := 'application/x-chess-pgn';
    if pos('.CPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-cpio';
    if pos('.CSH',uppercase(ANEXO))>0 then       ContentType := 'application/x-csh';
    if pos('.DVI',uppercase(ANEXO))>0 then       ContentType := 'application/x-dvi';
    if pos('.SPL',uppercase(ANEXO))>0 then       ContentType := 'application/x-futuresplash';
    if pos('.GTAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-gtar';
    if pos('.HDF',uppercase(ANEXO))>0 then       ContentType := 'application/x-hdf';
    if pos('.PHP',uppercase(ANEXO))>0 then       ContentType := 'application/x-httpd-php';
    if pos('.PHPS',uppercase(ANEXO))>0 then       ContentType := 'application/x-httpd-php-source';
    if pos('.JS',uppercase(ANEXO))>0 then       ContentType := 'application/x-javascript';
    if pos('.LATEX',uppercase(ANEXO))>0 then       ContentType := 'application/x-latex';
    if pos('.CRL',uppercase(ANEXO))>0 then       ContentType := 'application/x-pkcs7-crl';
    if pos('.SH',uppercase(ANEXO))>0 then       ContentType := 'application/x-sh';
    if pos('.SHAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-shar';
    if pos('.SWF',uppercase(ANEXO))>0 then       ContentType := 'application/x-shockwave-flash';
    if pos('.SIT',uppercase(ANEXO))>0 then       ContentType := 'application/x-stuffit';
    if pos('.SV4CPIO',uppercase(ANEXO))>0 then       ContentType := 'application/x-sv4cpio';
    if pos('.SV4CRC',uppercase(ANEXO))>0 then       ContentType := 'application/x-sv4crc';
    if pos('.TGZ',uppercase(ANEXO))>0 then       ContentType := 'application/x-tar';
    if pos('.TCL',uppercase(ANEXO))>0 then       ContentType := 'application/x-tcl';
    if pos('.TEX',uppercase(ANEXO))>0 then       ContentType := 'application/x-tex';
    if pos('.TEXINFO',uppercase(ANEXO))>0 then       ContentType := 'application/x-texinfo';
    if pos('.MAN',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-man';
    if pos('.ME',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-me';
    if pos('.MS',uppercase(ANEXO))>0 then       ContentType := 'application/x-troff-ms';
    if pos('.USTAR',uppercase(ANEXO))>0 then       ContentType := 'application/x-ustar';
    if pos('.SRC',uppercase(ANEXO))>0 then       ContentType := 'application/x-wais-source';
    if pos('.CRT',uppercase(ANEXO))>0 then       ContentType := 'application/x-x509-ca-cert';
    if pos('.XHTML',uppercase(ANEXO))>0 then       ContentType := 'application/xhtml+xml';
    if pos('.XML',uppercase(ANEXO))>0 then       ContentType := 'application/xml';
    if pos('.DTD',uppercase(ANEXO))>0 then       ContentType := 'application/xml-dtd';
    if pos('.XSLT',uppercase(ANEXO))>0 then       ContentType := 'application/xslt+xml';
    if pos('.ZIP',uppercase(ANEXO))>0 then       ContentType := 'application/zip';
    if pos('.MID',uppercase(ANEXO))>0 then       ContentType := 'audio/midi';
    if pos('.MPGA',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP2',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP3',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.MP5',uppercase(ANEXO))>0 then       ContentType := 'audio/mpeg';
    if pos('.AIF',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.AIFF',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.AIFC',uppercase(ANEXO))>0 then       ContentType := 'audio/x-aiff';
    if pos('.M3U',uppercase(ANEXO))>0 then       ContentType := 'audio/x-mpegurl';
    if pos('.RAM',uppercase(ANEXO))>0 then       ContentType := 'audio/x-pn-realaudio';
    if pos('.RPM',uppercase(ANEXO))>0 then       ContentType := 'audio/x-pn-realaudio-plugin';
    if pos('.RA',uppercase(ANEXO))>0 then       ContentType := 'audio/x-realaudio';
    if pos('.WAV',uppercase(ANEXO))>0 then       ContentType := 'audio/x-wav';
    if pos('.PDB',uppercase(ANEXO))>0 then       ContentType := 'chemical/x-pdb';
    if pos('.XYZ',uppercase(ANEXO))>0 then       ContentType := 'chemical/x-xyz';
    if pos('.BMP',uppercase(ANEXO))>0 then       ContentType := 'image/bmp';
    if pos('.CGM',uppercase(ANEXO))>0 then       ContentType := 'image/cgm';
    if pos('.GIF',uppercase(ANEXO))>0 then       ContentType := 'image/gif';
    if pos('.IEF',uppercase(ANEXO))>0 then       ContentType := 'image/ief';
    if pos('.JPEG',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.JPG',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.JPE',uppercase(ANEXO))>0 then       ContentType := 'image/jpeg';
    if pos('.PNG',uppercase(ANEXO))>0 then       ContentType := 'image/png';
    if pos('.SVG',uppercase(ANEXO))>0 then       ContentType := 'image/svg+xml';
    if pos('.TIFF',uppercase(ANEXO))>0 then       ContentType := 'image/tiff';
    if pos('.TIF',uppercase(ANEXO))>0 then       ContentType := 'image/tiff';
    if pos('.DJVU DJV',uppercase(ANEXO))>0 then       ContentType := 'image/vnd.djvu';
    if pos('.RAS',uppercase(ANEXO))>0 then       ContentType := 'image/x-cmu-raster';
    if pos('.ICO',uppercase(ANEXO))>0 then       ContentType := 'image/x-icon';
    if pos('.PNM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-anymap';
    if pos('.PBM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-bitmap';
    if pos('.PGM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-graymap';
    if pos('.PPM',uppercase(ANEXO))>0 then       ContentType := 'image/x-portable-pixmap';
    if pos('.RGB',uppercase(ANEXO))>0 then       ContentType := 'image/x-rgb';
    if pos('.XBM',uppercase(ANEXO))>0 then       ContentType := 'image/x-xbitmap';
    if pos('.XPM',uppercase(ANEXO))>0 then       ContentType := 'image/x-xpixmap';
    if pos('.XWD',uppercase(ANEXO))>0 then       ContentType := 'image/x-xwindowdump';
    if pos('.ICS IFB',uppercase(ANEXO))>0 then       ContentType := 'text/calendar';
    if pos('.CSS',uppercase(ANEXO))>0 then       ContentType := 'text/css';
    if pos('.SHTML',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.HTML',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.HTM',uppercase(ANEXO))>0 then       ContentType := 'text/html';
    if pos('.TXT',uppercase(ANEXO))>0 then       ContentType := 'text/plain';
    if pos('.RTX',uppercase(ANEXO))>0 then       ContentType := 'text/richtext';
    if pos('.RTF',uppercase(ANEXO))>0 then       ContentType := 'text/rtf';
    if pos('.SGML SGM',uppercase(ANEXO))>0 then       ContentType := 'text/sgml';
    if pos('.TSV',uppercase(ANEXO))>0 then       ContentType := 'text/tab-separated-values';
    if pos('.WML',uppercase(ANEXO))>0 then       ContentType := 'text/vnd.wap.wml';
    if pos('.WMLS',uppercase(ANEXO))>0 then       ContentType := 'text/vnd.wap.wmlscript';
    if pos('.ETX',uppercase(ANEXO))>0 then       ContentType := 'text/x-setext';
    if pos('.MPEG',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MPG',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MPE',uppercase(ANEXO))>0 then       ContentType := 'video/mpeg';
    if pos('.MOV',uppercase(ANEXO))>0 then       ContentType := 'video/quicktime';
    if pos('.MXU',uppercase(ANEXO))>0 then       ContentType := 'video/vnd.mpegurl';
    if pos('.AVI',uppercase(ANEXO))>0 then       ContentType := 'video/x-msvideo';
    if pos('.MOVIE',uppercase(ANEXO))>0 then       ContentType := 'video/x-sgi-movie';
    if pos('.ICE',uppercase(ANEXO))>0 then       ContentType := 'x-conference/x-cooltalk';

     FileName := ExtractFileName(ANEXO);
   end;
   End;
  IdMessage1.ContentType := 'multipart/mixed';



  // Autenticacao - Use apenas quando o servidor exigir
  IdSMTP.AuthType := satDefault;


  if AsString('contas','TLS') ='T'  then
   Begin
    IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
    IdSMTP.IOHandler := IdSSL;
    IdSMTP.UseTLS:= utUseImplicitTLS;
    IdSSL.SSLOptions.Method := sslvSSLv3;
    IdSSL.SSLOptions.Mode := sslmClient;
   End;


  IdSMTP.Username := AsString('contas','Usuario');
  IdSMTP.Password := AsString('contas','Senha');
  // Dados do Servidor
  IdSMTP.Host := AsString('contas','Servidor');
  IdSMTP.Port := AsInteger('contas','Porta');

 try
   IdSMTP.Connect;
   log.Add(TimetoStr(time)+' - Inicio de Envio '+para);
   IdSMTP.Send(IdMessage1);
   log.Add(TimetoStr(time)+' - Email Enviado '+para);

  Except
On E:Exception do
    Begin
       log.Add(TimetoStr(time)+' - Erro de Envio :'+e.Message);
      //ShowMessage(e.Message);
       result:=false;
       //ExecSQL('INSERT INTO EMAILERRO VALUES ('+id.ToString()+',"'+e.Message+'",getDate())','EX','D');

    End;
     End;
    log.SaveToFile('C:\goodsales\core\logr.txt');
    IdSMTP.Disconnect;
    IdPOP3.Disconnect;
    IdPOP3.Free;
    IdSMTP.Free;
    IdMessage1.Free;
    if idSSL <> nil then
     idSSL.Free;
Except
   on e:Exception do
    Begin
      //ShowMessage(e.Message);
      result:=false;
    End;

end;
end;

function TSM.segun;
Begin
  GeraSQL2('Select * from SB1'+emp+' Where B1_FILIAL = "'+fil+'" and D_E_L_E_T_ <> "*" and B1_COD = "'+prod+'"','B1','O');

  if AsFloat('B1','B1_CONV') > 0 then
  Begin
   IF (AsString('B1','B1_TIPCONV') = 'M') or (AsString('B1','B1_TIPCONV') = '') Then
      Result:=Qtd * AsFloat('B1','B1_CONV')
   else
      Result:=Qtd / AsFloat('B1','B1_CONV');
   End
  Else
  result:=qtd;
End;

Procedure TSM.AddField;//(AMachine:TatVirtualMachine);
var
campof:TFloatField;
campos:TStringField;
campoi:TIntegerField;
campom:TMemoField;
Begin
try
  Begin
   if uppercase(tipo) = 'F' then
    Begin
     campof:=TFloatField.Create(Self);
     campof.DisplayFormat := '###,###,##0.00';
     campof.FieldKind :=fkData;
     campof.FieldName := campo;
     campof.DataSet := TDataSet(Self.FindComponent(tabela)) ;
     campof.Name :='_'+trim(campo)+trim(tabela) ;
    End;

   if uppercase(tipo) = 'S' then
    Begin
     campos:=TStringField.Create(Self);
     campos.FieldKind :=fkData;
     campos.FieldName := campo;
     campos.Size := StrtoInt(tamanho);
     campos.DataSet := TDataSet(Self.FindComponent(tabela )) ;
     campos.Name :='_'+trim(campo)+trim(tabela) ;
    End;

   if uppercase(tipo) = 'I' then
    Begin
     campoi:=TIntegerField.Create(Self);
     campoi.FieldKind :=fkData;
     campoi.FieldName := campo;
     campoi.DataSet := TDataSet(Self.FindComponent(tabela)) ;
     campoi.Name :='_'+trim(campo)+trim(tabela) ;
    End;

   if uppercase(tipo) = 'M' then
    Begin
     campom:=TMemoField.Create(Self);
     campom.FieldKind :=fkData;
     campom.FieldName := campo;
     campom.DataSet := TDataSet(Self.FindComponent(tabela)) ;
     campom.Name :='_'+trim(campo)+trim(tabela) ;
  End;
  End;
Except
   on e:Exception do
    Begin
      try
      Except
      end;

    End;

End;

End;



Procedure TSM.DropTMP;//(AMachine:TatVirtualMachine);
Begin
Begin
   TDataSet(Self.FindComponent(param)).Close;
   Self.FindComponent(param ).Free;
End;
End;


function TSM.ConvTag;//()
Begin
  while Pos(PChar(de), texto) > 0 do
     texto[Pos(de,texto)] := para;
End;

function TSM.iif;//(comparacao:Variant;op1:Variant;op2:Variant):Variant;
 Begin
   if comparacao then
      result:=op1
   else
      result:=op2;

 End;


function TSM.Strut;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
                  on e:Exception do
    Begin
      try
      Except
      end;
       NFATOR:=0;
    End;

               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
     if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"',b9,'O') > 0) AND (AsFloat(B9,'B9_CUSTD')>0) THEN
         CUSTO := AsFloat(B9,'B9_CUSTD')
     ELSE
         CUSTO := AsFloat(nB1,'B1_CUSTD');

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
   on e:Exception do
    Begin
      try
      Except
      end;
       tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
       tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CUSTD')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;


function TSM.StrutD;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
                  on e:Exception do
    Begin
      try
      Except
      end;
       NFATOR:= 0;

    End;

               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin

     if (GeraSQL2('Select * from CUSTOVIRT Where EMP="'+Emp+'" and MP ='+#39+AsString(g1,'G1_COMP')+#39+' and FIL = '+#39+filial+#39+'  ',b9,'D') > 0)  THEN
       Begin
         if (GeraSQL2('Select case when DESCONTO > 0 then DESCONTO else CUSTOREAL END as DESCONTO from CUSTO Where EMP="'+Emp+'" and CODIGO ='+#39+AsString(b9,'MPV')+#39+' and FIL = '+#39+filial+#39+' and DATA LIKE "'+DATA+'%" ',b9,'D') > 0)  THEN
             CUSTO := AsFloat(B9,'DESCONTO')
          ELSE
          if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"',b9,'O') > 0) AND (AsFloat(B9,'B9_CUSTD')>0) THEN
              CUSTO := AsFloat(B9,'B9_CUSTD')
          ELSE
              CUSTO := AsFloat(nB1,'B1_CUSTD');
       End
     else
       Begin
         if (GeraSQL2('Select case when DESCONTO > 0 then DESCONTO else CUSTOREAL END as DESCONTO from CUSTO Where EMP="'+Emp+'" and CODIGO ='+#39+AsString(g1,'G1_COMP')+#39+' and FIL = '+#39+filial+#39+' and DATA LIKE "'+DATA+'%" ',b9,'D') > 0)  THEN
             CUSTO := AsFloat(B9,'DESCONTO')
          ELSE
          if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"',b9,'O') > 0) AND (AsFloat(B9,'B9_CUSTD')>0) THEN
              CUSTO := AsFloat(B9,'B9_CUSTD')
          ELSE
              CUSTO := AsFloat(nB1,'B1_CUSTD');
       End;

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
   on e:Exception do
    Begin
      try
      Except
      end;
       tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
   on e:Exception do
    Begin
      try
      Except
      end;
       tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CUSTD')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;


function TSM.StrutCM;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
   on e:Exception do
    Begin
      try
      Except
      end;
       erro.Free;
       nfator:= 0;

    End;

               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
     if (GeraSQL2('Select case when B9_QISEGUM > 0 THEN B9_CM1 * (B9_QISEGUM/B9_QINI) ELSE B9_CM1 END as B9_CM1,* from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%" AND B9_CM1 > 0 ORDER BY B9_LOCAL ASC',b9,'O') > 0)  THEN
         CUSTO := AsFloat(B9,'B9_CM1')
     ELSE
         CUSTO := AsFloat(nB1,'B1_CUSTD');

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%" AND B9_CM1 > 0 ','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CM1')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;


function TSM.Strutest;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
                         on e:Exception do
    Begin
      try
      Except
      end;
       erro.Free;
       NFATOR:= 0;

    End;

               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
         CUSTO := AsFloat(nB1,'B1_ATKESTI');

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
       erro.Free;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
       erro.Free;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
            CUSTO := AsFloat('B1','B1_ATKESTI');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;



function TSM.StrutSTD;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
                         on e:Exception do
    Begin

      try
      Except
      end;
       erro.Free;
       NFATOR:= 0;

    End;

               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
         CUSTO := AsFloat(nB1,'B1_CUSTD');

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;

                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;
                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CUSTD')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;



function TSM.StrutOP;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;
Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * (AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB'));
               except
                         on e:Exception do
    Begin

      try
      Except
      end;
       NFATOR:= 0;

    End;
               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
//     if (GeraSQL2('Select sum(D3_CUSTO1)/sum(CASE WHEN D3_QTSEGUM > 0 THEN D3_QTSEGUM ELSE D3_QUANT END) B9_CUSTD  from SD3'+Emp+' Where D3_QUANT >0 and D_E_L_E_T_ <>'+#39+'*'+#39+' and D3_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and D3_FILIAL = '+#39+filial+#39+' and D3_EMISSAO LIKE "'+DATA+'%"',b9,'O') > 0) THEN
     if (GeraSQL2('Select sum(D3_CUSTO1)/sum(D3_QUANT) B9_CUSTD  from SD3'+Emp+' Where D3_QUANT >0 and D_E_L_E_T_ <>'+#39+'*'+#39+' and D3_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and D3_FILIAL = '+#39+filial+#39+' and D3_EMISSAO LIKE "'+DATA+'%"',b9,'O') > 0) THEN
         CUSTO := AsFloat(B9,'B9_CUSTD')
     ELSE
         CUSTO := AsFloat(nB1,'B1_CUSTD');

         if (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * (AsFloat(g1,'G1_QUANT') / qtd) )*custo;
                      except
                         on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;
                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * ( AsFloat(g1,'G1_QUANT') / AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin

      try
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;
                      end;
                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CUSTD')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('custo').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;


function TSM.StrutQ;//()
var nFator,n_Val_PA,custo:Double;
    filtro,STRCUSTO:String;
    tabela:TJvMemoryData;
    campof:TFloatField;
    campos:TStringField;
    contador:Integer;

procedure popula(emp,filial,prod,filtro,data:String;qtd,fator:Double;sigla:Integer);
var custo:Double;
g1,G2,b1,nb1,b9:String;

function dividen(num1,num2:Double):Double;
BEgin
if num2=0 then
   result:=0
else
   Result:=num1/num2;
End;


Begin

g1:='G1'+InttoStr(sigla);
g2:='G2'+InttoStr(sigla);
b1:='B1'+InttoStr(sigla);
b9:='B9'+InttoStr(sigla);
nb1:='nB1'+InttoStr(sigla);

//IF Sigla <= 2 then
begin
GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+prod+#39+' and G1_FILIAL = '+#39+filial+#39,g1,'O');
GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL = '+#39+filial+#39,b1,'O');

  MoveFirst(g1);
  While not TableEof(g1) do
   Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B1_FILIAL = '+#39+filial+#39,nb1,'O');

     IF GeraSQL2('Select * from SG1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and G1_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and G1_FILIAL = '+#39+filial+#39,g2,'O')>0 then
         Begin
               sigla:=sigla+1;
               try
                  nfator:=fator * Dividen(AsFloat(g1,'G1_QUANT') , AsFloat(b1,'B1_QB'));
               except
                         on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
      Except
      end;
       erro.Free;
       NFATOR:= 0;

    End;
               end;
               Popula(emp,filial,AsString(nb1,'B1_COD'),filtro,data,AsFloat(b1,'B1_QB'),nfator,sigla);
          End
     Else
    Begin
     if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+AsString(g1,'G1_COMP')+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"',b9,'O') > 0) AND (AsFloat(B9,'B9_CUSTD')>0) THEN
         CUSTO := AsFloat(B9,'B9_CUSTD')
     ELSE
         CUSTO := AsFloat(nB1,'B1_CUSTD');

         if ((AsString(nb1,'B1_TIPO') = 'PA') or (AsString(nb1,'B1_TIPO') = 'PI') or (AsString(nb1,'B1_TIPO') = 'MP') or (AsString(nb1,'B1_TIPO') = 'EP') or (AsString(nb1,'B1_TIPO') = 'ME') or (AsString(nb1,'B1_TIPO') = 'TN') or (AsString(nb1,'B1_TIPO') = 'TR') or (AsString(nb1,'B1_TIPO') = 'IC') or ( (AsString(nb1,'B1_TIPO') = 'MO') and (TRIM(UPPERCASE(AsString(nb1,'B1_TIPO'))) <> 'HR')  )) AND ( (TRIM(UPPERCASE(AsString(nb1,'B1_UM'))) = 'KG') OR (TRIM(UPPERCASE(AsString(nb1,'B1_UM'))) = 'TL') OR (TRIM(UPPERCASE(AsString(nb1,'B1_SEGUM'))) = 'KG') OR (TRIM(UPPERCASE(AsString(nb1,'B1_SEGUM'))) = 'TL') ) THEN
          Begin
              if (filtro <> '') then
                Begin
                if copy(AsString(nb1,'B1_COD'),1,length(filtro)) = filtro then
                  Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= (Fator * Dividen(AsFloat(g1,'G1_QUANT') , qtd) )*custo;
                      except
                         on e:Exception do
    Begin
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

      erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
//       erro.Add('//-------//');
//       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
 //      erro.Add('//-------//');

      try
      Except
      end;
       erro.Free;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;
                      end;

                      tabela.FieldByName('qtd').AsFloat:= qtd;
                      tabela.FieldByName('fator').AsFloat:= FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.FieldByName('UM').AsString:= AsString(nb1,'B1_UM');

                      tabela.Post;
                 End;
                End
                Else
                   Begin
                      tabela.Insert;
                      try
                        tabela.FieldByName('custo').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * Dividen( AsFloat(g1,'G1_QUANT') , AsFloat(b1,'B1_QB')) )*custo));
                      except
                         on e:Exception do
    Begin
      //ShowMessage(e.Message);
      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
                        tabela.FieldByName('custo').AsFloat:= 0;

    End;
                      end;
                      tabela.FieldByName('qtd').AsFloat:= StrToFloat(FormatFloat('#0.00000',(Fator * Dividen( AsFloat(g1,'G1_QUANT') , AsFloat(b1,'B1_QB')) )));
                      tabela.FieldByName('fator').AsFloat:=FATOR;
                      tabela.FieldByName('B1_CUSTD').AsFloat:=CUSTO;
                      tabela.FieldByName('G1_QUANT').AsFloat:=AsFloat(g1,'G1_QUANT');
                      tabela.FieldByName('UM').AsString:= AsString(nb1,'B1_UM');
                      tabela.Post;
                   End;
            End;
         End;
     MoveNext(g1);
   End;
 End;
end;

 Begin
  tabela:=TJvMemoryData.Create(Self);

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Fator';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Qtd';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
//  campof.EditFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'Custo';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'B1_CUSTD';
  campof.DataSet := tabela ;

  campof:=TFloatField.Create(Self);
  campof.DisplayFormat := '###,###,##0.00000';
  campof.FieldKind :=fkData;
  campof.FieldName := 'G1_QUANT';
  campof.DataSet := tabela ;

  campos:=TStringField.Create(Self);
  campos.FieldKind :=fkData;
  campos.FieldName := 'UM';
  campos.Size:=10;
  campos.DataSet := tabela ;

  tabela.open;


//  prod,emp,filial,fator,data

//ProcEstr(prod,emp,filial,data,filtro:String;sigla:Integer;fator:Double);

popula(emp,filial,prod,fator,data,1,1,1);

tabela.First;
result:=0;

   if (tabela.RecordCount=0) AND (FATOR='') then
     Begin
     GeraSQL2('Select * from SB1'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B1_COD ='+#39+PROD+#39+' and B1_FILIAL ='+#39+filial+#39,'b1','O');

//     if (AsString('b1','B1_TIPO') = 'MP') or (AsString('b1','B1_TIPO') = 'EP') or (AsString('b1','B1_TIPO') = 'ME') or (AsString('b1','B1_TIPO') = 'TN') or (AsString('b1','B1_TIPO') = 'TR') or (AsString('b1','B1_TIPO') = 'IC') THEN
      Begin
         if (GeraSQL2('Select * from SB9'+Emp+' Where D_E_L_E_T_ <>'+#39+'*'+#39+' and B9_COD ='+#39+PROD+#39+' and B9_FILIAL = '+#39+filial+#39+' and B9_DATA LIKE "'+DATA+'%"','b9','O') > 0) AND (AsFloat('B9','B9_CUSTD')>0) THEN
             CUSTO := AsFloat('B9','B9_CUSTD')
         ELSE
             CUSTO := AsFloat('B1','B1_CUSTD');


            tabela.Insert;
            tabela.FieldByName('custo').AsFloat:=  custo;
            tabela.FieldByName('UM').AsString:= AsString('b1','B1_UM');
            tabela.FieldByName('qtd').AsFloat:= 0;
            tabela.FieldByName('fator').AsFloat:= 0;
            tabela.Post;
        End;
     End;
result:=0;
nFator:=1;
While not tabela.Eof do
 Begin
   if tabela.fieldByname('UM').AsString='KG' then
       result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('qtd').AsFloat/1000))
   else
   result:=result+StrToFloat(FormatFloat('#0.00000',tabela.fieldByname('qtd').AsFloat));
//   result:=result+(tabela.fieldByname('FATOR').AsFloat*tabela.fieldByname('B1_CUSTD').AsFloat);

   //nFator:=nFator*(tabela.fieldByname('fator').AsFloat/tabela.fieldByname('qtd').AsFloat);
   tabela.Next;
 End;
tabela.Close;
tabela.Free;
result:=StrToFloat(FormatFloat('#0.00000',result));

End;


Function TSM.TableEOF(tabela:String):Boolean;
Begin
if TDataSet(Self.FindComponent(tabela )) <> nil then
Begin
try
 result:=TDataSet(Self.FindComponent(tabela  )).Eof;
Except
  on e:Exception do
    Begin
      result:=true;
      try
      Except
       result:=true;
      end;
    End;

end;
End
Else
 result:=true;
End;


Function TSM.TableBOF(tabela:String):Boolean;
Begin
try
if TDataSet(Self.FindComponent(tabela )) <> nil then
if TDataSet(Self.FindComponent(tabela )).Active then
 result:=TDataSet(Self.FindComponent(tabela )).Bof;
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

end;
End;

Function TSM.MoveNext(tabela:String):Double;
Begin
try


  TDataSet(Self.FindComponent(tabela )).next;
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

end;
End;


Function TSM.MovePrior(tabela:String):Double;
Begin
try
if TDataSet(Self.FindComponent(tabela )) <> nil then
if TDataSet(Self.FindComponent(tabela )).Active then
  TDataSet(Self.FindComponent(tabela )).Prior;
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

end;
End;

Function TSM.MoveFirst(tabela:String):Double;
Begin
try
if TDataSet(Self.FindComponent(tabela )) <> nil then
if TDataSet(Self.FindComponent(tabela )).Active then
  TDataSet(Self.FindComponent(tabela )).First;
Except
  on e:Exception do
    Begin
      try
      Except
      end;
       erro.Free;
    End;

end;
End;

Function TSM.RecNo(tabela:String):Integer;
Begin
if TDataSet(Self.FindComponent(tabela )) <> nil then
if TDataSet(Self.FindComponent(tabela )).Active then
  Result:=TDataSet(Self.FindComponent(tabela )).RecNo
else
  Result:=-1;
End;

Function TSM.RecordCount(tabela:String):Integer;
Begin
try
if TDataSet(Self.FindComponent(tabela )) <> nil then
  if TDataSet(Self.FindComponent(tabela )).Active then
     Result:=TDataSet(Self.FindComponent(tabela )).RecordCount
  else
     Result:=-1;
Except
  on e:Exception do
    Begin

      try
      Except
      end;
    End;

end;
End;


Function TSM.MoveLast(tabela:String):Double;
Begin
try
if TDataSet(Self.FindComponent(tabela )) <> nil then
  if TDataSet(Self.FindComponent(tabela )).Active then
  TDataSet(Self.FindComponent(tabela )).Last;
except
  on e:Exception do
    Begin

      try
      Except
      end;
    End;

end;
End;


function TSM.AsString(tabela,campo:String):String;
 Begin
 try
 if TDataSet(Self.FindComponent(tabela )) <> nil then
  if TDataSet(Self.FindComponent(tabela )).Active then
    if TDataSet(Self.FindComponent(tabela )).FindField(campo) <> nil then
       result:=TDataSet(Self.FindComponent(tabela )).FieldByname(campo).AsString
       Else
         result:=''
  else
     result:='';
 Except
  on e:Exception do
    Begin

      try
      Except
      end;
    End;

 end;
 End;

procedure TSM.atPascalScripter1CompileError(Sender: TObject; var msg: string;
  row, col: Integer; var ShowException: Boolean);
begin
    {    erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+msg);
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now));
        erro.Add('//-------//');

      try
       erro.SaveToFile('c:\GoodSales\core\errosJ.txt');
       erro.free;
      Except
      end;}
end;

procedure TSM.atPascalScripter1RuntimeError(Sender: TObject; var msg: string;
  row, col: Integer; var ShowException: Boolean);
begin

   erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+msg);
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now));
        erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\errosJ.txt');
       erro.free;
      Except
      end;


end;

function TSM.AsInteger(tabela,campo:String):Integer;
 Begin
 try
 if TDataSet(Self.FindComponent(tabela )) <> nil then
  if TDataSet(Self.FindComponent(tabela )).Active then
    result:=TDataSet(Self.FindComponent(tabela )).FieldByname(campo).AsInteger
  else
    result:=0;
 Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

 end;
 End;



procedure TSM.ADOQuery1PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
      erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' '+TFDQuery(Dataset).SQL.Text+' - '+ DataSet.Name+' - '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;

end;

procedure TSM.ADOQuery1ReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
      erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' '+TFDQuery(Dataset).SQL.Text+' - '+ DataSet.Name+' - '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;

end;

procedure TSM.ADQuery1AfterOpen(DataSet: TDataSet);
var i:Integer;
begin
 i:=0;
 while i < Dataset.Fields.Count do
  Begin
    if DataSet.Fields[I].Required=true then
       DataSet.Fields[I].Required:=FALSE;
    i:=i+1;
  End;
end;

procedure TSM.ADQuery1PostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' '+TFDQuery(Dataset).SQL.Text+' - '+ DataSet.Name+' - '+e.Message);
       erro.SavetoFile('c:\GoodSales\core\erros.txt');

       erro.Free;

end;

procedure TSM.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now));
        erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\errosJ.txt');
       erro.free;
      Except
      end;
end;

function TSM.AsFloat(tabela,campo:String):Double;
 Begin
   Try
    if TDataSet(Self.FindComponent(tabela )).Active then
       result:=TDataSet(Self.FindComponent(tabela )).FieldByname(campo).AsFloat
    else
      result:=0;
   Except
   End;
 End;


//Scripts

Function TSM.runwkf(nome: string; chave: string):String;
var
wdf : TWorkflowDefinition;
wfi : TWorkflowInstance;
wvar: TWorkflowVariable;
i : Integer;
begin
try
  WorkflowADODB1.Connection.Close;
  WorkflowADODB1.Connection.Open;

  TRY
    wdf := WorkflowStudio1.WorkflowManager.FindWorkflowDefinitionByName(nome);
    wfi := WorkflowStudio1.WorkflowManager.CreateWorkflowInstance(wdf);
    if chave <> '' then
    Begin
       wvar := wfi.Diagram.Variables.FindByName('chave');
    if Assigned(wvar) then
      wvar.Value := chave;
    End;
    WorkflowStudio1.WorkflowEngine.RunWorkflow(wfi);
  FINALLY
    result:=wfi.Key;
  END;
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;
end;
end;


Procedure TSM._runwkfg(AMachine: TatVirtualMachine);
begin
 With AMachine do
  Begin
   Try
     ReturnOutputArg(runwkf(GetInputArgAsString(0),GetInputArgAsString(1)));
   Except
  on e:Exception do
    Begin
      try
      Except
      end;
    End;

   End;
  End;


end;


function TSM.DataSetToJsonTxt(pDataSet: TDataSet): string;
  var
    ArrayJSon:TJSONArray;
    ObjJSon:TJSONObject;
    strJSon:TJSONString;
    intJSon:TJSONNumber;
    TrueJSon:TJSONTrue;
    FalseJSon:TJSONFalse;
    I: Integer;
    pField:TField;

begin
    ArrayJSon:=TJSONArray.Create;
    try
      pDataSet.First;
        while not pDataSet.Eof do
          begin
            ObjJSon:=TJSONObject.Create;
            for pField in pDataSet.Fields do
            if pField.DataType =TFieldType.ftString then
                begin
                  strJSon:=TJSONString.Create(pField.AsString);
                  ObjJSon.AddPair(pField.FieldName,strJSon);
                end
             Else
            if pField.DataType =TFieldType.ftString then
                begin
                  strJSon:=TJSONString.Create(pField.AsString);
                  ObjJSon.AddPair(pField.FieldName,strJSon);
                end
             Else

             if pField.DataType =TFieldType.ftInteger then
                 begin
                  IntJSon:=TJSONNumber.Create(pField.AsInteger);
                  ObjJSon.AddPair(pField.FieldName,IntJSon);
                end

      else //casos gerais são tratados como string
        begin
          strJSon:=TJSONNumber.Create(pField.AsString);
          ObjJSon.AddPair(pField.FieldName,strJSon);
       end;

    ArrayJSon.AddElement(ObjJSon);
    pDataSet.next;
end;
result:=ArrayJSon.ToString;
finally
   ArrayJSon.Free;
end;
end;



function TSM.GetCubo(nome,cubo,filtro,r:String):string;
var   i:Integer;
    Obj: TJSONObject;
Begin

   FormField:=filtro;
   GeraSQL('Select * from REPTAB Where NOME = '+#39+nome+#39+' and (D_E_L_E_T_ = '+#39+#39+' OR D_E_L_E_T_ IS NULL)','reltab','defs');

   if uppercase(r) = 'T' then
      ExecSCRIPT(AsString('pr_reltab','CODE'),'');

   i:=0;

   result:=DataSetToJsonTxt(TDataSet(self.FindComponent(cubo)));

{   with TFDQuery(self.FindComponent(cubo)) do

   Begin

   Obj := TJSONObject.Create;
   for I := 0 to Fields.Count - 1 do
    begin
        Obj.AddPair(fields[i].FieldName, TJSONString.Create(fields[i].FieldName));
    end;
   Result.AddElement(Obj);



   while not Eof do
      begin
        Obj := TJSONObject.Create;
        i:=0;
        while i < Fields.Count do
         Begin
         if (Fields[i].DataType = ftSmallint) or (Fields[i].DataType =  ftInteger) or (Fields[i].DataType =  ftWord) or (Fields[i].DataType =  ftFloat) or (Fields[i].DataType =   ftCurrency) or (Fields[i].DataType =  ftDate)
         or (Fields[i].DataType =   ftTime) or (Fields[i].DataType = ftDateTime) or (Fields[i].DataType =  ftLargeint)
         or (Fields[i].DataType =   ftTimeStamp) or (Fields[i].DataType =  ftFMTBcd) or (Fields[i].DataType =  ftLongWord)
         or (Fields[i].DataType =   ftShortint) or (Fields[i].DataType =   ftByte) or (Fields[i].DataType =   ftExtended)
         or (Fields[i].DataType =   ftConnection) or (Fields[i].DataType =   ftParams) or (Fields[i].DataType =   ftStream)
         or (Fields[i].DataType =  ftSingle) then
             Obj.AddPair(Fields[i].FieldName, TJSONNumber.Create(Fields[i].Value))
         else
             Obj.AddPair(Fields[i].FieldName, TJSONString.Create(Fields[i].Value));

             i:=i+1;
       End;

        Result.AddElement(Obj);
        next;
      end;
    End;}

End;


//funcoes  scripts

function semacento( str: String ): String;
var
i: Integer;
begin
  for i := 1 to Length ( str ) do
  case str[i] of
  'á': str[i] := 'a';
  'é': str[i] := 'e';
  'í': str[i] := 'i';
  'ó': str[i] := 'o';
  'ú': str[i] := 'u';
  'à': str[i] := 'a';
  'è': str[i] := 'e';
  'ì': str[i] := 'i';
  'ò': str[i] := 'o';
  'ù': str[i] := 'u';
  'â': str[i] := 'a';
  'ê': str[i] := 'e';
  'î': str[i] := 'i';
  'ô': str[i] := 'o';
  'û': str[i] := 'u';
  'ä': str[i] := 'a';
  'ë': str[i] := 'e';
  'ï': str[i] := 'i';
  'ö': str[i] := 'o';
  'ü': str[i] := 'u';
  'ã': str[i] := 'a';
  'õ': str[i] := 'o';
  'ñ': str[i] := 'n';
  'ç': str[i] := 'c';
  'Á': str[i] := 'A';
  'É': str[i] := 'E';
  'Í': str[i] := 'I';
  'Ó': str[i] := 'O';
  'Ú': str[i] := 'U';
  'À': str[i] := 'A';
  'È': str[i] := 'E';
  'Ì': str[i] := 'I';
  'Ò': str[i] := 'O';
  'Ù': str[i] := 'U';
  'Â': str[i] := 'A';
  'Ê': str[i] := 'E';
  'Î': str[i] := 'I';
  'Ô': str[i] := 'O';
  'Û': str[i] := 'U';
  'Ä': str[i] := 'A';
  'Ë': str[i] := 'E';
  'Ï': str[i] := 'I';
  'Ö': str[i] := 'O';
  'Ü': str[i] := 'U';
  'Ã': str[i] := 'A';
  'Õ': str[i] := 'O';
  'Ñ': str[i] := 'N';
  'Ç': str[i] := 'C';
end;
Result := str;
end;

Procedure TSM._NewCube(AMachine: TatVirtualMachine);
var dataf:TfrxDBDataset;
begin
With AMachine do
  Begin
   if frmRel.FindComponent(GetInputArgAsString(0)) <> nil then
      frmRel.FindComponent(GetInputArgAsString(0)).Free;

   dataf:=TfrxDBDataset.Create(frmRel);
   dataf.Name :=GetInputArgAsString(0);
   dataf.DataSet := TDataSet(Self.FindComponent(GetInputArgAsString(1) ));


  End;
end;



Function TSM.ProcREL;//(relatorio,layout,filtro,conexao,tabela,exporta:String):String;
var virg,s,filename:String;
    sql,memo2:TStrings;
    RELAT:TMemoryStream;
    T,I:Integer;
    ETIQUETA:TJvMemoryData;
    Rel:TfrxReport;
    frxDBDataset:TfrxDBDataset;
    xls:TfrxXLSExport;
    xml:TfrxXMLExport;
    pdf:TfrxPDFExport;
    rtf:TfrxRTFExport;
    html:TfrxHTMLExport;
    empr:String;
Begin

Rel:=TfrxReport.Create(Self);
Rel.EngineOptions.SilentMode := true;

REL.ShowProgress := false;
memo2:=TStringList.Create;
FormField:=filtro;

GeraSQL2('Select * from REPTAB Where NOME = '+#39+relatorio+#39,'REPTAB','DEFS');

if AsSTring('REPTAB','CODE') <> '' then
Begin
 try
  ExecSCRIPT(AsString('REPTAB','CODE'),'');
 Except
  Exit;

 end;
End;


Rel.FileName:='';

GeraSQL2('Select * from REPLAYOUT Where (D_E_L_E_T_ <> "*" OR D_E_L_E_T_ IS NULL OR D_E_L_E_T_ ="") and NOMEREL = "'+relatorio+'" and NOME = "'+layout+'"','RELATORIO','DEFS');

 if AsString('RELATORIO','RELATORIO') <> '' then
  Begin
  Try

   Memo2.Text:=AsString('RELATORIO','RELATORIO');
   Memo2.SaveToFile('c:\goodsales\core\html\reps\temp.rel' );
   rel.OldStyleProgress := false;
   rel.DotMatrixReport :=false;
   REL.StoreInDFM := FALSE;
try
   REL.LoadFromFile('c:\goodsales\core\html\reps\temp.rel' );
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

end;
 try
   rel.PrepareReport;
  except
   RELAT.Free;

    if etiqueta <> nil then
    Begin
       etiqueta.Close;
       etiqueta.Free;
    End;

     result:='error';
    exit;
   end;
//

Except
  on e:Exception do
    Begin

      try
      Except
      end;
       erro.Free;
    End;
End;
  Begin
    if not DirectoryExists('c:\goodsales\core\html\usr\tmp\') then
    Begin
       try
          CreateDir('c:\goodsales\core\html\usr\tmp\');
       except
       on E:Exception do
       Begin

       End;
       end;
    End;
     filename:='c:\goodsales\core\html\usr\tmp\'+semacento(relatorio );
  End;

  DeleteFile('c:\goodsales\core\html\reps\temp.rel' );

if uppercase(exporta) = '' then
   exporta:='PDF';

if uppercase(exporta) = 'XML' then
 Begin
   xml:=TfrxXMLExport.Create(Self);
   xml.FileName:=filename+'.xml';
   xml.ShowDialog :=false;
   xml.ShowProgress:=false;
   xml.ExportStyles:=true;
   xml.ExportPageBreaks:=true;
   xml.Wysiwyg:=true;
   xml.Background:=true;
   xml.EmptyLines:=false;
   rel.Export(xml);
   result:=xml.FileName;
   xml.Free;

 End
Else
if uppercase(exporta) = 'XLS' then
 Begin
   xls:=TfrxXLSExport.Create(Self);
   xls.FileName:=filename+'.xls';
   xls.ShowDialog :=false;
   xls.ShowProgress:=false;
   rel.Export(xls);
   result:=xls.FileName;
   xls.Free;

 End
Else
if (uppercase(exporta) = 'PDF')  then
 Begin
   pdf:=TfrxPDFExport.Create(Self);
   pdf.FileName:=filename+'.pdf';
   pdf.ShowDialog :=false;
   pdf.ShowProgress:=false;
   result:=pdf.FileName;
try
   rel.Export(pdf);
except
  on e:Exception do
    Begin
      try
      Except
      end;
    End;


end;
   pdf.Free;

 End
Else
if uppercase(exporta) = 'RTF' then
 Begin
   rtf:=TfrxRTFExport.Create(Self);
   rtf.FileName:=filename+'.rtf';
   rtf.ShowDialog :=false;
   rtf.ShowProgress:=false;
   rel.Export(rtf);
   result:=rtf.FileName;
   rtf.Free;

 End
Else
if uppercase(exporta) = 'HTML' then
 Begin
   html:=TfrxHTMLExport.Create(Self);
   html.FileName:=filename+'.html';
   html.ShowDialog :=false;
   html.ShowProgress:=false;
   rel.Export(html);
   result:=html.FileName;
   html.Free;
 End;


 if etiqueta <> nil then
 Begin
    etiqueta.Close;
    etiqueta.Free;
 End;

if sql <> nil then
   sql.Free;

if rel <> nil then
   rel.Free;
if RELAT <> nil then
   RELAT.Free;

frxDBDataset.Free;
End;

End;


Function TSM.ProcRELN;//(relatorio,layout,filtro,conexao,tabela,exporta:String):String;
var virg,s,filename:String;
    sql,memo2:TStrings;
    RELAT:TMemoryStream;
    T,I:Integer;
    ETIQUETA:TJvMemoryData;
    Rel:TfrxReport;
    frxDBDataset:TfrxDBDataset;
    xls:TfrxXLSExport;
    xml:TfrxXMLExport;
    pdf:TfrxPDFExport;
    rtf:TfrxRTFExport;
    html:TfrxHTMLExport;
    empr:String;
    a,c,v:String;
Begin

if FormsF.Active then
   FormsF.Close;

FormsF.Open;

a:=filtro+'&';

   while pos('=',a) > 0 do
    Begin
      c:=copy(a,1,pos('=',a)-1);
      a:=copy(a,pos('=',a)+1,length(a));
      v:=copy(a,1,pos('&',a)-1);
      a:=copy(a,pos('&',a)+1,length(a));

      FormsF.Insert;
      FormsF.FieldByName('NOME').AsString:=c;
      FormsF.FieldByName('VALOR').AsString:=V;
      FormsF.Post;

    End;

frmRel:=TForm1.Create(nil);

Rel:=TfrxReport.Create(frmRel);
Rel.EngineOptions.SilentMode := true;

REL.ShowProgress := false;
memo2:=TStringList.Create;
FormField:=filtro;

GeraSQL2('Select * from REPTAB Where NOME = '+#39+relatorio+#39,'REPTAB','DEFS');

if AsSTring('REPTAB','CODE') <> '' then
Begin
 try
  ExecSCRIPTrel(AsString('REPTAB','CODE'),'',filtro);
 Except
  Exit;

 end;
End;


Rel.FileName:='';

GeraSQL2('Select * from REPLAYOUT Where (D_E_L_E_T_ <> "*" OR D_E_L_E_T_ IS NULL OR D_E_L_E_T_ ="") and NOMEREL = "'+relatorio+'" and NOME = "'+layout+'"','RELATORIO','DEFS');

 if AsString('RELATORIO','RELATORIO') <> '' then
  Begin
  Try

   Memo2.Text:=AsString('RELATORIO','RELATORIO');
   Memo2.SaveToFile('c:\goodsales\core\html\reps\'+semacento(nome)+'.rel' );
   rel.OldStyleProgress := false;
   rel.DotMatrixReport :=false;
   REL.StoreInDFM := FALSE;
try
   REL.LoadFromFile('c:\goodsales\core\html\reps\'+semacento(nome)+'.rel' );
Except
  on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

end;
 try
   rel.PrepareReport;
  except
   RELAT.Free;

    if etiqueta <> nil then
    Begin
       etiqueta.Close;
       etiqueta.Free;
    End;

     result:='error';
    exit;
   end;
//

Except
  on e:Exception do
    Begin

      try
      Except
      end;
       erro.Free;
    End;
End;
  Begin
    if not DirectoryExists('c:\goodsales\core\html\usr\tmp\') then
    Begin
       try
          CreateDir('c:\goodsales\core\html\usr\tmp\');
       except
       on E:Exception do
       Begin

       End;
       end;
    End;
     filename:='c:\goodsales\core\html\usr\tmp\'+semacento(nome);
  End;

  try
    DeleteFile(PWidechar('c:\goodsales\core\html\reps\'+semacento(nome)+'.rel') );
  Except

  end;

if uppercase(exporta) = '' then
   exporta:='PDF';

if uppercase(exporta) = 'XML' then
 Begin
   xml:=TfrxXMLExport.Create(Self);
   xml.FileName:=filename+'.xml';
   xml.ShowDialog :=false;
   xml.ShowProgress:=false;
   xml.ExportStyles:=true;
   xml.ExportPageBreaks:=true;
   xml.Wysiwyg:=true;
   xml.Background:=true;
   xml.EmptyLines:=false;
   rel.Export(xml);
   result:=xml.FileName;
   xml.Free;

 End
Else
if uppercase(exporta) = 'XLS' then
 Begin
   xls:=TfrxXLSExport.Create(Self);
   xls.FileName:=filename+'.xls';
   xls.ShowDialog :=false;
   xls.ShowProgress:=false;
   rel.Export(xls);
   result:=xls.FileName;
   xls.Free;

 End
Else
if (uppercase(exporta) = 'PDF')  then
 Begin
   pdf:=TfrxPDFExport.Create(Self);
   pdf.FileName:=filename+'.pdf';
   pdf.ShowDialog :=false;
   pdf.ShowProgress:=false;
   result:=pdf.FileName;
try
   rel.Export(pdf);
except
  on e:Exception do
    Begin
      try
      Except
      end;
    End;


end;
   pdf.Free;

 End
Else
if uppercase(exporta) = 'RTF' then
 Begin
   rtf:=TfrxRTFExport.Create(Self);
   rtf.FileName:=filename+'.rtf';
   rtf.ShowDialog :=false;
   rtf.ShowProgress:=false;
   rel.Export(rtf);
   result:=rtf.FileName;
   rtf.Free;

 End
Else
if uppercase(exporta) = 'HTML' then
 Begin
   html:=TfrxHTMLExport.Create(Self);
   html.FileName:=filename+'.html';
   html.ShowDialog :=false;
   html.ShowProgress:=false;
   rel.Export(html);
   result:=html.FileName;
   html.Free;
 End;


if sql <> nil then
   sql.Free;

if rel <> nil then
   rel.Free;
if RELAT <> nil then
   RELAT.Free;

frxDBDataset.Free;
frmRel.Free;
End;

End;

Procedure TSM._ProcrelG(AMachine: TatVirtualMachine);
var result:String;
Begin
With AMachine do
Begin
try
 result:=ProcRel(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4));
 ReturnOutputArg(result);
except
on e:Exception do
 Begin
  ReturnOutputArg(e.Message);
 End;
End;

End;
end;

Procedure TSM._ProcrelnG(AMachine: TatVirtualMachine);
var result:String;
Begin
With AMachine do
Begin
try
 result:=ProcReln(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4),GetInputArgAsString(5));
 ReturnOutputArg(result);
except
on e:Exception do
 Begin
  ReturnOutputArg(e.Message);
 End;
End;

End;
end;

Procedure TSM._gDeleteFile(AMachine: TatVirtualMachine);
Begin
With AMachine do
  Begin
    ReturnOutputArg(DeleteF(GetInputArgAsString(0)));
  End;

End;

Procedure TSM._gLoadFile(AMachine: TatVirtualMachine);
Begin
With AMachine do
  Begin
    ReturnOutputArg(LoadFile(GetInputArgAsString(0),GetInputArgAsString(1)));
  End;

End;

Procedure TSM._gCreateFile(AMachine: TatVirtualMachine);
Begin
With AMachine do
  Begin
    ReturnOutputArg(CreateFile(GetInputArgAsString(0)));
  End;

End;


Procedure TSM._gSaveFile(AMachine: TatVirtualMachine);
Begin
With AMachine do
  Begin
    ReturnOutputArg(SaveFile(GetInputArgAsString(0),GetInputArgAsString(1)));
  End;

End;



procedure TSM._calcular(AMachine: TatVirtualMachine);
var conta:TJvInterpreterProgram;
begin
conta:=TJvInterpreterProgram.Create(Self);

With AMachine do
  Begin
    conta.Source :=GetInputArgAsString(0);
    conta.Run;
    ReturnOutputArg(conta.VResult);
  End;
try
  conta.Free;
except
end;
end;

procedure TSM._GetRecNo(AMachine: TatVirtualMachine);
begin
With AMachine do
  Begin
    try
      ReturnOutputArg(TDataset(Self.FindComponent(GetInputArgAsString(0) )).RecNo);
    Except
      ReturnOutputArg(-1);
    end;
  End;
end;

procedure TSM._SetRecNo(AMachine: TatVirtualMachine);
begin
With AMachine do
  Begin
    try
      TDataset(Self.FindComponent(GetInputArgAsString(0) )).RecNo:=GetInputArgAsInteger(1);
    Except
      ReturnOutputArg(-1);
    end;
  End;
end;


Procedure TSM._TableEdit(AMachine:TatVirtualMachine);
Begin
With AMachine do
Begin
 try
   TDataSet(Self.FindComponent(GetInputArgAsString(0) )).edit;
 except

 end;
End;
End;




ProceDure TSM._GeraDesp(Amachine:TatVirtualMachine);
Begin

End;

//Function ProcTES2(codigo,emp,fil,produto,tipo,cf,cod,loja:String):real;
Procedure TSM._ProcTESG2(AMachine:TatVirtualMachine);
Begin
try
 With AMachine do
  Begin
    ReturnOutputArg(ProcTES2(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4),GetInputArgAsString(5),GetInputArgAsString(6),GetInputArgAsString(7)));
  End;
Except

End;

End;


Procedure TSM._ProcTESG(AMachine:TatVirtualMachine);
Begin
try
 With AMachine do
  Begin
    ReturnOutputArg(ProcTES(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4),GetInputArgAsString(5)));
  End;
Except

End;

End;


Procedure TSM._AddField(AMachine:TatVirtualMachine);
var
campof:TFloatField;
campos:TStringField;
campoi:TIntegerField;
campom:TMemoField;
Begin
try
 With AMachine do
  Begin
   if uppercase(GetInputArgAsString(0)) = 'F' then
    Begin
     campof:=TFloatField.Create(Self);
     campof.DisplayFormat := '###,###,##0.00';
     campof.FieldKind :=fkData;
     campof.FieldName := GetInputArgAsString(1);
     campof.DataSet := TDataSet(Self.FindComponent(GetInputArgAsString(2)  )) ;
     campof.Name :=trim(GetInputArgAsString(2))+trim(GetInputArgAsString(1)) ;
    End;

   if uppercase(GetInputArgAsString(0)) = 'S' then
    Begin
     campos:=TStringField.Create(Self);
     campos.FieldKind :=fkData;
     campos.FieldName := GetInputArgAsString(1);
     campos.Size := StrtoInt(GetInputArgAsString(3));
     campos.DataSet := TDataSet(Self.FindComponent(GetInputArgAsString(2) )) ;
     campos.Name :=trim(GetInputArgAsString(2))+trim(GetInputArgAsString(1)) ;
    End;

   if uppercase(GetInputArgAsString(0)) = 'I' then
    Begin
     campoi:=TIntegerField.Create(Self);
     campoi.FieldKind :=fkData;
     campoi.FieldName := GetInputArgAsString(1);
     campoi.DataSet := TDataSet(Self.FindComponent(GetInputArgAsString(2) )) ;
     campoi.Name :=trim(GetInputArgAsString(2))+trim(GetInputArgAsString(1)) ;
    End;

   if uppercase(GetInputArgAsString(0)) = 'M' then
    Begin
     campom:=TMemoField.Create(Self);
     campom.FieldKind :=fkData;
     campom.FieldName := GetInputArgAsString(1);
     campom.DataSet := TDataSet(Self.FindComponent(GetInputArgAsString(2) )) ;
     campom.Name :=trim(GetInputArgAsString(2))+trim(GetInputArgAsString(1)) ;
    End;
  End;
Except
End;

End;


//codigo,data,emp,fili,dataset:String;valor:Double
Procedure TSM._Condicao(AMachine:TatVirtualMachine);
var tabela:TJvMemoryData;
Begin
With AMachine do
Begin
  ProcessaFP(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4),GetInputArgAsFloat(5));
End;
End;


Procedure TSM._CreateTMP(AMachine:TatVirtualMachine);
var tabela:TJvMemoryData;
Begin
With AMachine do
Begin

  if Self.FindComponent(GetInputArgAsString(0) ) <> nil then
    Begin
    Try
     TJvMemoryData(Self.FindComponent(GetInputArgAsString(0) )).Close;
     TJvMemoryData(Self.FindComponent(GetInputArgAsString(0) )).Free;
    Except
  on e:Exception do
    Begin

      try
      Except
      end;
    End;

    End;
    End;
  tabela:= TJvMemoryData.Create(Self);
  tabela.Name := GetInputArgAsString(0) ;
End;
End;

Procedure TSM._OpenTMP(AMachine:TatVirtualMachine);
Begin
With AMachine do
Begin
 try
   TDataSet(Self.FindComponent(GetInputArgAsString(0) )).open;
 except
  on e:Exception do
    Begin
      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

 end;
End;
End;

Procedure TSM._GLocate(AMachine:TatVirtualMachine);
Begin
With AMachine do
Begin
 try
   if TDataSet(Self.FindComponent(GetInputArgAsString(0) )).Locate(GetInputArgAsString(1),GetInputArgAsString(2),[]) then
      ReturnOutputArg(1)
   else
      ReturnOutputArg(0);
 except
  on e:Exception do
    Begin
      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;
    End;

 end;
End;
End;

Procedure TSM._Potencia(AMachine: TatVirtualMachine);
begin
  AMachine.ReturnOutPutArg(Power(AMachine.GetInputArgAsFloat(0),AMachine.GetInputArgAsFloat(1)));
end;

Procedure TSM._DropTMP(AMachine:TatVirtualMachine);
Begin
With AMachine do
Begin
  try
   TDataSet(Self.FindComponent(GetInputArgAsString(0) )).Close;
   Self.FindComponent(GetInputArgAsString(0) ).Free;
  Except
  on e:Exception do
    Begin
      try
      Except
      end;
    End;

  end;
End;
End;

procedure TSM.DSServerModuleCreate(Sender: TObject);
begin
 FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
 LoadLibrary('C:\goodsales\core\libeay32.dll');
 if FILEEXISTS('C:\goodsales\core\libmysql.dll') then
     LoadLibrary('C:\goodsales\core\libmysql.dll');
 str:=TStringList.Create;
 log:=TStringList.Create;
 str.LoadFromFile('C:\goodsales\core\iniV.ini');

 STR.Text :=SERIAL.DecodeString('*',STR.Text);

 errog:=TStringList.Create;

 with Script do
 BEgin

 DefineMethod('AbrirExcel',2,tknone,nil,AbrirExcelg,false);
 DefineMethod('FecharExcel',0,tknone,nil,FecharExcelg,false);
 DefineMethod('TextoToExcel',2,tkNone,nil,TextoToExcelg,false);
 DefineMethod('NumeroToExcel',2,tkNone,nil,NumeroToExcelG,false);
 DefineMethod('ExcelToNumero',2,tkFloat,nil,ExcelToNumeroG,false);
 DefineMethod('ExcelRecalc',0,tkFloat,nil,ExcelRecalcG,false);
 DefineMethod('ExcelToTexto',1,tkString,nil,ExcelToTextoG,false);
 DefineMethod('ExcelVazio',1,tkInteger,nil,ExcelVazioG,false);
 DefineMethod('ExcelToData',1,tkFloat,nil,ExcelToDataG,false);

 DefineMethod('LocalSQL', 2, tkClass, TDataSet, _LocalSQL,false);
 DefineMethod('uDataSets', 0, tknone, nil, _uDataSets,false);
 DefineMethod('fimmes',2,tkInteger,nil,_fimmes,false);
 DefineMethod('SetOrderADV',3,tkNone,nil,SetOrderADV,false);
 DefineMethod('runwkf',2,tkString,nil,_runwkfg,false);
 DefineMethod('Procrel',5,tkString,nil,_Procrelg,false);
 DefineMethod('Procreln',6,tkString,nil,_Procrelng,false);
 DefineMethod('Form',1,tkString,nil,_Form,false);
 DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 DefineMethod('AsString', 2, tkString, nil, _AsStringG,false);
 DefineMethod('AsInteger', 2, tkInteger, nil, _AsIntegerG,false);
 DefineMethod('AsFloat', 2, tkFloat, nil, _AsFloatG,false);
 DefineMethod('MovePrior', 1, tknone, nil, _MovePriorG,false);
 DefineMethod('MoveFirst', 1, tknone, nil, _MoveFirstG,false);
 DefineMethod('MoveNext', 1, tknone, nil, _MoveNextG,false);
 DefineMethod('MoveLast', 1, tknone, nil, _MoveLastG,false);
 DefineMethod('TableEOF', 1, tkInteger, nil, _TableEOFG,false);
 DefineMethod('RecordCount', 1, tkInteger, nil, _RecordCountG,false);
 DefineMethod('MaxRECNO', 4, tkInteger, nil, _MaxRECNOG,false);
 DefineMethod('GeraSQL', 3, tkInteger, nil, _GeraSQLG,false);
 DefineMethod('RestAPI', 2, tkString, nil, _RestAPI,false);

 DefineMethod('GetTransfer', 4, tkInteger, nil, _getTransfer,false);
 DefineMethod('ExecSCRIPT', 2, tkNone, nil, _ExecSCRIPTG,false);
 DefineMethod('FiltroSQL', 2, tkInteger, nil, _FiltroSQLG,false);
 DefineMethod('RemoveFiltro', 1, tknone, nil, _RemoveFiltroG,false);
 DefineMethod('ExecSQL', 3, tkInteger, nil, _ExecSQLG,false);
 DefineMethod('ComandoInserir2', 1, tknone, nil, _ComandoInserir2,false);
 DefineMethod('ComandoInserir', 3, tknone, nil, _ComandoInserir,false);
 DefineMethod('ComandoGravar', 1, tknone, nil, _ComandoGravar,false);
 DefineMethod('SetString', 3, tknone, nil, _SetString,false);
 DefineMethod('Strut', 5, tkFloat, nil, _StrutG,false);
 DefineMethod('Strutd', 5, tkFloat, nil, _StrutDG,false);
 DefineMethod('StrutCM', 5, tkFloat, nil, _StrutGCM,false);
 DefineMethod('StrutEst', 5, tkFloat, nil, _StrutEstG,false);
 DefineMethod('StrutSTD', 5, tkFloat, nil, _StrutGSTD,false);
 DefineMethod('StrutQ', 5, tkFloat, nil, _StrutGQ,false);
 DefineMethod('StrutOP', 5, tkFloat, nil, _StrutGOP,false);
 DefineMethod('SetInteger', 3, tkNone, nil, _SetInteger,false);
 DefineMethod('SetFloat', 3, tkNone, nil, _SetFloat,false);
 DefineMethod('ProcGraf',13,tkString,nil,_ProcGraf,false);
 DefineMethod('ProcGraf2',17,tkString,nil,_ProcGraf2,false);
 DefineMethod('ProcGrafL',17,tkString,nil,_ProcGrafl,false);
 DefineMethod('WebFields',0,tkString,nil,_WebFields,false);
 DefineMethod('ProcDash',5,tkString,nil,_ProcDash,false);
 DefineMethod('SegUn',4,tkFloat,nil,_SegUnG,false);
 DefineMethod('Divide',2,tkFloat,nil,_Divide,false);
 DefineMethod('Encode',1,tkString,nil,_Encode,false);
 DefineMethod('Decode',1,tkString,nil,_Decode,false);
 DefineMethod('SendMail',5,tkInteger,nil,_SendmailG,false);
 DefineMethod('SendMailID',6,tkInteger,nil,_SendmailIDG,false);

 DefineMethod('FazLog',1,tkString,nil,_FazLog,false);
 DefineMethod('TableEdit',1,tkString,nil,_TableEdit,false);
 DefineMethod('CreateTMP',1,tkString,nil,_CreateTMP,false);
 DefineMethod('AddField',4,tkString,nil,_AddField,false);
 DefineMethod('OpenTMP',1,tkString,nil,_OpenTMP,false);
 DefineMethod('DropTMP',1,tkString,nil,_DropTMP,false);
 DefineMethod('Locate',3,tkString,nil,_GLocate,false);
 DefineMethod('Condicao',6,tkNone,nil,_Condicao,false);
 DefineMethod('ProcTES',6,TkFloat,nil,_ProcTESG,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);
 DefineMethod('Potencia',2,TkFloat,nil,_Potencia,false);
 DefineMethod('NoRound',2,TkFloat,nil,_NoRound,false);
 DefineMethod('calcular',1,TkFloat,nil,_calcular,false);
 DefineMethod('GetRecNo',1,TkInteger,nil,_GetRecNo,false);
 DefineMethod('SetRecNo',2,TkInteger,nil,_SetRecNo,false);
 DefineMethod('LoadFile',2,tkString,nil,_gLoadFile,false);
 DefineMethod('CreateFile',1,tkString,nil,_gLoadFile,false);
 DefineMethod('SaveFile',2,tkString,nil,_gSaveFile,false);
 DefineMethod('DeleteFile',1,tkString,nil,_gDeleteFile,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);

End;
end;

procedure TSM.DSServerModuleDestroy(Sender: TObject);
var i:Integer;
begin
  i:=0;

  while i < self.ComponentCount do
   Begin
    if self.Components[i].ClassType = TFDConnection then
      Begin
        if (TFDConnection(self.Components[i]).Connected) then
            TFDConnection(self.Components[i]).Close;
      End;

    if (self.Components[i].ClassType = TFDQuery) or (self.Components[i].ClassType = TFDTable) then
      Begin
        if (TFDQuery(self.Components[i]).Active) then
            TFDQuery(self.Components[i]).Close;
      End;


    i:=i+1;
   End;

end;

Procedure TSM._SendMailG(AMachine:TatVirtualMachine);
var result:Boolean;
Begin
 With AMachine do
  Begin
   ReturnOutputArg(SendMail(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)));
  End;
End;

Procedure TSM._SendMailIDG(AMachine:TatVirtualMachine);
var result:Boolean;
Begin
 With AMachine do
  Begin
   ReturnOutputArg(SendMailID(GetInputArgAsString(0),GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4),GetInputArgAsInteger(5)));
  End;
End;


Procedure TSM._FazLog(AMachine: TatVirtualMachine);
Begin
With AMachine do
Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+GetInputArgAsString(0));
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now));
        erro.Add('//-------//');

      try
      // erro.SaveToFile('c:\GoodSales\core\errosJ.txt');
       erro.free;
      Except
      end;

  //form3.memo1.lines.Add(GetInputArgAsString(0));
End;
End;

Procedure TSM._ProcDash(AMachine: TatVirtualMachine);
var Result:String;
Begin
//0 Dash - 1 Percentual - 2 Largura - 3 Altura - 4 - Nome

With AMachine do
Begin

 Result:=' <object id="'+GetInputArgAsString(4)+'" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="'+GetInputArgAsString(2)+'" height="'+GetInputArgAsString(3)+'"> '+#10;
 Result:=Result+' <param name="movie" value="Dashs/'+GetInputArgAsString(0)+'.swf?fim='+GetInputArgAsString(1)+'" />'+#10;
 Result:=Result+' <param name="quality" value="high" />'+#10;
 Result:=Result+' <embed src="Dashs/'+GetInputArgAsString(0)+'.swf?fim='+GetInputArgAsString(1)+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'+GetInputArgAsString(2)+'" height="'+GetInputArgAsString(3)+'"></embed>'+#10;
 Result:=Result+' </object>'+#10;

 ReturnOutputArg(result);

End;

End;

Procedure TSM._Request(AMachine: TatVirtualMachine);
var TEXTO,result:String;
               i:Integer;
Begin

texto:=WebField;

With AMachine do
Begin
if pos(GetInputArgAsString(0),texto) > 0 then
 Begin
   if pos('&',texto) > 0 then
    Begin
      result:=copy(Texto,pos(GetInputArgAsString(0),texto)+Length(GetInputArgAsString(0))+1,Length(texto));
      if pos('&',result) > 0 then
      result:=copy(result,1,pos('&',result)-1);
    End
    else
    Begin
      result:=copy(Texto,pos(GetInputArgAsString(0),texto)+Length(GetInputArgAsString(0))+1,Length(texto));

    End;
 End;
 if Pos('%20',result) > 0 then
 while Pos('%20',result)>0 do
    Begin
     result:=trim(copy(result,1,Pos('%20',result)-1)+' '+copy(result,Pos('%20',result)+3,1000));
    End;


    ReturnOutputArg(result);
End;
End;

procedure TSM._Encode(AMachine: TatVirtualMachine);
var code:TJvVigenereCipher;
begin
code:=TJvVigenereCipher.Create(Self);
  With AMachine do
    ReturnOutputArg(code.EncodeString('*',GetInputArgAsString(0)) );

    code.Free;
//    SM(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

end;

procedure TSM._DEcode(AMachine: TatVirtualMachine);
var code:TJvVigenereCipher;
begin
code:=TJvVigenereCipher.Create(Self);
  With AMachine do
    ReturnOutputArg(code.DecodeString('*',GetInputArgAsString(0)) );

  code.Free;
//  SM(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

end;

procedure TSM._SegunG(AMachine: TatVirtualMachine);
begin

  With AMachine do
    ReturnOutputArg(SegUn(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2),GetInputArgAsFloat(3)));

//    SM(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

end;



Procedure TSM._Form(AMachine: TatVirtualMachine);
var TEXTO,result:String;
Begin

  With AMachine do
    Begin
      if FormsF.Locate('NOME',GetInputArgAsString(0),[]) then
       ReturnOutputArg(FormsF.FieldByName('VALOR').AsString)
      else
       ReturnOutputArg('');
    End;

End;

Procedure TSM._StrutDG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutD(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;



//Procedimentos

procedure TSM._RestAPI(AMachine: TatVirtualMachine);
begin
  With AMachine do
    ReturnOutputArg(RestAPI(GetInputArgAsString(0), GetInputArgAsString(1)));

   { if newScr <> nil then
       newScr.AddComponents(self);}
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;
end;

procedure TSM._GeraSQLG(AMachine: TatVirtualMachine);
begin
  With AMachine do
    ReturnOutputArg(GeraSQL2(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );

   { if newScr <> nil then
       newScr.AddComponents(self);}
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;
end;

procedure TSM._FiltroSQLG(AMachine: TatVirtualMachine);
begin

if Self.FindComponent(AMachine.GetInputArgAsString(0)) <> nil then
 Begin
   TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Filtered:=false;
   TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Filter:=AMachine.GetInputArgAsString(1);
   TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Filtered:=True;
   AMachine.ReturnOutputArg(TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).RecordCount)
 End;

end;

procedure TSM._RemoveFiltroG(AMachine: TatVirtualMachine);
begin

if Self.FindComponent(AMachine.GetInputArgAsString(0) ) <> nil then
 Begin
   TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Filtered:=false;
 End;

end;


procedure TSM._ExecSQLG(AMachine: TatVirtualMachine);
begin
  With AMachine do
    ReturnOutputArg(ExecSQL2(GetInputArgAsString(0), GetInputArgAsString(1),GetInputArgAsString(2)) );
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;
end;



Procedure TSM._MaxRECNOG(AMachine: TatVirtualMachine);
Begin


    GeraSQL2('Select MAX(R_E_C_N_O_) as MAX from '+AMachine.GetInputArgAsString(0)+AMachine.GetInputArgAsString(1)+' Where '+AMachine.GetInputArgAsString(2)+' = "'+AMachine.GetInputArgAsString(3)+'"','MAXREC','D');

   With AMachine do
    ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;


Procedure TSM._ComandoInserir(AMachine: TatVirtualMachine);
Begin
  try
   GeraSQL2('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
   TFDQuery(Self.FindComponent(AMachine.GetInputArgAsString(1) )).Insert;
  except
    on e:Exception do
    Begin

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;

    End;


  end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM._ComandoInserir2(AMachine: TatVirtualMachine);
Begin
  try
   if Self.FindComponent(AMachine.GetInputArgAsString(0) ) <> nil then
    TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Append;
  Except
  on e:Exception do
    Begin


      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;

    End;

  end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;



Procedure TSM._ComandoGravar(AMachine: TatVirtualMachine);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
Try
 if Self.FindComponent(AMachine.GetInputArgAsString(0) ) <> nil then
   TDataSet(Self.FindComponent(AMachine.GetInputArgAsString(0) )).Post;
Except
   on e:Exception do
    Begin
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\erros.txt') then
          erro.LoadFromFile('c:\GoodSales\core\erros.txt');

       erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
       erro.SaveToFile('c:\GoodSales\core\erros.txt');
       erro.Free;
    End;

  end;

End;

Procedure TSM._SetFloat(AMachine: TatVirtualMachine);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
  try
   TFDQuery(Self.FindComponent(AMachine.GetInputArgAsString(0) )).FieldByname(AMachine.GetInputArgAsString(1)).AsFloat:=AMachine.GetInputArgAsFloat(2);
  Except
  on e:Exception do
    Begin
      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;

    End;

  end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM._SetInteger(AMachine: TatVirtualMachine);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
  try
   TFDQuery(Self.FindComponent(AMachine.GetInputArgAsString(0) )).FieldByname(AMachine.GetInputArgAsString(1)).AsInteger:=AMachine.GetInputArgAsInteger(2);
  except
  on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try
       //erro.SaveToFile('c:\GoodSales\core\erros.txt');
      Except
      end;

    End;

  end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM._SetString(AMachine: TatVirtualMachine);
Begin

//   GeraSQL('Select TOP 1 * from '+AMachine.GetInputArgAsString(0),AMachine.GetInputArgAsString(1),AMachine.GetInputArgAsString(2));
 try
   TFDQuery(Self.FindComponent(AMachine.GetInputArgAsString(0) )).FieldByname(AMachine.GetInputArgAsString(1)).AsString:=AMachine.GetInputArgAsString(2);
 except
  on e:Exception do
    Begin
      //ShowMessage(e.Message);

      try

      Except
      end;
       erro.Free;
    End;

 end;
  // With AMachine do
 //   ReturnOutputArg(AsInteger('MAXREC','MAX'));
   // (CurrentObject as TControl).Parent := TObject(GetInputArgAsInteger(0)) as TWinControl;

End;

Procedure TSM._Divide(AMachine: TatVirtualMachine);
Begin
With AMachine do
Begin
   if GetInputArgAsFloat(1) = 0 then
      ReturnOutputArg(0)
   else
      ReturnOutputArg(GetInputArgAsFloat(0)/GetInputArgAsFloat(1));
end;
End;

Procedure TSM._ProcGraf(AMachine: TatVirtualMachine);
var XML,data,coltit,colval,leg:String;
Begin
//0Data - 1ColTIT - 2ColVal - 3Chart - 4Nome - 5Largura - 6Altura - 7Caption - 8SubCaption - 9xAxisName - 10yAxisName - 11Npre
With AMachine do
Begin
data:=GetInputArgAsString(0);
coltit:=GetInputArgAsString(1);
colval:=GetInputArgAsString(2);
leg:=GetInputArgAsString(12);

 Xml:='<script language="JavaScript">'+#10;
 Xml:=xml+'var '+GetInputArgAsString(4)+' = new FusionCharts("/Charts/'+GetInputArgAsString(3)+'.swf", "'+GetInputArgAsString(4)+'id", "'+GetInputArgAsString(5)+'", "'+GetInputArgAsString(6)+'", "0", "0");'+#10;
 Xml:=xml+GetInputArgAsString(4)+'.setDataXML("<chart chartLeftMargin='+#39+'5'+#39+' chartRightMargin='+#39+'10'+#39+' chartTopMargin='+#39+'5'+#39+' chartBottomMargin='+#39+'5'+#39+' showLegend = '+#39+'1'+#39+'  showLabels='+#39+leg+#39+' sYAxisValuesDecimals='+#39+'2'+#39+' formatNumberScale='+#39+'0'+#39+' palette='+#39+'2'+#39+' caption='+#39+GetInputArgAsString(7)+#39+' subcaption='+#39+GetInputArgAsString(8)+#39+' xAxisName='+#39+GetInputArgAsString(9)+#39+' yAxisName='+#39+GetInputArgAsString(10)+#39+' numberPrefix='+#39+GetInputArgAsString(11)+#39+' showValues='+#39+leg+#39+'>';

 While TableEOF(data) <> TRUE do
   Begin
     xml:=xml+'<set label='+#39+trim(AsString(data,coltit))+#39+' value='+#39+FormatFloat('#0',AsFloat(data,colval))+#39+' />';
     MoveNext(data);
   End;
 xml:=xml+'<styles><definition><style name='+#39+'Anim1'+#39+' type='+#39+'animation'+#39+' param='+#39+'_xscale'+#39+' start='+#39+'0'+#39+' duration='+#39+'1'+#39+' /><style name='+#39+'Anim2'+#39+' type='+#39+'animation'+#39+' param='+#39+'_alpha'+#39+' start='+#39+'0'+#39+' duration='+#39+'1'+#39+' /><style name='+#39+'DataShadow'+#39+' type='+#39+'Shadow'+#39+' alpha='+#39+'20'+#39+'/></definition><application><apply toObject='+#39+'DIVLINES'+#39+' styles='+#39+'Anim1'+#39+' /><apply toObject='+#39+'HGRID'+#39+' styles='+#39+'Anim2'+#39+' /><apply toObject='+#39+'DATALABELS'+#39+' styles='+#39+'DataShadow,Anim2'+#39+' /></application></styles></chart>");'+#10;
 xml:=xml+''+GetInputArgAsString(4)+'.render("'+GetInputArgAsString(4)+'div");</script>';


     ReturnOutputArg(xml);
 End;
End;

Procedure TSM._ProcGraf2(AMachine: TatVirtualMachine);
var XML,data,coltit,colval:String;
        data2,coltit2,colval2, nome2:String;
Begin
//0Data - 1ColTIT - 2ColVal - 3Chart - 4Nome - 5Largura - 6Altura - 7Caption - 8SubCaption - 9xAxisName - 10yAxisName - 11Npre -
//12Data - 13ColVal - 14Chart - 15 Name
With AMachine do
Begin
data:=GetInputArgAsString(0);
coltit:=GetInputArgAsString(1);
colval:=GetInputArgAsString(2);

data2:=GetInputArgAsString(12);
colval2:=GetInputArgAsString(13);
nome2:=GetInputArgAsString(15);
coltit2:=GetInputArgAsString(16);

 Xml:='<script language="JavaScript">'+#10;
 Xml:=xml+'var '+GetInputArgAsString(4)+' = new FusionCharts("/Charts/'+GetInputArgAsString(3)+'.swf", "'+GetInputArgAsString(4)+'id", "'+GetInputArgAsString(5)+'", "'+GetInputArgAsString(6)+'", "0", "0");'+#10;
 Xml:=xml+GetInputArgAsString(4)+'.setDataXML("<chart palette='+#39+'1'+#39+' caption='+#39+GetInputArgAsString(7)+#39+' showValues='+#39+'0'+#39+' showNames='+#39+'1'+#39+'  sYAxisValuesDecimals='+#39+'2'+#39+' connectNullData='+#39+'0'+#39+' numDivLines='+#39+'8'+#39+' formatNumberScale='+#39+'0'+#39+'>';

 MoveFirst(data);
 Xml:=xml+'<categories>';
 //While TableEOF(data)<>1 do
   Begin
     xml:=xml+'<category label='+#39+coltit+#39+'/>';
    if coltit2 <> '' then
     xml:=xml+'<category label='+#39+coltit2+#39+'/>';
     //MoveNext(data);
   End;
 xml:=xml+'</categories>';
 xml:=xml+'<dataset seriesName='+#39+GetInputArgAsString(4)+#39+' showNames='+#39+'0'+#39+'>';
 MoveFirst(data);
  While TableEOF(data)<> TRUE DO
   Begin
     xml:=xml+'<set value='+#39+FormatFloat('#0',AsFloat(data,colval))+#39+' />';
     MoveNext(data);
   End;
  xml:=xml+'</dataset>';

 xml:=xml+'<dataset seriesName='+#39+nome2+#39+'>';
 // renderAs='+#39+GetInputArgAsString(14)+#39+' showNames='+#39+'0'+#39+'>';
 MoveFirst(data2);
  While TableEOF(data2)<> true do
   Begin
     xml:=xml+'<set value='+#39+FormatFloat('#0',AsFloat(data2,colval2))+#39+' />';
     MoveNext(data2);
   End;
  xml:=xml+'</dataset>';


 xml:=xml+'</chart>");'+#10;
 xml:=xml+''+GetInputArgAsString(4)+'.render("'+GetInputArgAsString(4)+'div");</script>';


  ReturnOutputArg(xml);
 End;
End;


Procedure TSM._NoRound(AMachine: TatVirtualMachine);
var numero:Real;
begin
With AMachine do
Begin
  numero:=GetInputArgAsFloat(0);
  if pos(',',FloatToStr(numero))>0 then
     numero:=StrTOFloat(copy(FloatTostr(numero),1,pos(',',FloatToStr(numero))-1)+','+copy(FloatTostr(numero),pos(',',FloatToStr(numero))+1,GetInputArgAsInteger(1)))
  else
  if pos('.',FloatToStr(numero))>0 then
     numero:=StrTOFloat(copy(FloatTostr(numero),1,pos('.',FloatToStr(numero))-1)+','+copy(FloatTostr(numero),pos('.',FloatToStr(numero))+1,GetInputArgAsInteger(1)));

  ReturnOutputArg(numero);

End;
end;


Procedure TSM._ProcGrafL(AMachine: TatVirtualMachine);
var XML,data,coltit,colval:String;
        data2,coltit2,colval2, nome2:String;
Begin
//0Data - 1ColTIT - 2ColVal - 3Chart - 4Nome - 5Largura - 6Altura - 7Caption - 8SubCaption - 9xAxisName - 10yAxisName - 11Npre -
//12Data - 13ColVal - 14Chart - 15 Name
With AMachine do
Begin
data:=GetInputArgAsString(0);
coltit:=GetInputArgAsString(1);
colval:=GetInputArgAsString(2);

data2:=GetInputArgAsString(12);
colval2:=GetInputArgAsString(13);
nome2:=GetInputArgAsString(15);
coltit2:=GetInputArgAsString(16);

 Xml:='<script language="JavaScript">'+#10;
 Xml:=xml+'var '+GetInputArgAsString(4)+' = new FusionCharts("/Charts/'+GetInputArgAsString(3)+'.swf", "'+GetInputArgAsString(4)+'id", "'+GetInputArgAsString(5)+'", "'+GetInputArgAsString(6)+'", "0", "0");'+#10;
 Xml:=xml+GetInputArgAsString(4)+'.setDataXML("<chart palette='+#39+'1'+#39+' caption='+#39+GetInputArgAsString(7)+#39+' showValues='+#39+'0'+#39+' showNames='+#39+'1'+#39+'  sYAxisValuesDecimals='+#39+'2'+#39+' connectNullData='+#39+'0'+#39+' numDivLines='+#39+'8'+#39+' formatNumberScale='+#39+'0'+#39+'>';

 MoveFirst(data);
 Xml:=xml+'<categories>';
 While TableEOF(data)<> true do
   Begin
     xml:=xml+'<category label='+#39+AsString(data,coltit)+#39+'/>';
     MoveNext(data);
   End;
 xml:=xml+'</categories>';
 xml:=xml+'<dataset seriesName='+#39+GetInputArgAsString(4)+#39+' showNames='+#39+'0'+#39+'>';
 MoveFirst(data);
  While TableEOF(data)<> true do
   Begin
     xml:=xml+'<set value='+#39+FormatFloat('#0',AsFloat(data,colval))+#39+' />';
     MoveNext(data);
   End;
  xml:=xml+'</dataset>';

 xml:=xml+'<dataset seriesName='+#39+nome2+#39+' showValues='+#39+'0'+#39+' parentYAxis='+#39+'S'+#39+'>';
 // renderAs='+#39+GetInputArgAsString(14)+#39+' showNames='+#39+'0'+#39+'>';
 MoveFirst(data2);
  While TableEOF(data2)<> true do
   Begin
     xml:=xml+'<set value='+#39+FormatFloat('#0',AsFloat(data2,colval2))+#39+' />';
     MoveNext(data2);
   End;
  xml:=xml+'</dataset>';


 xml:=xml+'</chart>");'+#10;
 xml:=xml+''+GetInputArgAsString(4)+'.render("'+GetInputArgAsString(4)+'div");</script>';


  ReturnOutputArg(xml);
 End;
End;


Procedure TSM._StrutG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(Strut(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;

Procedure TSM._StrutGcm(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutCM(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;


Procedure TSM._StrutEstG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutEst(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;


Procedure TSM._StrutGOP(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutOP(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;

Procedure TSM._StrutGSTD(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutSTD(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;


Procedure TSM._StrutGQ(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(StrutQ(GetInputArgAsString(0), GetInputArgAsString(1), GetInputArgAsString(2),GetInputArgAsString(3),GetInputArgAsString(4)) );
End;


Procedure TSM._AsStringG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(AsString(GetInputArgAsString(0), GetInputArgAsString(1)) );
End;

Procedure TSM._AsFloatG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(AsFloat(GetInputArgAsString(0), GetInputArgAsString(1)) );
End;

Procedure TSM._AsIntegerG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(AsInteger(GetInputArgAsString(0), GetInputArgAsString(1)) );
End;

Procedure TSM._RecordCountG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(RecordCount(GetInputArgAsString(0)) );
End;


Procedure TSM._MoveNextG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(MoveNext(GetInputArgAsString(0)) );
End;

Procedure TSM._MovePriorG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(MovePrior(GetInputArgAsString(0)) );
End;

Procedure TSM._MoveLastG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(MoveLast(GetInputArgAsString(0)) );
End;

Procedure TSM._MoveFirstG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(MoveFirst(GetInputArgAsString(0)) );
End;

Procedure TSM._TableEOFG(AMachine: TatVirtualMachine);
Begin
  With AMachine do
    ReturnOutputArg(TableEOF(GetInputArgAsString(0)) );
End;

function TSM.RExecScript;

begin
  SetAmbiente(ambiente);

 try
  //result:=ExecScript(scr,'');

 Except
 end;

end;

function TSM.RPainel;
var
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  LJsonValue : TJSONValue;
  LItem     : TJSONValue;
  i:Integer;

  procedure js(nome,cubo:String);
  Begin
   Writer.WritePropertyName(nome);
   Writer.WriteStartArray;

  //Filtros
      while not TableEOF(cubo) do
       Begin
          i:=0;
          Writer.WriteStartObject;

          with TDataSet(Self.FindComponent(cubo)) do
           Begin
              while i < FieldCount do
                Begin

                  Writer.WritePropertyName(Fields[i].FieldName);

                  if  (Fields[i].DataType = ftSmallint)
                   or (Fields[i].DataType = ftInteger)
                   or (Fields[i].DataType = ftWord)
                   or (Fields[i].DataType = ftFloat)
                   or (Fields[i].DataType = ftCurrency)
                   or (Fields[i].DataType = ftLargeint)
                   or (Fields[i].DataType = ftFMTBcd)
                   or (Fields[i].DataType = ftLongWord)
                   or (Fields[i].DataType = ftShortint)
                   or (Fields[i].DataType = ftByte)
                   or (Fields[i].DataType = ftExtended)
                   or (Fields[i].DataType = ftConnection)
                   or (Fields[i].DataType = ftParams)
                   or (Fields[i].DataType = ftStream)
                   or (Fields[i].DataType = ftSingle) then

                  Writer.WriteValue(Fields[i].AsFloat)
                  else
                  if   (Fields[i].DataType =  ftDate)
                    or (Fields[i].DataType = ftDateTime)
                    or (Fields[i].DataType =   ftTimeStamp) or (Fields[i].DataType =   ftTime) then

                  Writer.WriteValue(Fields[i].AsDateTime)
                  else

                    Writer.WriteValue(Fields[i].AsString);

                  i:=i+1;
                End;



           End;


          Writer.WriteEndObject;
        MoveNext(cubo);
       End;

  Writer.WriteEndArray;

  End;

begin


  SetAmbiente(ambiente);
  GeraSQL2('Select * from REPTAB Where ID = '+id.ToString,'REPTAB','DEFS');
  GeraSQL2('Select * from REPPARAM Where NOMEREL = "'+AsString('REPTAB','nome')+'" ORDER BY ORDEM','REPPARAM','DEFS');
  GeraSQL2('Select * from REPCUBO Where NOMEREL = "'+AsString('REPTAB','nome')+'" order by ORDEM','REPCUBO','DEFS');
  GeraSQL2('Select * from REPJOB Where NOMEREL = "'+AsString('REPTAB','nome')+'" order by ORDEM','REPJOB','DEFS');
  GeraSQL2('Select * from REPLAYOUT Where NOMEREL = "'+AsString('REPTAB','nome')+'"','REPLAYOUT','DEFS');
  GeraSQL2('Select * from REPWORK Where RELATORIO = "'+AsString('REPTAB','nome')+'"','REPWORK','DEFS');
  GeraSQL2('SELECT * FROM RELUSER WHERE RELATORIO = '+#39+AsString('REPTAB','nome')+#39+' ','RELUSER','DEFS');
  GeraSQL2('Select * from REPROW where RELATORIO = "'+AsString('REPTAB','nome')+'" order by ORDEM','REPROW','DEFS');
  GeraSQL2('Select * from REPMOSAICOS where RELATORIO = "'+AsString('REPTAB','nome')+'" order by ORDEM','REPMOSAICOS','DEFS');
  GeraSQL2('Select * from REPVAR where NOMEREL = "'+AsString('REPTAB','nome')+'" ','REPVAR','DEFS');



  MoveFirst('REPCUBO');

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.Indented;

  Writer.WriteStartObject;

  Writer.WritePropertyName('CUBOS');
  Writer.WriteStartArray;

  //Cubos
      while not TableEOF('REPCUBO') do
       Begin
          Writer.WriteStartObject;

          Writer.WritePropertyName('cubo');
          Writer.WriteValue(AsString('REPCUBO','NOME'));

          Writer.WritePropertyName('descricao');
          Writer.WriteValue(AsString('REPCUBO','TITULO'));

          Writer.WritePropertyName('ordem');
          Writer.WriteValue(AsInteger('REPCUBO','ORDEM'));

          Writer.WritePropertyName('TIPO');
          Writer.WriteValue(AsString('REPCUBO','TIPO'));

          Writer.WritePropertyName('CONEXAO');
          Writer.WriteValue(AsString('REPCUBO','BANCO'));


          Writer.WriteEndObject;
        MoveNext('REPCUBO');
       End;
      Writer.WriteEndArray;

       js('Filtros','REPPARAM');
       js('Relatorio','REPTAB');


  //Writer.WriteEndArray;
  Writer.WriteEndObject;






 try
  result:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(StringWriter.ToString), 0)  as TJSONObject;
  //TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(StringWriter.ToString),0) as TJSONArray;


 Except
 end;

end;


function TSM.ExecScript;
var newScr:TatPascalScripter;
      erro:TStringList;
begin

 newScr:=TatPascalScripter.Create(Self);
 newScr.AddComponents(Self);
 newScr.SourceCode.Text:=scr;
 newScr.OnRuntimeError:=atPascalScripter1RuntimeError;

 with newScr do
 BEgin

 AddLibrary(ap_windows.TatWindowsLibrary);
 AddLibrary(ap_db.TatDBLibrary);
 AddLibrary(ap_Sysutils.TatSysUtilsLibrary);
 AddLibrary(ap_Classes.TatClassesLibrary);
 AddLibrary(ap_Controls.TatControlsLibrary);
 AddLibrary(ap_Forms.TatFormsLibrary);
 AddLibrary(ap_Dialogs.TatDialogsLibrary);
 AddLibrary(ap_StdCtrls.TatStdCtrlsLibrary);
 AddLibrary(ap_System.TatDelphiSystemLibrary);
 AddLibrary(ap_ExtCtrls.TatExtCtrlsLibrary);
 AddLibrary(ap_ComCtrls.TatComCtrlsLibrary);
 AddLibrary(ap_Menus.TatMenusLibrary);
 AddLibrary(ap_Buttons.TatButtonsLibrary);



 DefineMethod('AbrirExcel',2,tknone,nil,AbrirExcelg,false);
 DefineMethod('FecharExcel',0,tknone,nil,FecharExcelg,false);
 DefineMethod('TextoToExcel',2,tkNone,nil,TextoToExcelg,false);
 DefineMethod('NumeroToExcel',2,tkNone,nil,NumeroToExcelG,false);
 DefineMethod('ExcelToNumero',2,tkFloat,nil,ExcelToNumeroG,false);
 DefineMethod('ExcelRecalc',0,tkFloat,nil,ExcelRecalcG,false);
 DefineMethod('ExcelToTexto',1,tkString,nil,ExcelToTextoG,false);
 DefineMethod('ExcelVazio',1,tkInteger,nil,ExcelVazioG,false);
 DefineMethod('ExcelToData',1,tkFloat,nil,ExcelToDataG,false);


 DefineMethod('LocalSQL', 2, tkClass, TDataSet, _LocalSQL,false);
 DefineMethod('uDataSets', 0, tknone, nil, _uDataSets,false);
 DefineMethod('fimmes',2,tkInteger,nil,_fimmes,false);
 DefineMethod('SetOrderADV',3,tkNone,nil,SetOrderADV,false);
 DefineMethod('runwkf',2,tkString,nil,_runwkfg,false);
 DefineMethod('Procrel',5,tkString,nil,_Procrelg,false);
 DefineMethod('Procreln',6,tkString,nil,_Procrelng,false);
 DefineMethod('Form',1,tkString,nil,_Form,false);
 DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 DefineMethod('AsString', 2, tkString, nil, _AsStringG,false);
 DefineMethod('AsInteger', 2, tkInteger, nil, _AsIntegerG,false);
 DefineMethod('AsFloat', 2, tkFloat, nil, _AsFloatG,false);
 DefineMethod('MovePrior', 1, tknone, nil, _MovePriorG,false);
 DefineMethod('MoveFirst', 1, tknone, nil, _MoveFirstG,false);
 DefineMethod('MoveNext', 1, tknone, nil, _MoveNextG,false);
 DefineMethod('MoveLast', 1, tknone, nil, _MoveLastG,false);
 DefineMethod('TableEOF', 1, tkInteger, nil, _TableEOFG,false);
 DefineMethod('RecordCount', 1, tkInteger, nil, _RecordCountG,false);
 DefineMethod('MaxRECNO', 4, tkInteger, nil, _MaxRECNOG,false);
 DefineMethod('GeraSQL', 3, tkInteger, nil, _GeraSQLG,false);
 DefineMethod('RestAPI', 2, tkString, nil, _RestAPI,false);
 DefineMethod('GetTransfer', 4, tkInteger, nil, _getTransfer,false);
 DefineMethod('ExecSCRIPT', 2, tkNone, nil, _ExecSCRIPTG,false);
 DefineMethod('FiltroSQL', 2, tkInteger, nil, _FiltroSQLG,false);
 DefineMethod('RemoveFiltro', 1, tknone, nil, _RemoveFiltroG,false);
 DefineMethod('ExecSQL', 3, tkInteger, nil, _ExecSQLG,false);
 DefineMethod('ComandoInserir2', 1, tknone, nil, _ComandoInserir2,false);
 DefineMethod('ComandoInserir', 3, tknone, nil, _ComandoInserir,false);
 DefineMethod('ComandoGravar', 1, tknone, nil, _ComandoGravar,false);
 DefineMethod('SetString', 3, tknone, nil, _SetString,false);
 DefineMethod('Strut', 5, tkFloat, nil, _StrutG,false);
 DefineMethod('Strutd', 5, tkFloat, nil, _StrutDG,false);
 DefineMethod('StrutCM', 5, tkFloat, nil, _StrutGCM,false);
 DefineMethod('StrutEst', 5, tkFloat, nil, _StrutEstG,false);
 DefineMethod('StrutSTD', 5, tkFloat, nil, _StrutGSTD,false);
 DefineMethod('StrutQ', 5, tkFloat, nil, _StrutGQ,false);
 DefineMethod('StrutOP', 5, tkFloat, nil, _StrutGOP,false);
 DefineMethod('SetInteger', 3, tkNone, nil, _SetInteger,false);
 DefineMethod('SetFloat', 3, tkNone, nil, _SetFloat,false);
 DefineMethod('ProcGraf',13,tkString,nil,_ProcGraf,false);
 DefineMethod('ProcGraf2',17,tkString,nil,_ProcGraf2,false);
 DefineMethod('ProcGrafL',17,tkString,nil,_ProcGrafl,false);
 DefineMethod('WebFields',0,tkString,nil,_WebFields,false);
 DefineMethod('ProcDash',5,tkString,nil,_ProcDash,false);
 DefineMethod('SegUn',4,tkFloat,nil,_SegUnG,false);
 DefineMethod('Divide',2,tkFloat,nil,_Divide,false);
 DefineMethod('Encode',1,tkString,nil,_Encode,false);
 DefineMethod('Decode',1,tkString,nil,_Decode,false);
 DefineMethod('SendMail',5,tkInteger,nil,_SendmailG,false);
 DefineMethod('SendMailID',6,tkInteger,nil,_SendmailIDG,false);

 DefineMethod('FazLog',1,tkString,nil,_FazLog,false);
 DefineMethod('TableEdit',1,tkString,nil,_TableEdit,false);
 DefineMethod('CreateTMP',1,tkString,nil,_CreateTMP,false);
 DefineMethod('AddField',4,tkString,nil,_AddField,false);
 DefineMethod('OpenTMP',1,tkString,nil,_OpenTMP,false);
 DefineMethod('DropTMP',1,tkString,nil,_DropTMP,false);
 DefineMethod('Locate',3,tkString,nil,_GLocate,false);
 DefineMethod('Condicao',6,tkNone,nil,_Condicao,false);
 DefineMethod('ProcTES',6,TkFloat,nil,_ProcTESG,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);
 DefineMethod('Potencia',2,TkFloat,nil,_Potencia,false);
 DefineMethod('NoRound',2,TkFloat,nil,_NoRound,false);
 DefineMethod('calcular',1,TkFloat,nil,_calcular,false);
 DefineMethod('GetRecNo',1,TkInteger,nil,_GetRecNo,false);
 DefineMethod('SetRecNo',2,TkInteger,nil,_SetRecNo,false);
 DefineMethod('LoadFile',2,tkString,nil,_gLoadFile,false);
 DefineMethod('CreateFile',1,tkString,nil,_gLoadFile,false);
 DefineMethod('SaveFile',2,tkString,nil,_gSaveFile,false);
 DefineMethod('DeleteFile',1,tkString,nil,_gDeleteFile,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);


 newScr.DefineMethod('fimmes',2,tkInteger,nil,_fimmes,false);
 newScr.DefineMethod('LocalSQL', 2, tkClass, TDataSet, _LocalSQL,false);
 newScr.DefineMethod('uDataSets', 0, tknone, nil, _uDataSets,false);
 newScr.DefineMethod('genericos',0,tkString,nil,genericos,false);
 newScr.DefineMethod('SetOrderADV',3,tkNone,nil,SetOrderADV,false);
 newScr.DefineMethod('runwkf',2,tkString,nil,_runwkfg,false);
 newScr.DefineMethod('Procrel',5,tkString,nil,_Procrelg,false);
 newScr.DefineMethod('Procreln',6,tkString,nil,_Procrelng,false);
 NewScr.DefineMethod('Form',1,tkString,nil,_Form,false);
 newScr.DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 newScr.DefineMethod('AsString', 2, tkString, nil, _AsStringG,false);
 newScr.DefineMethod('AsInteger', 2, tkInteger, nil, _AsIntegerG,false);
 newScr.DefineMethod('AsFloat', 2, tkFloat, nil, _AsFloatG,false);
 newScr.DefineMethod('MovePrior', 1, tknone, nil, _MovePriorG,false);
 newScr.DefineMethod('MoveFirst', 1, tknone, nil, _MoveFirstG,false);
 newScr.DefineMethod('MoveNext', 1, tknone, nil, _MoveNextG,false);
 newScr.DefineMethod('MoveLast', 1, tknone, nil, _MoveLastG,false);
 newScr.DefineMethod('TableEOF', 1, tkInteger, nil, _TableEOFG,false);
 newScr.DefineMethod('RecordCount', 1, tkInteger, nil, _RecordCountG,false);
 newScr.DefineMethod('MaxRECNO', 4, tkInteger, nil, _MaxRECNOG,false);
 newScr.DefineMethod('GeraSQL', 3, tkInteger, nil, _GeraSQLG,false);
 newScr.DefineMethod('RestAPI', 2, tkString, nil, _RestAPI,false);
 newScr.DefineMethod('GetTransfer', 4, tkInteger, nil, _getTransfer,false);
 newScr.DefineMethod('ExecSCRIPT', 2, tkNone, nil, _ExecSCRIPTG,false);
 newScr.DefineMethod('FiltroSQL', 2, tkInteger, nil, _FiltroSQLG,false);
 newScr.DefineMethod('RemoveFiltro', 1, tknone, nil, _RemoveFiltroG,false);
 newScr.DefineMethod('ExecSQL', 3, tkInteger, nil, _ExecSQLG,false);
 newScr.DefineMethod('ComandoInserir2', 1, tknone, nil, _ComandoInserir2,false);
 newScr.DefineMethod('ComandoInserir', 3, tknone, nil, _ComandoInserir,false);
 newScr.DefineMethod('ComandoGravar', 1, tknone, nil, _ComandoGravar,false);
 newScr.DefineMethod('SetString', 3, tknone, nil, _SetString,false);
 newScr.DefineMethod('Strut', 5, tkFloat, nil, _StrutG,false);
 newScr.DefineMethod('StrutCM', 5, tkFloat, nil, _StrutGCM,false);
 newScr.DefineMethod('StrutSTD', 5, tkFloat, nil, _StrutGSTD,false);
 newScr.DefineMethod('StrutQ', 5, tkFloat, nil, _StrutGQ,false);
 newScr.DefineMethod('StrutOP', 5, tkFloat, nil, _StrutGOP,false);
 newScr.DefineMethod('SetInteger', 3, tkNone, nil, _SetInteger,false);
 newScr.DefineMethod('SetFloat', 3, tkNone, nil, _SetFloat,false);
 newScr.DefineMethod('SegUn',4,tkFloat,nil,_SegUnG,false);
 newScr.DefineMethod('Divide',2,tkFloat,nil,_Divide,false);
 newScr.DefineMethod('CreateTMP',1,tkString,nil,_CreateTMP,false);
 newScr.DefineMethod('AddField',4,tkString,nil,_AddField,false);
 newScr.DefineMethod('OpenTMP',1,tkString,nil,_OpenTMP,false);
 newScr.DefineMethod('DropTMP',1,tkString,nil,_DropTMP,false);
 newScr.DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 newScr.DefineMethod('Locate',3,tkString,nil,_GLocate,false);



End;


 newSCR.AddComponents(Self);

 try
   try
   newScr.Execute;


   except
   on e:Exception do
    Begin
      result:=e.Message;
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
        erro.Add('//-------//');

      try
        erro.SaveToFile('c:\GoodSales\core\er'+obj+'.txt');
      Except
      end;
       //erro.Free;

    End;

   end;
 Finally
  Try
   freeandnil(newScr);
 //  terminate;
  Except
  End;
 End;


end;


function TSM.ExecScriptRel;
var newScr:TatPascalScripter;
      erro:TStringList;

Procedure _rForm(AMachine: TatVirtualMachine);
var TEXTO,result:String;
Begin

texto:=Filtro;

With AMachine do
Begin
if pos(GetInputArgAsString(0),texto) > 0 then
 Begin
   if pos('&',texto) > 0 then
    Begin
      result:=copy(Texto,pos(GetInputArgAsString(0),texto)+Length(GetInputArgAsString(0))+1,Length(texto));
      if pos('&',result) > 0 then
      result:=copy(result,1,pos('&',result)-1);
    End
    else
    Begin
      result:=copy(Texto,pos(GetInputArgAsString(0),texto)+Length(GetInputArgAsString(0))+1,Length(texto));

    End;
 End;
 if Pos('+',result) > 0 then
 while Pos('+',result)>0 do
    Begin
     result:=trim(copy(result,1,Pos('+',result)-1)+' '+copy(result,Pos('+',result)+1,1000));
    End;


    ReturnOutputArg(result);
End;
End;


begin


 newScr:=TatPascalScripter.Create(Self);
 newScr.AddComponents(Self);
 newScr.SourceCode.Text:=scr;
 newScr.OnRuntimeError:=atPascalScripter1RuntimeError;

 with newScr do
 BEgin
 DefineMethod('LocalSQL', 2, tkClass, TDataSet, _LocalSQL,false);
 DefineMethod('uDataSets', 0, tknone, nil, _uDataSets,false);
 DefineMethod('fimmes',2,tkInteger,nil,_fimmes,false);
 DefineMethod('SetOrderADV',3,tkNone,nil,SetOrderADV,false);
 DefineMethod('runwkf',2,tkString,nil,_runwkfg,false);
 DefineMethod('Procrel',5,tkString,nil,_Procrelg,false);
 DefineMethod('Procreln',6,tkString,nil,_Procrelng,false);
 DefineMethod('Form',1,tkString,nil,_Form,false);
 DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 DefineMethod('AsString', 2, tkString, nil, _AsStringG,false);
 DefineMethod('AsInteger', 2, tkInteger, nil, _AsIntegerG,false);
 DefineMethod('AsFloat', 2, tkFloat, nil, _AsFloatG,false);
 DefineMethod('MovePrior', 1, tknone, nil, _MovePriorG,false);
 DefineMethod('MoveFirst', 1, tknone, nil, _MoveFirstG,false);
 DefineMethod('MoveNext', 1, tknone, nil, _MoveNextG,false);
 DefineMethod('MoveLast', 1, tknone, nil, _MoveLastG,false);
 DefineMethod('TableEOF', 1, tkInteger, nil, _TableEOFG,false);
 DefineMethod('RecordCount', 1, tkInteger, nil, _RecordCountG,false);
 DefineMethod('MaxRECNO', 4, tkInteger, nil, _MaxRECNOG,false);
 DefineMethod('GeraSQL', 3, tkInteger, nil, _GeraSQLG,false);
 DefineMethod('RestAPI', 2, tkString, nil, _RestAPI,false);
 DefineMethod('GetTransfer', 4, tkInteger, nil, _getTransfer,false);
 DefineMethod('ExecSCRIPT', 2, tkNone, nil, _ExecSCRIPTG,false);
 DefineMethod('FiltroSQL', 2, tkInteger, nil, _FiltroSQLG,false);
 DefineMethod('RemoveFiltro', 1, tknone, nil, _RemoveFiltroG,false);
 DefineMethod('ExecSQL', 3, tkInteger, nil, _ExecSQLG,false);
 DefineMethod('ComandoInserir2', 1, tknone, nil, _ComandoInserir2,false);
 DefineMethod('ComandoInserir', 3, tknone, nil, _ComandoInserir,false);
 DefineMethod('ComandoGravar', 1, tknone, nil, _ComandoGravar,false);
 DefineMethod('SetString', 3, tknone, nil, _SetString,false);
 DefineMethod('Strut', 5, tkFloat, nil, _StrutG,false);
 DefineMethod('Strutd', 5, tkFloat, nil, _StrutDG,false);
 DefineMethod('StrutCM', 5, tkFloat, nil, _StrutGCM,false);
 DefineMethod('StrutEst', 5, tkFloat, nil, _StrutEstG,false);
 DefineMethod('StrutSTD', 5, tkFloat, nil, _StrutGSTD,false);
 DefineMethod('StrutQ', 5, tkFloat, nil, _StrutGQ,false);
 DefineMethod('StrutOP', 5, tkFloat, nil, _StrutGOP,false);
 DefineMethod('SetInteger', 3, tkNone, nil, _SetInteger,false);
 DefineMethod('SetFloat', 3, tkNone, nil, _SetFloat,false);
 DefineMethod('ProcGraf',13,tkString,nil,_ProcGraf,false);
 DefineMethod('ProcGraf2',17,tkString,nil,_ProcGraf2,false);
 DefineMethod('ProcGrafL',17,tkString,nil,_ProcGrafl,false);
 DefineMethod('WebFields',0,tkString,nil,_WebFields,false);
 DefineMethod('ProcDash',5,tkString,nil,_ProcDash,false);
 DefineMethod('SegUn',4,tkFloat,nil,_SegUnG,false);
 DefineMethod('Divide',2,tkFloat,nil,_Divide,false);
 DefineMethod('Encode',1,tkString,nil,_Encode,false);
 DefineMethod('Decode',1,tkString,nil,_Decode,false);
 DefineMethod('SendMail',5,tkInteger,nil,_SendmailG,false);
 DefineMethod('SendMailID',6,tkInteger,nil,_SendmailIDG,false);

 DefineMethod('FazLog',1,tkString,nil,_FazLog,false);
 DefineMethod('TableEdit',1,tkString,nil,_TableEdit,false);
 DefineMethod('CreateTMP',1,tkString,nil,_CreateTMP,false);
 DefineMethod('AddField',4,tkString,nil,_AddField,false);
 DefineMethod('OpenTMP',1,tkString,nil,_OpenTMP,false);
 DefineMethod('DropTMP',1,tkString,nil,_DropTMP,false);
 DefineMethod('Locate',3,tkString,nil,_GLocate,false);
 DefineMethod('Condicao',6,tkNone,nil,_Condicao,false);
 DefineMethod('ProcTES',6,TkFloat,nil,_ProcTESG,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);
 DefineMethod('Potencia',2,TkFloat,nil,_Potencia,false);
 DefineMethod('NoRound',2,TkFloat,nil,_NoRound,false);
 DefineMethod('calcular',1,TkFloat,nil,_calcular,false);
 DefineMethod('GetRecNo',1,TkInteger,nil,_GetRecNo,false);
 DefineMethod('SetRecNo',2,TkInteger,nil,_SetRecNo,false);
 DefineMethod('LoadFile',2,tkString,nil,_gLoadFile,false);
 DefineMethod('CreateFile',1,tkString,nil,_gLoadFile,false);
 DefineMethod('SaveFile',2,tkString,nil,_gSaveFile,false);
 DefineMethod('DeleteFile',1,tkString,nil,_gDeleteFile,false);
 DefineMethod('ProcTES2',8,TkFloat,nil,_ProcTESG2,false);


 newScr.DefineMethod('LocalSQL', 2, tkClass, TDataSet, _LocalSQL,false);
 newScr.DefineMethod('uDataSets', 0, tknone, nil, _uDataSets,false);
 newScr.DefineMethod('fimmes',2,tkInteger,nil,_fimmes,false);
 newScr.DefineMethod('genericos',0,tkString,nil,genericos,false);
 newScr.DefineMethod('SetOrderADV',3,tkNone,nil,SetOrderADV,false);
 newScr.DefineMethod('runwkf',2,tkString,nil,_runwkfg,false);
 newScr.DefineMethod('Procrel',5,tkString,nil,_Procrelg,false);
 newScr.DefineMethod('Procreln',6,tkString,nil,_Procrelng,false);
 NewScr.DefineMethod('Form',1,tkString,nil,_Form,false);
 newScr.DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 newScr.DefineMethod('AsString', 2, tkString, nil, _AsStringG,false);
 newScr.DefineMethod('AsInteger', 2, tkInteger, nil, _AsIntegerG,false);
 newScr.DefineMethod('AsFloat', 2, tkFloat, nil, _AsFloatG,false);
 newScr.DefineMethod('MovePrior', 1, tknone, nil, _MovePriorG,false);
 newScr.DefineMethod('MoveFirst', 1, tknone, nil, _MoveFirstG,false);
 newScr.DefineMethod('MoveNext', 1, tknone, nil, _MoveNextG,false);
 newScr.DefineMethod('MoveLast', 1, tknone, nil, _MoveLastG,false);
 newScr.DefineMethod('TableEOF', 1, tkInteger, nil, _TableEOFG,false);
 newScr.DefineMethod('RecordCount', 1, tkInteger, nil, _RecordCountG,false);
 newScr.DefineMethod('MaxRECNO', 4, tkInteger, nil, _MaxRECNOG,false);
 newScr.DefineMethod('GeraSQL', 3, tkInteger, nil, _GeraSQLG,false);
 newScr.DefineMethod('RestAPI', 2, tkString, nil, _RestAPI,false);
 Newscr.DefineMethod('GetTransfer', 4, tkInteger, nil, _getTransfer,false);
 newScr.DefineMethod('ExecSCRIPT', 2, tkNone, nil, _ExecSCRIPTG,false);
 newScr.DefineMethod('FiltroSQL', 2, tkInteger, nil, _FiltroSQLG,false);
 newScr.DefineMethod('RemoveFiltro', 1, tknone, nil, _RemoveFiltroG,false);
 newScr.DefineMethod('ExecSQL', 3, tkInteger, nil, _ExecSQLG,false);
 newScr.DefineMethod('ComandoInserir2', 1, tknone, nil, _ComandoInserir2,false);
 newScr.DefineMethod('ComandoInserir', 3, tknone, nil, _ComandoInserir,false);
 newScr.DefineMethod('ComandoGravar', 1, tknone, nil, _ComandoGravar,false);
 newScr.DefineMethod('SetString', 3, tknone, nil, _SetString,false);
 newScr.DefineMethod('Strut', 5, tkFloat, nil, _StrutG,false);
 newScr.DefineMethod('StrutCM', 5, tkFloat, nil, _StrutGCM,false);
 newScr.DefineMethod('StrutSTD', 5, tkFloat, nil, _StrutGSTD,false);
 newScr.DefineMethod('StrutQ', 5, tkFloat, nil, _StrutGQ,false);
 newScr.DefineMethod('StrutOP', 5, tkFloat, nil, _StrutGOP,false);
 newScr.DefineMethod('SetInteger', 3, tkNone, nil, _SetInteger,false);
 newScr.DefineMethod('SetFloat', 3, tkNone, nil, _SetFloat,false);
 newScr.DefineMethod('SegUn',4,tkFloat,nil,_SegUnG,false);
 newScr.DefineMethod('Divide',2,tkFloat,nil,_Divide,false);
 newScr.DefineMethod('CreateTMP',1,tkString,nil,_CreateTMP,false);
 newScr.DefineMethod('AddField',4,tkString,nil,_AddField,false);
 newScr.DefineMethod('OpenTMP',1,tkString,nil,_OpenTMP,false);
 newScr.DefineMethod('DropTMP',1,tkString,nil,_DropTMP,false);
 newScr.DefineMethod('NewCube',2,TkNone,nil,_NewCube,false);
 newScr.DefineMethod('Locate',3,tkString,nil,_GLocate,false);



End;


 newSCR.AddComponents(Self);

 try
   try
   newScr.Execute;


   except
   on e:Exception do
    Begin
      result:=e.Message;
      //ShowMessage(e.Message);
       erro:=TStringList.Create;
       if fileExists('c:\GoodSales\core\errosJ.txt') then
          erro.LoadFromFile('c:\GoodSales\core\errosJ.txt');

        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+e.Message);
        erro.Add('//-------//');
        erro.Add(formatDateTime('dd/mm/yyyy hh:nn:ss',now)+' - '+scr);
        erro.Add('//-------//');

      try
       //erro.SaveToFile('c:\GoodSales\core\errosJ.txt');
      Except
      end;
       //erro.Free;

    End;

   end;
 Finally
  Try
   freeandnil(newScr);
 //  terminate;
  Except
  End;
 End;


end;



Procedure TSM._WebFields;
Begin
 With AMachine do
  Begin
    ReturnOutputArg(WebField);
  End;
End;


procedure TSM.WorkflowStudio1SendMail(Sender: TObject; TaskIns: TTaskInstance;
  AUser: TWorkflowUser; AEmailInfo: TEmailInformation; var Sent: Boolean);
  var corpo:String;
begin
try
corpo:=AEmailInfo.Text;
corpo:=corpo+'<p><a href="http://'+copy(ip,1,pos(':',ip)-1)+':8080/$/start?pr='+ambiente+'&id='+TaskIns.Key+'">Clique para Abrir o WorkFlow</a></p>';
 SendMail('BI',AUser.Email,AEmailInfo.Subject+' - WorkFlow',corpo,'');
Except

end;

end;

initialization
  System.Classes.RegisterClass(TTaskInstance);


end.


