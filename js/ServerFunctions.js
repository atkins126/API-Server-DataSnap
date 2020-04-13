// 
// Created by the DataSnap proxy generator.
// 22/06/2013 11:04:42
// 

function DSAdmin(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("DSAdmin",connectionInfo);

  /*
   * @return result - Type on server: string
   */
  this.GetPlatformName = function() {
    var returnObject = this.executor.executeMethod('GetPlatformName', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetPlatformName_URL = function() {
    return this.executor.getMethodURL("GetPlatformName", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: Boolean
   */
  this.ClearResources = function() {
    var returnObject = this.executor.executeMethod('ClearResources', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ClearResources_URL = function() {
    return this.executor.getMethodURL("ClearResources", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.FindPackages = function() {
    var returnObject = this.executor.executeMethod('FindPackages', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindPackages_URL = function() {
    return this.executor.getMethodURL("FindPackages", "GET", [], arguments[0])[0];
  };

  /*
   * @param PackageName [in] - Type on server: string
   * @param ClassPattern [in] - Type on server: string
   * @return result - Type on server: TDBXReader
   */
  this.FindClasses = function(PackageName, ClassPattern) {
    var returnObject = this.executor.executeMethod('FindClasses', "GET", [PackageName, ClassPattern], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.PackageName = PackageName;
        resultObject.ClassPattern = ClassPattern;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindClasses_URL = function(PackageName, ClassPattern) {
    return this.executor.getMethodURL("FindClasses", "GET", [PackageName, ClassPattern], arguments[2])[0];
  };

  /*
   * @param PackageName [in] - Type on server: string
   * @param ClassPattern [in] - Type on server: string
   * @param MethodPattern [in] - Type on server: string
   * @return result - Type on server: TDBXReader
   */
  this.FindMethods = function(PackageName, ClassPattern, MethodPattern) {
    var returnObject = this.executor.executeMethod('FindMethods', "GET", [PackageName, ClassPattern, MethodPattern], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.PackageName = PackageName;
        resultObject.ClassPattern = ClassPattern;
        resultObject.MethodPattern = MethodPattern;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindMethods_URL = function(PackageName, ClassPattern, MethodPattern) {
    return this.executor.getMethodURL("FindMethods", "GET", [PackageName, ClassPattern, MethodPattern], arguments[3])[0];
  };

  /*
   * @param ClassReader [in] - Type on server: TDBXReader
   */
  this.CreateServerClasses = function(ClassReader) {
    this.executor.executeMethod('"CreateServerClasses"', "POST", [ClassReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param ClassReader [in] - Type on server: TDBXReader
   */
  this.DropServerClasses = function(ClassReader) {
    this.executor.executeMethod('"DropServerClasses"', "POST", [ClassReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param MethodReader [in] - Type on server: TDBXReader
   */
  this.CreateServerMethods = function(MethodReader) {
    this.executor.executeMethod('"CreateServerMethods"', "POST", [MethodReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param MethodReader [in] - Type on server: TDBXReader
   */
  this.DropServerMethods = function(MethodReader) {
    this.executor.executeMethod('"DropServerMethods"', "POST", [MethodReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerClasses = function() {
    var returnObject = this.executor.executeMethod('GetServerClasses', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerClasses_URL = function() {
    return this.executor.getMethodURL("GetServerClasses", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TJSONArray
   */
  this.ListClasses = function() {
    var returnObject = this.executor.executeMethod('ListClasses', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ListClasses_URL = function() {
    return this.executor.getMethodURL("ListClasses", "GET", [], arguments[0])[0];
  };

  /*
   * @param ClassName [in] - Type on server: string
   * @return result - Type on server: TJSONObject
   */
  this.DescribeClass = function(ClassName) {
    var returnObject = this.executor.executeMethod('DescribeClass', "GET", [ClassName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClassName = ClassName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.DescribeClass_URL = function(ClassName) {
    return this.executor.getMethodURL("DescribeClass", "GET", [ClassName], arguments[1])[0];
  };

  /*
   * @param ClassName [in] - Type on server: string
   * @return result - Type on server: TJSONArray
   */
  this.ListMethods = function(ClassName) {
    var returnObject = this.executor.executeMethod('ListMethods', "GET", [ClassName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClassName = ClassName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ListMethods_URL = function(ClassName) {
    return this.executor.getMethodURL("ListMethods", "GET", [ClassName], arguments[1])[0];
  };

  /*
   * @param ServerMethodName [in] - Type on server: string
   * @return result - Type on server: TJSONObject
   */
  this.DescribeMethod = function(ServerMethodName) {
    var returnObject = this.executor.executeMethod('DescribeMethod', "GET", [ServerMethodName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ServerMethodName = ServerMethodName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.DescribeMethod_URL = function(ServerMethodName) {
    return this.executor.getMethodURL("DescribeMethod", "GET", [ServerMethodName], arguments[1])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerMethods = function() {
    var returnObject = this.executor.executeMethod('GetServerMethods', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerMethods_URL = function() {
    return this.executor.getMethodURL("GetServerMethods", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerMethodParameters = function() {
    var returnObject = this.executor.executeMethod('GetServerMethodParameters', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerMethodParameters_URL = function() {
    return this.executor.getMethodURL("GetServerMethodParameters", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetDatabaseConnectionProperties = function() {
    var returnObject = this.executor.executeMethod('GetDatabaseConnectionProperties', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetDatabaseConnectionProperties_URL = function() {
    return this.executor.getMethodURL("GetDatabaseConnectionProperties", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: string
   */
  this.GetDSServerName = function() {
    var returnObject = this.executor.executeMethod('GetDSServerName', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetDSServerName_URL = function() {
    return this.executor.getMethodURL("GetDSServerName", "GET", [], arguments[0])[0];
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param ClientManagerId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @param ResponseData [in] - Type on server: TJSONValue
   * @return result - Type on server: TJSONValue
   */
  this.ConsumeClientChannel = function(ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, ResponseData) {
    var returnObject = this.executor.executeMethod('"ConsumeClientChannel"', "POST", [ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, ResponseData], arguments[6], true, arguments[7], arguments[8]);
    if (arguments[6] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.ClientManagerId = ClientManagerId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.ResponseData = ResponseData;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param ClientManagerId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @param Timeout [in] - Type on server: Integer
   * @param ResponseData [in] - Type on server: TJSONValue
   * @return result - Type on server: TJSONValue
   */
  this.ConsumeClientChannelTimeout = function(ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, Timeout, ResponseData) {
    var returnObject = this.executor.executeMethod('"ConsumeClientChannelTimeout"', "POST", [ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, Timeout, ResponseData], arguments[7], true, arguments[8], arguments[9]);
    if (arguments[7] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.ClientManagerId = ClientManagerId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.Timeout = Timeout;
        resultObject.ResponseData = ResponseData;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.CloseClientChannel = function(ChannelId, SecurityToken) {
    var returnObject = this.executor.executeMethod('CloseClientChannel', "GET", [ChannelId, SecurityToken], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.CloseClientChannel_URL = function(ChannelId, SecurityToken) {
    return this.executor.getMethodURL("CloseClientChannel", "GET", [ChannelId, SecurityToken], arguments[2])[0];
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.RegisterClientCallbackServer = function(ChannelId, CallbackId, ChannelNames, SecurityToken) {
    var returnObject = this.executor.executeMethod('RegisterClientCallbackServer', "GET", [ChannelId, CallbackId, ChannelNames, SecurityToken], arguments[4], true, arguments[5], arguments[6]);
    if (arguments[4] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.RegisterClientCallbackServer_URL = function(ChannelId, CallbackId, ChannelNames, SecurityToken) {
    return this.executor.getMethodURL("RegisterClientCallbackServer", "GET", [ChannelId, CallbackId, ChannelNames, SecurityToken], arguments[4])[0];
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.UnregisterClientCallback = function(ChannelId, CallbackId, SecurityToken) {
    var returnObject = this.executor.executeMethod('UnregisterClientCallback', "GET", [ChannelId, CallbackId, SecurityToken], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.CallbackId = CallbackId;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.UnregisterClientCallback_URL = function(ChannelId, CallbackId, SecurityToken) {
    return this.executor.getMethodURL("UnregisterClientCallback", "GET", [ChannelId, CallbackId, SecurityToken], arguments[3])[0];
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param Msg [in] - Type on server: TJSONValue
   * @return result - Type on server: Boolean
   */
  this.BroadcastToChannel = function(ChannelName, Msg) {
    var returnObject = this.executor.executeMethod('"BroadcastToChannel"', "POST", [ChannelName, Msg], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.Msg = Msg;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param Msg [in] - Type on server: TObject
   * @return result - Type on server: Boolean
   */
  this.BroadcastObjectToChannel = function(ChannelName, Msg) {
    var returnObject = this.executor.executeMethod('"BroadcastObjectToChannel"', "POST", [ChannelName, Msg], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.Msg = Msg;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ClientId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param Msg [in] - Type on server: TJSONValue
   * @param Response [out] - Type on server: TJSONValue
   * @return result - Type on server: Boolean
   */
  this.NotifyCallback = function(ClientId, CallbackId, Msg) {
    var returnObject = this.executor.executeMethod('"NotifyCallback"', "POST", [ClientId, CallbackId, Msg], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClientId = ClientId;
        resultObject.CallbackId = CallbackId;
        resultObject.Msg = Msg;
        resultObject.Response = resultArray[0];
        resultObject.result = resultArray[1];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ClientId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param Msg [in] - Type on server: TObject
   * @param Response [out] - Type on server: TObject
   * @return result - Type on server: Boolean
   */
  this.NotifyObject = function(ClientId, CallbackId, Msg) {
    var returnObject = this.executor.executeMethod('"NotifyObject"', "POST", [ClientId, CallbackId, Msg], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClientId = ClientId;
        resultObject.CallbackId = CallbackId;
        resultObject.Msg = Msg;
        resultObject.Response = resultArray[0];
        resultObject.result = resultArray[1];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };
}

function TSM(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TSM",connectionInfo);

  /*
   * @param Sender [in] - Type on server: TObject
   */
  this.DSServerModuleCreate = function(Sender) {
    this.executor.executeMethod('"DSServerModuleCreate"', "POST", [Sender], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param comando [in] - Type on server: string
   * @param nome [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: TDataSet
   */
  this.GeraDS = function(comando, nome, conexao) {
    var returnObject = this.executor.executeMethod('GeraDS', "GET", [comando, nome, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.comando = comando;
        resultObject.nome = nome;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GeraDS_URL = function(comando, nome, conexao) {
    return this.executor.getMethodURL("GeraDS", "GET", [comando, nome, conexao], arguments[3])[0];
  };

  /*
   * @param nome [in] - Type on server: string
   */
  this.setAmbiente = function(nome) {
    this.executor.executeMethod('setAmbiente', "GET", [nome], arguments[1], false, arguments[2], arguments[3]);
  };

  this.setAmbiente_URL = function(nome) {
    return this.executor.getMethodURL("setAmbiente", "GET", [nome], arguments[1])[0];
  };

  /*
   * @param Comando [in] - Type on server: string
   * @param ado [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.GeraJSON = function(Comando, ado, conexao) {
    var returnObject = this.executor.executeMethod('GeraJSON', "GET", [Comando, ado, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Comando = Comando;
        resultObject.ado = ado;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GeraJSON_URL = function(Comando, ado, conexao) {
    return this.executor.getMethodURL("GeraJSON", "GET", [Comando, ado, conexao], arguments[3])[0];
  };

  /*
   * @param doc [in] - Type on server: string
   * @param tipo [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.validaDOC = function(doc, tipo) {
    var returnObject = this.executor.executeMethod('validaDOC', "GET", [doc, tipo], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.doc = doc;
        resultObject.tipo = tipo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.validaDOC_URL = function(doc, tipo) {
    return this.executor.getMethodURL("validaDOC", "GET", [doc, tipo], arguments[2])[0];
  };

  /*
   * @param nome [in] - Type on server: string
   * @param chave [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.runwkf = function(nome, chave) {
    var returnObject = this.executor.executeMethod('runwkf', "GET", [nome, chave], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.nome = nome;
        resultObject.chave = chave;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.runwkf_URL = function(nome, chave) {
    return this.executor.getMethodURL("runwkf", "GET", [nome, chave], arguments[2])[0];
  };

  /*
   * @param nome [in] - Type on server: string
   * @param cubo [in] - Type on server: string
   * @param filtro [in] - Type on server: string
   * @param r [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.GetCubo = function(nome, cubo, filtro, r) {
    var returnObject = this.executor.executeMethod('GetCubo', "GET", [nome, cubo, filtro, r], arguments[4], true, arguments[5], arguments[6]);
    if (arguments[4] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.nome = nome;
        resultObject.cubo = cubo;
        resultObject.filtro = filtro;
        resultObject.r = r;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetCubo_URL = function(nome, cubo, filtro, r) {
    return this.executor.getMethodURL("GetCubo", "GET", [nome, cubo, filtro, r], arguments[4])[0];
  };

  /*
   * @param pDataSet [in] - Type on server: TDataSet
   * @return result - Type on server: string
   */
  this.DataSetToJsonTxt = function(pDataSet) {
    var returnObject = this.executor.executeMethod('"DataSetToJsonTxt"', "POST", [pDataSet], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.pDataSet = pDataSet;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param relatorio [in] - Type on server: string
   * @param layout [in] - Type on server: string
   * @param filtro [in] - Type on server: string
   * @param tabela [in] - Type on server: string
   * @param exporta [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.ProcREL = function(relatorio, layout, filtro, tabela, exporta) {
    var returnObject = this.executor.executeMethod('ProcREL', "GET", [relatorio, layout, filtro, tabela, exporta], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.relatorio = relatorio;
        resultObject.layout = layout;
        resultObject.filtro = filtro;
        resultObject.tabela = tabela;
        resultObject.exporta = exporta;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ProcREL_URL = function(relatorio, layout, filtro, tabela, exporta) {
    return this.executor.getMethodURL("ProcREL", "GET", [relatorio, layout, filtro, tabela, exporta], arguments[5])[0];
  };

  /*
   * @param Value [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.EchoString = function(Value) {
    var returnObject = this.executor.executeMethod('EchoString', "GET", [Value], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Value = Value;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.EchoString_URL = function(Value) {
    return this.executor.getMethodURL("EchoString", "GET", [Value], arguments[1])[0];
  };

  /*
   * @param aSequence [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.GenerateID = function(aSequence, conexao) {
    var returnObject = this.executor.executeMethod('GenerateID', "GET", [aSequence, conexao], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.aSequence = aSequence;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GenerateID_URL = function(aSequence, conexao) {
    return this.executor.getMethodURL("GenerateID", "GET", [aSequence, conexao], arguments[2])[0];
  };

  /*
   * @param Comando [in] - Type on server: string
   * @param ado [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.GeraSQL = function(Comando, ado, conexao) {
    var returnObject = this.executor.executeMethod('GeraSQL', "GET", [Comando, ado, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Comando = Comando;
        resultObject.ado = ado;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GeraSQL_URL = function(Comando, ado, conexao) {
    return this.executor.getMethodURL("GeraSQL", "GET", [Comando, ado, conexao], arguments[3])[0];
  };

  /*
   * @param Comando [in] - Type on server: string
   * @param ado [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.ExecSQL = function(Comando, ado, conexao) {
    var returnObject = this.executor.executeMethod('ExecSQL', "GET", [Comando, ado, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Comando = Comando;
        resultObject.ado = ado;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ExecSQL_URL = function(Comando, ado, conexao) {
    return this.executor.getMethodURL("ExecSQL", "GET", [Comando, ado, conexao], arguments[3])[0];
  };

  /*
   * @return result - Type on server: string
   */
  this.GetLicenca = function() {
    var returnObject = this.executor.executeMethod('GetLicenca', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetLicenca_URL = function() {
    return this.executor.getMethodURL("GetLicenca", "GET", [], arguments[0])[0];
  };

  /*
   * @param Comando [in] - Type on server: string
   * @param ado [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.GeraSQL2 = function(Comando, ado, conexao) {
    var returnObject = this.executor.executeMethod('GeraSQL2', "GET", [Comando, ado, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Comando = Comando;
        resultObject.ado = ado;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GeraSQL2_URL = function(Comando, ado, conexao) {
    return this.executor.getMethodURL("GeraSQL2", "GET", [Comando, ado, conexao], arguments[3])[0];
  };

  /*
   * @param Comando [in] - Type on server: string
   * @param ado [in] - Type on server: string
   * @param conexao [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.ExecSQL2 = function(Comando, ado, conexao) {
    var returnObject = this.executor.executeMethod('ExecSQL2', "GET", [Comando, ado, conexao], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Comando = Comando;
        resultObject.ado = ado;
        resultObject.conexao = conexao;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ExecSQL2_URL = function(Comando, ado, conexao) {
    return this.executor.getMethodURL("ExecSQL2", "GET", [Comando, ado, conexao], arguments[3])[0];
  };

  this.Terminate = function() {
    this.executor.executeMethod('Terminate', "GET", [], arguments[0], false, arguments[1], arguments[2]);
  };

  this.Terminate_URL = function() {
    return this.executor.getMethodURL("Terminate", "GET", [], arguments[0])[0];
  };

  /*
   * @param codigo [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param fil [in] - Type on server: string
   * @param uf [in] - Type on server: string
   * @param produto [in] - Type on server: string
   * @param tipo [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.ProcTES = function(codigo, emp, fil, uf, produto, tipo) {
    var returnObject = this.executor.executeMethod('ProcTES', "GET", [codigo, emp, fil, uf, produto, tipo], arguments[6], true, arguments[7], arguments[8]);
    if (arguments[6] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.codigo = codigo;
        resultObject.emp = emp;
        resultObject.fil = fil;
        resultObject.uf = uf;
        resultObject.produto = produto;
        resultObject.tipo = tipo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ProcTES_URL = function(codigo, emp, fil, uf, produto, tipo) {
    return this.executor.getMethodURL("ProcTES", "GET", [codigo, emp, fil, uf, produto, tipo], arguments[6])[0];
  };

  /*
   * @param codigo [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param fil [in] - Type on server: string
   * @param produto [in] - Type on server: string
   * @param tipo [in] - Type on server: string
   * @param cf [in] - Type on server: string
   * @param cod [in] - Type on server: string
   * @param loja [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.ProcTES2 = function(codigo, emp, fil, produto, tipo, cf, cod, loja) {
    var returnObject = this.executor.executeMethod('ProcTES2', "GET", [codigo, emp, fil, produto, tipo, cf, cod, loja], arguments[8], true, arguments[9], arguments[10]);
    if (arguments[8] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.codigo = codigo;
        resultObject.emp = emp;
        resultObject.fil = fil;
        resultObject.produto = produto;
        resultObject.tipo = tipo;
        resultObject.cf = cf;
        resultObject.cod = cod;
        resultObject.loja = loja;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ProcTES2_URL = function(codigo, emp, fil, produto, tipo, cf, cod, loja) {
    return this.executor.getMethodURL("ProcTES2", "GET", [codigo, emp, fil, produto, tipo, cf, cod, loja], arguments[8])[0];
  };

  /*
   * @param emp [in] - Type on server: string
   * @param fil [in] - Type on server: string
   * @param prod [in] - Type on server: string
   * @param Qtd [in] - Type on server: Double
   * @return result - Type on server: Double
   */
  this.segun = function(emp, fil, prod, Qtd) {
    var returnObject = this.executor.executeMethod('segun', "GET", [emp, fil, prod, Qtd], arguments[4], true, arguments[5], arguments[6]);
    if (arguments[4] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.emp = emp;
        resultObject.fil = fil;
        resultObject.prod = prod;
        resultObject.Qtd = Qtd;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.segun_URL = function(emp, fil, prod, Qtd) {
    return this.executor.getMethodURL("segun", "GET", [emp, fil, prod, Qtd], arguments[4])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.Strut = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('Strut', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Strut_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("Strut", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutD = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutD', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutD_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutD", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutCM = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutCM', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutCM_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutCM", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutEst = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutEst', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutEst_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutEst", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutSTD = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutSTD', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutSTD_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutSTD", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutOP = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutOP', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutOP_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutOP", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param prod [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param filial [in] - Type on server: string
   * @param fator [in] - Type on server: string
   * @param data [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.StrutQ = function(prod, emp, filial, fator, data) {
    var returnObject = this.executor.executeMethod('StrutQ', "GET", [prod, emp, filial, fator, data], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.prod = prod;
        resultObject.emp = emp;
        resultObject.filial = filial;
        resultObject.fator = fator;
        resultObject.data = data;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.StrutQ_URL = function(prod, emp, filial, fator, data) {
    return this.executor.getMethodURL("StrutQ", "GET", [prod, emp, filial, fator, data], arguments[5])[0];
  };

  /*
   * @param scr [in] - Type on server: string
   * @param obj [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.ExecScript = function(scr, obj) {
    var returnObject = this.executor.executeMethod('ExecScript', "GET", [scr, obj], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.scr = scr;
        resultObject.obj = obj;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ExecScript_URL = function(scr, obj) {
    return this.executor.getMethodURL("ExecScript", "GET", [scr, obj], arguments[2])[0];
  };

  /*
   * @param tabela [in] - Type on server: string
   * @param campo [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.AsString = function(tabela, campo) {
    var returnObject = this.executor.executeMethod('AsString', "GET", [tabela, campo], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.tabela = tabela;
        resultObject.campo = campo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.AsString_URL = function(tabela, campo) {
    return this.executor.getMethodURL("AsString", "GET", [tabela, campo], arguments[2])[0];
  };

  /*
   * @param tabela [in] - Type on server: string
   * @param campo [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.AsInteger = function(tabela, campo) {
    var returnObject = this.executor.executeMethod('AsInteger', "GET", [tabela, campo], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.tabela = tabela;
        resultObject.campo = campo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.AsInteger_URL = function(tabela, campo) {
    return this.executor.getMethodURL("AsInteger", "GET", [tabela, campo], arguments[2])[0];
  };

  /*
   * @param tabela [in] - Type on server: string
   * @param campo [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.AsFloat = function(tabela, campo) {
    var returnObject = this.executor.executeMethod('AsFloat', "GET", [tabela, campo], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.tabela = tabela;
        resultObject.campo = campo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.AsFloat_URL = function(tabela, campo) {
    return this.executor.getMethodURL("AsFloat", "GET", [tabela, campo], arguments[2])[0];
  };

  /*
   * @param tabela [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.TableEOF = function(tabela) {
    var returnObject = this.executor.executeMethod('TableEOF', "GET", [tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.tabela = tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.TableEOF_URL = function(tabela) {
    return this.executor.getMethodURL("TableEOF", "GET", [tabela], arguments[1])[0];
  };

  /*
   * @param tabela [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.TableBOF = function(tabela) {
    var returnObject = this.executor.executeMethod('TableBOF', "GET", [tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.tabela = tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.TableBOF_URL = function(tabela) {
    return this.executor.getMethodURL("TableBOF", "GET", [tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.MoveNext = function(Tabela) {
    var returnObject = this.executor.executeMethod('MoveNext', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.MoveNext_URL = function(Tabela) {
    return this.executor.getMethodURL("MoveNext", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.MovePrior = function(Tabela) {
    var returnObject = this.executor.executeMethod('MovePrior', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.MovePrior_URL = function(Tabela) {
    return this.executor.getMethodURL("MovePrior", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.MoveLast = function(Tabela) {
    var returnObject = this.executor.executeMethod('MoveLast', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.MoveLast_URL = function(Tabela) {
    return this.executor.getMethodURL("MoveLast", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Double
   */
  this.MoveFirst = function(Tabela) {
    var returnObject = this.executor.executeMethod('MoveFirst', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.MoveFirst_URL = function(Tabela) {
    return this.executor.getMethodURL("MoveFirst", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.RecNO = function(Tabela) {
    var returnObject = this.executor.executeMethod('RecNO', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.RecNO_URL = function(Tabela) {
    return this.executor.getMethodURL("RecNO", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param Tabela [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.RecOrdCount = function(Tabela) {
    var returnObject = this.executor.executeMethod('RecOrdCount', "GET", [Tabela], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Tabela = Tabela;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.RecOrdCount_URL = function(Tabela) {
    return this.executor.getMethodURL("RecOrdCount", "GET", [Tabela], arguments[1])[0];
  };

  /*
   * @param datas [in] - Type on server: string
   * @param filtro [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.FiltroSQL = function(datas, filtro) {
    var returnObject = this.executor.executeMethod('FiltroSQL', "GET", [datas, filtro], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.datas = datas;
        resultObject.filtro = filtro;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FiltroSQL_URL = function(datas, filtro) {
    return this.executor.getMethodURL("FiltroSQL", "GET", [datas, filtro], arguments[2])[0];
  };

  /*
   * @param datas [in] - Type on server: string
   */
  this.RemoveFiltro = function(datas) {
    this.executor.executeMethod('RemoveFiltro', "GET", [datas], arguments[1], false, arguments[2], arguments[3]);
  };

  this.RemoveFiltro_URL = function(datas) {
    return this.executor.getMethodURL("RemoveFiltro", "GET", [datas], arguments[1])[0];
  };

  /*
   * @param conta [in] - Type on server: string
   * @param para [in] - Type on server: string
   * @param assunto [in] - Type on server: string
   * @param msg [in] - Type on server: string
   * @param anexo [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.SendMail = function(conta, para, assunto, msg, anexo) {
    var returnObject = this.executor.executeMethod('SendMail', "GET", [conta, para, assunto, msg, anexo], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.conta = conta;
        resultObject.para = para;
        resultObject.assunto = assunto;
        resultObject.msg = msg;
        resultObject.anexo = anexo;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.SendMail_URL = function(conta, para, assunto, msg, anexo) {
    return this.executor.getMethodURL("SendMail", "GET", [conta, para, assunto, msg, anexo], arguments[5])[0];
  };

  /*
   * @param codigo [in] - Type on server: string
   * @param datas [in] - Type on server: string
   * @param emp [in] - Type on server: string
   * @param fili [in] - Type on server: string
   * @param dataset [in] - Type on server: string
   * @param valor [in] - Type on server: Double
   * @return result - Type on server: TADMemTable
   */
  this.ProcessaFP = function(codigo, datas, emp, fili, dataset, valor) {
    var returnObject = this.executor.executeMethod('ProcessaFP', "GET", [codigo, datas, emp, fili, dataset, valor], arguments[6], true, arguments[7], arguments[8]);
    if (arguments[6] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.codigo = codigo;
        resultObject.datas = datas;
        resultObject.emp = emp;
        resultObject.fili = fili;
        resultObject.dataset = dataset;
        resultObject.valor = valor;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ProcessaFP_URL = function(codigo, datas, emp, fili, dataset, valor) {
    return this.executor.getMethodURL("ProcessaFP", "GET", [codigo, datas, emp, fili, dataset, valor], arguments[6])[0];
  };

  /*
   * @param arquivo [in] - Type on server: string
   * @param nome [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.LoadFile = function(arquivo, nome) {
    var returnObject = this.executor.executeMethod('LoadFile', "GET", [arquivo, nome], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.arquivo = arquivo;
        resultObject.nome = nome;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.LoadFile_URL = function(arquivo, nome) {
    return this.executor.getMethodURL("LoadFile", "GET", [arquivo, nome], arguments[2])[0];
  };

  /*
   * @param nome [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.CreateFile = function(nome) {
    var returnObject = this.executor.executeMethod('CreateFile', "GET", [nome], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.nome = nome;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.CreateFile_URL = function(nome) {
    return this.executor.getMethodURL("CreateFile", "GET", [nome], arguments[1])[0];
  };

  /*
   * @param arquivo [in] - Type on server: string
   * @param nome [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.SaveFile = function(arquivo, nome) {
    var returnObject = this.executor.executeMethod('SaveFile', "GET", [arquivo, nome], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.arquivo = arquivo;
        resultObject.nome = nome;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.SaveFile_URL = function(arquivo, nome) {
    return this.executor.getMethodURL("SaveFile", "GET", [arquivo, nome], arguments[2])[0];
  };

  /*
   * @param nome [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.deleteF = function(nome) {
    var returnObject = this.executor.executeMethod('deleteF', "GET", [nome], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.nome = nome;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.deleteF_URL = function(nome) {
    return this.executor.getMethodURL("deleteF", "GET", [nome], arguments[1])[0];
  };

  /*
   * @param valor [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.Form = function(valor) {
    var returnObject = this.executor.executeMethod('Form', "GET", [valor], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.valor = valor;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Form_URL = function(valor) {
    return this.executor.getMethodURL("Form", "GET", [valor], arguments[1])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   */
  this.NewCube = function(valor1, valor2) {
    this.executor.executeMethod('NewCube', "GET", [valor1, valor2], arguments[2], false, arguments[3], arguments[4]);
  };

  this.NewCube_URL = function(valor1, valor2) {
    return this.executor.getMethodURL("NewCube", "GET", [valor1, valor2], arguments[2])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: string
   * @param valor4 [in] - Type on server: string
   * @param valor5 [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.MaxRECNO = function(valor1, valor2, valor3, valor4, valor5) {
    var returnObject = this.executor.executeMethod('MaxRECNO', "GET", [valor1, valor2, valor3, valor4, valor5], arguments[5], true, arguments[6], arguments[7]);
    if (arguments[5] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.valor1 = valor1;
        resultObject.valor2 = valor2;
        resultObject.valor3 = valor3;
        resultObject.valor4 = valor4;
        resultObject.valor5 = valor5;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.MaxRECNO_URL = function(valor1, valor2, valor3, valor4, valor5) {
    return this.executor.getMethodURL("MaxRECNO", "GET", [valor1, valor2, valor3, valor4, valor5], arguments[5])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: string
   */
  this.ComandoInserir = function(valor1, valor2, valor3) {
    this.executor.executeMethod('ComandoInserir', "GET", [valor1, valor2, valor3], arguments[3], false, arguments[4], arguments[5]);
  };

  this.ComandoInserir_URL = function(valor1, valor2, valor3) {
    return this.executor.getMethodURL("ComandoInserir", "GET", [valor1, valor2, valor3], arguments[3])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   */
  this.ComandoInserir2 = function(valor1) {
    this.executor.executeMethod('ComandoInserir2', "GET", [valor1], arguments[1], false, arguments[2], arguments[3]);
  };

  this.ComandoInserir2_URL = function(valor1) {
    return this.executor.getMethodURL("ComandoInserir2", "GET", [valor1], arguments[1])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   */
  this.ComandoGravar = function(valor1) {
    this.executor.executeMethod('ComandoGravar', "GET", [valor1], arguments[1], false, arguments[2], arguments[3]);
  };

  this.ComandoGravar_URL = function(valor1) {
    return this.executor.getMethodURL("ComandoGravar", "GET", [valor1], arguments[1])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: string
   */
  this.SetString = function(valor1, valor2, valor3) {
    this.executor.executeMethod('SetString', "GET", [valor1, valor2, valor3], arguments[3], false, arguments[4], arguments[5]);
  };

  this.SetString_URL = function(valor1, valor2, valor3) {
    return this.executor.getMethodURL("SetString", "GET", [valor1, valor2, valor3], arguments[3])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: Integer
   */
  this.SetInteger = function(valor1, valor2, valor3) {
    this.executor.executeMethod('SetInteger', "GET", [valor1, valor2, valor3], arguments[3], false, arguments[4], arguments[5]);
  };

  this.SetInteger_URL = function(valor1, valor2, valor3) {
    return this.executor.getMethodURL("SetInteger", "GET", [valor1, valor2, valor3], arguments[3])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: Double
   */
  this.SetFloat = function(valor1, valor2, valor3) {
    this.executor.executeMethod('SetFloat', "GET", [valor1, valor2, valor3], arguments[3], false, arguments[4], arguments[5]);
  };

  this.SetFloat_URL = function(valor1, valor2, valor3) {
    return this.executor.getMethodURL("SetFloat", "GET", [valor1, valor2, valor3], arguments[3])[0];
  };

  /*
   * @param valor1 [in] - Type on server: Double
   * @param valor2 [in] - Type on server: Double
   * @return result - Type on server: Double
   */
  this.Divide = function(valor1, valor2) {
    var returnObject = this.executor.executeMethod('Divide', "GET", [valor1, valor2], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.valor1 = valor1;
        resultObject.valor2 = valor2;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Divide_URL = function(valor1, valor2) {
    return this.executor.getMethodURL("Divide", "GET", [valor1, valor2], arguments[2])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   */
  this.TableEdit = function(valor1) {
    this.executor.executeMethod('TableEdit', "GET", [valor1], arguments[1], false, arguments[2], arguments[3]);
  };

  this.TableEdit_URL = function(valor1) {
    return this.executor.getMethodURL("TableEdit", "GET", [valor1], arguments[1])[0];
  };

  /*
   * @param Value [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.ReverseString = function(Value) {
    var returnObject = this.executor.executeMethod('ReverseString', "GET", [Value], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Value = Value;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ReverseString_URL = function(Value) {
    return this.executor.getMethodURL("ReverseString", "GET", [Value], arguments[1])[0];
  };

  /*
   * @param tipo [in] - Type on server: string
   * @param campo [in] - Type on server: string
   * @param tabela [in] - Type on server: string
   * @param tamanho [in] - Type on server: string
   */
  this.addField = function(tipo, campo, tabela, tamanho) {
    this.executor.executeMethod('addField', "GET", [tipo, campo, tabela, tamanho], arguments[4], false, arguments[5], arguments[6]);
  };

  this.addField_URL = function(tipo, campo, tabela, tamanho) {
    return this.executor.getMethodURL("addField", "GET", [tipo, campo, tabela, tamanho], arguments[4])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   */
  this.CreateTMP = function(valor1) {
    this.executor.executeMethod('CreateTMP', "GET", [valor1], arguments[1], false, arguments[2], arguments[3]);
  };

  this.CreateTMP_URL = function(valor1) {
    return this.executor.getMethodURL("CreateTMP", "GET", [valor1], arguments[1])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   */
  this.OPenTMP = function(valor1) {
    this.executor.executeMethod('OPenTMP', "GET", [valor1], arguments[1], false, arguments[2], arguments[3]);
  };

  this.OPenTMP_URL = function(valor1) {
    return this.executor.getMethodURL("OPenTMP", "GET", [valor1], arguments[1])[0];
  };

  /*
   * @param param [in] - Type on server: string
   */
  this.DropTMP = function(param) {
    this.executor.executeMethod('DropTMP', "GET", [param], arguments[1], false, arguments[2], arguments[3]);
  };

  this.DropTMP_URL = function(param) {
    return this.executor.getMethodURL("DropTMP", "GET", [param], arguments[1])[0];
  };

  /*
   * @return result - Type on server: string
   */
  this.WebFields = function() {
    var returnObject = this.executor.executeMethod('WebFields', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.WebFields_URL = function() {
    return this.executor.getMethodURL("WebFields", "GET", [], arguments[0])[0];
  };

  /*
   * @param valor1 [in] - Type on server: string
   * @param valor2 [in] - Type on server: string
   * @param valor3 [in] - Type on server: string
   * @return result - Type on server: Integer
   */
  this.Locate = function(valor1, valor2, valor3) {
    var returnObject = this.executor.executeMethod('Locate', "GET", [valor1, valor2, valor3], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.valor1 = valor1;
        resultObject.valor2 = valor2;
        resultObject.valor3 = valor3;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Locate_URL = function(valor1, valor2, valor3) {
    return this.executor.getMethodURL("Locate", "GET", [valor1, valor2, valor3], arguments[3])[0];
  };

  /*
   * @param Valor1 [in] - Type on server: Double
   * @param valor2 [in] - Type on server: Double
   * @return result - Type on server: Double
   */
  this.Potencia = function(Valor1, valor2) {
    var returnObject = this.executor.executeMethod('Potencia', "GET", [Valor1, valor2], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Valor1 = Valor1;
        resultObject.valor2 = valor2;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Potencia_URL = function(Valor1, valor2) {
    return this.executor.getMethodURL("Potencia", "GET", [Valor1, valor2], arguments[2])[0];
  };

  /*
   * @param Valor1 [in] - Type on server: Double
   * @param valor2 [in] - Type on server: Integer
   * @return result - Type on server: Double
   */
  this.NoRound = function(Valor1, valor2) {
    var returnObject = this.executor.executeMethod('NoRound', "GET", [Valor1, valor2], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Valor1 = Valor1;
        resultObject.valor2 = valor2;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.NoRound_URL = function(Valor1, valor2) {
    return this.executor.getMethodURL("NoRound", "GET", [Valor1, valor2], arguments[2])[0];
  };

  /*
   * @param fonte [in] - Type on server: string
   * @param sec [in] - Type on server: Integer
   * @return result - Type on server: string
   */
  this.Execute = function(fonte, sec) {
    var returnObject = this.executor.executeMethod('Execute', "GET", [fonte, sec], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.fonte = fonte;
        resultObject.sec = sec;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.Execute_URL = function(fonte, sec) {
    return this.executor.getMethodURL("Execute", "GET", [fonte, sec], arguments[2])[0];
  };
}

var JSProxyClassList = {
  "DSAdmin": ["GetPlatformName","ClearResources","FindPackages","FindClasses","FindMethods","CreateServerClasses","DropServerClasses","CreateServerMethods","DropServerMethods","GetServerClasses","ListClasses","DescribeClass","ListMethods","DescribeMethod","GetServerMethods","GetServerMethodParameters","GetDatabaseConnectionProperties","GetDSServerName","ConsumeClientChannel","ConsumeClientChannelTimeout","CloseClientChannel","RegisterClientCallbackServer","UnregisterClientCallback","BroadcastToChannel","BroadcastObjectToChannel","NotifyCallback","NotifyObject"],
  "TSM": ["DSServerModuleCreate","GeraDS","setAmbiente","GeraJSON","validaDOC","runwkf","GetCubo","DataSetToJsonTxt","ProcREL","EchoString","GenerateID","GeraSQL","ExecSQL","GetLicenca","GeraSQL2","ExecSQL2","Terminate","ProcTES","ProcTES2","segun","Strut","StrutD","StrutCM","StrutEst","StrutSTD","StrutOP","StrutQ","ExecScript","AsString","AsInteger","AsFloat","TableEOF","TableBOF","MoveNext","MovePrior","MoveLast","MoveFirst","RecNO","RecOrdCount","FiltroSQL","RemoveFiltro","SendMail","ProcessaFP","LoadFile","CreateFile","SaveFile","deleteF","Form","NewCube","MaxRECNO","ComandoInserir","ComandoInserir2","ComandoGravar","SetString","SetInteger","SetFloat","Divide","TableEdit","ReverseString","addField","CreateTMP","OPenTMP","DropTMP","WebFields","Locate","Potencia","NoRound","Execute"]
};

