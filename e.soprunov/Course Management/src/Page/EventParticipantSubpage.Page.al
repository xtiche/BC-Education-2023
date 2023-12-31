page 50106 "PTE Event Participant Subpage"
{
    ApplicationArea = All;
    CaptionML = ENU = 'Participants', UKR = 'Учасники';
    PageType = ListPart;
    SourceTable = "PTE Event Participant";
    AutoSplitKey = true;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Specifies the value of the Registration Date field.';
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
                    trigger OnValidate()
                    begin
                        CurrPage.Update();    
                    end;
                }
                field("Checked-in"; Rec."Checked-in")
                {
                    ToolTip = 'Specifies the value of the Checked-in field.';
                trigger OnValidate()
                    begin
                        CurrPage.Update();    
                    end;

                }
            }
        }
    }
}
