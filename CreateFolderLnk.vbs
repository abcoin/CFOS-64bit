' Command syntax: cscript foldersoftlink.vbs "path of local folder" "path of linked folder"
' For example: cscript fsl.vbs "c:\music" 

' Create the folder

Set objFSO = CreateObject("Scripting.FileSystemObject")
'Set objFolder = objFSO.CreateFolder(WScript.Arguments(0))
If objFSO.FolderExists(WScript.Arguments(0)) Then
    Set objFolder = objFSO.GetFolder(WScript.Arguments(0))
Else
    Wscript.Echo "Folder does not exist.
End If
Set oWS = WScript.CreateObject("WScript.Shell")
 sLinkFile = "%USERPROFILE%\Desktop\lulu download.lnk" 
 Set oLink = oWS.CreateShortcut(sLinkFile)
 oLink.TargetPath =  "%HOMEPATH%\lulu\download"
 oLink.WorkingDirectory = "%HOMEPATH%\lulu\download"
 oLink.Save
