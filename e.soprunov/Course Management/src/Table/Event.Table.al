table 50102 "PTE Event"
{
    Caption = 'Event';
    DataClassification = CustomerContent;
    LookupPageId = "PTE Events";
    DrillDownPageId = "PTE Events";
    
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
        field(10; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = "PTE Course";

            trigger OnValidate()
            var 
                lCourse: Record "PTE Course";
            begin
                lCourse.Reset();
                lCourse.SetRange(lCourse.Code, rec."Course Code");
                if lCourse.FindFirst() then
                    rec."Instructor Code" := lCourse."Instructor Code";
            end;
            
        }
        field(11; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
            FieldClass = FlowField;
            CalcFormula = lookup("PTE Course".Name where("Code" = field("Course Code")));
            Editable = false;

        }
        field(20; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Resource;
        }
        field(21; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }
        field(30; "No. of Registered Participants"; Integer)
        {
            Caption = 'No. of Registered Participants';
            //FieldClass = FlowField;
            //CalcFormula = lookup(Course."Instructor Name" where("Code" = field("Course Code")));
            Editable = false;
        }
        field(40; "No. of Actual Participants"; Integer)
        {
            Caption = 'No. of Actual Participants';
            //FieldClass = FlowField;
            //CalcFormula = lookup(Course."Instructor Name" where("Code" = field("Course Code")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "No.","Event Date")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
    fieldgroup(DropDown; "No.", "Event Date", "Course Code", "Course Name"){}
    }
}
