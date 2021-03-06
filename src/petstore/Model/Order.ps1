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

.PARAMETER Id
No description available.
.PARAMETER PetId
No description available.
.PARAMETER Quantity
No description available.
.PARAMETER ShipDate
No description available.
.PARAMETER Status
Order Status
.PARAMETER Complete
No description available.
.OUTPUTS

Order<PSCustomObject>
#>

function Initialize-Order {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${PetId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Quantity},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ShipDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("placed", "approved", "delivered")]
        [String]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Complete} = $false
    )

    Process {
        'Creating PSCustomObject: petstore => Order' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "petId" = ${PetId}
            "quantity" = ${Quantity}
            "shipDate" = ${ShipDate}
            "status" = ${Status}
            "complete" = ${Complete}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Order<PSCustomObject>

.DESCRIPTION

Convert from JSON to Order<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Order<PSCustomObject>
#>
function ConvertFrom-JsonToOrder {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: petstore => Order' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $OrderAdditionalProperties = @{}

        # check if Json contains properties not defined in Order
        $AllProperties = ("id", "petId", "quantity", "shipDate", "status", "complete")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $OrderAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "petId"))) { #optional property not found
            $PetId = $null
        } else {
            $PetId = $JsonParameters.PSobject.Properties["petId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "quantity"))) { #optional property not found
            $Quantity = $null
        } else {
            $Quantity = $JsonParameters.PSobject.Properties["quantity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "shipDate"))) { #optional property not found
            $ShipDate = $null
        } else {
            $ShipDate = $JsonParameters.PSobject.Properties["shipDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "complete"))) { #optional property not found
            $Complete = $null
        } else {
            $Complete = $JsonParameters.PSobject.Properties["complete"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "petId" = ${PetId}
            "quantity" = ${Quantity}
            "shipDate" = ${ShipDate}
            "status" = ${Status}
            "complete" = ${Complete}
            "AdditionalProperties" = $OrderAdditionalProperties
        }

        return $PSO
    }

}

