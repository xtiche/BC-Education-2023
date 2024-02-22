page 50101 "XML Buffer View"
{
    ApplicationArea = All;
    Caption = 'XML Buffer View';
    PageType = List;
    SourceTable = "XML Buffer";
    UsageCategory = None;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field(Type; Rec."Type")
                {
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the name of the imported record.';
                }
                field(Path; Rec.Path)
                {
                    ToolTip = 'Specifies the value of the Path field.';
                }
                field(Value; Rec."Value")
                {
                    ToolTip = 'Specifies the value of the imported record.';
                }
                field(Depth; Rec.Depth)
                {
                    ToolTip = 'Specifies the value of the Depth field.';
                }
                field("Parent Entry No."; Rec."Parent Entry No.")
                {
                    ToolTip = 'Specifies the value of the Parent Entry No. field.';
                }
                field("Data Type"; Rec."Data Type")
                {
                    ToolTip = 'Specifies the value of the Data Type field.';
                }
                field("Node Number"; Rec."Node Number")
                {
                    ToolTip = 'Specifies the value of the Node Number field.';
                }
                field(Namespace; Rec.Namespace)
                {
                    ToolTip = 'Specifies the value of the Namespace field.';
                }
                field("Import ID"; Rec."Import ID")
                {
                    ToolTip = 'Specifies the value of the Import ID field.';
                }
                field("Value BLOB"; Rec."Value BLOB")
                {
                    ToolTip = 'Specifies the value of the Value BLOB field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
        }
    }
}
