tableextension 50104 "PTE Sales Invoice Header" extends "Sales Invoice Header"
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
