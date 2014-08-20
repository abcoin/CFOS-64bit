Option Explicit
On Error Resume Next

Private WshShell
Private strDesktop
Private oShellLink
Private aSplit

set WshShell = WScript.CreateObject("WScript.Shell")
If objFSO.FolderExists( "%HOMEPATH%\lulu\download" ) Then
    Set objFolder = objFSO.GetFolder( "%HOMEPATH%\lulu\download" )
End If
 

strDesktop = WshShell.SpecialFolders("Desktop")
set foldername = WScript.ScriptFullName

aSplit = SplitWScript.ScriptFullName, "\")
set oShellLink = WshShell.CreateShortcut(strDesktop & "\" & aSplit(Ubound(aSplit) - 1) & ".lnk")
oShellLink.TargetPath = Replace(WScript.ScriptFullName, WScript.ScriptName, "")
oShellLink.WindowStyle = 1
oShellLink.Description = "lulu download"
oShellLink.WorkingDirectory = Replace(WScript.ScriptFullName, WScript.ScriptName, "")
oShellLink.Save 

MsgBox "Shortcut to " & Replace(WScript.ScriptFullName, WScript.ScriptName, "") & " added yo your desktop!"