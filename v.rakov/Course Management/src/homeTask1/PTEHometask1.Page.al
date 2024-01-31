page 50205 "PTE Home task 1"
{
    ApplicationArea = All;
    Caption = 'Home task 1';
    PageType = Card;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

            }
        }
    }
    actions
    {
        area(Reporting)
        {
            action("Task 1")
            {
                trigger OnAction()
                var
                    myCodeUnit: Codeunit "PTE Task1";
                begin
                    myCodeUnit.task1_1();
                end;
            }
            action("Task 2")
            {
                trigger OnAction()
                var
                    myCodeUnit: Codeunit "PTE Task1";
                begin
                    myCodeUnit.task1_2();
                end;
            }
            action("Task 3")
            {
                trigger OnAction()
                var
                    myCodeUnit: Codeunit "PTE Task1";
                begin
                    myCodeUnit.task1_3();
                end;
            }
            action("Task 4")
            {
                trigger OnAction()
                var
                    myCodeUnit: Codeunit "PTE Task1";
                begin
                    myCodeUnit.task1_4('A22');
                end;
            }
            action("Task 5")
            {
                trigger OnAction()
                var
                    myCodeUnit: Codeunit "PTE Task1";
                begin
                    myCodeUnit.task1_5();
                end;
            }
        }
    }
}
