$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"

Write-Host "==> Installing vmware-tools without proxy"
choco install vmware-tools -y --no-progress