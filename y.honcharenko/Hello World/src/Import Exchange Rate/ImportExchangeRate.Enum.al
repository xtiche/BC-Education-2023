enum 50101 "Import Exchange Rate" implements "IImport Exchange Rate", "IShow Messsage"
{

    value(0; " ")
    {
        Caption = ' ';
        Implementation = "IImport Exchange Rate" = "Import Exchange Rate - Default", "IShow Messsage" = "Show Message - Quit";
    }

    value(1; "NBU - json")
    {
        Caption = 'NBU - json';
        Implementation = "IImport Exchange Rate" = "Import Exchange Rate - JSON", "IShow Messsage" = "Show Message - Quit";
    }
    value(2; "NBU - xml")
    {
        Caption = 'NBU - xml';
        Implementation = "IImport Exchange Rate" = "Import Exchange Rate - XML", "IShow Messsage" = "Show Message - Quit";
    }
}
