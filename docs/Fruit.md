# Fruit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Color** | **String** |  | [optional] 
**Cultivar** | **String** |  | [optional] 
**LengthCm** | **Decimal** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Fruit = Initialize-petstoreFruit  -Color null `
 -Cultivar null `
 -LengthCm null
```

- Convert the resource to JSON
```powershell
$Fruit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

