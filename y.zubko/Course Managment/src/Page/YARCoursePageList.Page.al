page 50150 "YAR Course Page List"
{
    ApplicationArea = All;
    CaptionML = ENU = 'YAR Course Page List', UKR = 'YAR Курси Page List';
    PageType = List;
    // Визначає сторінку, яка буде відкрита, коли користувач клацне запис на сторінці-списку або сторінці-частини списку
    CardPageId = "YAR Course Page Card";
    SourceTable = "YAR Course Table";
    UsageCategory = Lists;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Code field.', UKR = 'Значення поля "Код"';
                }
                field("Course Type"; Rec."Course Type")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Type field.', UKR = 'Значення поля "Код лекції"';
                }
                field(Name; Rec.Name)
                {
                    ToolTipML = ENU = 'Specifies the value of the Name field.', UKR = 'Значення поля "Назва лекції"';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Code field.', UKR = 'Значення поля "Рівень лектора"';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Name field.', UKR = 'Значення поля "Імʼя лектора"';
                }
            }
        }
    }
}
