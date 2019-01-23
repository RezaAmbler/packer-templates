$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "SilentlyContinue"

write-host "==> Kneecapping windows firewall "
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False -verbose
