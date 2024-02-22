codeunit 50105 "Import Exchange Rate - XML" implements "IImport Exchange Rate"
{

    procedure GetCurrencyRate(var CurrencyExchangeRateTmp: Record "Currency Exchange Rate" temporary)
    var
        TempXMLBuffer: Record "XML Buffer" temporary;
        TempXMLBuffer2: Record "XML Buffer" temporary;
        TempBlob: Codeunit "Temp Blob";
        HttpClient: HttpClient;
        HttpRespnse: HttpResponseMessage;
        InStr: InStream;

    begin
        HttpClient.Get('https://bank.gov.ua/NBUStatService/v1/statdirectory/exchange?&date=20240101', HttpRespnse);

        TempBlob.CreateInStream(InStr, TextEncoding::UTF8);
        HttpRespnse.Content().ReadAs(InStr);

        TempXMLBuffer.LoadFromStream(InStr);

        //Page.Run(Page::"XML Buffer View", TempXMLBuffer);
        //TempXMLBuffer.SetRange(Path, '/exchange/currency');

        /*
        // Search unique elements in array
        TempXMLBuffer.SetCurrentKey(Path);

        if TempXMLBuffer.FindSet() then
            repeat
                TempXMLBuffer.SetRange(Path, TempXMLBuffer.Path);
                TempXMLBuffer.FindLast();
                // do some logic

                TempXMLBuffer.SetRange(Path);
            until TempXMLBuffer.Next() = 0
        */
        if TempXMLBuffer.FindSet() then
            repeat
                case TempXMLBuffer.Path of
                    '/exchange/currency':
                        begin
                            if CurrencyExchangeRateTmp."Currency Code" <> '' then
                                CurrencyExchangeRateTmp.Insert();
                            CurrencyExchangeRateTmp.Init();
                        end;
                    '/exchange/currency/cc':
                        CurrencyExchangeRateTmp."Currency Code" := CopyStr(TempXMLBuffer.Value, 1, MaxStrLen(CurrencyExchangeRateTmp."Currency Code"));
                    '/exchange/currency/rate':
                        begin
                            Evaluate(CurrencyExchangeRateTmp."Adjustment Exch. Rate Amount", TempXMLBuffer.Value);
                            Evaluate(CurrencyExchangeRateTmp."Adjustment Exch. Rate Amount", TempXMLBuffer.Value, 9);
                            //CurrencyExchangeRateTmp."Adjustment Exch. Rate Amount" :=
                        end;
                    '/exchange/currency/exchangedate':
                        begin
                            // 01-01-2024
                            EvaluateDate(CurrencyExchangeRateTmp."Starting Date", TempXMLBuffer.Value);
                            CurrencyExchangeRateTmp."Starting Date" := EvaluateDate(TempXMLBuffer.Value);
                        end;
                end;

            until TempXMLBuffer.Next() = 0
    end;

    local procedure EvaluateDate(var DateValue: Date; DateTextValue: Text)
    var
        Day, Month, Year : Integer;
    begin
        Evaluate(Day, CopyStr(DateTextValue, 1, 2));
        Evaluate(Month, CopyStr(DateTextValue, 4, 2));
        Evaluate(Year, CopyStr(DateTextValue, 7));

        DateValue := DMY2Date(Day, Month, Year);
    end;

    local procedure EvaluateDate(DateTextValue: Text) DateValue: Date;
    var
        Day, Month, Year : Integer;
    begin
        Evaluate(Day, CopyStr(DateTextValue, 1, 2));
        Evaluate(Month, CopyStr(DateTextValue, 4, 2));
        Evaluate(Year, CopyStr(DateTextValue, 7));

        DateValue := DMY2Date(Day, Month, Year);
    end;

}
