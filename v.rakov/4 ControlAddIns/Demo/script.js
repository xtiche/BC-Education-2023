function ChangeColor(color)
{
    var DivDemo = document.getElementById('Demo');
    DivDemo.style.backgroundColor = color;

    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ShowMessage',['New color is ' + color]);
}

function ChangeImage(ImageRef)
{
    var DivDemo = document.getElementById('controlAddIn');
    DivDemo.style.backgroundImage = 'url(' + ImageRef + ')';
    DivDemo.style.backgroundSize = 'contain';

    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ShowMessage',['New IMAGE is READY']);
}

function CreateButton(name,responce)
{
    var placeHolder = document.getElementById('controlAddIn');
    var button = document.createElement('button');
    button.textContent = name;
    button.onclick = function(){
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ShowMessage',[responce]);
    }

    placeHolder.appendChild(button);
}

function ShowAlert(text)
{
    alert(text);
}