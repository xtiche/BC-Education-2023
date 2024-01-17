codeunit 50100 "Sales Line Events"
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', "No.", false, false)]
    local procedure OnAfterValidateNo(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    var
        Item: Record Item;
    begin
        if Item.Get(Rec."No.") then
            Rec."PTE Vendor Item No." := Item."Vendor Item No."
        else
            Rec."PTE Vendor Item No." := '';
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeCopyFromItem', '', false, false)]
    local procedure OnBeforeCopyFromItem(var SalesLine: Record "Sales Line"; Item: Record Item; var IsHandled: Boolean)
    begin
        SalesLine."PTE Vendor Item No." := Item."Vendor Item No.";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', false, false)]
    local procedure OnAfterCopyGenJnlLineFromSalesHeader(var GenJournalLine: Record "Gen. Journal Line"; SalesHeader: Record "Sales Header")
    begin
        GenJournalLine."Internet Order No." := SalesHeader."Internet Order No.";
    end;
}
