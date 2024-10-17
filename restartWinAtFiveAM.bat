@echo off

:loop
rem Get the current time
for /f "tokens=1,2 delims=:" %%a in ("%time%") do (
    set hour=%%a
    set minute=%%b
)

rem Check if the current time is 5:00 AM
if "%hour%"=="05" if "%minute%"=="00" (
    echo Script started at %time% on %date%

    REM Example command 1: Display a message
    echo Running your tasks...

    REM Example command 2: Create a directory
    mkdir C:\Path\To\Your\Directory

    REM Example command 3: Write to a log file
    echo Script executed at %time% on %date% >> C:\Path\To\Your\logfile.txt

    REM Example command 4: Run a specific application
    start "" "C:\Path\To\Your\Application.exe"

    REM Add more commands as needed
) else (
    echo Not the time to run the script. Current time is %time%.
)

rem Wait for 60 seconds before checking the time again
timeout /t 60 >nul
goto loop
