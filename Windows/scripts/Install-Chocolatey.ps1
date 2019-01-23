$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "stop"
$env:chocolateyUseWindowsCompression = 'false'

ping -n 1 google.com
write-output "==> Installing chocolatey"
Invoke-WebRequest -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression