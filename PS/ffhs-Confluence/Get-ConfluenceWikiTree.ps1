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
  This Function Requires a Root of a Wiki-Page and takes all its nodes below and gives it back as an output. If you input an array of roots all of connected nodes will be returned

 .Parameter root
  Unique or List of Page ID's (id,title)


 .Example
   # Creates Array with (id,title,parent_id,parent_title,editor,edit_date)
   $root = New-Object PSObject -Property @{id = "21165555";title = "Some Cloud Stuff Root Page"}
   Get-ConfluenceWikiTree -root $root
   $row_1 = Get-WikiTree -root $root
   $row_2 = Get-WikiTree -root $row_1
   $row_3 = Get-WikiTree -root $row_2
   $row_4 = Get-WikiTree -root $row_3
   $row_5 = Get-WikiTree -root $row_4
   $row_6 = Get-WikiTree -root $row_5
   $row_all = $row_1 + $row_2 + $row_3 + $row_4 + $row_5 + $row_6

#>

function Get-ConfluenceWikiTree(){
    Param ($root)

    $root = $root | Group-Object id,title | %{ $_.Group | Select id,title -First 1} | Sort id,title
    $arr = @()
    foreach($p in $root){
            foreach($s in (Invoke-WebRequest -WebSession $session -Uri "https://$rhost/rest/api/content/$($p.id)/child/page" | ConvertFrom-Json).results){ # Get the child pages

            $history = (Invoke-WebRequest -WebSession $session -uri "https://$rhost/rest/experimental/content/$($s.id)/version" | ConvertFrom-Json).results # Get the history of edits
            
            foreach($h in $history){
                $o = New-Object PSObject -Property @{
                    id = $s.id
                    title = $s.title
                    parent_id = $p.id
                    parent_title = $p.title
                    editor = $h.by.username
                    edit_date = $h.when
                }

                $arr += $o           
            }

        }
    }
    return $arr
}

Export-ModuleMember -Function Get-ConfluenceWikiTree -Verbose
