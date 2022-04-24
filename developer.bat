@echo off
:home
cls
type stephan_logo.txt
set /p name=Enter Developer Name : 
if "%name%"=="stephan" goto pass
:quit
echo Incorrect Input! Quiting Now.....
pause
exit
:pass
echo --------------------------------------
dir
echo --------------------------------------
echo "I AM Impressed,Now.."
set /p key=Enter Developer Key  :
if "%key%"=="76428967420" goto source
echo "Incorrect Key"
pause
exit
:source
echo ---------------------------------------
echo HotSpot Program Files List...
echo    [u] Unhide All Files 
echo    [h] hide All Batch Files
echo    [1] Hotspot.bat
echo    [2] Set.bat
echo    [3] Start.bat
echo    [4] Stop.bat
echo    [5] ReadMe.bat
echo    [6] developer.bat
set /p input=Enter File Code To Modify : 
if "%input%"=="h" goto hide
if "%input%"=="u" goto unhide
if "%input%"=="1" goto one
:hide
attrib +s +h *.bat
echo All batch files are hidden
attrib +s +h *.txt
echo All text files are hidden
goto home
:unhide
attrib -s -h *.bat
attrib -s -h *.txt
goto home

:one
notepad hotspot.bat
goto home
:two 
notepad set.bat
goto home
:three
notepad start.bat
goto home
:four
notepad stop.bat
goto home
