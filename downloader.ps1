# Downloads and runs a script from a URL
$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$tempFile = Join-Path $env:TEMP "script.ps1"
Invoke-WebRequest -Uri $url -OutFile $tempFile
& $tempFile
