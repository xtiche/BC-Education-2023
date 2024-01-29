pageextension 50150 "YAR Resource Extension" extends "Resource List"
{
    layout
    {
        addlast(content)
        {
            field("Instructor Level"; Rec."Instructor Level")
            {
                ApplicationArea = All;
            }
            field("No. of Courses"; Rec."No. of Courses")
            {
                ApplicationArea = All;
            }
        }
    }

}