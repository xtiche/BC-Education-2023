pageextension 50200 "PTE Resource List" extends "Resource List"
{
    layout
    {
        addlast(Control1)
        {
            field("Instructor Level"; Rec."Instructor Level")
            {
                ApplicationArea = ALL;
            }
            field("No. of Courses"; Rec."No. of Courses")
            {
                ApplicationArea = ALL;
            }
        }
    }
}
