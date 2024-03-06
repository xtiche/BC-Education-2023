codeunit 50106 "Web Serivce Example"
{
    internal procedure SendRequestToGetMaxValue(Value1: Integer; Value2: Integer)
    var
        HttpClient: HttpClient;
        HttpContent: HttpContent;
        Headers: HttpHeaders;
        Response: HttpResponseMessage;
        ResponseText, url : Text;
    begin
        url := 'http://pspls:7047/BC/WS/DEV%20SOTCH/Codeunit/WebServiceExample';
        HttpClient.SetBaseAddress('http://pspls:7047/BC/WS/DEV%20SOTCH/Codeunit/WebServiceExample');
        AddHttpBasicAuthHeader('admin', '123qweasD', HttpClient);

        HttpContent.WriteFrom(
            '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="urn:microsoft-dynamics-schemas/codeunit/WebServiceExample">' +
                '<soapenv:Header/>' +
                '<soapenv:Body>' +
                    '<web:Max>' +
                        '<web:var1>' + Format(Value1) + '</web:var1>' +
                        '<web:var2>' + Format(Value2) + '</web:var2>' +
                    '</web:Max>' +
                '</soapenv:Body> ' +
            '</soapenv:Envelope>');

        HttpContent.GetHeaders(Headers);
        Headers.Add('SOAPAction', 'Max');

        HttpClient.Post(url, HttpContent, Response);

        if Response.IsSuccessStatusCode then begin
            Response.Content().ReadAs(ResponseText);
            Message(ResponseText);
        end else
            HandlelError(Response);
    end;

    local procedure AddHttpBasicAuthHeader(UserName: Text[50]; Password: Text[50]; var HttpClient: HttpClient);
    var
        Base64Convert: Codeunit "Base64 Convert";
        AuthString: Text;
    begin
        AuthString := StrSubstNo('%1:%2', UserName, Password);
        AuthString := Base64Convert.ToBase64(AuthString);
        AuthString := StrSubstNo('Basic %1', AuthString);
        HttpClient.DefaultRequestHeaders().Add('Authorization', AuthString);
    end;

    local procedure HandlelError(var Response: HttpResponseMessage)
    var
        content: HttpContent;
        errorText: Text;
    begin
        content := Response.Content();
        content.ReadAs(errorText);
        if errorText <> '' then
            Error(errorText)
        else
            Error(Response.ReasonPhrase);
    end;

    procedure Max(Var1: Integer; var2: Integer): Integer
    begin
        if Var1 > var2 then
            exit(Var1)
        else
            exit(var2);
    end;
}
