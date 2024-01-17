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
            DataClassification = CustomerContent;

            trigger OnValidate()
            var
                int: Integer;
            begin
                if Evaluate(int, 's00001') then;
                if ("No. of Courses" < 0) then
                    Error('Value must be more then 0');
            end;
        }
    }
}
