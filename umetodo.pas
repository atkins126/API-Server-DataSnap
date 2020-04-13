//
// Created by the DataSnap proxy generator.
// 31/10/2016 10:45:50
// 

unit umetodo;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, atScript, JvMemoryDataset, Data.DBXJSONReflect;

type
  TSMClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FApplicationEvents1ExceptionCommand: TDBXCommand;
    FatPascalScripter1RuntimeErrorCommand: TDBXCommand;
    FatPascalScripter1CompileErrorCommand: TDBXCommand;
    FGeraDSCommand: TDBXCommand;
    FLocalSQLCommand: TDBXCommand;
    FuDataSetsCommand: TDBXCommand;
    FsetAmbienteCommand: TDBXCommand;
    FGeraJSONCommand: TDBXCommand;
    FvalidaDOCCommand: TDBXCommand;
    FexisttabCommand: TDBXCommand;
    FrunwkfCommand: TDBXCommand;
    FGetCuboCommand: TDBXCommand;
    FDataSetToJsonTxtCommand: TDBXCommand;
    FProcRELCommand: TDBXCommand;
    FProcRELNCommand: TDBXCommand;
    F_ProcrelGCommand: TDBXCommand;
    F_ProcrelnGCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FGenerateIDCommand: TDBXCommand;
    FGeraSQLCommand: TDBXCommand;
    FExecSQLCommand: TDBXCommand;
    FGetLicencaCommand: TDBXCommand;
    FGeraSQL2Command: TDBXCommand;
    FExecSQL2Command: TDBXCommand;
    FTerminateCommand: TDBXCommand;
    FProcTESCommand: TDBXCommand;
    FProcTES2Command: TDBXCommand;
    FsegunCommand: TDBXCommand;
    FStrutCommand: TDBXCommand;
    FStrutDCommand: TDBXCommand;
    FStrutCMCommand: TDBXCommand;
    FStrutEstCommand: TDBXCommand;
    FStrutSTDCommand: TDBXCommand;
    FStrutOPCommand: TDBXCommand;
    FStrutQCommand: TDBXCommand;
    FExecScriptCommand: TDBXCommand;
    FExecScriptRelCommand: TDBXCommand;
    FAsStringCommand: TDBXCommand;
    FAsIntegerCommand: TDBXCommand;
    FAsFloatCommand: TDBXCommand;
    FTableEOFCommand: TDBXCommand;
    FTableBOFCommand: TDBXCommand;
    FMoveNextCommand: TDBXCommand;
    FMovePriorCommand: TDBXCommand;
    FMoveLastCommand: TDBXCommand;
    FMoveFirstCommand: TDBXCommand;
    FRecNOCommand: TDBXCommand;
    FRecOrdCountCommand: TDBXCommand;
    FFiltroSQLCommand: TDBXCommand;
    FRemoveFiltroCommand: TDBXCommand;
    FSendMailCommand: TDBXCommand;
    FProcessaFPCommand: TDBXCommand;
    FLoadFileCommand: TDBXCommand;
    FCreateFileCommand: TDBXCommand;
    FSaveFileCommand: TDBXCommand;
    FdeleteFCommand: TDBXCommand;
    FFormCommand: TDBXCommand;
    FNewCubeCommand: TDBXCommand;
    FMaxRECNOCommand: TDBXCommand;
    FComandoInserirCommand: TDBXCommand;
    FComandoInserir2Command: TDBXCommand;
    FComandoGravarCommand: TDBXCommand;
    FSetStringCommand: TDBXCommand;
    FSetIntegerCommand: TDBXCommand;
    FSetFloatCommand: TDBXCommand;
    FDivideCommand: TDBXCommand;
    FTableEditCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FaddFieldCommand: TDBXCommand;
    FCreateTMPCommand: TDBXCommand;
    FOPenTMPCommand: TDBXCommand;
    FDropTMPCommand: TDBXCommand;
    FWebFieldsCommand: TDBXCommand;
    FLocateCommand: TDBXCommand;
    FPotenciaCommand: TDBXCommand;
    FNoRoundCommand: TDBXCommand;
    FExecuteCommand: TDBXCommand;
    FgetWorkPendCommand: TDBXCommand;
    FgetWorkFormCommand: TDBXCommand;
    FgetTablesCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure atPascalScripter1RuntimeError(Sender: TObject; var msg: string; row: Integer; col: Integer; var ShowException: Boolean);
    procedure atPascalScripter1CompileError(Sender: TObject; var msg: string; row: Integer; col: Integer; var ShowException: Boolean);
    function GeraDS(comando: string; nome: string; conexao: string): TDataSet;
    function LocalSQL(Comando: string; ado: string): TDataSet;
    procedure uDataSets;
    procedure setAmbiente(nome: string);
    function GeraJSON(Comando: string; ado: string; conexao: string): string;
    function validaDOC(doc: string; tipo: string): Boolean;
    function existtab(tabela: string; banco: string): Boolean;
    function runwkf(nome: string; chave: string): string;
    function GetCubo(nome: string; cubo: string; filtro: string; r: string): string;
    function DataSetToJsonTxt(pDataSet: TDataSet): string;
    function ProcREL(relatorio: string; layout: string; filtro: string; tabela: string; exporta: string): string;
    function ProcRELN(relatorio: string; layout: string; filtro: string; tabela: string; exporta: string; nome: string): string;
    procedure _ProcrelG(AMachine: TatVirtualMachine);
    procedure _ProcrelnG(AMachine: TatVirtualMachine);
    function EchoString(Value: string): string;
    function GenerateID(aSequence: string; conexao: string): Integer;
    function GeraSQL(Comando: string; ado: string; conexao: string): Integer;
    function ExecSQL(Comando: string; ado: string; conexao: string): Integer;
    function GetLicenca: string;
    function GeraSQL2(Comando: string; ado: string; conexao: string): Integer;
    function ExecSQL2(Comando: string; ado: string; conexao: string): Integer;
    procedure Terminate;
    function ProcTES(codigo: string; emp: string; fil: string; uf: string; produto: string; tipo: string): Double;
    function ProcTES2(codigo: string; emp: string; fil: string; produto: string; tipo: string; cf: string; cod: string; loja: string): Double;
    function segun(emp: string; fil: string; prod: string; Qtd: Double): Double;
    function Strut(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutD(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutCM(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutEst(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutSTD(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutOP(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function StrutQ(prod: string; emp: string; filial: string; fator: string; data: string): Double;
    function ExecScript(scr: string; obj: string): string;
    function ExecScriptRel(scr: string; obj: string; filtro: string): string;
    function AsString(tabela: string; campo: string): string;
    function AsInteger(tabela: string; campo: string): Integer;
    function AsFloat(tabela: string; campo: string): Double;
    function TableEOF(tabela: string): Boolean;
    function TableBOF(tabela: string): Boolean;
    function MoveNext(Tabela: string): Double;
    function MovePrior(Tabela: string): Double;
    function MoveLast(Tabela: string): Double;
    function MoveFirst(Tabela: string): Double;
    function RecNO(Tabela: string): Integer;
    function RecOrdCount(Tabela: string): Integer;
    function FiltroSQL(datas: string; filtro: string): Integer;
    procedure RemoveFiltro(datas: string);
    function SendMail(conta: string; para: string; assunto: string; msg: string; anexo: string): Boolean;
    function ProcessaFP(codigo: string; datas: string; emp: string; fili: string; dataset: string; valor: Double): TJvMemoryData;
    function LoadFile(arquivo: string; nome: string): string;
    function CreateFile(nome: string): string;
    function SaveFile(arquivo: string; nome: string): string;
    function deleteF(nome: string): string;
    function Form(valor: string): string;
    procedure NewCube(valor1: string; valor2: string);
    function MaxRECNO(valor1: string; valor2: string; valor3: string; valor4: string; valor5: string): Integer;
    procedure ComandoInserir(valor1: string; valor2: string; valor3: string);
    procedure ComandoInserir2(valor1: string);
    procedure ComandoGravar(valor1: string);
    procedure SetString(valor1: string; valor2: string; valor3: string);
    procedure SetInteger(valor1: string; valor2: string; valor3: Integer);
    procedure SetFloat(valor1: string; valor2: string; valor3: Double);
    function Divide(valor1: Double; valor2: Double): Double;
    procedure TableEdit(valor1: string);
    function ReverseString(Value: string): string;
    procedure addField(tipo: string; campo: string; tabela: string; tamanho: string);
    procedure CreateTMP(valor1: string);
    procedure OPenTMP(valor1: string);
    procedure DropTMP(param: string);
    function WebFields: string;
    function Locate(valor1: string; valor2: string; valor3: string): Integer;
    function Potencia(Valor1: Double; valor2: Double): Double;
    function NoRound(Valor1: Double; valor2: Integer): Double;
    function Execute(fonte: string; sec: Integer): string;
    procedure getWorkPend(usuario: string);
    procedure getWorkForm(chave: string);
    function getTables(conexao: string): string;
  end;

implementation

procedure TSMClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TSM.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TSMClient.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  if FApplicationEvents1ExceptionCommand = nil then
  begin
    FApplicationEvents1ExceptionCommand := FDBXConnection.CreateCommand;
    FApplicationEvents1ExceptionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FApplicationEvents1ExceptionCommand.Text := 'TSM.ApplicationEvents1Exception';
    FApplicationEvents1ExceptionCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FApplicationEvents1ExceptionCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FApplicationEvents1ExceptionCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEvents1ExceptionCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  if not Assigned(E) then
    FApplicationEvents1ExceptionCommand.Parameters[1].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FApplicationEvents1ExceptionCommand.Parameters[1].ConnectionHandler).GetJSONMarshaler;
    try
      FApplicationEvents1ExceptionCommand.Parameters[1].Value.SetJSONValue(FMarshal.Marshal(E), True);
      if FInstanceOwner then
        E.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FApplicationEvents1ExceptionCommand.ExecuteUpdate;
end;

procedure TSMClient.atPascalScripter1RuntimeError(Sender: TObject; var msg: string; row: Integer; col: Integer; var ShowException: Boolean);
begin
  if FatPascalScripter1RuntimeErrorCommand = nil then
  begin
    FatPascalScripter1RuntimeErrorCommand := FDBXConnection.CreateCommand;
    FatPascalScripter1RuntimeErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FatPascalScripter1RuntimeErrorCommand.Text := 'TSM.atPascalScripter1RuntimeError';
    FatPascalScripter1RuntimeErrorCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FatPascalScripter1RuntimeErrorCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FatPascalScripter1RuntimeErrorCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FatPascalScripter1RuntimeErrorCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FatPascalScripter1RuntimeErrorCommand.Parameters[1].Value.SetWideString(msg);
  FatPascalScripter1RuntimeErrorCommand.Parameters[2].Value.SetInt32(row);
  FatPascalScripter1RuntimeErrorCommand.Parameters[3].Value.SetInt32(col);
  FatPascalScripter1RuntimeErrorCommand.Parameters[4].Value.SetBoolean(ShowException);
  FatPascalScripter1RuntimeErrorCommand.ExecuteUpdate;
  msg := FatPascalScripter1RuntimeErrorCommand.Parameters[1].Value.GetWideString;
  ShowException := FatPascalScripter1RuntimeErrorCommand.Parameters[4].Value.GetBoolean;
end;

procedure TSMClient.atPascalScripter1CompileError(Sender: TObject; var msg: string; row: Integer; col: Integer; var ShowException: Boolean);
begin
  if FatPascalScripter1CompileErrorCommand = nil then
  begin
    FatPascalScripter1CompileErrorCommand := FDBXConnection.CreateCommand;
    FatPascalScripter1CompileErrorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FatPascalScripter1CompileErrorCommand.Text := 'TSM.atPascalScripter1CompileError';
    FatPascalScripter1CompileErrorCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FatPascalScripter1CompileErrorCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FatPascalScripter1CompileErrorCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FatPascalScripter1CompileErrorCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FatPascalScripter1CompileErrorCommand.Parameters[1].Value.SetWideString(msg);
  FatPascalScripter1CompileErrorCommand.Parameters[2].Value.SetInt32(row);
  FatPascalScripter1CompileErrorCommand.Parameters[3].Value.SetInt32(col);
  FatPascalScripter1CompileErrorCommand.Parameters[4].Value.SetBoolean(ShowException);
  FatPascalScripter1CompileErrorCommand.ExecuteUpdate;
  msg := FatPascalScripter1CompileErrorCommand.Parameters[1].Value.GetWideString;
  ShowException := FatPascalScripter1CompileErrorCommand.Parameters[4].Value.GetBoolean;
end;

function TSMClient.GeraDS(comando: string; nome: string; conexao: string): TDataSet;
begin
  if FGeraDSCommand = nil then
  begin
    FGeraDSCommand := FDBXConnection.CreateCommand;
    FGeraDSCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeraDSCommand.Text := 'TSM.GeraDS';
    FGeraDSCommand.Prepare;
  end;
  FGeraDSCommand.Parameters[0].Value.SetWideString(comando);
  FGeraDSCommand.Parameters[1].Value.SetWideString(nome);
  FGeraDSCommand.Parameters[2].Value.SetWideString(conexao);
  FGeraDSCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FGeraDSCommand.Parameters[3].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FGeraDSCommand.FreeOnExecute(Result);
end;

function TSMClient.LocalSQL(Comando: string; ado: string): TDataSet;
begin
  if FLocalSQLCommand = nil then
  begin
    FLocalSQLCommand := FDBXConnection.CreateCommand;
    FLocalSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLocalSQLCommand.Text := 'TSM.LocalSQL';
    FLocalSQLCommand.Prepare;
  end;
  FLocalSQLCommand.Parameters[0].Value.SetWideString(Comando);
  FLocalSQLCommand.Parameters[1].Value.SetWideString(ado);
  FLocalSQLCommand.ExecuteUpdate;
  Result := TCustomSQLDataSet.Create(nil, FLocalSQLCommand.Parameters[2].Value.GetDBXReader(False), True);
  Result.Open;
  if FInstanceOwner then
    FLocalSQLCommand.FreeOnExecute(Result);
end;

procedure TSMClient.uDataSets;
begin
  if FuDataSetsCommand = nil then
  begin
    FuDataSetsCommand := FDBXConnection.CreateCommand;
    FuDataSetsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FuDataSetsCommand.Text := 'TSM.uDataSets';
    FuDataSetsCommand.Prepare;
  end;
  FuDataSetsCommand.ExecuteUpdate;
end;

procedure TSMClient.setAmbiente(nome: string);
begin
  if FsetAmbienteCommand = nil then
  begin
    FsetAmbienteCommand := FDBXConnection.CreateCommand;
    FsetAmbienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetAmbienteCommand.Text := 'TSM.setAmbiente';
    FsetAmbienteCommand.Prepare;
  end;
  FsetAmbienteCommand.Parameters[0].Value.SetWideString(nome);
  FsetAmbienteCommand.ExecuteUpdate;
end;

function TSMClient.GeraJSON(Comando: string; ado: string; conexao: string): string;
begin
  if FGeraJSONCommand = nil then
  begin
    FGeraJSONCommand := FDBXConnection.CreateCommand;
    FGeraJSONCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeraJSONCommand.Text := 'TSM.GeraJSON';
    FGeraJSONCommand.Prepare;
  end;
  FGeraJSONCommand.Parameters[0].Value.SetWideString(Comando);
  FGeraJSONCommand.Parameters[1].Value.SetWideString(ado);
  FGeraJSONCommand.Parameters[2].Value.SetWideString(conexao);
  FGeraJSONCommand.ExecuteUpdate;
  Result := FGeraJSONCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.validaDOC(doc: string; tipo: string): Boolean;
begin
  if FvalidaDOCCommand = nil then
  begin
    FvalidaDOCCommand := FDBXConnection.CreateCommand;
    FvalidaDOCCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FvalidaDOCCommand.Text := 'TSM.validaDOC';
    FvalidaDOCCommand.Prepare;
  end;
  FvalidaDOCCommand.Parameters[0].Value.SetWideString(doc);
  FvalidaDOCCommand.Parameters[1].Value.SetWideString(tipo);
  FvalidaDOCCommand.ExecuteUpdate;
  Result := FvalidaDOCCommand.Parameters[2].Value.GetBoolean;
end;

function TSMClient.existtab(tabela: string; banco: string): Boolean;
begin
  if FexisttabCommand = nil then
  begin
    FexisttabCommand := FDBXConnection.CreateCommand;
    FexisttabCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FexisttabCommand.Text := 'TSM.existtab';
    FexisttabCommand.Prepare;
  end;
  FexisttabCommand.Parameters[0].Value.SetWideString(tabela);
  FexisttabCommand.Parameters[1].Value.SetWideString(banco);
  FexisttabCommand.ExecuteUpdate;
  Result := FexisttabCommand.Parameters[2].Value.GetBoolean;
end;

function TSMClient.runwkf(nome: string; chave: string): string;
begin
  if FrunwkfCommand = nil then
  begin
    FrunwkfCommand := FDBXConnection.CreateCommand;
    FrunwkfCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FrunwkfCommand.Text := 'TSM.runwkf';
    FrunwkfCommand.Prepare;
  end;
  FrunwkfCommand.Parameters[0].Value.SetWideString(nome);
  FrunwkfCommand.Parameters[1].Value.SetWideString(chave);
  FrunwkfCommand.ExecuteUpdate;
  Result := FrunwkfCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.GetCubo(nome: string; cubo: string; filtro: string; r: string): string;
begin
  if FGetCuboCommand = nil then
  begin
    FGetCuboCommand := FDBXConnection.CreateCommand;
    FGetCuboCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCuboCommand.Text := 'TSM.GetCubo';
    FGetCuboCommand.Prepare;
  end;
  FGetCuboCommand.Parameters[0].Value.SetWideString(nome);
  FGetCuboCommand.Parameters[1].Value.SetWideString(cubo);
  FGetCuboCommand.Parameters[2].Value.SetWideString(filtro);
  FGetCuboCommand.Parameters[3].Value.SetWideString(r);
  FGetCuboCommand.ExecuteUpdate;
  Result := FGetCuboCommand.Parameters[4].Value.GetWideString;
end;

function TSMClient.DataSetToJsonTxt(pDataSet: TDataSet): string;
begin
  if FDataSetToJsonTxtCommand = nil then
  begin
    FDataSetToJsonTxtCommand := FDBXConnection.CreateCommand;
    FDataSetToJsonTxtCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataSetToJsonTxtCommand.Text := 'TSM.DataSetToJsonTxt';
    FDataSetToJsonTxtCommand.Prepare;
  end;
  FDataSetToJsonTxtCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(pDataSet, FInstanceOwner), True);
  FDataSetToJsonTxtCommand.ExecuteUpdate;
  Result := FDataSetToJsonTxtCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.ProcREL(relatorio: string; layout: string; filtro: string; tabela: string; exporta: string): string;
begin
  if FProcRELCommand = nil then
  begin
    FProcRELCommand := FDBXConnection.CreateCommand;
    FProcRELCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcRELCommand.Text := 'TSM.ProcREL';
    FProcRELCommand.Prepare;
  end;
  FProcRELCommand.Parameters[0].Value.SetWideString(relatorio);
  FProcRELCommand.Parameters[1].Value.SetWideString(layout);
  FProcRELCommand.Parameters[2].Value.SetWideString(filtro);
  FProcRELCommand.Parameters[3].Value.SetWideString(tabela);
  FProcRELCommand.Parameters[4].Value.SetWideString(exporta);
  FProcRELCommand.ExecuteUpdate;
  Result := FProcRELCommand.Parameters[5].Value.GetWideString;
end;

function TSMClient.ProcRELN(relatorio: string; layout: string; filtro: string; tabela: string; exporta: string; nome: string): string;
begin
  if FProcRELNCommand = nil then
  begin
    FProcRELNCommand := FDBXConnection.CreateCommand;
    FProcRELNCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcRELNCommand.Text := 'TSM.ProcRELN';
    FProcRELNCommand.Prepare;
  end;
  FProcRELNCommand.Parameters[0].Value.SetWideString(relatorio);
  FProcRELNCommand.Parameters[1].Value.SetWideString(layout);
  FProcRELNCommand.Parameters[2].Value.SetWideString(filtro);
  FProcRELNCommand.Parameters[3].Value.SetWideString(tabela);
  FProcRELNCommand.Parameters[4].Value.SetWideString(exporta);
  FProcRELNCommand.Parameters[5].Value.SetWideString(nome);
  FProcRELNCommand.ExecuteUpdate;
  Result := FProcRELNCommand.Parameters[6].Value.GetWideString;
end;

procedure TSMClient._ProcrelG(AMachine: TatVirtualMachine);
begin
  if F_ProcrelGCommand = nil then
  begin
    F_ProcrelGCommand := FDBXConnection.CreateCommand;
    F_ProcrelGCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    F_ProcrelGCommand.Text := 'TSM._ProcrelG';
    F_ProcrelGCommand.Prepare;
  end;
  if not Assigned(AMachine) then
    F_ProcrelGCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(F_ProcrelGCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      F_ProcrelGCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(AMachine), True);
      if FInstanceOwner then
        AMachine.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  F_ProcrelGCommand.ExecuteUpdate;
end;

procedure TSMClient._ProcrelnG(AMachine: TatVirtualMachine);
begin
  if F_ProcrelnGCommand = nil then
  begin
    F_ProcrelnGCommand := FDBXConnection.CreateCommand;
    F_ProcrelnGCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    F_ProcrelnGCommand.Text := 'TSM._ProcrelnG';
    F_ProcrelnGCommand.Prepare;
  end;
  if not Assigned(AMachine) then
    F_ProcrelnGCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(F_ProcrelnGCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      F_ProcrelnGCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(AMachine), True);
      if FInstanceOwner then
        AMachine.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  F_ProcrelnGCommand.ExecuteUpdate;
end;

function TSMClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TSM.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.GenerateID(aSequence: string; conexao: string): Integer;
begin
  if FGenerateIDCommand = nil then
  begin
    FGenerateIDCommand := FDBXConnection.CreateCommand;
    FGenerateIDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGenerateIDCommand.Text := 'TSM.GenerateID';
    FGenerateIDCommand.Prepare;
  end;
  FGenerateIDCommand.Parameters[0].Value.SetWideString(aSequence);
  FGenerateIDCommand.Parameters[1].Value.SetWideString(conexao);
  FGenerateIDCommand.ExecuteUpdate;
  Result := FGenerateIDCommand.Parameters[2].Value.GetInt32;
end;

function TSMClient.GeraSQL(Comando: string; ado: string; conexao: string): Integer;
begin
  if FGeraSQLCommand = nil then
  begin
    FGeraSQLCommand := FDBXConnection.CreateCommand;
    FGeraSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeraSQLCommand.Text := 'TSM.GeraSQL';
    FGeraSQLCommand.Prepare;
  end;
  FGeraSQLCommand.Parameters[0].Value.SetWideString(Comando);
  FGeraSQLCommand.Parameters[1].Value.SetWideString(ado);
  FGeraSQLCommand.Parameters[2].Value.SetWideString(conexao);
  FGeraSQLCommand.ExecuteUpdate;
  Result := FGeraSQLCommand.Parameters[3].Value.GetInt32;
end;

function TSMClient.ExecSQL(Comando: string; ado: string; conexao: string): Integer;
begin
  if FExecSQLCommand = nil then
  begin
    FExecSQLCommand := FDBXConnection.CreateCommand;
    FExecSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecSQLCommand.Text := 'TSM.ExecSQL';
    FExecSQLCommand.Prepare;
  end;
  FExecSQLCommand.Parameters[0].Value.SetWideString(Comando);
  FExecSQLCommand.Parameters[1].Value.SetWideString(ado);
  FExecSQLCommand.Parameters[2].Value.SetWideString(conexao);
  FExecSQLCommand.ExecuteUpdate;
  Result := FExecSQLCommand.Parameters[3].Value.GetInt32;
end;

function TSMClient.GetLicenca: string;
begin
  if FGetLicencaCommand = nil then
  begin
    FGetLicencaCommand := FDBXConnection.CreateCommand;
    FGetLicencaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetLicencaCommand.Text := 'TSM.GetLicenca';
    FGetLicencaCommand.Prepare;
  end;
  FGetLicencaCommand.ExecuteUpdate;
  Result := FGetLicencaCommand.Parameters[0].Value.GetWideString;
end;

function TSMClient.GeraSQL2(Comando: string; ado: string; conexao: string): Integer;
begin
  if FGeraSQL2Command = nil then
  begin
    FGeraSQL2Command := FDBXConnection.CreateCommand;
    FGeraSQL2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FGeraSQL2Command.Text := 'TSM.GeraSQL2';
    FGeraSQL2Command.Prepare;
  end;
  FGeraSQL2Command.Parameters[0].Value.SetWideString(Comando);
  FGeraSQL2Command.Parameters[1].Value.SetWideString(ado);
  FGeraSQL2Command.Parameters[2].Value.SetWideString(conexao);
  FGeraSQL2Command.ExecuteUpdate;
  Result := FGeraSQL2Command.Parameters[3].Value.GetInt32;
end;

function TSMClient.ExecSQL2(Comando: string; ado: string; conexao: string): Integer;
begin
  if FExecSQL2Command = nil then
  begin
    FExecSQL2Command := FDBXConnection.CreateCommand;
    FExecSQL2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecSQL2Command.Text := 'TSM.ExecSQL2';
    FExecSQL2Command.Prepare;
  end;
  FExecSQL2Command.Parameters[0].Value.SetWideString(Comando);
  FExecSQL2Command.Parameters[1].Value.SetWideString(ado);
  FExecSQL2Command.Parameters[2].Value.SetWideString(conexao);
  FExecSQL2Command.ExecuteUpdate;
  Result := FExecSQL2Command.Parameters[3].Value.GetInt32;
end;

procedure TSMClient.Terminate;
begin
  if FTerminateCommand = nil then
  begin
    FTerminateCommand := FDBXConnection.CreateCommand;
    FTerminateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTerminateCommand.Text := 'TSM.Terminate';
    FTerminateCommand.Prepare;
  end;
  FTerminateCommand.ExecuteUpdate;
end;

function TSMClient.ProcTES(codigo: string; emp: string; fil: string; uf: string; produto: string; tipo: string): Double;
begin
  if FProcTESCommand = nil then
  begin
    FProcTESCommand := FDBXConnection.CreateCommand;
    FProcTESCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcTESCommand.Text := 'TSM.ProcTES';
    FProcTESCommand.Prepare;
  end;
  FProcTESCommand.Parameters[0].Value.SetWideString(codigo);
  FProcTESCommand.Parameters[1].Value.SetWideString(emp);
  FProcTESCommand.Parameters[2].Value.SetWideString(fil);
  FProcTESCommand.Parameters[3].Value.SetWideString(uf);
  FProcTESCommand.Parameters[4].Value.SetWideString(produto);
  FProcTESCommand.Parameters[5].Value.SetWideString(tipo);
  FProcTESCommand.ExecuteUpdate;
  Result := FProcTESCommand.Parameters[6].Value.GetDouble;
end;

function TSMClient.ProcTES2(codigo: string; emp: string; fil: string; produto: string; tipo: string; cf: string; cod: string; loja: string): Double;
begin
  if FProcTES2Command = nil then
  begin
    FProcTES2Command := FDBXConnection.CreateCommand;
    FProcTES2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcTES2Command.Text := 'TSM.ProcTES2';
    FProcTES2Command.Prepare;
  end;
  FProcTES2Command.Parameters[0].Value.SetWideString(codigo);
  FProcTES2Command.Parameters[1].Value.SetWideString(emp);
  FProcTES2Command.Parameters[2].Value.SetWideString(fil);
  FProcTES2Command.Parameters[3].Value.SetWideString(produto);
  FProcTES2Command.Parameters[4].Value.SetWideString(tipo);
  FProcTES2Command.Parameters[5].Value.SetWideString(cf);
  FProcTES2Command.Parameters[6].Value.SetWideString(cod);
  FProcTES2Command.Parameters[7].Value.SetWideString(loja);
  FProcTES2Command.ExecuteUpdate;
  Result := FProcTES2Command.Parameters[8].Value.GetDouble;
end;

function TSMClient.segun(emp: string; fil: string; prod: string; Qtd: Double): Double;
begin
  if FsegunCommand = nil then
  begin
    FsegunCommand := FDBXConnection.CreateCommand;
    FsegunCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsegunCommand.Text := 'TSM.segun';
    FsegunCommand.Prepare;
  end;
  FsegunCommand.Parameters[0].Value.SetWideString(emp);
  FsegunCommand.Parameters[1].Value.SetWideString(fil);
  FsegunCommand.Parameters[2].Value.SetWideString(prod);
  FsegunCommand.Parameters[3].Value.SetDouble(Qtd);
  FsegunCommand.ExecuteUpdate;
  Result := FsegunCommand.Parameters[4].Value.GetDouble;
end;

function TSMClient.Strut(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutCommand = nil then
  begin
    FStrutCommand := FDBXConnection.CreateCommand;
    FStrutCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutCommand.Text := 'TSM.Strut';
    FStrutCommand.Prepare;
  end;
  FStrutCommand.Parameters[0].Value.SetWideString(prod);
  FStrutCommand.Parameters[1].Value.SetWideString(emp);
  FStrutCommand.Parameters[2].Value.SetWideString(filial);
  FStrutCommand.Parameters[3].Value.SetWideString(fator);
  FStrutCommand.Parameters[4].Value.SetWideString(data);
  FStrutCommand.ExecuteUpdate;
  Result := FStrutCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutD(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutDCommand = nil then
  begin
    FStrutDCommand := FDBXConnection.CreateCommand;
    FStrutDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutDCommand.Text := 'TSM.StrutD';
    FStrutDCommand.Prepare;
  end;
  FStrutDCommand.Parameters[0].Value.SetWideString(prod);
  FStrutDCommand.Parameters[1].Value.SetWideString(emp);
  FStrutDCommand.Parameters[2].Value.SetWideString(filial);
  FStrutDCommand.Parameters[3].Value.SetWideString(fator);
  FStrutDCommand.Parameters[4].Value.SetWideString(data);
  FStrutDCommand.ExecuteUpdate;
  Result := FStrutDCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutCM(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutCMCommand = nil then
  begin
    FStrutCMCommand := FDBXConnection.CreateCommand;
    FStrutCMCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutCMCommand.Text := 'TSM.StrutCM';
    FStrutCMCommand.Prepare;
  end;
  FStrutCMCommand.Parameters[0].Value.SetWideString(prod);
  FStrutCMCommand.Parameters[1].Value.SetWideString(emp);
  FStrutCMCommand.Parameters[2].Value.SetWideString(filial);
  FStrutCMCommand.Parameters[3].Value.SetWideString(fator);
  FStrutCMCommand.Parameters[4].Value.SetWideString(data);
  FStrutCMCommand.ExecuteUpdate;
  Result := FStrutCMCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutEst(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutEstCommand = nil then
  begin
    FStrutEstCommand := FDBXConnection.CreateCommand;
    FStrutEstCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutEstCommand.Text := 'TSM.StrutEst';
    FStrutEstCommand.Prepare;
  end;
  FStrutEstCommand.Parameters[0].Value.SetWideString(prod);
  FStrutEstCommand.Parameters[1].Value.SetWideString(emp);
  FStrutEstCommand.Parameters[2].Value.SetWideString(filial);
  FStrutEstCommand.Parameters[3].Value.SetWideString(fator);
  FStrutEstCommand.Parameters[4].Value.SetWideString(data);
  FStrutEstCommand.ExecuteUpdate;
  Result := FStrutEstCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutSTD(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutSTDCommand = nil then
  begin
    FStrutSTDCommand := FDBXConnection.CreateCommand;
    FStrutSTDCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutSTDCommand.Text := 'TSM.StrutSTD';
    FStrutSTDCommand.Prepare;
  end;
  FStrutSTDCommand.Parameters[0].Value.SetWideString(prod);
  FStrutSTDCommand.Parameters[1].Value.SetWideString(emp);
  FStrutSTDCommand.Parameters[2].Value.SetWideString(filial);
  FStrutSTDCommand.Parameters[3].Value.SetWideString(fator);
  FStrutSTDCommand.Parameters[4].Value.SetWideString(data);
  FStrutSTDCommand.ExecuteUpdate;
  Result := FStrutSTDCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutOP(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutOPCommand = nil then
  begin
    FStrutOPCommand := FDBXConnection.CreateCommand;
    FStrutOPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutOPCommand.Text := 'TSM.StrutOP';
    FStrutOPCommand.Prepare;
  end;
  FStrutOPCommand.Parameters[0].Value.SetWideString(prod);
  FStrutOPCommand.Parameters[1].Value.SetWideString(emp);
  FStrutOPCommand.Parameters[2].Value.SetWideString(filial);
  FStrutOPCommand.Parameters[3].Value.SetWideString(fator);
  FStrutOPCommand.Parameters[4].Value.SetWideString(data);
  FStrutOPCommand.ExecuteUpdate;
  Result := FStrutOPCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.StrutQ(prod: string; emp: string; filial: string; fator: string; data: string): Double;
begin
  if FStrutQCommand = nil then
  begin
    FStrutQCommand := FDBXConnection.CreateCommand;
    FStrutQCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FStrutQCommand.Text := 'TSM.StrutQ';
    FStrutQCommand.Prepare;
  end;
  FStrutQCommand.Parameters[0].Value.SetWideString(prod);
  FStrutQCommand.Parameters[1].Value.SetWideString(emp);
  FStrutQCommand.Parameters[2].Value.SetWideString(filial);
  FStrutQCommand.Parameters[3].Value.SetWideString(fator);
  FStrutQCommand.Parameters[4].Value.SetWideString(data);
  FStrutQCommand.ExecuteUpdate;
  Result := FStrutQCommand.Parameters[5].Value.GetDouble;
end;

function TSMClient.ExecScript(scr: string; obj: string): string;
begin
  if FExecScriptCommand = nil then
  begin
    FExecScriptCommand := FDBXConnection.CreateCommand;
    FExecScriptCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecScriptCommand.Text := 'TSM.ExecScript';
    FExecScriptCommand.Prepare;
  end;
  FExecScriptCommand.Parameters[0].Value.SetWideString(scr);
  FExecScriptCommand.Parameters[1].Value.SetWideString(obj);
  FExecScriptCommand.ExecuteUpdate;
  Result := FExecScriptCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.ExecScriptRel(scr: string; obj: string; filtro: string): string;
begin
  if FExecScriptRelCommand = nil then
  begin
    FExecScriptRelCommand := FDBXConnection.CreateCommand;
    FExecScriptRelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecScriptRelCommand.Text := 'TSM.ExecScriptRel';
    FExecScriptRelCommand.Prepare;
  end;
  FExecScriptRelCommand.Parameters[0].Value.SetWideString(scr);
  FExecScriptRelCommand.Parameters[1].Value.SetWideString(obj);
  FExecScriptRelCommand.Parameters[2].Value.SetWideString(filtro);
  FExecScriptRelCommand.ExecuteUpdate;
  Result := FExecScriptRelCommand.Parameters[3].Value.GetWideString;
end;

function TSMClient.AsString(tabela: string; campo: string): string;
begin
  if FAsStringCommand = nil then
  begin
    FAsStringCommand := FDBXConnection.CreateCommand;
    FAsStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAsStringCommand.Text := 'TSM.AsString';
    FAsStringCommand.Prepare;
  end;
  FAsStringCommand.Parameters[0].Value.SetWideString(tabela);
  FAsStringCommand.Parameters[1].Value.SetWideString(campo);
  FAsStringCommand.ExecuteUpdate;
  Result := FAsStringCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.AsInteger(tabela: string; campo: string): Integer;
begin
  if FAsIntegerCommand = nil then
  begin
    FAsIntegerCommand := FDBXConnection.CreateCommand;
    FAsIntegerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAsIntegerCommand.Text := 'TSM.AsInteger';
    FAsIntegerCommand.Prepare;
  end;
  FAsIntegerCommand.Parameters[0].Value.SetWideString(tabela);
  FAsIntegerCommand.Parameters[1].Value.SetWideString(campo);
  FAsIntegerCommand.ExecuteUpdate;
  Result := FAsIntegerCommand.Parameters[2].Value.GetInt32;
end;

function TSMClient.AsFloat(tabela: string; campo: string): Double;
begin
  if FAsFloatCommand = nil then
  begin
    FAsFloatCommand := FDBXConnection.CreateCommand;
    FAsFloatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAsFloatCommand.Text := 'TSM.AsFloat';
    FAsFloatCommand.Prepare;
  end;
  FAsFloatCommand.Parameters[0].Value.SetWideString(tabela);
  FAsFloatCommand.Parameters[1].Value.SetWideString(campo);
  FAsFloatCommand.ExecuteUpdate;
  Result := FAsFloatCommand.Parameters[2].Value.GetDouble;
end;

function TSMClient.TableEOF(tabela: string): Boolean;
begin
  if FTableEOFCommand = nil then
  begin
    FTableEOFCommand := FDBXConnection.CreateCommand;
    FTableEOFCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTableEOFCommand.Text := 'TSM.TableEOF';
    FTableEOFCommand.Prepare;
  end;
  FTableEOFCommand.Parameters[0].Value.SetWideString(tabela);
  FTableEOFCommand.ExecuteUpdate;
  Result := FTableEOFCommand.Parameters[1].Value.GetBoolean;
end;

function TSMClient.TableBOF(tabela: string): Boolean;
begin
  if FTableBOFCommand = nil then
  begin
    FTableBOFCommand := FDBXConnection.CreateCommand;
    FTableBOFCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTableBOFCommand.Text := 'TSM.TableBOF';
    FTableBOFCommand.Prepare;
  end;
  FTableBOFCommand.Parameters[0].Value.SetWideString(tabela);
  FTableBOFCommand.ExecuteUpdate;
  Result := FTableBOFCommand.Parameters[1].Value.GetBoolean;
end;

function TSMClient.MoveNext(Tabela: string): Double;
begin
  if FMoveNextCommand = nil then
  begin
    FMoveNextCommand := FDBXConnection.CreateCommand;
    FMoveNextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMoveNextCommand.Text := 'TSM.MoveNext';
    FMoveNextCommand.Prepare;
  end;
  FMoveNextCommand.Parameters[0].Value.SetWideString(Tabela);
  FMoveNextCommand.ExecuteUpdate;
  Result := FMoveNextCommand.Parameters[1].Value.GetDouble;
end;

function TSMClient.MovePrior(Tabela: string): Double;
begin
  if FMovePriorCommand = nil then
  begin
    FMovePriorCommand := FDBXConnection.CreateCommand;
    FMovePriorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMovePriorCommand.Text := 'TSM.MovePrior';
    FMovePriorCommand.Prepare;
  end;
  FMovePriorCommand.Parameters[0].Value.SetWideString(Tabela);
  FMovePriorCommand.ExecuteUpdate;
  Result := FMovePriorCommand.Parameters[1].Value.GetDouble;
end;

function TSMClient.MoveLast(Tabela: string): Double;
begin
  if FMoveLastCommand = nil then
  begin
    FMoveLastCommand := FDBXConnection.CreateCommand;
    FMoveLastCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMoveLastCommand.Text := 'TSM.MoveLast';
    FMoveLastCommand.Prepare;
  end;
  FMoveLastCommand.Parameters[0].Value.SetWideString(Tabela);
  FMoveLastCommand.ExecuteUpdate;
  Result := FMoveLastCommand.Parameters[1].Value.GetDouble;
end;

function TSMClient.MoveFirst(Tabela: string): Double;
begin
  if FMoveFirstCommand = nil then
  begin
    FMoveFirstCommand := FDBXConnection.CreateCommand;
    FMoveFirstCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMoveFirstCommand.Text := 'TSM.MoveFirst';
    FMoveFirstCommand.Prepare;
  end;
  FMoveFirstCommand.Parameters[0].Value.SetWideString(Tabela);
  FMoveFirstCommand.ExecuteUpdate;
  Result := FMoveFirstCommand.Parameters[1].Value.GetDouble;
end;

function TSMClient.RecNO(Tabela: string): Integer;
begin
  if FRecNOCommand = nil then
  begin
    FRecNOCommand := FDBXConnection.CreateCommand;
    FRecNOCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecNOCommand.Text := 'TSM.RecNO';
    FRecNOCommand.Prepare;
  end;
  FRecNOCommand.Parameters[0].Value.SetWideString(Tabela);
  FRecNOCommand.ExecuteUpdate;
  Result := FRecNOCommand.Parameters[1].Value.GetInt32;
end;

function TSMClient.RecOrdCount(Tabela: string): Integer;
begin
  if FRecOrdCountCommand = nil then
  begin
    FRecOrdCountCommand := FDBXConnection.CreateCommand;
    FRecOrdCountCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRecOrdCountCommand.Text := 'TSM.RecOrdCount';
    FRecOrdCountCommand.Prepare;
  end;
  FRecOrdCountCommand.Parameters[0].Value.SetWideString(Tabela);
  FRecOrdCountCommand.ExecuteUpdate;
  Result := FRecOrdCountCommand.Parameters[1].Value.GetInt32;
end;

function TSMClient.FiltroSQL(datas: string; filtro: string): Integer;
begin
  if FFiltroSQLCommand = nil then
  begin
    FFiltroSQLCommand := FDBXConnection.CreateCommand;
    FFiltroSQLCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFiltroSQLCommand.Text := 'TSM.FiltroSQL';
    FFiltroSQLCommand.Prepare;
  end;
  FFiltroSQLCommand.Parameters[0].Value.SetWideString(datas);
  FFiltroSQLCommand.Parameters[1].Value.SetWideString(filtro);
  FFiltroSQLCommand.ExecuteUpdate;
  Result := FFiltroSQLCommand.Parameters[2].Value.GetInt32;
end;

procedure TSMClient.RemoveFiltro(datas: string);
begin
  if FRemoveFiltroCommand = nil then
  begin
    FRemoveFiltroCommand := FDBXConnection.CreateCommand;
    FRemoveFiltroCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRemoveFiltroCommand.Text := 'TSM.RemoveFiltro';
    FRemoveFiltroCommand.Prepare;
  end;
  FRemoveFiltroCommand.Parameters[0].Value.SetWideString(datas);
  FRemoveFiltroCommand.ExecuteUpdate;
end;

function TSMClient.SendMail(conta: string; para: string; assunto: string; msg: string; anexo: string): Boolean;
begin
  if FSendMailCommand = nil then
  begin
    FSendMailCommand := FDBXConnection.CreateCommand;
    FSendMailCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendMailCommand.Text := 'TSM.SendMail';
    FSendMailCommand.Prepare;
  end;
  FSendMailCommand.Parameters[0].Value.SetWideString(conta);
  FSendMailCommand.Parameters[1].Value.SetWideString(para);
  FSendMailCommand.Parameters[2].Value.SetWideString(assunto);
  FSendMailCommand.Parameters[3].Value.SetWideString(msg);
  FSendMailCommand.Parameters[4].Value.SetWideString(anexo);
  FSendMailCommand.ExecuteUpdate;
  Result := FSendMailCommand.Parameters[5].Value.GetBoolean;
end;

function TSMClient.ProcessaFP(codigo: string; datas: string; emp: string; fili: string; dataset: string; valor: Double): TJvMemoryData;
begin
  if FProcessaFPCommand = nil then
  begin
    FProcessaFPCommand := FDBXConnection.CreateCommand;
    FProcessaFPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcessaFPCommand.Text := 'TSM.ProcessaFP';
    FProcessaFPCommand.Prepare;
  end;
  FProcessaFPCommand.Parameters[0].Value.SetWideString(codigo);
  FProcessaFPCommand.Parameters[1].Value.SetWideString(datas);
  FProcessaFPCommand.Parameters[2].Value.SetWideString(emp);
  FProcessaFPCommand.Parameters[3].Value.SetWideString(fili);
  FProcessaFPCommand.Parameters[4].Value.SetWideString(dataset);
  FProcessaFPCommand.Parameters[5].Value.SetDouble(valor);
  FProcessaFPCommand.ExecuteUpdate;
  if not FProcessaFPCommand.Parameters[6].Value.IsNull then
  begin
    FUnMarshal := TDBXClientCommand(FProcessaFPCommand.Parameters[6].ConnectionHandler).GetJSONUnMarshaler;
    try
      Result := TJvMemoryData(FUnMarshal.UnMarshal(FProcessaFPCommand.Parameters[6].Value.GetJSONValue(True)));
      if FInstanceOwner then
        FProcessaFPCommand.FreeOnExecute(Result);
    finally
      FreeAndNil(FUnMarshal)
    end
  end
  else
    Result := nil;
end;

function TSMClient.LoadFile(arquivo: string; nome: string): string;
begin
  if FLoadFileCommand = nil then
  begin
    FLoadFileCommand := FDBXConnection.CreateCommand;
    FLoadFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLoadFileCommand.Text := 'TSM.LoadFile';
    FLoadFileCommand.Prepare;
  end;
  FLoadFileCommand.Parameters[0].Value.SetWideString(arquivo);
  FLoadFileCommand.Parameters[1].Value.SetWideString(nome);
  FLoadFileCommand.ExecuteUpdate;
  Result := FLoadFileCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.CreateFile(nome: string): string;
begin
  if FCreateFileCommand = nil then
  begin
    FCreateFileCommand := FDBXConnection.CreateCommand;
    FCreateFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateFileCommand.Text := 'TSM.CreateFile';
    FCreateFileCommand.Prepare;
  end;
  FCreateFileCommand.Parameters[0].Value.SetWideString(nome);
  FCreateFileCommand.ExecuteUpdate;
  Result := FCreateFileCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.SaveFile(arquivo: string; nome: string): string;
begin
  if FSaveFileCommand = nil then
  begin
    FSaveFileCommand := FDBXConnection.CreateCommand;
    FSaveFileCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSaveFileCommand.Text := 'TSM.SaveFile';
    FSaveFileCommand.Prepare;
  end;
  FSaveFileCommand.Parameters[0].Value.SetWideString(arquivo);
  FSaveFileCommand.Parameters[1].Value.SetWideString(nome);
  FSaveFileCommand.ExecuteUpdate;
  Result := FSaveFileCommand.Parameters[2].Value.GetWideString;
end;

function TSMClient.deleteF(nome: string): string;
begin
  if FdeleteFCommand = nil then
  begin
    FdeleteFCommand := FDBXConnection.CreateCommand;
    FdeleteFCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FdeleteFCommand.Text := 'TSM.deleteF';
    FdeleteFCommand.Prepare;
  end;
  FdeleteFCommand.Parameters[0].Value.SetWideString(nome);
  FdeleteFCommand.ExecuteUpdate;
  Result := FdeleteFCommand.Parameters[1].Value.GetWideString;
end;

function TSMClient.Form(valor: string): string;
begin
  if FFormCommand = nil then
  begin
    FFormCommand := FDBXConnection.CreateCommand;
    FFormCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FFormCommand.Text := 'TSM.Form';
    FFormCommand.Prepare;
  end;
  FFormCommand.Parameters[0].Value.SetWideString(valor);
  FFormCommand.ExecuteUpdate;
  Result := FFormCommand.Parameters[1].Value.GetWideString;
end;

procedure TSMClient.NewCube(valor1: string; valor2: string);
begin
  if FNewCubeCommand = nil then
  begin
    FNewCubeCommand := FDBXConnection.CreateCommand;
    FNewCubeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNewCubeCommand.Text := 'TSM.NewCube';
    FNewCubeCommand.Prepare;
  end;
  FNewCubeCommand.Parameters[0].Value.SetWideString(valor1);
  FNewCubeCommand.Parameters[1].Value.SetWideString(valor2);
  FNewCubeCommand.ExecuteUpdate;
end;

function TSMClient.MaxRECNO(valor1: string; valor2: string; valor3: string; valor4: string; valor5: string): Integer;
begin
  if FMaxRECNOCommand = nil then
  begin
    FMaxRECNOCommand := FDBXConnection.CreateCommand;
    FMaxRECNOCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FMaxRECNOCommand.Text := 'TSM.MaxRECNO';
    FMaxRECNOCommand.Prepare;
  end;
  FMaxRECNOCommand.Parameters[0].Value.SetWideString(valor1);
  FMaxRECNOCommand.Parameters[1].Value.SetWideString(valor2);
  FMaxRECNOCommand.Parameters[2].Value.SetWideString(valor3);
  FMaxRECNOCommand.Parameters[3].Value.SetWideString(valor4);
  FMaxRECNOCommand.Parameters[4].Value.SetWideString(valor5);
  FMaxRECNOCommand.ExecuteUpdate;
  Result := FMaxRECNOCommand.Parameters[5].Value.GetInt32;
end;

procedure TSMClient.ComandoInserir(valor1: string; valor2: string; valor3: string);
begin
  if FComandoInserirCommand = nil then
  begin
    FComandoInserirCommand := FDBXConnection.CreateCommand;
    FComandoInserirCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FComandoInserirCommand.Text := 'TSM.ComandoInserir';
    FComandoInserirCommand.Prepare;
  end;
  FComandoInserirCommand.Parameters[0].Value.SetWideString(valor1);
  FComandoInserirCommand.Parameters[1].Value.SetWideString(valor2);
  FComandoInserirCommand.Parameters[2].Value.SetWideString(valor3);
  FComandoInserirCommand.ExecuteUpdate;
end;

procedure TSMClient.ComandoInserir2(valor1: string);
begin
  if FComandoInserir2Command = nil then
  begin
    FComandoInserir2Command := FDBXConnection.CreateCommand;
    FComandoInserir2Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FComandoInserir2Command.Text := 'TSM.ComandoInserir2';
    FComandoInserir2Command.Prepare;
  end;
  FComandoInserir2Command.Parameters[0].Value.SetWideString(valor1);
  FComandoInserir2Command.ExecuteUpdate;
end;

procedure TSMClient.ComandoGravar(valor1: string);
begin
  if FComandoGravarCommand = nil then
  begin
    FComandoGravarCommand := FDBXConnection.CreateCommand;
    FComandoGravarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FComandoGravarCommand.Text := 'TSM.ComandoGravar';
    FComandoGravarCommand.Prepare;
  end;
  FComandoGravarCommand.Parameters[0].Value.SetWideString(valor1);
  FComandoGravarCommand.ExecuteUpdate;
end;

procedure TSMClient.SetString(valor1: string; valor2: string; valor3: string);
begin
  if FSetStringCommand = nil then
  begin
    FSetStringCommand := FDBXConnection.CreateCommand;
    FSetStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetStringCommand.Text := 'TSM.SetString';
    FSetStringCommand.Prepare;
  end;
  FSetStringCommand.Parameters[0].Value.SetWideString(valor1);
  FSetStringCommand.Parameters[1].Value.SetWideString(valor2);
  FSetStringCommand.Parameters[2].Value.SetWideString(valor3);
  FSetStringCommand.ExecuteUpdate;
end;

procedure TSMClient.SetInteger(valor1: string; valor2: string; valor3: Integer);
begin
  if FSetIntegerCommand = nil then
  begin
    FSetIntegerCommand := FDBXConnection.CreateCommand;
    FSetIntegerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetIntegerCommand.Text := 'TSM.SetInteger';
    FSetIntegerCommand.Prepare;
  end;
  FSetIntegerCommand.Parameters[0].Value.SetWideString(valor1);
  FSetIntegerCommand.Parameters[1].Value.SetWideString(valor2);
  FSetIntegerCommand.Parameters[2].Value.SetInt32(valor3);
  FSetIntegerCommand.ExecuteUpdate;
end;

procedure TSMClient.SetFloat(valor1: string; valor2: string; valor3: Double);
begin
  if FSetFloatCommand = nil then
  begin
    FSetFloatCommand := FDBXConnection.CreateCommand;
    FSetFloatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetFloatCommand.Text := 'TSM.SetFloat';
    FSetFloatCommand.Prepare;
  end;
  FSetFloatCommand.Parameters[0].Value.SetWideString(valor1);
  FSetFloatCommand.Parameters[1].Value.SetWideString(valor2);
  FSetFloatCommand.Parameters[2].Value.SetDouble(valor3);
  FSetFloatCommand.ExecuteUpdate;
end;

function TSMClient.Divide(valor1: Double; valor2: Double): Double;
begin
  if FDivideCommand = nil then
  begin
    FDivideCommand := FDBXConnection.CreateCommand;
    FDivideCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDivideCommand.Text := 'TSM.Divide';
    FDivideCommand.Prepare;
  end;
  FDivideCommand.Parameters[0].Value.SetDouble(valor1);
  FDivideCommand.Parameters[1].Value.SetDouble(valor2);
  FDivideCommand.ExecuteUpdate;
  Result := FDivideCommand.Parameters[2].Value.GetDouble;
end;

procedure TSMClient.TableEdit(valor1: string);
begin
  if FTableEditCommand = nil then
  begin
    FTableEditCommand := FDBXConnection.CreateCommand;
    FTableEditCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTableEditCommand.Text := 'TSM.TableEdit';
    FTableEditCommand.Prepare;
  end;
  FTableEditCommand.Parameters[0].Value.SetWideString(valor1);
  FTableEditCommand.ExecuteUpdate;
end;

function TSMClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TSM.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

procedure TSMClient.addField(tipo: string; campo: string; tabela: string; tamanho: string);
begin
  if FaddFieldCommand = nil then
  begin
    FaddFieldCommand := FDBXConnection.CreateCommand;
    FaddFieldCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FaddFieldCommand.Text := 'TSM.addField';
    FaddFieldCommand.Prepare;
  end;
  FaddFieldCommand.Parameters[0].Value.SetWideString(tipo);
  FaddFieldCommand.Parameters[1].Value.SetWideString(campo);
  FaddFieldCommand.Parameters[2].Value.SetWideString(tabela);
  FaddFieldCommand.Parameters[3].Value.SetWideString(tamanho);
  FaddFieldCommand.ExecuteUpdate;
end;

procedure TSMClient.CreateTMP(valor1: string);
begin
  if FCreateTMPCommand = nil then
  begin
    FCreateTMPCommand := FDBXConnection.CreateCommand;
    FCreateTMPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FCreateTMPCommand.Text := 'TSM.CreateTMP';
    FCreateTMPCommand.Prepare;
  end;
  FCreateTMPCommand.Parameters[0].Value.SetWideString(valor1);
  FCreateTMPCommand.ExecuteUpdate;
end;

procedure TSMClient.OPenTMP(valor1: string);
begin
  if FOPenTMPCommand = nil then
  begin
    FOPenTMPCommand := FDBXConnection.CreateCommand;
    FOPenTMPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FOPenTMPCommand.Text := 'TSM.OPenTMP';
    FOPenTMPCommand.Prepare;
  end;
  FOPenTMPCommand.Parameters[0].Value.SetWideString(valor1);
  FOPenTMPCommand.ExecuteUpdate;
end;

procedure TSMClient.DropTMP(param: string);
begin
  if FDropTMPCommand = nil then
  begin
    FDropTMPCommand := FDBXConnection.CreateCommand;
    FDropTMPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDropTMPCommand.Text := 'TSM.DropTMP';
    FDropTMPCommand.Prepare;
  end;
  FDropTMPCommand.Parameters[0].Value.SetWideString(param);
  FDropTMPCommand.ExecuteUpdate;
end;

function TSMClient.WebFields: string;
begin
  if FWebFieldsCommand = nil then
  begin
    FWebFieldsCommand := FDBXConnection.CreateCommand;
    FWebFieldsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FWebFieldsCommand.Text := 'TSM.WebFields';
    FWebFieldsCommand.Prepare;
  end;
  FWebFieldsCommand.ExecuteUpdate;
  Result := FWebFieldsCommand.Parameters[0].Value.GetWideString;
end;

function TSMClient.Locate(valor1: string; valor2: string; valor3: string): Integer;
begin
  if FLocateCommand = nil then
  begin
    FLocateCommand := FDBXConnection.CreateCommand;
    FLocateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLocateCommand.Text := 'TSM.Locate';
    FLocateCommand.Prepare;
  end;
  FLocateCommand.Parameters[0].Value.SetWideString(valor1);
  FLocateCommand.Parameters[1].Value.SetWideString(valor2);
  FLocateCommand.Parameters[2].Value.SetWideString(valor3);
  FLocateCommand.ExecuteUpdate;
  Result := FLocateCommand.Parameters[3].Value.GetInt32;
end;

function TSMClient.Potencia(Valor1: Double; valor2: Double): Double;
begin
  if FPotenciaCommand = nil then
  begin
    FPotenciaCommand := FDBXConnection.CreateCommand;
    FPotenciaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPotenciaCommand.Text := 'TSM.Potencia';
    FPotenciaCommand.Prepare;
  end;
  FPotenciaCommand.Parameters[0].Value.SetDouble(Valor1);
  FPotenciaCommand.Parameters[1].Value.SetDouble(valor2);
  FPotenciaCommand.ExecuteUpdate;
  Result := FPotenciaCommand.Parameters[2].Value.GetDouble;
end;

function TSMClient.NoRound(Valor1: Double; valor2: Integer): Double;
begin
  if FNoRoundCommand = nil then
  begin
    FNoRoundCommand := FDBXConnection.CreateCommand;
    FNoRoundCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FNoRoundCommand.Text := 'TSM.NoRound';
    FNoRoundCommand.Prepare;
  end;
  FNoRoundCommand.Parameters[0].Value.SetDouble(Valor1);
  FNoRoundCommand.Parameters[1].Value.SetInt32(valor2);
  FNoRoundCommand.ExecuteUpdate;
  Result := FNoRoundCommand.Parameters[2].Value.GetDouble;
end;

function TSMClient.Execute(fonte: string; sec: Integer): string;
begin
  if FExecuteCommand = nil then
  begin
    FExecuteCommand := FDBXConnection.CreateCommand;
    FExecuteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecuteCommand.Text := 'TSM.Execute';
    FExecuteCommand.Prepare;
  end;
  FExecuteCommand.Parameters[0].Value.SetWideString(fonte);
  FExecuteCommand.Parameters[1].Value.SetInt32(sec);
  FExecuteCommand.ExecuteUpdate;
  Result := FExecuteCommand.Parameters[2].Value.GetWideString;
end;

procedure TSMClient.getWorkPend(usuario: string);
begin
  if FgetWorkPendCommand = nil then
  begin
    FgetWorkPendCommand := FDBXConnection.CreateCommand;
    FgetWorkPendCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetWorkPendCommand.Text := 'TSM.getWorkPend';
    FgetWorkPendCommand.Prepare;
  end;
  FgetWorkPendCommand.Parameters[0].Value.SetWideString(usuario);
  FgetWorkPendCommand.ExecuteUpdate;
end;

procedure TSMClient.getWorkForm(chave: string);
begin
  if FgetWorkFormCommand = nil then
  begin
    FgetWorkFormCommand := FDBXConnection.CreateCommand;
    FgetWorkFormCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetWorkFormCommand.Text := 'TSM.getWorkForm';
    FgetWorkFormCommand.Prepare;
  end;
  FgetWorkFormCommand.Parameters[0].Value.SetWideString(chave);
  FgetWorkFormCommand.ExecuteUpdate;
end;

function TSMClient.getTables(conexao: string): string;
begin
  if FgetTablesCommand = nil then
  begin
    FgetTablesCommand := FDBXConnection.CreateCommand;
    FgetTablesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetTablesCommand.Text := 'TSM.getTables';
    FgetTablesCommand.Prepare;
  end;
  FgetTablesCommand.Parameters[0].Value.SetWideString(conexao);
  FgetTablesCommand.ExecuteUpdate;
  Result := FgetTablesCommand.Parameters[1].Value.GetWideString;
end;


constructor TSMClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TSMClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TSMClient.Destroy;
begin
  FDSServerModuleCreateCommand.DisposeOf;
  FApplicationEvents1ExceptionCommand.DisposeOf;
  FatPascalScripter1RuntimeErrorCommand.DisposeOf;
  FatPascalScripter1CompileErrorCommand.DisposeOf;
  FGeraDSCommand.DisposeOf;
  FLocalSQLCommand.DisposeOf;
  FuDataSetsCommand.DisposeOf;
  FsetAmbienteCommand.DisposeOf;
  FGeraJSONCommand.DisposeOf;
  FvalidaDOCCommand.DisposeOf;
  FexisttabCommand.DisposeOf;
  FrunwkfCommand.DisposeOf;
  FGetCuboCommand.DisposeOf;
  FDataSetToJsonTxtCommand.DisposeOf;
  FProcRELCommand.DisposeOf;
  FProcRELNCommand.DisposeOf;
  F_ProcrelGCommand.DisposeOf;
  F_ProcrelnGCommand.DisposeOf;
  FEchoStringCommand.DisposeOf;
  FGenerateIDCommand.DisposeOf;
  FGeraSQLCommand.DisposeOf;
  FExecSQLCommand.DisposeOf;
  FGetLicencaCommand.DisposeOf;
  FGeraSQL2Command.DisposeOf;
  FExecSQL2Command.DisposeOf;
  FTerminateCommand.DisposeOf;
  FProcTESCommand.DisposeOf;
  FProcTES2Command.DisposeOf;
  FsegunCommand.DisposeOf;
  FStrutCommand.DisposeOf;
  FStrutDCommand.DisposeOf;
  FStrutCMCommand.DisposeOf;
  FStrutEstCommand.DisposeOf;
  FStrutSTDCommand.DisposeOf;
  FStrutOPCommand.DisposeOf;
  FStrutQCommand.DisposeOf;
  FExecScriptCommand.DisposeOf;
  FExecScriptRelCommand.DisposeOf;
  FAsStringCommand.DisposeOf;
  FAsIntegerCommand.DisposeOf;
  FAsFloatCommand.DisposeOf;
  FTableEOFCommand.DisposeOf;
  FTableBOFCommand.DisposeOf;
  FMoveNextCommand.DisposeOf;
  FMovePriorCommand.DisposeOf;
  FMoveLastCommand.DisposeOf;
  FMoveFirstCommand.DisposeOf;
  FRecNOCommand.DisposeOf;
  FRecOrdCountCommand.DisposeOf;
  FFiltroSQLCommand.DisposeOf;
  FRemoveFiltroCommand.DisposeOf;
  FSendMailCommand.DisposeOf;
  FProcessaFPCommand.DisposeOf;
  FLoadFileCommand.DisposeOf;
  FCreateFileCommand.DisposeOf;
  FSaveFileCommand.DisposeOf;
  FdeleteFCommand.DisposeOf;
  FFormCommand.DisposeOf;
  FNewCubeCommand.DisposeOf;
  FMaxRECNOCommand.DisposeOf;
  FComandoInserirCommand.DisposeOf;
  FComandoInserir2Command.DisposeOf;
  FComandoGravarCommand.DisposeOf;
  FSetStringCommand.DisposeOf;
  FSetIntegerCommand.DisposeOf;
  FSetFloatCommand.DisposeOf;
  FDivideCommand.DisposeOf;
  FTableEditCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FaddFieldCommand.DisposeOf;
  FCreateTMPCommand.DisposeOf;
  FOPenTMPCommand.DisposeOf;
  FDropTMPCommand.DisposeOf;
  FWebFieldsCommand.DisposeOf;
  FLocateCommand.DisposeOf;
  FPotenciaCommand.DisposeOf;
  FNoRoundCommand.DisposeOf;
  FExecuteCommand.DisposeOf;
  FgetWorkPendCommand.DisposeOf;
  FgetWorkFormCommand.DisposeOf;
  FgetTablesCommand.DisposeOf;
  inherited;
end;

end.
