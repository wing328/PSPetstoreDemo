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

.PARAMETER LengthCm
No description available.
.OUTPUTS

Banana<PSCustomObject>
#>

function Initialize-Banana {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${LengthCm}
    )

    Process {
        'Creating PSCustomObject: petstore => Banana' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "lengthCm" = ${LengthCm}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Banana<PSCustomObject>

.DESCRIPTION

Convert from JSON to Banana<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Banana<PSCustomObject>
#>
function ConvertFrom-JsonToBanana {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Banana' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $BananaAdditionalProperties = @{}

        # check if Json contains properties not defined in Banana
        $AllProperties = ("lengthCm")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $BananaAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lengthCm"))) { #optional property not found
            $LengthCm = $null
        } else {
            $LengthCm = $JsonParameters.PSobject.Properties["lengthCm"].value
        }

        $PSO = [PSCustomObject]@{
            "lengthCm" = ${LengthCm}
            "AdditionalProperties" = $BananaAdditionalProperties
        }

        return $PSO
    }

}
