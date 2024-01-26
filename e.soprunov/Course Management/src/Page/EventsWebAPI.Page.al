page 50104 "PTE Events Web API"
{
    PageType = API;

    APIVersion = 'v1.0';
    APIPublisher = 'eSoprunov';
    APIGroup = 'pteGroup';

    EntityCaption = 'EventAPI';
    EntitySetCaption = 'EventsAPI';
    EntityName = 'eventAPI';
    EntitySetName = 'eventsAPI';

    ODataKeyFields = SystemId;
    SourceTable = "PTE Event";

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
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(eventDate; Rec."Event Date")
                {
                    Caption = 'Event Date';
                }
                field(courseCode; Rec."Course Code")
                {
                    Caption = 'Course Code';
                }
                field(courseName; Rec."Course Name")
                {
                    Caption = 'Course Name';
                }
                field(instructorCode; Rec."Instructor Code")
                {
                    Caption = 'Instructor Code';
                }
                field(instructorName; Rec."Instructor Name")
                {
                    Caption = 'Instructor Name';
                }

                part(eventParticipantsAPI; "PTE Event Participants Web API")
                {
                    Caption = 'Event Participants';
                    EntityName = 'eventParticipantAPI';
                    EntitySetName = 'eventParticipantsAPI';
                    SubPageLink = "Event No." = field("No.");
                }

            }
        }
    }
}
