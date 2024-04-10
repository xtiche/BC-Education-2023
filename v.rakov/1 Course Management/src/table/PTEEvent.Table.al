table 50201 "PTE Event"
{
    Caption = 'Event';
    DataClassification = CustomerContent;
    DrillDownPageId = "PTE Events";
    LookupPageId = "PTE Events";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Event Date"; Date)
        {
            Caption = 'Event Date';
        }
        field(3; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = "PTE Course".Code;
            trigger OnValidate()
            var
                mCourse: Record "PTE Course";
            begin
                Rec.CalcFields("Course Name");
                if mCourse.Get("Course Code") then begin
                    Rec."Instructor Code" := mCourse."Instructor code";
                    Rec.CalcFields("Instructor Name");
                end;
            end;
        }
        field(4; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
            FieldClass = FlowField;
            CalcFormula = lookup("PTE Course".Name where(Code = field("Course Code")));
            Editable = false;
        }
        field(5; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Resource."No.";
            trigger OnValidate()
            begin
                Rec.CalcFields("Instructor Name");
            end;
        }
        field(6; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor code")));
            Editable = false;
        }
        field(7; "No. of Registered Participants"; Integer)
        {
            Caption = 'No. of Registered Participants';
            FieldClass = FlowField;
            CalcFormula = count("PTE Event Participant" where("Event No." = field("No."),
                                                                "Registration Confirmed" = const(true)));
            Editable = false;
        }
        field(8; "No. of Actual Participants"; Integer)
        {
            Caption = 'No. of Actual Participants';
            FieldClass = FlowField;
            CalcFormula = count("PTE Event Participant" where("Event No." = field("No."),
                                                                "Checked-in" = const(true)));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key1; "Event Date")
        {

        }
    }
}
