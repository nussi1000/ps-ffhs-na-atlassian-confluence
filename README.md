# ps-ffhs-na-atlassian-confluence
PowerShell Scripts for Information retreival of Atlassian Confluence API

This Powershell script is developed during a Network Analysis Course at FFHS (Fernfachhochschule Schweiz)
Course: NA, Network-Analysis, INF-V-DS004
Class: BE1, HS20/21

Atlassian Confluence provides a API to query the Data: https://developer.atlassian.com/server/confluence/confluence-server-rest-api/
For the API Reference please use the Link above.

This Script extends the possibility to add Session Cookies to API commands. In some cases you need an Authentication to query the Atlassian Confluence API.




Get-ConfluenceWikitree
Input: Object (id, title)
Output: Object (id, title, parent_id, parent_title, editor, edit_date)

Get-ConfluenceWikipagesOnly
Input: Object (id, title, parent_id, parent_title, editor, edit_date)
Output Object (id, title, parent_id, parent_title, editor, edit_date) | group-by id, title


Get-ConfluenceTuplepermutations

New-ConfluenceSession
Input: 