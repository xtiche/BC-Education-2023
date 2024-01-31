page 50201 "PTE Course"
{
    ApplicationArea = All;
    Caption = 'Course';
    PageType = Card;
    SourceTable = Course;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

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
