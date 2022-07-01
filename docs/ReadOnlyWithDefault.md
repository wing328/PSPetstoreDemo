# ReadOnlyWithDefault
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prop1** | **String** |  | [optional] [readonly] 
**Prop2** | **String** |  | [optional] [readonly] [default to "defaultProp2"]
**Prop3** | **String** |  | [optional] [default to "defaultProp3"]
**BoolProp1** | **Boolean** |  | [optional] [readonly] [default to $false]
**BoolProp2** | **Boolean** |  | [optional] [default to $true]
**IntProp1** | **Decimal** |  | [optional] [readonly] [default to 100]
**IntProp2** | **Decimal** |  | [optional] [default to 120]

## Examples

- Prepare the resource
```powershell
$ReadOnlyWithDefault = Initialize-petstoreReadOnlyWithDefault  -Prop1 null `
 -Prop2 null `
 -Prop3 null `
 -BoolProp1 null `
 -BoolProp2 null `
 -IntProp1 null `
 -IntProp2 null
```

- Convert the resource to JSON
```powershell
$ReadOnlyWithDefault | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

