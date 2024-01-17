table 50200 Cource
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';

        }
        field(10; "Course Type"; Option)
        {
            Caption = 'Course Type';
            OptionMembers = " ","NAVi";
            OptionCaption = ' , "DYNamics NAVision';
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(30; "Instructor code"; Code[20])
        {
            Caption = 'Instructor code';
            TableRelation = Resource."No.";
        }
        field(31; "Instructor Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor code")));
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
    //myInt: Integer;

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