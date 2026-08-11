---
name: wechat-title-summary
description: >
  为专业生物医药/mRNA/LNP领域公众号文章生成标题、摘要和封面图提示词。当用户提供一篇文章正文并要求生成标题、摘要、选题方案，或明确说"帮我写标题"、"起个题目"、"写摘要"、"设计标题和摘要"、"生成封面图"、"给我封面图提示词"时，必须调用本skill。本skill会生成3组候选标题+摘要方案，并可选输出4套封面图文生图prompt（主题一：学术机制图风 / 主题二：手绘信息图风 / 主题三：顶刊科研封面风 / 主题四：粘土泥塑立体微缩风——适合多步骤方法论与Setup指南），可直接用于DALL-E、Midjourney、Gemini等图像生成模型。面向专业从业者读者群，风格精准、有力、保留术语。
references:
  - references/title_patterns.md
  - references/summary_examples.md
  - references/cover_theme1_academic.md
  - references/cover_theme2_handdrawn.md
  - references/cover_theme3_journal.md
  - references/cover_theme4_claydiorama.md
---

# 公众号标题 & 摘要 & 封面图生成技能

## 任务概述

用户会提供一篇公众号文章的正文内容，你的任务是：
1. 生成 **3 组候选标题 + 摘要方案**，由用户自主选择
2. 可选：根据用户选定的方案，生成 **封面图文生图prompt**（主题一 / 主题二 / 主题三），可直接粘贴至 DALL-E / Midjourney / Gemini 等图像生成模型

若用户不满意标题/摘要，重新生成新的 3 组，直到满意为止。

## 输出规格

- **标题**：≤ 40 字（含标点符号）
- **摘要**：≤ 120 字（含标点符号）
- **数量**：每次输出 3 组完整方案，标注为「方案一」「方案二」「方案三」
- **字数标注**：每条标题和摘要后附上实际字数，例如（38字）

---

## 风格指南

### 标题写法

根据文章内容，判断属于哪种类型，并使用对应的标题模式：

**① 报道型**（适用于新论文解读、企业新动向）
> `[机构/人物] + [新发现/重磅文章/最新动向]：[具体发现，含对比或转变]`
> 例：`Moderna重磅文章：降低核糖体负载，稳定mRNA，增加蛋白总产出`
> 例：`Capstan创始人最新发现：aCD7-tLNP最强T细胞靶向递送由内化效率决定，而非受体丰度`

**② 叙事型**（适用于趋势梳理、认知转变类文章）
> `从[旧方法/旧认知]到[新突破]，[主体]终于[完成的转变]`
> 例：`从死磕脂质到调控细胞，LNP研发终于跳出了十年惯性`

**③ 问句型**（适用于技术评估、路线对比类文章）
> `[技术方案]能否/是否适合[应用场景]？` 或 `[A]比[B]更适合做[C]吗？`
> 例：`高盐沉淀+TFF换液的mRNA纯化工艺适合中试生产吗？`
> 例：`In vivo CAR-T竞速：mRNA-LNP能否成为自身免疫性疾病"终局疗法"的关键平台？`

**④ 观点型**（适用于行业判断、趋势预测类文章）
> `[主体]不再[旧做法]：[新趋势]，才是[核心判断]`
> 例：`LNP不再讲平台：应用，才是新的分水岭`
> 也可用："你必须知道的[技术主题]"、"[主体]的[时代转折点]"

**⑤ 方法链型**（适用于工艺流程、方法学文章）
> `基于[技术A]，[操作B]，实现[目标C]`
> 例：`基于AI设计适配体，偶联至LNP表面，实现靶向递送`

**标题强词库**（酌情使用，增强力度）：
- 强化词：重磅、首次、终于、最新、关键、颠覆、突破、新动向
- 对比词：而非、不再…而是…、从X到Y、舍弃X转向Y
- 问句词：能否、是否、适合吗、比X更好吗
- 读者感知词：你必须知道的、不得不看的

**标题禁忌**：
- 避免过于笼统的词汇（如"新进展"、"重要研究"）而没有具体内容
- 保留专业术语原文（mRNA、LNP、CAR-T、tLNP、UTR等），不要替换为中文俗称
- 不要超过 40 字（含标点）

---

### 摘要写法

摘要是文章的"入场券"，让专业读者在 30 秒内判断是否值得细读。

**结构（2-3句话）：**
1. **第一句**：交代来源/背景（论文期刊、研究机构、会议、公司）
2. **第二句**：核心发现/主张（优先包含具体数据或对比结论）
3. **第三句**（可选）：启示意义或延伸价值

**风格要求：**
- 保留专业术语，面向从业者，不做知识普及
- 优先呈现"首次发现"、"证实"、"推翻了"、"提出"等关键动词
- 如果文章有具体数字（倍数、百分比、浓度），优先纳入摘要
- 摘要语感要精炼、直接，不堆砌形容词

**摘要示例（参考风格）：**
> Moderna在《Cell Reports》发文，揭示核糖体负载与mRNA半衰期及总蛋白产出之间的量化关系。研究表明，高核糖体密度反而加速翻译依赖性mRNA降解，适度核糖体负载（每170nt约1个）才能最大化蛋白总产出。该结论为CDS序列优化和治疗性mRNA设计提供了明确的策略指导。（93字）

> MIT团队提出基于高盐沉淀+连续TFF换液的mRNA纯化工艺，实测纯度92%、回收率90%，优于Oligo DT亲和层析。该工艺无需昂贵填料，适合实验室克量级制备，但暂不建议直接用于GMP生产。（87字）

---

## 工作流程

### 第一步：分析文章

阅读用户提供的文章，快速识别：
- 文章类型（论文解读 / 行业趋势 / 技术评估 / 方法学 / 新闻报道）
- 核心发现或主张（最重要的 1-2 个结论）
- 关键数据（如有）
- 涉及的机构/人物/期刊
- 技术方向（mRNA序列设计 / LNP递送 / CAR-T / 纯化工艺等）

### 第二步：生成 3 组方案

每组方案格式如下：

```
**方案一**
📌 标题：[标题内容]（XX字）
📝 摘要：[摘要内容]（XX字）

**方案二**
📌 标题：[标题内容]（XX字）
📝 摘要：[摘要内容]（XX字）

**方案三**
📌 标题：[标题内容]（XX字）
📝 摘要：[摘要内容]（XX字）
```

三组方案应**风格有所差异**：
- 方案一：侧重核心发现的直接陈述（报道型或方法链型）
- 方案二：侧重行业/认知维度的判断（叙事型或观点型）
- 方案三：侧重读者视角，引发思考（问句型或带强词的标题）

### 第三步：询问是否需要封面图提示词

输出标题摘要方案后，结尾加上：

> 请告诉我选哪个方案，或者哪里需要调整？如果三个都不满意，我可以重新生成新的三组。
>
> 另：需要同步生成**封面图文生图prompt**吗？可选四种风格：
> - **主题一（学术机制图风）**：白底、矢量生物插画、柔和科学配色，横版，适合机制通路解析类内容
> - **主题二（手绘信息图风）**：暖米色纸质感、手绘插画、横版信息图，适合"从X到Y"认知转变类内容
> - **主题三（顶刊科研封面风）**：暗色背景、3D渲染级视觉隐喻、戏剧性光影，适合需要强视觉冲击力的深度研究解读
> - **主题四（粘土泥塑立体微缩风）**：暖米色磨砂底 + 圆台底座 + 角色化 3D 拟物一字排开，适合多步骤方法论、Setup 指南、多模块并列拆解类内容

### 第四步：生成封面图文生图prompt（如需）

若用户选择封面图，根据所选主题，将用户确认的**标题、核心概念（机制节点）、关键数据**代入对应模板的 `{}` 占位符，输出完整可直接使用的文生图prompt。具体模板见下方「封面图提示词模板」章节。

输出的prompt可直接粘贴至 DALL-E、Midjourney、Stable Diffusion、Gemini 图像生成等模型使用。

### 第五步：重新生成（如需）

若用户表示不满意或要求重新来过，**完全重新设计**新的 3 组方案，避免仅在原方案上微调措辞。重新生成时可以：
- 换用不同的标题模式
- 从文章的不同角度提炼核心
- 尝试更强烈或更克制的措辞风格

---

## 封面图提示词模板

> 使用方法：将 `{}` 替换为对应内容后，直接作为文生图 prompt 使用（适用于 DALL-E、Midjourney、Stable Diffusion、Gemini 图像生成等模型）。四套主题均采用 **21:9（7:3）横版比例**，推荐渲染尺寸 1260 × 540px。

---

### 主题一：学术机制图风（横版封面）

适用场景：机制通路解析、蛋白复合体结构、信号级联类文章；白底、矢量生物插画、柔和科学配色，专业感强。

**填入内容格式**：文章标题 | 核心机制节点A → 核心机制节点B → 核心机制节点C | 关键结论一句话

```
A horizontal banner image at 21:9 aspect ratio (1260x540px), academic journal mechanism diagram style, clean white background (#FFFFFF), no texture, no gradient.

The composition uses a three-column layout:

LEFT COLUMN (30% width): A text information area. At the top, a small italic source citation in gray (#555555) reading "{作者姓} et al. {期刊名} {年份}". Below it, the article title "{文章标题}" in large bold black text (#2C2C2C), 2-3 lines, using Noto Sans SC font. Under the title, a one-line subtitle in smaller gray text (#444444) stating the key conclusion: "{关键结论}". At the very bottom, a row of 5 small colored circles (28x28px each, 6px apart) showing the color palette: rose pink (#BD7C78), sky blue (#B0D7E9), purple (#7767A1), gold (#D9BE67), green (#62B187).

CENTER COLUMN (45% width): A simplified biological pathway diagram. Three to five protein/molecule nodes are arranged left-to-right (or in a Y-branch), connected by thin gray arrows (stroke #777777, 1.5px, solid triangle arrowhead). Each node is an organic blob shape (smooth Bézier curves, no stroke outline) filled with one of the 5 palette colors. The nodes represent: {节点A名称}, {节点B名称}, {节点C名称}. Small 11px gray labels sit below each node. Chemical molecules are shown as irregular hexagons with thin purple (#7767A1) stroke and light fill. Dashed arrows (stroke-dasharray: 4 3) indicate hypothetical steps. Small tag boxes with rounded corners appear at pathway endpoints: green background (#EAF4EC) with green text (#2E7D52) for positive outcomes, or red-tinged background (#FDECEA) with red text (#C0392B) for negative outcomes like "Cell death".

RIGHT COLUMN (25% width): A large protein complex illustration made of 3-4 overlapping organic blob shapes (smooth Bézier curves, no outlines), layered on top of each other with 10-20% overlap. Colors from the 5-palette system: base layer sky blue (#B0D7E9), middle layer rose pink (#BD7C78), top layer purple (#7767A1), small accent gold (#D9BE67). The overall structure is roughly 180x220px, centered. A bold 16px label "{核心蛋白名称}" sits near the top corner. At the bottom right, a small 12px gray text "{公众号名称}".

STYLE: Academic journal figure aesthetic (Nature/Cell supplementary illustration standard). No shadows, no decorative borders, no gradients, no hand-drawn texture. Everything is crisp, clean vector-style biological illustration. The 5-color scientific palette is used consistently throughout. A thin 1px gray (#C8C8C8) horizontal divider line may separate pathway tiers in the center column.

Negative prompt: gradient background, drop shadow, decorative border, hand-drawn texture, 3D render, photorealistic, noisy, cluttered, dark background, neon colors, cartoon style, watermark
```

---

### 主题二：手绘信息图风（横版封面）

适用场景：机制解析、技术对比、"从X到Y"认知转变类文章；手绘插画风格，亲切感强，适合深度科普内容。

**填入内容格式**：主标题 | 核心概念A（问题/困局）→ 核心概念B（解决/破局）| 关键数据（如有）

```
A horizontal banner image at 21:9 aspect ratio (1260x540px), hand-drawn infographic style on warm beige paper texture (#F7EDD6), resembling a sketchbook page with subtle paper grain.

The composition has a top title bar and a two-column content area below:

TOP TITLE BAR (15% height, ~81px): A yellow sticky-note-style banner (#FFF8C0 background) with a blue hand-drawn border (#6BA8D4, 2.5px). Inside, the main title "{文章标题}" is written in large bold hand-brushed Chinese text (Ma Shan Zheng style, ~32px, dark brown-black #2B1810). To the right of the title, a small yellow rounded-rect tag (#FFF8C0 with blue #6BA8D4 border) contains a subtitle in 18px text: "{副标题10-18字}". The banner has a very slight tilt (rotate -0.3 degrees) for a casual feel.

CONTENT AREA (85% height, ~459px): Split into two rounded-rect panels side by side with a hand-drawn green arrow (#5CA86A) pointing from left to right between them.

LEFT PANEL — "The Problem" (42% width): A mint green card (#D4EDDA background) with a green hand-drawn border (#5C9E6B, 2.5px), slightly tilted (rotate -0.5deg), with a subtle paper shadow (3px 4px offset, 15% opacity). Inside: a bold module title "{困局主题}" at 22px. Below it, a large circle (140px diameter) with light blue fill (#EDF5FB) and a dark brown (#2B1810, 3px) hand-drawn border, containing the core problem concept "{核心概念A}" labeled inside. A red (#E03030) hand-drawn ellipse highlights a key alarming statistic (e.g., "98%") inside or near the circle. A tilted red exclamation mark (!) decoration floats nearby. Below the circle, 2-3 short annotation lines in 14px brown text (#5A4030) explain the pain points.

RIGHT PANEL — "The Solution" (58% width): A warm orange-white card (#FFF3E0 background) with an orange hand-drawn border (#E8872A, 2.5px), slightly tilted (rotate +0.3deg), same paper shadow. Inside: a bold module title "{破局主题}" at 22px. Below it, an organic egg-shaped structure (like a lipid nanoparticle): an outer orange shell ellipse (#F09050, 90% opacity, ~160x190px) with radiating lines, and an inner golden core ellipse (#F5C518). The structure represents "{核心概念B}". Around it, 2-3 annotation lines in 14px brown text explain the mechanism. At the bottom right, a simple two-bar chart: a short blue bar (#7BACD4) for the control group and a tall orange bar (#F09050) for the experimental group, with a bold "7×" or "{倍数}" multiplier label in 20px dark text above the tall bar. A blue (#4A7FC0) tilted question mark decoration and small yellow 4-point stars (#FFDA00 with black stroke) add visual interest.

Between the two panels, a large curved hand-drawn arrow in green (#5CA86A, 4px stroke) points from left to right, connecting the problem to the solution.

STYLE: Hand-drawn sketch infographic aesthetic, warm and approachable. All borders and lines have slight irregularity from a hand-drawn SVG filter (subtle wobble). Modules have gentle rotation for a casual notebook feel. Paper texture grain is visible in the background. Typography mixes Ma Shan Zheng (brush-style headings) with Noto Sans SC (clean body text). The color palette is warm (beige, yellow, green, orange) with red and blue for emphasis.

Negative prompt: photorealistic, 3D render, dark background, neon colors, corporate flat design, gradient, glossy, sharp geometric perfection, cluttered, low resolution, blurry text, watermark
```

---

### 主题三：顶刊科研封面风（横版封面）

适用场景：深度研究解读、重大发现报道、机制+临床数据综合分析类文章；模仿 Nature / Cell / Science 期刊封面的视觉语言，以**视觉隐喻**为核心，暗色背景配发光主体，3D 渲染级质感，追求"一眼震撼"的传播效果。

**设计原则**（源自 Nature/Cell 封面设计指南 + happy-figure 科研绘图模板）：
- **视觉隐喻优先**：用一个核心视觉意象（而非方法流程）传达文章灵魂
- **暗色背景 + 发光主体**：深色底衬托主体的光感和质感，制造戏剧性
- **少即是多**：画面元素不超过 3-4 个，留白即力量
- **科学准确的隐喻**：视觉元素可艺术化，但不能误导科学事实
- **不生成期刊 Logo、刊名或版权元素**

**填入内容格式**：文章标题 | 核心视觉隐喻（1个主视觉意象） | 科学锚点（2-3个关键分子/细胞/结构名称） | 色彩主题词（如"蓝金"、"紫橙"、"青白"）

```
A horizontal banner image at 21:9 aspect ratio (1260x540px), top-tier scientific journal cover art style (Nature/Cell/Science aesthetic), dramatic cinematic lighting on a dark background.

BACKGROUND: Deep dark gradient from midnight blue (#0A1628) at edges to slightly lighter navy (#132744) at center, creating a natural vignette that draws the eye inward. Subtle volumetric fog or atmospheric haze in the lower portion adds depth. No texture, no pattern, no stars.

CENTRAL VISUAL METAPHOR (60% of canvas, centered): A single powerful scientific visualization that serves as the article's core metaphor — "{核心视觉隐喻描述}". This is the emotional and intellectual anchor of the cover. Examples of what this could be:
- A glowing lipid nanoparticle (LNP) with visible internal mRNA strands, half-dissolved, releasing cargo into a cell membrane
- A T-cell molecular synapse rendered as a luminous bridge between immune cell and tumor cell
- An RNA strand folding into a 3D origami structure, glowing from within
- A drug molecule docking into a receptor pocket, rendered as a precision key-in-lock with light trails

The central object should be rendered with semi-realistic 3D quality: smooth surfaces with subsurface scattering, rim lighting (#E8D5B7 warm gold or #7EB8E0 cool blue depending on color theme), and soft internal glow suggesting biological activity. Use {色彩主题词} color palette — e.g., for "蓝金" theme: primary glow #4A90D9 (blue), accent highlights #D4A843 (gold), secondary #2C5F8A (deep blue), tertiary #F0E6D0 (warm white).

SCIENTIFIC ACCENT ELEMENTS (25% of canvas, arranged around the central metaphor):
- 2-3 small, precisely rendered molecular/cellular structures floating in the composition: {科学锚点A}, {科学锚点B}, {科学锚点C}
- These should be smaller (15-25% of central object size), slightly out of focus or semi-transparent, creating depth of field
- Connected to the central metaphor by thin luminous lines or particle trails (1-2px, low opacity 40-60%)
- Each element has a subtle label in small white text (10-11px, #FFFFFF at 70% opacity) positioned nearby

TITLE PLACEMENT (15% of canvas, top-left or top-center):
- Leave a clear zone at the top for the journal masthead area (do NOT render any logo or text)
- The composition should have natural negative space in the upper 15% where a title bar could be overlaid later
- If including any text within the image itself, use only a single short phrase or keyword in elegant serif font (12-14px, white with slight glow), positioned at bottom-right corner: "{公众号名称}"

DEPTH & ATMOSPHERE:
- Use shallow depth of field: central object sharp, peripheral elements progressively softer
- Add subtle particle effects (tiny floating dots, 1-3px, low opacity 20-30%) suggesting molecular environment
- Volumetric light rays from upper-left or upper-right (single light source, not multiple)
- Reflection or shadow pool beneath the central object on a implied surface plane

STYLE: Premium scientific illustration quality comparable to Nature/Cell cover art. The image should look like it could appear on the cover of a top journal — dramatic, clean, scientifically grounded, emotionally compelling. Think: the visual equivalent of a "eureka moment" frozen in time. 3D rendering aesthetic with painterly lighting. NOT photorealistic photography, NOT flat vector, NOT cartoon, NOT infographic.

Negative prompt: flat design, infographic layout, cartoon style, hand-drawn texture, busy composition, too many elements, bright/white background, neon colors, cyberpunk, text-heavy, logos, journal masthead, copyright symbols, stock photo, low resolution, blurry, noisy, watermark, comic style, pixel art, retro game aesthetic
```

---

### 主题四：粘土/泥塑立体微缩风（横版封面）

适用场景：多步骤方法论、Setup 指南、多模块并列拆解、"步骤 1→2→3→4→5"型综述；以暖米色磨砂底 + 圆台底座 + 角色化 3D 拟物一字排开，构成治愈系"立体微缩展柜"。详细设计说明、色板与失败回退请参见 `references/cover_theme4_claydiorama.md`。

**填入内容格式**：总标题 | 总副标题 | 步骤数（3-5） | 步骤1-5三元组（小标签 / 图标描述 / 配文） | 公众号名称

```
A horizontal banner image at 21:9 aspect ratio (1260x540px), clay diorama / polymer clay style on warm peach-beige paper (#F5E6C8 background), soft diffuse studio lighting from upper-left, no metallic reflections, slight fingerprint texture on every object.

BACKGROUND & SCENE: A continuous shallow ground plane in muted tan (#D9C09C) runs across the lower 60% of the canvas. Behind it, 3-4 softly rounded hill silhouettes in pale beige (#E8D5B7) fade into the warm sky. Two-three fluffy white polymer-clay clouds float in the upper-left sky. 3-5 cute rounded-crown trees (mint green #95CFA7 canopies, brown #8C6B4F trunks) are scattered between and behind the modules as gentle visual rhythm. The overall mood is warm, healing, tactile — like opening a children's storybook diorama.

MODULE LAYOUT: {步骤数} clay-diorama modules arranged left-to-right along the ground plane, evenly spaced (90px gaps). Each module sits on a circular "cake-stand" base (diameter 150px, height 35px) whose color is taken from the clay palette (sky blue #8FB8D6, mint #95CFA7, coral pink #E89BAA, orange #E89F5C, brick red #C76B5C, lavender #A38BBA, yellow #F0CC58). On top of each base rests a small 3D cute clay-mascot/figurine/artifact (60-100px tall) representing that module. Each module has slight vertical offset (±12px) for a hand-placed, casual feel.

MODULE CONTENTS (left to right):

MODULE 1 — cake-stand base {模块1底色}. On it: {步骤1图标描述}. Above the module, a rounded-rect "pill" label in matching darker shade with white hand-brushed text "{步骤1小标签}" (16-18px, Noto Sans SC style, slight wobble). Below the module, a 1-line caption in 14px dark brown text (#2B1810): "{步骤1配文}".

MODULE 2 — cake-stand base {模块2底色}. On it: {步骤2图标描述}. Pill label "{步骤2小标签}" above. Caption "{步骤2配文}" below.

MODULE 3 — cake-stand base {模块3底色}. On it: {步骤3图标描述}. Pill label "{步骤3小标签}" above. Caption "{步骤3配文}" below.

MODULE 4 — cake-stand base {模块4底色}. On it: {步骤4图标描述}. Pill label "{步骤4小标签}" above. Caption "{步骤4配文}" below.

MODULE 5 — cake-stand base {模块5底色}. On it: {步骤5图标描述}. Pill label "{步骤5小标签}" above. Caption "{步骤5配文}" below.

(For 3 modules, only use MODULE 1-3; for 5 modules, include all five.)

For articles that emphasize a left-to-right "from A to B" flow, draw a thin clay-ribbon or a string of small clay-beads in soft green connecting the modules along the ground plane (stroke 6-8px, color #5CA86A, slight curve, not perfectly straight).

FOREGROUND DECORATION: scattered cute clay pebbles and tiny mushrooms at the feet of the modules for tactile richness. The viewer should feel they could pick up any object by hand.

TITLE BANNER (top, ~15% canvas height):
- A rounded-rect banner across the top (background #FFF8C0 / soft cream), with a thin hand-drawn blue border (#6BA8D4, 2.5px stroke, slight wobble)
- Inside, the main title "{总标题}" in large bold hand-brushed Chinese style (Ma Shan Zheng / 站酷快乐体, 36-40px, dark brown-black #2B1810)
- Below, a thin subtitle in Noto Sans SC Regular, 15px, mid-brown #5A4030, single line: "{总副标题}"
- Slight casual tilt of -0.4 degrees on the banner

WATERMARK: bottom-right corner, tiny 11px light brown text "{公众号名称}".

STYLE: Clay / polymer clay / plasticine craft aesthetic — looks like a real tabletop diorama shot under soft photography light. No photorealism, no hyperreal 3D rendering, no metallic surfaces, no glass transparency, no neon, no flat vector, no information-dense infographics. Everything is round, soft, slightly imperfect, with a friendly hand-crafted vibe. The 10-color clay palette is used consistently across bases, labels, and small decorations.

Negative prompt: photorealistic, hyperreal 3D, metallic, glass, transparent, sharp geometric edges, neon colors, dark background, black background, busy composition, infographic chart elements, axes, numbers, data points, watermark, low resolution, blurry text, comic style, anime style, stock photo, isometric precision
```

---

## 质量自检清单

在输出前，逐条检查：
- [ ] 标题字数 ≤ 40 字（含标点）
- [ ] 摘要字数 ≤ 120 字（含标点）
- [ ] 三组方案风格各有不同
- [ ] 专业术语保留原文形式（mRNA、LNP等不替换）
- [ ] 摘要包含核心结论（不只是描述"研究了什么"，而是"发现了什么"）
- [ ] 标题有力、具体，不泛泛而谈
- [ ] 若生成封面图文生图prompt：已将标题/数据/概念正确填入模板 {}
- [ ] 若选主题一：已识别文章核心机制节点（3-5个）和主蛋白复合体
- [ ] 若选主题二：已识别文章的「困局模块」和「破局模块」对应内容
- [ ] 若选主题三：已提炼出文章的**核心视觉隐喻**（1个主意象）和 2-3 个科学锚点，色彩主题词明确
- [ ] 若选主题四：已从文章中提取 3-5 个并列模块，每个模块都有 {小标签 / 图标描述 / 配文} 三元组，模块数 ≤ 5
- [ ] 四套主题宽高比均为 21:9（7:3 = 2.3333）
- [ ] prompt 中包含 negative prompt，避免风格偏移
- [ ] prompt 为英文，可直接用于主流文生图模型
