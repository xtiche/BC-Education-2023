page 50152 "YAR Event"
{
    ApplicationArea = All;
    CaptionML = ENU = 'YAR Event Page', UKR = 'YAR Події Page';
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
                    ToolTipML = ENU = 'Specifies the value of the No. field.', UKR = 'Значення поля "Нумер"';
                }
                field("Event Date"; Rec."Event Date")
                {
                    ToolTipML = ENU = 'Specifies the value of the Event Date field.', UKR = 'Значення поля "Дата події"';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Code field.', UKR = 'Значення поля "Код лекції"';

                    // визначає блок коду, який запускається, коли значення поля змінюється та проходить валідацію
                    trigger OnValidate()
                    begin
                        // забезпечує збереженя зміненого значення поля на сторінці чи формі
                        CurrPage.Update();
                    end;
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Name field.', UKR = 'Значення поля "Назва лекції"';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Code field.', UKR = 'Значення поля "Код лектора"';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Name field.', UKR = 'Значення поля "Імʼя лектора"';
                }
                group(Participants)
                {
                    CaptionML = ENU = 'Specifies the value of the Participants field.', UKR = 'Значення поля "Учасники"';
                    part("YAR Event Participant"; "YAR Event Participant Subpage")
                    {
                        SubPageLink = "Event No." = field("No.");
                        UpdatePropagation = Both;
                    }
                }
            }
        }
    }
}
