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

.PARAMETER ArrayNumber
No description available.
.OUTPUTS

ArrayOfNumberOnly<PSCustomObject>
#>

function Initialize-ArrayOfNumberOnly {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal[]]
        ${ArrayNumber}
    )

    Process {
        'Creating PSCustomObject: petstore => ArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ArrayNumber" = ${ArrayNumber}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ArrayOfNumberOnly<PSCustomObject>

.DESCRIPTION

Convert from JSON to ArrayOfNumberOnly<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ArrayOfNumberOnly<PSCustomObject>
#>
function ConvertFrom-JsonToArrayOfNumberOnly {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => ArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $ArrayOfNumberOnlyAdditionalProperties = @{}

        # check if Json contains properties not defined in ArrayOfNumberOnly
        $AllProperties = ("ArrayNumber")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $ArrayOfNumberOnlyAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArrayNumber"))) { #optional property not found
            $ArrayNumber = $null
        } else {
            $ArrayNumber = $JsonParameters.PSobject.Properties["ArrayNumber"].value
        }

        $PSO = [PSCustomObject]@{
            "ArrayNumber" = ${ArrayNumber}
            "AdditionalProperties" = $ArrayOfNumberOnlyAdditionalProperties
        }

        return $PSO
    }

}

