
page 50102 "Employees List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PvnEmployeeTable;
    CardPageId = PvnEmployeePage;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec."Employee ID")
                {
                    ApplicationArea = all;
                    Style = Favorable;
                }
                field(Name1; Rec."Employye Name")
                {
                    Style = StrongAccent;

                }
                field(Name2; Rec.Location)
                {

                }
                field(Name3; Rec.Salary)
                {

                }
                field(Name4; Rec.PhoneNumber)
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
                Caption = 'My LIst Action';
                trigger OnAction()
                begin

                end;
            }
        }
    }
}