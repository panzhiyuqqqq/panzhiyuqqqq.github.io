@echo off
chcp 65001 > nul
git add .

set msg="更新文章"
set /p msg="请输入文章备注 (直接回车默认写'更新文章'): "

git commit -m "%msg%"
git push -u origin main

echo.
echo -------- 指令已发送！请往上看是否有 error 报错 --------
pause