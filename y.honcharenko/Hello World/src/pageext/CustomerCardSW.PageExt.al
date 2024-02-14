pageextension 50105 "PTE Customer Card(SW)" extends "Customer Card"
{

    layout
    {
        addlast(General)
        {
            field("Show Message"; Rec."Show Message")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast("&Customer")
        {
            action("Show Message(action)")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    QRCode: Interface "IShow Messsage";
                begin
                    QRCode := Rec."Show Message";
                    QRCode.ShowMessage();
                end;
            }
        }
    }
}
