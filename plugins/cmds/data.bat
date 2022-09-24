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

echo Data is shown below;
echo.
echo Save Data
echo %firstTimeUse%
echo %savedData%
echo %setupBefore%
echo %hasPlugins%
echo.
echo Config Data
echo.
echo %EnabledDevMode%
echo %EnabledDataStreamLogs%
echo.
pause
C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\promptwindow.bat