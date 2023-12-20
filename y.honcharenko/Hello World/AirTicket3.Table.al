table 50149 "Air Ticket 2"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        int2: InStream;
    begin
        myInt := 1;
    end;

    trigger OnModify()
    begin
        myInt := 2;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}