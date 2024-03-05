enum 50100 "Show Message" implements "IShow Messsage"
{

    value(0; mess1)
    {
        Caption = 'mess1';
        Implementation = "IShow Messsage" = "Show Message - HW";
    }
    value(1; mess2)
    {
        Caption = 'mess2';
        Implementation = "IShow Messsage" = "Show Message - Quit";
    }
}
