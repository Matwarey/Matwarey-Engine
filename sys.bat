:: System Plugins here
@echo off
title Running Startup Commands
echo System Plugins loading
ping localhost -n 3 >nul
goto sysplug2

:sysplug2
:: Set Data Values
set firstTimeUse=0
set savedData=0
set setupBefore=0
set hasPlugins=0
set EnableDevMode=0
set EnabledDataStreamLogs=0
echo Loaded Data Values!
goto sysplug3

:sysplug3
if exist save.sav (
     echo Loaded Data!
	 goto loadSave
) else (
    echo Save file doesn't exist, creating save file
	goto createSave
)
:createSave
(
echo %firstTimeUse%
echo %savedData%
echo %setupBefore%
echo %hasPlugins%
)>save.sav
goto loadSave

:loadSave
(
set /p firstTimeUse=
set /p savedData=
set /p setupBefore=
set /p hasPlugins=
)<save.sav

:sysplug4
if exist config.me (
     echo Loading Config!
	 goto loadConfig
) else (
    echo Config doesn't exist, skipping.
	goto loaded
)

:loadConfig
(
set /p EnabledDataStreamLogs=
set /p EnableDevMode=
)<config.me
echo config.me exists!

:loaded
if %EnabledDataStreamLogs%==1 echo Data Stream Logs Enabled!
if %EnableDevMode%==1 echo Dev Mode Enabled!
if %EnabledDataStreamLogs%==0 echo Data Stream Logs Disabled.
if %EnableDevMode%==0 echo Dev Mode Disabled.
echo System Plugins and Save Data has loaded!

:loadPlugins
echo Loading User Plugins
ping localhost -n 3 >nul
:: If you want to load more plugins, copy and paste this below and put your plugin name in it.
:: A newer system of this will come soon.
C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmdhandler.bat

:: Prevent Save Data Editing
if %hasPlugins% GTR 1 echo Matwarey Engine detected edited hasPlugins numbers.
if %hasPlugins% GTR 1 ping localhost -n 5 >nul
if %hasPlugins% GTR 1 exit