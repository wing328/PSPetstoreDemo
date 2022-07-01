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

.PARAMETER ArrayArrayNumber
No description available.
.OUTPUTS

ArrayOfArrayOfNumberOnly<PSCustomObject>
#>

function Initialize-ArrayOfArrayOfNumberOnly {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal[][]]
        ${ArrayArrayNumber}
    )

    Process {
        'Creating PSCustomObject: petstore => ArrayOfArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ArrayArrayNumber" = ${ArrayArrayNumber}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ArrayOfArrayOfNumberOnly<PSCustomObject>

.DESCRIPTION

Convert from JSON to ArrayOfArrayOfNumberOnly<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ArrayOfArrayOfNumberOnly<PSCustomObject>
#>
function ConvertFrom-JsonToArrayOfArrayOfNumberOnly {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => ArrayOfArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $ArrayOfArrayOfNumberOnlyAdditionalProperties = @{}

        # check if Json contains properties not defined in ArrayOfArrayOfNumberOnly
        $AllProperties = ("ArrayArrayNumber")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $ArrayOfArrayOfNumberOnlyAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArrayArrayNumber"))) { #optional property not found
            $ArrayArrayNumber = $null
        } else {
            $ArrayArrayNumber = $JsonParameters.PSobject.Properties["ArrayArrayNumber"].value
        }

        $PSO = [PSCustomObject]@{
            "ArrayArrayNumber" = ${ArrayArrayNumber}
            "AdditionalProperties" = $ArrayOfArrayOfNumberOnlyAdditionalProperties
        }

        return $PSO
    }

}

