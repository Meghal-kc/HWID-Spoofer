@echo off
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls
IPCONFIG /FLUSHDNS
IPCONFIG /RELEASE
NET STOP DNSCACHE
NET STOP DHCP
NET START DNSCACHE
NET START DHCP
IPCONFIG /REGISTERDNS
arp -a -d
netsh interface ip delete arpcache
netsh interface ip delete destinationcache
IPCONFIG /FLUSHDNS
IPCONFIG /RENEW

netsh int ip set address "%%j" dhcp 
netsh int ip set dns "%%j" dhcp 
netsh interface set interface name="%%j" admin=enabled 
certutil -URLCache * delete 
netsh int ip reset 
netsh int ipv4 reset 
netsh int ipv6 reset 
ipconfig / >nul
ipconfig /release >nul
ipconfig /renew >nul
ipconfig /flushdns >nul
netsh advfirewall reset
netsh winsock reset
netsh int ip reset
netsh winsock reset 
netsh advfirewall reset