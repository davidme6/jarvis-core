@echo off
chcp 65001 > nul
echo ========================================================
echo   Jarvis Core - 一键上传 (Push) 到 GitHub
echo ========================================================

echo.
echo [1/2] 正在拉取最新代码 (防止冲突)...
git pull origin main

echo.
echo [2/2] 正在推送到 GitHub...
git add .
set /p commit_msg="请输入更新说明 (直接回车默认 'Auto update'): "
if "%commit_msg%"=="" set commit_msg=Auto update
git commit -m "%commit_msg%"
git push origin main

echo.
echo ========================================================
echo   GitHub 推送完成！
echo ========================================================
pause
