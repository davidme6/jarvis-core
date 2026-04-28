@echo off
chcp 65001 > nul
echo ========================================================
echo   Jarvis Core - 一键发布 (Publish) 到 ClawHub
echo ========================================================

echo.
echo 正在发布到 ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.0

echo.
echo ========================================================
echo   ClawHub 发布完成！
echo ========================================================
pause
