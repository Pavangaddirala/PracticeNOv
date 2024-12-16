
table 50109 StudentMasterTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Student Name"; Text[20])
        {
            DataClassification = ToBeClassified;


        }
        field(3; "Total Marks"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum(StudentMarksTable.Marks where(ID = field("Student ID")));



        }

        field(4; "Max Marks"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = max(StudentMarksTable.Marks where(ID = field("Student ID")));


        }
        field(5; "Min Marks"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = min(StudentMarksTable.Marks where(ID = field("Student ID")));


        }
        field(6; "Entries"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(StudentMarksTable where(ID = field("Student ID")));


        }
        field(7; "Avg Marks"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = average(StudentMarksTable.Marks where(ID = field("Student ID")));


        }
        field(8; "Is Passed?"; Boolean)
        {
            FieldClass = FlowField;
            //CalcFormula = sum(StudentMarksTable.Marks where(ID = field("Student ID")));
            CalcFormula = exist(StudentMarksTable where(ID = field("Student ID")));


        }
        field(9; "Extra Field"; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; "Student ID")
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