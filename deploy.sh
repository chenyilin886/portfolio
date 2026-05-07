#!/bin/bash

# 设置构建输出目录
REPO_NAME="portfolio"
DEPLOY_DIR="dist"

# 创建 GitHub 仓库（如果不存在）
echo "创建 GitHub 仓库..."
gh repo create ${REPO_NAME} --public --source=. --remote=origin --push

# 构建项目
echo "构建项目..."
npm run build

# 部署到 gh-pages
echo "部署到 GitHub Pages..."
npx gh-pages -d ${DEPLOY_DIR} -r git@github.com:${REPO_NAME}/${REPO_NAME}.git

echo "部署完成！"
echo "网站地址：https://chenyilin886.github.io/${REPO_NAME}/"