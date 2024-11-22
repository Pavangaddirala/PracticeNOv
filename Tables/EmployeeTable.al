table 50100 PvnEmployeeTable
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Employee ID"; Integer)
        {
            DataClassification = ToBeClassified;


        }
        field(2; "Employye Name"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Designation; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Location; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(5; PhoneNumber; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(6; Salary; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(7; MyField; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; MyField2; Boolean)
        {
            DataClassification = ToBeClassified;
        }





    }

    keys
    {
        key(pk; "Employee ID")
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