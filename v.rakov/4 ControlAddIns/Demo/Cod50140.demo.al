codeunit 50140 demo
{
    trigger OnRun()
    var
        Test: ControlAddIn Demo;
    begin
        Test.ShowAlert('hello');
    end;


    procedure ShowAlert(v: ControlAddIn Demo)
    begin
        v.ShowAlert('hello');
    end;
}
