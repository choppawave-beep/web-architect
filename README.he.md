🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português](README.pt-BR.md) | **🇮🇱 עברית** | [हिन्दी](README.hi.md) | [Türkçe](README.tr.md) | [Русский](README.ru.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 תת-סוכנים" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 פרופילים" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="רישיון MIT" />
</p>

# 🏗️ Web Architect — מיומנות לסוכני AI

> **פקודה אחת. ארבעה סוכנים. אפס תוצרים גנריים.**

מיומנות תזמור עם 4 סוכנים לסוכני קידוד AI שמריצה צינור עבודה מלא מ**עיצוב לקוד** עבור כל פרויקט ווב. פקודה אחת מייצרת מערכת עיצוב ייחודית, מתכננת את הארכיטקטורה, בונה את הקוד ובודקת איכות — הכל עם אילוצים מובנים שמונעים את ה"מראה שנוצר על ידי AI".

עובד עם **Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · ועם [15+ סוכנים נוספים](https://skills.sh)

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design דף הבית עם hero, טבלת תמחור ועדויות לקוחות
```

---

## 😤 הבעיה

כל אתר שנוצר על ידי AI נראה אותו דבר: פונט Inter, גרדיאנט כחול-סגול, רשת כרטיסים ממורכזת, ריווח גנרי. מיומנויות Claude Code עובדות במבודד — אתה מחבר ידנית מיומנויות עיצוב, מיומנויות ארכיטקטורה ומיומנויות בדיקה לכל פרויקט. האיכות משתנה. חלון ההקשר מתנפח כשמספר מיומנויות נטענות.

## ✨ הפתרון

`/wa:design` מנהל **4 תת-סוכנים מתמחים** דרך צינור עבודה מלא:

```
🎨 מעצב → 🚦 שער עיצוב (אתה מאשר) → 📐 ארכיטקט → 🔨 בנאי → 🔍 סוקר → 🔄 לולאת תיקון
```

כל סוכן רץ ב**הקשר חדש** (~5% עומס תזמור). נתונים זורמים דרך קבצים בדיסק. המערכת **לומדת מהמשוב שלך** לאורך זמן.

---

## 🧬 מה מייחד אותה

### 🎯 יצירה מאולצת

במקום "תעשה שזה ייראה מודרני", המעצב אוכף **4 שכבות אילוצים**:

| שכבה | מה היא עושה | דוגמה לאילוץ |
|-------|-------------|---------------|
| 💡 **קונספט** | בוחר מטאפורת עיצוב ממטרת הפרויקט | חייב להיות שונה מ-3 הפרויקטים האחרונים מאותו סוג |
| 🎨 **צבע** | אלגוריתם הרמוניה HSL (משלים/אנלוגי/טריאדי/פיצול-משלים) | WCAG 4.5:1 על כל זוג טקסט/רקע. ללא #000/#fff טהור |
| ✏️ **טיפוגרפיה** | קטגוריות זיווג גופנים מוכחות | Google Fonts בלבד. **אסורים: Inter, Roboto, Arial** |
| 🎬 **תנועה** | מערכת טוקני תזמון עם טווחים | CSS בלבד כברירת מחדל. `prefers-reduced-motion` נדרש |

### 📊 ציון איכות ב-5 ממדים

הסוקר מדרג כל בנייה בסולם **0-100 משוקלל**:

| ממד | משקל | מה הוא בודק |
|-----|------|-------------|
| 🎨 נאמנות לעיצוב | 30% | שימוש בטוקנים, ללא צבעים קשיחים, קונספט משתקף |
| ♿ נגישות | 25% | ניגודיות WCAG, מצבי פוקוס, ARIA, ניווט מקלדת |
| ⚡ ביצועים | 20% | Server components, פיצול קוד, אופטימיזציית תמונות |
| 🧹 איכות קוד | 15% | TypeScript (ללא `any`), רכיבים מתחת ל-200 שורות |
| 📐 ארכיטקטורה | 10% | עמידה בתוכנית, RTL/i18n |

**ציון < 80?** הבנאי מתקן אוטומטית בעיות קריטיות (עד 2 סבבים). 🔄

### 🗂️ 8 פרופילי פרויקט

כל פרופיל מגדיר דפוסי פריסה, עדיפויות רכיבים, יעדי ביצועים ודגש עיצובי:

| פרופיל | מתאים בשביל |
|---------|-------------|
| 🚀 `landing` | דפי שיווק, דפים בודדים, אתרי השקה |
| 💼 `saas` | שיווק SaaS + מעטפת אפליקציה |
| 📊 `dashboard` | פאנלים ניהוליים, אנליטיקות, מדדים |
| 🛒 `ecommerce` | חנויות, קטלוגי מוצרים, צ'קאאוט |
| 📇 `crm` | ניהול אנשי קשר, צינורות עסקאות |
| 🖼️ `portfolio` | תצוגות יצירתיות, גלריות |
| 📝 `blog` | אתרי תוכן, מאמרים, עריכה |
| 🖥️ `desktop` | אפליקציות Electron, כלים בתחושה מקומית |

### 🧠 למידה עצמית

אחרי כל הרצה, המערכת מחלצת **מה עבד / מה נכשל / מה לשנות**. דריסות משתמש בשער העיצוב (שינוי צבע, בחירת גופן אחר) מקבלות **עדיפות עליונה**. תובנות נשמרות לפי פרויקט ונטענות בהרצות עתידיות — המערכת משתפרת ככל שמשתמשים בה יותר.

---

## 🚀 פקודות

| פקודה | תיאור |
|-------|-------|
| `/wa:design [desc]` | 🎨 צינור מלא: עיצוב → ארכיטקטורה → בנייה → סקירה |
| `/wa:build [desc]` | 🔨 בנייה עם מערכת עיצוב קיימת (דילוג על שלב העיצוב) |
| `/wa:review` | 🔍 סקירת קוד קיים מול תקני איכות |
| `/wa:profile [type]` | 🗂️ הגדרה/צפייה בסוג הפרויקט |

---

## 📦 התקנה

### ⚡ אוניברסלית (זיהוי אוטומטי של הסוכן)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 התקנה לפי סוכן

| סוכן | פקודה |
|------|-------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 ידני — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 ידני — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### ידני

העתק קבצים ל-`~/.claude/`:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← ליבת התזמור
│   └── 📁 references/
│       ├── constrained-generation.md     ← כללי 4 שכבות האילוצים
│       ├── project-profiles.md           ← מפרטי 8 סוגי הפרויקט
│       └── quality-standards.md          ← מחוון ציון 5 הממדים
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 מחולל מערכת עיצוב
│   ├── wa-architect.md                   ← 📐 מתכנן ארכיטקטורת רכיבים
│   ├── wa-builder.md                     ← 🔨 מיישם קוד
│   └── wa-reviewer.md                    ← 🔍 מדרג איכות
└── 📁 commands/wa/
    ├── design.md                         ← צינור מלא
    ├── build.md                          ← בנייה בלבד
    ├── review.md                         ← סקירה בלבד
    └── profile.md                        ← מנהל פרופילים
```

לאחר מכן הוסף את תוכן `claude-md-snippet.md` ל-`~/.claude/CLAUDE.md` שלך.

---

## 💡 שימוש

### פרויקט חדש

```bash
# 1. הגדר את סוג הפרויקט שלך
/wa:profile landing

# 2. הרץ את הצינור המלא
/wa:design דף הבית עם מקטע hero, רשת תכונות, טבלת תמחור ועדויות לקוחות
```

הצינור יבצע:
1. 🎨 יצירת מערכת עיצוב ייחודית ו**השהייה לאישורך** (פלטה, גופנים, קונספט)
2. 📐 תכנון ארכיטקטורת הרכיבים (מבנה קבצים, זרימת נתונים, סדר בנייה)
3. 🔨 בניית כל הרכיבים באמצעות טוקני עיצוב
4. 🔍 דירוג הבנייה ותיקון אוטומטי של בעיות אם הציון < 80

### פרויקט קיים — הוספת דף

```bash
# משתמש ב-design-system/MASTER.md הקיים שלך
/wa:build דף אנליטיקות בדשבורד עם תרשימים וכרטיסי סטטיסטיקה
```

### פרויקט קיים — ביקורת איכות

```bash
# עובד על כל קוד, ללא צורך במערכת עיצוב
/wa:review
```

### 📄 תוצרי פלט

| קובץ | מטרה |
|------|------|
| `design-system/MASTER.md` | 🎨 CSS custom properties, קונספט, גופנים, טוקני תנועה |
| `web-architect-plan.md` | 📐 עץ רכיבים, מפרטי קבצים, סדר בנייה |
| `web-architect-build-report.md` | 🔨 קבצים שנוצרו, שימוש בטוקנים, סטטוס בנייה |
| `web-architect-review.md` | 🔍 סקירה מדורגת ב-5 ממדים עם ממצאים |

---

## 🏛️ ארכיטקטורה

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 מתזמר (~5% הקשר)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ מפעיל סוכנים ברצף
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 עיצב│→│📐 ארכי │→│🔨 בנאי │→│🔍 סוקר │  ← הקשר חדש לכל אחד
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← קבצים בדיסק
```

**אפס ניפוח הקשר**: המתזמר אף פעם לא קורא תוכן קבצים מלא — רק מטא-נתונים (ציון, מספר קבצים). כל תת-סוכן מקבל 100% הקשר חדש עם רק הקבצים שהוא צריך.

---

## 🔌 אינטגרציות אופציונליות

Web Architect משתלב עם מיומנויות Claude Code אלה **אם הן מותקנות**. הן אינן נדרשות — המערכת עובדת באופן עצמאי.

| מיומנות | משמש את | מטרה |
|---------|---------|------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 מעצב | מאגר המלצות עיצוב |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 מעצב | כללים נגד עיצוב גנרי של AI |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 ארכיטקט | עקרונות ארכיטקטורה נקייה |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 ארכיטקט | דפוסי קומפוזיציה ב-React |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 בנאי | אופטימיזציית ביצועים |

---

## 🔧 הרחבה

**➕ הוספת פרופיל פרויקט** — הוסף ל-`references/project-profiles.md`. ללא שינויי קוד.

**➕ הוספת ממד איכות** — ערוך את `references/quality-standards.md`. עדכן משקלות (חייבים להסתכם ב-100%).

**➕ התאמת אילוצים** — ערוך את `references/constrained-generation.md`. הוסף זיווגי גופנים, סוגי הרמוניה או דפוסי תנועה.

---

## 🤝 תרומה

מצאת באג? רוצה להוסיף פרופיל? PRs מתקבלים בברכה.

- **Issues**: דווח על באגים או בקש תכונות
- **PRs**: Fork → branch → שינוי → PR
- **דיונים**: שתף את תוצרי מערכת העיצוב שלך!

---

## 📄 רישיון

MIT — תשתמש, תעשה fork, תעלה לפרודקשן.

---

<p align="center">
  <b>נבנה עבור מפתחים שנמאס להם מאתרי AI שנראים כולם אותו דבר.</b>
  <br/>
  <sub>⭐ תן כוכב לריפו הזה אם הוא חסך לך עוד קומבו של Inter + גרדיאנט כחול</sub>
</p>
