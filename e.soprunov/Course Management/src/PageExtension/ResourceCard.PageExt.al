pageextension 50102 "PTE Resource Card" extends "Resource Card"
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
                    CaptionML = ENU = 'Instr. Level', UKR = 'Рівень інстр-ра';
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
}
