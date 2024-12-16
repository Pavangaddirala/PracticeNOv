page 50107 FlowfieldsPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = pvnSalaryDisplaytable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Employee ID"; Rec.ID)
                {

                }
                field("Salary"; Rec.Salary)
                {

                }
                field("Month"; Rec.Month)
                {

                }
                field("OK"; Rec.pk)
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