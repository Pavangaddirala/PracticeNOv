page 50109 StudentsMasterPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentMasterTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec."Student ID")
                {

                }
                field(Name1; Rec."Student Name")
                {

                }
                field(Name2; Rec."Total Marks")
                {
                    DrillDownPageId = "StudentsMarksPage";
                }
                field(Name3; Rec."Max Marks")
                {

                }
                field(Name4; Rec."Min Marks")
                {

                }
                field(Name5; Rec."Avg Marks")
                {

                }
                field(Name6; Rec.Entries)
                {

                }
                field(name9; Rec."Extra Field")
                { }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }
}