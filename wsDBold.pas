{***************************************************************************}
{ Workflow Studio Components for Delphi & C++Builder                        }
{                                                                           }
{ written by TMS Software                                                   }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ For information about version history, check the section "What's New"     }
{ at Workflow Studio manual.                                                }                                                                         
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

unit wsDB;

{$I wsdefs.inc}

interface

uses
  SysUtils,DBClient, Classes, Dialogs, Forms, DB, LiveDiagram,
  atDiagram, wsClasses;

type
  TwsBindary = class(TPersistent)
  private
    FKeyField: string;
    FWorkflowDB: TComponent;
    FTableName: string;
  protected
    property WorkflowDB: TComponent read FWorkflowDB;
  public
    constructor Create(AWorkflowDB: TComponent); virtual;
    destructor Destroy; override;
  published
    property TableName: string read FTableName write FTableName;
    property KeyField: string read FKeyField write FKeyField;
  end;

  TWorkInsBindary = class(TwsBindary)
  private
    FWorkflowField: string;
    FWorkDefKeyField: string;
    FCreatedOnField: string;
    FNextRunTimeField: string;
  public
    constructor Create(AWorkflowDB: TComponent); override;
  published
    property WorkflowField: string read FWorkflowField write FWorkflowField;
    property WorkDefKeyField: string read FWorkDefKeyField write FWorkDefKeyField;
    property CreatedOnField: string read FCreatedOnField write FCreatedOnField;
    property NextRunTimeField: string read FNextRunTimeField write FNextRunTimeField;
  end;

  TWorkDefBindary = class(TwsBindary)
  private
    FWorkflowField: string;
    FNameField: string;
  public
    constructor Create(AWorkflowDB: TComponent); override;
  published
    property WorkflowField: string read FWorkflowField write FWorkflowField;
    property NameField: string read FNameField write FNameField;
  end;

  TTaskInsBindary = class(TwsBindary)
  private
    FWorkInsKeyField: string;
    FNameField: string;
    FUserIdField: string;
    FWorkDefKeyField: string;
    FTaskField: string;
    FCompletedField: string;
    FCreatedOnField: string;
    FModifiedOnField: string;
    FModifiedUserIdField: string;
  public
    constructor Create(AWorkflowDB: TComponent); override;
  published
    property TaskField: string read FTaskField write FTaskField;
    property UserIdField: string read FUserIdField write FUserIdField;
    property NameField: string read FNameField write FNameField;
    property WorkInsKeyField: string read FWorkInsKeyField write FWorkInsKeyField;
    property WorkDefKeyField: string read FWorkDefKeyField write FWorkDefKeyField;
    property CompletedField: string read FCompletedField write FCompletedField;
    property CreatedOnField: string read FCreatedOnField write FCreatedOnField;
    property ModifiedOnField: string read FModifiedOnField write FModifiedOnField;
    property ModifiedUserIdField: string read FModifiedUserIdField write FModifiedUserIdField;
  end;

  TAttachmentBindary = class(TwsBindary)
  private
    FContentField: string;
    FWorkKeyField: string;
    FCreatedOnField: string;
    FObjectTypeField: string;
  public
    constructor Create(AWorkflowDB: TComponent); override;
  published
    property ContentField: string read FContentField write FContentField;
    property WorkKeyField: string read FWorkKeyField write FWorkKeyField;
    property CreatedOnField: string read FCreatedOnField write FCreatedOnField;
    property ObjectTypeField: string read FObjectTypeField write FObjectTypeField;
  end;

  TTaskLogBindary = class(TwsBindary)
  private
    FUserIdField: string;
    FInfo2Field: string;
    FOperationField: string;
    FInfoField: string;
    FEventDateField: string;
    FTaskInsKeyField: string;
  public
    constructor Create(AWorkflowDB: TComponent); override;
  published
    property TaskInsKeyField: string read FTaskInsKeyField write FTaskInsKeyField;
    property EventDateField: string read FEventDateField write FEventDateField;
    property OperationField: string read FOperationField write FOperationField;
    property UserIdField: string read FUserIdField write FUserIdField;
    property InfoField: string read FInfoField write FInfoField;
    property Info2Field: string read FInfo2Field write FInfo2Field;
  end;

  TCreateQueryEvent = procedure(Sender: TObject; SQL: string;
    var Dataset: TDataset; var Done: boolean) of object;
  TAssignSQLParamsEvent = procedure(Sender: TObject; Dataset: TDataset;
    AParams: TParams; var Done: boolean) of object;
  TExecuteQueryEvent = procedure(Sender: TObject; Dataset: TDataset;
    var Done: boolean) of object;

  TAttachmentParentType = (ptDefinition, ptInstance);

  TCustomWorkflowDB = class(TComponent)
  private
    FWorkInsBindary: TWorkInsBindary;
    FTaskInsBindary: TTaskInsBindary;
    FWorkDefBindary: TWorkDefBindary;
    FTaskLogBindary: TTaskLogBindary;
    FAttachmentBindary: TAttachmentBindary;
    FParams: TParams;
    FOnCreateQuery: TCreateQueryEvent;
    FOnExecuteQuery: TExecuteQueryEvent;
    FOnAssignSQLParams: TAssignSQLParamsEvent;
    FDestroyQueries: boolean;
    FStructureChecked: boolean;
    procedure WorkflowDefinitionLoadRecord(DS: TDataset; WorkDef: TWorkflowDefinition);
    procedure WorkflowInstanceLoadRecord(DS: TDataset; WorkIns: TWorkflowInstance);
    procedure TaskInstanceLoadRecord(DS: TDataset; TaskIns: TTaskInstance);
    procedure TaskLogLoadRecord(DS: TDataset; LogItem: TTaskLogItem);
    procedure AttachmentItemLoadRecord(DS: TDataset; AItem: TAttachmentItem);
    function OpenQuery(SQL: string; Params: TParams): TDataset;
    procedure ExecuteQuery(SQL: string; Params: TParams);
    function MapOperationToStr(AOperation: TTaskLogOperation): string;
    function MapStrToOperation(AStr: string): TTaskLogOperation;
    function FindNextID(ATableName, AFieldName: string): integer;
    procedure CheckStructure;
  protected
    function ComponentToString(AComp: TComponent): string;
    procedure ComponentFromString(AComp: TComponent; AStr: string);
    function BlobFieldToString(AField: TField): string; virtual;
    procedure SetBlobParam(AParam: TParam; BlobStream: string); virtual;
    function DoCreateQuery(SQL: string): TDataset; virtual;
    procedure DoAssignSQLParams(Dataset: TDataset; AParams: TParams); virtual;
    procedure DoExecuteQuery(Dataset: TDataset); virtual;
    procedure TaskInstancesDeleteByWorkIns(AWorkInsKey: string);
    procedure SaveAttachments(ADiagram: TCustomWorkflowDiagram; AType: TAttachmentParentType; AWorkKey: string);
    procedure LogTaskOperation(TaskIns: TTaskInstance; Operation: TTaskLogOperation;
      AWorkflowStudio: TCustomWorkflowStudio; Info1: string = ''; Info2: string = '');
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure TaskLogLoadList(ATaskInsKey: string; ALogItems: TTaskLogItems); virtual;
    procedure TaskInstanceInsert(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio); virtual;
    procedure TaskInstanceLoad(TaskIns: TTaskInstance); virtual;
    procedure TaskInstanceUpdate(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio;
      Inserting: boolean = false); virtual;
    procedure TaskInstanceLoadList(ATasks: TTaskInstanceList;
      AFilterType: TTaskFilterType; AFilterKey: string; OnlyIncomplete: boolean;
      AWorkflowStudio: TCustomWorkflowStudio); virtual;

    procedure WorkflowInstanceInsert(WorkIns: TWorkflowInstance; AWorkflowStudio: TCustomWorkflowStudio); virtual;
    function WorkflowInstanceLoad(WorkIns: TWorkflowInstance): boolean; virtual;
    procedure WorkflowInstanceUpdate(WorkIns: TWorkflowInstance); virtual;
    procedure WorkflowInstanceDelete(WorkIns: TWorkflowInstance); virtual;
    procedure ListPendingWorkflowInstances(AKeyList: TStrings; AToDate: TDateTime); virtual;

    procedure WorkflowDefinitionDelete(WorkDef: TWorkflowDefinition); virtual;
    procedure WorkflowDefinitionInsert(WorkDef: TWorkflowDefinition); virtual;
    procedure WorkflowDefinitionUpdate(WorkDef: TWorkflowDefinition); virtual;
    procedure WorkflowDefinitionLoad(WorkDef: TWorkflowDefinition); virtual;
    procedure WorkflowDefinitionLoadList(WorkDefs: TWorkflowDefinitions); virtual;
    procedure ListWorkflowDefinitionNames(AList: TStrings); virtual;

    procedure AttachmentItemInsert(AItem: TAttachmentItem;
      AType: TAttachmentParentType; AWorkKey: string); virtual;
    function AttachmentItemLoad(AItem: TAttachmentItem): boolean; virtual;
    procedure AttachmentItemUpdate(AItem: TAttachmentItem;
      AType: TAttachmentParentType; AWorkKey: string); virtual;

    procedure LogTaskInfo(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio; AInfo: string; AInfo2: string='');

    property WorkInsBindary: TWorkInsBindary read FWorkInsBindary write FWorkInsBindary;
    property WorkDefBindary: TWorkDefBindary read FWorkDefBindary write FWorkDefBindary;
    property TaskInsBindary: TTaskInsBindary read FTaskInsBindary write FTaskInsBindary;
    property TaskLogBindary: TTaskLogBindary read FTaskLogBindary write FTaskLogBindary;
    property AttachmentBindary: TAttachmentBindary read FAttachmentBindary write FAttachmentBindary;
    property OnCreateQuery: TCreateQueryEvent read FOnCreateQuery write FOnCreateQuery;
    property OnAssignSQLParams: TAssignSQLParamsEvent read FOnAssignSQLParams write FOnAssignSQLParams;
    property OnExecuteQuery: TExecuteQueryEvent read FOnExecuteQuery write FOnExecuteQuery;
    property DestroyQueries: boolean read FDestroyQueries write FDestroyQueries;
  published
  end;

  TWorkflowDB = class(TCustomWorkflowDB)
  published 
    property WorkInsBindary;
    property WorkDefBindary;
    property TaskInsBindary;
    property TaskLogBindary;
    property AttachmentBindary;
    property OnCreateQuery;
    property OnAssignSQLParams;
    property OnExecuteQuery;
    property DestroyQueries;
  end;

function DiagramToString(Diagram: TLiveDiagram): string;
procedure DiagramFromString(Diagram: TLiveDiagram; AStr: string);
function StateToString(Diagram: TLiveDiagram): string;
procedure StateFromString(Diagram: TLiveDiagram; AStr: string);
procedure wsDBError(msg: string);

implementation

uses
  wsRes, wsMain;

procedure wsDBError(msg: string);
begin
  raise Exception.Create(msg);
end;

procedure DiagramFromString(Diagram: TLiveDiagram;
  AStr: string);
var
  BS: TStringStream;
  oldName: string;
begin
  {avoid exception if string is empty}
  if Trim(AStr) = '' then
  begin
    Diagram.Clear;
    Exit;
  end;

  try
    BS := TStringStream.Create(AStr);
    try
      BS.Position := 0;
      oldName := Diagram.Owner.Name;
      Diagram.Owner.Name := wsFormName;
      Diagram.LoadFromStream(BS, true);
      Diagram.Owner.Name := oldName;
    finally
      BS.Free;
    end;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      Diagram.Clear;
      Exit;
    end;
  end;
end;

function DiagramToString(Diagram: TLiveDiagram): string;
var
  BS: TStringStream;
  oldName: string;
begin
  BS := TStringStream.Create('');
  try
    oldName := Diagram.Owner.Name;
    Diagram.Owner.Name := wsFormName;
    Diagram.SaveToStream(BS, true);

    Diagram.Owner.Name := oldName;
    BS.Position := 0;
    result := BS.ReadString(MaxInt);
  finally
    BS.Free;
  end;
end;

procedure StateFromString(Diagram: TLiveDiagram; AStr: string);
var
  BS: TStringStream;
  oldName: string;
begin
  BS := TStringStream.Create(AStr);
  try
    BS.Position := 0;
    oldName := Diagram.Owner.Name;
    Diagram.Owner.Name := wsFormName;
    Diagram.LoadStateFromStream(BS, true);
    Diagram.Owner.Name := oldName;
  finally
    BS.Free;
  end;
end;

function StateToString(Diagram: TLiveDiagram): string;
var
  BS: TStringStream;
  oldName: string;
begin
  BS := TStringStream.Create('');
  try
    oldName := Diagram.Owner.Name;
    Diagram.Owner.Name := wsFormName;
    Diagram.SaveStateToStream(BS, true);

    Diagram.Owner.Name := oldName;
    BS.Position := 0;
    result := BS.ReadString(MaxInt);
  finally
    BS.Free;
  end;
end;

{ TCustomWorkflowDB }

procedure TCustomWorkflowDB.ComponentFromString(AComp: TComponent; AStr: string);
var
  CompName: string;
  MemStream: TMemoryStream;
  StrStream: TStringStream;
begin
  MemStream := TMemoryStream.Create;
  StrStream := TStringStream.Create(AStr);
  try
    CompName := AComp.Name;
    try
      AComp.Name := '';
      StrStream.Position := 0;
      ObjectTextToBinary(StrStream, MemStream);
      MemStream.Position := 0;
      MemStream.ReadComponent(AComp);
    finally
      AComp.Name := CompName;
    end;
  finally
    MemStream.Free;
    StrStream.Free;
  end;
end;

function TCustomWorkflowDB.ComponentToString(AComp: TComponent): string;
var
  CompName:  string;
  StrStream: TStringStream;
  MemStream: TMemoryStream;
begin
  StrStream := TStringStream.Create('');
  MemStream := TMemoryStream.Create;
  try
    CompName := AComp.Name;
    try
      AComp.Name := '';
      MemStream.WriteComponent(AComp);
      MemStream.Position := 0;
      ObjectBinaryToText(MemStream, StrStream);
      StrStream.Position := 0;
      result := StrStream.ReadString(MaxInt);
    finally
      AComp.Name := CompName;
    end;
  finally
    MemStream.Free;
    StrStream.Free;
  end;
end;

constructor TCustomWorkflowDB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FWorkInsBindary := TWorkInsBindary.Create(Self);
  FWorkDefBindary := TWorkDefBindary.Create(Self);
  FTaskInsBindary := TTaskInsBindary.Create(Self);
  FAttachmentBindary := TAttachmentBindary.Create(Self);
  FTaskLogBindary := TTaskLogBindary.Create(Self);
  FParams := TParams.Create;
  FStructureChecked := false;
  //FAutoIncFields := false;
end;

destructor TCustomWorkflowDB.Destroy;
begin
  FParams.Free;
  FTaskLogBindary.Free;
  FWorkInsBindary.Free;
  FWorkDefBindary.Free;
  FTaskInsBindary.Free;
  FAttachmentBindary.Free;
  inherited;
end;

procedure TCustomWorkflowDB.ExecuteQuery(SQL: string; Params: TParams);
var
  Done: boolean;
  DS: TDataset;
begin
  if not FStructureChecked then
    CheckStructure;

  DS := nil;

  //Create the query
  Done := false;
  if Assigned(FOnCreateQuery) then
    FOnCreateQuery(Self, SQL, DS, Done);
  if not Done then
    DS := DoCreateQuery(SQL);

  //Assign the params
  Done := false;
  if Assigned(FOnAssignSQLParams) then
    FOnAssignSQLParams(Self, DS, Params, Done);
  if not Done then
    DoAssignSQLParams(DS, Params);

  //Execute the query
  Done := false;
  if Assigned(FOnExecuteQuery) then
    FOnExecuteQuery(Self, DS, Done);
  if not Done then
    DoExecuteQuery(DS);

  if DS <> nil then
    DS.Free;
end;

procedure TCustomWorkflowDB.DoExecuteQuery(Dataset: TDataset);
begin
end;

function TCustomWorkflowDB.OpenQuery(SQL: string; Params: TParams): TDataset;
var
  Done: boolean;
begin
  if not FStructureChecked then
    CheckStructure;

  result := nil;

  //Create the query
  Done := false;
  if Assigned(FOnCreateQuery) then
    FOnCreateQuery(Self, SQL, result, Done);
  if not Done then
    result := DoCreateQuery(SQL);

  //Assign the params
  Done := false;
  if Assigned(FOnAssignSQLParams) then
    FOnAssignSQLParams(Self, result, Params, Done);
  if not Done then
    DoAssignSQLParams(result, Params);

  if result <> nil then
   Begin
    result.close;
    result.open;
   End;
end;

function TCustomWorkflowDB.DoCreateQuery(SQL: string): TDataset;
begin
  result := nil;
end;

procedure TCustomWorkflowDB.TaskInstanceInsert(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio);
var
  SQL: string;
  CreatedOn: TDateTime;
begin
  CreatedOn := AWorkflowStudio.GetNow;
  with TaskInsBindary do
  begin
    {Insert taskinstance unique key}
    TaskIns.Key := IntToStr(FindNextID(TableName, KeyField));
    SQL := Format('INSERT INTO %s (%s, %s) Values (:id, :createdon)',
      [TableName, KeyField, CreatedOnField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(TaskIns.Key);
    FParams.CreateParam(ftDateTime, 'createdon', ptInput).Value := CreatedOn;
    ExecuteQuery(SQL, FParams);

    {Save a log for the task creation}
    LogTaskOperation(TaskIns, tlCreate, AWorkflowStudio);

    {Save other taskinstance fields}
    TaskInstanceUpdate(TaskIns, AWorkflowStudio, true);
  end;
end;

procedure TCustomWorkflowDB.TaskInstanceLoad(TaskIns: TTaskInstance);
var
  SQL: string;
  DS: TDataset;
begin
  SQL := Format('SELECT * from %s WHERE %s = :id',
    [TaskInsBindary.TableName, TaskInsBindary.KeyField]);
  FParams.Clear;
  FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(TaskIns.Key);
  DS := OpenQuery(SQL, FParams);
  try
    if not DS.IsEmpty then
      TaskInstanceLoadRecord(DS, TaskIns)
    else
      wsDBError(Format(_str(SErrorRecordNotFoundKey), [TaskInsBindary.TableName, TaskIns.Key]));
  finally
    DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.TaskInstanceLoadList(ATasks: TTaskInstanceList;
  AFilterType: TTaskFilterType; AFilterKey: string; OnlyIncomplete: boolean;
  AWorkflowStudio: TCustomWorkflowStudio);
var
  SQL: string;
  DS: TDataset;
  UserKeys: TStringList;
  UserCondition: string;
  c: integer;
  CompletedCondition: string;
  GroupIds: TStringList;
  AUser: TWorkflowUser;

begin
  DS := nil;

  {build incomplete condition}
  if OnlyIncomplete then
    CompletedCondition := Format('%s = :completed', [TaskInsBindary.CompletedField])
  else
    CompletedCondition := '0=0';

  Case AFilterType of
    tfWorkIns:
      begin
      TRY
        SQL := Format('SELECT * FROM %s WHERE %s = :workinskey AND (%s)',
          [TaskInsBindary.TableName, TaskInsBindary.WorkInsKeyField, CompletedCondition]);
        FParams.Clear;
        FParams.CreateParam(ftInteger, 'workinskey', ptInput).AsInteger := StrToInt(AFilterKey);

          if OnlyIncomplete then
            FParams.CreateParam(ftString, 'completed', ptInput).AsString := 'F';

        DS := OpenQuery(SQL, FParams);
      eXCEPT
        CompletedCondition := '0=0';
        SQL := Format('SELECT * FROM %s WHERE %s = :workinskey AND (%s)',
          [TaskInsBindary.TableName, TaskInsBindary.WorkInsKeyField, CompletedCondition]);
        FParams.Clear;
        FParams.CreateParam(ftInteger, 'workinskey', ptInput).AsInteger := StrToInt(AFilterKey);
        DS := OpenQuery(SQL, FParams);

      END;
      end;
    TTaskFilterType.ftSubject:
      begin
        CompletedCondition := '0=0';
        SQL := Format('SELECT * FROM %s WHERE %s like :subject AND (%s)',
          [TaskInsBindary.TableName, 'task', CompletedCondition]);
        FParams.Clear;
        FParams.CreateParam(ftString, 'subject', ptInput).AsString := (AFilterKey);
        DS := OpenQuery(SQL, FParams);
      end;
    TTaskFilterType.ftAll:
      begin
        CompletedCondition := 'completed="F"';
        SQL := Format('SELECT * FROM %s WHERE  (%s)',
          [TaskInsBindary.TableName,  CompletedCondition]);
        DS := OpenQuery(SQL, FParams);
      end;

    tfUser, tfUserList:
      begin
        {Get users key values and build condition for users}
        UserKeys := TStringList.Create;
        try
          {Put the correct keys in the userkeys}
          Case AFilterType of
            tfUser: UserKeys.Add(AFilterKey);
            tfUserList: UserKeys.CommaText := AFilterKey;
          end;

          {For each user id, include the ids of the groups for which the user id belongs to.
           Do that only for GroupAssignmentMode = gamSingleTask}
          if AWorkflowStudio.GroupAssignmentMode = gamSingleTask then
          begin
            GroupIds := TStringList.Create;
            try
              for c := 0 to UserKeys.Count - 1 do
              begin
                AUser := AWorkflowStudio.UserManager.Users.FindById(UserKeys[c]);
                if AUser <> nil then
                begin
                  GroupIds.Clear;
                  AUser.FillGroupIds(GroupIds);
                  UserKeys.AddStrings(GroupIds);
                end;
              end;
            finally
              GroupIds.Free;
            end;
          end;

          {Fill in the condition for the user keys, in the format
           (UserId = :userid0) OR (UserId = :userid1) ....}
          UserCondition := '';
          for c := 0 to UserKeys.Count - 1 do
          begin
            if UserCondition <> '' then
              UserCondition := UserCondition + ' OR ';
            UserCondition := UserCondition + Format('(%s = :userid%d)',
              [TaskInsBindary.UserIdField, c]);
          end;
          if UserCondition = '' then
            UserCondition := '0=0';

          {Build the SQL statement}
          SQL := Format('SELECT * FROM %s WHERE (%s) AND (%s)',
            [TaskInsBindary.TableName, UserCondition, CompletedCondition]);

          {Fill in the param values, including the values of user keys in params userid0, userid1, etc.}
          FParams.Clear;
          for c := 0 to UserKeys.Count - 1 do
            FParams.CreateParam(ftString, Format('userid%d', [c]), ptInput).AsString := UserKeys[c];
          if OnlyIncomplete then
            FParams.CreateParam(ftString, 'completed', ptInput).AsString := 'F';
          DS := OpenQuery(SQL, FParams);
        finally
          UserKeys.Free;
        end;
      end;
  end;

  if DS = nil then Exit;
  try
    DS.First;

    ATasks.Clear;
    while not DS.EOF do
    begin
      TaskInstanceLoadRecord(DS, ATasks.Add.Task);
      DS.Next;
    end;
  finally
    DS.Close;
    if FDestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.TaskInstanceLoadRecord(DS: TDataset; TaskIns: TTaskInstance);
begin
  With TaskInsBindary do
  begin
    ComponentFromString(TaskIns, DS.FieldByName(TaskField).AsString);
    TaskIns.Key := DS.FieldByName(KeyField).AsString;
    TaskIns.UserID := DS.FieldByName(UserIdField).AsString;
    TaskIns.TaskDef.Name := DS.FieldByName(NameField).AsString;
    (*TaskIns.Comments := DS.FieldByName(CommentsField).AsString;
    TaskIns.TaskDef.Subject := DS.FieldByName(SubjectField).AsString;;
    TaskIns.TaskDef.Description := DS.FieldByName(DescriptionField).AsString;*)
    TaskIns.WorkInsKey := IntToStr(Ds.FieldByName(WorkInsKeyField).AsInteger);
    TaskIns.DefinitionKey := IntToStr(Ds.FieldByName(WorkDefKeyField).AsInteger);
    TaskIns.CreatedOn := DS.FieldByName(CreatedOnField).AsDateTime;
  end;
end;

procedure TCustomWorkflowDB.TaskInstancesDeleteByWorkIns(AWorkInsKey: string);
var
  SQL: string;
begin
  SQL := Format('DELETE FROM %s WHERE %s = :workinskey',
    [TaskInsBindary.TableName, TaskInsBindary.WorkInsKeyField]);
  FParams.Clear;
  FParams.CreateParam(ftInteger, 'workinskey', ptInput).AsInteger := StrToInt(AWorkInsKey);
  ExecuteQuery(SQL, FParams);
end;

procedure TCustomWorkflowDB.TaskInstanceUpdate(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio;
  Inserting: boolean = false);
var
  SQL: string;
  TaskInsOld: TTaskInstance;
  NowDate: TDateTime;
begin
  With TaskInsBindary do
  begin
    if TaskIns.Key <> '' then
    begin
      TaskInsOld := TTaskInstance.Create(nil);
      try
        {Load the current record into a temporary instance for comparing}
        if not Inserting then
        begin
          TaskInsOld.Key := TaskIns.Key;
          TaskInstanceLoad(TaskInsOld);
        end;

        NowDate := AWorkflowStudio.GetNow;
        {Save the current taskinstance in the database}
        SQL := Format('UPDATE %s SET '+
          '%s = :userid, '+
          '%s = :name, '+

          {'%s = :comments, '+
          '%s = :subject, '+
          '%s = :description, '+}

          '%s = :task, '+
          '%s = :workinskey, '+
          '%s = :workdefkey, '+
          '%s = :completed, '+
          '%s = :modifiedon, '+
          '%s = :modifieduserid '+
          'WHERE %s = :id',
          [TableName, UserIdField, NameField, {CommentsField, SubjectField, DescriptionField,}
           TaskField, WorkInsKeyField, WorkDefKeyField, CompletedField,
           ModifiedOnField, ModifiedUserIdField,
           KeyField]);
        FParams.Clear;
        // Eduardo Vieira: Ajustado para deixar o usuario dinamico
        FParams.CreateParam(ftString, 'userid', ptInput).AsString := TaskIns.UserID;
        FParams.CreateParam(ftString, 'name', ptInput).AsString := TaskIns.TaskDef.Name;
        {FParams.CreateParam(ftString, 'comments', ptInput).AsString := TaskIns.Comments;
        FParams.CreateParam(ftString, 'subject', ptInput).AsString := TaskIns.TaskDef.Subject;
        FParams.CreateParam(ftString, 'description', ptInput).AsString := TaskIns.TaskDef.Description;}
        FParams.CreateParam(ftMemo, 'task', ptInput).AsMemo := ComponentToString(TaskIns);
        FParams.CreateParam(ftInteger, 'workinskey', ptInput).AsInteger := StrToInt(TaskIns.WorkInsKey);
        FParams.CreateParam(ftInteger, 'workdefkey', ptInput).AsInteger := StrToint(TaskIns.DefinitionKey);
        if TaskIns.Completed then
          FParams.CreateParam(ftString, 'completed', ptInput).AsString := 'T'
        else
          FParams.CreateParam(ftString, 'completed', ptInput).AsString := 'F';

        if not Inserting then
        begin
          FParams.CreateParam(ftDateTime, 'modifiedon', ptInput).AsDateTime := NowDate;
          FParams.CreateParam(ftString, 'modifieduserid', ptInput).AsString := AWorkflowStudio.UserManager.LoggedUserId;
        end
        else
        begin
          FParams.CreateParam(ftDateTime, 'modifiedon', ptInput).Clear;
          FParams.CreateParam(ftString, 'modifieduserid', ptInput).Clear;
        end;
        FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(TaskIns.Key);

        ExecuteQuery(SQL, FParams);

        {Now compare the new task instance with the old one. If Inserting is true, it means
         that this update is to complete an insert operation, so there is no need for a log.
         If the status has change, log it}
        if not Inserting then
        begin
          if CompareText(TaskIns.Status, TaskInsOld.Status) <> 0 then
          begin
            LogTaskOperation(TaskIns, tlStatusChange, AWorkflowStudio, TaskInsOld.Status, TaskIns.Status);

            {if the status was changed and the task is completed, it means that the task
             was just finished now - fire the event}
            if Assigned(AWorkflowStudio.OnTaskFinished) then
              AWorkflowStudio.OnTaskFinished(AWorkflowStudio, TaskIns);
          end;
          LogTaskOperation(TaskIns, tlUpdate, AWorkflowStudio);
        end
        else
        begin
          {if task was inserted then call OnTaskCreated event}
          if Assigned(AWorkflowStudio.OnTaskCreated) then
            AWorkflowStudio.OnTaskCreated(AWorkflowStudio, TaskIns);
        end;
      finally
        TaskInsOld.Free;
      end;
    end else
      wsDBError(Format(_str(SErrorUpdateEmptyKey), [TableName]));
  end;
end;

procedure TCustomWorkflowDB.WorkflowDefinitionDelete(
  WorkDef: TWorkflowDefinition);
var
  SQL: string;
begin
  if WorkDef.Key <> '' then
  begin
    SQL := Format('DELETE FROM %s WHERE %s = :id',
      [WorkDefBindary.TableName, WorkDefBindary.KeyField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkDef.Key);
    ExecuteQuery(SQL, FParams);
  end else
    wsDBError(Format(_str(SErrorDeleteEmptyKey), ['workflow definition']));
end;

procedure TCustomWorkflowDB.WorkflowDefinitionInsert(WorkDef: TWorkflowDefinition);
var
  SQL: string;
begin
  With WorkDefBindary do
  begin
    {Insert workdefinition unique key}
    WorkDef.Key := IntToStr(FindNextID(TableName, KeyField));
    SQL := Format('INSERT INTO %s (%s) Values (:id)',
      [TableName, KeyField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkDef.Key);
    ExecuteQuery(SQL, FParams);

    {Save other workflow definition fields}
    WorkflowDefinitionUpdate(WorkDef);
  end;
end;

procedure TCustomWorkflowDB.WorkflowDefinitionLoad(WorkDef: TWorkflowDefinition);
var
  SQL: string;
  DS: TDataset;
begin
  SQL := Format('SELECT * from %s WHERE %s = :id',
    [WorkDefBindary.TableName, WorkDefBindary.KeyField]);
  FParams.Clear;
  FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkDef.Key);
  DS := OpenQuery(SQL, FParams);
  try
    if not DS.IsEmpty then
      WorkflowDefinitionLoadRecord(DS, WorkDef)
    else
      wsDBError(Format(_str(SErrorRecordNotFoundKey), [WorkDefBindary.TableName, WorkDef.Key]));
  finally
    DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.WorkflowDefinitionLoadList(WorkDefs: TWorkflowDefinitions);
var
  DS: TDataset;
begin
  FParams.Clear;
  DS := OpenQuery(Format('SELECT * from %s', [WorkDefBindary.TableName]), FParams);
  try
    DS.First;
    WorkDefs.Clear;
    while not DS.EOF do
    begin
      WorkflowDefinitionLoadRecord(DS, WorkDefs.Add);
      DS.Next;
    end;
  finally
    //DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

function TCustomWorkflowDB.BlobFieldToString(AField: TField): string;
begin
  result := AField.AsString;
end;

procedure TCustomWorkflowDB.WorkflowDefinitionLoadRecord(DS: TDataset; WorkDef: TWorkflowDefinition);
begin
  with WorkDefBindary do
  begin
    DiagramFromString(WorkDef.Diagram, BlobFieldToString(DS.FieldByName(WorkflowField)));
    WorkDef.Name := DS.FieldByName(NameField).AsString;
    WorkDef.Key := DS.FieldByName(KeyField).AsString;
  end;
end;

procedure TCustomWorkflowDB.WorkflowDefinitionUpdate(WorkDef: TWorkflowDefinition);
var
  SQL: string;
begin
  With WorkDefBindary do
  begin
    if WorkDef.Key <> '' then
    begin
      SQL := Format('UPDATE %s SET '+
        '%s = :workflow, '+
        '%s = :name '+
        'WHERE %s = :id',
        [TableName, WorkflowField, NameField, KeyField]);
      FParams.Clear;
      FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkDef.Key);

      {Save diagram attachments - it must be BEFORE streaming the diagram, because SaveAttachments procedure
       sets the key value for each attachment item. The diagram should be streamed only after a key value
       is assigned and after DirtyContent property is set to false}
      SaveAttachments(WorkDef.Diagram, ptDefinition, WorkDef.Key);
      FParams.Clear;
      FParams.CreateParam(ftMemo, 'workflow', ptInput).AsMemo := DiagramToString(WorkDef.Diagram);
      FParams.CreateParam(ftString, 'name', ptInput).AsString := WorkDef.Name;
      FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkDef.Key);
      ExecuteQuery(SQL, FParams);

    end else
      wsDBError(Format(_str(SErrorUpdateEmptyKey), [TableName]));
  end;
end;

procedure TCustomWorkflowDB.WorkflowInstanceDelete(WorkIns: TWorkflowInstance);
var
  SQL: string;
begin
  if WorkIns.Key <> '' then
  begin
    SQL := Format('DELETE FROM %s WHERE %s = :id',
      [WorkInsBindary.TableName, WorkInsBindary.KeyField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkIns.Key);
    ExecuteQuery(SQL, FParams);

    TaskInstancesDeleteByWorkIns(WorkIns.Key);
  end else
    wsDBError(Format(_str(SErrorDeleteEmptyKey), ['workflow instance']));
end;

procedure TCustomWorkflowDB.WorkflowInstanceInsert(WorkIns: TWorkflowInstance; AWorkflowStudio: TCustomWorkflowStudio);
var
  SQL: string;
  CreatedOn: TDateTime;
begin
  CreatedOn := AWorkflowStudio.GetNow;
  with WorkInsBindary do
  begin
    // Insert workinstance unique key
    WorkIns.Key := IntToStr(FindNextID(TableName, KeyField));
    SQL := Format('INSERT INTO %s (%s, %s) Values (:id, :createdon)',
      [TableName, KeyField, CreatedOnField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkIns.Key);
    FParams.CreateParam(ftDateTime, 'createdon', ptInput).AsDateTime := CreatedOn;
    ExecuteQuery(SQL, FParams);

    // Save other workflow instance fields
    WorkflowInstanceUpdate(WorkIns);
  end;
end;

function TCustomWorkflowDB.WorkflowInstanceLoad(WorkIns: TWorkflowInstance): boolean;
var
  SQL: string;
  DS: TDataset;
begin
  result := false;
  if Trim(WorkIns.Key) = '' then
    exit;

  SQL := Format('SELECT * from %s WHERE %s = :id',
    [WorkInsBindary.TableName, WorkInsBindary.KeyField]);
  FParams.Clear;
  FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkIns.Key);
  DS := OpenQuery(SQL, FParams);
  try
    if not DS.IsEmpty then
    begin
      WorkflowInstanceLoadRecord(DS, WorkIns);
      result := true;
    end;
  finally
    DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.WorkflowInstanceLoadRecord(DS: TDataset; WorkIns: TWorkflowInstance);
begin
  with WorkInsBindary do
  begin
    ComponentFromString(WorkIns, DS.FieldByName(WorkflowField).AsString);
    WorkIns.Key := DS.FieldByName(KeyField).AsString;
    WorkIns.DefinitionKey := IntToStr(DS.FieldByName(WorkDefKeyField).AsInteger);
    WorkIns.NextRunTime := DS.FieldByName(NextRunTimeField).AsDateTime;
  end;
end;

procedure TCustomWorkflowDB.WorkflowInstanceUpdate(WorkIns: TWorkflowInstance);
var
  SQL: string;
begin
  with WorkInsBindary do
  begin
    if WorkIns.Key <> '' then
    begin
      SQL := Format('UPDATE %s SET '+
        '%s = :workflow, '+
        '%s = :workdefkey, '+
        '%s = :nextruntime '+
        'WHERE %s = :id',
        [TableName, WorkflowField, WorkDefKeyField, NextRunTimeField, KeyField]);
      FParams.Clear;
      FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkIns.Key);

      {Save diagram attachments - it must be BEFORE streaming the diagram, because SaveAttachments procedure
       sets the key value for each attachment item. The diagram should be streamed only after a key value
       is assigned and after DirtyContent property is set to false}
      SaveAttachments(WorkIns.Diagram, ptInstance, WorkIns.Key);
      FParams.Clear;
      FParams.CreateParam(ftMemo, 'workflow', ptInput).AsMemo := ComponentToString(WorkIns);
      FParams.CreateParam(ftInteger, 'workdefkey', ptInput).AsInteger := StrToInt(WorkIns.DefinitionKey);
      if WorkIns.NextRunTime > 0 then
        FParams.CreateParam(ftDateTime, 'nextruntime', ptInput).AsDateTime := WorkIns.NextRunTime
      else
        FParams.CreateParam(ftDateTime, 'nextruntime', ptInput).Clear;
      FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(WorkIns.Key);

      ExecuteQuery(SQL, FParams);
    end
    else
      wsDBError(Format(_str(SErrorUpdateEmptyKey), [TableName]));
  end;
end;

procedure TCustomWorkflowDB.SaveAttachments(ADiagram: TCustomWorkflowDiagram;
  AType: TAttachmentParentType; AWorkKey: string);
var
  c: integer;
  d: integer;
  AItem: TAttachmentItem;
  AKeys: string;
  SQL: string;
begin
  for c := 0 to ADiagram.Attachments.Count - 1 do           
    for d := 0 to ADiagram.Attachments[c].Items.Count - 1 do
    begin
      AItem := ADiagram.Attachments[c].Items[d];
      if AItem.DirtyContent then
      begin
        if AItem.Key = '' then
          AttachmentItemInsert(AItem, AType, AWorkKey)
        else
          AttachmentItemUpdate(AItem, AType, AWorkKey);

        {Very important to set DirtyContent to false, so that the content of the attachment
         will not be streamed together with the diagram}
        AItem.DirtyContent := false;
      end;
      if AKeys <> '' then AKeys := AKeys + ', ';
      AKeys := AKeys + AItem.Key;
    end;

  {Delete the non existant attachments}
  FParams.Clear;
  if AKeys = '' then
    AKeys := '-1';
  With AttachmentBindary do
    SQL := Format('Delete from %s Where %s = %s and %s = %d and not (%s in (%s))',
      [TableName, WorkKeyFIeld, AWorkKey, ObjectTypeField, Ord(AType), KeyField, AKeys]);
  ExecuteQuery(SQL, FParams);
end;

procedure TCustomWorkflowDB.AttachmentItemInsert(AItem: TAttachmentItem;
  AType: TAttachmentParentType; AWorkKey: string);
var
  SQL: string;
  CreatedOn: TDateTime;
begin
  CreatedOn := AItem.WorkflowStudio.GetNow;
  with AttachmentBindary do
  begin
    {Insert attachment unique key}
    AItem.Key := IntToStr(FindNextID(TableName, KeyField));
    SQL := Format('INSERT INTO %s (%s, %s) Values (:id, :createdon)',
      [TableName, KeyField, CreatedOnField]);
    FParams.Clear;
    FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(AItem.Key);
    FParams.CreateParam(ftDateTime, 'createdon', ptInput).AsDateTime := CreatedOn;
    ExecuteQuery(SQL, FParams);

    {Save other attachment fields}
    AttachmentItemUpdate(AItem, AType, AWorkKey);
  end;
end;

procedure TCustomWorkflowDB.AttachmentItemUpdate(AItem: TAttachmentItem; AType: TAttachmentParentType; AWorkKey: string);
var
  SQL: string;
begin
  with AttachmentBindary do
  begin
    if AItem.Key <> '' then
    begin
      SQL := Format('UPDATE %s SET '+
        '%s = :objecttype, '+
        '%s = :workkey, '+
        '%s = :content '+
        'WHERE %s = :id',
        [TableName, ObjectTypeField, WorkKeyField, ContentField, KeyField]);
      FParams.Clear;
      FParams.CreateParam(ftInteger, 'objecttype', ptInput).AsInteger := Ord(AType);
      FParams.CreateParam(ftInteger, 'workkey', ptInput).AsInteger := StrToInt(AWorkKey);
      SetBlobParam(FParams.CreateParam(ftBlob, 'content', ptInput), AItem.Content);
      FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(AItem.Key);

      ExecuteQuery(SQL, FParams);
    end else
      wsDBError(Format(_str(SErrorUpdateEmptyKey), [TableName]));
  end;
end;

function TCustomWorkflowDB.AttachmentItemLoad(AItem: TAttachmentItem): boolean;
var
  SQL: string;
  DS: TDataset;
begin
  result := false;
  if Trim(AItem.Key) = '' then
    exit;

  SQL := Format('SELECT * from %s WHERE %s = :id',
    [AttachmentBindary.TableName, AttachmentBindary.KeyField]);
  FParams.Clear;
  FParams.CreateParam(ftInteger, 'id', ptInput).AsInteger := StrToInt(AItem.Key);
  DS := OpenQuery(SQL, FParams);
  try
    if not DS.IsEmpty then
    begin
      AttachmentItemLoadRecord(DS, AItem);
      result := true;
    end;
  finally
    DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.AttachmentItemLoadRecord(DS: TDataset;
  AItem: TAttachmentItem);
begin
  With AttachmentBindary do
  begin
    AItem.Key := DS.FieldByName(KeyField).AsString;
    AItem.Content := DS.FieldByName(ContentField).AsString;
    AItem.DirtyContent := false;
  end;
end;

procedure TCustomWorkflowDB.SetBlobParam(AParam: TParam; BlobStream: string);
var
  SS: TStringStream;
begin
  SS := TStringStream.Create(BlobStream);
  try
    SS.Position := 0;
    AParam.LoadFromStream(SS, ftBlob);
  finally
    SS.Free;
  end;
end;

function TCustomWorkflowDB.MapOperationToStr(AOperation: TTaskLogOperation): string;
begin
  case AOperation of
    tlStatusChange: result := 'S';
    tlUpdate: result := 'U';
    tlCreate: result := 'C';
    tlInfo: result := 'I';
  else
    result := 'X';
  end;
end;

procedure TCustomWorkflowDB.LogTaskOperation(TaskIns: TTaskInstance; Operation: TTaskLogOperation;
  AWorkflowStudio: TCustomWorkflowStudio; Info1: string = ''; Info2: string = '');
var
  SQL: string;
begin
  with TaskLogBindary do
  begin
    {Insert tasklog unique key}
    SQL := Format('INSERT INTO %s (%s, %s, %s, %s, %s, %s) Values '+
      '(:taskinskey, :eventdate, :operation, :userid, :info, :info2)',
        [TableName, TaskInsKeyField, EventDateField, OperationField,
         UserIdField, InfoField, Info2Field]);
    FParams.Clear;
    FParams.CreateParam(ftinteger, 'taskinskey', ptInput).AsInteger := StrToInt(TaskIns.Key);
    FParams.CreateParam(ftDateTime, 'eventdate', ptInput).AsDateTime := AWorkflowStudio.GetNow;
    FParams.CreateParam(ftString, 'operation', ptInput).AsString := MapOperationToStr(Operation);
    FParams.CreateParam(ftString, 'userid', ptInput).AsString := AWorkflowStudio.UserManager.LoggedUserId;
    FParams.CreateParam(ftString, 'info', ptInput).AsString := Info1;
    FParams.CreateParam(ftString, 'info2', ptInput).AsString := Info2;
    ExecuteQuery(SQL, FParams);
  end;
end;

procedure TCustomWorkflowDB.TaskLogLoadList(ATaskInsKey: string; ALogItems: TTaskLogItems);
var
  SQL: string;
  DS: TDataset;
begin
  ALogItems.Clear;
  if ATaskInsKey <> '' then
  begin
    FParams.Clear;
    SQL := Format('SELECT * from %s where %s = :taskinskey order by %s',
      [TaskLogBindary.TableName, TaskLogBindary.TaskInsKeyField, TaskLogBindary.EventDateField]);

    FParams.Clear;
    FParams.CreateParam(ftInteger, 'taskinskey', ptInput).AsInteger := StrToInt(ATaskInsKey);

    DS := OpenQuery(SQL, FParams);
    try
      DS.First;
      while not DS.EOF do
      begin
        TaskLogLoadRecord(DS, ALogItems.Add);
        DS.Next;
      end;
    finally
      //DS.Close;
      if DestroyQueries then
        DS.Free;
    end;
  end;
end;

procedure TCustomWorkflowDB.TaskLogLoadRecord(DS: TDataset;
  LogItem: TTaskLogItem);
begin
  With TaskLogBindary do
  begin
    LogItem.Operation := MapStrToOperation(DS.FieldByName(OperationField).AsString);
    LogItem.TaskInsKey := DS.FieldByName(TaskInsKeyField).AsString;
    LogItem.EventDate := DS.FieldByName(EventDateField).AsDateTime;
    LogItem.UserId := DS.FieldByName(UserIdField).AsString;
    LogItem.Info := DS.FieldByName(InfoField).AsString;
    LogItem.Info2 := DS.FieldByName(Info2Field).AsString;
  end;
end;

function TCustomWorkflowDB.MapStrToOperation(AStr: string): TTaskLogOperation;
Var
  AChar: string;
begin
  result := tlNone;
  AChar := Uppercase(AStr);
  if AChar = 'S' then
    result := tlStatusChange
  else if AChar = 'U' then
    result := tlUpdate
  else if AChar = 'C' then
    result := tlCreate
  else if AChar = 'I' then
    result := tlInfo;
end;

function TCustomWorkflowDB.FindNextID(ATableName, AFieldName: string): integer;
var
  DS: TDataset;
begin
  FParams.Clear;
  DS := OpenQuery(
    Format('Select Max(%s) from %s', [AFieldName, ATableName]),
    FParams);
  try
    result := DS.Fields[0].AsInteger + 1;
  finally
    DS.Close;
    if DestroyQueries then
      DS.Free;
  end;
end;

procedure TCustomWorkflowDB.DoAssignSQLParams(Dataset: TDataset;
  AParams: TParams);
begin
end;

procedure TCustomWorkflowDB.ListPendingWorkflowInstances(AKeyList: TStrings; AToDate: TDateTime);
var
  sql: string;
  ds: TDataset;
begin
  sql := Format('SELECT %s FROM %s WHERE %s <= :todate',
    [WorkInsBindary.KeyField, WorkInsBindary.TableName, WorkInsBindary.NextRunTimeField]);
  FParams.Clear;
  FParams.CreateParam(ftDateTime, 'todate', ptInput).AsDateTime := AToDate;
  ds := OpenQuery(sql, FParams);
  try
    AKeyList.Clear;
    while not ds.EOF do
    begin
      AKeyList.Add(ds.Fields[0].AsString);
      ds.Next;
    end;
  finally
    ds.Close;
    if DestroyQueries then
      ds.Free;
  end;
end;

procedure TCustomWorkflowDB.ListWorkflowDefinitionNames(AList: TStrings);
var
  ds: TDataset;
begin
  FParams.Clear;
  ds := OpenQuery(Format('SELECT %s, %s FROM %s', [WorkDefBindary.KeyField, WorkDefBindary.NameField, WorkDefBindary.TableName]), FParams);
  try
    ds.First;
    AList.Clear;
    while not ds.EOF do
    begin
      {$WARNINGS OFF}
      AList.AddObject(ds.Fields[1].AsString, pointer(StrToIntDef(ds.Fields[0].AsString, 0)));
      {$WARNINGS ON}
      ds.Next;
    end;
  finally
    ds.Close;
    if DestroyQueries then
      ds.Free;
  end;
end;

procedure TCustomWorkflowDB.CheckStructure;
var
  ds: TDataset;
  paramList: TParams;
begin
  // check if database structure is up to date according to changes along workflow studio versions
  FStructureChecked := true;
  paramList := TParams.Create;
  try
    try
      // version 1.5
      ds := OpenQuery(Format('SELECT %s FROM %s WHERE 1=0', [WorkInsBindary.NextRunTimeField, WorkInsBindary.TableName]), paramList);
      ds.Close;
      if DestroyQueries then
        ds.Free;
    except
      on e: Exception do
        Application.MessageBox(PChar(Format(
          'Error checking database structure (%s). Make sure the database is updated with the required changes to the latest version.',
          [e.Message])), 'Workflow Studio', $10);
    end;
  finally
    paramList.Free;
  end;
end;

procedure TCustomWorkflowDB.LogTaskInfo(TaskIns: TTaskInstance; AWorkflowStudio: TCustomWorkflowStudio; AInfo, AInfo2: string);
begin
  LogTaskOperation(TaskIns, tlInfo, AWorkflowStudio, AInfo, AInfo2);
end;

{ TwsBindary }

constructor TwsBindary.Create(AWorkflowDB: TComponent);
begin
  inherited Create;
  FWorkflowDB := AWorkflowDB;
end;

destructor TwsBindary.Destroy;
begin
  FWorkflowDB := nil;
  inherited;
end;

{ TTaskInsBindary }

constructor TTaskInsBindary.Create(AWorkflowDB: TComponent);
begin
  inherited Create(AWorkflowDB);
  FTableName := 'wstaskinstance';
  KeyField := 'id';
  TaskField := 'task';
  UserIdField := 'userid';
  NameField := 'name';
  {CommentsField := 'comments';
  SubjectField := 'subject';
  DescriptionField := 'description';}
  WorkInsKeyField := 'workflowinstancekey';
  WorkDefKeyField := 'workflowdefinitionkey';
  CompletedField := 'completed';
  CreatedOnField := 'createdon';
  ModifiedOnField := 'modifiedon';
  ModifiedUserIdField := 'modifieduserid';
end;

{ TWorkDefBindary }

constructor TWorkDefBindary.Create(AWorkflowDB: TComponent);
begin
  inherited Create(AWorkflowDB);
  FTableName := 'wsworkflowdefinition';
  KeyField := 'id';
  WorkflowField := 'workflow';
  NameField := 'name';
end;

{ TWorkInsBindary }

constructor TWorkInsBindary.Create(AWorkflowDB: TComponent);
begin
  inherited Create(AWorkflowDB);
  FTableName := 'wsworkflowinstance';
  KeyField := 'id';
  WorkflowField := 'workflow';
  WorkDefKeyField := 'workflowdefinitionkey';
  CreatedOnField := 'createdon';
  NextRunTimeField := 'nextruntime';
end;

{ TAttachmentBindary }

constructor TAttachmentBindary.Create(AWorkflowDB: TComponent);
begin
  inherited Create(AWorkflowDB);
  FTableName := 'wsattachment';
  KeyField := 'id';
  ContentField := 'filecontent';
  WorkKeyField := 'workkey';
  CreatedOnField := 'createdon';
  ObjectTypeField := 'objecttype';
end;

{ TTaskLogBindary }

constructor TTaskLogBindary.Create(AWorkflowDB: TComponent);
begin
  inherited;
  FTableName := 'wstasklog';
  KeyField := 'id';
  TaskInsKeyField := 'taskinstancekey';
  EventDateField := 'eventdate';
  OperationField := 'operation';
  UserIdField := 'userid';
  InfoField := 'info';
  Info2Field := 'info2';
end;

end.

