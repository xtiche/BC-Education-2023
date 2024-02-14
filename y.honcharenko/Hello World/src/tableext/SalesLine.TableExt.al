tableextension 50101 "PTE Sales Line" extends "Sales Line"
{

    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item: Record Item;
            begin
                if Item.Get(Rec."No.") then
                    "PTE Vendor Item No." := Item."Vendor Item No."
                else
                    "PTE Vendor Item No." := '';
            end;
        }
        field(50100; "PTE Vendor Item No."; Text[50])
        {
            Caption = 'PTE Vendor Item No.';
            DataClassification = CustomerContent;
        }
        field(50101; "PTE Vendor Price"; Text[50])
        {
            Caption = 'PTE Vendor Item No.';
            DataClassification = CustomerContent;
        }
        field(50102; "PTE Vendor Price2"; Decimal)
        {
            Caption = 'PTE Vendor Item No.';
            DataClassification = CustomerContent;
        }
    }
}
