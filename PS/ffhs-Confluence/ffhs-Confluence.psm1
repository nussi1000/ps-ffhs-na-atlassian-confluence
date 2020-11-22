#######################################################
##
##  Confluence Module
##  Tim Nussbaumer, Nov 2020
##
##  For detailed usage please refer to:
##  https://github.com/nussi1000/ps-ffhs-na-atlassian-confluence
##
#######################################################

# Load functions
$functions = Get-ChildItem -Path $PSScriptRoot -Recurse -Include *.ps1 |
    Sort-Object |
    ForEach-Object { . $_.FullName }
