🌍 [English](README.md) | [中文](README.zh-CN.md) | [日本語](README.ja.md) | [한국어](README.ko.md) | [Español](README.es.md) | [Português](README.pt-BR.md) | [עברית](README.he.md) | [हिन्दी](README.hi.md) | **🇹🇷 Türkçe** | [Русский](README.ru.md) | [Français](README.fr.md) | [Deutsch](README.de.md) | [العربية](README.ar.md)

<p align="center">
  <img src="https://img.shields.io/badge/Claude_Code-Skill-blueviolet?style=for-the-badge" alt="Claude Code" />
  <img src="https://img.shields.io/badge/Cursor-Compatible-blue?style=for-the-badge" alt="Cursor" />
  <img src="https://img.shields.io/badge/Amp-Compatible-teal?style=for-the-badge" alt="Amp" />
  <img src="https://img.shields.io/badge/Codex_CLI-Compatible-black?style=for-the-badge" alt="Codex CLI" />
  <img src="https://img.shields.io/badge/Gemini_CLI-Compatible-yellow?style=for-the-badge" alt="Gemini CLI" />
  <br/>
  <img src="https://img.shields.io/badge/Agents-4_Subagents-orange?style=for-the-badge" alt="4 Alt Ajan" />
  <img src="https://img.shields.io/badge/Profiles-8_Project_Types-green?style=for-the-badge" alt="8 Profil" />
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="MIT Lisansı" />
</p>

# 🏗️ Web Architect — AI Ajan Becerisi

> **Tek komut. Dört ajan. Sıfır sıradan çıktı.**

Herhangi bir web projesi için eksiksiz bir **tasarımdan koda** hattı yürüten, AI kodlama ajanlarına yönelik 4 ajanlı orkestratör becerisi. Tek bir komutla benzersiz bir tasarım sistemi oluşturur, mimariyi planlar, kodu yazar ve kaliteyi denetler — "yapay zeka yapımı" görünümünü engelleyen zorunlu kısıtlamalarla.

**Claude Code** · **Cursor** · **Amp** · **Codex CLI** · **Gemini CLI** · **GitHub Copilot** · **Windsurf** ve [15+ ajan](https://skills.sh) ile uyumludur

```bash
npx skills add choppawave-beep/web-architect
```

```
/wa:design ana sayfa: hero, fiyatlandırma tablosu ve referanslar bölümüyle
```

---

## 😤 Sorun

Yapay zeka ile oluşturulan her web sitesi aynı görünüyor: Inter yazı tipi, mavi-mor gradyan, ortalanmış kart ızgarası, sıradan boşluklar. Claude Code becerileri birbirinden kopuk çalışır — tasarım, mimari ve inceleme becerilerini her proje için elle birbirine bağlarsınız. Kalite tutarsızdır. Birden fazla beceri yüklendiğinde bağlam penceresi şişer.

## ✨ Çözüm

`/wa:design` komutu **4 uzmanlaşmış alt ajanı** eksiksiz bir hat boyunca yönetir:

```
🎨 Tasarımcı → 🚦 Tasarım Kapısı (siz onaylarsınız) → 📐 Mimar → 🔨 İnşaatçı → 🔍 İncelemeci → 🔄 Düzeltme Döngüsü
```

Her ajan **temiz bağlamda** çalışır (~%5 orkestratör yükü). Veriler diskteki dosyalar aracılığıyla aktarılır. Sistem zaman içinde **geri bildirimlerinizden öğrenir**.

---

## 🧬 Farkı Ne?

### 🎯 Kısıtlı Üretim

"Modern görünsün" demek yerine, Tasarımcı **4 kısıtlama katmanı** uygular:

| Katman | Ne Yapar | Örnek Kısıtlama |
|--------|----------|-----------------|
| 💡 **Konsept** | Proje amacından bir tasarım metaforu seçer | Son 3 aynı türdeki projeden farklı olmalı |
| 🎨 **Renk** | HSL uyum algoritması (tamamlayıcı/benzer/üçlü/bölünmüş-tamamlayıcı) | Her metin/arka plan çiftinde WCAG 4.5:1. Saf #000/#fff yasak |
| ✏️ **Tipografi** | Kanıtlanmış yazı tipi eşleştirme kategorileri | Yalnızca Google Fonts. **Yasaklı: Inter, Roboto, Arial** |
| 🎬 **Hareket** | Aralıklı zamanlama tokeni sistemi | Varsayılan olarak yalnızca CSS. `prefers-reduced-motion` zorunlu |

### 📊 5 Boyutlu Kalite Puanlaması

İncelemeci her yapıyı **0-100 ağırlıklı ölçekte** puanlar:

| Boyut | Ağırlık | Neyi Kontrol Eder |
|-------|---------|-------------------|
| 🎨 Tasarım Uyumu | %30 | Token kullanımı, sabit kodlanmış renk yok, konseptin yansıması |
| ♿ Erişilebilirlik | %25 | WCAG kontrast, odak durumları, ARIA, klavye gezinimi |
| ⚡ Performans | %20 | Sunucu bileşenleri, kod bölme, görüntü optimizasyonu |
| 🧹 Kod Kalitesi | %15 | TypeScript (`any` yok), <200 satır bileşenler |
| 📐 Mimari | %10 | Plan uyumu, RTL/i18n |

**Puan < 80 mi?** İnşaatçı kritik sorunları otomatik düzeltir (en fazla 2 tur). 🔄

### 🗂️ 8 Proje Profili

Her profil düzen kalıplarını, bileşen önceliklerini, performans hedeflerini ve tasarım vurgusunu tanımlar:

| Profil | En Uygun Kullanım |
|--------|-------------------|
| 🚀 `landing` | Pazarlama sayfaları, tek sayfalık siteler, lansman sayfaları |
| 💼 `saas` | SaaS pazarlama + uygulama iskeleti |
| 📊 `dashboard` | Yönetim panelleri, analitik, metrikler |
| 🛒 `ecommerce` | Mağazalar, ürün katalogları, ödeme sayfaları |
| 📇 `crm` | Kişi yönetimi, satış hattı takibi |
| 🖼️ `portfolio` | Yaratıcı vitrini, galeriler |
| 📝 `blog` | İçerik siteleri, makaleler, editöryel |
| 🖥️ `desktop` | Electron uygulamaları, yerel hissiyatlı araçlar |

### 🧠 Kendi Kendine Öğrenme

Her çalıştırmadan sonra sistem **neyin işe yaradığını / neyin başarısız olduğunu / nelerin değişmesi gerektiğini** çıkarır. Tasarım kapısındaki kullanıcı müdahaleleri (renk değiştirme, farklı bir yazı tipi seçme) **en yüksek önceliğe** sahiptir. Öğrenilenler proje bazında kaydedilir ve gelecekteki çalıştırmalara aktarılır — ne kadar çok kullanırsanız o kadar iyi olur.

---

## 🚀 Komutlar

| Komut | Açıklama |
|-------|----------|
| `/wa:design [açıklama]` | 🎨 Tam hat: tasarım → mimari → inşa → inceleme |
| `/wa:build [açıklama]` | 🔨 Mevcut tasarım sistemiyle inşa (tasarım aşamasını atla) |
| `/wa:review` | 🔍 Mevcut kodu kalite standartlarına göre incele |
| `/wa:profile [tür]` | 🗂️ Proje türünü ayarla/görüntüle |

---

## 📦 Kurulum

### ⚡ Evrensel (ajanınızı otomatik algılar)

```bash
npx skills add choppawave-beep/web-architect
```

### 🎯 Ajan Bazlı Kurulum

| Ajan | Komut |
|------|-------|
| 🟣 **Claude Code** | `npx skills add choppawave-beep/web-architect -a claude-code` |
| 🔵 **Cursor** | `npx skills add choppawave-beep/web-architect -a cursor` |
| ⚡ **Amp** | `npx skills add choppawave-beep/web-architect -a amp` |
| ⬛ **Codex CLI** | `npx skills add choppawave-beep/web-architect -a codex` |
| 🟡 **Gemini CLI** | `npx skills add choppawave-beep/web-architect -a gemini-cli` |
| 🟢 **GitHub Copilot** | `npx skills add choppawave-beep/web-architect -a github-copilot` |
| 🌊 **Windsurf** | `npx skills add choppawave-beep/web-architect -a windsurf` |

### 🔧 Manuel — Bash

```bash
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
chmod +x install.sh
./install.sh
```

### 🔧 Manuel — PowerShell

```powershell
git clone https://github.com/choppawave-beep/web-architect.git
cd web-architect
.\install.ps1
```

### Manuel

Dosyaları `~/.claude/` dizinine kopyalayın:

```
~/.claude/
├── 📁 skills/web-architect/
│   ├── SKILL.md                          ← Orkestratör çekirdeği
│   └── 📁 references/
│       ├── constrained-generation.md     ← 4 katmanlı kısıtlama kuralları
│       ├── project-profiles.md           ← 8 proje türü özellikleri
│       └── quality-standards.md          ← 5 boyutlu puanlama kriterleri
├── 📁 agents/
│   ├── wa-designer.md                    ← 🎨 Tasarım sistemi üretici
│   ├── wa-architect.md                   ← 📐 Bileşen mimari planlayıcı
│   ├── wa-builder.md                     ← 🔨 Kod uygulayıcı
│   └── wa-reviewer.md                    ← 🔍 Kalite puanlayıcı
└── 📁 commands/wa/
    ├── design.md                         ← Tam hat
    ├── build.md                          ← Yalnızca inşa
    ├── review.md                         ← Yalnızca inceleme
    └── profile.md                        ← Profil yöneticisi
```

Ardından `claude-md-snippet.md` dosyasının içeriğini `~/.claude/CLAUDE.md` dosyanıza ekleyin.

---

## 💡 Kullanım

### Yeni proje

```bash
# 1. Proje türünüzü ayarlayın
/wa:profile landing

# 2. Tam hattı çalıştırın
/wa:design ana sayfa: hero bölümü, özellik ızgarası, fiyatlandırma tablosu ve referanslar
```

Hat şunları yapacaktır:
1. 🎨 Benzersiz bir tasarım sistemi oluşturur ve **onayınız için durur** (palet, yazı tipleri, konsept)
2. 📐 Bileşen mimarisini planlar (dosya yapısı, veri akışları, inşa sırası)
3. 🔨 Tasarım tokenleri kullanarak tüm bileşenleri inşa eder
4. 🔍 Yapıyı puanlar ve puan < 80 ise sorunları otomatik düzeltir

### Mevcut proje — sayfa ekleme

```bash
# Mevcut design-system/MASTER.md dosyanızı kullanır
/wa:build gösterge paneli analitik sayfası: grafikler ve istatistik kartları
```

### Mevcut proje — kalite denetimi

```bash
# Herhangi bir kodda çalışır, tasarım sistemi gerekmez
/wa:review
```

### 📄 Çıktı Dosyaları

| Dosya | Amacı |
|-------|-------|
| `design-system/MASTER.md` | 🎨 CSS özel özellikleri, konsept, yazı tipleri, hareket tokenleri |
| `web-architect-plan.md` | 📐 Bileşen ağacı, dosya özellikleri, inşa sırası |
| `web-architect-build-report.md` | 🔨 Oluşturulan dosyalar, token kullanımı, inşa durumu |
| `web-architect-review.md` | 🔍 Bulgularla birlikte 5 boyutlu puanlı inceleme |

---

## 🏛️ Mimari

```
┌──────────────────────────────┐
│   /wa:design komutu           │  ← 🧠 Orkestratör (~%5 bağlam)
│   (commands/wa/design.md)     │
└───────────┬──────────────────┘
            │ ajanları sırayla başlatır
     ┌──────┼──────────┬──────────────┐
     ▼      ▼          ▼              ▼
┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐
│🎨 Tsr  │→│📐 Mim  │→│🔨 İnşa │→│🔍 İncl │  ← Her biri temiz bağlamda
└────┬───┘ └────┬───┘ └────┬───┘ └────┬───┘
     │          │          │          │
     ▼          ▼          ▼          ▼
  MASTER.md   plan.md   kod dosyaları review.md  ← Diskteki dosyalar
```

**Sıfır bağlam şişmesi**: Orkestratör dosya içeriklerini asla tam okumaz — yalnızca meta verileri (puan, dosya sayısı) okur. Her alt ajan yalnızca ihtiyaç duyduğu dosyalarla %100 temiz bağlam alır.

---

## 🔌 İsteğe Bağlı Entegrasyonlar

Web Architect, **kurulu olmaları durumunda** bu Claude Code becerileriyle entegre olur. Zorunlu değildir — sistem bağımsız çalışır.

| Beceri | Kullanan | Amacı |
|--------|----------|-------|
| [ui-ux-pro-max](https://github.com/nicepkg/claude-code-skills) | 🎨 Tasarımcı | Tasarım önerileri veritabanı |
| [frontend-design](https://github.com/nicepkg/claude-code-skills) | 🎨 Tasarımcı | Yapay zeka klişelerini engelleyen tasarım kuralları |
| [software-architecture](https://github.com/nicepkg/claude-code-skills) | 📐 Mimar | Temiz mimari ilkeleri |
| [vercel-composition-patterns](https://github.com/nicepkg/claude-code-skills) | 📐 Mimar | React bileşim kalıpları |
| [vercel-react-best-practices](https://github.com/nicepkg/claude-code-skills) | 🔨 İnşaatçı | Performans optimizasyonu |

---

## 🔧 Genişletme

**➕ Proje profili ekleme** — `references/project-profiles.md` dosyasına ekleyin. Kod değişikliği gerekmez.

**➕ Kalite boyutu ekleme** — `references/quality-standards.md` dosyasını düzenleyin. Ağırlıkları güncelleyin (toplamı %100 olmalı).

**➕ Kısıtlamaları özelleştirme** — `references/constrained-generation.md` dosyasını düzenleyin. Yazı tipi eşleştirmeleri, uyum türleri veya hareket kalıpları ekleyin.

---

## 🤝 Katkıda Bulunma

Bir hata mı buldunuz? Profil mi eklemek istiyorsunuz? PR'lar memnuniyetle karşılanır.

- **Sorunlar**: Hata bildirin veya özellik talep edin
- **PR'lar**: Fork → dal → değişiklik → PR
- **Tartışmalar**: Tasarım sistemi çıktılarınızı paylaşın!

---

## 📄 Lisans

MIT — kullanın, forklayın, yayınlayın.

---

<p align="center">
  <b>Hep aynı görünen yapay zeka web sitelerinden bıkmış geliştiriciler için tasarlandı.</b>
  <br/>
  <sub>⭐ Sizi bir Inter + mavi gradyan kombinasyonundan daha kurtardıysa bu repoya yıldız verin</sub>
</p>
