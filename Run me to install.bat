echo off
cls
:menu
cls
echo.
echo ===============================================================================
echo        Install Winsock and Inet control	- By Plasma (ICQ-14344635)
echo ===============================================================================
echo.
echo.
echo                       1     Install and register IT!!!
echo                       2     Open the Readme.txt file! (Please read it!)
echo                       3     Exit
echo.
echo.
echo.

choice /c:123
if errorlevel 3 goto ExitMe
if errorlevel 2 goto ReadMeFile
if errorlevel 1 goto InstallIt
cls
goto menu
cls
:InstallIt
cls
echo You are about to:
echo.
echo * Copy MSWinsck.ocx and MSINet.ocx to C:\windows\system
echo * Register the controls, removing the license warning
echo * Have fun!
echo.
echo.
echo Press any key to do the above, or press CTRL + BREAK to exit.
pause>nul
echo.
echo.
echo Checking for nessesary files...
if not exist msinet.ocx goto NoFiles
if not exist mswinsck.ocx goto NoFiles
if not exist ocx.reg goto NoFiles
if not exist regsvr32.exe goto NoFiles
echo Found all files... Copying files to C:\Windows\System...
copy msinet.ocx C:\windows\system >nul
copy mswinsck.ocx C:\windows\system >nul
copy ocx.reg C:\windows\system >nul
copy regsvr32.exe C:\windows\system >nul
echo Copying done. Registering controls...
start C:\windows\system\regsvr32.exe /s msinet.ocx
start C:\windows\system\regsvr32.exe /s mswinsck.ocx
echo Adding registry infomation...
beep
echo.
echo Windows 98 Users: If you are using Windows 98, you will be prompted "Are you sure
echo you want to add the infomation in  (SOME PATH NAME) to the registry?" 
echo Say YES. Windows 95 users wont see anything, this is okay.
echo.
pause
echo.
start C:\windows\system\ocx.reg >nul
echo Installation complete!
echo.
pause
goto Info
:NoFiles
echo Not all files were found, installation is aborting... Press any key to continue.
echo Try re-downloading the file. If all else fails, contact me-
echo ICQ#-14344635
echo E-Mail-andrewarmstrong@hotmail.com
pause >nul
goto Info
:ExitMe
cls
echo You Quit.
echo.
echo.
goto Info
exit
:ReadMeFile
cls
echo Opening Readme.txt file...
start readme.txt
echo Done, press a key to return to menu.
pause >nul
goto menu
:Info
cls
echo This MS-DOS Batch-file was created using notepad, and was created by Plasma.
echo.
echo Happy Internet programming VB Lovers! I love PSC hehehe... Cheers!
echo.
echo.
echo Press a key to close this MS-DOS window.
pause>nul
cls
exit