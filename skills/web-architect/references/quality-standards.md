# Quality Standards & Review Rubric

5-dimension scoring system for web-architect builds. Each dimension scored 0-100, weighted to final score.

## Scoring Dimensions

### 1. Design Fidelity (30%)

| Score | Criteria |
|-------|----------|
| 90-100 | All design tokens used via CSS custom properties. No hardcoded colors/sizes. Type scale followed exactly. Motion plan fully applied. Concept metaphor visible in layout choices |
| 70-89 | Most tokens used. 1-2 hardcoded values. Minor type scale deviations. Motion mostly applied |
| 50-69 | Mixed token/hardcoded usage. Type scale partially followed. Motion incomplete |
| 0-49 | Mostly hardcoded values. Design system ignored. Generic appearance |

**Checklist:**
- [ ] All colors reference `var(--color-*)` — no hex/rgb/hsl literals
- [ ] Font sizes use scale variables — no arbitrary rem/px
- [ ] Spacing follows Tailwind scale or custom tokens
- [ ] Motion timing uses `var(--duration-*)` and `var(--ease-*)`
- [ ] Design concept/metaphor reflected in layout pattern choices
- [ ] Light + dark mode both functional (if specified)
- [ ] No default Tailwind colors (blue-500, gray-700) — all from palette

### 2. Accessibility (25%)

| Score | Criteria |
|-------|----------|
| 90-100 | WCAG AA on all text. Focus visible on every interactive element. Alt text on all images. ARIA where needed. Full keyboard nav. prefers-reduced-motion respected |
| 70-89 | WCAG AA mostly met. Focus visible on most elements. Alt text present. Basic keyboard nav |
| 50-69 | Some contrast issues. Missing focus states. Incomplete alt text |
| 0-49 | Major contrast failures. No focus management. Missing alt text. No keyboard support |

**Checklist:**
- [ ] Text contrast >= 4.5:1 (normal) / 3:1 (large)
- [ ] Focus rings visible (not `outline-none` without replacement)
- [ ] All `<img>` have meaningful alt text (or alt="" for decorative)
- [ ] Icon-only buttons have `aria-label`
- [ ] Form inputs have associated `<label>`
- [ ] `prefers-reduced-motion` media query present
- [ ] Tab order matches visual order
- [ ] Skip-to-content link present (multi-section pages)
- [ ] Color not sole indicator of state (add icon/text)

### 3. Performance (20%)

| Score | Criteria |
|-------|----------|
| 90-100 | Server components default. Dynamic imports for heavy components. No barrel imports. Suspense boundaries at data fetch points. Images optimized (next/image, WebP, srcset). Fonts preloaded |
| 70-89 | Mostly server components. Some unnecessary client components. Images mostly optimized |
| 50-69 | Mixed server/client without clear reason. Missing Suspense. Unoptimized images |
| 0-49 | Everything client-side. No code splitting. Raw image tags. Bundle bloat |

**Checklist:**
- [ ] `"use client"` only on components that need interactivity
- [ ] Heavy components (charts, editors, maps) use `dynamic()` or `lazy()`
- [ ] No barrel file imports (`import { x } from './components'`)
- [ ] `<Suspense>` wraps async data-fetching components
- [ ] Images use `<Image>` component (Next.js) or have width/height/loading="lazy"
- [ ] Fonts loaded via `next/font` or preload link
- [ ] No unnecessary re-renders (check useCallback/useMemo usage)
- [ ] CSS animations preferred over JS animations

### 4. Code Quality (15%)

| Score | Criteria |
|-------|----------|
| 90-100 | Full TypeScript (no `any`). Components < 200 lines. No duplication. Error boundaries present. All 3 states handled (loading, empty, error). Clean prop interfaces |
| 70-89 | Mostly typed. Components < 300 lines. Minor duplication. Most states handled |
| 50-69 | Some `any` types. Large components. Noticeable duplication. Missing states |
| 0-49 | Untyped or `any` heavy. Monolithic components. Significant duplication |

**Checklist:**
- [ ] No `any` types — proper interfaces for all props and data
- [ ] Every component < 200 lines (split if larger)
- [ ] No copy-pasted code blocks > 5 lines (extract to shared component/util)
- [ ] Error boundary wraps route segments
- [ ] Loading state with skeleton/spinner for async content
- [ ] Empty state for zero-data scenarios
- [ ] Error state with retry option for failed fetches
- [ ] Props interfaces exported and documented with JSDoc (if complex)

### 5. Architecture Compliance (10%)

| Score | Criteria |
|-------|----------|
| 90-100 | File structure matches `web-architect-plan.md`. Data flow matches plan. RTL/i18n implemented where specified. Server/client boundary correct |
| 70-89 | Minor deviations from plan. RTL mostly implemented. Boundary mostly correct |
| 50-69 | Significant plan deviations. Partial RTL. Some boundary issues |
| 0-49 | Plan ignored. No RTL. Wrong component boundaries |

**Checklist:**
- [ ] Files created match `web-architect-plan.md` file list
- [ ] Component hierarchy matches planned tree
- [ ] Data fetching happens where planned (server vs client)
- [ ] RTL support via `dir="rtl"` and logical properties (if required)
- [ ] i18n keys used (not hardcoded strings) where applicable
- [ ] Shared components in correct shared location
- [ ] Page-specific components colocated with page

## Scoring Calculation

```
final_score = (design * 0.30) + (a11y * 0.25) + (perf * 0.20) + (quality * 0.15) + (arch * 0.10)
```

## Quality Gate

| Score | Action |
|-------|--------|
| >= 80 | **PASS** — proceed to completion |
| 60-79 | **FIX** — send critical findings to Builder, max 2 fix iterations |
| < 60 | **FAIL** — requires manual intervention, report to user |

## Finding Severity

| Severity | Definition | Example |
|----------|------------|---------|
| Critical | Blocks shipment. Must fix. | Hardcoded colors, missing focus states, `any` types, no loading state |
| Warning | Should fix. Quality impact. | Suboptimal image format, minor contrast issue, large component |
| Suggestion | Nice to have. Polish. | Better animation timing, font preload, micro-interaction |

## Review Output Format

```markdown
## Web Architect Review

**Overall Score: XX/100** (PASS/FIX/FAIL)

| Dimension | Score | Weight | Weighted |
|-----------|-------|--------|----------|
| Design Fidelity | XX | 30% | XX |
| Accessibility | XX | 25% | XX |
| Performance | XX | 20% | XX |
| Code Quality | XX | 15% | XX |
| Architecture | XX | 10% | XX |

### Critical Findings
- [file:line] Description — fix instruction

### Warnings
- [file:line] Description — recommendation

### Suggestions
- [file:line] Description — improvement idea

### Self-Improvement
- **Worked**: What produced good results in this build
- **Failed**: What produced poor results or was rejected
- **Change**: Specific rule modifications for next time
```
