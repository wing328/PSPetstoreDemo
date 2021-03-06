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

Model for testing model name same as property name

.PARAMETER Name
No description available.
.PARAMETER SnakeCase
No description available.
.PARAMETER Property
No description available.
.PARAMETER Var123Number
No description available.
.OUTPUTS

Name<PSCustomObject>
#>

function Initialize-Name {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${SnakeCase},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Property},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Var123Number}
    )

    Process {
        'Creating PSCustomObject: petstore => Name' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "snake_case" = ${SnakeCase}
            "property" = ${Property}
            "123Number" = ${Var123Number}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Name<PSCustomObject>

.DESCRIPTION

Convert from JSON to Name<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Name<PSCustomObject>
#>
function ConvertFrom-JsonToName {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Name' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $NameAdditionalProperties = @{}

        # check if Json contains properties not defined in Name
        $AllProperties = ("name", "snake_case", "property", "123Number")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $NameAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "snake_case"))) { #optional property not found
            $SnakeCase = $null
        } else {
            $SnakeCase = $JsonParameters.PSobject.Properties["snake_case"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "property"))) { #optional property not found
            $Property = $null
        } else {
            $Property = $JsonParameters.PSobject.Properties["property"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "123Number"))) { #optional property not found
            $Var123Number = $null
        } else {
            $Var123Number = $JsonParameters.PSobject.Properties["123Number"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "snake_case" = ${SnakeCase}
            "property" = ${Property}
            "123Number" = ${Var123Number}
            "AdditionalProperties" = $NameAdditionalProperties
        }

        return $PSO
    }

}

