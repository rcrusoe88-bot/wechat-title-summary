# WeChat Title & Summary — 公众号标题/摘要/封面图生成器

> 一个面向**专业生物医药 / mRNA / LNP 领域**公众号文章的 Skill：输入文章正文，输出 3 组候选「标题 + 摘要」方案，并可选生成 4 套风格的**封面图文生图 prompt**（可直接用于 DALL-E、Midjourney、Gemini 等文生图模型）。

## 功能特性

- ✍️ **3 组差异化方案**：每次输出 3 组标题+摘要（报道型 / 叙事型 / 问句型 / 观点型 / 方法链型），风格各有侧重，不满意可完全重出
- 📏 **严格字数规格**：标题 ≤ 40 字、摘要 ≤ 120 字，自动标注实际字数
- 🖼️ **4 套封面风格 prompt 模板**：
  - 主题一：学术机制图风（白底矢量生物插画）
  - 主题二：手绘信息图风（暖米色纸感，「从 X 到 Y」认知转变）
  - 主题三：顶刊科研封面风（暗色背景 + 发光主体 + 视觉隐喻）
  - 主题四：粘土泥塑立体微缩风（多步骤方法论 / Setup 指南）
- 🎯 **面向专业读者**：保留 mRNA、LNP、CAR-T、tLNP 等术语原文，不做知识普及化
- ✅ **质量自检**：内置校验脚本，检查标题/摘要字数与封面宽高比（21:9）

## 快速开始

1. 向 AI 提供一篇公众号文章正文（论文解读 / 行业趋势 / 技术评估 / 方法学 / 新闻报道均可）
2. 获得 3 组「标题 + 摘要」方案，选择其一或要求重新生成
3. （可选）选择封面主题，将标题、核心概念、关键数据代入模板 `{}` 占位符
4. 将生成的 prompt 粘贴至 DALL-E / Midjourney / Stable Diffusion / Gemini 使用

## 校验脚本

```bash
# 标题字数合规性（≤40 字）
echo "标题内容" | bash scripts/validate_output.sh --title

# 摘要字数合规性（≤120 字）
echo "摘要内容" | bash scripts/validate_output.sh --summary

# 封面宽高比检测（21:9 = 7:3）
echo "<html>..." | bash scripts/validate_output.sh --cover-ratio
```

## 目录结构

```
wechat-title-summary/
├── skill.md                     # Skill 主定义（工作流程、风格指南、prompt 模板）
├── skill.json                   # Skill 元数据
├── README.md                    # 本文件
├── evals/
│   └── trigger_eval.json        # 触发条件评估用例
├── references/
│   ├── title_patterns.md        # 标题模式参考
│   ├── summary_examples.md      # 摘要示例参考
│   ├── style-guide.md           # 风格指南
│   ├── image-prompts.md         # 封面图 prompt 参考
│   ├── cover_theme1_academic.md # 主题一：学术机制图
│   ├── cover_theme2_handdrawn.md# 主题二：手绘信息图
│   ├── cover_theme3_journal.md  # 主题三：顶刊科研封面
│   └── cover_theme4_claydiorama.md # 主题四：粘土泥塑微缩
└── scripts/
    └── validate_output.sh       # 输出规格校验脚本
```

## 触发关键词

帮我写标题、起个题目、写摘要、设计标题和摘要、生成封面图、封面图提示词、标题和摘要方案

## 适用领域

mRNA 疫苗、LNP 递送、CAR-T、基因治疗、癌症疫苗、自身免疫治疗、纯化工艺、CMC 等生物医药细分领域的公众号深度内容创作。

## 许可

本项目作为 Skill 开源发布，含通用模板与参考文档。
