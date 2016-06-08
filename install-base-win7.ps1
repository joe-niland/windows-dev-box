cinst GoogleChrome clink cmder truecrypt lastpass onedrive
cinst TotalCommander -version 8.52.01
choco install gcm -pre
cinst Powershell -pre

# Update built Cmder's copy of clink with the version from Chocolatey
$clinkDir = gci ${env:ProgramFiles(x86)}\clink | ?{ $_.PSIsContainer } | sort-object -property CreationTime -Descending | select-object -first 1 fullname
if ($clinkDir) {
	copy-item -recurse ($clinkDir.fullname + "\*") c:\tools\cmder\vendor\clink
}

# Now remove the Chocolatey version because it seems to conflict with Cmder's version
cuninst clink -y