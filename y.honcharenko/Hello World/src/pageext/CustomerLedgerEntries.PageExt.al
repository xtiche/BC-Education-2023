pageextension 50104 "PTE Customer Ledger Entries" extends "Customer Ledger Entries"
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
