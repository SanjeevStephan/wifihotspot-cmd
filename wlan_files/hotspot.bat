@echo off
:home
cls
type stephan.txt
echo    --------------------------------------
echo         [0] Edit Source Code..                                            
echo         [1] SET   Wlan HotSpot                                          
echo         [2] START Wlan HotSpot                                          
echo         [3] STOP  Wlan HotSpot                                          
echo         [4] SHOW  Wlan Security Key                                      
echo         [5] ReadMe!If You Need Help..                                    
echo     ---------------------------------------
set /p choice=Enter Your Choice : 
if "%choice%"=="0" goto zero
if "%choice%"=="1" goto one
if "%choice%"=="2" goto two
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four
if "%choice%"=="5" goto five
:zero
type stephan_00.txt
pause
goto home
:one
type stephan_01.txt
set /p ssid=Enter SSID Network : 
set /p key=Enter Network Key :
echo "------------------------"
echo      SSID : %ssid%
echo      KEY  : %key%
echo "------------------------"
echo  netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
pause
goto home
:two
type stephan_02.txt
start start_admin.lnk
echo "Hotspot Started"
pause
goto home
:three
type stephan_03.txt
netsh wlan stop hostednetwork
echo "Do you Really Want to Stop Wifi Hotspot(y/n)"
pause
echo "Hotspot Stopped Intentionally"
goto home
:four
type stephan_04.txt
netsh wlan show hostednetwork setting=security
pause
goto home
:five
type stephan_05.txt
pause
goto home
