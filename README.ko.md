🌍 [🇬🇧 English](README.md) | [🇨🇳 中文](README.zh-CN.md) | [🇯🇵 日本語](README.ja.md) | **🇰🇷 한국어** | [🇪🇸 Español](README.es.md) | [🇧🇷 Português](README.pt-BR.md) | [🇮🇱 עברית](README.he.md) | [🇮🇳 हिन्दी](README.hi.md) | [🇹🇷 Türkçe](README.tr.md) | [🇷🇺 Русский](README.ru.md) | [🇫🇷 Français](README.fr.md) | [🇩🇪 Deutsch](README.de.md) | [🇸🇦 العربية](README.ar.md)

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

# 🏗️ Web Architect — AI 에이전트 스킬

> **하나의 명령어. 네 개의 에이전트. 뻔한 결과물은 없습니다.**

AI 코딩 에이전트를 위한 4-에이전트 오케스트레이터 스킬로, 모든 웹 프로젝트에서 완전한 **디자인-투-코드 파이프라인**을 실행합니다. 하나의 명령어로 고유한 디자인 시스템을 생성하고, 아키텍처를 계획하고, 코드를 구축하고, 품질을 검토합니다 — "AI가 만든 티 나는" 결과물을 방지하는 제약 조건이 적용됩니다.

**Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** 및 [15개 이상의 에이전트](https://skills.sh)에서 작동합니다

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 문제점

모든 AI 생성 웹사이트는 똑같이 생겼습니다: Inter 폰트, 파란-보라 그라디언트, 가운데 정렬된 카드 그리드, 천편일률적인 간격. Claude Code 스킬은 각각 독립적으로 작동하여 — 프로젝트마다 디자인 스킬, 아키텍처 스킬, 리뷰 스킬을 수동으로 연결해야 합니다. 품질은 들쑥날쑥하고, 여러 스킬이 로드되면 컨텍스트 윈도우가 비대해집니다.

## ✨ 해결책

`/wa:design`은 **4개의 전문 서브에이전트**를 완전한 파이프라인으로 조율합니다:

```
🎨 디자이너 → 🚦 디자인 게이트 (사용자 승인) → 📐 아키텍트 → 🔨 빌더 → 🔍 리뷰어 → 🔄 수정 루프
```

각 에이전트는 **새로운 컨텍스트**에서 실행됩니다 (오케스트레이터 오버헤드 ~5%). 데이터는 디스크 상의 파일을 통해 전달됩니다. 시스템은 시간이 지날수록 **사용자의 피드백을 학습**합니다.

---

## 🧬 차별점

### 🎯 제약 기반 생성

"모던하게 만들어 줘" 대신, 디자이너는 **4개의 제약 레이어**를 적용합니다:

| 레이어 | 역할 | 제약 예시 |
|-------|------|----------|
| 💡 **컨셉** | 프로젝트 목적에서 디자인 메타포를 선택 | 동일 유형의 최근 3개 프로젝트와 달라야 함 |
| 🎨 **색상** | HSL 하모니 알고리즘 (보색/유사색/삼색/분할보색) | 모든 텍스트/배경 조합에서 WCAG 4.5:1 충족. 순수 #000/#fff 금지 |
| ✏️ **타이포그래피** | 검증된 폰트 페어링 카테고리 | Google Fonts만 사용. **금지: Inter, Roboto, Arial** |
| 🎬 **모션** | 범위 기반 타이밍 토큰 시스템 | 기본은 CSS 전용. `prefers-reduced-motion` 필수 |

### 📊 5차원 품질 점수 체계

리뷰어는 모든 빌드를 **0-100 가중 점수**로 평가합니다:

| 차원 | 가중치 | 검사 항목 |
|------|--------|----------|
| 🎨 디자인 충실도 | 30% | 토큰 사용 여부, 하드코딩된 색상 없음, 컨셉 반영 |
| ♿ 접근성 | 25% | WCAG 대비, 포커스 상태, ARIA, 키보드 내비게이션 |
| ⚡ 성능 | 20% | 서버 컴포넌트, 코드 스플리팅, 이미지 최적화 |
| 🧹 코드 품질 | 15% | TypeScript (`any` 금지), 200줄 미만 컴포넌트 |
| 📐 아키텍처 | 10% | 설계 계획 준수, RTL/i18n |

**점수 < 80?** 빌더가 치명적 이슈를 자동 수정합니다 (최대 2라운드). 🔄

### 🗂️ 8개 프로젝트 프로필

각 프로필은 레이아웃 패턴, 컴포넌트 우선순위, 성능 목표, 디자인 중점 사항을 정의합니다:

| 프로필 | 적합한 용도 |
|--------|-----------|
| 🚀 `landing` | 마케팅 페이지, 원페이저, 런칭 사이트 |
| 💼 `saas` | SaaS 마케팅 + 앱 쉘 |
| 📊 `dashboard` | 관리자 패널, 분석, 지표 |
| 🛒 `ecommerce` | 쇼핑몰, 상품 카탈로그, 결제 |
| 📇 `crm` | 연락처 관리, 딜 파이프라인 |
| 🖼️ `portfolio` | 크리에이티브 쇼케이스, 갤러리 |
| 📝 `blog` | 콘텐츠 사이트, 기사, 에디토리얼 |
| 🖥️ `desktop` | Electron 앱, 네이티브 느낌의 도구 |

### 🧠 자기 학습

매 실행 후, 시스템은 **성공한 것 / 실패한 것 / 변경할 것**을 추출합니다. 디자인 게이트에서의 사용자 수정(색상 변경, 다른 폰트 선택 등)은 **최우선 순위**로 반영됩니다. 학습 내용은 프로젝트별로 저장되어 이후 실행에 로드됩니다 — 사용할수록 점점 더 좋아집니다.

---

## 🚀 명령어

| 명령어 | 설명 |
|--------|------|
| `/wa:design [설명]` | 🎨 전체 파이프라인: 디자인 → 아키텍처 → 빌드 → 리뷰 |
| `/wa:build [설명]` | 🔨 기존 디자인 시스템으로 빌드 (디자인 단계 건너뜀) |
| `/wa:review` | 🔍 품질 기준에 따라 기존 코드 검토 |
| `/wa:profile [유형]` | 🗂️ 프로젝트 유형 설정/확인 |

---

## 📦 설치

### ⚡ 범용 설치 (에이전트 자동 감지)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 에이전트별 설치

| 에이전트 | 명령어 |
|----------|--------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 수동 설치 — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 수동 설치 — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### 수동 설치

`~/.claude/`에 파일을 복사하세요:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← 오케스트레이터 코어
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4-레이어 제약 규칙
│       ├── project-profiles.md           ← 8개 프로젝트 유형 사양
│       └── quality-standards.md          ← 5차원 점수 체계 기준
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 디자인 시스템 생성기
│   ├── wa-architect.md                   ← 📐 컴포넌트 아키텍처 설계자
│   ├── wa-builder.md                     ← 🔨 코드 구현 담당
│   └── wa-reviewer.md                    ← 🔍 품질 평가 담당
└── 📁 commands/wa/
    ├── design.md                         ← 전체 파이프라인
    ├── build.md                          ← 빌드 전용
    ├── review.md                         ← 리뷰 전용
    └── profile.md                        ← 프로필 관리
```

그런 다음 `claude-md-snippet.md`의 내용을 `~/.claude/CLAUDE.md`에 추가하세요.

---

## 💡 사용법

### 새 프로젝트

```bash
# 1. 프로젝트 유형 설정
/wa:profile landing

# 2. 전체 파이프라인 실행
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

파이프라인은 다음과 같이 진행됩니다:
1. 🎨 고유한 디자인 시스템을 생성하고 **사용자 승인을 위해 일시 정지**합니다 (팔레트, 폰트, 컨셉)
2. 📐 컴포넌트 아키텍처를 계획합니다 (파일 구조, 데이터 흐름, 빌드 순서)
3. 🔨 디자인 토큰을 사용하여 모든 컴포넌트를 구축합니다
4. 🔍 빌드를 점수 매기고 점수가 80 미만이면 이슈를 자동 수정합니다

### 기존 프로젝트 — 페이지 추가

```bash
# 기존 design-system/MASTER.md를 사용합니다
/wa:build dashboard analytics page with charts and stat cards
```

### 기존 프로젝트 — 품질 감사

```bash
# 모든 코드에서 작동하며, 디자인 시스템이 필요 없습니다
/wa:review
```

### 📄 출력 산출물

| 파일 | 용도 |
|------|------|
| `design-system/MASTER.md` | 🎨 CSS 커스텀 프로퍼티, 컨셉, 폰트, 모션 토큰 |
| `web-architect-plan.md` | 📐 컴포넌트 트리, 파일 사양, 빌드 순서 |
| `web-architect-build-report.md` | 🔨 생성된 파일, 토큰 사용량, 빌드 상태 |
| `web-architect-review.md` | 🔍 5차원 점수 기반 리뷰 및 발견 사항 |

---

## 🏛️ 아키텍처

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 오케스트레이터 (~5% 컨텍스트)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ 에이전트를 순차적으로 생성
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 디자 │→│📐 아키 │→│🔨 빌드│→│🔍 리뷰 │  ← 각각 새로운 컨텍스트
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   코드 파일  review.md  ← 디스크 상의 파일
```

**컨텍스트 비대화 제로**: 오케스트레이터는 전체 파일 내용을 읽지 않으며 — 메타데이터(점수, 파일 수)만 읽습니다. 각 서브에이전트는 필요한 파일만 가지고 100% 새로운 컨텍스트에서 실행됩니다.

---

## 🔌 선택적 통합

Web Architect는 **설치되어 있는 경우** 다음 Claude Code 스킬과 통합됩니다. 필수는 아닙니다 — 시스템은 단독으로도 작동합니다.

| 스킬 | 사용 주체 | 용도 |
|------|-----------|------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 디자이너 | 디자인 추천 데이터베이스 |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 디자이너 | AI 뻔한 디자인 방지 규칙 |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 아키텍트 | 클린 아키텍처 원칙 |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 아키텍트 | React 컴포지션 패턴 |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 빌더 | 성능 최적화 |

---

## 🔧 확장하기

**➕ 프로젝트 프로필 추가** — `references/project-profiles.md`에 추가하면 됩니다. 코드 변경 필요 없음.

**➕ 품질 차원 추가** — `references/quality-standards.md`를 수정하세요. 가중치를 업데이트하세요 (합계가 100%여야 합니다).

**➕ 제약 조건 커스터마이즈** — `references/constrained-generation.md`를 수정하세요. 폰트 페어링, 하모니 유형, 또는 모션 패턴을 추가할 수 있습니다.

---

## 🤝 기여하기

버그를 발견하셨나요? 프로필을 추가하고 싶으신가요? PR을 환영합니다.

- **Issues**: 버그 리포트 또는 기능 요청
- **PRs**: Fork → 브랜치 → 수정 → PR
- **Discussions**: 여러분의 디자인 시스템 결과물을 공유해 주세요!

---

## 📄 라이선스

MIT — 자유롭게 사용하고, 포크하고, 배포하세요.

---

<p align="center">
  <b>AI 웹사이트가 다 똑같이 생긴 것에 지친 개발자를 위해 만들었습니다.</b>
  <br/>
  <sub>⭐ Inter + 파란 그라디언트 조합에서 벗어나게 해줬다면 스타를 눌러주세요</sub>
</p>
