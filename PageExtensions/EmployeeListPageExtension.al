
pageextension 50103 EmployeeLIstPageExt extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Responsibility Center")
        {
            field(myfield1; Rec.pvnCustomerField)
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
