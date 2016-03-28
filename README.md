Windows Dev Box Setup Scripts
==============================

This repo stores scripts that I use to set up a new Windows dev box. I install large products such as Visual Studio from ISO, so they are not included. There **are** versions available in Chocolatey, though, so do this if this suits you better.

**Currently only tested on Windows 7 64 bit**

How to Use
-------------

### Option 1: Boxstarter URLs

1. Configure Windows: 
   + Open cmd.exe and run: `"%ProgramFiles%\Internet Explorer\iexplore.exe" -extoff "http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/joe-niland/windows-dev-box/master/configure-windows.ps1"`

2. Install essentials:
   +  `"%ProgramFiles%\Internet Explorer\iexplore.exe" -extoff "http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/joe-niland/windows-dev-box/master/install-base.ps1"`

3. Install other scripts as required...

Using this approach doesn't install BoxStarter or Chocolatey on your system (unless you explicitly install them within a script you pass to BoxStarter) so this might be appealing in some cases.

### Option 2: Running locally

You can clone this repo, then install BoxStarter:

Open the following URL in IE: **http://boxstarter.org/package/boxstarter**
This will install BoxStarter on your system. This will also work for other packages, e.g.

http://boxstarter.org/package/nr/chocolatey

Then run each script:

`powershell -ExecutionPolicy Bypass -NoProfile -file install-dev-<whatever>.ps1`


Scripts
----------

### configure-windows.ps1

+ Configures Windows Explorer to show extensions
+ Enables Remote Desktop
+ Enables Microsoft Update
+ Change PS execution policy to RemoteSigned

### install-base.ps1

+ Install:
   * Git
   * Google Chrome
   * cmder
   * TotalCommander
+ Add Git to the user environment variable **PATH**

### install-dev-common.ps1

+ Installs BoxStarter, which installs Chocolatey
+ Sets a `DEVROOT` env var to your local dev root directory for convenience
+ Configures BoxStarter to use a Local Repository path within your `DEVROOT`
+ Ensures Chocolatey path is set in the Machine path variable

### install-dev-dotnet.ps1

+ Installs the following Chocolatey packages:
    * DotNet4.6 
    * tfs2015powertools 
    * fiddler4
    * Linqpad4 

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
**Will probably decomission this shortly, in favour of Redis**

### install-dev-tools.ps1

+ Installs the following Chocolatey packages:
    * putty 
    * heidisql 
    * winscp 
    * openssl.light 
    * psget 
    * git-credential-winstore
    * Logparser 
    * Logparser.LizardGui

### install-dev-js.ps1

Front-end Javascript and node.js dev tools.

+ Installs the following Chocolatey packages:
    * nodejs.install 
    * visualstudiocode
    * ruby 
    * Compass 
    * Yeoman

