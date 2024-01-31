page 50152 "YAR Event"
{
    ApplicationArea = All;
    Caption = 'Event';
    PageType = Document;
    SourceTable = "YAR Event Table";
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                CaptionML = ENU = 'General', UKR = 'Загальні';

                // створює поле з назвою "No." на сторінці чи формі. Вказує, що це поле зв'язане з полем "No." в таблиці "YAR Event", на якій базується сторінка чи форма
                field("No."; Rec."No.")
                {
                    // встановлює підказку, що відображається, коли користувач наводить курсор на поле. Підказка пояснює призначення поля
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Event Date"; Rec."Event Date")
                {
                    ToolTip = 'Specifies the value of the Event Date field.';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.';

                    // визначає блок коду, який запускається, коли значення поля змінюється та проходить валідацію
                    trigger OnValidate()
                    begin

                        // забезпечує збереженя зміненого значення поля на сторінці чи формі
                        CurrPage.Update();
                    end;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
                field(Participants; Rec.Participants)
                {
                    ToolTip = 'Specifies the value of the Participants field.';
                }
            }
        }
    }
}
