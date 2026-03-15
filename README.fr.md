🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português](README.pt-BR.md) | [עברית](README.he.md) | [हिन्दी](README.hi.md) | [Türkçe](README.tr.md) | [Русский](README.ru.md) | **🇫🇷 Français** | [Deutsch](README.de.md) | [العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Sous-agents" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Profils" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="Licence MIT" />
</p>

# 🏗️ Web Architect — Compétence pour Agents IA

> **Une commande. Quatre agents. Zéro rendu générique.**

Une compétence d'orchestration à 4 agents pour les agents de codage IA qui exécute un pipeline complet **du design au code** pour tout projet web. Une seule commande génère un système de design unique, planifie l'architecture, construit le code et vérifie la qualité — le tout avec des contraintes imposées qui empêchent le look « généré par IA ».

Compatible avec **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · et [plus de 15 autres agents](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 Le Problème

Tous les sites générés par IA se ressemblent : police Inter, dégradé bleu-violet, grille de cartes centrée, espacement générique. Les compétences de Claude Code fonctionnent en silos — vous devez manuellement connecter les compétences de design, d'architecture et de revue pour chaque projet. La qualité est variable. La fenêtre de contexte se surcharge quand plusieurs compétences sont chargées.

## ✨ La Solution

`/wa:design` dirige **4 sous-agents spécialisés** à travers un pipeline complet :

```
🎨 Designer → 🚦 Validation Design (vous approuvez) → 📐 Architecte → 🔨 Constructeur → 🔍 Réviseur → 🔄 Boucle de correction
```

Chaque agent s'exécute dans un **contexte vierge** (~5% de surcharge pour l'orchestrateur). Les données circulent via des fichiers sur disque. Le système **apprend de vos retours** au fil du temps.

---

## 🧬 Ce qui le rend différent

### 🎯 Génération sous contraintes

Au lieu de « rendez-le moderne », le Designer impose **4 couches de contraintes** :

| Couche | Fonction | Exemple de contrainte |
|--------|----------|----------------------|
| 💡 **Concept** | Choisit une métaphore de design à partir de l'objectif du projet | Doit différer des 3 derniers projets du même type |
| 🎨 **Couleur** | Algorithme d'harmonie HSL (complémentaire/analogue/triadique/complémentaire divisé) | WCAG 4.5:1 sur chaque paire texte/fond. Pas de #000/#fff pur |
| ✏️ **Typographie** | Catégories d'appariements de polices éprouvés | Google Fonts uniquement. **Interdits : Inter, Roboto, Arial** |
| 🎬 **Animation** | Système de jetons de timing avec plages | CSS uniquement par défaut. `prefers-reduced-motion` obligatoire |

### 📊 Notation qualité sur 5 dimensions

Le Réviseur note chaque build sur une **échelle pondérée de 0 à 100** :

| Dimension | Poids | Ce qui est vérifié |
|-----------|-------|-------------------|
| 🎨 Fidélité au design | 30% | Jetons utilisés, pas de couleurs codées en dur, concept respecté |
| ♿ Accessibilité | 25% | Contraste WCAG, états de focus, ARIA, navigation clavier |
| ⚡ Performance | 20% | Composants serveur, découpage de code, optimisation d'images |
| 🧹 Qualité du code | 15% | TypeScript (pas de `any`), composants <200 lignes |
| 📐 Architecture | 10% | Conformité au plan, RTL/i18n |

**Score < 80 ?** Le Constructeur corrige automatiquement les problèmes critiques (2 tours maximum). 🔄

### 🗂️ 8 profils de projet

Chaque profil définit des patterns de mise en page, des priorités de composants, des objectifs de performance et une orientation design :

| Profil | Idéal pour |
|--------|------------|
| 🚀 `landing` | Pages marketing, one-pagers, sites de lancement |
| 💼 `saas` | Marketing SaaS + coque d'application |
| 📊 `dashboard` | Panneaux d'administration, analytique, métriques |
| 🛒 `ecommerce` | Boutiques, catalogues produits, paiement |
| 📇 `crm` | Gestion de contacts, pipelines commerciaux |
| 🖼️ `portfolio` | Vitrines créatives, galeries |
| 📝 `blog` | Sites de contenu, articles, éditorial |
| 🖥️ `desktop` | Applications Electron, outils à apparence native |

### 🧠 Auto-apprentissage

Après chaque exécution, le système extrait **ce qui a fonctionné / ce qui a échoué / ce qu'il faut changer**. Les modifications que vous apportez lors de la validation du design (changement de couleur, choix d'une autre police) reçoivent la **priorité la plus élevée**. Les apprentissages sont sauvegardés par projet et chargés dans les exécutions futures — le système s'améliore au fil de l'utilisation.

---

## 🚀 Commandes

| Commande | Description |
|----------|-------------|
| `/wa:design [desc]` | 🎨 Pipeline complet : design → architecture → construction → revue |
| `/wa:build [desc]` | 🔨 Construction avec le système de design existant (saute la phase de design) |
| `/wa:review` | 🔍 Revue du code existant selon les standards de qualité |
| `/wa:profile [type]` | 🗂️ Définir/consulter le type de projet |

---

## 📦 Installation

### ⚡ Universelle (détection automatique de votre agent)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Installation par agent

| Agent | Commande |
|-------|----------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 Manuelle — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 Manuelle — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manuelle

Copiez les fichiers dans `~/.claude/` :

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Noyau de l'orchestrateur
│   └── 📁 references/
│       ├── constrained-generation.md     ← Règles des 4 couches de contraintes
│       ├── project-profiles.md           ← Spécifications des 8 types de projet
│       └── quality-standards.md          ← Grille de notation sur 5 dimensions
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Générateur de système de design
│   ├── wa-architect.md                   ← 📐 Planificateur d'architecture de composants
│   ├── wa-builder.md                     ← 🔨 Implémenteur de code
│   └── wa-reviewer.md                    ← 🔍 Évaluateur de qualité
└── 📁 commands/wa/
    ├── design.md                         ← Pipeline complet
    ├── build.md                          ← Construction seule
    ├── review.md                         ← Revue seule
    └── profile.md                        ← Gestionnaire de profils
```

Ensuite, ajoutez le contenu de `claude-md-snippet.md` à votre `~/.claude/CLAUDE.md`.

---

## 💡 Utilisation

### Nouveau projet

```bash
# 1. Définissez votre type de projet
/wa:profile landing

# 2. Lancez le pipeline complet
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

Le pipeline va :
1. 🎨 Générer un système de design unique et **s'interrompre pour votre approbation** (palette, polices, concept)
2. 📐 Planifier l'architecture des composants (structure de fichiers, flux de données, ordre de construction)
3. 🔨 Construire tous les composants en utilisant les jetons de design
4. 🔍 Noter le build et corriger automatiquement les problèmes si le score est < 80

### Projet existant — ajouter une page

```bash
# Utilise votre design-system/MASTER.md existant
/wa:build dashboard analytics page with charts and stat cards
```

### Projet existant — audit qualité

```bash
# Fonctionne sur n'importe quel code, pas besoin de système de design
/wa:review
```

### 📄 Artefacts générés

| Fichier | Fonction |
|---------|----------|
| `design-system/MASTER.md` | 🎨 Propriétés CSS personnalisées, concept, polices, jetons d'animation |
| `web-architect-plan.md` | 📐 Arbre de composants, spécifications de fichiers, ordre de construction |
| `web-architect-build-report.md` | 🔨 Fichiers créés, utilisation des jetons, statut du build |
| `web-architect-review.md` | 🔍 Revue notée sur 5 dimensions avec observations |

---

## 🏛️ Architecture

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 Orchestrateur (~5% du contexte)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ lance les agents séquentiellement
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Desn │→│📐 Arch │→│🔨 Build│→│🔍 Revw │  ← Contexte vierge pour chacun
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← Fichiers sur disque
```

**Zéro surcharge de contexte** : L'orchestrateur ne lit jamais le contenu complet des fichiers — uniquement les métadonnées (score, nombre de fichiers). Chaque sous-agent obtient un contexte 100% vierge avec uniquement les fichiers dont il a besoin.

---

## 🔌 Intégrations optionnelles

Web Architect s'intègre avec ces compétences Claude Code **si vous les avez installées**. Elles ne sont pas obligatoires — le système fonctionne de manière autonome.

| Compétence | Utilisée par | Fonction |
|------------|--------------|----------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Base de données de recommandations de design |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Règles anti-design IA générique |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Architecte | Principes d'architecture propre |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Architecte | Patterns de composition React |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Constructeur | Optimisation des performances |

---

## 🔧 Extension

**➕ Ajouter un profil de projet** — Ajoutez-le dans `references/project-profiles.md`. Aucune modification de code nécessaire.

**➕ Ajouter une dimension de qualité** — Modifiez `references/quality-standards.md`. Mettez à jour les poids (la somme doit faire 100%).

**➕ Personnaliser les contraintes** — Modifiez `references/constrained-generation.md`. Ajoutez des appariements de polices, des types d'harmonie ou des patterns d'animation.

---

## 🤝 Contribution

Vous avez trouvé un bug ? Vous voulez ajouter un profil ? Les PR sont les bienvenues.

- **Issues** : Signalez des bugs ou demandez des fonctionnalités
- **PR** : Fork → branche → modification → PR
- **Discussions** : Partagez vos systèmes de design générés !

---

## 📄 Licence

MIT — utilisez-le, forkez-le, expédiez-le.

---

<p align="center">
  <b>Conçu pour les développeurs fatigués des sites IA qui se ressemblent tous.</b>
  <br/>
  <sub>⭐ Mettez une étoile à ce repo si ça vous a épargné un autre combo Inter + dégradé bleu</sub>
</p>
