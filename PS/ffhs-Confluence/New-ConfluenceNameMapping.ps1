<#
#######################################################
##
##  Confluence Module
##  Tim Nussbaumer, Nov 2020
##
##  For detailed usage please refer to:
##  https://github.com/nussi1000/ps-ffhs-na-atlassian-confluence
##
#######################################################
 .Synopsis
  PowerShell Scripts for Information retreival of Atlassian Confluence API

 .Description
  This Function maps known corporate User with the help of a matching table

 .Parameter InputFile
  Minimum Input value: (editor)

 .Parameter MatchingtableFile
  Minimum Input value: (Name,Starwars) Where Name is the Username according to editor

 .Example
   # Creates a Sessionobject wich can be used later for Invoke-WebRequest Commands
   $S = New-ConfluenceSession -SessionUrl  -CookieValue "8754CB4ABC70DF41B80B215857DC7439" -CookieDomain "wiki.corp.com"
   # Create Mapping list of WikiTree Output: $WikiTree | Group-Object editor | select name | Export-Csv mapper-name.csv

#>



function New-ConfluenceNameMapping {
    Param ($InputFile,$MatchingtableFile)

    $InputFileContent = Import-Csv $InputFile
    $MatchingtableFileContent = Import-Csv $MatchingtableFile

    foreach($a in $InputFileContent[0..20]){
        if($MatchingtableFileContent | Where-Object{$_.name -eq $a.editor}){
            $a.editor = ($MatchingtableFileContent | Where-Object{$_.name -eq $a.editor}).Starwars
        }
        $a
    }

}

Export-ModuleMember -Function New-ConfluenceNameMapping -Verbose
