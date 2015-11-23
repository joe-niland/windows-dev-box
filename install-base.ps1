cinst git GoogleChrome cmder TotalCommander truecrypt lastpass onedrive

$gitPath = "C:\Program Files\Git"

if ($($env:Path).ToLower().Contains($($gitPath).ToLower()) -eq $false) {
   $currentUserPath = [Environment]::GetEnvironmentVariable( "Path", [System.EnvironmentVariableTarget]::User )
   [Environment]::SetEnvironmentVariable( "Path", 
      $currentUserPath + ";" + $gitPath + "\cmd;" + $gitPath + "\bin", 
      [System.EnvironmentVariableTarget]::User )
}

cinst Powershell -pre
