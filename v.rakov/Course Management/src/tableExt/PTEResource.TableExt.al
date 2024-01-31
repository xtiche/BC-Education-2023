tableextension 50200 "PTE Resource" extends Resource
{
    fields
    {
        field(50200; "Instructor Level"; Integer)
        {
            Caption = 'Instructor Level';
            DataClassification = CustomerContent;
            MinValue = 0;
        }
        field(50201; "No. of Courses"; Integer)
        {
            Caption = 'No. of Courses';
            FieldClass = FlowField;
            CalcFormula = count("PTE Event" where("Instructor Code" = field("No.")));
            Editable = false;
            trigger OnValidate()
            begin
                if ("No. of Courses" < 0) then
                    Error('Eto pomilka');
            end;
        }
    }
}
