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

.PARAMETER HasBaleen
No description available.
.PARAMETER HasTeeth
No description available.
.PARAMETER ClassName
No description available.
.OUTPUTS

Whale<PSCustomObject>
#>

function Initialize-Whale {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasBaleen},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${HasTeeth},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName}
    )

    Process {
        'Creating PSCustomObject: petstore => Whale' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $ClassName) {
            throw "invalid value for 'ClassName', 'ClassName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "hasBaleen" = ${HasBaleen}
            "hasTeeth" = ${HasTeeth}
            "className" = ${ClassName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Whale<PSCustomObject>

.DESCRIPTION

Convert from JSON to Whale<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Whale<PSCustomObject>
#>
function ConvertFrom-JsonToWhale {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Whale' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $WhaleAdditionalProperties = @{}

        # check if Json contains properties not defined in Whale
        $AllProperties = ("hasBaleen", "hasTeeth", "className")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $WhaleAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasBaleen"))) { #optional property not found
            $HasBaleen = $null
        } else {
            $HasBaleen = $JsonParameters.PSobject.Properties["hasBaleen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasTeeth"))) { #optional property not found
            $HasTeeth = $null
        } else {
            $HasTeeth = $JsonParameters.PSobject.Properties["hasTeeth"].value
        }

        $PSO = [PSCustomObject]@{
            "hasBaleen" = ${HasBaleen}
            "hasTeeth" = ${HasTeeth}
            "className" = ${ClassName}
            "AdditionalProperties" = $WhaleAdditionalProperties
        }

        return $PSO
    }

}

