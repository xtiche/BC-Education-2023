pageextension 50100 "PTE Sales Order Subform" extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field("PTE Vendor Item No."; Rec."PTE Vendor Item No.")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}
