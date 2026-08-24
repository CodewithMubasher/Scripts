# Completely silent lock - NO WINDOW at all
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class LockScreen {
    [DllImport("user32.dll")]
    public static extern bool LockWorkStation();
}
"@

Start-Sleep -Seconds 10
[LockScreen]::LockWorkStation()
