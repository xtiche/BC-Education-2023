tableextension 50151 "SRC Resource Extension" extends Resource
{
    fields
    {
        field(50150; "Instructor Level"; Integer)
        {
            Caption = 'Instructor Level';
            DataClassification = ToBeClassified;
        }
        field(50151; "No. of Courses"; Integer)
        {
            Caption = 'No. of Courses';
            FieldClass = FlowField;
            CalcFormula = count("SRC Course" where("Instructor Code" = field("No.")));
            Editable = false;
        }
    }
}
