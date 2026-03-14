---
name: wa:build
description: "Build with existing design system — skips design phase, starts from architecture"
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
Skip the design phase and build using an existing `design-system/MASTER.md`. Runs: Architect → Builder → Reviewer → fix loop.

Use when the design system already exists and you want to add new pages/components.
</objective>

<context>
User request: $ARGUMENTS
</context>

<process>

## Step 1: Verify Design System Exists

Check for `design-system/MASTER.md` in the project root.

**If missing:** Tell the user:
```
No design system found at design-system/MASTER.md
Run /wa:design to create one first, or provide a path to an existing design system.
```
Stop here.

## Step 2: Load Context

1. Read `./CLAUDE.md` for project profile and conventions
2. Read `design-system/MASTER.md`
3. Check project memory for `wa-learnings.md`

## Step 3: Spawn Architect

Spawn `wa-architect` agent with:

```
Plan the component architecture for: [user's description]

Project type: [profile from CLAUDE.md]
Project path: [cwd]

<files_to_read>
- ./CLAUDE.md
- ./design-system/MASTER.md
- ~/.claude/skills/web-architect/references/project-profiles.md
</files_to_read>

Output: web-architect-plan.md in the project root.
Important: Integrate with existing codebase — scan before planning.
```

## Step 4: Spawn Builder

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

## Step 5: Spawn Reviewer

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

## Step 6: Quality Gate

Read `web-architect-review.md`. Extract overall score.

- **Score >= 80 (PASS)**: Proceed to summary
- **Score 60-79 (FIX)**: Send critical findings to Builder (max 2 iterations)
- **Score < 60 (FAIL)**: Report to user

## Step 7: Self-Improvement

Extract learnings from review, append to project memory `wa-learnings.md`.

## Step 8: Present Summary

```
## Web Architect Build Complete

**Score**: XX/100
**Files created**: [count]
**Key decisions**: [2-3 bullets]
```

</process>
