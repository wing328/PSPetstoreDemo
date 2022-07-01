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

.PARAMETER ClassName
No description available.
.PARAMETER Color
No description available.
.OUTPUTS

Animal<PSCustomObject>
#>

function Initialize-Animal {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Color} = "red"
    )

    Process {
        'Creating PSCustomObject: petstore => Animal' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ClassName) {
            throw "invalid value for 'ClassName', 'ClassName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "className" = ${ClassName}
            "color" = ${Color}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Animal<PSCustomObject>

.DESCRIPTION

Convert from JSON to Animal<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Animal<PSCustomObject>
#>
function ConvertFrom-JsonToAnimal {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Animal' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $AnimalAdditionalProperties = @{}

        # check if Json contains properties not defined in Animal
        $AllProperties = ("className", "color")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $AnimalAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'className' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) {
            throw "Error! JSON cannot be serialized due to the required property 'className' missing."
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "color"))) { #optional property not found
            $Color = $null
        } else {
            $Color = $JsonParameters.PSobject.Properties["color"].value
        }

        $PSO = [PSCustomObject]@{
            "className" = ${ClassName}
            "color" = ${Color}
            "AdditionalProperties" = $AnimalAdditionalProperties
        }

        return $PSO
    }

}
