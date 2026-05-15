@chcp 65001 > nul
@echo off
git add .
set /p msg="请输入文章备注: "
git commit -m "%msg%"
git push
echo -------- 发布成功！云端机器人正在干活 --------
pause