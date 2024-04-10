page 50206 "PTE API Event Participant"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'pteAPIEventParticipant';
    DelayedInsert = true;
    EntityName = 'pteAPIEventParticipant';
    EntitySetName = 'pteAPIEventsParticipant';
    PageType = API;

    ODataKeyFields = "Event No.";
    SourceTable = "PTE Event Participant";

    Editable = false;
    InsertAllowed = false;
    DeleteAllowed = false;
    ModifyAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(eventNo; Rec."Event No.")
                {
                    Caption = 'Event No.';
                }
                field(participantName; Rec."Participant Name")
                {
                    Caption = 'Participant Name';
                }
                field(participantPhone; Rec."Participant Phone")
                {
                    Caption = 'Participant Phone';
                }
                field(participantEmail; Rec."Participant Email")
                {
                    Caption = 'Participant Email';
                }
                field(checkedIn; Rec."Checked-in")
                {
                    Caption = 'Checked-in';
                }
            }
        }
    }
}
