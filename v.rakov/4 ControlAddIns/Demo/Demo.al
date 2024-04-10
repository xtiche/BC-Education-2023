controladdin Demo
{
    RequestedHeight = 300;
    RequestedWidth = 300;

    MaximumWidth = 400;


    Scripts = 'Demo/script.js';
    StyleSheets = 'Demo/style.css';

    StartupScript = 'Demo/startup.js';

    event ControlReady()
    event ShowMessage(MessageText: Text)
    procedure ShowAlert(AlertText: Text)
    procedure CreateButton(Name: text; Responce: Text)
    procedure ChangeColor(Color: Text)
    procedure ChangeImage(ImageRef: Text)

}