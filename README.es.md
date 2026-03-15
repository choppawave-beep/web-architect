🌍 [🇬🇧 English](README.md) | [🇨🇳 中文](README.zh-CN.md) | [🇯🇵 日本語](README.ja.md) | [🇰🇷 한국어](README.ko.md) | **🇪🇸 Español** | [🇧🇷 Português](README.pt-BR.md) | [🇮🇱 עברית](README.he.md) | [🇮🇳 हिन्दी](README.hi.md) | [🇹🇷 Türkçe](README.tr.md) | [🇷🇺 Русский](README.ru.md) | [🇫🇷 Français](README.fr.md) | [🇩🇪 Deutsch](README.de.md) | [🇸🇦 العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Subagentes" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Perfiles" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="Licencia MIT" />
</p>

# 🏗️ Web Architect — Habilidad para Agentes IA

> **Un comando. Cuatro agentes. Cero resultados genéricos.**

Una habilidad de orquestación con 4 agentes para agentes de programación IA que ejecuta un pipeline completo de **diseño a código** para cualquier proyecto web. Un solo comando genera un sistema de diseño único, planifica la arquitectura, construye el código y revisa la calidad — todo con restricciones que previenen el aspecto típico de "generado por IA".

Funciona con **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · y [más de 15 agentes](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design página principal con hero, tabla de precios y testimonios
```

---

## 😤 El Problema

Todos los sitios web generados por IA lucen igual: fuente Inter, degradado azul-morado, cuadrícula de tarjetas centrada, espaciado genérico. Las habilidades de Claude Code funcionan aisladas — tú conectas manualmente habilidades de diseño, arquitectura y revisión por proyecto. La calidad varía. La ventana de contexto se infla cuando se cargan múltiples habilidades.

## ✨ La Solución

`/wa:design` dirige **4 subagentes especializados** a través de un pipeline completo:

```
🎨 Diseñador → 🚦 Puerta de Diseño (tú apruebas) → 📐 Arquitecto → 🔨 Constructor → 🔍 Revisor → 🔄 Ciclo de Corrección
```

Cada agente se ejecuta en **contexto limpio** (~5% de sobrecarga del orquestador). Los datos fluyen mediante archivos en disco. El sistema **aprende de tu retroalimentación** con el tiempo.

---

## 🧬 Qué Lo Hace Diferente

### 🎯 Generación con Restricciones

En lugar de "hazlo moderno", el Diseñador aplica **4 capas de restricciones**:

| Capa | Qué Hace | Ejemplo de Restricción |
|------|----------|----------------------|
| 💡 **Concepto** | Elige una metáfora de diseño según el propósito del proyecto | Debe diferir de los últimos 3 proyectos del mismo tipo |
| 🎨 **Color** | Algoritmo de armonía HSL (complementario/análogo/triádico/complementario dividido) | WCAG 4.5:1 en cada par texto/fondo. Sin #000/#fff puros |
| ✏️ **Tipografía** | Categorías probadas de emparejamiento tipográfico | Solo Google Fonts. **Prohibidas: Inter, Roboto, Arial** |
| 🎬 **Movimiento** | Sistema de tokens de temporización con rangos | CSS puro por defecto. `prefers-reduced-motion` obligatorio |

### 📊 Puntuación de Calidad en 5 Dimensiones

El Revisor califica cada construcción en una **escala ponderada de 0-100**:

| Dimensión | Peso | Qué Evalúa |
|-----------|------|------------|
| 🎨 Fidelidad de Diseño | 30% | Tokens utilizados, sin colores hardcodeados, concepto reflejado |
| ♿ Accesibilidad | 25% | Contraste WCAG, estados de foco, ARIA, navegación por teclado |
| ⚡ Rendimiento | 20% | Server components, code splitting, optimización de imágenes |
| 🧹 Calidad de Código | 15% | TypeScript (sin `any`), componentes de <200 líneas |
| 📐 Arquitectura | 10% | Cumplimiento del plan, RTL/i18n |

**¿Puntuación < 80?** El Constructor corrige automáticamente los problemas críticos (máximo 2 rondas). 🔄

### 🗂️ 8 Perfiles de Proyecto

Cada perfil define patrones de maquetación, prioridades de componentes, objetivos de rendimiento y énfasis de diseño:

| Perfil | Ideal Para |
|--------|-----------|
| 🚀 `landing` | Páginas de marketing, one-pagers, sitios de lanzamiento |
| 💼 `saas` | Marketing SaaS + shell de aplicación |
| 📊 `dashboard` | Paneles de administración, analítica, métricas |
| 🛒 `ecommerce` | Tiendas, catálogos de productos, checkout |
| 📇 `crm` | Gestión de contactos, pipelines de ventas |
| 🖼️ `portfolio` | Portfolios creativos, galerías |
| 📝 `blog` | Sitios de contenido, artículos, editorial |
| 🖥️ `desktop` | Aplicaciones Electron, herramientas con aspecto nativo |

### 🧠 Auto-Aprendizaje

Después de cada ejecución, el sistema extrae **qué funcionó / qué falló / qué cambiar**. Las modificaciones del usuario en la puerta de diseño (cambiar un color, elegir otra fuente) obtienen **máxima prioridad**. Los aprendizajes se guardan por proyecto y se cargan en ejecuciones futuras — mejora cuanto más lo usas.

---

## 🚀 Comandos

| Comando | Descripción |
|---------|-------------|
| `/wa:design [desc]` | 🎨 Pipeline completo: diseño → arquitectura → construcción → revisión |
| `/wa:build [desc]` | 🔨 Construir con sistema de diseño existente (omite la fase de diseño) |
| `/wa:review` | 🔍 Revisar código existente contra estándares de calidad |
| `/wa:profile [tipo]` | 🗂️ Establecer/ver tipo de proyecto |

---

## 📦 Instalación

### ⚡ Universal (detecta automáticamente tu agente)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Instalación por Agente

| Agente | Comando |
|--------|---------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 Manual — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 Manual — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manual

Copia los archivos a `~/.claude/`:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Núcleo del orquestador
│   └── 📁 references/
│       ├── constrained-generation.md     ← Reglas de las 4 capas de restricciones
│       ├── project-profiles.md           ← Especificaciones de 8 tipos de proyecto
│       └── quality-standards.md          ← Rúbrica de puntuación en 5 dimensiones
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Generador de sistemas de diseño
│   ├── wa-architect.md                   ← 📐 Planificador de arquitectura de componentes
│   ├── wa-builder.md                     ← 🔨 Implementador de código
│   └── wa-reviewer.md                    ← 🔍 Evaluador de calidad
└── 📁 commands/wa/
    ├── design.md                         ← Pipeline completo
    ├── build.md                          ← Solo construcción
    ├── review.md                         ← Solo revisión
    └── profile.md                        ← Gestor de perfiles
```

Luego agrega el contenido de `claude-md-snippet.md` a tu `~/.claude/CLAUDE.md`.

---

## 💡 Uso

### Proyecto nuevo

```bash
# 1. Establece el tipo de tu proyecto
/wa:profile landing

# 2. Ejecuta el pipeline completo
/wa:design página principal con sección hero, cuadrícula de características, tabla de precios y testimonios
```

El pipeline:
1. 🎨 Genera un sistema de diseño único y **se detiene para tu aprobación** (paleta, fuentes, concepto)
2. 📐 Planifica la arquitectura de componentes (estructura de archivos, flujos de datos, orden de construcción)
3. 🔨 Construye todos los componentes usando tokens de diseño
4. 🔍 Evalúa la construcción y corrige automáticamente problemas si la puntuación < 80

### Proyecto existente — agregar una página

```bash
# Usa tu design-system/MASTER.md existente
/wa:build página de analítica del dashboard con gráficos y tarjetas de estadísticas
```

### Proyecto existente — auditoría de calidad

```bash
# Funciona con cualquier código, no necesita sistema de diseño
/wa:review
```

### 📄 Artefactos Generados

| Archivo | Propósito |
|---------|-----------|
| `design-system/MASTER.md` | 🎨 Propiedades personalizadas CSS, concepto, fuentes, tokens de movimiento |
| `web-architect-plan.md` | 📐 Árbol de componentes, especificaciones de archivos, orden de construcción |
| `web-architect-build-report.md` | 🔨 Archivos creados, uso de tokens, estado de la construcción |
| `web-architect-review.md` | 🔍 Revisión puntuada en 5 dimensiones con hallazgos |

---

## 🏛️ Arquitectura

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 Orquestador (~5% de contexto)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ ejecuta agentes secuencialmente
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Dis. │→│📐 Arq. │→│🔨 Cons.│→│🔍 Rev. │  ← Contexto limpio cada uno
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   archivos   review.md  ← Archivos en disco
```

**Cero inflación de contexto**: El orquestador nunca lee el contenido completo de los archivos — solo metadatos (puntuación, cantidad de archivos). Cada subagente obtiene contexto 100% limpio con solo los archivos que necesita.

---

## 🔌 Integraciones Opcionales

Web Architect se integra con estas habilidades de Claude Code **si las tienes instaladas**. No son obligatorias — el sistema funciona de forma independiente.

| Habilidad | Usada Por | Propósito |
|-----------|-----------|-----------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Diseñador | Base de datos de recomendaciones de diseño |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Diseñador | Reglas anti-diseño genérico de IA |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Arquitecto | Principios de arquitectura limpia |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Arquitecto | Patrones de composición React |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Constructor | Optimización de rendimiento |

---

## 🔧 Extensión

**➕ Agregar un perfil de proyecto** — Agrega al archivo `references/project-profiles.md`. No requiere cambios de código.

**➕ Agregar una dimensión de calidad** — Edita `references/quality-standards.md`. Actualiza los pesos (deben sumar 100%).

**➕ Personalizar restricciones** — Edita `references/constrained-generation.md`. Agrega emparejamientos tipográficos, tipos de armonía o patrones de movimiento.

---

## 🤝 Contribuciones

¿Encontraste un error? ¿Quieres agregar un perfil? Los PRs son bienvenidos.

- **Issues**: Reporta errores o solicita funcionalidades
- **PRs**: Fork → branch → cambios → PR
- **Discusiones**: ¡Comparte los sistemas de diseño que generaste!

---

## 📄 Licencia

MIT — úsalo, forkéalo, publícalo.

---

<p align="center">
  <b>Hecho para desarrolladores cansados de que todos los sitios web de IA luzcan igual.</b>
  <br/>
  <sub>⭐ Dale estrella a este repo si te salvó de otro combo de Inter + degradado azul</sub>
</p>
