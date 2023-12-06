table 50200 Course
{
    DataClassification = CustomerContent;
    Caption = 'Course';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(10; "Course Type"; Option)
        {
            Caption = 'Course Type';
            OptionMembers = " ","NAV";
            OptionCaption = ' ,Dynamics Navision';
        }
        field(20; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(30; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Resource."No.";
        }
        field(31; "Instructor Name"; Text[100])
        {
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
        myInt: Integer;

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