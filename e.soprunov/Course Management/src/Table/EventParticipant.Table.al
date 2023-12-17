table 50103 "PTE Event Participant"
{
    Caption = 'PTE Event Participant';
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
        field(10; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
        }
        field(20; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            TableRelation = Contact where(Type = filter('Person'));

            trigger OnValidate()
            var
                lContact: Record Contact;
            begin
                lContact.Reset();
                lContact.SetRange(lContact."No.", rec."Participant Contact No.");
                if lContact.FindFirst() then
                    rec."Participant Name" := lContact.Name;
                rec."Participant Email" := lContact."E-Mail";
                rec."Participant Phone" := lContact."Phone No.";
            end;
        }
        field(21; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
        }
        field(22; "Participant Email"; Text[100])
        {
            Caption = 'Participant Email';
        }
        field(23; "Participant Phone"; Text[30])
        {
            Caption = 'Participant Phone';
        }
        field(30; "Registration Confirmed"; Boolean)
        {
            Caption = 'Registration Confirmed';
        }
        field(31; "Checked-in"; Boolean)
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
    fieldgroups
    {
        fieldgroup(DropDown; "Event No.", "Participant Contact No.", "Participant Name") { }
    }
}
