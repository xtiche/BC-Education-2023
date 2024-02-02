tableextension 50151 "YAR Resource" extends Resource
{
    fields
    {
        field(50150; "Instructor Level"; Integer)
        {
            CaptionML = ENU = 'Instructor Level', UKR = 'Рівень лектора';
            DataClassification = CustomerContent;
        }
        field(50151; "No. of Courses"; Integer)
        {
            CaptionML = ENU = 'No. of Courses', UKR = 'Кількість курсів';
            FieldClass = FlowField;
            CalcFormula = count("YAR Course Table" where("Instructor Code" = field("No.")));
            Editable = false;
        }
    }
}
