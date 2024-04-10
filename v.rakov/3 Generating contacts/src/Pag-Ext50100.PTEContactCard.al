pageextension 50100 "PTE Contact Card" extends "Contact Card"
{
    actions
    {
        addfirst(processing)
        {
            action("Generate contact 22222")
            {
                trigger OnAction()
                var
                    HttpClient: HttpClient;
                    HttpResponse: HttpResponseMessage;
                    TempBlob: Codeunit "Temp Blob";
                    InStr: InStream;
                    JObject, JObject_name, JObject_location, JObject_picture : JsonObject;
                    JToken: JsonToken;
                    JArray: JsonArray;
                    PictureURL: Text;
                begin
                    HttpClient.Get('https://randomuser.me/api/?nat=ua', HttpResponse);

                    TempBlob.CreateInStream(InStr, TextEncoding::UTF8);
                    HttpResponse.Content().ReadAs(InStr);

                    if not JObject.ReadFrom(InStr) then
                        Error('Error error!');

                    JObject.Get('results', JToken);

                    JArray := JToken.AsArray();

                    JArray.Get(0, JToken);
                    JObject := JToken.AsObject();

                    JObject_name := GetObject('name', JObject);
                    JObject_location := GetObject('location', JObject);
                    JObject_picture := GetObject('picture', JObject);

                    // data in Rec
                    Rec.Type := "Contact Type"::Person;
                    Rec."First Name" := CopyStr(GetValueAsText('first', JObject_name), 1, MaxStrLen(Rec."First Name"));
                    Rec.Surname := CopyStr(GetValueAsText('last', JObject_name), 1, MaxStrLen(Rec.Surname));
                    Rec.Name := Rec."First Name" + ' ' + Rec.Surname;
                    //Rec."Country/Region Code" := CopyStr(GetValueAsCode('nat', JObject), 1, MaxStrLen(Rec."Country/Region Code"));
                    Rec."Country/Region Code" := CopyStr(GetValueAsText('nat', JObject), 1, MaxStrLen(Rec."Country/Region Code"));
                    Rec."Phone No." := CopyStr(GetValueAsText('phone', JObject), 1, MaxStrLen(Rec."Phone No."));
                    Rec."E-Mail" := CopyStr(GetValueAsText('email', JObject), 1, MaxStrLen(Rec."E-Mail"));
                    Rec.County := CopyStr(GetValueAsText('country', JObject_location), 1, MaxStrLen(Rec.County));
                    Rec.City := CopyStr(GetValueAsText('city', JObject_location), 1, MaxStrLen(Rec.City));
                    Rec."Post Code" := CopyStr(GetValueAsText('postcode', JObject_location), 1, MaxStrLen(Rec."Post Code"));

                    // picture
                    PictureURL := GetValueAsText('large', JObject_picture);

                    HttpClient.Get(PictureURL, HttpResponse);
                    HttpResponse.Content.ReadAs(InStr);
                    Rec.Image.ImportStream(InStr, 'foto 111 222');

                    //Rec.Modify();
                end;
            }
        }

    }

    procedure GetObject(Field: Text; JObject: JsonObject): JsonObject
    var
        JToken: JsonToken;
    begin
        JObject.Get(Field, JToken);
        exit(JToken.AsObject());
    end;

    procedure GetValueAsText(Field: Text; JObject: JsonObject): Text
    var
        JToken: JsonToken;
    begin
        JObject.Get(Field, JToken);
        exit(JToken.AsValue().AsText());
    end;

    procedure GetValueAsCode(Field: Text; JObject: JsonObject): Code[2048]
    var
        JToken: JsonToken;
    begin
        JObject.Get(Field, JToken);
        exit(JToken.AsValue().AsCode());
    end;
}
