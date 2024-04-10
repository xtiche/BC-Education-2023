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
                field(ImageRef; ImageRef)
                {

                }

                usercontrol(Demo; Demo)
                {
                    trigger ControlReady()
                    begin
                        Message('ControlReady !!!');
                        ImageRef := 'https://www.leceipt.com/wp-content/uploads/2022/10/microsoft-dynamics-365-business-central-e-tax-invoice-e-receipt-tiny.png';
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
            action(ChangeImage)
            {
                trigger OnAction()
                begin
                    CurrPage.Demo.ChangeImage(ImageRef);
                end;
            }
        }
    }
    var
        ColorText, ButtonResponce, ButtonName, Text2Alert, ImageRef : Text;
}
