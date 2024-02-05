page 50154 "YAR Event Participant Subpage"
{
    ApplicationArea = All;
    CaptionML = ENU = 'YAR Event Participant Subpage', UKR = 'YAR Підсторінка часника події';
    PageType = ListPart;
    SourceTable = "YAR Event Participant";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Registartion Date"; Rec."Registartion Date")
                {
                    ToolTipML = ENU = 'Specifies the value of the Registartion Date field', UKR = 'Вказує значення поля «Дата реєстрації»';
                }
                field("Patricipant Contact No."; Rec."Patricipant Contact No.")
                {
                    ToolTipML = ENU = 'Specifies the value of the Patricipant Contact No. field', UKR = 'Вказує значення поля «Контактний номер учасника»';
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Participant Name field', UKR = 'Визначає значення поля «Ім’я учасника»';
                }
                field("Participant Email"; Rec."Participant Email")
                {
                    ToolTipML = ENU = 'Specifies the value of the Participant Email field', UKR = 'Визначає значення поля «Електронна адреса учасника»';
                }
                field("Participant Phone"; Rec."Participant Phone")
                {
                    ToolTipML = ENU = 'Specifies the value of the Participant Phone field', UKR = 'Вказує значення поля «Телефон учасника»';
                }
                field("Registration Confirmed"; Rec."Registration Confirmed")
                {
                    ToolTipML = ENU = 'Specifies the value of the Registration Confirmed field', UKR = 'Вказує значення поля «Реєстрація підтверджена»';
                }
                field("Checked-in"; Rec."Checked-in")
                {
                    ToolTipML = ENU = 'Specifies the value of the Checked-in field', UKR = 'Визначає значення поля «Зареєстровано»';
                }
            }
        }
    }
}
