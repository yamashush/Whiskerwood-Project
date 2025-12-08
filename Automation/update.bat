@echo off
setlocal enabledelayedexpansion

set "INSTALL_DIR=C:\Program Files (x86)\Steam\steamapps\common\Whiskerwood"
set "GAME_ID=2489330"
set "PROCESS_NAME=Whiskerwood-Win64-Shipping"
set "JMAP_DUMPER_PATH=jmap_dumper.exe"
set "WAIT_TIME=20"
set "VERSION_FILE_PATH=%INSTALL_DIR%\Whiskerwood\Content\Movies\Version.txt"

echo Starting Whiskerwood automation script...
echo.

echo [1/7] Reading game version from Version.txt...
echo Version file path: "%VERSION_FILE_PATH%"
if not exist "%VERSION_FILE_PATH%" (
    echo ERROR: Version file not found at: "%VERSION_FILE_PATH%"
    echo Make sure Whiskerwood is installed in Steam.
    pause
    exit /b 1
)

set /p GAME_VERSION=<"%VERSION_FILE_PATH%"
for /f "tokens=* delims= " %%a in ("%GAME_VERSION%") do set "GAME_VERSION=%%a"

if "%GAME_VERSION%"=="" (
    echo ERROR: Could not read game version from file
    pause
    exit /b 1
)

echo Game version detected: %GAME_VERSION%
set "OUTPUT_JMAP_PATH=../Content/DynamicClasses/Whiskerwood-%GAME_VERSION%.jmap"
set "OUTPUT_USMAP_PATH=Whiskerwood-%GAME_VERSION%.usmap"
echo Output files will be: Whiskerwood-%GAME_VERSION%.jmap and Whiskerwood-%GAME_VERSION%.usmap

echo Cleaning up existing .jmap files...
del "../Content/DynamicClasses/*.jmap" 2>nul
echo Deleted any existing jmap files in DynamicClasses folder
if exist "Whiskerwood*.usmap" (
    del "Whiskerwood*.usmap"
    echo Deleted existing usmap files
) else (
    echo No existing usmap files to delete
)
echo.

echo [2/7] Launching Whiskerwood via Steam...
start "" "steam://rungameid/%GAME_ID%"
if errorlevel 1 (
    echo ERROR: Failed to launch Whiskerwood from Steam
    pause
    exit /b 1
)
echo Game launch command sent successfully.
echo.

echo [3/7] Waiting %WAIT_TIME% seconds for game to load...
powershell -Command "Start-Sleep -Seconds %WAIT_TIME%"
echo.

echo [4/7] Searching for game process: %PROCESS_NAME%
set "PID="
for /f "tokens=2" %%i in ('tasklist /fi "imagename eq %PROCESS_NAME%.exe" /fo table /nh 2^>nul') do (
    set "PID=%%i"
    goto :found_process
)

:not_found
echo ERROR: Game process '%PROCESS_NAME%.exe' not found!
echo Make sure the game has fully loaded and try again.
pause
exit /b 1

:found_process
echo Game process found with PID: %PID%
echo.

echo [5/7] Running jmap_dumper for .jmap output...
echo Command: %JMAP_DUMPER_PATH% --pid %PID% "%OUTPUT_JMAP_PATH%"
%JMAP_DUMPER_PATH% --pid %PID% "%OUTPUT_JMAP_PATH%"
if errorlevel 1 (
    echo WARNING: jmap_dumper for .jmap file failed or returned an error
) else (
    echo .jmap dump completed successfully
)
echo.

echo [6/7] Running jmap_dumper for .usmap output...
echo Command: %JMAP_DUMPER_PATH% --pid %PID% "%OUTPUT_USMAP_PATH%"
%JMAP_DUMPER_PATH% --pid %PID% "%OUTPUT_USMAP_PATH%"
if errorlevel 1 (
    echo WARNING: jmap_dumper for .usmap file failed or returned an error
) else (
    echo .usmap dump completed successfully
)
echo.

echo [7/7] Closing game process (PID: %PID%)...
taskkill /pid %PID% /f >nul 2>&1
if errorlevel 1 (
    echo WARNING: Failed to close game process. You may need to close it manually.
) else (
    echo Game closed successfully
)
echo.

echo All operations have been completed.
pause