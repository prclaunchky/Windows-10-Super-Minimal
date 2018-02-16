@echo off
net user administrator /active:yes
echo.
 
echo "Network Location Awareness"
sc config NlaSvc start= disabled
echo.
 
echo "Net List"
sc config netprofm start= disabled
echo.
 
echo "App V Client"
sc config AppVClient start= disabled

echo "Windows Event Collector"
sc config Wecsvc start= disabled
echo.
 
echo "Error Reporting Service"
sc config WerSvc start= disabled
echo.
 
echo "Event Log"
sc config EventLog start= disabled
echo.

echo "Remote Desktop can still be exploited, Lets fix that"
 
echo "RD Video Minport"
sc delete RdpVideoMiniport
echo.
 
echo "RD USB Hub Class Filter Driver"
sc delete tsusbflt
echo.
 
echo "RD USB Hub"
sc delete tsusbhub 
echo.
 
echo "RD Generic USB Device"
sc delete TsUsbGD
echo.
 
echo "RD Device Redirector Driver"
sc delete RDPDR
echo.
 

echo "RD Device Redirector Bus Driver"
sc delete rdpbus
sc start rdpbus
sc stop rdpbus


echo "Remote Access PPPOE Driver"
sc delete RasPppoe


echo "Remote Access NDIS WAN Driver"
sc delete NdisWan


echo "Remote Access TAPI Wan Driver"
sc delete NdisTapi


echo "Remote Access LEGACY NDIS WAN Driver"
sc delete ndiswanlegacy


echo "Remote Access IPv6 ARP Driver"
sc delete wanarpv6


echo "Remote Access IP ARP Driver"
sc delete wanarp


echo "Remote Access Auto Connection Driver"
sc delete RasAcd

echo.
echo ".. TO/Delete of Device Redirector Driver Ignore if denied"
echo.

takeown /f C:\Windows\System32\drivers\rdpbus.sys
cacls C:\Windows\System32\drivers\rdpbus.sys /E /P %username%:F
del C:\Windows\System32\drivers\rdpbus.sys


pause