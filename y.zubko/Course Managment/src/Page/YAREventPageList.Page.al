page 50153 "YAR Event Page List"
{
    ApplicationArea = All;
    CaptionML = ENU = 'Event Page List', UKR = 'Події Page List';
    PageType = List;
    CardPageId = "YAR Event";
    SourceTable = "YAR Event Table";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTipML = ENU = 'Specifies the value of the No. field.', UKR = 'Значення поля "Нумер"';
                }
                field("Event Date"; Rec."Event Date")
                {
                    ToolTipML = ENU = 'Specifies the value of the Event Date field', UKR = 'Значення поля "Дата події"';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Code field.', UKR = 'Значення поля "Код лекції"';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Name field.', UKR = 'Значення поля "Назва лекції"';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Code field.', UKR = 'Значення поля "Код лектора"';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Name field.', UKR = 'Значення поля "Імʼя лектора"';
                }
                field("No. of Registered Participants"; Rec."No. of Registered Participants")
                {
                    ToolTipML = ENU = 'Specifies the value of the No. of Registered Participants field.', UKR = 'Значення поля "Кількість зареєстрованих"';
                }
                field("No. of Actual"; Rec."No. of Actual")
                {
                    ToolTipML = ENU = 'Specifies the value of the No. of Actual field.', UKR = 'Значення поля "Кількість учасників"';
                }
            }
        }
    }
}
