#
# OpenAPI Petstore
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: "" \
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Breed
No description available.
.OUTPUTS

DogAllOf<PSCustomObject>
#>

function Initialize-DogAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Breed}
    )

    Process {
        'Creating PSCustomObject: petstore => DogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "breed" = ${Breed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DogAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to DogAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DogAllOf<PSCustomObject>
#>
function ConvertFrom-JsonToDogAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => DogAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $DogAllOfAdditionalProperties = @{}

        # check if Json contains properties not defined in DogAllOf
        $AllProperties = ("breed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $DogAllOfAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "breed"))) { #optional property not found
            $Breed = $null
        } else {
            $Breed = $JsonParameters.PSobject.Properties["breed"].value
        }

        $PSO = [PSCustomObject]@{
            "breed" = ${Breed}
            "AdditionalProperties" = $DogAllOfAdditionalProperties
        }

        return $PSO
    }

}

