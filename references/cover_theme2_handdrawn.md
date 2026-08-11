# 主题二：手绘信息图风 — 文生图 prompt 设计规格

参考来源：Au-LNP 机制解析横版信息图（NotebookLM 风格手绘科普插画）
适用比例：21:9（7:3）横版，推荐渲染尺寸 1260 × 540px

---

## 设计哲学

手绘信息图风的核心是「温度感」——用手绘质感消解学术内容的距离感，让读者在看到封面的瞬间感受到「有人在认真给我解释一件复杂的事」。

与学术机制图风的「克制」不同，手绘风允许装饰性元素的存在（感叹号、星形、尺子图标），但每一个元素都应承担叙事功能——感叹号强调痛点，星形标记关键数据，箭头引导视线流动。

适用场景：「从X到Y」的认知转变、「为什么原来的方法不够好」的痛点-解方叙事、含有对比数据的机制类文章。

---

## 色彩系统

| 角色 | 色值 | 用途 |
|------|------|------|
| 全局背景 | `#F7EDD6` | 暖米色纸质感，模拟牛皮纸/素描本底色 |
| 标题栏背景 | `#FFF8C0` | 黄色便利贴感 |
| 标题栏边框 | `#6BA8D4` | 蓝色手绘描边 2.5px |
| 左模块背景 | `#D4EDDA` | 薄荷绿，暗示「问题」区域（冷色调） |
| 左模块边框 | `#5C9E6B` | 中绿描边 2.5px |
| 右模块背景 | `#FFF3E0` | 暖橙白，暗示「解决」区域（暖色调） |
| 右模块边框 | `#E8872A` | 橙色描边 2.5px |
| 主文字 | `#2B1810` | 深棕黑，比纯黑更柔和 |
| 次要文字 | `#5A4030` | 中棕，用于图注和说明 |
| 强调红 | `#E03030` | 感叹号、警示数字、痛点数据 |
| 强调蓝 | `#4A7FC0` | 箭头、灯泡图标、正向引导 |
| 强调绿 | `#5CA86A` | 结论性箭头、正向结果标注 |
| 数据柱（蓝） | `#7BACD4` | 柱状图对照组 |
| 数据柱（橙） | `#F09050` | 柱状图实验组（高值） |
| 星形填充 | `#FFDA00` | 4角星，高亮关键节点 |
| 星形描边 | `#000000` | 1.5px |

---

## 布局描述规范

prompt 中需要用自然语言精确描述两区域布局：

### 顶部标题栏（15%高度）
- 黄色便利贴感背景（#FFF8C0）+ 蓝色手绘边框（#6BA8D4）
- 左侧：主标题（Ma Shan Zheng 手写风格大字，32px，深棕黑）
- 右侧：黄色小框内副标题（18px）
- 整体轻微倾斜（-0.3度），增加手绘随意感

### 左侧困局模块（42%宽度）
- 薄荷绿卡片（#D4EDDA）+ 绿色手绘边框（#5C9E6B）
- 轻微倾斜（-0.5度）+ 纸质阴影
- 内含：模块标题 + 圆形图示（核心问题概念）+ 红色强调数据 + 标注文字

### 右侧破局模块（58%宽度）
- 暖橙白卡片（#FFF3E0）+ 橙色手绘边框（#E8872A）
- 轻微倾斜（+0.3度）+ 纸质阴影
- 内含：模块标题 + 蛋形结构图（解决方案）+ 机制说明 + 柱状对比数据

### 中央过渡
- 绿色手绘弯曲大箭头，从左指向右

---

## 关键视觉元素描述词汇

| 元素 | prompt 描述关键词 |
|------|------------------|
| 圆形图示 | "large circle with light blue fill and dark brown hand-drawn border, containing concept label" |
| 蛋形结构 | "organic egg-shaped structure, outer orange shell with radiating lines, inner golden core, resembling lipid nanoparticle" |
| 手绘箭头 | "curved hand-drawn arrow, slight wobble, green or dark brown, casual sketch style" |
| 感叹号装饰 | "tilted red exclamation mark, hand-drawn style, emphasis decoration" |
| 问号装饰 | "tilted blue question mark, hand-drawn style, curiosity decoration" |
| 星形装饰 | "small 4-pointed yellow star with black outline, hand-drawn, accent decoration" |
| 柱状图 | "simple two-bar chart, short blue bar vs tall orange bar, with multiplier label like 7×" |
| 统计强调框 | "hand-drawn red ellipse circling a key number, emphasis highlight" |
| 纸质纹理 | "warm beige paper texture background, subtle grain, sketchbook feel" |
| 模块卡片 | "rounded-rect card with hand-drawn border, slight rotation, paper shadow" |

---

## 禁止项（必须写入 negative prompt）

- 照片级写实、3D 渲染
- 暗色背景、霓虹色
- 企业扁平设计（corporate flat design）
- 渐变、光泽感
- 锐利几何完美（所有边框应有手绘不规则感）
- 杂乱、低分辨率
- 文字模糊
- 水印

---

## prompt 构建模板

组装 prompt 时，按以下顺序组织内容：

1. **画幅与比例**：开头明确 21:9 比例和尺寸
2. **整体风格**：手绘信息图、暖米色纸质感、素描本风格
3. **顶部标题栏**：黄色便利贴、手写标题、副标题小框
4. **左侧困局模块**：薄荷绿卡片、圆形图示、红色强调数据
5. **右侧破局模块**：暖橙白卡片、蛋形结构、柱状对比数据
6. **中央过渡箭头**：绿色手绘弯曲箭头
7. **装饰元素**：感叹号、星形、纸质感
8. **色彩指定**：全部色值
9. **字体提示**：Ma Shan Zheng（标题）+ Noto Sans SC（正文）
10. **Negative prompt**：排除不想要的风格

---

## 内容填充规则

| 文章元素 | prompt 中的映射 |
|---------|----------------|
| 核心痛点/旧方法 | 左栏圆形图示 + 红色强调框显示问题数据 |
| 关键负面数据（如"98%降解"） | 红色圆圈强调，置于圆形图示内 |
| 解决方案名称 | 右栏模块标题，大字展示 |
| 解决方案核心机制 | 右栏蛋形结构 + 2-3条说明文字 |
| 对比数据（如"100倍/7倍"） | 右栏底部柱状图，含倍数标注 |
| 关键尺寸参数 | 右栏中部尺子图标 + 数值 |
| 文章主标题 | 顶部标题栏左侧，≤28字 |
| 核心问题/副标题 | 顶部标题栏右侧黄色小框 |

---

## 视觉流程（固定）

prompt 中应描述以下视线引导路径：

顶部标题 → 左侧圆形图示（问题）→ 中央向右箭头 → 右侧结构图（解决方案）→ 右下数据柱
