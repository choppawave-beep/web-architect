---
name: wa:review
description: "Review existing code against web-architect quality standards"
argument-hint: "[optional: path or description to focus review]"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
  - Agent
---

<objective>
Run the web-architect Reviewer on existing code. Useful for auditing projects not built with web-architect, or re-reviewing after manual changes.

Does not require design-system/MASTER.md — will assess against general quality standards if no design system exists.
</objective>

<context>
User request: $ARGUMENTS
</context>

<process>

## Step 1: Detect Available Artifacts

Check for existence of:
- `design-system/MASTER.md` — design truth (optional)
- `web-architect-plan.md` — architecture truth (optional)
- `web-architect-build-report.md` — build claims (optional)
- `./CLAUDE.md` — project conventions

Note which exist. The Reviewer will adapt scoring based on available artifacts.

## Step 2: Spawn Reviewer

Spawn `wa-reviewer` agent with:

```
Review the existing codebase for quality.

Project path: [cwd]
Focus: [user's description if provided, otherwise "full project review"]

Available artifacts:
[list which of the 3 artifacts exist]

<files_to_read>
- ./CLAUDE.md
[if exists: - ./design-system/MASTER.md]
[if exists: - ./web-architect-plan.md]
[if exists: - ./web-architect-build-report.md]
- ~/.claude/skills/web-architect/references/quality-standards.md
</files_to_read>

Score all 5 dimensions. If design-system/MASTER.md is missing, score Design Fidelity
based on internal consistency (are colors/fonts consistent?) rather than token compliance.

Output: web-architect-review.md
```

## Step 3: Present Results

Read `web-architect-review.md` and present:

```
## Web Architect Review

**Overall Score**: XX/100 (PASS/FIX/FAIL)

| Dimension | Score |
|-----------|-------|
| Design Fidelity | XX |
| Accessibility | XX |
| Performance | XX |
| Code Quality | XX |
| Architecture | XX |

**Critical findings**: [count]
**Warnings**: [count]

[Top 3 critical findings with file:line]
```

Full details in `web-architect-review.md`.

</process>
