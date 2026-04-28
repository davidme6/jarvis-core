@echo off
chcp 65001 > nul
echo ========================================================
echo   Jarvis Core - 涓€閿彂甯?(Publish) 鍒?ClawHub
echo ========================================================

echo.
echo 姝ｅ湪鍙戝竷鍒?ClawHub...
call clawhub publish . --slug jarvis-core --version 3.1.0

echo.
echo ========================================================
echo   ClawHub 鍙戝竷瀹屾垚锛?echo ========================================================
pause