@echo off
echo Starting Dell Dashboard...
echo.

cd /d %~dp0
echo Installing dependencies (this may take a minute if it's the first run)...
call npm install
echo.

echo Starting React development server...
start cmd /k "npm start"

echo.
echo Waiting for server to start...
echo This may take up to 30 seconds...
echo.

REM Wait longer for the server to start properly
timeout /t 15 /nobreak > nul
echo 15 seconds elapsed, still waiting...
timeout /t 10 /nobreak > nul

echo.
echo Opening Dashboard in browser...
start http://localhost:3000

echo.
echo Dashboard launched!
echo If you see a "Connection Refused" error, wait a few more seconds and refresh the page.
echo You can close this window once you're done using the dashboard.
echo. 