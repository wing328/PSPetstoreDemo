# petstore.petstore/Api.FakeApi

All URIs are relative to *http://petstore.swagger.io:80/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-FakeHealthGet**](FakeApi.md#Invoke-FakeHealthGet) | **GET** /fake/health | Health check endpoint
[**Invoke-FakeOuterBooleanSerialize**](FakeApi.md#Invoke-FakeOuterBooleanSerialize) | **POST** /fake/outer/boolean | 
[**Invoke-FakeOuterCompositeSerialize**](FakeApi.md#Invoke-FakeOuterCompositeSerialize) | **POST** /fake/outer/composite | 
[**Invoke-FakeOuterNumberSerialize**](FakeApi.md#Invoke-FakeOuterNumberSerialize) | **POST** /fake/outer/number | 
[**Invoke-FakeOuterStringSerialize**](FakeApi.md#Invoke-FakeOuterStringSerialize) | **POST** /fake/outer/string | 
[**Test-BodyWithFileSchema**](FakeApi.md#Test-BodyWithFileSchema) | **PUT** /fake/body-with-file-schema | 
[**Test-BodyWithQueryParams**](FakeApi.md#Test-BodyWithQueryParams) | **PUT** /fake/body-with-query-params | 
[**Test-ClientModel**](FakeApi.md#Test-ClientModel) | **PATCH** /fake | To test &quot;&quot;client&quot;&quot; model
[**Test-EndpointParameters**](FakeApi.md#Test-EndpointParameters) | **POST** /fake | Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
[**Test-EnumParameters**](FakeApi.md#Test-EnumParameters) | **GET** /fake | To test enum parameters
[**Test-GroupParameters**](FakeApi.md#Test-GroupParameters) | **DELETE** /fake | Fake endpoint to test group parameters (optional)
[**Test-InlineAdditionalProperties**](FakeApi.md#Test-InlineAdditionalProperties) | **POST** /fake/inline-additionalProperties | test inline additionalProperties
[**Test-JsonFormData**](FakeApi.md#Test-JsonFormData) | **GET** /fake/jsonFormData | test json serialization of form data
[**Test-QueryParameterCollectionFormat**](FakeApi.md#Test-QueryParameterCollectionFormat) | **PUT** /fake/test-query-parameters | 
[**Test-UniqueItemsHeaderAndQueryParameterCollectionFormat**](FakeApi.md#Test-UniqueItemsHeaderAndQueryParameterCollectionFormat) | **PUT** /fake/test-unique-parameters | 


<a name="Invoke-FakeHealthGet"></a>
# **Invoke-FakeHealthGet**
> HealthCheckResult Invoke-FakeHealthGet<br>

Health check endpoint

### Example
```powershell

# Health check endpoint
try {
    $Result = Invoke-FakeHealthGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-FakeHealthGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheckResult**](HealthCheckResult.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-FakeOuterBooleanSerialize"></a>
# **Invoke-FakeOuterBooleanSerialize**
> Boolean Invoke-FakeOuterBooleanSerialize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[Boolean]><br>



Test serialization of outer boolean types

### Example
```powershell
$Body = $true # Boolean | Input boolean as post body (optional)

try {
    $Result = Invoke-FakeOuterBooleanSerialize -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-FakeOuterBooleanSerialize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **Boolean**| Input boolean as post body | [optional] 

### Return type

**Boolean**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-FakeOuterCompositeSerialize"></a>
# **Invoke-FakeOuterCompositeSerialize**
> OuterComposite Invoke-FakeOuterCompositeSerialize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OuterComposite] <PSCustomObject><br>



Test serialization of object with outer number type

### Example
```powershell
$OuterComposite = Initialize-OuterComposite -MyNumber 0 -MyString "MyMyString" -MyBoolean $false # OuterComposite | Input composite as post body (optional)

try {
    $Result = Invoke-FakeOuterCompositeSerialize -OuterComposite $OuterComposite
} catch {
    Write-Host ("Exception occurred when calling Invoke-FakeOuterCompositeSerialize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OuterComposite** | [**OuterComposite**](OuterComposite.md)| Input composite as post body | [optional] 

### Return type

[**OuterComposite**](OuterComposite.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-FakeOuterNumberSerialize"></a>
# **Invoke-FakeOuterNumberSerialize**
> Decimal Invoke-FakeOuterNumberSerialize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.Nullable[Decimal]><br>



Test serialization of outer number types

### Example
```powershell
$Body = 8.14 # Decimal | Input number as post body (optional)

try {
    $Result = Invoke-FakeOuterNumberSerialize -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-FakeOuterNumberSerialize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **Decimal**| Input number as post body | [optional] 

### Return type

**Decimal**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-FakeOuterStringSerialize"></a>
# **Invoke-FakeOuterStringSerialize**
> String Invoke-FakeOuterStringSerialize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <String><br>



Test serialization of outer string types

### Example
```powershell
$Body = "MyBody" # String | Input string as post body (optional)

try {
    $Result = Invoke-FakeOuterStringSerialize -Body $Body
} catch {
    Write-Host ("Exception occurred when calling Invoke-FakeOuterStringSerialize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Body** | **String**| Input string as post body | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BodyWithFileSchema"></a>
# **Test-BodyWithFileSchema**
> void Test-BodyWithFileSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileSchemaTestClass] <PSCustomObject><br>



For this test, the body for this request much reference a schema named `File`.

### Example
```powershell
$File = Initialize-File -SourceURI "MySourceURI"
$FileSchemaTestClass = Initialize-FileSchemaTestClass -File $File -Files $File # FileSchemaTestClass | 

try {
    $Result = Test-BodyWithFileSchema -FileSchemaTestClass $FileSchemaTestClass
} catch {
    Write-Host ("Exception occurred when calling Test-BodyWithFileSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FileSchemaTestClass** | [**FileSchemaTestClass**](FileSchemaTestClass.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-BodyWithQueryParams"></a>
# **Test-BodyWithQueryParams**
> void Test-BodyWithQueryParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>



### Example
```powershell
$Query = "MyQuery" # String | 
$User = Initialize-User -Id 0 -Username "MyUsername" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Password "MyPassword" -Phone "MyPhone" -UserStatus 0 -ArbitraryObject  -ArbitraryNullableObject  -ArbitraryTypeValue  -ArbitraryNullableTypeValue # User | 

try {
    $Result = Test-BodyWithQueryParams -Query $Query -User $User
} catch {
    Write-Host ("Exception occurred when calling Test-BodyWithQueryParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | **String**|  | 
 **User** | [**User**](User.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-ClientModel"></a>
# **Test-ClientModel**
> Client Test-ClientModel<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Client] <PSCustomObject><br>

To test ""client"" model

To test ""client"" model

### Example
```powershell
$Client = Initialize-Client -Client "MyClient" # Client | client model

# To test ""client"" model
try {
    $Result = Test-ClientModel -Client $Client
} catch {
    Write-Host ("Exception occurred when calling Test-ClientModel: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Client** | [**Client**](Client.md)| client model | 

### Return type

[**Client**](Client.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-EndpointParameters"></a>
# **Test-EndpointParameters**
> void Test-EndpointParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Number] <Decimal><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Double] <Double><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatternWithoutDelimiter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Byte] <SystemByte><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Integer] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Int32] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Int64] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Float] <System.Nullable[Double]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-String] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Binary] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DateTime] <System.Nullable[System.DateTime]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Password] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Callback] <String><br>

Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 

Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: http_basic_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$Number = 8.14 # Decimal | None
$Double = 1.2 # Double | None
$PatternWithoutDelimiter = "MyPatternWithoutDelimiter" # String | None
$Byte =  # SystemByte | None
$Integer = 56 # Int32 | None (optional)
$Int32 = 56 # Int32 | None (optional)
$Int64 = 789 # Int64 | None (optional)
$Float = 3.4 # Double | None (optional)
$String = "MyString" # String | None (optional)
$Binary =  # System.IO.FileInfo | None (optional)
$Date = (Get-Date) # System.DateTime | None (optional)
$DateTime = (Get-Date) # System.DateTime | None (optional)
$Password = "MyPassword" # String | None (optional)
$Callback = "MyCallback" # String | None (optional)

# Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트 
try {
    $Result = Test-EndpointParameters -Number $Number -Double $Double -PatternWithoutDelimiter $PatternWithoutDelimiter -Byte $Byte -Integer $Integer -Int32 $Int32 -Int64 $Int64 -Float $Float -String $String -Binary $Binary -Date $Date -DateTime $DateTime -Password $Password -Callback $Callback
} catch {
    Write-Host ("Exception occurred when calling Test-EndpointParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Number** | **Decimal**| None | 
 **Double** | **Double**| None | 
 **PatternWithoutDelimiter** | **String**| None | 
 **Byte** | **SystemByte**| None | 
 **Integer** | **Int32**| None | [optional] 
 **Int32** | **Int32**| None | [optional] 
 **Int64** | **Int64**| None | [optional] 
 **Float** | **Double**| None | [optional] 
 **String** | **String**| None | [optional] 
 **Binary** | **System.IO.FileInfo****System.IO.FileInfo**| None | [optional] 
 **Date** | **System.DateTime**| None | [optional] 
 **DateTime** | **System.DateTime**| None | [optional] 
 **Password** | **String**| None | [optional] 
 **Callback** | **String**| None | [optional] 

### Return type

void (empty response body)

### Authorization

[http_basic_test](../README.md#http_basic_test)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-EnumParameters"></a>
# **Test-EnumParameters**
> void Test-EnumParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumHeaderStringArray] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumHeaderString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumQueryStringArray] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumQueryString] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumQueryInteger] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumQueryDouble] <System.Nullable[Double]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumFormStringArray] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnumFormString] <String><br>

To test enum parameters

To test enum parameters

### Example
```powershell
$EnumHeaderStringArray = ">" # String[] | Header parameter enum test (string array) (optional)
$EnumHeaderString = "_abc" # String | Header parameter enum test (string) (optional) (default to "-efg")
$EnumQueryStringArray = ">" # String[] | Query parameter enum test (string array) (optional)
$EnumQueryString = "_abc" # String | Query parameter enum test (string) (optional) (default to "-efg")
$EnumQueryInteger = "1" # Int32 | Query parameter enum test (double) (optional)
$EnumQueryDouble = "1.1" # Double | Query parameter enum test (double) (optional)
$EnumFormStringArray = ">" # String[] | Form parameter enum test (string array) (optional) (default to "$")
$EnumFormString = "_abc" # String | Form parameter enum test (string) (optional) (default to "-efg")

# To test enum parameters
try {
    $Result = Test-EnumParameters -EnumHeaderStringArray $EnumHeaderStringArray -EnumHeaderString $EnumHeaderString -EnumQueryStringArray $EnumQueryStringArray -EnumQueryString $EnumQueryString -EnumQueryInteger $EnumQueryInteger -EnumQueryDouble $EnumQueryDouble -EnumFormStringArray $EnumFormStringArray -EnumFormString $EnumFormString
} catch {
    Write-Host ("Exception occurred when calling Test-EnumParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EnumHeaderStringArray** | [**String[]**](String.md)| Header parameter enum test (string array) | [optional] 
 **EnumHeaderString** | **String**| Header parameter enum test (string) | [optional] [default to &quot;-efg&quot;]
 **EnumQueryStringArray** | [**String[]**](String.md)| Query parameter enum test (string array) | [optional] 
 **EnumQueryString** | **String**| Query parameter enum test (string) | [optional] [default to &quot;-efg&quot;]
 **EnumQueryInteger** | **Int32**| Query parameter enum test (double) | [optional] 
 **EnumQueryDouble** | **Double**| Query parameter enum test (double) | [optional] 
 **EnumFormStringArray** | [**String[]**](String.md)| Form parameter enum test (string array) | [optional] [default to &quot;$&quot;]
 **EnumFormString** | **String**| Form parameter enum test (string) | [optional] [default to &quot;-efg&quot;]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-GroupParameters"></a>
# **Test-GroupParameters**
> void Test-GroupParameters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequiredStringGroup] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequiredBooleanGroup] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequiredInt64Group] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StringGroup] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BooleanGroup] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Int64Group] <System.Nullable[Int64]><br>

Fake endpoint to test group parameters (optional)

Fake endpoint to test group parameters (optional)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: bearer_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"

$RequiredStringGroup = 56 # Int32 | Required String in group parameters
$RequiredBooleanGroup = $true # Boolean | Required Boolean in group parameters
$RequiredInt64Group = 789 # Int64 | Required Integer in group parameters
$StringGroup = 56 # Int32 | String in group parameters (optional)
$BooleanGroup = $true # Boolean | Boolean in group parameters (optional)
$Int64Group = 789 # Int64 | Integer in group parameters (optional)

# Fake endpoint to test group parameters (optional)
try {
    $Result = Test-GroupParameters -RequiredStringGroup $RequiredStringGroup -RequiredBooleanGroup $RequiredBooleanGroup -RequiredInt64Group $RequiredInt64Group -StringGroup $StringGroup -BooleanGroup $BooleanGroup -Int64Group $Int64Group
} catch {
    Write-Host ("Exception occurred when calling Test-GroupParameters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequiredStringGroup** | **Int32**| Required String in group parameters | 
 **RequiredBooleanGroup** | **Boolean**| Required Boolean in group parameters | 
 **RequiredInt64Group** | **Int64**| Required Integer in group parameters | 
 **StringGroup** | **Int32**| String in group parameters | [optional] 
 **BooleanGroup** | **Boolean**| Boolean in group parameters | [optional] 
 **Int64Group** | **Int64**| Integer in group parameters | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer_test](../README.md#bearer_test)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-InlineAdditionalProperties"></a>
# **Test-InlineAdditionalProperties**
> void Test-InlineAdditionalProperties<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

test inline additionalProperties



### Example
```powershell
$RequestBody = @{ key_example = "MyInner" } # System.Collections.Hashtable | request body

# test inline additionalProperties
try {
    $Result = Test-InlineAdditionalProperties -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Test-InlineAdditionalProperties: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**System.Collections.Hashtable**](String.md)| request body | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-JsonFormData"></a>
# **Test-JsonFormData**
> void Test-JsonFormData<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Param] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Param2] <String><br>

test json serialization of form data



### Example
```powershell
$Param = "MyParam" # String | field1
$Param2 = "MyParam2" # String | field2

# test json serialization of form data
try {
    $Result = Test-JsonFormData -Param $Param -Param2 $Param2
} catch {
    Write-Host ("Exception occurred when calling Test-JsonFormData: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Param** | **String**| field1 | 
 **Param2** | **String**| field2 | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-QueryParameterCollectionFormat"></a>
# **Test-QueryParameterCollectionFormat**
> void Test-QueryParameterCollectionFormat<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pipe] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Ioutil] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Http] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Url] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Context] <String[]><br>



To test the collection format in query parameters

### Example
```powershell
$Pipe = "MyPipe" # String[] | 
$Ioutil = "MyIoutil" # String[] | 
$Http = "MyHttp" # String[] | 
$Url = "MyUrl" # String[] | 
$Context = "MyContext" # String[] | 

try {
    $Result = Test-QueryParameterCollectionFormat -Pipe $Pipe -Ioutil $Ioutil -Http $Http -Url $Url -Context $Context
} catch {
    Write-Host ("Exception occurred when calling Test-QueryParameterCollectionFormat: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Pipe** | [**String[]**](String.md)|  | 
 **Ioutil** | [**String[]**](String.md)|  | 
 **Http** | [**String[]**](String.md)|  | 
 **Url** | [**String[]**](String.md)|  | 
 **Context** | [**String[]**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-UniqueItemsHeaderAndQueryParameterCollectionFormat"></a>
# **Test-UniqueItemsHeaderAndQueryParameterCollectionFormat**
> Pet[] Test-UniqueItemsHeaderAndQueryParameterCollectionFormat<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-QueryUnique] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HeaderUnique] <String[]><br>



To test unique items in header and query parameters

### Example
```powershell
$QueryUnique = "MyQueryUnique" # String[] | 
$HeaderUnique = "MyHeaderUnique" # String[] | 

try {
    $Result = Test-UniqueItemsHeaderAndQueryParameterCollectionFormat -QueryUnique $QueryUnique -HeaderUnique $HeaderUnique
} catch {
    Write-Host ("Exception occurred when calling Test-UniqueItemsHeaderAndQueryParameterCollectionFormat: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **QueryUnique** | [**String[]**](String.md)|  | 
 **HeaderUnique** | [**String[]**](String.md)|  | 

### Return type

[**Pet[]**](Pet.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

