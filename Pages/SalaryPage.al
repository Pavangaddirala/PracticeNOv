page 50104 SalaryPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = pvnEmployeeSalaryTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Rec."Employee ID")
                {

                }
                field(Name; Rec."Total Salary")
                {

                }

                field(Name1; Rec.Max)
                {

                }
                field(Name2; Rec.Min)
                {

                }
                field(Name3; Rec.Avg)
                {

                }
                field(Name4; Rec."Total Entries")
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