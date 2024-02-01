enum 50100 "Show Message" implements "QR Code Manager"
{

    value(0; mess1)
    {
        Caption = 'mess1';
        Implementation = "QR Code Manager" = HelloWorld;
    }
    value(1; mess2)
    {
        Caption = 'mess2';
        Implementation = "QR Code Manager" = Quit;
    }
}
