🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | **Português**

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Subagents" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Profiles" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="MIT License" />
</p>

# 🏗️ Web Architect — Habilidade para Agentes IA

> **Um comando. Quatro agentes. Zero resultado genérico.**

Uma habilidade orquestradora de 4 agentes para agentes de codificação IA que executa um pipeline completo de **design até código** para qualquer projeto web. Um único comando gera um sistema de design exclusivo, planeja a arquitetura, constrói o código e revisa a qualidade — tudo com restrições impostas que evitam a aparência "gerada por IA".

Funciona com **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · e [mais de 15 agentes](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design página inicial com hero, tabela de preços e depoimentos
```

---

## 😤 O Problema

Todo site gerado por IA tem a mesma cara: fonte Inter, gradiente azul-roxo, grid centralizado de cards, espaçamento genérico. As habilidades do Claude Code funcionam de forma isolada — você conecta manualmente habilidades de design, arquitetura e revisão por projeto. A qualidade varia. A janela de contexto incha quando múltiplas habilidades são carregadas.

## ✨ A Solução

`/wa:design` conduz **4 subagentes especializados** por um pipeline completo:

```
🎨 Designer → 🚦 Aprovação de Design (você aprova) → 📐 Arquiteto → 🔨 Construtor → 🔍 Revisor → 🔄 Ciclo de Correção
```

Cada agente roda em **contexto limpo** (~5% de overhead do orquestrador). Os dados fluem por arquivos em disco. O sistema **aprende com seu feedback** ao longo do tempo.

---

## 🧬 O Que o Torna Diferente

### 🎯 Geração com Restrições

Em vez de "deixe com cara moderna", o Designer aplica **4 camadas de restrições**:

| Camada | O Que Faz | Exemplo de Restrição |
|--------|-----------|---------------------|
| 💡 **Conceito** | Escolhe uma metáfora de design a partir do propósito do projeto | Deve diferir dos últimos 3 projetos do mesmo tipo |
| 🎨 **Cor** | Algoritmo de harmonia HSL (complementar/análoga/triádica/complementar dividida) | WCAG 4.5:1 em todo par texto/fundo. Sem #000/#fff puros |
| ✏️ **Tipografia** | Categorias de pareamento de fontes comprovadas | Apenas Google Fonts. **Proibidas: Inter, Roboto, Arial** |
| 🎬 **Movimento** | Sistema de tokens de temporização com intervalos | CSS puro por padrão. `prefers-reduced-motion` obrigatório |

### 📊 Pontuação de Qualidade em 5 Dimensões

O Revisor pontua cada build em uma **escala ponderada de 0 a 100**:

| Dimensão | Peso | O Que Verifica |
|----------|------|---------------|
| 🎨 Fidelidade ao Design | 30% | Tokens utilizados, sem cores hardcoded, conceito refletido |
| ♿ Acessibilidade | 25% | Contraste WCAG, estados de foco, ARIA, navegação por teclado |
| ⚡ Performance | 20% | Server components, code splitting, otimização de imagens |
| 🧹 Qualidade de Código | 15% | TypeScript (sem `any`), componentes com menos de 200 linhas |
| 📐 Arquitetura | 10% | Conformidade com o plano, RTL/i18n |

**Pontuação < 80?** O Construtor corrige automaticamente problemas críticos (máximo 2 rodadas). 🔄

### 🗂️ 8 Perfis de Projeto

Cada perfil define padrões de layout, prioridades de componentes, metas de performance e ênfase de design:

| Perfil | Ideal Para |
|--------|-----------|
| 🚀 `landing` | Páginas de marketing, one-pagers, sites de lançamento |
| 💼 `saas` | Marketing SaaS + shell de aplicação |
| 📊 `dashboard` | Painéis administrativos, analytics, métricas |
| 🛒 `ecommerce` | Lojas, catálogos de produtos, checkout |
| 📇 `crm` | Gestão de contatos, pipelines de negócios |
| 🖼️ `portfolio` | Vitrines criativas, galerias |
| 📝 `blog` | Sites de conteúdo, artigos, editorial |
| 🖥️ `desktop` | Apps Electron, ferramentas com aparência nativa |

### 🧠 Autoaprendizado

Após cada execução, o sistema extrai **o que funcionou / o que falhou / o que mudar**. Alterações feitas por você na aprovação de design (mudar uma cor, escolher outra fonte) recebem **prioridade máxima**. Os aprendizados são salvos por projeto e carregados em execuções futuras — ele melhora quanto mais você usa.

---

## 🚀 Comandos

| Comando | Descrição |
|---------|-----------|
| `/wa:design [desc]` | 🎨 Pipeline completo: design → arquitetura → build → revisão |
| `/wa:build [desc]` | 🔨 Build com sistema de design existente (pula a fase de design) |
| `/wa:review` | 🔍 Revisar código existente contra padrões de qualidade |
| `/wa:profile [type]` | 🗂️ Definir/visualizar tipo de projeto |

---

## 📦 Instalação

### ⚡ Universal (detecta automaticamente seu agente)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Instalação por Agente

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

Copie os arquivos para `~/.claude/`:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Núcleo do orquestrador
│   └── 📁 references/
│       ├── constrained-generation.md     ← Regras das 4 camadas de restrições
│       ├── project-profiles.md           ← Especificações dos 8 tipos de projeto
│       └── quality-standards.md          ← Rubrica de pontuação em 5 dimensões
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Gerador de sistema de design
│   ├── wa-architect.md                   ← 📐 Planejador de arquitetura de componentes
│   ├── wa-builder.md                     ← 🔨 Implementador de código
│   └── wa-reviewer.md                    ← 🔍 Avaliador de qualidade
└── 📁 commands/wa/
    ├── design.md                         ← Pipeline completo
    ├── build.md                          ← Apenas build
    ├── review.md                         ← Apenas revisão
    └── profile.md                        ← Gerenciador de perfis
```

Em seguida, adicione o conteúdo de `claude-md-snippet.md` ao final do seu `~/.claude/CLAUDE.md`.

---

## 💡 Uso

### Novo projeto

```bash
# 1. Defina o tipo do seu projeto
/wa:profile landing

# 2. Execute o pipeline completo
/wa:design página inicial com seção hero, grid de funcionalidades, tabela de preços e depoimentos
```

O pipeline irá:
1. 🎨 Gerar um sistema de design exclusivo e **pausar para sua aprovação** (paleta, fontes, conceito)
2. 📐 Planejar a arquitetura de componentes (estrutura de arquivos, fluxos de dados, ordem de build)
3. 🔨 Construir todos os componentes usando design tokens
4. 🔍 Pontuar o build e corrigir automaticamente problemas se a pontuação < 80

### Projeto existente — adicionar uma página

```bash
# Usa seu design-system/MASTER.md existente
/wa:build página de analytics do dashboard com gráficos e cards de estatísticas
```

### Projeto existente — auditoria de qualidade

```bash
# Funciona em qualquer código, sem necessidade de sistema de design
/wa:review
```

### 📄 Artefatos de Saída

| Arquivo | Finalidade |
|---------|-----------|
| `design-system/MASTER.md` | 🎨 CSS custom properties, conceito, fontes, tokens de movimento |
| `web-architect-plan.md` | 📐 Árvore de componentes, especificações de arquivos, ordem de build |
| `web-architect-build-report.md` | 🔨 Arquivos criados, uso de tokens, status do build |
| `web-architect-review.md` | 🔍 Revisão pontuada em 5 dimensões com descobertas |

---

## 🏛️ Arquitetura

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 Orquestrador (~5% do contexto)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ invoca agentes sequencialmente
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Desn │→│📐 Arch │→│🔨 Build│→│🔍 Revw │  ← Contexto limpo cada
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← Arquivos em disco
```

**Zero inchaço de contexto**: O orquestrador nunca lê o conteúdo completo dos arquivos — apenas metadados (pontuação, contagem de arquivos). Cada subagente recebe 100% de contexto limpo apenas com os arquivos que precisa.

---

## 🔌 Integrações Opcionais

Web Architect se integra com estas habilidades do Claude Code **se você as tiver instaladas**. Não são obrigatórias — o sistema funciona de forma independente.

| Habilidade | Usada Por | Finalidade |
|------------|-----------|-----------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Base de recomendações de design |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | Regras anti-aparência-de-IA |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Arquiteto | Princípios de arquitetura limpa |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Arquiteto | Padrões de composição React |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Construtor | Otimização de performance |

---

## 🔧 Extensão

**➕ Adicionar um perfil de projeto** — Adicione ao `references/project-profiles.md`. Nenhuma alteração de código necessária.

**➕ Adicionar uma dimensão de qualidade** — Edite `references/quality-standards.md`. Atualize os pesos (devem somar 100%).

**➕ Personalizar restrições** — Edite `references/constrained-generation.md`. Adicione pareamentos de fontes, tipos de harmonia ou padrões de movimento.

---

## 🤝 Contribuindo

Encontrou um bug? Quer adicionar um perfil? PRs são bem-vindos.

- **Issues**: Reporte bugs ou solicite funcionalidades
- **PRs**: Fork → branch → alteração → PR
- **Discussões**: Compartilhe os resultados do seu sistema de design!

---

## 📄 Licença

MIT — use, faça fork, publique.

---

<p align="center">
  <b>Feito para desenvolvedores cansados de sites IA que todos parecem iguais.</b>
  <br/>
  <sub>⭐ Dê uma estrela neste repo se ele te salvou de mais uma combo Inter + gradiente azul</sub>
</p>
