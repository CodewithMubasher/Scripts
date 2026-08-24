# Downloads and runs the lock script from GitHub
$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$tempFile = Join-Path $env:TEMP "lock.ps1"

# Download the script
Invoke-WebRequest -Uri $url -OutFile $tempFile

# Run it
& $tempFile
