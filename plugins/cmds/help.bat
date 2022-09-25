set ctsEnabled=0
set resetEnabled=0
set dataEnabled=0

(
 set /p ctsEnabled=
 set /p resetEnabled=
 set /p dataEnabled=
)<config.json

echo.
if %ctsEnabled%==1 echo # cts ~ clears the screen
if %resetEnabled%==1 echo # data ~ shows your config and save data
if %dataEnabled%==1 echo # reset ~ resets your config and save data
echo # reload ~ reloads command handler
echo # help/? ~ shows this
echo.
C:\Users\%username%\Downloads\Matwarey-Engine\plugins\cmds\promptwindow.bat