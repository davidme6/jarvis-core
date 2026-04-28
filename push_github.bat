@echo off
chcp 65001 > nul
echo ========================================================
echo   Jarvis Core - 涓€閿笂浼?(Push) 鍒?GitHub
echo ========================================================

echo.
echo [1/2] 姝ｅ湪鎷夊彇鏈€鏂颁唬鐮?(闃叉鍐茬獊)...
git pull origin main

echo.
echo [2/2] 姝ｅ湪鎺ㄩ€佸埌 GitHub...
git add .
set /p commit_msg="璇疯緭鍏ユ洿鏂拌鏄?(鐩存帴鍥炶溅榛樿 'Auto update'): "
if "%commit_msg%"=="" set commit_msg=Auto update
git commit -m "%commit_msg%"
git push origin main

echo.
echo ========================================================
echo   GitHub 鎺ㄩ€佸畬鎴愶紒
echo ========================================================
pause