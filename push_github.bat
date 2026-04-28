@echo off
echo ========================================================
echo   Jarvis Core - Push to GitHub
echo ========================================================

echo.
echo [1/2] Pulling latest code to prevent conflicts...
git pull origin main

echo.
echo [2/2] Pushing to GitHub...
git add .
set /p commit_msg="Enter commit message (Press Enter for 'Auto update'): "
if "%commit_msg%"=="" set commit_msg=Auto update
git commit -m "%commit_msg%"
git push origin main

echo.
echo ========================================================
echo   GitHub Push Complete!
echo ========================================================
pause
