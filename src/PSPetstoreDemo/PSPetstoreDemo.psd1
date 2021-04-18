#
# Module manifest for module 'PSPetstoreDemo'
#
# Generated by: OpenAPI Generator Team
#
# Generated on: 4/18/21
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PSPetstoreDemo.psm1'

# Version number of this module.
ModuleVersion = '0.3.4'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'f0b0af5a-0a7e-4061-8b33-659963e6d070'

# Author of this module
Author = 'OpenAPI Generator Team'

# Company or vendor of this module
CompanyName = 'openapitools.org'

# Copyright statement for this module
Copyright = '(c) OpenAPI Generator Team. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PSPetstoreDemo - the PowerShell module for Petstore'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '6.2'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-Pet', 'Invoke-DeletePet', 'Find-PetsByStatus', 'Find-PetsByTags', 
               'Get-PetById', 'Update-Pet', 'Update-PetWithForm', 'Invoke-UploadFile', 
               'Invoke-DeleteOrder', 'Get-Inventory', 'Get-OrderById', 
               'Invoke-PlaceOrder', 'New-User', 'New-UsersWithArrayInput', 
               'New-UsersWithListInput', 'Invoke-DeleteUser', 'Get-UserByName', 
               'Invoke-LoginUser', 'Invoke-LogoutUser', 'Update-User', 
               'Initialize-ApiResponse', 'ConvertFrom-JsonToApiResponse', 
               'Initialize-Category', 'ConvertFrom-JsonToCategory', 
               'Initialize-Order', 'ConvertFrom-JsonToOrder', 'Initialize-Pet', 
               'ConvertFrom-JsonToPet', 'Initialize-Tag', 'ConvertFrom-JsonToTag', 
               'Initialize-User', 'ConvertFrom-JsonToUser', 'Get-Configuration', 
               'Set-Configuration', 'Set-ConfigurationApiKey', 
               'Set-ConfigurationApiKeyPrefix', 'Set-ConfigurationDefaultHeader', 
               'Get-HostSetting', 'Get-UrlFromHostSetting', 
               'Set-ConfigurationHttpSigning', 'Get-ConfigurationHttpSigning'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

