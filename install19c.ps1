<#
    Script : install19c.ps1
	USAGE : ${SCRIPT}
	ARGS : None
	DESC : This script performs a silent install of Oracle 19C via response file.
#>
$ORACLE_BASE="E:\app\oracle" # should be setup by the oracle profile
$ORACLE_HOME="E:\app\oracle\db_home" # - this should already be setup by oracle profile
$ORACLE_BIN="$ORACLE_HOME\bin"
$ORACLE_DBSCRIPTS="$ORACLE_BASE\oraSetupScripts"
$ORACLE_SID="ZDBT01W"

&$ORACLE_HOME\setup.exe -silent -force -responseFile $ORACLE_DBSCRIPTS\ZDBT01W-19C.rsp