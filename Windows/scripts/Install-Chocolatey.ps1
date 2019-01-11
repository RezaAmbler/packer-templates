$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "stop"
$env:chocolateyUseWindowsCompression = 'false'


write-output "==> Installing chocolatey"
Invoke-WebRequest -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression