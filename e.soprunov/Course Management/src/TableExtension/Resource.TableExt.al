tableextension 50101 "PTE Resource" extends Resource
{
    fields
    {
        field(50101; "Instructor Level"; Integer)
        {
            //Caption = 'Instructor Level';
            CaptionML = ENU = 'Instructor Level', UKR = 'Рівень інструктора';
            DataClassification = CustomerContent;
        }
        field(50102; "No. of Courses"; Integer)
        {
            //Caption = 'No. of Courses';
            CaptionML = ENU = 'No. of Courses', UKR = 'Кількість курсів';
            FieldClass = FlowField;
            CalcFormula = count("PTE Course" where ("Instructor Code" = field("No.")));
            Editable = false;

            trigger OnValidate()
            begin
                if "No. of Courses" < 0 then
                Error('Value must be more then zero');
                
            end;
        }
    }
}
