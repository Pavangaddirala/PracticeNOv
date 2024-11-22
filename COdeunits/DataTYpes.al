codeunit 50106 Datatypes
{
    trigger OnRun()
    begin

    end;

    procedure DattypeProcedure()

    begin
        myInt := 10;
        mydecimal := 0.5;
        myboolena := true;
        mytext := 'Data types';
    end;

    var
        myInt: Integer;
        mydecimal: Decimal;
        myboolena: Boolean;
        mytext: Text;

        Tablevariable: Record PvnEmployeeTable;
        pagevariable: page "Employee Card";
        codeunitvariable: Codeunit pvnCodeunit;
}