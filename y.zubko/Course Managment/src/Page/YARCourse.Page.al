page 50150 "YAR Course"
{
    ApplicationArea = All;
    CaptionML = ENU = 'Course List', UKR = 'Курси';
    PageType = List;

    // Визначає сторінку, яка буде відкрита, коли користувач клацне запис на сторінці-списку або сторінці-частини списку
    CardPageId = "YAR Course PageCard";
    SourceTable = "YAR Course";
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
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field("Course Type"; Rec."Course Type")
                {
                    ToolTip = 'Specifies the value of the Course Type field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
            }
        }
    }
}
