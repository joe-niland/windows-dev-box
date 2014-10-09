& .\install-dev-common.ps1

cinst DotNet4.5 DotNet4.5.1 tfs2013powertools webpi fiddler Linqpad4 Logparser Logparser.LizardGui
# EntityFrameworkPowerTools
cinst -source windowsfeatures IIS-ASPNET IIS-ApplicationDevelopment IIS-WebServer IIS-WebServerRole IIS-DefaultDocument IIS-CommonHttpFeatures IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility IIS-RequestFiltering IIS-Security
$aspnet_regiis = Join-path -Path $env:WinDir -ChildPath Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe
& $aspnet_regiis -I
Write-Host "Now open IIS Manager and allow the ASP.NET 4.0 ISAPI modules"