@echo off

rem 函数：打印信息
:print_info
echo %1
exit /b

rem 安装 pnpm
call :print_info "即将安装 pnpm"
npm install -g pnpm

rem 安装依赖
call :print_info "即将安装依赖"
pnpm install

rem 提示按Ctrl+C退出
echo 按Ctrl+C退出
pause >nul
