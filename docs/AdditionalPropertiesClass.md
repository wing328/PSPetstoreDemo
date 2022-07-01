# AdditionalPropertiesClass
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MapProperty** | **System.Collections.Hashtable** |  | [optional] 
**MapOfMapProperty** | [**System.Collections.Hashtable**](Map.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AdditionalPropertiesClass = Initialize-petstoreAdditionalPropertiesClass  -MapProperty null `
 -MapOfMapProperty null
```

- Convert the resource to JSON
```powershell
$AdditionalPropertiesClass | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

