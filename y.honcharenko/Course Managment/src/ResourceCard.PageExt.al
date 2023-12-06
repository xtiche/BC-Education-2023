pageextension 50201 "PTE Resource Card" extends "Resource Card"
{
    layout
    {
        addlast(content)
        {
            group(Course)
            {
                field("Instructor Level"; Rec."Instructor Level")
                {
                    ApplicationArea = All;
                }
                field("No. of Courses"; Rec."No. of Courses")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Courses field.';
                }

            }

        }
    }
}
