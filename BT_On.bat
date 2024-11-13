@Echo Off
set delay=5


::wmic process where "commandline like '%script.bat%'" get name
wmic process where "commandline like '%%Never_UPDATE.bat%%'" call terminate

cls

:start
cls

REM c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe c:\1\MyScripts\ToggleDCupdate\QXAUpdateSwitcher\Always-Update-Dynamic-Conf-Update.ps1
REM cd /d %~dp0
c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe %~dp0\switch-bt-On.ps1

