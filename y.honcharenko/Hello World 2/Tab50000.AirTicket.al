table 50149 "Air Ticket"
{
    Caption = 'Air Ticket';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'PK';
        }
        field(2; "Entry No. 3"; Integer)
        {
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
