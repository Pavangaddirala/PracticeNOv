tableextension 50102 pvnEmployeeTableExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50103; pvnCustomerField; Text[30])
        {

            DataClassification = ToBeClassified;
        }
        field(50104; pvnfield7; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50105; pvnfield4; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(50106; pvnfield5; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50107; pvnfield6; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}