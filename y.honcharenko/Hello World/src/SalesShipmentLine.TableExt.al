tableextension 50102 "PTE Sales Shipment Line" extends "Sales Shipment Line"
{
    fields
    {
        field(50100; "PTE Vendor Item No."; Text[50])
        {
            Caption = 'PTE Vendor Item No.';
            DataClassification = CustomerContent;
        }
    }
}
