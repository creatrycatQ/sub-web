@echo off
chcp 65001 >nul
title 机场订阅转换 - 本地 Web 服务

echo ==================================================
echo   ✈️  正在启动 机场订阅转换 前端服务...
echo ==================================================

if not exist "dist" (
    echo [提示] 尚未构建前端资源，正在自动执行 npm run build...
    cmd /c "npm run build"
)

echo [提示] 服务启动中，浏览器访问 http://localhost:8080 ...
start http://localhost:8080
node server.js

pause
