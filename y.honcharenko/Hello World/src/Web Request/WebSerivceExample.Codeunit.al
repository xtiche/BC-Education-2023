codeunit 50106 "Web Serivce Example"
{
    internal procedure SendPostRequest(Value1: Integer; Value2: Integer)
    var
        HttpClient: HttpClient;
        HttpContent: HttpContent;
        Headers: HttpHeaders;
        Response: HttpResponseMessage;
        url: Text;
    begin
        url := 'http://pspls:7047/BC/WS/DEV%20SOTCH/Codeunit/WebServiceExample';
        HttpClient.SetBaseAddress('http://pspls:7047/BC/WS/DEV%20SOTCH/Codeunit/WebServiceExample');
        HttpContent.WriteFrom(
            '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="urn:microsoft-dynamics-schemas/codeunit/WebServiceExample">' +
                '<soapenv:Header/>' +
                '<soapenv:Body>' +
                    '<web:Max>' +
                        '<web:var1>' + format(Value1) + '</web:var1>' +
                        '<web:var2>' + format(Value2) + '</web:var2>' +
                    '</web:Max>' +
                '</soapenv:Body> ' +
            '</soapenv:Envelope>');

        HttpContent.GetHeaders(Headers);
        if Headers.Remove('Content-Type') then
            Headers.Add('Content-Type', 'application/json');

        HttpClient.Post(url, HttpContent, Response);
    end;

    procedure Max(Var1: Integer; var2: Integer): Integer
    begin
        if Var1 > var2 then
            exit(Var1)
        else
            exit(var2);
    end;
}
