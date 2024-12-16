page 50111 pvnPagepart
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PvnEmployeeTable;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec."Employee ID")
                {
                    //DrillDownPageId = PvnEmployeePage;
                    trigger OnDrillDown()

                    begin
                        page.Run(50100, Rec);   // it will open corresponding page (50100)
                    end;
                }
                field(Name1; Rec.Location)
                {

                }
                field(Name2; Rec."Employye Name")
                {
                    DrillDownPageId = "Sales Return Orders";
                }
            }
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

    var
        myInt: Integer;
}