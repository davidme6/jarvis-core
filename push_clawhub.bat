@echo off
echo ========================================================
echo   Jarvis Core - Publish to ClawHub
echo ========================================================

echo.
echo Publishing to ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.1

echo.
echo ========================================================
echo   ClawHub Publish Complete!
echo ========================================================
pause
