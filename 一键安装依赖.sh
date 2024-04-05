#!/bin/bash

# 函数：打印信息
print_info() {
    echo -e "\e[32m$1\e[0m"  # 绿色字体
}

# 安装 pnpm
print_info "即将安装 pnpm"
npm install -g pnpm

# 安装依赖
print_info "即将安装依赖"
pnpm install

# 提示按Ctrl+C退出
echo -e "\e[32m按Ctrl+C退出\e[0m"
read -n 1 -s -r -p "按Ctrl+C继续"
