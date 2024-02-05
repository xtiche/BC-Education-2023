table 50150 "YAR Course Table"
{
    CaptionML = ENU = 'YAR Course Table', UKR = 'YAR Курси Таблиця';
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
            CaptionML = ENU = 'Course Type', UKR = 'Код лекції';
            OptionMembers = " ","Microsoft Dynamics NAV (Navision)","Microsoft Dynamics CRM","Microsoft Dynamics AX (Axapta)";
            OptionCaption = ' , Microsoft Dynamics NAV (Navision), Microsoft Dynamics CRM, Microsoft Dynamics AX (Axapta)';
        }
        field(20; Name; Text[50])
        {
            CaptionML = ENU = 'Name', UKR = 'Назва лекції';
        }
        field(30; "Instructor Code"; Code[20])
        {
            CaptionML = ENU = 'Instructor Code', UKR = 'Код лектора';
            TableRelation = Resource;
        }
        field(40; "Instructor Name"; Text[100])
        {
            CaptionML = ENU = 'Instructor Name', UKR = 'Імʼя лектора';
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
    fieldgroups
    {
        fieldgroup(DropDown; Code, Name)
        {

        }
    }
}
