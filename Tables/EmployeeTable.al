
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
        field(8; UserPassword; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Field9; Enum PvnmyEnum)
        {
            DataClassification = ToBeClassified;
        }
        field(10; Field10; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(11; Field11; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'Yes,NO';
            OptionMembers = "Yes","NO";
        }

        field(12; Field12; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(13; Field14; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; Field15; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(15; MyField19; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(16; MyField18; Text[20])
        {
            DataClassification = ToBeClassified;


        }
        field(17; max; Boolean)
        {
            DataClassification = ToBeClassified;


        }
        field(18; min; Boolean)
        {
            DataClassification = ToBeClassified;


        }
        field(19; "iS exist?"; Blob)
        {
            DataClassification = ToBeClassified;


        }
        field(20; Sum; Integer)
        {
            DataClassification = ToBeClassified;


        }
        field(21; MyField17; Text[30])
        {
            DataClassification = ToBeClassified;


        }
        field(22; MyField16; Blob)
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