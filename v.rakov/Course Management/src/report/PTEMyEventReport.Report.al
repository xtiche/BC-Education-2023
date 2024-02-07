report 50200 PTEMyEventReport
{
    Caption = 'PTEMyEventReport';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = MyTestLayoutWORD;
    dataset
    {
        dataitem(PTEEvent; "PTE Event")
        {
            column(No; "No.")
            {
            }
            column(EventDate; "Event Date")
            {
            }
            column(CourseCode; "Course Code")
            {
            }
            column(CourseName; "Course Name")
            {
            }
            column(InstructorCode; "Instructor Code")
            {
            }
            column(InstructorName; "Instructor Name")
            {
            }
            dataitem(PTEEventParticipant; "PTE Event Participant")
            {
                DataItemLinkReference = PTEEvent;
                DataItemLink = "Event No." = field("No.");
                column(LineNo; "Line No.")
                {
                }
                column(ParticipantName; "Participant Name")
                {
                }
                column(ParticipantPhone; "Participant Phone")
                {
                }
                column(ParticipantEmail; "Participant Email")
                {
                }
                column(CheckedIn; "Checked-in")
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    rendering
    {
        layout(MyTestLayoutWORD)
        {
            Type = Word;
            LayoutFile = './src/report/MyTestLayout.docx';
            Caption = 'It WORD Layout';
            Summary = 'It Summary for MyTestLayoutWORD';
        }
        layout(MyTestLayoutRDLC)
        {
            Type = RDLC;
            LayoutFile = './src/report/MyTestLayout.rdl';
            Caption = 'It RDLC Layout';
            Summary = 'It Summary for MyTestLayoutRDLC';
        }
    }
}
