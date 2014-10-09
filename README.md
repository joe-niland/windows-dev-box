Windows Dev Box Setup Scripts
==============================

This repo stores scripts that I use to set up a new Windows dev box.

All scripts rely on [Chocolatey](http://chocolatey.org/) so each script will call `install-dev-common.ps1` to ensure that Chocolatey is available.

**Currently only tested on Windows 7 64 bit**

Scripts
----------

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