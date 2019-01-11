$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"
$packer_timezone = $env:packer_timezone

write-host "==> Setting timezone to $packer_timezone"
#Set-TimeZone -id "Pacific Standard Time"
.\TZUTIL.exe /s "$packer_timezone"
write-host "==> It's peanut butter jelly time! Peanut butter jelly time!"
date
