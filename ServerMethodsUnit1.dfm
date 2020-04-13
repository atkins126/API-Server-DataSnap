object SM: TSM
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  OnDestroy = DSServerModuleDestroy
  Height = 721
  Width = 1145
  object frxGradientObject1: TfrxGradientObject
    Left = 48
    Top = 128
  end
  object WorkflowStudio1: TWorkflowStudio
    OnSendMail = WorkflowStudio1SendMail
    GroupAssignmentMode = gamMultipleTasks
    VersionControlEnabled = False
    Left = 688
    Top = 120
  end
  object Script: TatPascalScripter
    Compiled = False
    SaveCompiledCode = True
    ShortBooleanEval = False
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)')
    LibOptions.SourceFileExt = '.psc'
    LibOptions.CompiledFileExt = '.pcu'
    LibOptions.UseScriptFiles = False
    CallExecHookEvent = False
    Left = 757
    Top = 435
  end
  object DataSetProvider1: TDataSetProvider
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 256
    Top = 112
  end
  object atScripter1: TatScripter
    DefaultLanguage = slPascal
    SaveCompiledCode = False
    ShortBooleanEval = True
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)')
    LibOptions.UseScriptFiles = False
    CallExecHookEvent = False
    Left = 712
    Top = 40
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 48
    Top = 80
  end
  object fsDialogsRTTI1: TfsDialogsRTTI
    Left = 152
    Top = 144
  end
  object fsIniRTTI1: TfsIniRTTI
    Left = 168
    Top = 376
  end
  object fsDBCtrlsRTTI1: TfsDBCtrlsRTTI
    Left = 48
    Top = 224
  end
  object fsADORTTI1: TfsADORTTI
    Left = 168
    Top = 304
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 256
    Top = 168
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 40
    Top = 24
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 584
    Top = 40
  end
  object frxBarCodeObject2: TfrxBarCodeObject
    Left = 552
    Top = 105
  end
  object frxRichObject1: TfrxRichObject
    Left = 456
    Top = 192
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 766
    Top = 120
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 686
    Top = 200
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 590
    Top = 336
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 48
    Top = 440
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 168
    Top = 448
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 392
    Top = 344
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 376
    Top = 168
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 48
    Top = 304
  end
  object fsDBRTTI1: TfsDBRTTI
    Left = 48
    Top = 376
  end
  object ADQuery1: TFDQuery
    AfterOpen = ADQuery1AfterOpen
    OnPostError = ADQuery1PostError
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    SQL.Strings = (
      'select * from SB1010')
    Left = 144
    Top = 80
  end
  object verifica: TDataSetProvider
    ResolveToDataSet = True
    Left = 272
    Top = 376
  end
  object _VERIFICA: TFDQuery
    FieldOptions.AutoCreateMode = acCombineComputed
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    FormatOptions.AssignedValues = [fvDefaultParamDataType, fvDataSnapCompatibility]
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvLockMode, uvLockPoint, uvRefreshMode]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.LockPoint = lpImmediate
    UpdateOptions.RefreshMode = rmManual
    Left = 256
    Top = 232
  end
  object ADOQuery1: TFDQuery
    OnPostError = ADOQuery1PostError
    Left = 56
    Top = 520
  end
  object _WKPENDS: TDataSetProvider
    DataSet = WKPENDS
    Left = 504
    Top = 482
  end
  object _WKFORMS: TDataSetProvider
    DataSet = WKFORMS
    Left = 504
    Top = 424
  end
  object frxChartObject1: TfrxChartObject
    Left = 280
    Top = 304
  end
  object ADOQuery2: TFDQuery
    Left = 360
    Top = 112
  end
  object atPascalScripter1: TatPascalScripter
    SaveCompiledCode = False
    OnCompileError = atPascalScripter1CompileError
    OnRuntimeError = atPascalScripter1RuntimeError
    ShortBooleanEval = False
    LibOptions.SearchPath.Strings = (
      '$(CURDIR)'
      '$(APPDIR)')
    LibOptions.SourceFileExt = '.psc'
    LibOptions.CompiledFileExt = '.pcu'
    LibOptions.UseScriptFiles = False
    CallExecHookEvent = False
    Left = 432
    Top = 8
  end
  object ADConnection1: TFDConnection
    Params.Strings = (
      'Database=alumaq'
      'User_Name=postgres'
      'Password=ed150599'
      'Port=5433'
      'DriverID=PG')
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 400
    Top = 296
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 136
    Top = 16
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    Left = 256
    Top = 16
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Left = 352
    Top = 16
  end
  object FDGUIxScriptDialog1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Left = 656
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 536
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 936
    Top = 16
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 936
    Top = 64
  end
  object FDPhysInfxDriverLink1: TFDPhysInfxDriverLink
    Left = 936
    Top = 112
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 936
    Top = 160
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Left = 1056
    Top = 16
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    Left = 1056
    Top = 64
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    Left = 1056
    Top = 112
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 1056
    Top = 160
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 936
    Top = 208
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 1048
    Top = 208
  end
  object FDPhysODBCDriverLink1: TFDPhysODBCDriverLink
    Left = 936
    Top = 256
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 1048
    Top = 256
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 936
    Top = 304
  end
  object FDPhysASADriverLink1: TFDPhysASADriverLink
    Left = 1056
    Top = 304
  end
  object FDPhysADSDriverLink1: TFDPhysADSDriverLink
    Left = 936
    Top = 352
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 1048
    Top = 352
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 936
    Top = 400
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 1048
    Top = 400
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 936
    Top = 448
  end
  object FDPhysDSDriverLink1: TFDPhysDSDriverLink
    Left = 1048
    Top = 448
  end
  object FDPhysTDBXDriverLink1: TFDPhysTDBXDriverLink
    Left = 936
    Top = 504
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <>
    Left = 456
    Top = 104
  end
  object serial: TJvVigenereCipher
    Left = 112
    Top = 224
  end
  object FormsF: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 472
    Top = 232
    object FormsFNOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object FormsFVALOR: TStringField
      FieldName = 'VALOR'
      Size = 255
    end
  end
  object JvInterpreterProgram1: TJvInterpreterProgram
    Left = 608
    Top = 280
  end
  object FDQuery1: TFDQuery
    IndexesActive = False
    Connection = ADConnection1
    FetchOptions.AssignedValues = [evMode]
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    Left = 56
    Top = 576
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evMode, evItems, evRowsetSize, evAutoClose, evRecordCountMode, evCursorKind, evAutoFetchAll]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckDefault
    FetchOptions.RowsetSize = 500000
    FetchOptions.AutoClose = False
    FetchOptions.RecordCountMode = cmFetched
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amAsync
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateMode, uvLockMode, uvRefreshMode, uvCheckRequired]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.LockMode = lmPessimistic
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.CheckRequired = False
    TxOptions.Isolation = xiUnspecified
    LoginPrompt = False
    Left = 400
    Top = 232
  end
  object WKFORMS: TJvMemoryData
    FieldDefs = <>
    Left = 432
    Top = 424
    object wkformsNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object WKFORMSTITULO: TStringField
      FieldName = 'TITULO'
      Size = 255
    end
    object WKFORMSVALOR: TMemoField
      FieldName = 'VALOR'
      BlobType = ftMemo
    end
    object WKFORMSRO: TBooleanField
      FieldName = 'RO'
    end
    object WKFORMSOBRIG: TBooleanField
      FieldName = 'OBRIG'
    end
    object WKFORMSSTATUS: TMemoField
      FieldName = 'STATUS'
      BlobType = ftMemo
    end
  end
  object WKPENDS: TJvMemoryData
    FieldDefs = <
      item
        Name = 'CHAVE'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'ICHAVE'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'ASSUNTO'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DESCRICAO'
        DataType = ftMemo
      end>
    Left = 432
    Top = 482
    object WKPENDSCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 250
    end
    object WKPENDSICHAVE: TStringField
      FieldName = 'ICHAVE'
      Size = 250
    end
    object WKPENDSNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
    object WKPENDSSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 250
    end
    object WKPENDSUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 250
    end
    object WKPENDSASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 250
    end
    object WKPENDSDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
    end
    object WKPENDSDATA: TStringField
      FieldName = 'DATA'
      Size = 250
    end
  end
  object FDLocal: TFDLocalSQL
    Connection = FDConnection1
    Left = 320
    Top = 232
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 216
    Top = 584
  end
  object FDPhysDB2DriverLink2: TFDPhysDB2DriverLink
    Left = 536
    Top = 296
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 192
    Top = 240
  end
  object _TEMPLATE: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDataSnap'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=visualbusiness/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'Port=212'
      'Filters={}'
      'DSAuthenticationUser=goodsales'
      'DSAuthenticationPassword=good&@le&'
      'HostName=127.0.0.1'
      'DSProxyPort=8889')
    Left = 480
    Top = 56
    UniqueId = '{CC0F01AD-2467-4227-8CF6-C27C44005DA8}'
  end
  object SqlServerMethod1: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'Comando'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'ado'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'conexao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 4
      end>
    SQLConnection = _TEMPLATE
    ServerMethodName = 'TSM.GeraSQL'
    Left = 56
    Top = 176
  end
  object WorkflowADODB1: TWorkflowADODB
    WorkInsBindary.TableName = 'wsworkflowinstance'
    WorkInsBindary.KeyField = 'id'
    WorkInsBindary.WorkflowField = 'workflow'
    WorkInsBindary.WorkDefKeyField = 'workflowdefinitionkey'
    WorkInsBindary.CreatedOnField = 'createdon'
    WorkInsBindary.NextRunTimeField = 'nextruntime'
    WorkInsBindary.ModifiedOnField = 'modifiedon'
    WorkInsBindary.FinishedOnField = 'finishedon'
    WorkInsBindary.InstanceVersionField = 'instanceversion'
    WorkDefBindary.TableName = 'wsworkflowdefinition'
    WorkDefBindary.KeyField = 'id'
    WorkDefBindary.WorkflowField = 'workflow'
    WorkDefBindary.NameField = 'name'
    TaskInsBindary.TableName = 'wstaskinstance'
    TaskInsBindary.KeyField = 'id'
    TaskInsBindary.TaskField = 'task'
    TaskInsBindary.UserIdField = 'userid'
    TaskInsBindary.NameField = 'name'
    TaskInsBindary.WorkInsKeyField = 'workflowinstancekey'
    TaskInsBindary.WorkDefKeyField = 'workflowdefinitionkey'
    TaskInsBindary.CompletedField = 'completed'
    TaskInsBindary.CreatedOnField = 'createdon'
    TaskInsBindary.ModifiedOnField = 'modifiedon'
    TaskInsBindary.ModifiedUserIdField = 'modifieduserid'
    TaskInsBindary.TaskVersionField = 'taskversion'
    TaskLogBindary.TableName = 'wstasklog'
    TaskLogBindary.KeyField = 'id'
    TaskLogBindary.TaskInsKeyField = 'taskinstancekey'
    TaskLogBindary.EventDateField = 'eventdate'
    TaskLogBindary.OperationField = 'operation'
    TaskLogBindary.UserIdField = 'userid'
    TaskLogBindary.InfoField = 'info'
    TaskLogBindary.Info2Field = 'info2'
    AttachmentBindary.TableName = 'wsattachment'
    AttachmentBindary.KeyField = 'id'
    AttachmentBindary.ContentField = 'filecontent'
    AttachmentBindary.WorkKeyField = 'workkey'
    AttachmentBindary.CreatedOnField = 'createdon'
    AttachmentBindary.ObjectTypeField = 'objecttype'
    ConfigBindary.TableName = 'wsconfig'
    ConfigBindary.KeyField = 'id'
    ConfigBindary.DBVersionField = 'dbversion'
    DestroyQueries = True
    Left = 352
    Top = 520
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 576
    Top = 424
  end
  object __TRANSFER: TFDQuery
    SQL.Strings = (
      'Select * from TRANSFER')
    Left = 56
    Top = 640
    object __TRANSFERTABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      Size = 250
    end
    object __TRANSFERCONTEUDO: TBlobField
      FieldName = 'CONTEUDO'
      Origin = 'CONTEUDO'
    end
    object __TRANSFERFILTRO: TStringField
      FieldName = 'FILTRO'
      Origin = 'FILTRO'
      Size = 250
    end
    object __TRANSFERID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ReadOnly = True
    end
  end
  object FDStanStorageBinLink2: TFDStanStorageBinLink
    Left = 368
    Top = 616
  end
  object FDStanStorageXMLLink2: TFDStanStorageXMLLink
    Left = 488
    Top = 608
  end
  object FDStanStorageJSONLink2: TFDStanStorageJSONLink
    Left = 608
    Top = 656
  end
  object compress: TIdCompressorZLib
    Left = 576
    Top = 488
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 840
    Top = 568
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    Left = 864
    Top = 632
  end
  object RESTResponse1: TRESTResponse
    Left = 768
    Top = 200
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient2
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 736
    Top = 632
  end
  object RESTClient2: TRESTClient
    BaseURL = 
      'http://interalphatecnologia.com.br/rcrio_webhook/api/Ti9/GetList' +
      'Cliente/ad264bc23265bb82/2017-01-01/2018-12-31'
    Params = <>
    HandleRedirects = True
    Left = 744
    Top = 568
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv2
    SSLOptions.SSLVersions = [sslvSSLv2]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 752
    Top = 280
  end
  object clSmtp1: TclSmtp
    OnVerifyServer = clSmtp1VerifyServer
    MailAgent = 'Clever Internet Suite v 7.0'
    Left = 168
    Top = 648
  end
  object clMailMessage1: TclMailMessage
    ToList = <>
    CCList = <>
    BCCList = <>
    Date = 40009.488706053240000000
    CharSet = 'iso-8859-1'
    ContentType = 'text/plain'
    Left = 240
    Top = 648
  end
  object FDPhysCDataJIRADriverLink1: TFDPhysCDataJIRADriverLink
    DriverID = 'CDataJIRA'
    Left = 1048
    Top = 504
  end
  object clCertificateStore1: TclCertificateStore
    StoreName = 'MY'
    CSP = 'Microsoft Base Cryptographic Provider v1.0'
    ValidFrom = 43497.000000000000000000
    ValidTo = 43862.000000000000000000
    Left = 344
    Top = 334
  end
  object FDQuery2: TFDQuery
    OnPostError = ADQuery1PostError
    Connection = ADConnection1
    Left = 696
    Top = 520
  end
end
