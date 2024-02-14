report 50100 "Customer Invoices"
{
    ApplicationArea = All;
    Caption = 'Customer Ledger';
    UsageCategory = ReportsAndAnalysis;
    DefaultRenderingLayout = rdlc;

    dataset
    {
        dataitem(Customer; Customer)
        {
            PrintOnlyIfDetail = true;
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(ShowAmounts; ShowAmounts) { }



            dataitem(CustLedger; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");

                DataItemTableView = where("Document Type" = const(Invoice));

                column(Document_No_; "Document No.") { }
                column(Document_Date; Format("Document Date", 0, '<Day,2>-<Month,2>-<Year4>')) { }
                column(Amount; Amount) { }
                column(Remaining_Amount; "Remaining Amount") { }
            }
        }
    }



    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field("Show Amounts"; ShowAmounts)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
    rendering
    {
        layout(rdlc)
        {
            Caption = 'RDLC';
            Type = RDLC;
            LayoutFile = 'src\report\layout\CustomerInvoice.rdlc';
        }
        layout(word)
        {
            Caption = 'Word';
            Type = Word;
            LayoutFile = 'src\report\layout\CustomerInvoice.docx';
        }
    }

    var
        ShowAmounts: Boolean;
}
