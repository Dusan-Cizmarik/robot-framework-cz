# 🤖 Robot Framework CZ - První české tutoriály

Vítejte u první české série tutoriálů o Robot Framework a moderní automatizaci testování!

[![YouTube Channel](https://img.shields.io/badge/YouTube-Robot_Framework_CZ-red?logo=youtube)](https://youtube.com/@RobotFrameworkCZ)
[![Robot Framework](https://img.shields.io/badge/Robot_Framework-Browser_Library-00C851?logo=robot-framework)]()

## 📺 O Sérii

Tato série videí vás naučí moderní UI automatizaci pomocí **Robot Framework** a **Browser Library** (Playwright). Od úplného začátku až po pokročilé techniky.

**Cílová skupina:** Manuální testeři přecházející na automatizaci, začátečníci v test automation

**Jazyk:** České video + anglický kód (best practice)

## 🎥 Video Série

### Fáze 1: Základy (Veřejné weby)

| # | Video | Téma | Kód | Status |
|---|-------|------|-----|--------|
| 1 | [První automatizovaný test] https://www.youtube.com/watch?v=Ohm8ULxYkJU | Login test, Browser Library setup | [📁](examples/video_1/) | ✅ |
| 2 | TBA | Struktura Robot Framework projektu | - | 🔜 |
| 3 | TBA | Assertions a validace | - | 🔜 |
| 4 | TBA | Locator strategie | - | 🔜 |
| 5 | TBA | Browser actions | - | 🔜 |
| 6 | TBA | Proměnné a data | - | 🔜 |

### Fáze 2: Pokročilé (Vlastní aplikace)

| # | Video | Téma | Status |
|---|-------|------|--------|
| 7 | TBA | Page Object Model | 🔜 |
| 8 | TBA | Data-driven testing | 🔜 |
| 9 | TBA | API testing integration | 🔜 |
| 10 | TBA | Organizace testů | 🔜 |
| 11 | TBA | CI/CD integrace | 🔜 |
| 12 | TBA | Reporting (Allure) | 🔜 |

## 🚀 Quick Start

### Prerekvizity

- **Python 3.8+** ([stáhnout zde](https://www.python.org/downloads/))
- **VS Code** ([stáhnout zde](https://code.visualstudio.com/))

### Instalace (3 kroky)

```bash
# 1. Nainstaluj Robot Framework Browser Library
pip install robotframework-browser

# 2. Inicializuj Playwright browsers (Chrome, Firefox, WebKit)
rfbrowser init

# 3. Naklonuj tento repozitář
git clone https://github.com/Dusan-Cizmarik/robot-framework-cz.git
cd robot-framework-cz
```

### První Test (Video #1)

```bash
# Spusť první test
cd examples/video_1
robot prvni_test.robot
```

Otevře se Chrome, provede login test na [saucedemo.com](https://www.saucedemo.com), a zobrazí výsledky v `log.html`.

**Video tutoriál:** [Robot Framework CZ #1 - První automatizovaný test] https://www.youtube.com/watch?v=Ohm8ULxYkJU

## 📚 Struktura Repozitáře

```
robot-framework-cz/
├── examples/           # Kód z každého videa
│   ├── video_1/       # První test (login)
│   ├── video_2/       # TBA
│   └── ...
├── homework/          # Domácí úkoly a submissions
│   ├── README.md      # Návod na odevzdání
│   └── submissions/   # Pull requesty od komunity
└── docs/              # Dodatečná dokumentace
    └── instalace.md   # Detailní instalační guide
```

## 💡 Domácí Úkoly

Každé video má domácí úkol pro procvičení. Můžete je submitovat jako Pull Request!

👉 **[Návod na odevzdání domácích úkolů](homework/README.md)**

**Video #1 úkol:** Změň username na `problem_user` a napiš do komentářů co se stane!

## 🔧 Užitečné Odkazy

### Oficiální Dokumentace
- [Robot Framework](https://robotframework.org/)
- [Browser Library](https://marketsquare.github.io/robotframework-browser/)
- [Playwright](https://playwright.dev/)

### Testovací Weby
- [Saucedemo](https://www.saucedemo.com) - Demo e-shop pro testování
- [The Internet](https://the-internet.herokuapp.com/) - Automatizační challenges

### Komunita
- [Robot Framework Slack](https://robotframework-slack-invite.herokuapp.com/)
- [Robot Framework Forum](https://forum.robotframework.org/)

## 🤝 Přispívání

Máte nápad na vylepšení? Našli jste chybu? Vytvořte Issue nebo Pull Request!

1. Fork tento repozitář
2. Vytvoř feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit změny (`git commit -m 'Add some AmazingFeature'`)
4. Push do branch (`git push origin feature/AmazingFeature`)
5. Otevři Pull Request

## 📧 Kontakt

**YouTube kanál:** [@RobotFrameworkCZ](https://youtube.com/@RobotFrameworkCZ)


## 📄 Licence

MIT License - kód je volně k použití, sdílení a úpravám.

---

**⭐ Pokud vám tento repozitář pomohl, dejte mu hvězdičku!**

**📺 Odebírejte kanál pro notifikace o nových videích!**

---

*První české Robot Framework tutoriály | Vytvořeno 2025*
