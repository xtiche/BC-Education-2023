tableextension 50105 "PTE Cust. Ledger Entry" extends "Cust. Ledger Entry"
{
    fields
    {
        field(50100; "Internet Order No."; Text[50])
        {
            Caption = 'Internet Order No.';
            DataClassification = ToBeClassified;
        }
    }
}
