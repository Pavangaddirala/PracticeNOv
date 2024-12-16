
page 50100 PvnEmployeePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = PvnEmployeeTable;

    layout
    {

        area(Content)
        {

            group(GroupName)
            {
                Caption = 'Employee Base Details';
                field(EmployeeID; Rec."Employee ID")
                {
                    Caption = 'Employee Unique ID:';
                    ApplicationArea = all;
                    TableRelation = Customer;
                    ShowMandatory = true;
                    NotBlank = true;

                }
                field(NAME; Rec."Employye Name")
                {
                    ApplicationArea = all;
                }
                field(Designation; Rec.Designation)
                {
                    ApplicationArea = all;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo; Rec.PhoneNumber)
                {
                    ApplicationArea = all;
                    ShowMandatory = true;
                    NotBlank = true;
                    ExtendedDatatype = PhoneNo;
                }
                field(Wages; Rec.Salary)
                {
                    ApplicationArea = all;
                }
            }
            group(Project)
            {
                Caption = 'Employee Project Details';
                field(EmployeeID1; Rec.Field9)
                {
                    ApplicationArea = all;
                }
                field(NAME2; Rec.Field10)
                {
                    Caption = 'Field 10';
                    ApplicationArea = all;
                }
                field(Designation3; Rec.Field11)
                {
                    ApplicationArea = all;
                }
                field(Location4; Rec.Field12)
                {
                    ApplicationArea = all;
                }
                field(PhoneNo5; Rec.PhoneNumber)
                {
                    ApplicationArea = all;
                }
                field(Wages6; Rec.Field14)
                {
                    ApplicationArea = all;
                }
            }
            group(Payments)
            {
                field(Field9; Rec.UserPassword)
                {

                    ApplicationArea = all;
                    ExtendedDatatype = Masked; // It shows dots to hide the actual value for ex: Password

                }
                field(countyField; Rec.MyField17)

                {
                    Caption = 'Country';
                    ApplicationArea = all;
                    TableRelation = "Country/Region";
                }
                field(Dropdown; Rec.MyField18)
                {
                    Caption = 'Dropdown';
                    ApplicationArea = all;

                }
                field(field12; Rec.MyField19)
                {
                    ApplicationArea = all;


                }
            }
            group(ShiftAllowances)
            {
                field(sum; Rec.Max)
                {
                    Caption = 'Max';
                    ApplicationArea = all;
                }
                field(field14; Rec.MIn)
                {
                    Caption = 'Min';
                    ApplicationArea = all;
                }
                field(field15; Rec.Sum)
                {
                    Caption = 'Sum';
                    ApplicationArea = all;
                }
                field(fiel16; blobdatavalue)
                {
                    Caption = 'NO Data Type/Blob Value';

                    ApplicationArea = all;
                }
                field(fiel17; Rec."iS exist?")
                {
                    Caption = 'Is exist?';

                    ApplicationArea = all;
                }
            }


        }
        area(FactBoxes)
        {
            part(part; "Item Picture")
            {

                ApplicationArea = all;
            }
            part(part1; "My Customers")
            {

                ApplicationArea = all;
            }
            part(part2; pvnPagepart)
            {
                Caption = 'Employee Card Page Part';
                SubPageLink = "Employee ID" = field("Employee ID");

                ApplicationArea = all;
            }

            systempart(Links; Links)
            {
                ApplicationArea = All;

            }

            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ProcessingActon)
            {

                trigger OnAction()
                begin
                    Message('Processing action');
                end;

            }
            action(codeunitprocdedurecalling)
            {
                trigger OnAction()
                begin
                    cu.MyfirstProcedure();

                end;
            }
            action(FlowFieldSUm)
            {
                trigger OnAction()
                begin
                    cu.AdditionProcedure();
                end;
            }
            action(Sumnumbers)
            {

                trigger OnAction()
                var
                    employeetable: Record PvnEmployeeTable;
                begin
                    employeetable.Get(employeetable."Employee ID");
                    Message(Format(employeetable.Sum));

                end;
            }

            action(MAx)
            {
                trigger OnAction()
                begin
                    cu.AdditionProcedure();
                end;
            }

        }
        area(Creation)
        {
            action(CreationAction)
            {

                trigger OnAction()
                begin
                    Message('Create action');
                end;
            }
        }
        area(Navigation)
        {
            action(NavigationAction)
            {

                trigger OnAction()
                begin
                    Message('Navigation action');
                end;
            }
        }
        area(Reporting)
        {
            action(InsertDataFieldintoBlobfield)
            {

                trigger OnAction()
                begin
                    Rec.MyField16.CreateOutStream(out, TextEncoding::UTF8);
                    out.WriteText(' Hi This is Pavan');
                    result := Rec.Modify();
                    Message('Reporting action %1', result);
                end;
            }
            action(ReadDatafromBlobfield)

            {

                trigger OnAction()
                begin
                    if Rec.MyField16.HasValue then begin
                        Rec.CalcFields(Rec.MyField16);
                        Rec.MyField16.CreateInStream(instr, TextEncoding::UTF8);
                        instr.ReadText(textData);
                        blobdatavalue := textData;
                        //result := Rec.Modify();
                        Message('Reading the data fro, Blobdata %1', textData);
                    end
                    else
                        Message('No Data');

                end;
            }
            action(WEBAPI)

            {
                Caption = 'WEB API';

                trigger OnAction()
                var
                    httpclientobj: HttpClient;
                    httprequestobj: HttpRequestMessage;
                    httpcontentobj: HttpContent;
                    httpresponseobj: HttpResponseMessage;
                    result: Boolean;

                begin
                    // One method to call the API
                    result := httpclientobj.Get('https://dummyjson.com/users', httpresponseobj);

                    if result = true then begin
                        httpresponseobj.Content().ReadAs(returndata);
                        Message('HTTP Data Result %1', returndata);
                    end else begin
                        Message('HTTP call is failed');
                    end;


                    //Second method to call the API
                    httprequestobj.SetRequestUri('https://dummyjson.com/users');
                    httprequestobj.Method := 'GET';
                    result := httpclientobj.Send(httprequestobj, httpresponseobj);

                    if result = true then begin
                        httpresponseobj.Content().ReadAs(returndata);
                        Message('HTTP Data Result %1', returndata);
                    end else begin
                        Message('HTTP call is failed');
                    end;

                end;
            }
            action(JSONData)
            {
                Caption = 'Working with JSON';
                trigger OnAction()
                var
                    jsonArray: JsonArray;
                    jsonobject: JsonObject;
                    jsonToken: JsonToken;
                    jsonValue: JsonValue;
                    count: Integer;
                    jsonapitable: record JSONAPI;
                begin
                    Clear(jsonobject);

                    jsonobject.ReadFrom(returndata);
                    jsonobject.Get('users', jsonToken);

                    if jsonToken.IsArray then begin
                        jsonArray := jsonToken.AsArray();


                        for count := 0 to jsonArray.Count() - 1 do begin // why -1 is it has total count is greater than count value.
                            jsonArray.Get(count, jsonToken);
                            Clear(jsonapitable);
                            jsonapitable.Init();
                            if jsonToken.IsObject then begin
                                jsonobject := jsonToken.AsObject();
                                Clear(jsonToken);

                                jsonobject.Get('id', jsonToken);
                                if jsonToken.IsValue then begin
                                    jsonapitable.ID := jsonToken.AsValue().AsInteger();
                                end;

                                jsonobject.Get('firstName', jsonToken);
                                if jsonToken.IsValue then begin
                                    jsonapitable.Name := jsonToken.AsValue().AsText();
                                end;

                                jsonobject.Get('phone', jsonToken);
                                if jsonToken.IsValue then begin
                                    jsonapitable.PhoneNumber := jsonToken.AsValue().AsText();
                                end;

                                jsonobject.Get('email', jsonToken);
                                if jsonToken.IsValue then begin
                                    jsonapitable.Email := jsonToken.AsValue().AsText();
                                end;
                            end;
                            if jsonapitable.Insert() then begin
                                Message('JSON DATA records are inserted....');
                            end else begin
                                Message('Records insertion failed');

                            end;


                        end;

                    end;
                end;
            }
            action(APICALLwithJSONData)
            {
                Caption = 'API call and Reading the JSON with Objects';
                Image = Web;
                trigger OnAction()
                var
                    Httpclientobj: HttpClient;
                    httpresoinseobj: HttpContent;
                    httpheadersobj: HttpHeaders;
                    httpRequestobj: HttpRequestMessage;
                    httpResponseobj: HttpResponseMessage;
                    resultData: Text;
                    status: Boolean;
                    count: Integer;
                    apitable: Record JSONAPI;
                begin
                    status := Httpclientobj.Get('https://dummyjson.com/products', httpResponseobj);
                    if status then begin
                        httpResponseobj.Content.ReadAs(resultData);
                        Message('API DATA is %1', resultData);

                        // JSON data
                        jsonobjectobj.ReadFrom(resultData);
                        status := jsonobjectobj.Get('products', jsontokenobj);


                        Clear(apitable);
                        apitable.DeleteAll();
                        apitable.Init();

                        if status then begin
                            if jsontokenobj.IsArray then begin
                                jsonarrayobj := jsontokenobj.AsArray();

                                for count := 0 to jsonarrayobj.Count - 1 do begin
                                    Clear(jsontokenobj);
                                    status := jsonarrayobj.Get(count, jsontokenobj);

                                    if status then begin
                                        if jsontokenobj.IsObject then begin
                                            jsonobjectobj := jsontokenobj.AsObject();

                                            status := jsonobjectobj.Get('id', jsontokenobj);
                                            if status then begin
                                                if jsontokenobj.IsValue then begin
                                                    apitable.ID := jsontokenobj.AsValue.AsInteger();
                                                end;
                                            end else begin
                                                Message('');
                                            end;

                                            status := jsonobjectobj.Get('sku', jsontokenobj);
                                            if status then begin
                                                if jsontokenobj.IsValue then begin
                                                    apitable.Name := jsontokenobj.AsValue.AsText();
                                                end;
                                            end else begin
                                                Message('');
                                            end;

                                        end;
                                    end else begin
                                    end;
                                    status := apitable.Insert();
                                    if status then begin
                                        Message('Data inserted');
                                    end else begin
                                        Message('Insertion failed');
                                    end;
                                    ;
                                end
                                ;

                            end;
                        end else begin
                            Message('Failure to call Json data ');
                        end;
                        ;

                    end else begin
                        Message('Call failed');
                    end;
                end;
            }
        }


    }
    // trigger OnOpenPage()
    // var
    //     myInt: Integer;
    // begin
    //     if Rec.MyField16.HasValue then begin
    //         Rec.CalcFields(Rec.MyField16);
    //         Rec.MyField16.CreateInStream(instr, TextEncoding::UTF8);
    //         instr.ReadText(textData);
    //         blobdatavalue := textData;
    //         //result := Rec.Modify();
    //         Message('Reading the data fro, Blobdata %1', textData);
    //     end
    //     else
    //         Message('No Data');
    // end;

    var
        myInt: Integer;
        cu: Codeunit pvnCodeunit;
        emptableobj: Record PvnEmployeeTable;
        out: OutStream;
        result: Boolean;
        instr: InStream;
        textData: Text;
        objcustomer: Record Customer;
        blobdatavalue: Text;

        objitem: Record Item;
        returndata: Text;
        jsonarrayobj: JsonArray;
        jsonobjectobj: JsonObject;
        jsontokenobj: JsonToken;
        jsponvalue: JsonValue;


}

