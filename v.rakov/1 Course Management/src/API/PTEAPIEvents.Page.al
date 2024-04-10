page 50205 "PTE API Events"
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'pteAPIEvents';
    DelayedInsert = true;
    EntityName = 'myApiEvent';
    EntitySetName = 'myApiEvents';
    PageType = API;

    ODataKeyFields = "No.";
    SourceTable = "PTE Event";

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
            }
            part(pteAPIEventsParticipant; "PTE API Event Participant")
            {
                EntityName = 'pteAPIEventParticipant';
                EntitySetName = 'pteAPIEventsParticipant';
                ApplicationArea = All;
                SubPageLink = "Event No." = field("No.");
            }
        }
    }
}
