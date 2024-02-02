page 50151 "YAR Course Page Card"
{
    ApplicationArea = All;
    CaptionML = ENU = 'YAR Course Page Card', UKR = 'YAR Курси Page Card';
    PageType = Card;
    SourceTable = "YAR Course Table";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Code field', UKR = 'Значення поля Код';
                }
                field("Course Type"; Rec."Course Type")
                {
                    ToolTip = 'Specifies the value of the Course Type field';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field';
                }
            }
        }
    }
}
