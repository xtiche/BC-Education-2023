codeunit 50200 "PTE Task1"
{
    procedure task1_1()
    var
    BEGIN
        Message('Hello World!');
    END;

    procedure task1_2()
    var
        mItem: Record Item;
    BEGIN
        //mItem.SetCurrentKey("No.");
        //mItem.SetFilter("Inventory", '>3000');
        mItem.SetFilter("Inventory", '>=0');
        //mItem.FindSet();
        Message('Kolichestvo strok = ' + Format(mItem.Count));
    END;

    procedure task1_3()
    var
        mCustomer: Record Customer;
    BEGIN
        mCustomer.Init();
        mCustomer."No." := 'A22';
        mCustomer.Name := 'Ivanov Ivan';
        mCustomer.Address := 'Time Square';
        mCustomer.City := 'London';
        mCustomer."Phone No." := '123-456-789';
        mCustomer."Language Code" := 'UK';
        mCustomer.Insert();
        Message('OK');
    END;

    procedure task1_4(mNomer: Code[20])
    var
        mCustomer: Record Customer;
    BEGIN
        if mCustomer.Get(mNomer) then begin
            mCustomer.Address := 'Time Square NEW';
            mCustomer.Modify();
            Message('OK');
        end else
            Message('The customer ' + mNomer + ' was not found');
    END;

    procedure task1_5()
    var
        mItem: Record Item;
        mItemList: Page "Item List";
    BEGIN
        //mItem.SetFilter("Assembly BOM", 'false');
        mItem.SetRange("Assembly BOM", false);
        mItemList.SetTableView(mItem);
        mItemList.Run();
    END;
}
