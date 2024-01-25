table 50101 "PTE Course"
{
    DataClassification = CustomerContent;
    //Caption = 'Course';
    CaptionML = ENU = 'Course', UKR = 'Курси';
    DrillDownPageId = "PTE Courses";
    LookupPageId = "PTE Courses";
    DataCaptionFields = Code, Name;

    fields
    {
        field(1; Code; Code[20])
        {
            //Caption = 'Code';
            CaptionML = ENU = 'Code', UKR = 'Код лекції';
            NotBlank = true;
        }
        field(10; "Course Type"; Option)
        {
            //Caption = 'Course Type';
            CaptionML = ENU = 'Course Type', UKR = 'Тип напрямку';
            OptionMembers = " ","NAV","BC";
            OptionCaption = ' , Navision, Business Central';

        }
        field(20; "Name"; Text[50])
        {
            //Caption = 'Name';
            CaptionML = ENU = 'Name', UKR = 'Назва лекції';

        }
        field(30; "Instructor Code"; Code[20])
        {
            //Caption = 'Instructor Code';
            CaptionML = ENU = 'Instructor Code', UKR = 'Код лектора';
            TableRelation = Resource;
        }
        field(31; "Instructor Name"; Text[100])
        {
            //Caption = 'Instructor Name';
            CaptionML = ENU = 'Instructor Name', UKR = 'Імʼя лектора';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code, Name) { }
    }

    var
    //   myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}