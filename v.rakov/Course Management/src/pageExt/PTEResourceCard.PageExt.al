pageextension 50201 "PTE Resource Card" extends "Resource Card"
{
    layout
    {
        addlast(content)
        {
            group(MyCourse)
            {
                field("Instructor Level"; Rec."Instructor Level")
                {
                    ApplicationArea = ALL;
                    Caption = 'INSTRuctor Level';
                }
                field("No. of Courses"; Rec."No. of Courses")
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }
}
