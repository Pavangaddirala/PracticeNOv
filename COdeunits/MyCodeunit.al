
codeunit 50103 pvnCodeunit
{
    Subtype = Normal;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;

    /// <summary>
    /// 
    /// </summary>
    procedure MyfirstProcedure()
    var
        myInt: Integer;
    begin
        Message('Calling the first code unit procedure');
    end;

    procedure AdditionProcedure()
    var
        myInt: Integer;
        v1: Integer;
        result: Integer;
    begin
        v1 := 10;
        myInt := 25;
        result := v1 + myInt;
        Message('Result is %1', result);
    end;
}