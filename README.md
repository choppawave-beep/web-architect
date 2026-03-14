# Web Architect — Claude Code Skill

A 4-agent orchestrator skill for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) that runs a full **design-to-code pipeline** for any web project. One command generates a unique design system, plans the architecture, builds the code, and reviews quality — all with enforced constraints that prevent generic "AI-generated" output.

## The Problem

Every AI-generated website looks the same: Inter font, blue-purple gradient, centered card grid, generic spacing. Claude Code skills work in silos — you manually wire design skills, architecture skills, and review skills per project. Quality varies. Context window bloats when multiple skills load.

## The Solution

`/wa:design` conducts 4 specialized subagents through a complete pipeline:

```
Designer → Design Gate (you approve) → Architect → Builder → Reviewer → Fix Loop
```

Each agent runs in fresh context (~5% orchestrator overhead). Data flows via files on disk. The system learns from your feedback over time.

## What Makes It Different

### Constrained Generation

Instead of "make it look modern", the Designer enforces 4 constraint layers:

| Layer | What It Does | Example Constraint |
|-------|-------------|-------------------|
| **Concept** | Picks a design metaphor from project purpose | Must differ from last 3 same-type projects |
| **Color** | HSL harmony algorithm (complementary/analogous/triadic/split-comp) | WCAG 4.5:1 on every text/bg pair. No pure #000/#fff |
| **Typography** | Proven font pairing categories | Google Fonts only. **Banned: Inter, Roboto, Arial** |
| **Motion** | Timing token system with ranges | CSS-only default. `prefers-reduced-motion` required |

### 5-Dimension Quality Scoring

The Reviewer scores every build:

- **Design Fidelity** (30%) — tokens used, no hardcoded colors
- **Accessibility** (25%) — WCAG contrast, focus states, ARIA, keyboard nav
- **Performance** (20%) — server components, code splitting, image optimization
- **Code Quality** (15%) — TypeScript (no `any`), <200 line components
- **Architecture** (10%) — plan compliance, RTL/i18n

Score < 80? Builder auto-fixes critical issues (max 2 rounds).

### 8 Project Profiles

Each profile defines layout patterns, component priorities, perf targets, and design emphasis:

`landing` · `saas` · `dashboard` · `ecommerce` · `crm` · `portfolio` · `blog` · `desktop`

### Self-Learning

After every run, the system extracts what worked/failed/should change. User overrides at the design gate (changing a color, picking a different font) get highest priority. Learnings are saved per-project and loaded into future runs.

## Commands

| Command | Description |
|---------|-------------|
| `/wa:design [desc]` | Full pipeline: design → architecture → build → review |
| `/wa:build [desc]` | Build with existing design system (skip design phase) |
| `/wa:review` | Review existing code against quality standards |
| `/wa:profile [type]` | Set/view project type |

## Installation

### Quick (bash)

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### Quick (PowerShell)

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manual

Copy files to `~/.claude/`:

```
~/.claude/
├── skills/web-architect/
│   ├── SKILL.md
│   └── references/
│       ├── constrained-generation.md
│       ├── project-profiles.md
│       └── quality-standards.md
├── agents/
│   ├── wa-designer.md
│   ├── wa-architect.md
│   ├── wa-builder.md
│   └── wa-reviewer.md
└── commands/wa/
    ├── design.md
    ├── build.md
    ├── review.md
    └── profile.md
```

Then append the contents of `claude-md-snippet.md` to your `~/.claude/CLAUDE.md`.

## Usage

### First time on a project

```
/wa:profile landing
```

### Full pipeline

```
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

The pipeline will:
1. Generate a unique design system and pause for your approval (palette, fonts, concept)
2. Plan the component architecture (file structure, data flows, build order)
3. Build all components using design tokens
4. Score the build and auto-fix issues if score < 80

### Output artifacts

| File | Purpose |
|------|---------|
| `design-system/MASTER.md` | CSS custom properties, concept, fonts, motion tokens |
| `web-architect-plan.md` | Component tree, file specs, build order |
| `web-architect-build-report.md` | Files created, token usage, build status |
| `web-architect-review.md` | 5-dimension scored review with findings |

### Just want a quality audit?

```
/wa:review
```

Works on any existing code — no design system required.

## Architecture

```
┌─────────────────────────────┐
│     /wa:design command       │  ← Orchestrator (~5% context)
│     (commands/wa/design.md)  │
└──────────┬──────────────────┘
           │ spawns
    ┌──────┼──────────┬──────────────┐
    ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│Designer│→│Architect│→│Builder │→│Reviewer│  ← Fresh context each
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← Files on disk
```

**No context bloat**: Orchestrator never reads full file contents — only metadata (score, file count). Each subagent gets 100% fresh context with only the files it needs.

## Optional Dependencies

Web Architect integrates with these Claude Code skills if you have them installed. They're not required — the system works standalone.

| Skill | Used By | Purpose |
|-------|---------|---------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | Designer | Design recommendations database |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | Designer | Anti-AI-slop design rules |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | Architect | Clean architecture principles |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | Architect | React composition patterns |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | Builder | Performance optimization |

## Extending

### Add a project profile

Append to `skills/web-architect/references/project-profiles.md`. No code changes needed.

### Add a quality dimension

Edit `skills/web-architect/references/quality-standards.md`. Update the scoring weights (must sum to 100%).

### Customize constraints

Edit `skills/web-architect/references/constrained-generation.md`. Add font pairings, harmony types, or motion patterns.

## License

MIT
