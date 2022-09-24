@echo off
cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\

:CMDInput
set /p cmd=

if %cmd%==cts C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\cts.bat
if %cmd%==reset C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\reset.bat
if %cmd%==data C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\data.bat

goto CMDInput