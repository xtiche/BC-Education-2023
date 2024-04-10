page 50200 "PTE Courses"
{
    ApplicationArea = All;
    Caption = 'Courses';
    PageType = List;
    SourceTable = "PTE Course";
    CardPageId = "PTE Course";
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
                field("Instructor code"; Rec."Instructor code")
                {
                    ToolTip = 'Specifies the value of the Instructor code field.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
            }
        }
    }
}
