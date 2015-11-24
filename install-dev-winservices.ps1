# & .\install-dev-common.ps1

Write-Host "Installing other Windows services"

cinst -source windowsfeatures MSMQ-Container MSMQ-Server