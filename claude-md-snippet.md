

---

## Web Architect

### Commands
- `/wa:design [description]` — Full pipeline: design system → architecture → build → review
- `/wa:build [page-name]` — Build with existing design system (skips design phase)
- `/wa:review` — Review existing code against quality standards
- `/wa:profile [type]` — Set project type (landing|saas|dashboard|ecommerce|crm|portfolio|blog|desktop)

### Project CLAUDE.md Fields (auto-added by web-architect)
- `web-architect-profile`: project type
- `web-architect-concept`: design concept/metaphor
- `design-system`: path to design-system/MASTER.md

### Agent Team
| Agent | Role | Context |
|-------|------|---------|
| wa-designer | Constrained Generation design system | ui-ux-pro-max + frontend-design |
| wa-architect | Component tree + file structure | software-architecture + composition-patterns |
| wa-builder | Implementation | react-best-practices |
| wa-reviewer | Quality scoring (5 dimensions) | quality-standards + seo-audit |

### Context Budget
- Orchestrator: ~5% main context
- Each subagent: fresh context, independent
- Hard cap: 50% main context window
- Inter-agent data: files on disk only
