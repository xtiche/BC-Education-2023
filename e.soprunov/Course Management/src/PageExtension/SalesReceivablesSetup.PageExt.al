pageextension 50103 "PTE Sales & Receivables Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Event Nos."; Rec."Event Nos.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Event Nos.';
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }

}
