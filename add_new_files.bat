@echo off
chcp 65001 >nul
REM 65001 代表 UTF-8 编码，>nul 让其不显示切换编码的消息

cd /d %~dp0
REM 切换到当前脚本所在目录，确保 Git 命令在正确的 Git 仓库目录中执行

echo 正在添加所有更改...
git add .
echo.
echo 正在提交更改...
git commit -m "Add new files"
echo.
echo 正在推送到远程仓库...
git push origin main
echo.
echo Git 操作完成！
pause
