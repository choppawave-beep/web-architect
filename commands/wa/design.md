---
name: wa:design
description: "Full design-to-code pipeline: design system → architecture → build → review with quality gates"
argument-hint: "[description of what to build]"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
  - Agent
  - AskUserQuestion
---

<objective>
Orchestrate the full web-architect pipeline: Designer → (gate) → Architect → Builder → Reviewer → (fix loop).

Context budget: ~5% orchestrator, 100% fresh per subagent. Inter-agent data flows via files on disk only.
</objective>

<context>
User request: $ARGUMENTS

Reference files (read as needed, pass to subagents):
- `~/.claude/skills/web-architect/references/constrained-generation.md`
- `~/.claude/skills/web-architect/references/project-profiles.md`
- `~/.claude/skills/web-architect/references/quality-standards.md`
- `~/.claude/skills/ui-ux-pro-max/SKILL.md`
</context>

<process>

## Step 1: Check Project Profile

Read `./CLAUDE.md` and look for `web-architect-profile:` field.

**If missing:** Ask the user to choose a project type:
- landing | saas | dashboard | ecommerce | crm | portfolio | blog | desktop

Save their choice by appending to `./CLAUDE.md`:
```
## Web Architect
web-architect-profile: [chosen-type]
```

## Step 2: Load Profile + Learnings

1. Read the matching profile from `~/.claude/skills/web-architect/references/project-profiles.md`
2. Check if project memory has `wa-learnings.md` — if so, read it for past learnings

## Step 3: Spawn Designer

Spawn `wa-designer` agent with this prompt:

```
Build a design system for: [user's description]

Project type: [profile]
Project path: [cwd]

<files_to_read>
- ./CLAUDE.md
- ~/.claude/skills/web-architect/references/constrained-generation.md
- ~/.claude/skills/web-architect/references/project-profiles.md
- ~/.claude/skills/ui-ux-pro-max/SKILL.md
[if exists: project memory wa-learnings.md path]
</files_to_read>

Output: design-system/MASTER.md in the project root.
```

## Step 4: Design Gate

After Designer completes, read `design-system/MASTER.md` and present to the user:

```
## Design System Preview

**Concept**: [metaphor]
**Palette**: [primary, accent, neutrals — show HSL values]
**Fonts**: [heading + body pair]
**Motion**: [energy level + timing summary]

Approve, modify, or reject?
```

Wait for user response:
- **Approve**: Continue to Step 5
- **Modify**: Apply modifications to `design-system/MASTER.md`, then continue
- **Reject**: Re-run Designer with user's feedback

## Step 5: Spawn Architect

Spawn `wa-architect` agent with:

```
Plan the component architecture for: [user's description]

Project type: [profile]
Project path: [cwd]

<files_to_read>
- ./CLAUDE.md
- ./design-system/MASTER.md
- ~/.claude/skills/web-architect/references/project-profiles.md
</files_to_read>

Output: web-architect-plan.md in the project root.
```

## Step 6: Spawn Builder

Spawn `wa-builder` agent with:

```
Implement the architecture plan for: [user's description]

Project path: [cwd]

<files_to_read>
- ./CLAUDE.md
- ./design-system/MASTER.md
- ./web-architect-plan.md
</files_to_read>

Follow web-architect-plan.md exactly. Apply all tokens from design-system/MASTER.md.
Output: code files + web-architect-build-report.md
```

## Step 7: Spawn Reviewer

Spawn `wa-reviewer` agent with:

```
Review the web-architect build.

Project path: [cwd]

<files_to_read>
- ./CLAUDE.md
- ./design-system/MASTER.md
- ./web-architect-plan.md
- ./web-architect-build-report.md
- ~/.claude/skills/web-architect/references/quality-standards.md
</files_to_read>

Score all 5 dimensions. Output: web-architect-review.md
```

## Step 8: Quality Gate

Read `web-architect-review.md`. Extract overall score.

- **Score >= 80 (PASS)**: Proceed to Step 9
- **Score 60-79 (FIX)**: Extract critical findings, send to Builder for fixes (max 2 iterations):
  ```
  Fix these critical issues found by the reviewer:
  [critical findings list with file:line references]

  <files_to_read>
  - ./design-system/MASTER.md
  - ./web-architect-review.md
  </files_to_read>
  ```
  After fix, re-run Reviewer. If still < 80 after 2 iterations, proceed with warning.
- **Score < 60 (FAIL)**: Report to user with findings, ask for guidance.

## Step 9: Self-Improvement

Extract learnings from `web-architect-review.md` Self-Improvement section.

Check if project memory directory exists. Append to `wa-learnings.md`:

```markdown
## [date] — [project_name] ([profile])
- **Worked**: [from review]
- **Failed**: [from review]
- **Change**: [from review]
- **User Override**: [any design gate modifications from Step 4]
```

## Step 10: Present Summary

```
## Web Architect Complete

**Score**: XX/100 (PASS/FIX/FAIL)
**Files created**: [count]
**Design concept**: [metaphor]
**Key decisions**: [2-3 bullets]

Artifacts:
- design-system/MASTER.md
- web-architect-plan.md
- web-architect-build-report.md
- web-architect-review.md
```

</process>
