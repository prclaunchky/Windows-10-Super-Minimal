# Windows 10 x64 - 1709 - Super Minimal Install
### [Download the ISO from Google Drive](https://drive.google.com/open?id=1aI7pdDj5zwz1F0dP4JXV1iAGG0hAoWpB)

This is an ISO that has been completely stripped down and had all the bloatware possible removed from the professional install, The ISO has not been modified except for the install script. The ISO is an 'official' ISO from [Windows ISO](http://windowsiso.net/windows-10-iso/windows-10-creators-update-1709-download-build-16299-15/) and the modifications done to the script are done with [MSMG](https://www.ghacks.net/2017/05/02/create-custom-windows-10-installations-with-msmg-toolkit/)


#### The following things have been removed from the install script in the ISO;
1. All Metro Apps except for the Store including things like calculator and alarms.
1. All Additional 'Features' Including the Game bar / Homegroups / Search / Cortana all that annoying crap.


#### The batch file will delete the following services because they run when they're disabled, Bad Microsoft;
1. Connected Devices Platform SystemService
1. Connected Devices Platform UserService
1. Connected User Experiences and Telemetry
1. Contact Service
1. Remote Desktop
1. Remote Desktop Connection Managers x 2
1. Remote Registry

#### The batch file will also disable the following services;
1. Diagnostic Services
1. Diagnostic Services UserHost
1. Diagnostic Services SystemHost


In addition to the removals made by MSMG you can/must also run "GoAway.bat" to remove/disable the remaining annoying services.

These changes will not affect your ability to use your PC in any way and windows update will still work.
