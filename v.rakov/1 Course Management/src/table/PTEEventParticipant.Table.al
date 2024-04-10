table 50202 "PTE Event Participant"
{
    Caption = 'Event Participant';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Event No."; Code[20])
        {
            Caption = 'Event No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
        }
        field(4; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            TableRelation = Contact."No." where(Type = const(Person));
            trigger OnValidate()
            begin
                Rec.CalcFields("Participant Name");
                Rec.CalcFields("Participant Email");
                Rec.CalcFields("Participant Phone");
            end;
        }
        field(5; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact.Name where("No." = field("Participant Contact No.")));
            Editable = false;
        }
        field(6; "Participant Email"; Text[100])
        {
            Caption = 'Participant Email';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact."E-Mail" where("No." = field("Participant Contact No.")));
            Editable = false;
        }
        field(7; "Participant Phone"; Text[30])
        {
            Caption = 'Participant Phone';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact."Phone No." where("No." = field("Participant Contact No.")));
            Editable = false;
        }
        field(8; "Registration Confirmed"; Boolean)
        {
            Caption = 'Registration Confirmed';
        }
        field(9; "Checked-in"; Boolean)
        {
            Caption = 'Checked-in';
        }
    }
    keys
    {
        key(PK; "Event No.", "Line No.")
        {
            Clustered = true;
        }

    }
}
