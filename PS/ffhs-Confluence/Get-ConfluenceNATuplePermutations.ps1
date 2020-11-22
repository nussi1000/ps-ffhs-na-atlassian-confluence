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
  PowerShell Scripts for Information retreival of Atlassian Confluence API and Network Analysis Algorithms

 .Description
  Creates Tuples from every User who worked with another user on the same Page

 .Parameter List
  Minimum Input value: (id,name)

 .Example
    $r = $analysis_groups | ForEach-Object{Get-TuplePermutations -list $_.g}
    $analysis_groups = (($analysis | Group-Object id,editor | Sort-Object count | select count, @{N='id';E={$_.name.Split(",")[0]}}, @{N='name';E={$_.name.Split(",")[1]}} | Sort-Object id | Group-Object id | select name,@{N='g';E={$_.group.name}}))

#>

Function Get-ConfluenceNATuplePermutations(){
    param($list)
    $arr = @()
    $list | ForEach-Object{

        $element = $_
        $se = ($list | Select-String -NotMatch $element)
        foreach($e in $se){
            $o = New-Object PSObject -Property @{
                source = $element
                destination = $e
            }   
        $arr +=$o       
        }
       
    }
    return $arr
}

Export-ModuleMember -Function Get-ConfluenceNATuplePermutations -Verbose


