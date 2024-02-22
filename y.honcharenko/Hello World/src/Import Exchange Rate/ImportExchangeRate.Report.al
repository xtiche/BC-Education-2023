report 50101 "Import Exchange Rate"
{
    ApplicationArea = All;
    Caption = 'Import Exchange Rate';
    UsageCategory = Tasks;
    ProcessingOnly = true;

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    Caption = 'Options';
                    field("Import Implementation"; ImportImplementation)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }


    trigger OnPostReport()
    var
        TempCurrencyExchangeRate: Record "Currency Exchange Rate" temporary;
    begin
        IImportExchangeRate := ImportImplementation;
        IShowMesssage := ImportImplementation;
        //IShowMesssage.ShowMessage();

        IImportExchangeRate.GetCurrencyRate(TempCurrencyExchangeRate);
        Page.Run(Page::"Currency Exchange Rates", TempCurrencyExchangeRate);
    end;

    var
        IImportExchangeRate: Interface "IImport Exchange Rate";
        IShowMesssage: Interface "IShow Messsage";
        ImportImplementation: Enum "Import Exchange Rate";


}
