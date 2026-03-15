🌍 [🇬🇧 English](README.md) | **🇨🇳 中文** | [🇯🇵 日本語](README.ja.md) | [🇰🇷 한국어](README.ko.md) | [🇪🇸 Español](README.es.md) | [🇧🇷 Português](README.pt-BR.md) | [🇮🇱 עברית](README.he.md) | [🇮🇳 हिन्दी](README.hi.md) | [🇹🇷 Türkçe](README.tr.md) | [🇷🇺 Русский](README.ru.md) | [🇫🇷 Français](README.fr.md) | [🇩🇪 Deutsch](README.de.md) | [🇸🇦 العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Subagents" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Profiles" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="MIT License" />
</p>

# 🏗️ Web Architect — AI 智能体技能

> **一条命令。四个智能体。告别千篇一律。**

一个面向 AI 编程智能体的四智能体编排技能，为任何 Web 项目运行完整的**设计到代码流水线**。一条命令即可生成独特的设计系统、规划架构、构建代码并审查质量——通过强制约束彻底杜绝"AI 生成感"。

兼容 **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · 以及[15+ 更多智能体](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 痛点

每个 AI 生成的网站看起来都一样：Inter 字体、蓝紫渐变、居中卡片网格、毫无特色的间距。Claude Code 技能各自为政——你需要手动串联设计技能、架构技能和审查技能。质量参差不齐。多个技能同时加载时上下文窗口迅速膨胀。

## ✨ 解决方案

`/wa:design` 编排 **4 个专业子智能体**，完成完整流水线：

```
🎨 设计师 → 🚦 设计审批（由你确认） → 📐 架构师 → 🔨 构建者 → 🔍 审查者 → 🔄 修复循环
```

每个智能体都在**全新上下文**中运行（编排器仅占约 5% 开销）。数据通过磁盘文件传递。系统会从你的反馈中**持续学习**。

---

## 🧬 核心优势

### 🎯 约束式生成

设计师不是简单地"做个现代风格"，而是强制执行 **4 层约束**：

| 层级 | 作用 | 约束示例 |
|------|------|---------|
| 💡 **概念** | 从项目定位中提取设计隐喻 | 必须与最近 3 个同类型项目不同 |
| 🎨 **配色** | HSL 和谐算法（互补/类似/三角/分裂互补） | 所有文本/背景色对必须满足 WCAG 4.5:1 对比度，禁用纯 #000/#fff |
| ✏️ **字体** | 经过验证的字体搭配分类 | 仅限 Google Fonts。**禁用：Inter、Roboto、Arial** |
| 🎬 **动效** | 带范围的时间令牌系统 | 默认纯 CSS。必须支持 `prefers-reduced-motion` |

### 📊 五维质量评分

审查者按 **0-100 加权评分体系** 为每次构建打分：

| 维度 | 权重 | 检查内容 |
|------|------|---------|
| 🎨 设计还原度 | 30% | 令牌使用情况、无硬编码颜色、概念体现程度 |
| ♿ 无障碍性 | 25% | WCAG 对比度、焦点状态、ARIA、键盘导航 |
| ⚡ 性能 | 20% | 服务端组件、代码分割、图片优化 |
| 🧹 代码质量 | 15% | TypeScript（无 `any`）、组件不超过 200 行 |
| 📐 架构合规 | 10% | 方案一致性、RTL/i18n 支持 |

**评分低于 80？** 构建者自动修复关键问题（最多 2 轮）。🔄

### 🗂️ 8 种项目配置

每种配置定义了布局模式、组件优先级、性能目标和设计侧重点：

| 配置 | 适用场景 |
|------|---------|
| 🚀 `landing` | 营销页面、单页、发布站点 |
| 💼 `saas` | SaaS 营销 + 应用外壳 |
| 📊 `dashboard` | 管理面板、数据分析、指标看板 |
| 🛒 `ecommerce` | 商城、商品目录、结账流程 |
| 📇 `crm` | 客户管理、销售管线 |
| 🖼️ `portfolio` | 创意展示、作品集 |
| 📝 `blog` | 内容站点、文章、编辑平台 |
| 🖥️ `desktop` | Electron 应用、原生风格工具 |

### 🧠 自我学习

每次运行后，系统会提取**哪些有效/哪些失败/应如何调整**。在设计审批环节你的修改（更换颜色、选择不同字体等）会被赋予**最高优先级**。学习结果按项目保存，并在后续运行中自动加载——用得越多，效果越好。

---

## 🚀 命令

| 命令 | 说明 |
|------|------|
| `/wa:design [描述]` | 🎨 完整流水线：设计 → 架构 → 构建 → 审查 |
| `/wa:build [描述]` | 🔨 使用现有设计系统构建（跳过设计阶段） |
| `/wa:review` | 🔍 按质量标准审查现有代码 |
| `/wa:profile [类型]` | 🗂️ 设置/查看项目类型 |

---

## 📦 安装

### ⚡ 通用安装（自动检测你的智能体）

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 按智能体安装

| 智能体 | 命令 |
|--------|------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 手动安装 — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 手动安装 — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### 手动安装

将文件复制到 `~/.claude/`：

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← 编排器核心
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4 层约束规则
│       ├── project-profiles.md           ← 8 种项目类型规格
│       └── quality-standards.md          ← 5 维评分标准
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 设计系统生成器
│   ├── wa-architect.md                   ← 📐 组件架构规划器
│   ├── wa-builder.md                     ← 🔨 代码实现器
│   └── wa-reviewer.md                    ← 🔍 质量评分器
└── 📁 commands/wa/
    ├── design.md                         ← 完整流水线
    ├── build.md                          ← 仅构建
    ├── review.md                         ← 仅审查
    └── profile.md                        ← 配置管理
```

然后将 `claude-md-snippet.md` 的内容追加到你的 `~/.claude/CLAUDE.md` 中。

---

## 💡 使用方法

### 新项目

```bash
# 1. 设置项目类型
/wa:profile landing

# 2. 运行完整流水线
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

流水线将会：
1. 🎨 生成独特的设计系统并**暂停等待你的审批**（配色方案、字体、设计概念）
2. 📐 规划组件架构（文件结构、数据流、构建顺序）
3. 🔨 使用设计令牌构建所有组件
4. 🔍 为构建结果评分，若低于 80 分则自动修复

### 已有项目 — 新增页面

```bash
# 使用现有的 design-system/MASTER.md
/wa:build dashboard analytics page with charts and stat cards
```

### 已有项目 — 质量审计

```bash
# 适用于任何代码，无需设计系统
/wa:review
```

### 📄 输出产物

| 文件 | 用途 |
|------|------|
| `design-system/MASTER.md` | 🎨 CSS 自定义属性、设计概念、字体、动效令牌 |
| `web-architect-plan.md` | 📐 组件树、文件规格、构建顺序 |
| `web-architect-build-report.md` | 🔨 已创建文件、令牌使用情况、构建状态 |
| `web-architect-review.md` | 🔍 五维评分审查及详细发现 |

---

## 🏛️ 架构

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 编排器（约 5% 上下文占用）
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ 按顺序启动智能体
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 设计 │→│📐 架构 │→│🔨 构建 │→│🔍 审查 │  ← 每个智能体使用全新上下文
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← 磁盘文件
```

**零上下文膨胀**：编排器从不读取完整文件内容——只读取元数据（评分、文件数量）。每个子智能体获得 100% 全新上下文，仅包含其所需的文件。

---

## 🔌 可选集成

Web Architect 可与以下 Claude Code 技能集成（**前提是你已安装它们**）。这些不是必需的——系统可独立运行。

| 技能 | 使用者 | 用途 |
|------|--------|------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 设计师 | 设计建议数据库 |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 设计师 | 反 AI 同质化设计规则 |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 架构师 | 整洁架构原则 |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 架构师 | React 组合模式 |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 构建者 | 性能优化 |

---

## 🔧 扩展

**➕ 添加项目配置** — 追加到 `references/project-profiles.md` 即可，无需改代码。

**➕ 添加质量维度** — 编辑 `references/quality-standards.md`，更新权重（总和必须为 100%）。

**➕ 自定义约束** — 编辑 `references/constrained-generation.md`，添加字体搭配、和谐类型或动效模式。

---

## 🤝 参与贡献

发现 Bug？想添加新配置？欢迎提交 PR。

- **Issues**：报告问题或提出功能需求
- **PRs**：Fork → 创建分支 → 修改 → 提交 PR
- **Discussions**：分享你生成的设计系统成果！

---

## 📄 许可证

MIT — 随意使用、Fork、发布。

---

<p align="center">
  <b>为那些厌倦了 AI 网站千篇一律的开发者而打造。</b>
  <br/>
  <sub>⭐ 如果它让你免于再做一个 Inter + 蓝色渐变的组合，请给这个仓库点个 Star</sub>
</p>
