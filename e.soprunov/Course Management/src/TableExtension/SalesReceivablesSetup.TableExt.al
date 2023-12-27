tableextension 50102 "PTE Sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50101; "Event Nos."; Code[20])
        {
            Caption = 'Event Nos.';
            TableRelation = "No. Series";
            DataClassification = CustomerContent;
        }
    }
}
