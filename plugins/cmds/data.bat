@echo off
(
set /p EnabledDataStreamLogs=
set /p EnableDevMode=
)<config.me

(
set /p firstTimeUse=
set /p savedData=
set /p setupBefore=
set /p hasPlugins=
)<save.sav

cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\config.json
(
 set /p ctsEnabled=
 set /p resetEnabled=
 set /p dataEnabled=
)<config.json
cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\

echo Data is shown below;
echo.
echo Save Data
echo %firstTimeUse%
echo %savedData%
echo %setupBefore%
echo %hasPlugins%
echo.
echo Config.me Data
echo.
echo %EnabledDevMode%
echo %EnabledDataStreamLogs%
echo.
echo Config.json Data
echo.
echo %ctsEnabled%
echo %resetEnabled%
echo %dataEnabled%
echo.
echo You may need to redo this in fullscreen mode to see it all.
pause
C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\promptwindow.bat