# Windows 10 x64 - 1709 - All Editions - Super Minimal Install
### [Download the ISO from Google Drive](https://drive.google.com/open?id=1aI7pdDj5zwz1F0dP4JXV1iAGG0hAoWpB)

This is an ISO that has been completely stripped down and had all the bloatware/spyware/malfeatures possible removed without compromising the system.

The ISO is an 'official' ISO from [Windows ISO](http://windowsiso.net/windows-10-iso/windows-10-creators-update-1709-download-build-16299-15/) and the modifications done to the ISO are done with [MSMG](https://www.ghacks.net/2017/05/02/create-custom-windows-10-installations-with-msmg-toolkit/)


#### The following Apps have been removed from the ISO by MSMG;
* Wallet
* Weather
* Xbox App
* Xbox Gameoverlay
* Xbox Game Speech Service
* Alarms and Clock
* Calculator
* Calender and Mail
* Camera
* Desktop App installer
* Feedback Hub
* Get Help App
* Get Office App
* Groove Music
* Maps
* Messaging
* Movies and TV Provisioned
* Office and Onenote
* Paid Wifi and Mobile App
* Paint 3D
* People App
* Photos App
* Print 3D
* Solitaire Collection
* Skype
* Sticky Notes
* MS-Store
* Xbox Live App.
* MS-Store Purchasing App.
* Tips App.
* View 3d Preview
* Voice Recorder

#### The following features have been removed from the ISO by MSMG

* Microsoft Connect App
* Microsoft OneDrive Desktop Client
* Microsoft Telemetry Services
* Microsoft Skype ORTC
* Windows Desktop File Explorer App
* Windows Embedded Features
* Windows Home Group
* Windows Mixed Reality
* Windows People Experience Host
* Windows Quick Assist App
* Windows Take Test App
* Adobe Flash For Windows
* Edge Browser
* Microsoft Hyper-V
* Internet Explorer UI
* Windows Cortana & Start Menu Search
* Windows Defender
* Windows System Restore
* Windows Search


#### RemoveServices.bat will DELETE the following services;
These services will still run even if you disable them, You can observe this from KernelLand.
* Connected Devices Platform SystemService
* Connected Devices Platform UserService
* Connected User Experiences and Telemetry
* Contact Service
* Remote Desktop
* Remote Desktop Connection Managers x 2
* Remote Registry


#### RemoveServices.bat will DISABLE the following services;
* Diagnostic Services
* Diagnostic Services UserHost
* Diagnostic Services SystemHost


#### SuperParanoid.bat will DELETE the following services;

* Network Location Awareness
* Network List Service
* App V Client
* Windows Event Collector
* Error Reporting Service
* Event Log
* Remote Desktop can still be exploited, Lets fix that
* RD Video Minport
* RD USB Hub Class Filter Driver
* RD USB Hub
* RD Generic USB Device
* RD Device Redirector Driver
* RD Device Redirector Bus Driver
* Remote Access PPPOE Driver
* Remote Access NDIS WAN Driver
* Remote Access TAPI Wan Driver
* Remote Access LEGACY NDIS WAN Driver
* Remote Access IPv6 ARP Driver


These changes will not affect your ability to use your PC in any way and windows update will still work.
