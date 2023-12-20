// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    layout
    {

    }

    actions
    {
        addfirst("&Customer")
        {
            action(Push)
            {
                ApplicationArea = All;
                Promoted = true;
                trigger OnAction()
                var
                    s, v : Text;

                begin
                    s := '                          21685166';
                    Message(s);
                    v := s.TrimStart(' ');
                    Message(v);
                end;
            }
        }
    }
    trigger OnOpenPage();
    var
        "Air Ticket 2": Record "Air Ticket 2";
    begin
        Message('App published: Hello world');
    end;
}