table 50102 "PTE Event"
{
    CaptionML = ENU = 'Event', UKR = 'Події';
    DataClassification = CustomerContent;
    LookupPageId = "PTE Events";
    DrillDownPageId = "PTE Events";
    DataCaptionFields = "No.", "Course Name";

    fields
    {
        field(1; "No."; Code[20])
        {
            CaptionML = ENU = 'No.', UKR ='Номер';
            Editable = true;

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Event Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Event Date"; Date)
        {
            CaptionML = ENU = 'Event Date', UKR = 'Дата події';
 
        }
        field(10; "Course Code"; Code[20])
        {
            CaptionML = ENU = 'Course Code', UKR = 'Код лекції';
            TableRelation = "PTE Course";

            trigger OnValidate()
            var
                lCourse: Record "PTE Course";
            begin
                lCourse.Reset();
                lCourse.SetRange(lCourse.Code, rec."Course Code");
                if  lCourse.FindFirst() then
                    rec."Instructor Code" := lCourse."Instructor Code";
            end;

        }
        field(11; "Course Name"; Text[50])
        {
            CaptionML = ENU = 'Course Name', UKR = 'Назва лекції';
            FieldClass = FlowField;
            CalcFormula = lookup("PTE Course".Name where("Code" = field("Course Code")));
            Editable = false;

        }
        field(20; "Instructor Code"; Code[20])
        {
            CaptionML = ENU = 'Instructor Code', UKR = 'Код лектора';
            TableRelation = Resource;
        }
        field(21; "Instructor Name"; Text[100])
        {
            CaptionML = ENU = 'Instructor Name', UKR = 'Імя лектора';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }
        field(30; "No. of Registered Participants"; Integer)
        {
            CaptionML = ENU = 'No. of Registered Participants', UKR = 'Кількість зареєстрованих';
            FieldClass = FlowField;
            CalcFormula = count("PTE Event Participant" where("Event No." = field("No."), "Registration Confirmed" = const(true)));
            Editable = false;
        }
        field(40; "No. of Actual Participants"; Integer)
        {
            CaptionML = ENU = 'No. of Actual Participants', UKR = 'Кількість учасників';
            FieldClass = FlowField;
            CalcFormula = count("PTE Event Participant" where("Event No." = field("No."), "Checked-in" = const(true)));
            Editable = false;
        }
         field(50; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "No.", "Event Date")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Event Date", "Course Code", "Course Name") {}
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
    begin
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Event Nos.");
            NoSeriesMgt.InitSeries(SalesSetup."Event Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;      
}
