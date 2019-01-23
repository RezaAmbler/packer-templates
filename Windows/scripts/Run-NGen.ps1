$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "SilentlyContinue"

Write-Output "Disabling ngen scheduled task"
$ngen = Get-ScheduledTask '.NET Framework NGEN v4.0.30319','.NET Framework NGEN v4.0.30319 64'
$ngen | Disable-ScheduledTask

Write-Output "Running ngen.exe"
. c:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe executeQueuedItems
