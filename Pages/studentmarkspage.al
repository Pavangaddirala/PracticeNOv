
page 50110 StudentsMarksPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = StudentMarksTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.ID)
                {
                    TableRelation = "StudentMasterTable";

                }
                field(Name1; Rec.Subject)
                {

                }
                field(Name2; Rec.Marks)
                {

                }
                field(name3; Rec.pk)
                {

                }

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