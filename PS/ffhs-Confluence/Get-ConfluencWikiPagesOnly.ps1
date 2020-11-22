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
  From a List, Values are grouped by id and returned

 .Parameter List
  Input format: (id,title,parent_id,parent_title,editor,edit_date)


 .Example
   # Creates Array with (id,title,parent_id,parent_title,editor,edit_date)
   Get-ConfluencWikiPagesOnly -List $listfromTree

#>

function Get-ConfluencWikiPagesOnly(){
    param($List)
    return $List | Group-Object id,title | %{ $_.Group | Select id,title,parent_id,parent_title,editor,edit_date -First 1} | Sort id,title,parent_id,parent_title,editor,edit_date
}

Export-ModuleMember -Function Get-ConfluencWikiPagesOnly -Verbose