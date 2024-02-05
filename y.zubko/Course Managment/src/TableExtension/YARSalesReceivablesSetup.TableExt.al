tableextension 50152 "YAR Sales Receivables Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50150; "Event Nos."; Code[20])
        {
            Caption = 'Event Nos.';
            TableRelation = "No. Series";
            DataClassification = CustomerContent;
        }
    }
}
