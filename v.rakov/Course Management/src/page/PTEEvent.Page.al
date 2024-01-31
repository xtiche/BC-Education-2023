page 50203 "PTE Event"
{
    ApplicationArea = All;
    Caption = 'Event Doc';
    PageType = Document;
    SourceTable = "PTE Event";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General Head';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("Event Date"; Rec."Event Date")
                {
                    ToolTip = 'Specifies the value of the Event Date field.';
                }
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'Specifies the value of the Course Code field.';
                }
                field("Course Name"; Rec."Course Name")
                {
                    ToolTip = 'Specifies the value of the Course Name field.';
                }

                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ToolTip = 'Specifies the value of the Instructor Name field.';
                }
                field("No. of Registered Participants"; Rec."No. of Registered Participants")
                {
                    ToolTip = 'Specifies the value of the No. of Registered Participants field.';
                }
                field("No. of Actual Participants"; Rec."No. of Actual Participants")
                {
                    ToolTip = 'Specifies the value of the No. of Actual Participants field.';
                }
            }
            part(SalesLines; "PTE Event Participant Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Event No." = field("No.");
            }
        }
    }
}
