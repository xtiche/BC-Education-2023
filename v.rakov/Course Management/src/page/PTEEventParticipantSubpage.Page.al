page 50204 "PTE Event Participant Subpage"
{
    ApplicationArea = All;
    Caption = 'Учасники';
    PageType = ListPart;
    SourceTable = "PTE Event Participant";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Event No."; Rec."Event No.")
                {
                    ToolTip = 'Номер події';
                    Visible = false;
                    Editable = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                    Editable = false;
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Дата реєстрації';
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ToolTip = 'Specifies the value of the Participant Contact No. field.';
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ToolTip = 'Контакт учасника';
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
                    ToolTip = 'Підтвердив реєстрацію';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Checked-in"; Rec."Checked-in")
                {
                    ToolTip = 'Підтвердив присутність';
                }

            }
        }
    }
}
