<#
    Script : oraFwRule.ps1
	USAGE : ${SCRIPT}
	ARGS : None
	DESC : Opens TCP port 1521 on the Windows Defender Firewall for Oracle
#>
# Prep the system for Db2 FireWall rules
New-NetFirewallRule `
    -DisplayName "Oracle Data Server" `
    -Group "SCOM" `
    -Direction Inbound `
    -Protocol TCP `
    -LocalPort 1521 `
    -Action Allow