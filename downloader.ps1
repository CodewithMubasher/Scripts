' downloader.vbs
' This script downloads lock.vbs from GitHub to the user's TEMP folder

Dim url, tempFolder, tempFile, objXML, objStream, objShell

' 1. Define the source URL and destination path
url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/lock.vbs"
tempFolder = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%TEMP%")
tempFile = tempFolder & "\lock.vbs"

' 2. Download the file
Set objXML = CreateObject("MSXML2.XMLHTTP")
objXML.Open "GET", url, False
objXML.Send

' 3. Save the downloaded content to the temp folder
If objXML.Status = 200 Then
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Open
    objStream.Type = 1 ' Binary
    objStream.Write objXML.ResponseBody
    objStream.SaveToFile tempFile, 2 ' Overwrite
    objStream.Close
    Set objStream = Nothing
    WScript.Echo "Download successful: " & tempFile
Else
    WScript.Echo "Download failed. HTTP Status: " & objXML.Status
End If

Set objXML = Nothing
Set objShell = Nothing
