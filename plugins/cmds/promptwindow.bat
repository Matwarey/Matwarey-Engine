@echo off
cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\

:: Enable by default
set ctsEnabled=1
set resetEnabled=1
set dataEnabled=1
:: save these enabled commands
(
 echo %ctsEnabled%
 echo %resetEnabled%
 echo %dataEnabled%
)>config.json

:: Setup configs for commands before loading CMDInput
:: 1 = true
:: 0 = false
(
 set /p ctsEnabled=
 set /p resetEnabled=
 set /p dataEnabled=
)<config.json

:CMDInput
set cmd=0
set /p cmd=#:

if %cmd%==cts if %ctsEnabled%==1 C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\cts.bat
if %cmd%==cts if %ctsEnabled%==0 goto ctsDisabled
if %cmd%==reset if %resetEnabled%==1 C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\reset.bat
if %cmd%==reset if %resetEnabled%==0 goto resetDisabled
if %cmd%==data if %dataEnabled%==1 C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\data.bat
if %cmd%==data if %dataEnabled%==0 goto dataDisabled
if %cmd%==help C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\help.bat
if %cmd%==? C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\help.bat
if %cmd%==0 goto CMDInput

:invaildCommand
echo This is a invaild command, please try a different command;
ping localhost -n 3 >nul
goto CMDInput

:ctsDisabled
echo Clear the Screen is disabled.
echo Please enable it in the config.json flie
echo to make cts useable.
ping localhost -n 3 >nul
goto CMDInput

:resetDisabled
echo Reset is disabled.
echo Please enable it in the config.json flie
echo to make reset useable.
ping localhost -n 3 >nul
goto CMDInput

:dataDisabled
echo Data is disabled.
echo Please enable it in the config.json flie
echo to make data useable.
ping localhost -n 3 >nul
goto CMDInput