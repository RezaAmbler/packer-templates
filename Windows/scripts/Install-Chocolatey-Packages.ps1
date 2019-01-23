$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"

if ($env:proxy_enabled -contains 'true') {
  Write-Host "==> Installing "
  $env:chocolateyProxyLocation = $env:http_proxy
  choco install 7zip putty.install notepadplusplus sysinternals remote-syslog2 firefox dotnet4.6.2 -y
}
else {
  Write-Host "==> Installing Newer Version of PowerShell"
  choco install powershell -y --no-progress 
}