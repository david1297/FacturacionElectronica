unit uSecurity;

interface

uses
  wsse;

  procedure DoSecurity(var aSecurity: Security;
                     const aUserName, aPassword, aNonce: string);

implementation

uses
  System.SysUtils;

procedure DoSecurity(var aSecurity: Security;
                   const aUserName, aPassword, aNonce: string);
begin
  aSecurity := Security.Create;
  aSecurity.MustUnderstand := False;
  aSecurity.UsernameToken := UsernameToken.Create;
  aSecurity.UsernameToken.Id := 'UsernameToken-8CF435EEA5F0BD372D14933943963991';
  aSecurity.UsernameToken.UserNAme := UserName.Create;
  aSecurity.UsernameToken.Username.Text := aUserName;
  aSecurity.UsernameToken.Password := Password.Create;
  aSecurity.UsernameToken.Password.Type_ :=
     'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
  aSecurity.UsernameToken.Password.Text := aPassword;
  aSecurity.UsernameToken.Nonce := Nonce.Create;
  aSecurity.UsernameToken.Nonce.EncodingType_ :=
     'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary';
  aSecurity.UsernameToken.Nonce.Text := aNonce;
  aSecurity.UsernameToken.Created := Created.Create;
  aSecurity.UsernameToken.Created.AsDateTime := Now;
end;

end.
