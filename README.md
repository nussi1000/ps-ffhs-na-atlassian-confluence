<p align="center"><img width="200" alt="Logo" src="https://www.ffhs.ch/typo3conf/ext/is_design/Resources/Public/img/logo.png"></p>

# ps-ffhs-na-atlassian-confluence
* **Course:** NA, Network-Analysis, INF-V-DS004 
* **Class:** BE1, HS20/21 
* **Author:** Tim Nussbaumer
* **Date:** 28.11.2020


## :page_with_curl: Description
Containing
- Powershell Module
- Pyhton Functions

PowerShell Scripts for Information retreival of Atlassian Confluence API. This Powershell script is developed during a Network Analysis Course at FFHS (Fernfachhochschule Schweiz) 

Atlassian Confluence provides a API to query the Data: https://developer.atlassian.com/server/confluence/confluence-server-rest-api/ \
For the API Reference please use the Link above.

This Script extends the possibility to add Session Cookies to API commands. In some cases you need an Authentication to query the Atlassian Confluence API.

After you have added the Path to the `$env:PSModulePath` the Module is loaded with the following Command:

```
Import-Module ffhs-Confluence -Force
```


## :shell: Powershell Functions
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

## :snake: Python

The Python functions can be used to read Data from a .csv File and do some preparation for Data visualization and calculation with Networkx

**get_highest_degree(G,num=1)**

Gets the Node with highest degree


**get_all_with_degree(G, deg=1)**

Get all Nodes with a specific degree

**get_highest_betweenness(G,num=1)**

Get nodes with highes Betwenness centrality sorted DESC from highest till num Values

**generate_random_graph(n, p)**

Generates a Erdös-Renyi Graph with probability p of connected nodes

**remove_node_degree(G,minimum=0)**

Removes node with specific degree

**new_graph(source)**

Generates a Graph from a .csv File and returns the NetworkX Graph object

**show_graph(G)**

Displays the Graph G as a Matplotlib Plot with some default configuration
