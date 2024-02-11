Write-Host "Launch All Sim-Racing Apps"
Start-Sleep -Seconds 1
Write-Host "Opening CrewChief & iRacing UI"
Start-Process -FilePath "C:\Program Files (x86)\Britton IT Ltd\CrewChiefV4\CrewChiefV4.exe"
Start-Sleep -Seconds 1
Write-Host "Opening iOverlay"
Start-Process -FilePath "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\iOverlay.lnk"
Start-Sleep -Seconds 1
Write-Host "Opening vRS Telemetry Logger"
Start-Process -FilePath "C:\Users\deana\VirtualRacingSchool\VRS-TelemetryLogger.exe" -WindowStyle Minimized
Start-Sleep -Seconds 1
Write-Host "Opening Garage 61 Telemetry"
Start-Process -FilePath "C:\Users\deana\AppData\Roaming\garage61-install\garage61-launcher.exe" -WindowStyle Minimized
Start-Sleep -Seconds 1
Write-Host "Opening 1simracing"
Start-Process -FilePath "C:\Users\deana\AppData\Local\1simracing\1simracing.exe" -WindowStyle Minimized
Start-Sleep -Seconds 1
Write-Host "Opening Trading Paints"
Start-Process -FilePath "C:\Program Files (x86)\Rhinode LLC\Trading Paints\Trading Paints.exe" -WindowStyle Minimized
Start-Sleep -Seconds 5
Write-Host ""
Write-Host "Waiting for iRacing UI to be closed..."
$iracing = Get-Process "iRacingUI"
$iracing.WaitForExit()
Start-Sleep -Second 10
Write-Host "iRacing Closed, Shutting Down all Sim Racing Apps!"
Get-Process "*crew*" | Stop-Process
Get-Process "*iOverlay*" | Stop-Process
Get-Process "*VRS*" | Stop-Process
Get-Process "*1simracing*" | Stop-Process
Get-Process "*Trading*" | Stop-Process
Get-Process "garage61*" | Stop-Process
Write-Host "All Process Stopped, Exiting"
Start-Sleep -Seconds 5
