# 🚀 部署到 GitHub Pages 完整指南

## 步骤 1：推送代码到 GitHub

### 方法 A：使用 GitHub Desktop（推荐新手）

1. 下载安装 [GitHub Desktop](https://desktop.github.com/)
2. 打开 GitHub Desktop
3. File → Add local repository
4. 选择 `D:\Qsync\Website1\my-blog` 文件夹
5. 点击 "Publish repository"
6. 仓库名填写 `blog`，选择 Public
7. 点击 "Publish"

### 方法 B：使用命令行

打开 PowerShell 或 CMD，执行：

```powershell
cd D:\Qsync\Website1\my-blog

# 如果提示需要登录，使用以下方式之一：

# 方式 1：使用 GitHub Token（推荐）
# 在 https://github.com/settings/tokens 生成 Token
# 然后推送时会提示输入密码，输入 Token 即可
git push -u origin main

# 方式 2：使用 SSH（如果已配置）
git remote set-url origin git@github.com:FE-Berserker/blog.git
git push -u origin main
```

---

## 步骤 2：在 GitHub 创建空仓库（如果还没有）

访问：https://github.com/new

填写：
- Repository name: `blog`
- Description: `我的 Hugo 博客`
- 选择 **Public**
- ✅ 勾选 "Add a README file"
- 点击 **Create repository**

---

## 步骤 3：启用 GitHub Actions

1. 访问你的仓库：https://github.com/FE-Berserker/blog
2. 点击顶部的 **Actions** 标签
3. 点击 "I understand my workflows, go ahead and enable them"
4. 如果看到 `.github/workflows/deploy.yml`，说明已配置好

---

## 步骤 4：启用 GitHub Pages

1. 在仓库页面，点击 **Settings** 标签
2. 左侧菜单点击 **Pages**
3. **Build and deployment** 部分：
   - Source: 选择 **GitHub Actions**
4. 点击 Save

---

## 步骤 5：触发首次部署

推送任意更改触发部署：

```bash
cd D:\Qsync\Website1\my-blog
echo "# My Blog" >> README.md
git add README.md
git commit -m "Trigger deployment"
git push
```

或者直接在 GitHub 网页上编辑任意文件并提交。

---

## 步骤 6：查看部署状态

1. 访问仓库 → **Actions** 标签
2. 查看工作流运行状态：
   - 🟡 黄色 = 正在构建
   - 🟢 绿色 = 部署成功
   - 🔴 红色 = 构建失败

等待 1-3 分钟...

---

## 步骤 7：访问你的网站

部署成功后，访问：

**🌐 https://fe-berserker.github.io/blog/**

---

## 🔧 常见问题

### Q: 推送时提示 "Authentication failed"
**A:** 需要使用 GitHub Token 代替密码：
1. 访问 https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选 `repo` 权限
4. 生成后复制 Token
5. 推送时密码处粘贴 Token

### Q: Actions 构建失败
**A:** 
1. 点击失败的 workflow
2. 查看错误日志
3. 常见问题：
   - 主题子模块未获取：检查 `submodules: recursive`
   - Hugo 版本问题：检查 workflow 中的版本号

### Q: 网站样式丢失
**A:** 检查 `hugo.toml` 中的 `baseURL` 是否正确设置为 `https://fe-berserker.github.io/blog/`

---

## 📋 部署后的工作流程

以后每次更新博客：

```bash
cd D:\Qsync\Website1\my-blog

# 创建新文章
hugo new content posts/my-new-post.md

# 编辑文章（用你喜欢的编辑器）
# ...

# 提交并推送
git add .
git commit -m "添加新文章"
git push

# GitHub Actions 会自动部署！
```

---

## ✅ 检查清单

- [ ] 代码已推送到 GitHub
- [ ] 仓库名称为 `blog`
- [ ] GitHub Actions 已启用
- [ ] Pages Source 设置为 GitHub Actions
- [ ] 首次部署成功（Actions 显示绿色）
- [ ] 网站可以访问 https://fe-berserker.github.io/blog/

---

祝你部署顺利！🎉
