
page 50100 PvnEmployeePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PvnEmployeeTable;
    layout
    {
        area(Content)
        {

            group(GroupName)
            {
                Caption = 'Employee Base Details';
                field(EmployeeID; Rec."Employee ID")
                {
                    ApplicationArea = all;
                }
                field(NAME; Rec."Employye Name")
                {
                    ApplicationArea = all;
                }
                field(Designation; Rec.Designation)
                {
                    ApplicationArea = all;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo; Rec.PhoneNumber)
                {
                    ApplicationArea = all;
                }
                field(Wages; Rec.Salary)
                {
                    ApplicationArea = all;
                }
            }
            group(Project)
            {
                Caption = 'Employee Project Details';
                field(EmployeeID1; Rec."Employee ID")
                {
                    ApplicationArea = all;
                }
                field(NAME2; Rec."Employye Name")
                {
                    ApplicationArea = all;
                }
                field(Designation3; Rec.Designation)
                {
                    ApplicationArea = all;
                }
                field(Location4; Rec.Location)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo5; Rec.MyField2)
                {
                    ApplicationArea = all;
                }
                field(Wages6; Rec.MyField)
                {
                    ApplicationArea = all;
                }
            }


        }
        area(FactBoxes)
        {
            part(part; "Item Picture")
            {

                ApplicationArea = all;
            }
            systempart(Links; Links)
            {
                ApplicationArea = All;

            }
            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ProcessingActon)
            {

                trigger OnAction()
                begin
                    Message('Processing action');
                end;

            }
            action(codeunitprocdedurecalling)
            {
                trigger OnAction()
                begin
                    cu.MyfirstProcedure();

                end;
            }
            action(Sumnumbers)
            {
                trigger OnAction()
                begin
                    cu.AdditionProcedure();
                end;
            }
        }
        area(Creation)
        {
            action(CreationAction)
            {

                trigger OnAction()
                begin
                    Message('Create action');
                end;
            }
        }
        area(Navigation)
        {
            action(NavigationAction)
            {

                trigger OnAction()
                begin
                    Message('Navigation action');
                end;
            }
        }
        area(Reporting)
        {
            action(reportingAction)
            {

                trigger OnAction()
                begin
                    Message('Reporting action');
                end;
            }
        }

    }

    var
        myInt: Integer;
        cu: Codeunit pvnCodeunit;
}