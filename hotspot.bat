@echo off
REM THis Fancy Hotspot programe is developed by Stephan.and you are requested not to make any changes to this program
REM Or It will Stop Working.This Piece of Program is free for distribution as long as the window operating system exits..
REM Have fun fellas..
:home
title Free Wifi Hotspot Program Developed By Stephen from 127.0.0.1:8080
cls
type stephan.txt
set /p choice=Enter Your Choice : 
if "%choice%"=="0" goto zero
if "%choice%"=="1" goto one
if "%choice%"=="2" goto two
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four
if "%choice%"=="5" goto five
if "%choice%"=="6" goto six
if "%choice%"=="x" goto shut
:zero
type stephan_00.txt
title Source COdes
pause
start developer.bat
goto home
:one
title Setting Up New HOTSPOT Network SSID Name and Network Key
type stephan_01.txt
pause
start set_admin.lnk
goto home
:two
type stephan_02.txt
start start_admin.lnk
pause
goto home
:three
type stephan_03.txt
echo "Do you Really Want to Stop Wifi Hotspot(y/n)"
pause
start stop_admin.lnk
echo "Hotspot Stopped Intentionally"
goto home
:four
type stephan_04.txt
title Showing WLAN HostedNetwork SSID Name
netsh wlan show hostednetwork
pause
goto home
:five
type stephan_04.txt
title WLAN HostedNetwork Security Key
netsh wlan show hostednetwork setting=security
pause
goto home
:six
type stephan_05.txt
title You are Reading README.TEXT.INFORMATION
pause
goto home
:shut
title ShutDown WIndow Machine
echo "Shutting Window Now.."
shutdown -s -t 00