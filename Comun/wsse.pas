unit wsse;

interface

uses
  SysUtils, InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF = $0080;

type
  tTimestampFault = (wsu_MessageExpired);

  Id = type WideString;
  Created = class(TXSDateTime)
  end;

  AttributedString = class(TRemotable)
  private
    FText: WideString;
    FId: Id;
    FId_Specified: boolean;
    procedure SetId(Index: Integer; const AId: Id);
    function Id_Specified(Index: Integer): boolean;
  published
    property Text: WideString Index (IS_TEXT) read FText write FText;
    property Id: Id Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
  end;

  Nonce = class(AttributedString)
  private
    FEncodingType_: WideString;
    FEncodingType__Specified: boolean;
    procedure SetEncodingType_(Index: Integer; const AWideString: WideString);
    function EncodingType__Specified(Index:Integer):boolean;
  published
    property EncodingType_: WideString Index (IS_ATTR or IS_OPTN) read FEncodingType_ write SetEncodingType_ stored FEncodingType__Specified;
  end;

  UserName = class(AttributedString)
  private
    FType_: WideString;
    FType__Specified: boolean;
    procedure SetType_(Index: Integer; const AWideString: WideString);
    function Type__Specified(Index:Integer):boolean;
  published
    property Type_: WideString Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
  end;

  Password = class(AttributedString)
  private
    FType_: WideString;
    FType__Specified: boolean;
    procedure SetType_(Index: Integer; const AWideString: WideString);
    function Type__Specified(Index:Integer):boolean;
  published
    property Type_: WideString Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
  end;

  UsernameToken = class(TRemotable)
  private
    FUserName: UserName;
    FCreated: Created;
    FPassword: Password;
    FNonce: Nonce;
    FId: Id;
  public
    destructor Destroy; override;
  published
    property Username: UserName read FUsername write FUsername;
    property Password: Password read FPassword write FPassword;
    property Nonce: Nonce read FNonce write FNonce;
    property Created:Created index (IS_REF) read FCreated write FCreated;
//    property Created: Created read FCreated write FCreated;
    property Id: Id Index (IS_ATTR) read FId write FId;
  end;

  Security = class(TSOAPHeader)
  private
    FUserNameToken: UserNameToken;
  public
    destructor Destroy; override;
  published
    property UsernameToken: UsernameToken index (IS_REF) read FUserNameToken write FUserNameToken;
  end;

implementation

destructor UsernameToken.Destroy;
begin
  FreeAndNil(FPassword);
  inherited Destroy;
end;

procedure AttributedString.SetId(Index:Integer; const AId:Id);
begin
  FId := AId;
  FId_Specified := True;
end;

function AttributedString.Id_Specified(Index:Integer):boolean;
begin
  Result := FId_Specified;
end;

function Nonce.EncodingType__Specified(Index: Integer): boolean;
begin
  Result := FEncodingType__Specified;
end;

procedure Nonce.SetEncodingType_(Index: Integer; const AWideString: WideString);
begin
  FEncodingType_ := AWideString;
  FEncodingType__Specified := True;
end;

procedure UserName.SetType_(Index: Integer; const AWideString: WideString);
begin
  FType_ := AWideString;
  FType__Specified := True;
end;

function UserName.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure Password.SetType_(Index:Integer; const AWideString:WideString);
begin
  FType_ := AWideString;
  FType__Specified := True;
end;

function Password.Type__Specified(Index:Integer):boolean;
begin
  Result := FType__Specified;
end;

destructor Security.Destroy;
begin
  FreeAndNIL(FUserNameToken);
  inherited Destroy;
end;

const
  NS_SECEXT='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd';
  NS_UTILITY='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd';

initialization
//  RemClassRegistry.RegisterXSClass(Security, NS_SECEXT, 'Security');
//  RemClassRegistry.RegisterXSClass(UsernameToken, NS_SECEXT,'UsernameToken');
//  RemClassRegistry.RegisterXSClass(Username, NS_SECEXT, 'Username');
//  RemClassRegistry.RegisterXSClass(Password, NS_SECEXT, 'Password');
//  RemClassRegistry.RegisterXSClass(Nonce, NS_SECEXT, 'Nonce');
//  RemClassRegistry.RegisterXSClass(Created, NS_UTILITY, 'Created');
//  RemClassRegistry.RegisterXSInfo(TypeInfo(Id), NS_UTILITY, 'Id');
//  RemClassRegistry.RegisterXSClass(AttributedString, NS_SECEXT, 'AttributedString');
//  RemClassRegistry.RegisterExternalPropName(TypeInfo (Password), 'Type_','Type');
//  RemClassRegistry.RegisterExternalPropName(TypeInfo (Nonce), 'EncodingType_','EncodingType');

  RemClassRegistry.RegisterXSClass(Security, NS_SECEXT, 'Security');
  RemClassRegistry.RegisterXSClass(Created, NS_UTILITY, 'Created');
  RemClassRegistry.RegisterXSClass(UsernameToken, NS_SECEXT, 'UsernameToken');
  RemClassRegistry.RegisterXSClass(Username, NS_SECEXT, 'Username');
  RemClassRegistry.RegisterXSClass(Password, NS_SECEXT, 'Password');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Nonce), NS_SECEXT, 'Nonce');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tTimestampFault), NS_UTILITY, 'tTimestampFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(tTimestampFault), 'wsu_MessageExpired', 'wsu:MessageExpired');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Id), NS_UTILITY, 'Id');
  RemClassRegistry.RegisterXSClass(AttributedString, NS_SECEXT, 'AttributedString');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Password), 'Type_', 'Type');
  RemClassRegistry.RegisterExternalPropName(TypeInfo (Nonce), 'EncodingType_','EncodingType');
end.
