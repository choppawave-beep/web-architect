---
name: wa:profile
description: "Set or view the web-architect project type profile"
argument-hint: "[landing|saas|dashboard|ecommerce|crm|portfolio|blog|desktop]"
allowed-tools:
  - Read
  - Write
  - Edit
  - AskUserQuestion
---

<objective>
View or set the `web-architect-profile` field in the project's CLAUDE.md.
</objective>

<context>
Argument: $ARGUMENTS
</context>

<process>

## If no argument provided — VIEW mode

1. Read `./CLAUDE.md`
2. Look for `web-architect-profile:` field
3. If found, display:
   ```
   Current profile: [type]
   ```
   Then read the matching profile from `~/.claude/skills/web-architect/references/project-profiles.md` and display a summary.
4. If not found:
   ```
   No profile set. Run /wa:profile [type] to set one.
   Available: landing | saas | dashboard | ecommerce | crm | portfolio | blog | desktop
   ```

## If argument provided — SET mode

1. Validate argument is one of: landing, saas, dashboard, ecommerce, crm, portfolio, blog, desktop
2. If invalid, show available options
3. Read `./CLAUDE.md`
4. If `web-architect-profile:` already exists, update it
5. If no `## Web Architect` section exists, append:
   ```markdown

   ## Web Architect
   web-architect-profile: [type]
   ```
6. Confirm:
   ```
   Profile set to: [type]
   ```
7. Show key profile attributes from project-profiles.md (layout, perf targets, design emphasis)

</process>
