page 50107 "PTE Event Participants"
{
    ApplicationArea = All;
    Caption = 'Event Participants';
    PageType = List;
    SourceTable = "PTE Event Participant";
    UsageCategory = Lists;
    Editable = false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Event No."; Rec."Event No.")
                {
                    ToolTip = 'Specifies the value of the Event No. field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ToolTip = 'Specifies the value of the Participant Contact No. field.';
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ToolTip = 'Specifies the value of the Participant Name field.';
                }
                field("Participant Email"; Rec."Participant Email")
                {
                    ToolTip = 'Specifies the value of the Participant Email field.';
                }
                field("Participant Phone"; Rec."Participant Phone")
                {
                    ToolTip = 'Specifies the value of the Participant Phone field.';
                }
                field("Registration Confirmed"; Rec."Registration Confirmed")
                {
                    ToolTip = 'Specifies the value of the Registration Confirmed field.';
                }
                field("Checked-in"; Rec."Checked-in")
                {
                    ToolTip = 'Specifies the value of the Checked-in field.';
                }
            }
        }
    }
}
