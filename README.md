# Hugo + Kong-Htop 博客

使用 Hugo 静态网站生成器和 Kong-Htop 主题构建的个人博客。

## ✨ 特性

- 📝 **Markdown 写作** - 专注内容创作
- 🔢 **数学公式** - 内置 KaTeX 支持（行内 `$...$` 和块级 `$$...$$`）
- 🏷️ **标签系统** - 动态标签云和分类
- 🔍 **全文搜索** - 本地 JSON 搜索
- 🌓 **深色模式** - 自动切换和深度适配
- ⚡ **极速加载** - 静态页面，GPU 加速动画
- 💻 **代码高亮** - 一键复制、行号显示
- 📱 **响应式设计** - 完美适配桌面、平板、手机

## 🚀 快速开始

### 1. 安装 Hugo Extended

**Windows (PowerShell):**
```powershell
winget install Hugo.Hugo.Extended
```

**macOS:**
```bash
brew install hugo
```

**Linux:**
```bash
sudo apt install hugo
```

验证安装：
```bash
hugo version  # 应该显示 "extended"
```

### 2. 本地运行

```bash
# 进入项目目录
cd my-blog

# 启动开发服务器
hugo server -D

# 访问 http://localhost:1313
```

### 3. 创建新文章

```bash
hugo new content posts/my-new-post.md
```

## 📝 写作指南

### Frontmatter 模板

```yaml
---
title: "文章标题"
date: 2024-03-22T10:00:00+08:00
draft: false
tags: ["标签1", "标签2"]
categories: ["分类"]
description: "文章描述（用于 SEO）"
math: true  # 启用数学公式
---
```

### 数学公式

**行内公式：**
```markdown
质能方程：$E = mc^2$
```

**块级公式：**
```markdown
$$
\int_{a}^{b} f(x) \, dx = F(b) - F(a)
$$
```

### 代码块

支持语法高亮和一键复制：

````markdown
```python
def hello():
    print("Hello, World!")
```
````

## 🚢 部署到 GitHub Pages

### 1. 创建 GitHub 仓库

1. 在 GitHub 创建一个新仓库，命名为 `yourusername.github.io`
2. 将本地项目推送到仓库

```bash
git remote add origin https://github.com/yourusername/yourusername.github.io.git
git branch -M main
git push -u origin main
```

### 2. 启用 GitHub Pages

1. 进入仓库 Settings → Pages
2. Source 选择 "GitHub Actions"

### 3. 自动部署

每次推送到 `main` 分支，GitHub Actions 会自动构建并部署！

## 📁 项目结构

```
my-blog/
├── archetypes/          # 内容模板
├── content/             # 网站内容
│   ├── posts/          # 博客文章
│   ├── about/          # 关于页面
│   └── search/         # 搜索页面
├── static/             # 静态资源（图片等）
│   └── images/
├── themes/             # 主题
│   └── kong-htop/
├── hugo.toml           # 站点配置
└── .github/workflows/  # GitHub Actions
    └── deploy.yml
```

## ⚙️ 配置文件说明

### hugo.toml

- `baseURL` - 你的网站域名
- `title` - 网站标题
- `theme` - 主题名称（kong-htop）
- `params.math` - 是否全局启用数学公式
- `menu` - 导航菜单配置

### 自定义配置

修改 `hugo.toml` 中的以下部分：

```toml
[Author]
name = '你的名字'

[params]
    link_color = "#268bd2"        # 亮色模式链接颜色
    dark_link_color = "#58a6ff"   # 深色模式链接颜色
```

## 🔧 常见问题

### Q: Hugo 命令找不到？
A: 确保安装了 Hugo Extended 版本，并添加到系统 PATH。

### Q: 主题没有生效？
A: 运行 `git submodule update --init --recursive` 初始化子模块。

### Q: 数学公式不显示？
A: 在文章 frontmatter 中添加 `math: true`，或在 `hugo.toml` 中设置全局启用。

### Q: 本地预览正常，部署后样式丢失？
A: 检查 `hugo.toml` 中的 `baseURL` 是否配置正确。

## 📚 相关链接

- [Hugo 官方文档](https://gohugo.io/documentation/)
- [Kong-Htop 主题](https://github.com/yezihack/kong-htop)
- [KaTeX 支持的函数](https://katex.org/docs/supported.html)

## 📄 许可证

MIT License

---

**祝你写作愉快！** ✍️

Hugo blog deployed!
