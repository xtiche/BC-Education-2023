table 50150 "YAR Course Table"
{
    CaptionML = ENU = 'YAR Course Table', UKR = 'YAR Курси Таблиця';
    DataClassification = CustomerContent;
    DrillDownPageId = "YAR Course Page Card";
    LookupPageId = "YAR Course Page Card";
    DataCaptionFields = Code, Name;

    fields
    {
        field(1; "Code"; Code[20])
        {
            CaptionML = ENU = 'Code', UKR = 'Код';
        }
        field(10; "Course Type"; Option)
        {
            // Назва заголовка поля
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
            // Назва заголовка поля
            CaptionML = ENU = 'Instructor Code', UKR = 'Код лектора';
            // Це поле пов'язане з таблицею "Resource"
            TableRelation = Resource;
        }
        field(40; "Instructor Name"; Text[100])
        {
            CaptionML = ENU = 'Instructor Name', UKR = 'Імʼя лектора';
            // Це поле є розрахунковим полем (flow field), це означає, що його значення не зберігається в базі даних, а обчислюється динамічно на основі інших полів
            FieldClass = FlowField;
            // Знайти ім'я зі списку ресурсів ("Resource.Name"), де нумер ресурсу ("No.") відповідає коду лектора ("Instructor Code") у поточному записі
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            // Це поле є нередактуваним, тобто користувачі не можуть безпосередньо змінювати його значення
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
