🌍 [🇬🇧 English](README.md) | [🇨🇳 中文](README.zh-CN.md) | **🇯🇵 日本語** | [🇰🇷 한국어](README.ko.md) | [🇪🇸 Español](README.es.md) | [🇧🇷 Português](README.pt-BR.md) | [🇮🇱 עברית](README.he.md) | [🇮🇳 हिन्दी](README.hi.md) | [🇹🇷 Türkçe](README.tr.md) | [🇷🇺 Русский](README.ru.md) | [🇫🇷 Français](README.fr.md) | [🇩🇪 Deutsch](README.de.md) | [🇸🇦 العربية](README.ar.md)

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

# 🏗️ Web Architect — AIエージェントスキル

> **ワンコマンド。4つのエージェント。量産型デザインゼロ。**

AIコーディングエージェント向けの4エージェントオーケストレータースキル。あらゆるWebプロジェクトに対して**デザインからコードまでの完全パイプライン**を実行します。1つのコマンドで、ユニークなデザインシステムの生成、アーキテクチャの設計、コードの構築、品質レビューまで — すべて「AI生成っぽさ」を排除する制約付きで実行されます。

**Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · [その他15以上のエージェント](https://skills.sh)に対応

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 課題

AIが生成するWebサイトはどれも同じに見えます：Interフォント、青紫のグラデーション、中央揃えのカードグリッド、画一的な余白。Claude Codeのスキルはサイロ化して動作し、プロジェクトごとにデザインスキル、アーキテクチャスキル、レビュースキルを手動で連携させる必要があります。品質にはバラつきが生じ、複数のスキルを読み込むとコンテキストウィンドウが膨張します。

## ✨ 解決策

`/wa:design` は**4つの専門サブエージェント**を完全なパイプラインとして指揮します：

```
🎨 Designer → 🚦 デザインゲート（承認） → 📐 Architect → 🔨 Builder → 🔍 Reviewer → 🔄 修正ループ
```

各エージェントは**フレッシュなコンテキスト**で実行されます（オーケストレーターのオーバーヘッドは約5%）。データはディスク上のファイルを介して受け渡されます。システムは**フィードバックから学習**し、使うほど精度が向上します。

---

## 🧬 他との違い

### 🎯 制約付き生成

「モダンにして」ではなく、Designerが**4層の制約レイヤー**を適用します：

| レイヤー | 機能 | 制約の例 |
|---------|------|---------|
| 💡 **コンセプト** | プロジェクトの目的からデザインメタファーを選定 | 同タイプの直近3プロジェクトと異なるものを選択 |
| 🎨 **カラー** | HSL配色アルゴリズム（補色/類似色/三色配色/分裂補色） | すべてのテキスト/背景ペアでWCAG 4.5:1準拠。純粋な#000/#fffは禁止 |
| ✏️ **タイポグラフィ** | 実績のあるフォントペアリングカテゴリ | Google Fontsのみ。**禁止：Inter、Roboto、Arial** |
| 🎬 **モーション** | 範囲付きタイミングトークンシステム | デフォルトはCSS限定。`prefers-reduced-motion` 対応必須 |

### 📊 5次元品質スコアリング

Reviewerはすべてのビルドを**0-100の加重スケール**で採点します：

| 次元 | 比重 | チェック内容 |
|------|------|------------|
| 🎨 デザイン忠実度 | 30% | トークン使用率、ハードコードされた色がないか、コンセプトの反映 |
| ♿ アクセシビリティ | 25% | WCAGコントラスト、フォーカス状態、ARIA、キーボードナビゲーション |
| ⚡ パフォーマンス | 20% | サーバーコンポーネント、コード分割、画像最適化 |
| 🧹 コード品質 | 15% | TypeScript（`any`禁止）、コンポーネント200行未満 |
| 📐 アーキテクチャ | 10% | 設計準拠、RTL/i18n対応 |

**スコア80未満？** Builderが重大な問題を自動修正します（最大2ラウンド）。🔄

### 🗂️ 8つのプロジェクトプロファイル

各プロファイルはレイアウトパターン、コンポーネントの優先度、パフォーマンス目標、デザインの重点を定義します：

| プロファイル | 最適な用途 |
|------------|-----------|
| 🚀 `landing` | マーケティングページ、ワンページサイト、ローンチサイト |
| 💼 `saas` | SaaSマーケティング + アプリシェル |
| 📊 `dashboard` | 管理パネル、アナリティクス、メトリクス |
| 🛒 `ecommerce` | ECサイト、商品カタログ、チェックアウト |
| 📇 `crm` | 顧客管理、案件パイプライン |
| 🖼️ `portfolio` | クリエイティブショーケース、ギャラリー |
| 📝 `blog` | コンテンツサイト、記事、エディトリアル |
| 🖥️ `desktop` | Electronアプリ、ネイティブ風ツール |

### 🧠 自己学習

実行のたびに、システムは**成功点・失敗点・改善点**を抽出します。デザインゲートでのユーザーによるオーバーライド（色の変更、フォントの選び直しなど）は**最優先で学習**されます。学習結果はプロジェクトごとに保存され、次回以降の実行に反映されます — 使えば使うほど賢くなります。

---

## 🚀 コマンド

| コマンド | 説明 |
|---------|------|
| `/wa:design [desc]` | 🎨 フルパイプライン：デザイン → アーキテクチャ → ビルド → レビュー |
| `/wa:build [desc]` | 🔨 既存のデザインシステムでビルド（デザインフェーズをスキップ） |
| `/wa:review` | 🔍 既存コードを品質基準に基づいてレビュー |
| `/wa:profile [type]` | 🗂️ プロジェクトタイプの設定/確認 |

---

## 📦 インストール

### ⚡ ユニバーサル（エージェントを自動検出）

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 エージェント別インストール

| エージェント | コマンド |
|------------|---------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 手動 — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 手動 — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### 手動

ファイルを `~/.claude/` にコピーします：

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← オーケストレーターコア
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4層制約ルール
│       ├── project-profiles.md           ← 8つのプロジェクトタイプ仕様
│       └── quality-standards.md          ← 5次元スコアリング基準
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 デザインシステム生成
│   ├── wa-architect.md                   ← 📐 コンポーネントアーキテクチャ設計
│   ├── wa-builder.md                     ← 🔨 コード実装
│   └── wa-reviewer.md                    ← 🔍 品質スコアリング
└── 📁 commands/wa/
    ├── design.md                         ← フルパイプライン
    ├── build.md                          ← ビルドのみ
    ├── review.md                         ← レビューのみ
    └── profile.md                        ← プロファイル管理
```

その後、`claude-md-snippet.md` の内容を `~/.claude/CLAUDE.md` に追記してください。

---

## 💡 使い方

### 新規プロジェクト

```bash
# 1. プロジェクトタイプを設定
/wa:profile landing

# 2. フルパイプラインを実行
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

パイプラインの流れ：
1. 🎨 ユニークなデザインシステムを生成し、**承認を求めて一時停止**します（パレット、フォント、コンセプト）
2. 📐 コンポーネントアーキテクチャを設計します（ファイル構成、データフロー、ビルド順序）
3. 🔨 デザイントークンを使用してすべてのコンポーネントをビルドします
4. 🔍 ビルドを採点し、スコアが80未満の場合は問題を自動修正します

### 既存プロジェクト — ページの追加

```bash
# 既存の design-system/MASTER.md を使用
/wa:build dashboard analytics page with charts and stat cards
```

### 既存プロジェクト — 品質監査

```bash
# 任意のコードで動作、デザインシステム不要
/wa:review
```

### 📄 出力ファイル

| ファイル | 用途 |
|---------|------|
| `design-system/MASTER.md` | 🎨 CSSカスタムプロパティ、コンセプト、フォント、モーショントークン |
| `web-architect-plan.md` | 📐 コンポーネントツリー、ファイル仕様、ビルド順序 |
| `web-architect-build-report.md` | 🔨 作成ファイル、トークン使用量、ビルドステータス |
| `web-architect-review.md` | 🔍 5次元スコア付きレビューと所見 |

---

## 🏛️ アーキテクチャ

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 オーケストレーター（コンテキストの約5%）
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ エージェントを順次起動
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Desn │→│📐 Arch │→│🔨 Build│→│🔍 Revw │  ← 各エージェントがフレッシュなコンテキストで実行
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← ディスク上のファイル
```

**コンテキストの膨張ゼロ**：オーケストレーターはファイルの全内容を読み込みません — メタデータ（スコア、ファイル数）のみ参照します。各サブエージェントは、必要なファイルだけを持った100%フレッシュなコンテキストで実行されます。

---

## 🔌 オプション連携

Web Architectは、以下のClaude Codeスキルが**インストールされている場合に連携**します。必須ではありません — システムは単体でも動作します。

| スキル | 使用エージェント | 用途 |
|-------|----------------|------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | デザイン推奨データベース |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Designer | AI量産デザイン排除ルール |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Architect | クリーンアーキテクチャの原則 |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Architect | Reactコンポジションパターン |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 Builder | パフォーマンス最適化 |

---

## 🔧 拡張

**➕ プロジェクトプロファイルの追加** — `references/project-profiles.md` に追記するだけです。コード変更は不要です。

**➕ 品質次元の追加** — `references/quality-standards.md` を編集します。比重の合計が100%になるよう更新してください。

**➕ 制約のカスタマイズ** — `references/constrained-generation.md` を編集します。フォントペアリング、配色タイプ、モーションパターンを追加できます。

---

## 🤝 コントリビューション

バグを見つけましたか？プロファイルを追加したいですか？PRをお待ちしています。

- **Issues**：バグ報告や機能リクエスト
- **PRs**：Fork → ブランチ作成 → 変更 → PR
- **Discussions**：生成したデザインシステムを共有しましょう！

---

## 📄 ライセンス

MIT — 使って、フォークして、出荷してください。

---

<p align="center">
  <b>「AI製Webサイトはどれも同じに見える」にうんざりした開発者のために作りました。</b>
  <br/>
  <sub>⭐ Inter + 青グラデーションの組み合わせから解放されたら、このリポジトリにスターを</sub>
</p>
