# petstore.petstore/Api.PetApi

All URIs are relative to *http://petstore.swagger.io:80/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-Pet**](PetApi.md#Add-Pet) | **POST** /pet | Add a new pet to the store
[**Invoke-DeletePet**](PetApi.md#Invoke-DeletePet) | **DELETE** /pet/{petId} | Deletes a pet
[**Find-PetsByStatus**](PetApi.md#Find-PetsByStatus) | **GET** /pet/findByStatus | Finds Pets by status
[**Find-PetsByTags**](PetApi.md#Find-PetsByTags) | **GET** /pet/findByTags | Finds Pets by tags
[**Get-PetById**](PetApi.md#Get-PetById) | **GET** /pet/{petId} | Find pet by ID
[**Update-Pet**](PetApi.md#Update-Pet) | **PUT** /pet | Update an existing pet
[**Update-PetWithForm**](PetApi.md#Update-PetWithForm) | **POST** /pet/{petId} | Updates a pet in the store with form data
[**Invoke-UploadFile**](PetApi.md#Invoke-UploadFile) | **POST** /pet/{petId}/uploadImage | uploads an image
[**Invoke-UploadFileWithRequiredFile**](PetApi.md#Invoke-UploadFileWithRequiredFile) | **POST** /fake/{petId}/uploadImageWithRequiredFile | uploads an image (required)


<a name="Add-Pet"></a>
# **Add-Pet**
> void Add-Pet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pet] <PSCustomObject><br>

Add a new pet to the store



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: http_signature_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"
# Configure HttpSignature for authorization :http_signature_test
$httpSigningParams = @{
    KeyId = "xxxxxx1776876789ac747/xxxxxxx564612d31a62c01/xxxxxxxa1d7564612d31a66ee8"
    KeyFilePath = "C:\SecretKey.txt"
    HttpSigningHeader = @("(request-target)","Host","Date","Digest")
    HashAlgorithm = "sha256"
}
Set-ConfigurationHttpSigning $httpSigningParams

# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Category = Initialize-Category -Id 0 -Name "MyName"
$Tag = Initialize-Tag -Id 0 -Name "MyName"
$Pet = Initialize-Pet -Id 0 -Category $Category -Name "doggie" -PhotoUrls "MyPhotoUrls" -Tags $Tag -Status "available" # Pet | Pet object that needs to be added to the store

# Add a new pet to the store
try {
    $Result = Add-Pet -Pet $Pet
} catch {
    Write-Host ("Exception occurred when calling Add-Pet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Pet** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[http_signature_test](../README.md#http_signature_test), [petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeletePet"></a>
# **Invoke-DeletePet**
> void Invoke-DeletePet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApiKey] <String><br>

Deletes a pet



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PetId = 789 # Int64 | Pet id to delete
$ApiKey = "MyApiKey" # String |  (optional)

# Deletes a pet
try {
    $Result = Invoke-DeletePet -PetId $PetId -ApiKey $ApiKey
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeletePet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| Pet id to delete | 
 **ApiKey** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Find-PetsByStatus"></a>
# **Find-PetsByStatus**
> Pet[] Find-PetsByStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String[]><br>

Finds Pets by status

Multiple status values can be provided with comma separated strings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: http_signature_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"
# Configure HttpSignature for authorization :http_signature_test
$httpSigningParams = @{
    KeyId = "xxxxxx1776876789ac747/xxxxxxx564612d31a62c01/xxxxxxxa1d7564612d31a66ee8"
    KeyFilePath = "C:\SecretKey.txt"
    HttpSigningHeader = @("(request-target)","Host","Date","Digest")
    HashAlgorithm = "sha256"
}
Set-ConfigurationHttpSigning $httpSigningParams

# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Status = "available" # String[] | Status values that need to be considered for filter

# Finds Pets by status
try {
    $Result = Find-PetsByStatus -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Find-PetsByStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | [**String[]**](String.md)| Status values that need to be considered for filter | 

### Return type

[**Pet[]**](Pet.md) (PSCustomObject)

### Authorization

[http_signature_test](../README.md#http_signature_test), [petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Find-PetsByTags"></a>
# **Find-PetsByTags**
> Pet[] Find-PetsByTags<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>

Finds Pets by tags

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: http_signature_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"
# Configure HttpSignature for authorization :http_signature_test
$httpSigningParams = @{
    KeyId = "xxxxxx1776876789ac747/xxxxxxx564612d31a62c01/xxxxxxxa1d7564612d31a66ee8"
    KeyFilePath = "C:\SecretKey.txt"
    HttpSigningHeader = @("(request-target)","Host","Date","Digest")
    HashAlgorithm = "sha256"
}
Set-ConfigurationHttpSigning $httpSigningParams

# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Tags = "MyTags" # String[] | Tags to filter by

# Finds Pets by tags
try {
    $Result = Find-PetsByTags -Tags $Tags
} catch {
    Write-Host ("Exception occurred when calling Find-PetsByTags: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Tags** | [**String[]**](String.md)| Tags to filter by | 

### Return type

[**Pet[]**](Pet.md) (PSCustomObject)

### Authorization

[http_signature_test](../README.md#http_signature_test), [petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-PetById"></a>
# **Get-PetById**
> Pet Get-PetById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>

Find pet by ID

Returns a single pet

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: api_key
$Configuration.ApiKey.api_key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.api_key = "Bearer"

$PetId = 789 # Int64 | ID of pet to return

# Find pet by ID
try {
    $Result = Get-PetById -PetId $PetId
} catch {
    Write-Host ("Exception occurred when calling Get-PetById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet to return | 

### Return type

[**Pet**](Pet.md) (PSCustomObject)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Pet"></a>
# **Update-Pet**
> void Update-Pet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pet] <PSCustomObject><br>

Update an existing pet



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: http_signature_test
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"
# Configure HttpSignature for authorization :http_signature_test
$httpSigningParams = @{
    KeyId = "xxxxxx1776876789ac747/xxxxxxx564612d31a62c01/xxxxxxxa1d7564612d31a66ee8"
    KeyFilePath = "C:\SecretKey.txt"
    HttpSigningHeader = @("(request-target)","Host","Date","Digest")
    HashAlgorithm = "sha256"
}
Set-ConfigurationHttpSigning $httpSigningParams

# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Category = Initialize-Category -Id 0 -Name "MyName"
$Tag = Initialize-Tag -Id 0 -Name "MyName"
$Pet = Initialize-Pet -Id 0 -Category $Category -Name "doggie" -PhotoUrls "MyPhotoUrls" -Tags $Tag -Status "available" # Pet | Pet object that needs to be added to the store

# Update an existing pet
try {
    $Result = Update-Pet -Pet $Pet
} catch {
    Write-Host ("Exception occurred when calling Update-Pet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Pet** | [**Pet**](Pet.md)| Pet object that needs to be added to the store | 

### Return type

void (empty response body)

### Authorization

[http_signature_test](../README.md#http_signature_test), [petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-PetWithForm"></a>
# **Update-PetWithForm**
> void Update-PetWithForm<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Updates a pet in the store with form data



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PetId = 789 # Int64 | ID of pet that needs to be updated
$Name = "MyName" # String | Updated name of the pet (optional)
$Status = "MyStatus" # String | Updated status of the pet (optional)

# Updates a pet in the store with form data
try {
    $Result = Update-PetWithForm -PetId $PetId -Name $Name -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Update-PetWithForm: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet that needs to be updated | 
 **Name** | **String**| Updated name of the pet | [optional] 
 **Status** | **String**| Updated status of the pet | [optional] 

### Return type

void (empty response body)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadFile"></a>
# **Invoke-UploadFile**
> ApiResponse Invoke-UploadFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdditionalMetadata] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

uploads an image



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PetId = 789 # Int64 | ID of pet to update
$AdditionalMetadata = "MyAdditionalMetadata" # String | Additional data to pass to server (optional)
$File =  # System.IO.FileInfo | file to upload (optional)

# uploads an image
try {
    $Result = Invoke-UploadFile -PetId $PetId -AdditionalMetadata $AdditionalMetadata -File $File
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet to update | 
 **AdditionalMetadata** | **String**| Additional data to pass to server | [optional] 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| file to upload | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md) (PSCustomObject)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-UploadFileWithRequiredFile"></a>
# **Invoke-UploadFileWithRequiredFile**
> ApiResponse Invoke-UploadFileWithRequiredFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PetId] <Int64><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequiredFile] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdditionalMetadata] <String><br>

uploads an image (required)



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: petstore_auth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PetId = 789 # Int64 | ID of pet to update
$RequiredFile =  # System.IO.FileInfo | file to upload
$AdditionalMetadata = "MyAdditionalMetadata" # String | Additional data to pass to server (optional)

# uploads an image (required)
try {
    $Result = Invoke-UploadFileWithRequiredFile -PetId $PetId -RequiredFile $RequiredFile -AdditionalMetadata $AdditionalMetadata
} catch {
    Write-Host ("Exception occurred when calling Invoke-UploadFileWithRequiredFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PetId** | **Int64**| ID of pet to update | 
 **RequiredFile** | **System.IO.FileInfo****System.IO.FileInfo**| file to upload | 
 **AdditionalMetadata** | **String**| Additional data to pass to server | [optional] 

### Return type

[**ApiResponse**](ApiResponse.md) (PSCustomObject)

### Authorization

[petstore_auth](../README.md#petstore_auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

