# petstore - the PowerShell module for the OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

This PowerShell module is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- SDK version: 0.1.2
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\petstore' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\petstore' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "petstore"; ModuleVersion = "0.1.2"}
```

<a name="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *http://petstore.swagger.io:80/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AnotherFakeApi* | [**Invoke-123TestSpecialTags**](docs/AnotherFakeApi.md#Invoke-123TestSpecialTags) | **PATCH** /another-fake/dummy | To test special tags
*DefaultApi* | [**Invoke-FooGet**](docs/DefaultApi.md#Invoke-FooGet) | **GET** /foo | 
*FakeApi* | [**Invoke-FakeHealthGet**](docs/FakeApi.md#Invoke-FakeHealthGet) | **GET** /fake/health | Health check endpoint
*FakeApi* | [**Invoke-FakeOuterBooleanSerialize**](docs/FakeApi.md#Invoke-FakeOuterBooleanSerialize) | **POST** /fake/outer/boolean | 
*FakeApi* | [**Invoke-FakeOuterCompositeSerialize**](docs/FakeApi.md#Invoke-FakeOuterCompositeSerialize) | **POST** /fake/outer/composite | 
*FakeApi* | [**Invoke-FakeOuterNumberSerialize**](docs/FakeApi.md#Invoke-FakeOuterNumberSerialize) | **POST** /fake/outer/number | 
*FakeApi* | [**Invoke-FakeOuterStringSerialize**](docs/FakeApi.md#Invoke-FakeOuterStringSerialize) | **POST** /fake/outer/string | 
*FakeApi* | [**Test-BodyWithFileSchema**](docs/FakeApi.md#Test-BodyWithFileSchema) | **PUT** /fake/body-with-file-schema | 
*FakeApi* | [**Test-BodyWithQueryParams**](docs/FakeApi.md#Test-BodyWithQueryParams) | **PUT** /fake/body-with-query-params | 
*FakeApi* | [**Test-ClientModel**](docs/FakeApi.md#Test-ClientModel) | **PATCH** /fake | To test ""client"" model
*FakeApi* | [**Test-EndpointParameters**](docs/FakeApi.md#Test-EndpointParameters) | **POST** /fake | Fake endpoint for testing various parameters ????????? ??????????????????????????? ?????? ?????? ????????? 
*FakeApi* | [**Test-EnumParameters**](docs/FakeApi.md#Test-EnumParameters) | **GET** /fake | To test enum parameters
*FakeApi* | [**Test-GroupParameters**](docs/FakeApi.md#Test-GroupParameters) | **DELETE** /fake | Fake endpoint to test group parameters (optional)
*FakeApi* | [**Test-InlineAdditionalProperties**](docs/FakeApi.md#Test-InlineAdditionalProperties) | **POST** /fake/inline-additionalProperties | test inline additionalProperties
*FakeApi* | [**Test-JsonFormData**](docs/FakeApi.md#Test-JsonFormData) | **GET** /fake/jsonFormData | test json serialization of form data
*FakeApi* | [**Test-QueryParameterCollectionFormat**](docs/FakeApi.md#Test-QueryParameterCollectionFormat) | **PUT** /fake/test-query-parameters | 
*FakeApi* | [**Test-UniqueItemsHeaderAndQueryParameterCollectionFormat**](docs/FakeApi.md#Test-UniqueItemsHeaderAndQueryParameterCollectionFormat) | **PUT** /fake/test-unique-parameters | 
*FakeClassnameTags123Api* | [**Test-Classname**](docs/FakeClassnameTags123Api.md#Test-Classname) | **PATCH** /fake_classname_test | To test class name in snake case
*PetApi* | [**Add-Pet**](docs/PetApi.md#Add-Pet) | **POST** /pet | Add a new pet to the store
*PetApi* | [**Invoke-DeletePet**](docs/PetApi.md#Invoke-DeletePet) | **DELETE** /pet/{petId} | Deletes a pet
*PetApi* | [**Find-PetsByStatus**](docs/PetApi.md#Find-PetsByStatus) | **GET** /pet/findByStatus | Finds Pets by status
*PetApi* | [**Find-PetsByTags**](docs/PetApi.md#Find-PetsByTags) | **GET** /pet/findByTags | Finds Pets by tags
*PetApi* | [**Get-PetById**](docs/PetApi.md#Get-PetById) | **GET** /pet/{petId} | Find pet by ID
*PetApi* | [**Update-Pet**](docs/PetApi.md#Update-Pet) | **PUT** /pet | Update an existing pet
*PetApi* | [**Update-PetWithForm**](docs/PetApi.md#Update-PetWithForm) | **POST** /pet/{petId} | Updates a pet in the store with form data
*PetApi* | [**Invoke-UploadFile**](docs/PetApi.md#Invoke-UploadFile) | **POST** /pet/{petId}/uploadImage | uploads an image
*PetApi* | [**Invoke-UploadFileWithRequiredFile**](docs/PetApi.md#Invoke-UploadFileWithRequiredFile) | **POST** /fake/{petId}/uploadImageWithRequiredFile | uploads an image (required)
*StoreApi* | [**Invoke-DeleteOrder**](docs/StoreApi.md#Invoke-DeleteOrder) | **DELETE** /store/order/{order_id} | Delete purchase order by ID
*StoreApi* | [**Get-Inventory**](docs/StoreApi.md#Get-Inventory) | **GET** /store/inventory | Returns pet inventories by status
*StoreApi* | [**Get-OrderById**](docs/StoreApi.md#Get-OrderById) | **GET** /store/order/{order_id} | Find purchase order by ID
*StoreApi* | [**Invoke-PlaceOrder**](docs/StoreApi.md#Invoke-PlaceOrder) | **POST** /store/order | Place an order for a pet
*UserApi* | [**New-User**](docs/UserApi.md#New-User) | **POST** /user | Create user
*UserApi* | [**New-UsersWithArrayInput**](docs/UserApi.md#New-UsersWithArrayInput) | **POST** /user/createWithArray | Creates list of users with given input array
*UserApi* | [**New-UsersWithListInput**](docs/UserApi.md#New-UsersWithListInput) | **POST** /user/createWithList | Creates list of users with given input array
*UserApi* | [**Invoke-DeleteUser**](docs/UserApi.md#Invoke-DeleteUser) | **DELETE** /user/{username} | Delete user
*UserApi* | [**Get-UserByName**](docs/UserApi.md#Get-UserByName) | **GET** /user/{username} | Get user by user name
*UserApi* | [**Invoke-LoginUser**](docs/UserApi.md#Invoke-LoginUser) | **GET** /user/login | Logs user into the system
*UserApi* | [**Invoke-LogoutUser**](docs/UserApi.md#Invoke-LogoutUser) | **GET** /user/logout | Logs out current logged in user session
*UserApi* | [**Update-User**](docs/UserApi.md#Update-User) | **PUT** /user/{username} | Updated user


## Documentation for Models

 - [petstore/Model.AdditionalPropertiesClass](docs/AdditionalPropertiesClass.md)
 - [petstore/Model.Animal](docs/Animal.md)
 - [petstore/Model.ApiResponse](docs/ApiResponse.md)
 - [petstore/Model.Apple](docs/Apple.md)
 - [petstore/Model.AppleReq](docs/AppleReq.md)
 - [petstore/Model.ArrayOfArrayOfNumberOnly](docs/ArrayOfArrayOfNumberOnly.md)
 - [petstore/Model.ArrayOfNumberOnly](docs/ArrayOfNumberOnly.md)
 - [petstore/Model.ArrayTest](docs/ArrayTest.md)
 - [petstore/Model.Banana](docs/Banana.md)
 - [petstore/Model.BananaReq](docs/BananaReq.md)
 - [petstore/Model.Capitalization](docs/Capitalization.md)
 - [petstore/Model.Cat](docs/Cat.md)
 - [petstore/Model.CatAllOf](docs/CatAllOf.md)
 - [petstore/Model.Category](docs/Category.md)
 - [petstore/Model.ClassModel](docs/ClassModel.md)
 - [petstore/Model.Client](docs/Client.md)
 - [petstore/Model.Dog](docs/Dog.md)
 - [petstore/Model.DogAllOf](docs/DogAllOf.md)
 - [petstore/Model.EnumArrays](docs/EnumArrays.md)
 - [petstore/Model.EnumClass](docs/EnumClass.md)
 - [petstore/Model.EnumTest](docs/EnumTest.md)
 - [petstore/Model.File](docs/File.md)
 - [petstore/Model.FileSchemaTestClass](docs/FileSchemaTestClass.md)
 - [petstore/Model.Foo](docs/Foo.md)
 - [petstore/Model.FooGetDefaultResponse](docs/FooGetDefaultResponse.md)
 - [petstore/Model.FormatTest](docs/FormatTest.md)
 - [petstore/Model.Fruit](docs/Fruit.md)
 - [petstore/Model.FruitReq](docs/FruitReq.md)
 - [petstore/Model.GmFruit](docs/GmFruit.md)
 - [petstore/Model.HasOnlyReadOnly](docs/HasOnlyReadOnly.md)
 - [petstore/Model.HealthCheckResult](docs/HealthCheckResult.md)
 - [petstore/Model.List](docs/List.md)
 - [petstore/Model.Mammal](docs/Mammal.md)
 - [petstore/Model.MapTest](docs/MapTest.md)
 - [petstore/Model.MixedPropertiesAndAdditionalPropertiesClass](docs/MixedPropertiesAndAdditionalPropertiesClass.md)
 - [petstore/Model.Model200Response](docs/Model200Response.md)
 - [petstore/Model.ModelReturn](docs/ModelReturn.md)
 - [petstore/Model.Name](docs/Name.md)
 - [petstore/Model.NullableAllOf](docs/NullableAllOf.md)
 - [petstore/Model.NullableAllOfChild](docs/NullableAllOfChild.md)
 - [petstore/Model.NullableClass](docs/NullableClass.md)
 - [petstore/Model.NumberOnly](docs/NumberOnly.md)
 - [petstore/Model.OneOfPrimitiveType](docs/OneOfPrimitiveType.md)
 - [petstore/Model.OneOfPrimitiveTypeChild](docs/OneOfPrimitiveTypeChild.md)
 - [petstore/Model.Order](docs/Order.md)
 - [petstore/Model.OuterComposite](docs/OuterComposite.md)
 - [petstore/Model.OuterEnum](docs/OuterEnum.md)
 - [petstore/Model.OuterEnumDefaultValue](docs/OuterEnumDefaultValue.md)
 - [petstore/Model.OuterEnumInteger](docs/OuterEnumInteger.md)
 - [petstore/Model.OuterEnumIntegerDefaultValue](docs/OuterEnumIntegerDefaultValue.md)
 - [petstore/Model.Pet](docs/Pet.md)
 - [petstore/Model.ReadOnlyFirst](docs/ReadOnlyFirst.md)
 - [petstore/Model.ReadOnlyWithDefault](docs/ReadOnlyWithDefault.md)
 - [petstore/Model.SpecialModelName](docs/SpecialModelName.md)
 - [petstore/Model.Tag](docs/Tag.md)
 - [petstore/Model.User](docs/User.md)
 - [petstore/Model.Whale](docs/Whale.md)
 - [petstore/Model.Zebra](docs/Zebra.md)


## Documentation for Authorization


### api_key

- **Type**: API key

- **API key parameter name**: api_key
- **Location**: HTTP header


### api_key_query

- **Type**: API key

- **API key parameter name**: api_key_query
- **Location**: URL query string


### bearer_test


- **Type**: HTTP basic authentication


### http_basic_test


- **Type**: HTTP basic authentication


### http_signature_test


- **Type**: HTTP basic authentication


### petstore_auth


- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: http://petstore.swagger.io/api/oauth/dialog
- **Scopes**: 
  - write:pets: modify pets in your account
  - read:pets: read your pets

