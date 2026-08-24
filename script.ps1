' 100% invisible lock screen
WScript.Sleep 1000
Set objShell = CreateObject("WScript.Shell")
objShell.Run "rundll32.exe user32.dll,LockWorkStation", 0, False
