tableextension 50103 "PTE Sales Header" extends "Sales Header"
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
