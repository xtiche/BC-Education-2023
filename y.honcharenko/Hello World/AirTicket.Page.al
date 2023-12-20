page 50100 "Air Ticket"
{
    ApplicationArea = All;
    Caption = 'Air Ticket';
    PageType = Card;
    SourceTable = "Air Ticket 2";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(MyField; Rec.MyField)
                {
                    ToolTip = 'Specifies the value of the MyField field.';
                    ShowMandatory = Mand;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            group(GeneralAction)
            {
                action(PushMe)
                {
                    Promoted = true;
                }
            }
        }
    }

    var
        Mand: Boolean;

    trigger OnAfterGetRecord()
    begin
        Mand := Rec.MyField = 0;
    end;
}
