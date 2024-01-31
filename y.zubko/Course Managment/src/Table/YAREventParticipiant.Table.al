table 50152 "YAR Event Participiant"
{
    CaptionML = ENU = 'Event Participiant', UKR = 'Учасник заходу';
    DataClassification = CustomerContent;
    // LookupPageId = "YAR Event Participiants"
    // DrillDownPageId = "YAR Event Participiants"

    fields
    {
        field(1; "Event No."; Code[20])
        {
            CaptionML = ENU = 'Event No.', UKR = 'Нумер події';
        }
        field(2; "Line No."; Integer)
        {
            CaptionML = ENU = 'Line No.', UKR = 'Код';
        }
        field(3; "Registartion Date"; Date)
        {
            CaptionML = ENU = 'Registartion Date', UKR = 'Дата реєстрації';
        }
        field(10; "Patricipiant Contact No."; Code[20])
        {
            CaptionML = ENU = 'Patricipiant Contact No.', UKR = 'Контакт учасника';
            TableRelation = Contact where(Type = filter('Person'));

            trigger OnValidate()
            var
                ParticipiantContact: Record Contact;
            begin
                ParticipiantContact.Reset();
                ParticipiantContact.SetRange(ParticipiantContact."No.", rec."Patricipiant Contact No.");
                if ParticipiantContact.FindFirst() then
                    rec."Participiant Name" := ParticipiantContact.Name;
                rec."Participiant Email" := ParticipiantContact."E-Mail";
                rec."Participiant Phone" := ParticipiantContact."Phone No.";
            end;
        }
        field(11; "Participiant Name"; Text[100])
        {
            CaptionML = ENU = 'Participiant Name', UKR = 'Імʼя учасника';
        }
        field(20; "Participiant Email"; Text[100])
        {
            CaptionML = ENU = 'Participiant Email', UKR = 'Електронна пошта учасника';
        }
        field(30; "Participiant Phone"; Text[30])
        {
            CaptionML = ENU = 'Participiant Phone', UKR = 'Нумер телефону учасника';
        }
        field(40; "Registration Confirmed"; Boolean)
        {
            CaptionML = ENU = 'Registration Confirmed', UKR = 'Підтвердив реєстрацію';
        }
        field(50; "Checked-in"; Boolean)
        {
            CaptionML = ENU = 'Checked-in', UKR = 'Підтвердив присутність';
        }
    }
    keys
    {
        key(PK; "Event No.", "Line No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Event No.", "Patricipiant Contact No.", "Participiant Name")
        {

        }
    }
}
