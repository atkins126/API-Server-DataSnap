unit wsADO;

{$I wsdefs.inc}

interface
uses SysUtils,DBClient, Classes, Dialogs,
  {$IFDEF DELPHI6_LVL} Variants, {$ENDIF}
  wsDB, DB, ADODB;

type
  TWorkflowADODB = class(TCustomWorkflowDB)
  private
    FConnection: TADOConnection;
    procedure SetConnection(const Value: TADOConnection);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    function DoCreateQuery(SQL: string): TDataset; override;
    procedure DoExecuteQuery(Dataset: TDataset); override;
    procedure DoAssignSQLParams(Dataset: TDataset; AParams: TParams); override;
    function BlobFieldToString(AField: TField): string; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Connection: TADOConnection read FConnection write SetConnection; 
  end;

procedure Register;

implementation
uses wsRes, ServerMethodsUnit1;

function Max(A, B: Integer): Integer;
begin
  if A > B then
    Result := A
  else
    Result := B;
end;

{ TWorkflowADODB }

constructor TWorkflowADODB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DestroyQueries := true;
end;

function TWorkflowADODB.BlobFieldToString(AField: TField): string;
var
  BlobField: TBlobField;
  StrStream: TStringStream;
  c: integer;
  IsOleStr: boolean;
  s: string;
begin
  if AField is TBlobField then
  begin
    BlobField := TBlobField(AField);
    StrStream := TStringStream.Create('');
    try
      BlobField.SaveToStream(StrStream);
      StrStream.Position := 0;
      s := StrStream.ReadString(StrStream.Size);
    finally
      StrStream.Free;
    end;
  end
  else
    s := AField.AsString;

  {workaround to "tell" if the string is an Ole string}
  IsOleStr := true;
  c := 2;
  while c < length(s) do
  begin
    if s[c] <> chr(0) then
    begin
      IsOleStr := false;
      break;
    end;
    c := c + 2;
  end;

  {remove #0 characters}
  if IsOleStr then
  begin
    result := '';
    for c := 1 to Length(s) do
      if Odd(c) then
        result := result + s[c];
  end
  else
    result := s;
end;

procedure TWorkflowADODB.DoExecuteQuery(Dataset: TDataset);
begin
 try
   TClientDataSet(Dataset).Execute;
 Except

 end;
end;

function TWorkflowADODB.DoCreateQuery(SQL: string): TDataset;
var
  Q: TClientDataSet;
  sm:ServerMethodsUnit1.Tsm;
begin
{  Q := TADOQuery.Create(nil);
  Q.Connection := FConnection;
  Q.Parameters.Clear;
  Q.SQL.Text := SQL;}

  result :=SM.GeraDS(SQL,'','D');
end;

procedure TWorkflowADODB.DoAssignSQLParams(Dataset: TDataset; AParams: TParams);
var
  Q: TClientDataSet;
  c: integer;
  AParam: TParam;
begin
try
  Q := TClientDataSet(Dataset);
//  Q.Parameters.ParseSQL(Q.SQL.Text, true);

  //Q.Parameters.Assign(Params);
  for c := 0 to Q.Params.Count - 1 do
  begin
    AParam := AParams.FindParam(Q.Params[c].Name);
    if AParam = nil then
    begin
      wsDBError(Format(_str(SErrorParamNotFound),
        [Q.Params[c].Name]));
    end;

    Q.Params[c].DataType := AParam.DataType;
//    Q.Params[c].  := pdInput;
    Q.Params[c].Value := AParam.Value;
    if Q.Params[c].DataType in [ftString] then
      Q.Params[c].Size := Max(1, Length(VarToSTr(Q.Params[c].Value)));
  end;
Except

end;
end;

procedure TWorkflowADODB.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  if (Operation = opRemove) and (AComponent = FConnection) then
    FConnection := nil;
  inherited Notification(AComponent, Operation);
end;

procedure TWorkflowADODB.SetConnection(const Value: TADOConnection);
begin
  if (FConnection <> Value) then
  begin
    FConnection := Value;
    if Value <> nil then
      Value.FreeNotification(Self);
  end;
end;

procedure Register;
begin
  RegisterComponents('Workflow Studio', [TWorkflowADODB]);
end;

end.
