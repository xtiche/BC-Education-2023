page 50102 "PTE Course"
{
    ApplicationArea = All;
    Caption = 'Course';
    PageType = Card;
    SourceTable = "PTE Course";
    UsageCategory = None;

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
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
            }
        }
    }
}
