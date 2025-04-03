@echo off
echo Starting Dell Dashboard Server...
echo.

cd /d %~dp0
echo Installing dependencies...
call npm install

echo.
echo Starting React server...
start npm start

echo.
echo Server starting! Give it about 30 seconds to fully load...
echo Then open this URL in your browser: http://localhost:3000
echo.
echo Press any key to exit this window...
pause > nul 