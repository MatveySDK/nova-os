@echo off
TITLE CFS-MASTER
COLOR 6
echo Type !help for more information
:loop
set /p input=Enter command:

if "%input%" == "!help" goto help
if "%input%" == "!version" goto version
if "%input%" == "!kernel" goto kernel
if "%input%" == "!boot" goto boot
if "%input%" == "!macro" goto macro
if "%input%" == "!compile build" goto compile_build
goto loop

:help
echo !about - about software
echo !version - version software
echo !help - list command
echo !kernel - compile kernel
echo !boot - compile boot
echo !macro - compile macro
echo !compile build - compile all
pause>nul
goto loop

:version
echo v.beta-0-1
pause>nul
goto loop

:kernel
echo kernel
pause>nul
goto loop

:boot
echo boot
pause>nul
goto loop

:about
echo about
pause>nul
goto loop

:macro
echo macro
pause>nul
goto loop

:compile_build
echo ahahhaa
pause>nul
goto loop