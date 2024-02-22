codeunit 50104 "Import Exchange Rate - JSON" implements "IImport Exchange Rate"
{

    procedure GetCurrencyRate(var CurrencyExchangeRateTmp: Record "Currency Exchange Rate" temporary)
    var
        TempBlob: Codeunit "Temp Blob";
        HttpClient: HttpClient;
        HttpRespnse: HttpResponseMessage;
        InStr: InStream;
        JArray: JsonArray;
        I: Integer;
        JObject: JsonObject;
        JToken: JsonToken;
    begin
        HttpClient.Get('https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?json&date=20240101', HttpRespnse);

        TempBlob.CreateInStream(InStr, TextEncoding::UTF8);
        HttpRespnse.Content().ReadAs(InStr);

        if not JArray.ReadFrom(InStr) then
            Error('Wrong data type');

        for I := 0 to JArray.Count() - 1 do begin
            JArray.Get(I, JToken);

            if JToken.IsObject() then
                JObject := JToken.AsObject();

            JObject.Get('cc', JToken);
            CurrencyExchangeRateTmp."Currency Code" := CopyStr(JToken.AsValue().AsCode(), 1, MaxStrLen(CurrencyExchangeRateTmp."Currency Code"));

            JObject.Get('rate', JToken);
            CurrencyExchangeRateTmp."Relational Adjmt Exch Rate Amt" := JToken.AsValue().AsDecimal();
            CurrencyExchangeRateTmp.Insert();
        end;
    end;
}
