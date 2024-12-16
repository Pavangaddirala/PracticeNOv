
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
            part(part9; pvnPagepart)
            {
                Caption = 'PVN Page Part practice';
                SubPageLink = "Employee ID" = field("Employee ID");
                ApplicationArea = all;

            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'My List Action';
                trigger OnAction()
                begin
                    Message('Action called');
                end;
            }
            action(FindFirstLastActions)
            {

                trigger OnAction()
                var
                    Employeeobj: Record PvnEmployeeTable;
                    result: Boolean;
                begin
                    if Employeeobj.FindFirst() then Message('Find first Action called Emp ID is %1\ Emp Name is %2', Employeeobj."Employee ID", Employeeobj."Employye Name");
                    if Employeeobj.FindLast() then Message('Find Last Action called %1 %2', Employeeobj."Employee ID", Employeeobj."Employye Name");
                end;
            }
            action(FindActions)
            {

                trigger OnAction()
                var
                    Employeeobj: Record PvnEmployeeTable;
                    result: Boolean;
                begin

                    Employeeobj."Employee ID" := 100;
                    if Employeeobj.Find('=') then begin
                        Message('Find  Action called.Hey Record found!.  %1: ', Employeeobj."Employye Name");
                    end else begin
                        Message('Oh! Record is not found!.  %1: ', Employeeobj."Employee ID");
                    end;


                end;
            }
            action(GetAction)
            {
                // Get method is used for Primary Key field values only.
                trigger OnAction()
                var
                    Employeeobj: Record PvnEmployeeTable;
                    result: Boolean;
                begin

                    Employeeobj."Employee ID" := 100;
                    result := Employeeobj.Get(Employeeobj."Employee ID");  // assigning the result value
                    if result then begin
                        Message('Get  Action called.Hey Record found!.  %1: ', Employeeobj."Employye Name");
                    end else begin
                        Message('Oh! Record is not found!.  %1: ', Employeeobj."Employee ID");
                    end;


                end;
            }
            action(FindSetaction)
            {
                trigger OnAction()
                var
                    Employeeobj: Record PvnEmployeeTable;
                    result: Boolean;
                    customerref: RecordRef;
                    fieldref: FieldRef;
                    customerobj: Record Customer;
                begin

                    Employeeobj."Employye Name" := 'Pavan';
                    result := Employeeobj.FindSet();  // assigning the result value
                    if result then begin

                        repeat begin
                            Message('Findset  Action called.Hey Record found!.  %1: ', Employeeobj."Employee ID");
                        end until Employeeobj.Next() = 0;
                    end else begin
                        Message('Oh! Record is not found!.  %1: ', Employeeobj."Employee ID");
                    end;


                end;
            }
            action(SetRangeaction)
            {
                trigger OnAction()
                var
                    Employeeobj: Record PvnEmployeeTable;
                    result: Boolean;
                    customerref: RecordRef;
                    fieldref: FieldRef;
                    customerobj: Record Customer;
                begin

                    Employeeobj.SetRange("Employye Name", 'Pavan');
                    result := Employeeobj.FindSet(true);  // assigning the result value
                    if result then begin

                        repeat begin
                            Message('Findset  Action called.Hey Record found!.  %1: ', Employeeobj."Employee ID");
                        end until Employeeobj.Next() = 0;
                    end else begin
                        Message('Oh! Record is not found!.  %1: ', Employeeobj."Employee ID");
                    end;


                end;
            }
            group(FiltersGroup)
            {
                action(SetFilteraction)
                {
                    trigger OnAction()
                    var
                        Employeeobj: Record PvnEmployeeTable;
                        result: Boolean;
                        customerref: RecordRef;
                        fieldref: FieldRef;
                        customerobj: Record Customer;
                    begin


                        Employeeobj.SetFilter("Employee ID", '<>%1', 100);  // assigning the result value
                        Employeeobj.SetFilter("Employye Name", '<>%1', 'Pav*');  // assigning the result value
                        result := Employeeobj.FindSet();
                        if result then begin

                            repeat begin
                                Message('SetFilter  called. %1: ', Employeeobj."Employye Name");
                            end until Employeeobj.Next() = 0;
                        end else begin
                            Message('Oh! Record is not found!.  %1: ', Employeeobj."Employee ID");
                        end;


                    end;
                }
                group(CRUD)
                {
                    action("Insert/Create")
                    {
                        Image = "Customer";
                        AboutText = 'Creating the customer';
                        trigger OnAction()
                        var
                            customerobj: Record Customer;
                            result: Boolean;
                        begin
                            customerobj.Init();
                            customerobj."No." := Format(Random(5555));
                            customerobj.Name := 'Srinivas';
                            customerobj."Mobile Phone No." := '7894654651';
                            customerobj."E-Mail" := 'srini@gmail.com';
                            customerobj.City := 'Hyd';

                            result := customerobj.Get(customerobj."No.");
                            if result then begin
                                Message('Oh No.Customer is already existed in DB');

                            end else begin
                                result := customerobj.Insert();
                                if result then begin
                                    Message('Hurray! :)  Customer created successfully!');
                                end else begin
                                    Message('Sorry! :)  Customer is not created!');
                                end;
                            end;

                            // Second way of inserting the data
                            // Suggested way
                            Clear(customerobj);
                            customerobj.Init();

                            customerobj.Validate("No.", Format(Random(21364)));  // Validate() executes the field level trigger
                            customerobj.Validate("Name", 'Name is KHAN');
                            customerobj.Validate("Mobile Phone No.", '4984894566');

                            result := customerobj.Get(customerobj."No.");
                            if result then begin
                                Message('Oh No.Customer is already existed in DB');

                            end else begin
                                result := customerobj.Insert(true); // if we put TRUE it will execute the ONINSERT Trigger in the Table obj.
                                if result then begin
                                    Message('Hurray! :)  Customer created successfully!');
                                end else begin
                                    Message('Sorry! :)  Customer is not created!');
                                end;
                            end;


                            ;
                        end;
                    }
                    action(ModifyCustomer)
                    {
                        Image = UpdateXML;
                        trigger OnAction()
                        var
                            custobj: Record PvnEmployeeTable;
                            result: Boolean;
                        begin
                            custobj.Get(Rec."Employee ID"); // If we dont which record we selected inthe list from BC.for that "REC".
                            //custobj."No." := '100';   
                            custobj.Salary := '555555';
                            result := custobj.Modify(true);
                            if result then begin
                                Message('Updated the customer %1', Rec."Employee ID");
                            end else begin
                                Message('not updated the customer');
                            end;
                        end;
                    }
                    action(DeleteCustomer)
                    {
                        Image = Delete;
                        trigger OnAction()
                        var
                            custobj: Record PvnEmployeeTable;
                            result: Boolean;
                        begin
                            custobj.Get(Rec."Employee ID"); // If we dont which record we selected inthe list from BC.for that "REC".



                            result := Confirm('Are you sure?');
                            if result then begin
                                result := custobj.Delete();
                                if result then begin
                                    Message('Deeleted the customer %1', Rec."Employee ID");
                                end;
                            end else begin
                                Message('not deleted the customer');
                            end;
                        end;
                    }
                }
            }
        }
    }
}