pageextension 50103 "PTE Posted Sales Invoice" extends "Posted Sales Invoice"
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
