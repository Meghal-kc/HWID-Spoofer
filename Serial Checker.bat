@echo off
mode con: cols=90 lines=45
:diocane
color 0c
cls
echo Bios
wmic bios get serialnumber
wmic csproduct get uuid
wmic cpu get serialnumber
wmic cpu get processorid
wmic diskdrive get serialnumber
wmic baseboard get serialnumber
wmic memorychip get serialnumber
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo Press ENTER to check serial again...
pause >nul
goto diocane