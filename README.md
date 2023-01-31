# oraSetupScripts - Automated Oracle Installation
A series of powershell scripts that perform a silent install of Oracle 19c Enterprise and setup a working schema on Windows Server.

# User Guide

## 1. Working directory creation
Setup the script directory for Oracle installation at "E:\app\oracle\oraSetupScripts"

## 2. Oracle service creation
Run the script "oraPrep.ps1" against the target node for Oracle installation.

## 3. Oracle firewall rule
Run the script "oraFwRule.ps1" against the target node for Oracle installation.

## 4. Media deployment
Extract Oracle installation media to "E:\app\oracle\db_home"

## 5. Silent install
Run the script "install19c.ps1" against the target node for Oracle installation.

## 6. Optional. Schema creation
Run the script "dbCreateSchema.ps1" to create a few users and a schema with data to test with.

## 7. Optional. Schema removal
The previously created schema can be removed by running "dbDestroySchema.ps1" against the target node.