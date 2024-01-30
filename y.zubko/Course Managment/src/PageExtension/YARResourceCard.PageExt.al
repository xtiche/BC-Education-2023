pageextension 50151 YarResourceCard extends "Resource Card"
{
    layout
    {
        addlast(content)
        {
            group(Cource)
            {
                field("Instructor Level"; Rec."Instructor Level")
                {
                    ApplicationArea = All;
                    CaptionML = ENU = 'Instructor Level', UKR = 'Рівень інструктора';
                    ToolTipML = ENU = 'Instructor Level', UKR = 'Рівень інструктора';
                }
                field("No. of Courses"; Rec."No. of Courses")
                {
                    ApplicationArea = All;
                    ToolTipML = ENU = 'The value of the No. of Courses field', UKR = 'Кількість курсів';
                }
            }
        }
    }
}
