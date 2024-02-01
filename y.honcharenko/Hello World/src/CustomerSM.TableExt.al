tableextension 50107 "PTE Customer(SM)" extends Customer
{
    fields
    {
        field(50100; "Show Message"; Enum "Show Message")
        {
            Caption = 'Show Message';
            DataClassification = CustomerContent;
        }
    }
}
