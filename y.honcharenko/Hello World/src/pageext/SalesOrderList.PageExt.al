pageextension 50102 "PTE Sales Order List" extends "Sales Order List"
{
    layout
    {
        addlast(Control1)
        {
            field("Internet Order No."; Rec."Internet Order No.")
            {
                ApplicationArea = Basic, Suite;

            }
        }
    }
}
