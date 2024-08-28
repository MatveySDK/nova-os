@echo off
TITLE CFS-MASTER
COLOR 6
echo Type !help for more information
:loop
set /p input=Enter command:

if "%input%" == "!help" goto help
if "%input%" == "!about" goto about
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
start compile[kernel].bat
pause>nul
goto loop

:boot
start compile[boot].bat
pause>nul
goto loop

:about
echo Utility for easy project compilation
pause>nul
goto loop

:macro
start compile[macro].bat
pause>nul
goto loop

:compile_build
start compile[boot].bat & start compile[kernel].bat & start compile[macro].bat
pause>nul
goto loop