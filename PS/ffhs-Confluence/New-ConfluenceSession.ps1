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
  PowerShell Scripts for Information retreival of Atlassian Confluence API. Including Session authentication for Corporate use

 .Parameter CookieValue
  This is the Value you find within the generated Cookie for the Website. Example: "8754CB4ABC70DF41B80B215857DC7439"

 .Parameter CookieDomain
  This is the Domain of the wiki. Example "wiki.corp.com"

 .Example
   # Creates a Sessionobject wich can be used later for Invoke-WebRequest Commands
   $S = New-ConfluenceSession -SessionUrl  -CookieValue "8754CB4ABC70DF41B80B215857DC7439" -CookieDomain "wiki.corp.com"

#>



function New-ConfluenceSession {

Param ($CookieValue,$CookieDomain)

    $session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
    $cookie = New-Object System.Net.Cookie 
    $cookie.Name = "JSESSIONID"
    $cookie.Value = $CookieValue
    $cookie.Domain = $CookieDomain
    $session.Cookies.Add($cookie)
    Write-Host "tst"
    return $session
}

Export-ModuleMember -Function New-ConfluenceSession
