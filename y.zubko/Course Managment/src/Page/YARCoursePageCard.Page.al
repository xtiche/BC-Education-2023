page 50151 "YAR Course Page Card"
{
    // Сторінка доступна для всіх областей програми
    ApplicationArea = All;
    // Назва заголовку сторінки
    CaptionML = ENU = 'YAR Course Page Card', UKR = 'YAR Курси Page Card';
    // Сторінка типу картка, призначена для відображення та редагування інформації про один запис одночасно
    PageType = Card;
    // Дані для цієї сторінки будуть взяті з таблиці "YAR Course Table". Ця таблиця повинна містити всі необхідні поля
    SourceTable = "YAR Course Table";
    //  Ця сторінка не належить до жодної конкретної категорії використання
    UsageCategory = None;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Code field', UKR = 'Значення поля "Код"';
                }
                field("Course Type"; Rec."Course Type")
                {
                    ToolTipML = ENU = 'Specifies the value of the Course Type field', UKR = 'Визначає значення поля "Тип лекції"';
                }
                field(Name; Rec.Name)
                {
                    ToolTipML = ENU = 'Specifies the value of the Name field', UKR = 'Вказує значення поля "Назва лекції"';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Code field', UKR = 'Визначає значення поля "Код лектора"';
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTipML = ENU = 'Specifies the value of the Instructor Name field', UKR = 'Значення поля "Імʼя лектора"';
                }
            }
        }
    }
}
