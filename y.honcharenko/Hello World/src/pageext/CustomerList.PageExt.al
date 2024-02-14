pageextension 50106 "PTE Customer List" extends "Customer List"
{
    actions
    {
        addlast("&Customer")
        {
            action("Customer Invoice")
            {
                Caption = 'Customer Invoice';
                ApplicationArea = All;

                RunObject = report "Customer Invoices";
            }

            action("Selected Customer Invoice")
            {
                Caption = 'Selected Customer Invoice';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    CurrPage.SetSelectionFilter(Customer);

                    Report.Run(Report::"Customer Invoices", true, true, Customer);
                end;
            }

            action("Current Customer Invoice")
            {
                Caption = 'Current Customer Invoice';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Customer: Record Customer;
                begin
                    Customer := Rec;
                    Customer.SetRecFilter();

                    Report.Run(Report::"Customer Invoices", true, true, Customer);
                end;
            }
        }
    }
}
