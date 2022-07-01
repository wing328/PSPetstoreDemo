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

.PARAMETER MyNumber
No description available.
.PARAMETER MyString
No description available.
.PARAMETER MyBoolean
No description available.
.OUTPUTS

OuterComposite<PSCustomObject>
#>

function Initialize-OuterComposite {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${MyNumber},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MyString},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MyBoolean}
    )

    Process {
        'Creating PSCustomObject: petstore => OuterComposite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "my_number" = ${MyNumber}
            "my_string" = ${MyString}
            "my_boolean" = ${MyBoolean}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OuterComposite<PSCustomObject>

.DESCRIPTION

Convert from JSON to OuterComposite<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OuterComposite<PSCustomObject>
#>
function ConvertFrom-JsonToOuterComposite {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => OuterComposite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $OuterCompositeAdditionalProperties = @{}

        # check if Json contains properties not defined in OuterComposite
        $AllProperties = ("my_number", "my_string", "my_boolean")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $OuterCompositeAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "my_number"))) { #optional property not found
            $MyNumber = $null
        } else {
            $MyNumber = $JsonParameters.PSobject.Properties["my_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "my_string"))) { #optional property not found
            $MyString = $null
        } else {
            $MyString = $JsonParameters.PSobject.Properties["my_string"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "my_boolean"))) { #optional property not found
            $MyBoolean = $null
        } else {
            $MyBoolean = $JsonParameters.PSobject.Properties["my_boolean"].value
        }

        $PSO = [PSCustomObject]@{
            "my_number" = ${MyNumber}
            "my_string" = ${MyString}
            "my_boolean" = ${MyBoolean}
            "AdditionalProperties" = $OuterCompositeAdditionalProperties
        }

        return $PSO
    }

}
