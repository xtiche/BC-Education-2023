table 50150 "YAR Course"
{
    Caption = 'YAR Resource';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(10; "Course Type"; Option)
        {
            //Caption = 'Course Type';
            CaptionML = ENU = 'Course Type', UKR = 'Тип напрямку';
            OptionMembers = " ","One","Two";
            OptionCaption = ' , Navision, Business Central';
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(30; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Resource;
        }
        field(40; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
