del /q C:\Users\%username%\Downloads\Matwarey-Engine\save.sav
del /q C:\Users\%username%\Downloads\Matwarey-Engine\config.me
echo Data resetted successfully!
echo The program will now exit.
ping localhost -n 5 >nul
TASKKILL /F /IM cmd.exe /T
:: just in case if not killed correctly.
exit