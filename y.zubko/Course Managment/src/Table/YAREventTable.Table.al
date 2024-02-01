table 50151 "YAR Event Table"
{
    CaptionML = ENU = 'Event', UKR = 'Події';
    DataClassification = CustomerContent;

    // властивість таблиці, яка визначає сторінку, яка відображається, коли користувач робить запит на значення з цієї таблиці. Властивість LookupPageId зазвичай використовується для створення випадаючого списку, який дозволяє користувачам вибирати значення з іншої таблиці
    // LookupPageId = "YAR Events";

    // властивість поля дозволяє налаштувати перехід на спеціально призначену сторінку, коли ви клацаєте на поле
    // DrillDownPageId = "YAR Events";

    // Властивість DataCaptionFields грає важливу роль у налаштуванні заголовків для сторінок та форм у Navision. Вона визначає, які поля відображатимуться та в якому порядку будуть формувати заголовок.
    DataCaptionFields = "No.", "Course Name";

    fields
    {
        field(1; "No."; Code[20])
        {
            CaptionML = ENU = 'No.', UKR = 'Нумер';
            Editable = true;
        }
        field(2; "Event Date"; Date)
        {
            CaptionML = ENU = 'Event Date', UKR = 'Дата події';
        }
        field(10; "Course Code"; Code[20])
        {
            CaptionML = ENU = 'Course Code', UKR = 'Код лекції';
            TableRelation = "YAR Course Table";

            trigger OnValidate()
            var
                CourseCode: Record "YAR Course Table";
            begin
                CourseCode.Reset();
                CourseCode.SetRange(CourseCode.Code, rec."Course Code");
                if CourseCode.FindFirst() then
                    rec."Course Code" := CourseCode."Instructor Code";
            end;
        }
        field(11; "Course Name"; Text[50])
        {
            CaptionML = ENU = 'Course Name', UKR = 'Назва лекції';
            FieldClass = FlowField;
            CalcFormula = lookup("YAR Course Table".Name where("Code" = field("Course Code")));
            Editable = false;
        }
        field(20; "Instructor Code"; Code[20])
        {
            CaptionML = ENU = 'Instructor Code', UKR = 'Код лектора';
            TableRelation = Resource;
        }
        field(21; "Instructor Name"; Text[100])
        {
            CaptionML = ENU = 'Instructor Name', UKR = 'Імʼя лектора';

            //  це поле вказує на те, що воно є динамічним і його значення обчислюється на основі формули, а не зберігається безпосередньо в базі даних
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field("Instructor Code")));
            Editable = false;
        }
        field(30; "No. of Registered Participants"; Integer)
        {
            CaptionML = ENU = 'No. of Registered Participants', UKR = 'Кількість зареєстрованих';
            FieldClass = FlowField;
            CalcFormula = count("YAR Event Participiant" where("Event No." = field("No."), "Registration Confirmed" = const(true)));
            Editable = false;
        }
        field(40; "No. of Actual"; Integer)
        {
            CaptionML = ENU = 'No. of Actual', UKR = 'Кількість учасників';
            FieldClass = FlowField;
            CalcFormula = count("YAR Event Participiant" where("Event No." = field("No."), "Checked-in" = const(true)));
            Editable = false;
        }
        field(50; "Participants"; Code[20])
        {

        }
    }
    keys
    {
        key(PK; "No.", "Event Date")
        {
            // вказує на те, що для визначеного ключа таблиці встановлено кластерний індекс
            Clustered = true;
        }
    }
}
