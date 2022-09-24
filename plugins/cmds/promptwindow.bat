cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\

:CMDInput
set /p cmd=

if %cmd%==cts cts.bat
if %cmd%==null goto CMDInput

goto CMDInput