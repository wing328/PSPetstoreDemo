# petstore.petstore/Api.UserApi

All URIs are relative to *http://petstore.swagger.io:80/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-User**](UserApi.md#New-User) | **POST** /user | Create user
[**New-UsersWithArrayInput**](UserApi.md#New-UsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
[**New-UsersWithListInput**](UserApi.md#New-UsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
[**Invoke-DeleteUser**](UserApi.md#Invoke-DeleteUser) | **DELETE** /user/{username} | Delete user
[**Get-UserByName**](UserApi.md#Get-UserByName) | **GET** /user/{username} | Get user by user name
[**Invoke-LoginUser**](UserApi.md#Invoke-LoginUser) | **GET** /user/login | Logs user into the system
[**Invoke-LogoutUser**](UserApi.md#Invoke-LogoutUser) | **GET** /user/logout | Logs out current logged in user session
[**Update-User**](UserApi.md#Update-User) | **PUT** /user/{username} | Updated user


<a name="New-User"></a>
# **New-User**
> void New-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>

Create user

This can only be done by the logged in user.

### Example
```powershell
$User = Initialize-User -Id 0 -Username "MyUsername" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Password "MyPassword" -Phone "MyPhone" -UserStatus 0 -ArbitraryObject  -ArbitraryNullableObject  -ArbitraryTypeValue  -ArbitraryNullableTypeValue # User | Created user object

# Create user
try {
    $Result = New-User -User $User
} catch {
    Write-Host ("Exception occurred when calling New-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | [**User**](User.md)| Created user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-UsersWithArrayInput"></a>
# **New-UsersWithArrayInput**
> void New-UsersWithArrayInput<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject[]><br>

Creates list of users with given input array



### Example
```powershell
$User = Initialize-User -Id 0 -Username "MyUsername" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Password "MyPassword" -Phone "MyPhone" -UserStatus 0 -ArbitraryObject  -ArbitraryNullableObject  -ArbitraryTypeValue  -ArbitraryNullableTypeValue # User[] | List of user object

# Creates list of users with given input array
try {
    $Result = New-UsersWithArrayInput -User $User
} catch {
    Write-Host ("Exception occurred when calling New-UsersWithArrayInput: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | [**User[]**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-UsersWithListInput"></a>
# **New-UsersWithListInput**
> void New-UsersWithListInput<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject[]><br>

Creates list of users with given input array



### Example
```powershell
$User = Initialize-User -Id 0 -Username "MyUsername" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Password "MyPassword" -Phone "MyPhone" -UserStatus 0 -ArbitraryObject  -ArbitraryNullableObject  -ArbitraryTypeValue  -ArbitraryNullableTypeValue # User[] | List of user object

# Creates list of users with given input array
try {
    $Result = New-UsersWithListInput -User $User
} catch {
    Write-Host ("Exception occurred when calling New-UsersWithListInput: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | [**User[]**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DeleteUser"></a>
# **Invoke-DeleteUser**
> void Invoke-DeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Delete user

This can only be done by the logged in user.

### Example
```powershell
$Username = "MyUsername" # String | The name that needs to be deleted

# Delete user
try {
    $Result = Invoke-DeleteUser -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Invoke-DeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The name that needs to be deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-UserByName"></a>
# **Get-UserByName**
> User Get-UserByName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Get user by user name



### Example
```powershell
$Username = "MyUsername" # String | The name that needs to be fetched. Use user1 for testing.

# Get user by user name
try {
    $Result = Get-UserByName -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Get-UserByName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The name that needs to be fetched. Use user1 for testing. | 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LoginUser"></a>
# **Invoke-LoginUser**
> String Invoke-LoginUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Password] <String><br>

Logs user into the system



### Example
```powershell
$Username = "MyUsername" # String | The user name for login
$Password = "MyPassword" # String | The password for login in clear text

# Logs user into the system
try {
    $Result = Invoke-LoginUser -Username $Username -Password $Password
} catch {
    Write-Host ("Exception occurred when calling Invoke-LoginUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| The user name for login | 
 **Password** | **String**| The password for login in clear text | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-LogoutUser"></a>
# **Invoke-LogoutUser**
> void Invoke-LogoutUser<br>

Logs out current logged in user session



### Example
```powershell

# Logs out current logged in user session
try {
    $Result = Invoke-LogoutUser
} catch {
    Write-Host ("Exception occurred when calling Invoke-LogoutUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-User"></a>
# **Update-User**
> void Update-User<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <PSCustomObject><br>

Updated user

This can only be done by the logged in user.

### Example
```powershell
$Username = "MyUsername" # String | name that need to be deleted
$User = Initialize-User -Id 0 -Username "MyUsername" -FirstName "MyFirstName" -LastName "MyLastName" -Email "MyEmail" -Password "MyPassword" -Phone "MyPhone" -UserStatus 0 -ArbitraryObject  -ArbitraryNullableObject  -ArbitraryTypeValue  -ArbitraryNullableTypeValue # User | Updated user object

# Updated user
try {
    $Result = Update-User -Username $Username -User $User
} catch {
    Write-Host ("Exception occurred when calling Update-User: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| name that need to be deleted | 
 **User** | [**User**](User.md)| Updated user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

