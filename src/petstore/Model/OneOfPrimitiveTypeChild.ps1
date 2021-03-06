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

.PARAMETER Name
No description available.
.OUTPUTS

OneOfPrimitiveTypeChild<PSCustomObject>
#>

function Initialize-OneOfPrimitiveTypeChild {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: petstore => OneOfPrimitiveTypeChild' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OneOfPrimitiveTypeChild<PSCustomObject>

.DESCRIPTION

Convert from JSON to OneOfPrimitiveTypeChild<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OneOfPrimitiveTypeChild<PSCustomObject>
#>
function ConvertFrom-JsonToOneOfPrimitiveTypeChild {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => OneOfPrimitiveTypeChild' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $OneOfPrimitiveTypeChildAdditionalProperties = @{}

        # check if Json contains properties not defined in OneOfPrimitiveTypeChild
        $AllProperties = ("name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $OneOfPrimitiveTypeChildAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "AdditionalProperties" = $OneOfPrimitiveTypeChildAdditionalProperties
        }

        return $PSO
    }

}

