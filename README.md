<p align="center"><img width="200" alt="Logo" src="https://www.ffhs.ch/typo3conf/ext/is_design/Resources/Public/img/logo.png"></p>

# ps-ffhs-na-atlassian-confluence
* **Course:** NA, Network-Analysis, INF-V-DS004 
* **Class:** BE1, HS20/21 
* **Author:** Tim Nussbaumer


## 📌 Description
PowerShell Scripts for Information retreival of Atlassian Confluence API. This Powershell script is developed during a Network Analysis Course at FFHS (Fernfachhochschule Schweiz) 


Atlassian Confluence provides a API to query the Data: https://developer.atlassian.com/server/confluence/confluence-server-rest-api/ \
For the API Reference please use the Link above.

This Script extends the possibility to add Session Cookies to API commands. In some cases you need an Authentication to query the Atlassian Confluence API.

After you have added the Path to the `$env:PSModulePath` the Module is loaded with the following Command:

```
Import-Module ffhs-Confluence -Force
```


## ⚙️ Functions
**Get-ConfluenceWikiTree**

This Function Requires a Root of a Wiki-Page and takes all its nodes below and gives it back as an output. If you input an array of roots all of connected nodes will be returned

**Get-ConfluencWikiPagesOnly**

From a List, Values are grouped by id and returned

**New-ConfluenceNameMapping**

This Function maps known corporate User with the help of a matching table

**New-ConfluenceSession**

PowerShell Scripts for Information retreival of Atlassian Confluence API. Including Session authentication for Corporate use

**Get-ConfluenceNATuplePermutations**

Creates Tuples from every User who worked with another user on the same Page
