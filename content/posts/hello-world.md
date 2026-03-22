---
title: "Hugo + Kong-Htop 博客搭建指南"
date: 2024-03-22T10:00:00+08:00
draft: false
tags: ["hugo", "教程", "博客"]
categories: ["技术"]
description: "介绍如何使用 Hugo 和 Kong-Htop 主题搭建支持数学公式的静态博客"
math: true
---

# Hugo + Kong-Htop 博客搭建指南

欢迎来到我的博客！这是一篇示例文章，展示了 Kong-Htop 主题的各项功能。

## 数学公式支持

Kong-Htop 主题内置 KaTeX 支持，可以轻松渲染数学公式。

### 行内公式

这是一个行内公式：$E = mc^2$，表示质能方程。

欧拉公式被誉为最美的数学公式：$e^{i\pi} + 1 = 0$

### 块级公式

二次方程的求根公式：

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

定积分定义：

$$
\int_{a}^{b} f(x) \, dx = \lim_{n \to \infty} \sum_{i=1}^{n} f(x_i^*) \Delta x
$$

### 矩阵

$$
\mathbf{A} = \begin{bmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{bmatrix}
$$

### 求和与极限

$$
\sum_{n=1}^{\infty} \frac{1}{n^2} = \frac{\pi^2}{6}
$$

$$
\lim_{x \to 0} \frac{\sin x}{x} = 1
$$

## 代码高亮

支持多种编程语言的语法高亮：

```python
def fibonacci(n):
    """计算斐波那契数列"""
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

# 打印前10个斐波那契数
for i in range(10):
    print(f"F({i}) = {fibonacci(i)}")
```

```javascript
// 快速排序算法
function quickSort(arr) {
    if (arr.length <= 1) return arr;
    
    const pivot = arr[Math.floor(arr.length / 2)];
    const left = arr.filter(x => x < pivot);
    const middle = arr.filter(x => x === pivot);
    const right = arr.filter(x => x > pivot);
    
    return [...quickSort(left), ...middle, ...quickSort(right)];
}
```

## Markdown 支持

### 列表

**无序列表：**
- 支持数学公式
- 支持代码高亮
- 支持标签分类
- 支持全文搜索

**有序列表：**
1. 安装 Hugo
2. 选择主题
3. 编写文章
4. 部署到 GitHub Pages

### 表格

| 功能 | 状态 | 说明 |
|------|------|------|
| 数学公式 | ✅ | KaTeX 支持 |
| 代码高亮 | ✅ | 支持复制 |
| 深色模式 | ✅ | 自动切换 |
| 标签云 | ✅ | 动态效果 |
| 搜索 | ✅ | 本地搜索 |

### 引用

> "数学是科学的皇后，数论是数学的皇后。" —— 高斯

### 链接和图片

[Hugo 官方文档](https://gohugo.io/)

![示例图片](/images/placeholder.jpg)

## 标签和分类

本文使用了以下标签：
- **标签**: hugo, 教程, 博客
- **分类**: 技术

你可以点击标签查看更多相关文章！

## 结语

这就是 Kong-Htop 主题的基本功能展示。开始你的写作之旅吧！
