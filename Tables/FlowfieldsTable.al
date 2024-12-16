
table 50108 pvnSalaryDisplaytable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            // TableRelation = pvnEmployeeSalaryTable;
        }
        field(2; "Month"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Salary"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "pk"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(pk; pk)
        {
            Clustered = true;
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