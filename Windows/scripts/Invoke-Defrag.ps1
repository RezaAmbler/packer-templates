$driveList = (Get-PSDrive).Name -match '^[a-z]$'

foreach($drive in $driveList) {
  Optimize-Volume  -DriveLetter $drive -Verbose
}