page 50108 "PTE Event Participants Web API"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'eSoprunov';
    APIGroup = 'pteGroup';

    EntityCaption = 'EventParticipantAPI';
    EntitySetCaption = 'EventParticipantsAPI';
    EntityName = 'eventParticipantAPI';
    EntitySetName = 'eventParticipantsAPI';

    ODataKeyFields = "Event No.";
    SourceTable = "PTE Event Participant";

    Extensible = false;
    DelayedInsert = true;
    ChangeTrackingAllowed = true;
    //ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(eventNo; Rec."Event No.")
                {
                    Caption = 'Event No.';
                }
                field(participantName; Rec."Participant Name")
                {
                    Caption = 'Participant Name';
                }

                /*               field(eventId; Rec."Event Id")
                               {
                                   Caption = 'Event Id';
                               }
               */
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
