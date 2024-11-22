
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
                    Caption = 'Employee Unique ID:';
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
                field(EmployeeID1; Rec.Field9)
                {
                    ApplicationArea = all;
                }
                field(NAME2; Rec.Field10)
                {
                    Caption = 'Field 10';
                    ApplicationArea = all;
                }
                field(Designation3; Rec.Field11)
                {
                    ApplicationArea = all;
                }
                field(Location4; Rec.Field12)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo5; Rec.Field13)
                {
                    ApplicationArea = all;
                }
                field(Wages6; Rec.Field13)
                {
                    ApplicationArea = all;
                }
            }
            group(Payments)
            {
                field(Field9; Rec.Field9)
                {
                    ApplicationArea = all;
                }
                field(countyField; Rec.Field10)
                {
                    Caption = 'Country';
                    ApplicationArea = all;
                    TableRelation = "Country/Region";
                }
                field(Dropdown; Rec.Field11)
                {
                    Caption = 'Dropdown';
                    ApplicationArea = all;

                }
                field(field12; Rec.Field12)
                {
                    ApplicationArea = all;
                }
            }
            group(ShiftAllowances)
            {
                field(field13; Rec.Field13)
                {
                    ApplicationArea = all;
                }
                field(field14; Rec.Field14)
                {
                    ApplicationArea = all;
                }
                field(field15; Rec.Field15)
                {
                    ApplicationArea = all;
                }
                field(fiel16; blobdatavalue)
                {
                    Caption = 'NO Data Type';

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
            action(InsertDataFieldintoBlobfield)
            {

                trigger OnAction()
                begin
                    Rec.MyField16.CreateOutStream(out, TextEncoding::UTF8);
                    out.WriteText(' Hi This is Pavan');
                    result := Rec.Modify();
                    Message('Reporting action %1', result);
                end;
            }
            action(ReadDatafromBlobfield)

            {

                trigger OnAction()
                begin
                    if Rec.MyField16.HasValue then begin
                        Rec.CalcFields(Rec.MyField16);
                        Rec.MyField16.CreateInStream(instr, TextEncoding::UTF8);
                        instr.ReadText(textData);
                        blobdatavalue := textData;
                        //result := Rec.Modify();
                        Message('Reading the data fro, Blobdata %1', textData);
                    end
                    else
                        Message('No Data');

                end;
            }
        }


    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if Rec.MyField16.HasValue then begin
            Rec.CalcFields(Rec.MyField16);
            Rec.MyField16.CreateInStream(instr, TextEncoding::UTF8);
            instr.ReadText(textData);
            blobdatavalue := textData;
            //result := Rec.Modify();
            Message('Reading the data fro, Blobdata %1', textData);
        end
        else
            Message('No Data');
    end;

    var
        myInt: Integer;
        cu: Codeunit pvnCodeunit;
        emptableobj: Record PvnEmployeeTable;
        out: OutStream;
        result: Boolean;
        instr: InStream;
        textData: Text;

        blobdatavalue: Text;

}

