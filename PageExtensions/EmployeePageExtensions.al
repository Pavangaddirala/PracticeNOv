
pageextension 50102 EmployeePageExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Blocked)
        {
            field(MyField; Rec.pvnCustomerField)
            {
                ApplicationArea = all;
            }
        }
        addbefore("Address 2")
        {
            field(MyField1; Rec.pvnfield5)
            {
                ApplicationArea = all;
            }

        }
        addlast(Balance)
        {
            field(Myfield3; Rec.pvnfield7)
            {
                ApplicationArea = all;

            }
        }
    }


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}