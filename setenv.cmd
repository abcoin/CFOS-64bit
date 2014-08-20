set InstallutilRootPath=%windir%\Microsoft.NET\Framework\v4.0.30319
set BinDir="C:\cfos\bin"
md %USERPROFILE%\cfos\
md %USERPROFILE%\cfos\temp

@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%

echo sLinkFile = "%USERPROFILE%\Desktop\cfos.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%BinDir%\cfos.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
REM del %SCRIPT%