# Constrained Generation Rules

4-layer constraint system that ensures every design system is unique, accessible, and cohesive. Each layer builds on the previous.

## Layer 1: Concept

Generate a design metaphor from project purpose + target audience.

**Constraints:**
- Must differ from last 3 same-type projects (check `wa-learnings.md` in project memory)
- Metaphor must be expressible in 1 sentence: "This project feels like [metaphor]"
- Metaphor informs all downstream decisions (color mood, type personality, motion energy)

**Concept categories:**
| Category | Examples | Best for |
|----------|----------|----------|
| Editorial | Magazine, newspaper, journal | Blog, portfolio, content sites |
| Technical | Blueprint, dashboard, control panel | SaaS, dashboard, CRM |
| Organic | Garden, ocean, forest | Wellness, eco, community |
| Luxe | Boutique, gallery, atelier | E-commerce, portfolio, landing |
| Playful | Arcade, playground, carnival | Gaming, kids, social |
| Brutalist | Concrete, raw, industrial | Dev tools, experimental, portfolio |
| Minimal | Japanese, Scandinavian, zen | SaaS, blog, portfolio |
| Corporate | Banking, consulting, enterprise | SaaS, CRM, dashboard |

## Layer 2: Color

Palette generation via color harmony algorithm.

**Constraints:**
- Choose 1 harmony type per project:

| Harmony | Rule | Mood |
|---------|------|------|
| Complementary | 180° apart on wheel | High contrast, energetic |
| Analogous | 30° neighbors | Harmonious, calm |
| Triadic | 120° apart | Vibrant, balanced |
| Split-complementary | 150°+210° from base | Contrast without tension |
| Monochromatic | Single hue, vary S/L | Sophisticated, unified |

- **Max 6 colors total**: 1 primary, 1 accent, 1 success, 1 warning, 1 error, neutrals (3-5 shades)
- **All values in HSL** — enables programmatic shade generation
- **No pure black (#000) or pure white (#fff)** — use tinted neutrals matching palette warmth
- **WCAG compliance matrix** (mandatory):

| Pair | Min Ratio | Use Case |
|------|-----------|----------|
| Text on background | 4.5:1 | Body copy |
| Large text on background | 3:1 | Headings (18px+ or 14px+ bold) |
| Interactive on background | 3:1 | Buttons, links |
| Focus indicator | 3:1 | Focus rings |

- Generate light + dark mode variants (invert lightness, preserve hue/saturation ratios)

**Output format:**
```css
:root {
  --color-primary: hsl(H, S%, L%);
  --color-primary-light: hsl(H, S%, L+15%);
  --color-primary-dark: hsl(H, S%, L-15%);
  --color-accent: hsl(H, S%, L%);
  --color-bg: hsl(H, S%, L%);
  --color-surface: hsl(H, S%, L%);
  --color-text: hsl(H, S%, L%);
  --color-text-muted: hsl(H, S%, L%);
  --color-border: hsl(H, S%, L%);
  --color-success: hsl(142, 71%, 45%);
  --color-warning: hsl(38, 92%, 50%);
  --color-error: hsl(0, 84%, 60%);
}
```

## Layer 3: Typography

Font pairing from proven categories.

**Pairing categories:**

| Category | Heading | Body | Personality |
|----------|---------|------|-------------|
| Serif + Sans | Playfair Display, Merriweather, Lora | Source Sans 3, Nunito Sans, Work Sans | Classic elegance |
| Display + Geometric | Space Grotesk, Syne, Outfit | DM Sans, Plus Jakarta Sans, Manrope | Modern tech |
| Humanist + Mono | Bricolage Grotesque, General Sans | JetBrains Mono, IBM Plex Mono, Fira Code | Dev/technical |
| Slab + Grotesque | Zilla Slab, Bitter, Rockwell | Inter var, Figtree, Geist Sans | Bold editorial |
| Handwritten + Clean | Caveat, Kalam, Patrick Hand | Poppins, Quicksand, Comfortaa | Playful/personal |

**Constraints:**
- **Google Fonts only** — ensures free, fast, universal availability
- **Banned fonts**: Inter, Roboto, Arial, Helvetica, system-ui, sans-serif (overused, generic)
- **Type scale ratio** — pick one per project:

| Ratio | Name | Best for |
|-------|------|----------|
| 1.200 | Minor Third | Compact UI, dashboards |
| 1.250 | Major Third | General purpose |
| 1.333 | Perfect Fourth | Content-heavy, editorial |
| 1.500 | Perfect Fifth | Bold, impactful, landing |

- **Scale output** (using chosen ratio):
  ```
  --font-xs:    calc(1rem / ratio)
  --font-sm:    calc(1rem / sqrt(ratio))
  --font-base:  1rem
  --font-lg:    calc(1rem * ratio)
  --font-xl:    calc(1rem * ratio^2)
  --font-2xl:   calc(1rem * ratio^3)
  --font-3xl:   calc(1rem * ratio^4)
  --font-4xl:   calc(1rem * ratio^5)
  ```

- **Line height**: headings 1.1-1.2, body 1.5-1.7, UI elements 1.3
- **Letter spacing**: headings -0.02em to -0.04em (tracking-tight), body 0, small/caps +0.05em
- **Max line width**: 65ch for prose, 45ch for captions

## Layer 4: Motion

Animation token system.

**Timing standards:**

| Category | Duration | Easing | Use Case |
|----------|----------|--------|----------|
| Micro | 150-200ms | ease-out | Button press, toggle, hover |
| Enter | 250-350ms | ease-out | Modal open, dropdown, tooltip |
| Exit | 150-250ms | ease-in | Modal close, dismiss |
| Page | 300-500ms | ease-in-out | Route transition, hero entrance |
| Stagger | 50-80ms | — | Delay between list/grid children |
| Scroll | 600-1000ms | ease-out | Scroll-triggered reveal |

**Constraints:**
- **CSS-only by default** — `transition`, `@keyframes`, `animation`
- framer-motion only when: scroll-triggered, gesture-driven, orchestrated sequences, layout animations
- **`prefers-reduced-motion` required** — all motion must have reduced-motion fallback:
  ```css
  @media (prefers-reduced-motion: reduce) {
    *, *::before, *::after {
      animation-duration: 0.01ms !important;
      transition-duration: 0.01ms !important;
    }
  }
  ```
- **No animation on first paint** — content appears immediately, animations trigger after hydration
- **Max 3 simultaneous animations** per viewport — more = visual noise

**Output format:**
```css
:root {
  --duration-micro: 150ms;
  --duration-enter: 300ms;
  --duration-exit: 200ms;
  --duration-page: 400ms;
  --duration-stagger: 60ms;
  --ease-default: cubic-bezier(0.4, 0, 0.2, 1);
  --ease-enter: cubic-bezier(0, 0, 0.2, 1);
  --ease-exit: cubic-bezier(0.4, 0, 1, 1);
  --ease-bounce: cubic-bezier(0.34, 1.56, 0.64, 1);
}
```
