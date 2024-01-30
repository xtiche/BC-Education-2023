pageextension 50150 "YAR Resource List" extends "Resource List"
{
    layout
    {
        addlast(content)
        {
            field("Instructor Level"; Rec."Instructor Level")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'The value of the Instructor Level', UKR = 'Рівень інструктора';
            }
            field("No. of Courses"; Rec."No. of Courses")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'The value of the No. of Courses field', UKR = 'Кількість курсів';
            }
        }
    }

}