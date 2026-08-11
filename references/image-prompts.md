# 封面文生图 Prompt 模板库

本文件定义三种封面图风格，供 SKILL.md 匹配文章类型后调用。
所有 prompt 统一使用 `--ar 21:9` 横幅尺寸。

---

## 一、如何判断文章类型

| 文章类型关键词 | 匹配风格 |
|-------------|---------|
| CMC、工艺、纯化、IVT、TFF、GMP、配方、制备、中试、生产、质量、稳定性 | 学术科学风 |
| mRNA序列设计、LNP配方、递送机制、靶向、CAR-T机制、UTR、密码子优化 | 学术科学风 |
| AI、机器学习、深度学习、算法、大模型、AptaBLE、AI设计、预测 | AI哲学风 |
| 行业趋势、产业洞察、竞争格局、赛道、融资、监管、市场、商业化、战略、终局 | 行业洞察风 |
| AACR、ASH、ESMO 等会议综述 | 行业洞察风（大会视角） |

> 当文章同时包含多种特征时，优先判断文章的**核心叙事逻辑**：
> - 以数据/机制为主 → 学术科学风
> - 以技术智能/未来为主 → AI哲学风
> - 以判断/格局/趋势为主 → 行业洞察风

---

## 二、学术科学风 Prompt 模板

**适用场景**：CMC工艺、分子机制、实验数据解读、技术方法类文章

**配色体系（固定）**：
- #BD7C78 柔玫瑰红（蛋白/受体结构）
- #B0D7E9 粉雾蓝（载体/LNP）
- #7767A1 暮紫（信号通路/复合物）
- #D9BE67 暖金（标注/活性分子）
- #62B187 鼠尾草绿（细胞/功能区域）

**Prompt 模板**：
```
Flat vector scientific schematic illustration, academic publication quality, clean white background. Color palette strictly limited to muted rose #BD7C78, powder blue #B0D7E9, soft purple #7767A1, warm gold #D9BE67, sage green #62B187. Subject: [从文章核心内容提炼的2-5个英文关键词描述场景，如 "mRNA-LNP intracellular delivery pathway" 或 "ribosome loading and mRNA decay mechanism"]. Rounded organic shapes for molecular structures and vesicles, thin clean directional arrows, minimal sans-serif annotations. Style references: Nature Biotechnology supplementary figure, Cell journal pathway diagram. Left-to-right process flow, generous white space between elements. No photorealism, no decorative gradients, no shadows. --ar 21:9 --style raw --no text
```

**填写说明**：将 `[从文章核心内容提炼的2-5个英文关键词描述场景]` 替换为具体内容，例如：
- mRNA purification via precipitation and TFF diafiltration workflow
- aptamer-conjugated LNP targeting CD4+ T cells in vivo
- ribosome load attenuation reducing translation-dependent mRNA decay

---

## 三、AI哲学风 Prompt 模板

**适用场景**：AI技术应用、算法设计、人工智能与生命科学交叉类文章

**视觉语言**：至上主义几何抽象 × 神经网络涌现感
- 深靛蓝色底面：未被探索的认知空间
- 发光几何节点：智能涌现/激活信号
- 边缘有机曲线：生物性与数字性的交界

**Prompt 模板**：
```
Suprematist geometric abstraction, deep prussian blue ground (#0D1B2A). Luminous white and electric cerulean geometric primitives — precise circles, orthogonal grids, thin radial lines — self-organizing into emergent lattice structures that suggest neural activation. Scattered warm amber accent nodes mark signal focal points. Style references: Malevich Suprematism, scientific connectome visualization, Mondrian rational composition. Subject context: [从文章核心提炼的场景词，如 "AI-designed aptamer sequence optimization" 或 "deep learning protein-ligand interaction prediction"]. No text, no labels. High contrast, meditative precision. Faint biological organic curves dissolve at periphery, suggesting the boundary between digital logic and living systems. --ar 21:9 --style raw
```

**填写说明**：将场景词替换为具体AI应用内容，例如：
- AI-accelerated aptamer design for targeted drug delivery
- machine learning guided mRNA codon optimization
- deep learning model predicting lipid nanoparticle organ tropism

---

## 四、行业洞察风 Prompt 模板

**适用场景**：行业趋势分析、竞争格局、会议综述、战略判断类文章

**视觉语言**：中国山水画意境 × 当代编辑插画
- 水墨晕染底面：行业格局的模糊与清晰
- 层叠等高线地图：市场地形/赛道格局
- 俯瞰视角的孤独观察者：洞察者的战略高度
- 克制配色：墨黑 + 象牙白 + 深锈红点缀

**Prompt 模板**：
```
Contemporary editorial illustration fusing Chinese ink landscape (shanshui painting) with modern data cartography. Muted ink-wash background in pale slate (#C8C8B8) and aged paper ivory (#F5F0E8). Layered topographic contour lines form an abstract terrain — valleys of uncertainty, ridgelines of emerging clarity — suggesting [从文章提炼的行业主题，如 "the LNP industry shifting from platform narrative to application value" 或 "in vivo CAR-T competitive landscape"]. A solitary figure at an elevated vantage point observes the full landscape below. Style references: New Yorker editorial illustration, Song Dynasty landscape scroll (宋代山水), Nikkei Asian Review cover art. Restrained palette: charcoal ink (#2C2C2C), ivory (#F5F0E8), single deep rust red accent (#8B3A2A). Generous negative space. No decorative fills, no photorealism. Contemplative, long-view, strategic mood. --ar 21:9 --style raw
```

**填写说明**：将行业主题替换为具体内容，例如：
- the mRNA vaccine industry entering post-COVID therapeutic era
- LNP companies pivoting from platform storytelling to application delivery
- saRNA platform emerging as new contender in infectious disease vaccine space

---

## 五、快速场景词提炼规则

为确保 prompt 与文章内容高度匹配，提炼场景词时遵循以下原则：

1. **用英文**，AI绘图工具对英文理解更稳定
2. **具体不泛化**：不用 "mRNA research"，而用 "mRNA ribosome loading control improving protein yield"
3. **描述可视化场景**：优先选择能被绘图工具理解为画面的词汇，而非抽象概念
4. **2-5个关键词足够**：过长的场景描述会稀释画面焦点
