# NullableAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Child** | [**NullableAllOfChild**](NullableAllOfChild.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NullableAllOf = Initialize-petstoreNullableAllOf  -Child null
```

- Convert the resource to JSON
```powershell
$NullableAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

