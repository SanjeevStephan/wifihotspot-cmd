@echo off
title Set New HOTSPOT SSID Network Name and Network Password 
echo -----------------------------------------
set /p ssid=Enter SSID Network : 
set /p key=Enter Network Key   :
echo "------------------------"
echo      SSID : %ssid%
echo      KEY  : %key%
echo "------------------------"
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
echo "netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%" >> log.txt
pause