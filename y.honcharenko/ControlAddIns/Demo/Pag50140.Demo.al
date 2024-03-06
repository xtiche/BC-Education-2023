page 50140 Demo
{
    Caption = 'Demo';
    PageType = Card;
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(ColorText; ColorText)
                {

                }
                field(ButtonName; ButtonName)
                {

                }
                field(ButtonResponce; ButtonResponce)
                {

                }
                field(Text2Alert; Text2Alert)
                {

                }

                usercontrol(Demo; Demo)
                {
                    trigger ControlReady()
                    begin
                        Message('ControlReady');
                    end;

                    trigger ShowMessage(MessageText: Text)
                    begin
                        Message(MessageText);
                    end;
                }
                /*
                usercontrol(WebPageViewer; "Microsoft.Dynamics.Nav.Client.WebPageViewer")
                {

                }
                */
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ChangeColor)
            {
                trigger OnAction()
                begin
                    CurrPage.Demo.ChangeColor(ColorText);
                end;
            }
            action(CreateButton)
            {
                trigger OnAction()
                begin
                    CurrPage.Demo.CreateButton(ButtonName, ButtonResponce);
                end;
            }
            action(ShowAlert)
            {
                trigger OnAction()
                begin
                    CurrPage.Demo.ShowAlert(Text2Alert);
                end;
            }
            action(testCU)
            {
                trigger OnAction()
                var
                    DemoCU: Codeunit demo;
                begin
                    //Codeunit.Run(Codeunit::demo);
                    DemoCU.ShowAlert(CurrPage.Demo);
                end;
            }
        }
    }
    var
        ColorText, ButtonResponce, ButtonName, Text2Alert : Text;
}
