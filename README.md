Windows Dev Box Setup Scripts
==============================

This repo stores scripts that I use to set up a new Windows dev box. I install large products such as Visual Studio from ISO, so they are not included. There **are** versions available in Chocolatey, though, so do this if this suits you better.

All scripts rely on [Chocolatey](http://chocolatey.org/) so each script will call `install-dev-common.ps1` to ensure that Chocolatey is available.

**Currently only tested on Windows 7 64 bit**

How to Use
-------------

1. Open the following URL in IE: http://boxstarter.org/package/boxstarter
  
   + This will install BoxStarter on your system.

2. Configure Windows: 
   + Open cmd.exe and run: `START http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/joe-niland/windows-dev-box/master/configure-windows.ps1`

3. Install basic tools
   + START https://raw.githubusercontent.com/joe-niland/windows-dev-box/master/install-base.ps1



Scripts
----------

### configure-windows.ps1

+ Configures Windows Explorer to show extensions
+ Enables Remote Desktop
+ Enables Microsoft Update
+ Change PS execution policy to RemoteSigned

### install-base.ps1

+ Install:
++ Git
++ Google Chrome
++ cmder
++ TotalCommander
+ Add Git to the user environment variable **PATH**

### install-dev-common.ps1

+ Installs BoxStarter, which installs Chocolatey
+ Sets a `DEVROOT` env var to your local dev root directory for convenience
+ Configures BoxStarter to use a Local Repository path within your `DEVROOT`
+ Ensures Chocolatey path is set in the Machine path variable

### install-dev-dotnet.ps1

+ Installs the following Chocolatey packages:
    * DotNet4.5 
    * DotNet4.5.1 
    * tfs2013powertools 
    * webpi 
    * fiddler 
    * Linqpad4 
    * Logparser 
    * Logparser.LizardGui

+ Installs the following Chocolatey packages via WebPI:
    * IIS-ASPNET 
    * IIS-ApplicationDevelopment 
    * IIS-WebServer 
    * IIS-WebServerRole 
    * IIS-DefaultDocument 
    * IIS-CommonHttpFeatures 
    * IIS-ISAPIFilter 
    * IIS-ISAPIExtensions 
    * IIS-NetFxExtensibility 
    * IIS-RequestFiltering 
    * IIS-Security

+ Registers ASP.NET

### install-dev-appfabric.ps1

+ Installs appfabric

**More work to do on this one - I have an AppFabric Cache configuration script to clean up and add here.**

### install-dev-additional.ps1

+ Installs the following Chocolatey packages:
    * putty 
    * heidisql 
    * winscp 
    * openssl.light 
    * psget 
    * jump-location
    * git-credential-winstore

### install-dev-js.ps1

Front-end Javascript and node.js dev tools.

+ Installs the following Chocolatey packages:
    * nodejs.install 
    * ruby 
    * Compass 
    * Yeoman

Usage
---------

`powershell -ExecutionPolicy Bypass -NoProfile -file install-dev-<whatever>.ps1`
