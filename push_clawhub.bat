@echo off
chcp 936 > nul
echo ========================================================
echo   Jarvis Core - 一键发�?(Publish) �?ClawHub
echo ========================================================

echo.
echo 正在发布�?ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.0

echo.
echo ========================================================
echo   ClawHub 发布完成！`r
echo ========================================================
pause