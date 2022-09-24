@echo off
:: Fix it so now it runs and finds saves and configs without issues.
cd C:\Users\%username%\Downloads\Matwarey-Engine
:: Loads Plugins, Saves Files, & System Commands.
cmd /c C:\Users\%username%\Downloads\Matwarey-Engine\sys.bat
:: put pause below if you having crash issues.