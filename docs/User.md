# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** |  | [optional] 
**Username** | **String** |  | [optional] 
**FirstName** | **String** |  | [optional] 
**LastName** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**Password** | **String** |  | [optional] 
**Phone** | **String** |  | [optional] 
**UserStatus** | **Int32** | User Status | [optional] 
**ArbitraryObject** | [**SystemCollectionsHashtable**](.md) | test code generation for objects Value must be a map of strings to values. It cannot be the &#39;null&#39; value. | [optional] 
**ArbitraryNullableObject** | [**SystemCollectionsHashtable**](.md) | test code generation for nullable objects. Value must be a map of strings to values or the &#39;null&#39; value. | [optional] 
**ArbitraryTypeValue** | [**AnyType**](.md) | test code generation for any type Value can be any type - string, number, boolean, array or object. | [optional] 
**ArbitraryNullableTypeValue** | [**AnyType**](.md) | test code generation for any type Value can be any type - string, number, boolean, array, object or the &#39;null&#39; value. | [optional] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-petstoreUser  -Id null `
 -Username null `
 -FirstName null `
 -LastName null `
 -Email null `
 -Password null `
 -Phone null `
 -UserStatus null `
 -ArbitraryObject null `
 -ArbitraryNullableObject null `
 -ArbitraryTypeValue null `
 -ArbitraryNullableTypeValue null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

