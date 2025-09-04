# run-mcafee-endpoint.ps1
$exeUrl = "https://github.com/clickinformaticavillaramallo/McAfee/releases/download/1/McAfee-Endpoint-Security.e.exe"
$installer = "$env:TEMP\McAfee-Endpoint-Security.e.exe"

Write-Host "[*] Descargando McAfee Endpoint Security..." -ForegroundColor Yellow
Invoke-WebRequest -Uri $exeUrl -OutFile $installer -UseBasicParsing

Unblock-File -Path $installer

Write-Host "[*] Instalando McAfee Endpoint Security..." -ForegroundColor Green
Start-Process $installer -ArgumentList "/silent" -Wait

Write-Host "[+] McAfee Endpoint Security instalado." -ForegroundColor Green