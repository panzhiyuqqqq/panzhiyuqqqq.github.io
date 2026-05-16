@echo off
chcp 65001 > nul
echo ========================================
echo       Hugo 一键捕获灵感 / 新建文章
echo ========================================
echo.

set /p filename="请输入文章的文件名 (建议用纯英文或拼音，如 wanxia，直接回车将随机命名): "

:: 如果直接敲了回车，则默认使用 post-加随机数字 命名
if "%filename%"=="" (
    set filename=post-%random%
)

:: 告诉 Hugo 去生成文章
hugo new posts/%filename%.md

echo.
echo 成功！文章已创建在 content/posts/%filename%.md
echo 正在为你召唤 VS Code...

:: 自动在 VS Code 中打开这篇新文章
code content/posts/%filename%.md
exit