pageextension 50101 "PTE Sales Order" extends "Sales Order"
{
    layout
    {
        addlast(content)
        {
            group(Internet)
            {
                field("Internet Order No."; Rec."Internet Order No.")
                {
                    ApplicationArea = Basic, Suite;

                }
            }
        }
    }
}
