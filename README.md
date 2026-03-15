<p align="center">
  🌍 <b>English</b> | <a href="README.zh-CN.md">中文</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.pt-BR.md">Português</a>
</p>

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

# 🏗️ Web Architect — Agent Skill

> **One command. Four agents. Zero generic output.**

A 4-agent orchestrator skill for AI coding agents that runs a full **design-to-code pipeline** for any web project. One command generates a unique design system, plans the architecture, builds the code, and reviews quality — all with enforced constraints that prevent the "AI-generated" look.

Works with **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · and [15+ more agents](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 The Problem

Every AI-generated website looks the same: Inter font, blue-purple gradient, centered card grid, generic spacing. Claude Code skills work in silos — you manually wire design skills, architecture skills, and review skills per project. Quality varies. Context window bloats when multiple skills load.

## ✨ The Solution

`/wa:design` conducts **4 specialized subagents** through a complete pipeline:

```
🎨 Designer → 🚦 Design Gate (you approve) → 📐 Architect → 🔨 Builder → 🔍 Reviewer → 🔄 Fix Loop
```

Each agent runs in **fresh context** (~5% orchestrator overhead). Data flows via files on disk. The system **learns from your feedback** over time.

---

## 🧬 What Makes It Different

### 🎯 Constrained Generation

Instead of "make it look modern", the Designer enforces **4 constraint layers**:

| Layer | What It Does | Example Constraint |
|-------|-------------|-------------------|
| 💡 **Concept** | Picks a design metaphor from project purpose | Must differ from last 3 same-type projects |
| 🎨 **Color** | HSL harmony algorithm (complementary/analogous/triadic/split-comp) | WCAG 4.5:1 on every text/bg pair. No pure #000/#fff |
| ✏️ **Typography** | Proven font pairing categories | Google Fonts only. **Banned: Inter, Roboto, Arial** |
| 🎬 **Motion** | Timing token system with ranges | CSS-only default. `prefers-reduced-motion` required |

### 📊 5-Dimension Quality Scoring

The Reviewer scores every build on a **0-100 weighted scale**:

| Dimension | Weight | What It Checks |
|-----------|--------|---------------|
| 🎨 Design Fidelity | 30% | Tokens used, no hardcoded colors, concept reflected |
| ♿ Accessibility | 25% | WCAG contrast, focus states, ARIA, keyboard nav |
| ⚡ Performance | 20% | Server components, code splitting, image optimization |
| 🧹 Code Quality | 15% | TypeScript (no `any`), <200 line components |
| 📐 Architecture | 10% | Plan compliance, RTL/i18n |

**Score < 80?** Builder auto-fixes critical issues (max 2 rounds). 🔄

### 🗂️ 8 Project Profiles

Each profile defines layout patterns, component priorities, perf targets, and design emphasis:

| Profile | Best For |
|---------|----------|
| 🚀 `landing` | Marketing pages, one-pagers, launch sites |
| 💼 `saas` | SaaS marketing + app shell |
| 📊 `dashboard` | Admin panels, analytics, metrics |
| 🛒 `ecommerce` | Stores, product catalogs, checkout |
| 📇 `crm` | Contact management, deal pipelines |
| 🖼️ `portfolio` | Creative showcases, galleries |
| 📝 `blog` | Content sites, articles, editorial |
| 🖥️ `desktop` | Electron apps, native-feeling tools |

### 🧠 Self-Learning

After every run, the system extracts **what worked / what failed / what to change**. User overrides at the design gate (changing a color, picking a different font) get **highest priority**. Learnings are saved per-project and loaded into future runs — it gets better the more you use it.

---

## 🚀 Commands

| Command | Description |
|---------|-------------|
| `/wa:design [desc]` | 🎨 Full pipeline: design → architecture → build → review |
| `/wa:build [desc]` | 🔨 Build with existing design system (skip design phase) |
| `/wa:review` | 🔍 Review existing code against quality standards |
| `/wa:profile [type]` | 🗂️ Set/view project type |

---

## 📦 Installation

### ⚡ Universal (auto-detects your agent)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Per-Agent Install

| Agent | Command |
|-------|---------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 Manual — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 Manual — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manual

Copy files to `~/.claude/`:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Orchestrator core
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4-layer constraint rules
│       ├── project-profiles.md           ← 8 project type specs
│       └── quality-standards.md          ← 5-dimension scoring rubric
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Design system generator
│   ├── wa-architect.md                   ← 📐 Component architecture planner
│   ├── wa-builder.md                     ← 🔨 Code implementer
│   └── wa-reviewer.md                    ← 🔍 Quality scorer
└── 📁 commands/wa/
    ├── design.md                         ← Full pipeline
    ├── build.md                          ← Build-only
    ├── review.md                         ← Review-only
    └── profile.md                        ← Profile manager
```

Then append the contents of `claude-md-snippet.md` to your `~/.claude/CLAUDE.md`.

---

## 💡 Usage

### New project

```bash
# 1. Set your project type
/wa:profile landing

# 2. Run the full pipeline
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

The pipeline will:
1. 🎨 Generate a unique design system and **pause for your approval** (palette, fonts, concept)
2. 📐 Plan the component architecture (file structure, data flows, build order)
3. 🔨 Build all components using design tokens
4. 🔍 Score the build and auto-fix issues if score < 80

### Existing project — add a page

```bash
# Uses your existing design-system/MASTER.md
/wa:build dashboard analytics page with charts and stat cards
```

### Existing project — quality audit

```bash
# Works on any code, no design system needed
/wa:review
```

### 📄 Output Artifacts

| File | Purpose |
|------|---------|
| `design-system/MASTER.md` | 🎨 CSS custom properties, concept, fonts, motion tokens |
| `web-architect-plan.md` | 📐 Component tree, file specs, build order |
| `web-architect-build-report.md` | 🔨 Files created, token usage, build status |
| `web-architect-review.md` | 🔍 5-dimension scored review with findings |

---

## 🏛️ Architecture

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 Orchestrator (~5% context)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ spawns agents sequentially
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Desn │→│📐 Arch │→│🔨 Build│→│🔍 Revw │  ← Fresh context each
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← Files on disk
```

**Zero context bloat**: Orchestrator never reads full file contents — only metadata (score, file count). Each subagent gets 100% fresh context with only the files it needs.

---

## 🔌 Optional Integrations

Web Architect integrates with these Claude Code skills **if you have them installed**. They're not required — the system works standalone.

| Skill | Used By | Purpose |
|-------|---------|---------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Design recommendations database |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Anti-AI-slop design rules |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Architect | Clean architecture principles |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Architect | React composition patterns |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Builder | Performance optimization |

---

## 🔧 Extending

**➕ Add a project profile** — Append to `references/project-profiles.md`. No code changes needed.

**➕ Add a quality dimension** — Edit `references/quality-standards.md`. Update weights (must sum to 100%).

**➕ Customize constraints** — Edit `references/constrained-generation.md`. Add font pairings, harmony types, or motion patterns.

---

## 🤝 Contributing

Found a bug? Want to add a profile? PRs welcome.

- **Issues**: Report bugs or request features
- **PRs**: Fork → branch → change → PR
- **Discussions**: Share your design system outputs!

---

## 📄 License

MIT — use it, fork it, ship it.

---

<p align="center">
  <b>Built for developers who are tired of AI websites that all look the same.</b>
  <br/>
  <sub>⭐ Star this repo if it saves you from another Inter + blue gradient combo</sub>
</p>
