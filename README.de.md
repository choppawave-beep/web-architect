🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português](README.pt-BR.md) | [עברית](README.he.md) | [हिन्दी](README.hi.md) | [Türkçe](README.tr.md) | [Русский](README.ru.md) | [Français](README.fr.md) | **🇩🇪 Deutsch** | [العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Subagents" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Profile" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="MIT Lizenz" />
</p>

# 🏗️ Web Architect — KI-Agenten-Skill

> **Ein Befehl. Vier Agenten. Kein generisches Ergebnis.**

Ein 4-Agenten-Orchestrator-Skill für KI-Codierungsagenten, der eine vollständige **Design-to-Code-Pipeline** für jedes Webprojekt ausführt. Ein einziger Befehl generiert ein einzigartiges Designsystem, plant die Architektur, erstellt den Code und prüft die Qualität — alles mit erzwungenen Einschränkungen, die den typischen "KI-generierten" Look verhindern.

Funktioniert mit **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · und [15+ weiteren Agenten](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 Das Problem

Jede KI-generierte Website sieht gleich aus: Inter-Schriftart, blau-violetter Farbverlauf, zentriertes Kartenraster, generischer Abstand. Claude Code Skills arbeiten isoliert — man muss Design-Skills, Architektur-Skills und Review-Skills manuell pro Projekt verbinden. Die Qualität schwankt. Das Kontextfenster bläht sich auf, wenn mehrere Skills geladen werden.

## ✨ Die Lösung

`/wa:design` steuert **4 spezialisierte Subagenten** durch eine vollständige Pipeline:

```
🎨 Designer → 🚦 Design-Freigabe (Sie entscheiden) → 📐 Architekt → 🔨 Builder → 🔍 Reviewer → 🔄 Korrekturschleife
```

Jeder Agent läuft in **frischem Kontext** (~5% Orchestrator-Overhead). Daten fließen über Dateien auf der Festplatte. Das System **lernt aus Ihrem Feedback** im Laufe der Zeit.

---

## 🧬 Was es besonders macht

### 🎯 Eingeschränkte Generierung

Statt "mach es modern" erzwingt der Designer **4 Einschränkungsebenen**:

| Ebene | Funktion | Beispiel-Einschränkung |
|-------|----------|----------------------|
| 💡 **Konzept** | Wählt eine Designmetapher basierend auf dem Projektzweck | Muss sich von den letzten 3 Projekten gleichen Typs unterscheiden |
| 🎨 **Farbe** | HSL-Harmoniealgorithmus (komplementär/analog/triadisch/split-komplementär) | WCAG 4.5:1 bei jedem Text/Hintergrund-Paar. Kein reines #000/#fff |
| ✏️ **Typografie** | Bewährte Schriftpaarungskategorien | Nur Google Fonts. **Gesperrt: Inter, Roboto, Arial** |
| 🎬 **Bewegung** | Timing-Token-System mit Wertebereichen | Standardmäßig nur CSS. `prefers-reduced-motion` erforderlich |

### 📊 5-Dimensionen-Qualitätsbewertung

Der Reviewer bewertet jeden Build auf einer **gewichteten 0-100-Skala**:

| Dimension | Gewichtung | Was geprüft wird |
|-----------|-----------|------------------|
| 🎨 Design-Treue | 30% | Tokens verwendet, keine hartcodierten Farben, Konzept umgesetzt |
| ♿ Barrierefreiheit | 25% | WCAG-Kontrast, Fokuszustände, ARIA, Tastaturnavigation |
| ⚡ Performance | 20% | Server Components, Code-Splitting, Bildoptimierung |
| 🧹 Code-Qualität | 15% | TypeScript (kein `any`), Komponenten unter 200 Zeilen |
| 📐 Architektur | 10% | Plan-Konformität, RTL/i18n |

**Punktzahl < 80?** Der Builder behebt kritische Probleme automatisch (max. 2 Runden). 🔄

### 🗂️ 8 Projektprofile

Jedes Profil definiert Layout-Muster, Komponentenprioritäten, Performance-Ziele und Design-Schwerpunkte:

| Profil | Ideal für |
|--------|-----------|
| 🚀 `landing` | Marketingseiten, One-Pager, Launch-Sites |
| 💼 `saas` | SaaS-Marketing + App-Grundgerüst |
| 📊 `dashboard` | Admin-Panels, Analysen, Metriken |
| 🛒 `ecommerce` | Shops, Produktkataloge, Checkout |
| 📇 `crm` | Kontaktverwaltung, Deal-Pipelines |
| 🖼️ `portfolio` | Kreative Showcases, Galerien |
| 📝 `blog` | Content-Seiten, Artikel, Redaktionelles |
| 🖥️ `desktop` | Electron-Apps, nativ wirkende Tools |

### 🧠 Selbstlernendes System

Nach jedem Durchlauf extrahiert das System, **was funktioniert hat / was fehlgeschlagen ist / was geändert werden sollte**. Benutzeränderungen bei der Design-Freigabe (Farbe ändern, andere Schriftart wählen) erhalten **höchste Priorität**. Erkenntnisse werden pro Projekt gespeichert und in zukünftige Durchläufe geladen — es wird mit jeder Nutzung besser.

---

## 🚀 Befehle

| Befehl | Beschreibung |
|--------|-------------|
| `/wa:design [desc]` | 🎨 Vollständige Pipeline: Design → Architektur → Build → Review |
| `/wa:build [desc]` | 🔨 Build mit vorhandenem Designsystem (Designphase überspringen) |
| `/wa:review` | 🔍 Bestehenden Code gegen Qualitätsstandards prüfen |
| `/wa:profile [type]` | 🗂️ Projekttyp festlegen/anzeigen |

---

## 📦 Installation

### ⚡ Universal (erkennt Ihren Agenten automatisch)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Agenten-spezifische Installation

| Agent | Befehl |
|-------|--------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 Manuell — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 Manuell — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manuell

Dateien nach `~/.claude/` kopieren:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Orchestrator-Kern
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4-Ebenen-Einschränkungsregeln
│       ├── project-profiles.md           ← 8 Projekttyp-Spezifikationen
│       └── quality-standards.md          ← 5-Dimensionen-Bewertungsschema
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Designsystem-Generator
│   ├── wa-architect.md                   ← 📐 Komponentenarchitektur-Planer
│   ├── wa-builder.md                     ← 🔨 Code-Implementierer
│   └── wa-reviewer.md                    ← 🔍 Qualitätsbewerter
└── 📁 commands/wa/
    ├── design.md                         ← Vollständige Pipeline
    ├── build.md                          ← Nur Build
    ├── review.md                         ← Nur Review
    └── profile.md                        ← Profilverwaltung
```

Hängen Sie dann den Inhalt von `claude-md-snippet.md` an Ihre `~/.claude/CLAUDE.md` an.

---

## 💡 Verwendung

### Neues Projekt

```bash
# 1. Projekttyp festlegen
/wa:profile landing

# 2. Vollständige Pipeline ausführen
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

Die Pipeline wird:
1. 🎨 Ein einzigartiges Designsystem generieren und **auf Ihre Freigabe warten** (Palette, Schriftarten, Konzept)
2. 📐 Die Komponentenarchitektur planen (Dateistruktur, Datenflüsse, Build-Reihenfolge)
3. 🔨 Alle Komponenten mit Design-Tokens erstellen
4. 🔍 Den Build bewerten und Probleme automatisch beheben, wenn die Punktzahl < 80 ist

### Bestehendes Projekt — Seite hinzufügen

```bash
# Verwendet Ihr bestehendes design-system/MASTER.md
/wa:build dashboard analytics page with charts and stat cards
```

### Bestehendes Projekt — Qualitätsaudit

```bash
# Funktioniert mit jedem Code, kein Designsystem erforderlich
/wa:review
```

### 📄 Erstellte Artefakte

| Datei | Zweck |
|-------|-------|
| `design-system/MASTER.md` | 🎨 CSS Custom Properties, Konzept, Schriftarten, Bewegungs-Tokens |
| `web-architect-plan.md` | 📐 Komponentenbaum, Dateispezifikationen, Build-Reihenfolge |
| `web-architect-build-report.md` | 🔨 Erstellte Dateien, Token-Nutzung, Build-Status |
| `web-architect-review.md` | 🔍 5-Dimensionen-Bewertung mit Ergebnissen |

---

## 🏛️ Architektur

```
┌──────────────────────────────┐
│   /wa:design Befehl           │  ← 🧠 Orchestrator (~5% Kontext)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ startet Agenten sequenziell
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Desn │→│📐 Arch │→│🔨 Build│→│🔍 Revw │  ← Frischer Kontext je Agent
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   Code-Dateien review.md  ← Dateien auf der Festplatte
```

**Kein Kontext-Aufblähen**: Der Orchestrator liest nie vollständige Dateiinhalte — nur Metadaten (Punktzahl, Dateianzahl). Jeder Subagent erhält 100% frischen Kontext mit nur den benötigten Dateien.

---

## 🔌 Optionale Integrationen

Web Architect integriert sich mit diesen Claude Code Skills, **sofern sie installiert sind**. Sie sind nicht erforderlich — das System funktioniert eigenständig.

| Skill | Verwendet von | Zweck |
|-------|--------------|-------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Datenbank für Design-Empfehlungen |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Anti-KI-Einheitsbrei-Designregeln |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Architekt | Prinzipien sauberer Architektur |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Architekt | React-Kompositionsmuster |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Builder | Performance-Optimierung |

---

## 🔧 Erweiterung

**➕ Projektprofil hinzufügen** — An `references/project-profiles.md` anhängen. Keine Codeänderungen nötig.

**➕ Qualitätsdimension hinzufügen** — `references/quality-standards.md` bearbeiten. Gewichtungen aktualisieren (Summe muss 100% ergeben).

**➕ Einschränkungen anpassen** — `references/constrained-generation.md` bearbeiten. Schriftpaarungen, Harmonietypen oder Bewegungsmuster hinzufügen.

---

## 🤝 Mitwirken

Einen Fehler gefunden? Möchten Sie ein Profil hinzufügen? Pull Requests sind willkommen.

- **Issues**: Fehler melden oder Features anfragen
- **PRs**: Fork → Branch → Änderung → PR
- **Diskussionen**: Teilen Sie Ihre Designsystem-Ergebnisse!

---

## 📄 Lizenz

MIT — nutzen, forken, ausliefern.

---

<p align="center">
  <b>Entwickelt für Entwickler, die es leid sind, dass alle KI-Websites gleich aussehen.</b>
  <br/>
  <sub>⭐ Geben Sie diesem Repo einen Stern, wenn es Sie vor einer weiteren Inter + blauer Farbverlauf-Kombination bewahrt</sub>
</p>
