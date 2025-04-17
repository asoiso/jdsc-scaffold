#!/bin/bash

# 检查是否提供了项目名称参数
if [ -z "$1" ]; then
    echo "错误: 请提供项目名称"
    echo "用法: ./build.sh <项目名称>"
    echo "示例: ./build.sh @jdsc/nuxt-hello"
    exit 1
fi

# 设置项目名称
PROJECT_NAME="$1"

# 输出开始构建信息
echo "开始构建项目: $PROJECT_NAME"

# 执行安装依赖
echo "正在安装依赖..."
node common/scripts/install-run-rush.js install -t "$PROJECT_NAME" || {
    echo "错误: 依赖安装失败"
    exit 1
}

# 执行构建
echo "正在构建项目..."
node common/scripts/install-run-rush.js rebuild -t "$PROJECT_NAME" || {
    echo "错误: 项目构建失败"
    exit 1
}

echo "构建完成: $PROJECT_NAME"
