
table 50110 StudentMarksTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Subject; Text[15])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Marks; Integer)
        {
            DataClassification = ToBeClassified;


        }
        field(4; pk; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; pk)
        {
            //Clustered = true;
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