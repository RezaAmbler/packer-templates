$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"

if ($env:proxy_enabled -contains 'true') {
  Write-Host "==> Installing dotnet4.6.2"
  $env:chocolateyProxyLocation = $env:http_proxy
  choco install dotnet4.6.2 -y
}
else {
  Write-Host "==> Installing dotnet4.6.2"
  choco install dotnet4.6.2 -y
}
