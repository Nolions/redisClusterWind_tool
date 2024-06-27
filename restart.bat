@echo off

echo Restarting Redis servers...

REM Call the stop script to stop all Redis servers
call stop.bat

REM Wait for a few seconds to ensure all servers are stopped
timeout /t 5 /nobreak

REM Call the start script to start all Redis servers
call start.bat

echo All Redis servers have been restarted.
pause
