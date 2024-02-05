table 50152 "YAR Event Participant"
{
    CaptionML = ENU = 'YAR Event Participant Table', UKR = 'YAR Учасник заходу';
    DataClassification = CustomerContent;
    LookupPageId = "YAR Event Page List";
    DrillDownPageId = "YAR Event Page List";

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
        field(10; "Patricipant Contact No."; Code[20])
        {
            CaptionML = ENU = 'Patricipant Contact No.', UKR = 'Контакт учасника';
            TableRelation = Contact where(Type = filter('Person'));

            trigger OnValidate()
            var
                ParticipantContact: Record Contact;
            begin
                ParticipantContact.Reset();
                ParticipantContact.SetRange(ParticipantContact."No.", rec."Patricipant Contact No.");
                if ParticipantContact.FindFirst() then
                    rec."Participant Name" := ParticipantContact.Name;
                rec."Participant Email" := ParticipantContact."E-Mail";
                rec."Participant Phone" := ParticipantContact."Phone No.";
            end;
        }
        field(11; "Participant Name"; Text[100])
        {
            CaptionML = ENU = 'Participant Name', UKR = 'Імʼя учасника';
        }
        field(20; "Participant Email"; Text[100])
        {
            CaptionML = ENU = 'Participant Email', UKR = 'Електронна пошта учасника';
        }
        field(30; "Participant Phone"; Text[30])
        {
            CaptionML = ENU = 'Participant Phone', UKR = 'Нумер телефону учасника';
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
        fieldgroup(DropDown; "Event No.", "Patricipant Contact No.", "Participant Name")
        {

        }
    }
}
