echo Loading Plugin Command Handler

set hasPlugins=1

echo Setting up Command Handler
cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\
:lv2
ping localhost -n 1 >nul
echo Loading Commands
if exist cts.bat (
  echo cts.bat exist!
) else (
  echo Internal Error when loading the Plugin, "cts.bat"
  echo Maybe it doesn't exist?
  ping localhost -n 3 >nul
  goto failed
)
if exist reset.bat (
  echo reset.bat exist!
) else (
  echo Internal Error when loading the Plugin, "reset.bat"
  echo Maybe it doesn't exist?
  ping localhost -n 3 >nul
  goto failed
)
if exist data.bat (
  echo data.bat exist!
) else (
  echo Internal Error when loading the Plugin, "data.bat"
  echo Maybe it doesn't exist?
  ping localhost -n 3 >nul
  goto failed
)
if exist promptwindow.bat (
  echo promptwindow.bat exist!
) else (
  echo Internal Error when loading the Plugin, "promptwindow.bat"
  echo Maybe it doesn't exist?
  ping localhost -n 3 >nul
  goto failed
)
ping localhost -n 2 >nul
echo Loaded Successfully!
goto loadprompt

:loadprompt
echo Loaded Prompt!
start C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\promptwindow.bat
ping localhost -n 1 >nul
echo Press R here to reload the prompt anytime.
echo Press Q to quit the app.
choice /c RQ >nul

if %errorlevel% equ 1 loadprompt
if %errorlevel% equ 2 exit

:failed
echo Please try again by fixing the error or
echo reinstalling the plugin and trying again!
ping localhost -n 5 >nul