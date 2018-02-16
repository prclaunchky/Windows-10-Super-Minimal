@echo off
net user administrator /active:yes

echo.
echo "Removing Remote Desktop"
echo.

sc delete SessionEnv
sc stop SessionEnv

sc delete TermService
sc stop TermService

sc delete UmRdpService
sc stop UmRdpService

echo.
echo "Removing Remote Registry"
echo.

sc delete RemoteRegistry
sc stop RemoteRegistry

echo.
echo "Removing Connection Manager"
echo.

sc delete Rasman
sc stop Rasman


echo.
echo "Removing Automatic Connection Manager"
echo.

sc delete RasAuto
sc delete RmSvc

echo.
echo ".. Taking Ownership of RDConnection and deleting its driver so service will uninstall"
echo.

takeown /f C:\Windows\System32\termsrv.dll
cacls termsrv.dll /E /P %username%:F
del C:\Windows\System32\termsrv.dll

echo.
echo ".. Taking Ownership of RDManager and deleting its driver so service will uninstall"
echo.

takeown /f C:\Windows\System32\termmgr.dll
cacls termmgr.dll /E /P %username%:F
del C:\Windows\System32\termmgr.dll

echo.
echo "Deleting Connected Devices Platform Service"
sc delete CDPSvc
sc stop CDPSvc

echo.
echo "Deleting Connected Devices Platform User Service"
sc delete CDPUserSvc
sc stop CDPUsersvc

echo.
echo "Deleting Connected User Experiences and Telemetry"
sc delete DiagTrack
sc stop DiagTrack

echo.
echo "Deleting Contact Service"
sc delete PimIndexMaintenanceSvc
sc stop PimIndexMaintenanceSvc

echo.
echo "Disabling Diagnostic Services, Deleting it is Impossibuhhhh"
sc config DPS start= disabled
sc stop DPS

echo.
sc config WdiServiceHost start= disabled
sc stop WdiServiceHost

echo.
sc config WdiSystemHost start= disabled
sc stop WdiSystemHost
echo.

pause