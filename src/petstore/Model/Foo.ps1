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

.PARAMETER Bar
No description available.
.OUTPUTS

Foo<PSCustomObject>
#>

function Initialize-Foo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Bar} = "bar"
    )

    Process {
        'Creating PSCustomObject: petstore => Foo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "bar" = ${Bar}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Foo<PSCustomObject>

.DESCRIPTION

Convert from JSON to Foo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Foo<PSCustomObject>
#>
function ConvertFrom-JsonToFoo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Foo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $FooAdditionalProperties = @{}

        # check if Json contains properties not defined in Foo
        $AllProperties = ("bar")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $FooAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bar"))) { #optional property not found
            $Bar = $null
        } else {
            $Bar = $JsonParameters.PSobject.Properties["bar"].value
        }

        $PSO = [PSCustomObject]@{
            "bar" = ${Bar}
            "AdditionalProperties" = $FooAdditionalProperties
        }

        return $PSO
    }

}

