#!/bin/bash
# 推送到 GitHub 脚本
# 使用方法: ./push-to-github.sh

echo "🚀 推送到 GitHub..."

# 配置
GITHUB_USER="FE-Berserker"
REPO_NAME="blog"
REMOTE_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

cd "$(dirname "$0")"

# 检查是否已配置远程仓库
if ! git remote | grep -q "origin"; then
    echo "📡 添加远程仓库..."
    git remote add origin "$REMOTE_URL"
fi

echo "📤 推送代码到 GitHub..."
git branch -M main

# 推送（可能需要输入用户名和密码/Token）
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ 推送成功！"
    echo ""
    echo "下一步："
    echo "1. 访问 https://github.com/${GITHUB_USER}/${REPO_NAME}"
    echo "2. 进入 Settings → Pages"
    echo "3. Source 选择 'GitHub Actions'"
    echo "4. 访问 https://${GITHUB_USER}.github.io/${REPO_NAME}/"
else
    echo "❌ 推送失败，请检查："
    echo "- 仓库是否已在 GitHub 创建"
    echo "- GitHub 用户名和密码/Token 是否正确"
fi
