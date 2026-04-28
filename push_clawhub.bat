@echo off
setlocal enabledelayedexpansion

echo ========================================================
echo   Jarvis Core - Publish to ClawHub
echo ========================================================
echo.

echo [1/3] Publishing to ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.4

echo.
echo ========================================================
echo   ClawHub Publish Complete!
echo ========================================================
pause