<p align="center">
  🌍 <a href="README.md">English</a> | <a href="README.zh-CN.md">中文</a> | <a href="README.ja.md">日本語</a> | <a href="README.ko.md">한국어</a> | <a href="README.es.md">Español</a> | <a href="README.pt-BR.md">Português</a> | <a href="README.he.md">עברית</a> | <b>🇮🇳 हिन्दी</b> | <a href="README.tr.md">Türkçe</a> | <a href="README.ru.md">Русский</a> | <a href="README.fr.md">Français</a> | <a href="README.de.md">Deutsch</a> | <a href="README.ar.md">العربية</a>
</p>

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

# 🏗️ Web Architect — AI एजेंट स्किल

> **एक कमांड। चार एजेंट। शून्य जेनेरिक आउटपुट।**

AI कोडिंग एजेंट्स के लिए एक 4-एजेंट ऑर्केस्ट्रेटर स्किल जो किसी भी वेब प्रोजेक्ट के लिए एक पूर्ण **डिज़ाइन-से-कोड पाइपलाइन** चलाती है। एक कमांड से एक अद्वितीय डिज़ाइन सिस्टम जनरेट होता है, आर्किटेक्चर प्लान होता है, कोड बनता है, और गुणवत्ता की समीक्षा होती है — सभी ऐसी बाध्यताओं के साथ जो "AI-जनित" लुक को रोकती हैं।

**Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** · और [15+ अन्य एजेंट्स](https://skills.sh) के साथ काम करता है

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design homepage with hero, pricing table, and testimonials
```

---

## 😤 समस्या

हर AI-जनित वेबसाइट एक जैसी दिखती है: Inter फॉन्ट, नीला-बैंगनी ग्रेडिएंट, सेंटर्ड कार्ड ग्रिड, जेनेरिक स्पेसिंग। Claude Code स्किल्स अलग-अलग काम करती हैं — आपको डिज़ाइन स्किल्स, आर्किटेक्चर स्किल्स, और रिव्यू स्किल्स को हर प्रोजेक्ट के लिए मैन्युअली जोड़ना पड़ता है। गुणवत्ता अस्थिर रहती है। कई स्किल्स लोड होने पर कॉन्टेक्स्ट विंडो भर जाती है।

## ✨ समाधान

`/wa:design` **4 विशेषज्ञ सब-एजेंट्स** को एक पूर्ण पाइपलाइन में संचालित करता है:

```
🎨 डिज़ाइनर → 🚦 डिज़ाइन गेट (आप स्वीकृत करें) → 📐 आर्किटेक्ट → 🔨 बिल्डर → 🔍 रिव्यूअर → 🔄 फ़िक्स लूप
```

हर एजेंट **फ़्रेश कॉन्टेक्स्ट** (~5% ऑर्केस्ट्रेटर ओवरहेड) में चलता है। डेटा डिस्क पर फ़ाइलों के माध्यम से प्रवाहित होता है। सिस्टम समय के साथ **आपकी फ़ीडबैक से सीखता** है।

---

## 🧬 यह कैसे अलग है

### 🎯 बाध्य जनरेशन

"इसे मॉडर्न बनाओ" कहने के बजाय, डिज़ाइनर **4 बाध्यता परतें** लागू करता है:

| परत | क्या करती है | बाध्यता उदाहरण |
|------|-------------|----------------|
| 💡 **अवधारणा** | प्रोजेक्ट के उद्देश्य से डिज़ाइन रूपक चुनता है | पिछले 3 समान-प्रकार के प्रोजेक्ट्स से भिन्न होना चाहिए |
| 🎨 **रंग** | HSL सामंजस्य एल्गोरिदम (पूरक/समरूप/त्रिक/विभाजित-पूरक) | हर टेक्स्ट/बैकग्राउंड जोड़ी पर WCAG 4.5:1। शुद्ध #000/#fff नहीं |
| ✏️ **टाइपोग्राफ़ी** | सिद्ध फॉन्ट पेयरिंग श्रेणियाँ | केवल Google Fonts। **प्रतिबंधित: Inter, Roboto, Arial** |
| 🎬 **मोशन** | रेंज के साथ टाइमिंग टोकन सिस्टम | डिफ़ॉल्ट रूप से केवल CSS। `prefers-reduced-motion` आवश्यक |

### 📊 5-आयाम गुणवत्ता स्कोरिंग

रिव्यूअर हर बिल्ड को **0-100 भारित स्केल** पर स्कोर करता है:

| आयाम | भार | क्या जाँचता है |
|-------|------|----------------|
| 🎨 डिज़ाइन फ़िडेलिटी | 30% | टोकन उपयोग, कोई हार्डकोडेड रंग नहीं, अवधारणा प्रतिबिंबित |
| ♿ अभिगम्यता | 25% | WCAG कंट्रास्ट, फ़ोकस स्टेट्स, ARIA, कीबोर्ड नेविगेशन |
| ⚡ प्रदर्शन | 20% | सर्वर कम्पोनेंट्स, कोड स्प्लिटिंग, इमेज ऑप्टिमाइज़ेशन |
| 🧹 कोड गुणवत्ता | 15% | TypeScript (कोई `any` नहीं), <200 लाइन कम्पोनेंट्स |
| 📐 आर्किटेक्चर | 10% | प्लान अनुपालन, RTL/i18n |

**स्कोर < 80?** बिल्डर गंभीर समस्याओं को स्वचालित रूप से ठीक करता है (अधिकतम 2 राउंड)। 🔄

### 🗂️ 8 प्रोजेक्ट प्रोफ़ाइल

हर प्रोफ़ाइल लेआउट पैटर्न, कम्पोनेंट प्राथमिकताएँ, प्रदर्शन लक्ष्य, और डिज़ाइन ज़ोर निर्धारित करती है:

| प्रोफ़ाइल | सबसे उपयुक्त |
|-----------|-------------|
| 🚀 `landing` | मार्केटिंग पेज, वन-पेजर्स, लॉन्च साइट्स |
| 💼 `saas` | SaaS मार्केटिंग + ऐप शेल |
| 📊 `dashboard` | एडमिन पैनल, एनालिटिक्स, मेट्रिक्स |
| 🛒 `ecommerce` | स्टोर्स, प्रोडक्ट कैटलॉग, चेकआउट |
| 📇 `crm` | संपर्क प्रबंधन, डील पाइपलाइन्स |
| 🖼️ `portfolio` | क्रिएटिव शोकेस, गैलरीज़ |
| 📝 `blog` | कंटेंट साइट्स, लेख, संपादकीय |
| 🖥️ `desktop` | Electron ऐप्स, नेटिव-फ़ीलिंग टूल्स |

### 🧠 स्व-शिक्षण

हर रन के बाद, सिस्टम निकालता है **क्या काम किया / क्या विफल हुआ / क्या बदलना है**। डिज़ाइन गेट पर उपयोगकर्ता के ओवरराइड्स (रंग बदलना, अलग फॉन्ट चुनना) को **सर्वोच्च प्राथमिकता** मिलती है। सीख प्रति-प्रोजेक्ट सहेजी जाती है और भविष्य के रन में लोड होती है — जितना अधिक उपयोग करेंगे, उतना बेहतर होता जाएगा।

---

## 🚀 कमांड्स

| कमांड | विवरण |
|--------|--------|
| `/wa:design [desc]` | 🎨 पूर्ण पाइपलाइन: डिज़ाइन → आर्किटेक्चर → बिल्ड → रिव्यू |
| `/wa:build [desc]` | 🔨 मौजूदा डिज़ाइन सिस्टम से बिल्ड (डिज़ाइन चरण छोड़ें) |
| `/wa:review` | 🔍 मौजूदा कोड की गुणवत्ता मानकों के विरुद्ध समीक्षा |
| `/wa:profile [type]` | 🗂️ प्रोजेक्ट प्रकार सेट/देखें |

---

## 📦 इंस्टॉलेशन

### ⚡ यूनिवर्सल (आपके एजेंट को स्वचालित पहचानता है)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 प्रति-एजेंट इंस्टॉल

| एजेंट | कमांड |
|--------|--------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 मैन्युअल — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 मैन्युअल — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### मैन्युअल

फ़ाइलें `~/.claude/` में कॉपी करें:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← ऑर्केस्ट्रेटर कोर
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4-परत बाध्यता नियम
│       ├── project-profiles.md           ← 8 प्रोजेक्ट प्रकार विनिर्देश
│       └── quality-standards.md          ← 5-आयाम स्कोरिंग रूब्रिक
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 डिज़ाइन सिस्टम जनरेटर
│   ├── wa-architect.md                   ← 📐 कम्पोनेंट आर्किटेक्चर प्लानर
│   ├── wa-builder.md                     ← 🔨 कोड इम्प्लीमेंटर
│   └── wa-reviewer.md                    ← 🔍 गुणवत्ता स्कोरर
└── 📁 commands/wa/
    ├── design.md                         ← पूर्ण पाइपलाइन
    ├── build.md                          ← केवल बिल्ड
    ├── review.md                         ← केवल रिव्यू
    └── profile.md                        ← प्रोफ़ाइल प्रबंधक
```

फिर `claude-md-snippet.md` की सामग्री को अपने `~/.claude/CLAUDE.md` में जोड़ें।

---

## 💡 उपयोग

### नया प्रोजेक्ट

```bash
# 1. अपना प्रोजेक्ट प्रकार सेट करें
/wa:profile landing

# 2. पूर्ण पाइपलाइन चलाएँ
/wa:design homepage with hero section, feature grid, pricing table, and testimonials
```

पाइपलाइन यह करेगी:
1. 🎨 एक अद्वितीय डिज़ाइन सिस्टम जनरेट करेगी और **आपकी स्वीकृति के लिए रुकेगी** (पैलेट, फॉन्ट्स, अवधारणा)
2. 📐 कम्पोनेंट आर्किटेक्चर की योजना बनाएगी (फ़ाइल संरचना, डेटा प्रवाह, बिल्ड क्रम)
3. 🔨 डिज़ाइन टोकन्स का उपयोग करके सभी कम्पोनेंट्स बनाएगी
4. 🔍 बिल्ड को स्कोर करेगी और स्कोर < 80 होने पर समस्याओं को स्वचालित रूप से ठीक करेगी

### मौजूदा प्रोजेक्ट — एक पेज जोड़ें

```bash
# आपके मौजूदा design-system/MASTER.md का उपयोग करता है
/wa:build dashboard analytics page with charts and stat cards
```

### मौजूदा प्रोजेक्ट — गुणवत्ता ऑडिट

```bash
# किसी भी कोड पर काम करता है, डिज़ाइन सिस्टम की आवश्यकता नहीं
/wa:review
```

### 📄 आउटपुट आर्टिफ़ैक्ट्स

| फ़ाइल | उद्देश्य |
|--------|---------|
| `design-system/MASTER.md` | 🎨 CSS कस्टम प्रॉपर्टीज़, अवधारणा, फॉन्ट्स, मोशन टोकन्स |
| `web-architect-plan.md` | 📐 कम्पोनेंट ट्री, फ़ाइल विनिर्देश, बिल्ड क्रम |
| `web-architect-build-report.md` | 🔨 बनाई गई फ़ाइलें, टोकन उपयोग, बिल्ड स्थिति |
| `web-architect-review.md` | 🔍 निष्कर्षों के साथ 5-आयाम स्कोर्ड रिव्यू |

---

## 🏛️ आर्किटेक्चर

```
┌──────────────────────────────┐
│   /wa:design command          │  ← 🧠 ऑर्केस्ट्रेटर (~5% कॉन्टेक्स्ट)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ क्रमिक रूप से एजेंट्स स्पॉन करता है
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 डिज़ा│→│📐 आर्क │→│🔨 बिल्ड│→│🔍 रिव्यू│  ← हर एक के लिए फ़्रेश कॉन्टेक्स्ट
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   code files  review.md  ← डिस्क पर फ़ाइलें
```

**शून्य कॉन्टेक्स्ट ब्लोट**: ऑर्केस्ट्रेटर कभी पूरी फ़ाइल सामग्री नहीं पढ़ता — केवल मेटाडेटा (स्कोर, फ़ाइल संख्या)। हर सब-एजेंट को केवल आवश्यक फ़ाइलों के साथ 100% फ़्रेश कॉन्टेक्स्ट मिलता है।

---

## 🔌 वैकल्पिक एकीकरण

Web Architect इन Claude Code स्किल्स के साथ एकीकृत होता है **यदि वे आपके पास इंस्टॉल हैं**। ये आवश्यक नहीं हैं — सिस्टम स्वतंत्र रूप से काम करता है।

| स्किल | उपयोगकर्ता | उद्देश्य |
|--------|------------|---------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 डिज़ाइनर | डिज़ाइन सिफ़ारिश डेटाबेस |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 डिज़ाइनर | एंटी-AI-स्लॉप डिज़ाइन नियम |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 आर्किटेक्ट | क्लीन आर्किटेक्चर सिद्धांत |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 आर्किटेक्ट | React कम्पोज़िशन पैटर्न |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 बिल्डर | प्रदर्शन ऑप्टिमाइज़ेशन |

---

## 🔧 विस्तार

**➕ एक प्रोजेक्ट प्रोफ़ाइल जोड़ें** — `references/project-profiles.md` में जोड़ें। कोई कोड परिवर्तन आवश्यक नहीं।

**➕ एक गुणवत्ता आयाम जोड़ें** — `references/quality-standards.md` संपादित करें। भार अपडेट करें (कुल 100% होना चाहिए)।

**➕ बाध्यताएँ अनुकूलित करें** — `references/constrained-generation.md` संपादित करें। फॉन्ट पेयरिंग, हार्मनी प्रकार, या मोशन पैटर्न जोड़ें।

---

## 🤝 योगदान

कोई बग मिला? कोई प्रोफ़ाइल जोड़ना चाहते हैं? PR का स्वागत है।

- **Issues**: बग रिपोर्ट करें या फ़ीचर अनुरोध करें
- **PRs**: Fork → branch → बदलाव → PR
- **Discussions**: अपने डिज़ाइन सिस्टम आउटपुट साझा करें!

---

## 📄 लाइसेंस

MIT — इसे उपयोग करें, फ़ॉर्क करें, शिप करें।

---

<p align="center">
  <b>उन डेवलपर्स के लिए बनाया गया जो हर AI वेबसाइट के एक जैसे दिखने से थक चुके हैं।</b>
  <br/>
  <sub>⭐ अगर इसने आपको एक और Inter + नीले ग्रेडिएंट कॉम्बो से बचाया तो इस रेपो को स्टार करें</sub>
</p>
