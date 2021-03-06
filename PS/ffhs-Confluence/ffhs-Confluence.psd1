﻿@{ 
    
# Script module or binary module file associated with this manifest.
#RootModule = 'ffhs-Confluence.psm1'
ModuleToProcess = 'ffhs-Confluence.psm1' # using ModuleToProcess for PS 2.0 compatibility

# Version number of this module.
ModuleVersion = '0.1'

# ID used to uniquely identify this module
GUID = '1f22455e-6f36-4c91-a512-029d0ab6b0b2'

# Author of this module
Author = 'Tim Nussbaumer'

# Copyright statement for this module
Copyright = '(c) 2020 Tim Nussbaumer. All rights reserved.'

# Description of the functionality provided by this module
Description = @'
PowerShell Scripts for Information retreival of Atlassian Confluence API. Including Session authentication for Corporate use
'@

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
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

# Functions to export from this module
FunctionsToExport = '{New-ConfluenceSession, New-ConfluenceNameMapping1, Get-ConfluenceWikiTree, Get-ConfluencWikiPagesOnly, Get-ConfluenceNATuplePermutations}'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'PowerShell', 'Template'

        # A URL to the license for this module.
        LicenseUri = 'https://opensource.org/licenses/MIT'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/nussi1000/ps-ffhs-na-atlassian-confluence'

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

