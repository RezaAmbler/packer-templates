$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"

if ($env:proxy_enabled -contains 'true') {
  Write-Host "==> Installing Additional Chocolatey packages"
  $env:chocolateyProxyLocation = $env:http_proxy
  choco install 7zip putty.install notepadplusplus sysinternals remote-syslog2 firefox -y
}
else {
  Write-Host "==> Installing Additional Chocolatey packages"
  choco install 7zip putty.install notepadplusplus sysinternals remote-syslog2 firefox -y
}
