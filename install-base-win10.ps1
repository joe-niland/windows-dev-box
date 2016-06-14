cinst chocolatey GoogleChrome clink cmder lastpass onedrive TotalCommander gpg4win -y
Install-Package git-credential-manager-for-windows -confirm
Install-Module posh-git


# Update built Cmder's copy of clink with the version from Chocolatey
$clinkDir = gci ${env:ProgramFiles(x86)}\clink | ?{ $_.PSIsContainer } | sort-object -property CreationTime -Descending | select-object -first 1 fullname
if ($clinkDir) {
	copy-item -recurse ($clinkDir.fullname + "\*") c:\tools\cmder\vendor\clink
}

# Now remove the Chocolatey version because it seems to conflict with Cmder's version
cuninst clink -y
