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

.PARAMETER MapMapOfString
No description available.
.PARAMETER MapOfEnumString
No description available.
.PARAMETER DirectMap
No description available.
.PARAMETER IndirectMap
No description available.
.OUTPUTS

MapTest<PSCustomObject>
#>

function Initialize-MapTest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${MapMapOfString},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UPPER", "lower")]
        [System.Collections.Hashtable]
        ${MapOfEnumString},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${DirectMap},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${IndirectMap}
    )

    Process {
        'Creating PSCustomObject: petstore => MapTest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "map_map_of_string" = ${MapMapOfString}
            "map_of_enum_string" = ${MapOfEnumString}
            "direct_map" = ${DirectMap}
            "indirect_map" = ${IndirectMap}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MapTest<PSCustomObject>

.DESCRIPTION

Convert from JSON to MapTest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MapTest<PSCustomObject>
#>
function ConvertFrom-JsonToMapTest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => MapTest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $MapTestAdditionalProperties = @{}

        # check if Json contains properties not defined in MapTest
        $AllProperties = ("map_map_of_string", "map_of_enum_string", "direct_map", "indirect_map")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $MapTestAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "map_map_of_string"))) { #optional property not found
            $MapMapOfString = $null
        } else {
            $MapMapOfString = $JsonParameters.PSobject.Properties["map_map_of_string"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "map_of_enum_string"))) { #optional property not found
            $MapOfEnumString = $null
        } else {
            $MapOfEnumString = $JsonParameters.PSobject.Properties["map_of_enum_string"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "direct_map"))) { #optional property not found
            $DirectMap = $null
        } else {
            $DirectMap = $JsonParameters.PSobject.Properties["direct_map"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indirect_map"))) { #optional property not found
            $IndirectMap = $null
        } else {
            $IndirectMap = $JsonParameters.PSobject.Properties["indirect_map"].value
        }

        $PSO = [PSCustomObject]@{
            "map_map_of_string" = ${MapMapOfString}
            "map_of_enum_string" = ${MapOfEnumString}
            "direct_map" = ${DirectMap}
            "indirect_map" = ${IndirectMap}
            "AdditionalProperties" = $MapTestAdditionalProperties
        }

        return $PSO
    }

}
