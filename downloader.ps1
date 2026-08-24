# Downloads and runs a script from a URL
$url = "https://github.com/CodewithMubasher/Scripts/blob/main/script.ps1"
$tempFile = Join-Path $env:TEMP "script.ps1"
Invoke-WebRequest -Uri $url -OutFile $tempFile
& $tempFile