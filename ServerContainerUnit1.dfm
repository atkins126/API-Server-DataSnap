object ServerContainer1: TServerContainer1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 346
  Width = 472
  object DSServer1: TDSServer
    ChannelResponseTimeout = 18000
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Port = 212
    Server = DSServer1
    BufferKBSize = 64
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    Left = 96
    Top = 73
  end
  object DSHTTPService1: TDSHTTPService
    HttpPort = 8889
    DSContext = '/'
    Server = DSServer1
    DSPort = 212
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    Left = 96
    Top = 135
  end
  object DSAuthenticationManager1: TDSAuthenticationManager
    OnUserAuthenticate = DSAuthenticationManager1UserAuthenticate
    OnUserAuthorize = DSAuthenticationManager1UserAuthorize
    Roles = <>
    Left = 96
    Top = 197
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 96
    Top = 259
  end
  object DSHTTPServiceProxyDispatcher1: TDSHTTPServiceProxyDispatcher
    Service = DSHTTPService1
    WebFileExtensions = <
      item
        MimeType = 'application/x-zip-compressed'
        Extensions = 'zip'
      end>
    WebDirectories = <
      item
        DirectoryAction = dirInclude
        DirectoryMask = '\proxy\*'
      end
      item
        DirectoryAction = dirExclude
        DirectoryMask = '\proxy\*\*'
      end>
    DSProxyGenerator = DSProxyGenerator1
    Left = 328
    Top = 144
  end
  object DSProxyGenerator1: TDSProxyGenerator
    MetaDataProvider = DSServerMetaDataProvider1
    TargetUnitName = 'ServerFunctions.js'
    TargetDirectory = 'js'
    Writer = 'Java Script REST'
    Left = 320
    Top = 80
  end
  object DSServerMetaDataProvider1: TDSServerMetaDataProvider
    Server = DSServer1
    Left = 320
    Top = 24
  end
  object DSHTTPServiceFileDispatcher1: TDSHTTPServiceFileDispatcher
    Service = DSHTTPService1
    WebFileExtensions = <
      item
        MimeType = 'text/css'
        Extensions = 'css'
      end
      item
        MimeType = 'text/html'
        Extensions = 'html;htm'
      end
      item
        MimeType = 'text/javascript'
        Extensions = 'js'
      end
      item
        MimeType = 'image/jpeg'
        Extensions = 'jpeg;jpg'
      end
      item
        MimeType = 'image/x-png'
        Extensions = 'png'
      end>
    WebDirectories = <
      item
        DirectoryAction = dirInclude
        DirectoryMask = '*'
      end
      item
        DirectoryAction = dirExclude
        DirectoryMask = '\templates\*'
      end>
    Left = 328
    Top = 200
  end
  object FDConnection1: TFDConnection
    Left = 328
    Top = 257
  end
end
