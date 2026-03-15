🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português](README.pt-BR.md) | [עברית](README.he.md) | [हिन्दी](README.hi.md) | [Türkçe](README.tr.md) | [Русский](README.ru.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | **🇸🇦 العربية**

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 وكلاء فرعيون" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 أنماط مشاريع" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="رخصة MIT" />
</p>

# 🏗️ Web Architect — مهارة لوكلاء الذكاء الاصطناعي

> **أمر واحد. أربعة وكلاء. بدون مخرجات نمطية مكررة.**

مهارة تنسيق رباعية الوكلاء لوكلاء البرمجة بالذكاء الاصطناعي تُنفّذ خط إنتاج كامل من **التصميم إلى الكود** لأي مشروع ويب. أمر واحد يُنشئ نظام تصميم فريد، يُخطط البنية، يبني الكود، ويُراجع الجودة — كل ذلك بقيود مُطبّقة تمنع المظهر "المُولّد بالذكاء الاصطناعي" النمطي.

يعمل مع **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · و[أكثر من 15 وكيلاً آخر](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 المشكلة

كل موقع مُولّد بالذكاء الاصطناعي يبدو متشابهاً: خط Inter، تدرج أزرق-بنفسجي، شبكة بطاقات مُوسّطة، مسافات نمطية. مهارات Claude Code تعمل بمعزل عن بعضها — تقوم يدوياً بربط مهارات التصميم والبنية والمراجعة لكل مشروع. الجودة متفاوتة. ونافذة السياق تتضخم عند تحميل مهارات متعددة.

## ✨ الحل

`/wa:design` يُنسّق **4 وكلاء فرعيين متخصصين** عبر خط إنتاج متكامل:

```
🎨 المُصمّم → 🚦 بوابة التصميم (تُوافق أنت) → 📐 المُهندس → 🔨 البنّاء → 🔍 المُراجع → 🔄 حلقة الإصلاح
```

كل وكيل يعمل في **سياق نظيف** (حمل تنسيق ~5% فقط). البيانات تنتقل عبر ملفات على القرص. النظام **يتعلّم من ملاحظاتك** مع مرور الوقت.

---

## 🧬 ما الذي يُميّزه

### 🎯 التوليد المُقيّد

بدلاً من "اجعله يبدو عصرياً"، يُطبّق المُصمّم **4 طبقات من القيود**:

| الطبقة | وظيفتها | مثال على القيد |
|--------|---------|---------------|
| 💡 **المفهوم** | يختار استعارة تصميمية من غرض المشروع | يجب أن يختلف عن آخر 3 مشاريع من نفس النوع |
| 🎨 **الألوان** | خوارزمية تناسق HSL (تكاملي/متجاور/ثلاثي/مُكمّل منقسم) | نسبة WCAG 4.5:1 على كل زوج نص/خلفية. ممنوع #000/#fff الصرف |
| ✏️ **الخطوط** | فئات ثنائيات خطوط مُجرّبة | Google Fonts فقط. **ممنوع: Inter، Roboto، Arial** |
| 🎬 **الحركة** | نظام رموز توقيت مع نطاقات | CSS فقط كافتراضي. `prefers-reduced-motion` مطلوب |

### 📊 تقييم الجودة بخمسة أبعاد

يُقيّم المُراجع كل بناء على **مقياس مُرجّح من 0 إلى 100**:

| البُعد | الوزن | ما يفحصه |
|--------|-------|----------|
| 🎨 دقة التصميم | 30% | استخدام الرموز، عدم وجود ألوان مُثبّتة يدوياً، انعكاس المفهوم |
| ♿ إمكانية الوصول | 25% | تباين WCAG، حالات التركيز، ARIA، التنقل بلوحة المفاتيح |
| ⚡ الأداء | 20% | مُكوّنات الخادم، تقسيم الكود، تحسين الصور |
| 🧹 جودة الكود | 15% | TypeScript (بدون `any`)، مُكوّنات أقل من 200 سطر |
| 📐 البنية | 10% | التوافق مع الخطة، RTL/i18n |

**النتيجة أقل من 80؟** البنّاء يُصلح المشاكل الحرجة تلقائياً (جولتان كحد أقصى). 🔄

### 🗂️ 8 أنماط مشاريع

كل نمط يُحدد أنماط التخطيط وأولويات المُكوّنات وأهداف الأداء والتركيز التصميمي:

| النمط | الأنسب لـ |
|-------|----------|
| 🚀 `landing` | صفحات تسويقية، صفحات فردية، مواقع إطلاق |
| 💼 `saas` | تسويق SaaS + هيكل التطبيق |
| 📊 `dashboard` | لوحات إدارة، تحليلات، مقاييس |
| 🛒 `ecommerce` | متاجر، كتالوجات منتجات، صفحات دفع |
| 📇 `crm` | إدارة جهات اتصال، خطوط صفقات |
| 🖼️ `portfolio` | معارض إبداعية، أعمال فنية |
| 📝 `blog` | مواقع محتوى، مقالات، تحريرية |
| 🖥️ `desktop` | تطبيقات Electron، أدوات بمظهر أصلي |

### 🧠 التعلّم الذاتي

بعد كل تشغيل، يستخلص النظام **ما نجح / ما فشل / ما يجب تغييره**. تعديلاتك عند بوابة التصميم (تغيير لون، اختيار خط مختلف) تحصل على **الأولوية القصوى**. يتم حفظ الدروس المُستفادة لكل مشروع وتُحمّل في التشغيلات المستقبلية — النظام يتحسّن كلما استخدمته أكثر.

---

## 🚀 الأوامر

| الأمر | الوصف |
|-------|-------|
| `/wa:design [desc]` | 🎨 خط الإنتاج الكامل: تصميم ← بنية ← بناء ← مراجعة |
| `/wa:build [desc]` | 🔨 بناء مع نظام تصميم موجود (تخطي مرحلة التصميم) |
| `/wa:review` | 🔍 مراجعة الكود الحالي وفق معايير الجودة |
| `/wa:profile [type]` | 🗂️ تعيين/عرض نوع المشروع |

---

## 📦 التثبيت

### ⚡ عام (يكتشف وكيلك تلقائياً)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 تثبيت حسب الوكيل

| الوكيل | الأمر |
|--------|-------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 يدوي — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 يدوي — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### يدوي

انسخ الملفات إلى `~/.claude/`:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← نواة المُنسّق
│   └── 📁 references/
│       ├── constrained-generation.md     ← قواعد القيود الأربعة
│       ├── project-profiles.md           ← مواصفات أنماط المشاريع الثمانية
│       └── quality-standards.md          ← معايير التقييم بخمسة أبعاد
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 مُولّد نظام التصميم
│   ├── wa-architect.md                   ← 📐 مُخطط بنية المُكوّنات
│   ├── wa-builder.md                     ← 🔨 مُنفّذ الكود
│   └── wa-reviewer.md                    ← 🔍 مُقيّم الجودة
└── 📁 commands/wa/
    ├── design.md                         ← خط الإنتاج الكامل
    ├── build.md                          ← البناء فقط
    ├── review.md                         ← المراجعة فقط
    └── profile.md                        ← مدير الأنماط
```

ثم ألحق محتويات `claude-md-snippet.md` بملف `~/.claude/CLAUDE.md` الخاص بك.

---

## 💡 الاستخدام

### مشروع جديد

```bash
# 1. حدد نوع مشروعك
/wa:profile landing

# 2. شغّل خط الإنتاج الكامل
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

خط الإنتاج سيقوم بـ:
1. 🎨 توليد نظام تصميم فريد و**التوقف لموافقتك** (لوحة الألوان، الخطوط، المفهوم)
2. 📐 تخطيط بنية المُكوّنات (هيكل الملفات، تدفق البيانات، ترتيب البناء)
3. 🔨 بناء جميع المُكوّنات باستخدام رموز التصميم
4. 🔍 تقييم البناء وإصلاح المشاكل تلقائياً إذا كانت النتيجة أقل من 80

### مشروع قائم — إضافة صفحة

```bash
# يستخدم ملف design-system/MASTER.md الموجود لديك
/wa:build dashboard analytics page with charts and stat cards
```

### مشروع قائم — تدقيق الجودة

```bash
# يعمل على أي كود، لا يحتاج نظام تصميم
/wa:review
```

### 📄 المُخرجات

| الملف | الغرض |
|-------|-------|
| `design-system/MASTER.md` | 🎨 خصائص CSS المُخصصة، المفهوم، الخطوط، رموز الحركة |
| `web-architect-plan.md` | 📐 شجرة المُكوّنات، مواصفات الملفات، ترتيب البناء |
| `web-architect-build-report.md` | 🔨 الملفات المُنشأة، استخدام الرموز، حالة البناء |
| `web-architect-review.md` | 🔍 مراجعة مُقيّمة بخمسة أبعاد مع النتائج |

---

## 🏛️ البنية المعمارية

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 المُنسّق (سياق ~5%)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ يُنشئ الوكلاء بالتتابع
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 تصمم │→│📐 بنية │→│🔨 بناء │→│🔍 مراج │  ← سياق نظيف لكل وكيل
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← ملفات على القرص
```

**صفر تضخم في السياق**: المُنسّق لا يقرأ محتويات الملفات كاملة — فقط البيانات الوصفية (النتيجة، عدد الملفات). كل وكيل فرعي يحصل على سياق نظيف 100% مع الملفات التي يحتاجها فقط.

---

## 🔌 تكاملات اختيارية

Web Architect يتكامل مع مهارات Claude Code هذه **إذا كانت مُثبّتة لديك**. ليست مطلوبة — النظام يعمل بشكل مستقل.

| المهارة | يستخدمها | الغرض |
|---------|----------|-------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 المُصمّم | قاعدة بيانات توصيات التصميم |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 المُصمّم | قواعد مكافحة التصميم النمطي للذكاء الاصطناعي |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 المُهندس | مبادئ البنية النظيفة |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 المُهندس | أنماط تركيب React |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 البنّاء | تحسين الأداء |

---

## 🔧 التوسيع

**➕ إضافة نمط مشروع** — ألحقه بملف `references/project-profiles.md`. لا حاجة لتغيير الكود.

**➕ إضافة بُعد جودة** — عدّل `references/quality-standards.md`. حدّث الأوزان (يجب أن يكون المجموع 100%).

**➕ تخصيص القيود** — عدّل `references/constrained-generation.md`. أضف ثنائيات خطوط، أنواع تناسق، أو أنماط حركة.

---

## 🤝 المساهمة

وجدت خطأ؟ تريد إضافة نمط مشروع؟ طلبات الدمج مرحّب بها.

- **المشاكل**: أبلغ عن الأخطاء أو اطلب ميزات جديدة
- **طلبات الدمج**: انسخ المستودع ← أنشئ فرع ← عدّل ← أرسل طلب دمج
- **النقاشات**: شارك مخرجات نظام التصميم الخاص بك!

---

## 📄 الرخصة

MIT — استخدمه، انسخه، أطلقه.

---

<p align="center">
  <b>صُنع للمطوّرين الذين سئموا من مواقع الذكاء الاصطناعي التي تبدو كلها متشابهة.</b>
  <br/>
  <sub>⭐ ضع نجمة لهذا المستودع إذا أنقذك من تركيبة Inter + تدرج أزرق أخرى</sub>
</p>
