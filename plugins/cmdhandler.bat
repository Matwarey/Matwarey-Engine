echo Loading Plugin Command Handler

set hasPlugins=1
set cmd=null
if %EnableDevMode%==1 echo Dev Mode Is Enabled!

echo Setting up Command Handler
cd C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\
:lv2
ping localhost -n 1 >nul
echo Loading Commands
if exist cts.bat (
  echo cts.mat exist!
) else (
  echo Internal Error when loading the Plugin, "cts.mat"
  echo Maybe it doesn't exist?
  ping localhost -n 3 >nul
  goto failed
)
ping localhost -n 2 >nul
echo Loaded Successfully!
goto loadprompt

:loadprompt
echo Loaded Prompt!
C:\Users\Matth\Downloads\Matwarey-Engine\plugins\cmds\promptwindow.bat
ping localhost -n 1 >nul
echo Press R here to reload the prompt anytime.

:failed
echo One of your Plugins has failed to load!
echo Please try again by fixing the error or
echo reinstalling the plugin and trying again!
ping localhost -n 5 >nul