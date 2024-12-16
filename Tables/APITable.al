
table 50112 JSONAPI
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; PhoneNumber; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Email; Text[100])
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(pk; ID)
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