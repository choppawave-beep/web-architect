# Project Type Profiles

8 profiles defining layout patterns, component priorities, performance targets, design emphasis, and SEO requirements per project type.

## Landing

**Purpose**: Convert visitors. Single-page or multi-section marketing.

| Aspect | Spec |
|--------|------|
| Layout | Hero → Features → Social Proof → Pricing → CTA → Footer |
| Components | Hero section, CTA buttons, testimonial cards, pricing table, FAQ accordion, feature grid |
| Performance | LCP < 1.5s, SSG, critical CSS inlined |
| Design | Bold typography (ratio 1.5), scroll animations, gradient accents, full-bleed sections |
| SEO | Critical — meta tags, OG images, structured data, semantic HTML |
| RTL | Full support required |

**Anti-patterns**: Heavy JS bundles, client-side rendering, carousels (use stacked sections instead).

## SaaS

**Purpose**: Marketing site + authenticated app shell.

| Aspect | Spec |
|--------|------|
| Layout | Marketing: Hero → Features → Pricing → Footer. App: Sidebar + Top bar + Content |
| Components | Navigation, pricing cards, auth forms, dashboard shell, settings panels |
| Performance | Marketing LCP < 2.0s (SSG). App INP < 200ms (SSR + CSR hydration) |
| Design | Professional, trust-building. Type ratio 1.25-1.333. Subtle motion. Clean data display |
| SEO | Marketing pages only — app shell excluded via robots |
| RTL | Marketing required, app recommended |

**Anti-patterns**: Marketing JS in app bundle, shared layout between marketing/app.

## Dashboard

**Purpose**: Data-dense internal tool. Information at a glance.

| Aspect | Spec |
|--------|------|
| Layout | Sidebar (collapsible) + Top bar (breadcrumbs, search, user) + Content grid |
| Components | Stat cards, data tables (sortable, filterable), charts, date range picker, filters bar |
| Performance | INP < 100ms, virtualized tables (>50 rows), lazy-loaded charts |
| Design | Info density over aesthetics. Scannable. Type ratio 1.2. Minimal motion. Monospace for data |
| SEO | None — behind auth |
| RTL | Full support (table alignment, chart labels) |

**Anti-patterns**: Decorative animations, large hero sections, marketing copy.

## E-commerce

**Purpose**: Browse, select, purchase products.

| Aspect | Spec |
|--------|------|
| Layout | Header (search, cart, account) → Category nav → Product grid → Product detail → Cart → Checkout |
| Components | Product cards (image, price, rating), search with autocomplete, cart drawer, checkout steps, trust badges |
| Performance | LCP < 2.0s, ISR for product pages, optimized images (WebP, srcset), prefetch on hover |
| Design | Product showcase focus. Type ratio 1.25. Subtle motion. Trust badges prominent. Clear pricing |
| SEO | Critical — product structured data (JSON-LD), breadcrumbs, canonical URLs, image alt text |
| RTL | Full support (price alignment, cart layout) |

**Anti-patterns**: Auto-playing video, infinite scroll without pagination fallback, checkout without guest option.

## CRM

**Purpose**: Manage contacts, deals, pipelines. Relationship tracking.

| Aspect | Spec |
|--------|------|
| Layout | Sidebar (nav + quick actions) + Content (tables/kanban) + Detail panel (slide-over) |
| Components | Data tables (bulk actions), kanban board, detail panels, activity timeline, search/filter bar |
| Performance | INP < 100ms, virtualized lists, optimistic updates, keyboard shortcuts |
| Design | Dense but scannable. Type ratio 1.2. Keyboard-first. Status color coding. Compact spacing |
| SEO | None — behind auth |
| RTL | Full support (kanban direction, table alignment) |

**Anti-patterns**: Decorative elements, heavy animations, modal-heavy workflows (use inline editing).

## Portfolio

**Purpose**: Showcase work. Visual impact.

| Aspect | Spec |
|--------|------|
| Layout | Full-screen sections, image galleries, case study pages, about/contact |
| Components | Image gallery (masonry/grid), project cards, case study layout, lightbox, contact form |
| Performance | LCP < 2.0s, lazy-loaded images, blur placeholders, WebP with fallback |
| Design | Visual impact is everything. Type ratio 1.333-1.5. Unique layouts per section. Bold scroll animations. Asymmetric grids |
| SEO | Moderate — meta, OG images, project structured data |
| RTL | Support recommended |

**Anti-patterns**: Generic grid-only layouts, stock photography, template-feeling sections.

## Blog

**Purpose**: Long-form content. Reading experience.

| Aspect | Spec |
|--------|------|
| Layout | Article (prose-optimized) + Sidebar (TOC, related) + Category/archive pages |
| Components | Prose typography (MDX), table of contents (scroll-spy), related posts, category filters, search |
| Performance | LCP < 1.5s, SSG for all posts, RSS feed, sitemap |
| Design | Typography excellence is the design. Type ratio 1.333. max-w-prose. Generous line-height (1.7). Minimal UI chrome |
| SEO | Critical — article structured data, meta descriptions, canonical URLs, OG images per post |
| RTL | Full support (text alignment, blockquote direction) |

**Anti-patterns**: Sidebar clutter, pop-ups interrupting reading, infinite scroll archives.

## Desktop (Electron)

**Purpose**: Native-feeling desktop application.

| Aspect | Spec |
|--------|------|
| Layout | Custom titlebar + Sidebar (nav) + Content + Status bar |
| Components | Custom titlebar (drag region, window controls), navigation sidebar, data tables, settings page, status bar |
| Performance | Startup < 2s, IPC-optimized, lazy window creation |
| Design | Native OS feel. Dark mode default. Compact spacing. Type ratio 1.2. System-like motion (fast, functional). Platform-specific window controls |
| SEO | N/A |
| RTL | Full support (sidebar position, titlebar layout) |

**Anti-patterns**: Web-feeling UI (rounded cards, gradients), heavy startup loading, blocking IPC calls.

---

## Profile Selection Guide

| Signal | Profile |
|--------|---------|
| "landing page", "marketing", "one-pager" | Landing |
| "app", "platform", "subscription" | SaaS |
| "admin panel", "analytics", "metrics" | Dashboard |
| "store", "shop", "products", "cart" | E-commerce |
| "contacts", "deals", "pipeline", "leads" | CRM |
| "portfolio", "showcase", "gallery" | Portfolio |
| "blog", "articles", "content" | Blog |
| "electron", "desktop app", "native" | Desktop |
