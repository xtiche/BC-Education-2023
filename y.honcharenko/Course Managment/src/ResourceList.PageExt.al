pageextension 50200 "PTE Resource List" extends "Resource List"
{
    layout
    {
        addlast(Control1)
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
