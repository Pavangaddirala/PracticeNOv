
table 50107 pvnEmployeeSalaryTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Employee Name"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Total Salary"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum(pvnSalaryDisplaytable.Salary where(ID = field("Employee ID")));
        }
        field(4; Avg; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = average(pvnSalaryDisplaytable.Salary where(ID = field("Employee ID")));
        }
        field(5; "Total Entries"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(pvnSalaryDisplaytable where(ID = field("Employee ID")));
        }
        field(6; "Max"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = max(pvnSalaryDisplaytable.Salary where(ID = field("Employee ID")));
        }
        field(7; "Min"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = min(pvnSalaryDisplaytable.Salary where(ID = field("Employee ID")));
        }

    }



    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}