pageextension 50101 "PTE Resource List" extends "Resource List"
{
    layout
    {
        addlast(Control1)
        {
            field("Instructor Level"; Rec."Instructor Level")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'Specifies the value of the Instructor Level', UKR = 'Вказує рівень інструктора';
            }
            field("No. of Courses"; Rec."No. of Courses")
            {
                ApplicationArea = All;
                ToolTipML = ENU = 'Specifies the value of the No. of Courses field.', UKR = 'Вказує кількість курсів';

            }
        }
    }

}
