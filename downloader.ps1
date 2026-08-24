$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/script.ps1"
$installDir = "C:\MubasherDemo"
$target = Join-Path $installDir "mubasher.ps1"
New-Item -ItemType Directory -Path $installDir -Force | Out-Null
Invoke-WebRequest -Uri $url -OutFile $target
Write-Host "Installed to: $target"

# Run silently in the background
Start-Process powershell.exe -ArgumentList "-File `"$target`"" -WindowStyle Hidden
