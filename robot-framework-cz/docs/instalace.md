# 🔧 Kompletní Instalační Průvodce

Detailní návod na instalaci Robot Framework a Browser Library pro všechny platformy.

## 📋 Obsah

1. [Python Instalace](#1-python-instalace)
2. [VS Code Setup](#2-vs-code-setup)
3. [Robot Framework Browser Library](#3-robot-framework-browser-library)
4. [Verifikace Instalace](#4-verifikace-instalace)
5. [Troubleshooting](#5-troubleshooting)

---

## 1. Python Instalace

Robot Framework vyžaduje **Python 3.8 nebo novější**.

### Windows

1. **Stáhnout Python**
   - Jdi na [python.org/downloads](https://www.python.org/downloads/)
   - Stáhni nejnovější Python 3.x verzi (např. 3.12.x)

2. **Spustit instalaci**
   - ✅ **DŮLEŽITÉ:** Zaškrtni **"Add Python to PATH"** (dole v instalátoru!)
   - Klikni "Install Now"
   - Počkej na dokončení

3. **Verifikace**
   ```cmd
   python --version
   # Mělo by vypsat: Python 3.12.x (nebo tvoje verze)

   pip --version
   # Mělo by vypsat: pip 24.x.x from ...
   ```

### macOS

1. **Homebrew metoda (Doporučeno)**
   ```bash
   # Nainstaluj Homebrew (pokud nemáš)
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

   # Nainstaluj Python
   brew install python@3.12
   ```

2. **Oficiální instalátor**
   - Stáhni z [python.org/downloads](https://www.python.org/downloads/)
   - Spusť .pkg soubor
   - Následuj průvodce

3. **Verifikace**
   ```bash
   python3 --version
   pip3 --version
   ```

### Linux (Ubuntu/Debian)

```bash
# Update package list
sudo apt update

# Install Python 3 and pip
sudo apt install python3 python3-pip

# Verify
python3 --version
pip3 --version
```

---

## 2. VS Code Setup

### Instalace VS Code

1. **Stáhnout**
   - [code.visualstudio.com](https://code.visualstudio.com/)
   - Vyber instalátor pro tvůj systém

2. **Nainstalovat**
   - Windows: Spusť .exe, zaškrtni "Add to PATH"
   - macOS: Rozbal .zip, přesuň do Applications
   - Linux: `sudo apt install code` nebo stáhni .deb

### Robot Framework Extension

1. **Otevři VS Code**
2. **Extensions panel** (Ctrl+Shift+X / Cmd+Shift+X)
3. **Vyhledej:** "Robot Framework RobotCode
4. **Klikni:** Install

**Extension features:**
- ✅ Syntax highlighting
- ✅ Auto-complete
- ✅ IntelliSense (návrhy keywordů)
- ✅ Debugger
- ✅ Test Runner

### Doporučené VS Code Extensions

- **Python** (Microsoft) - Python support
- **Error Lens** - Inline error highlights
- **Material Icon Theme** - Lepší ikony

---

## 3. Robot Framework Browser Library

### Krok 1: Instalace Python balíčku

```bash
# Windows (Command Prompt nebo PowerShell)
pip install robotframework-browser

# macOS/Linux
pip3 install robotframework-browser
```

**Co se stáhne:**
- `robotframework` (core framework)
- `robotframework-browser` (Playwright-based library)
- Dependencies (grpcio, typing-extensions, atd.)

**Čekání:** ~30-60 sekund (závisí na rychlosti internetu)

### Krok 2: Inicializace Playwright Browsers

```bash
# Windows
rfbrowser init

# macOS/Linux
python3 -m Browser.entry init
```

**Co se stane:**
- Stáhne Chromium (~150 MB)
- Stáhne Firefox (~80 MB)
- Stáhne WebKit (~60 MB)

**Čekání:** ~2-5 minut (první instalace)

**Output by měl obsahovat:**
```
✔ Chromium 123.0.6312.4 (playwright build v1105) downloaded to ...
✔ Firefox 121.0 (playwright build v1441) downloaded to ...
✔ Webkit 17.4 (playwright build v1967) downloaded to ...
```

### Instalace ve virtuálním prostředí (Doporučeno)

```bash
# 1. Vytvoř virtual environment
python -m venv venv

# 2. Aktivuj virtual environment
# Windows:
venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# 3. Nainstaluj Browser Library
pip install robotframework-browser
rfbrowser init

# 4. Verifikuj
robot --version
```

**Výhody venv:**
- ✅ Izolované dependencies
- ✅ Žádné konflikty s jinými projekty
- ✅ Snadné sdílení (requirements.txt)

---

## 4. Verifikace Instalace

### Test #1: Python & pip

```bash
# Windows
python --version   # Python 3.12.x
pip --version      # pip 24.x.x

# macOS/Linux
python3 --version
pip3 --version
```

### Test #2: Robot Framework

```bash
robot --version
# Output:
# Robot Framework 7.0 (Python 3.12.1 on win32)
```

### Test #3: Browser Library

```bash
# Vytvoř test soubor: test_install.robot
```

**test_install.robot:**
```robot
*** Settings ***
Library    Browser

*** Test Cases ***
Verifikační Test
    [Documentation]    Ověří že Browser Library funguje
    New Browser    chromium    headless=True
    New Page    https://www.google.com
    Get Title    ==    Google
    Close Browser
```

**Spusť test:**
```bash
robot test_install.robot
```

**Očekávaný výstup:**
```
==============================================================================
Test Install
==============================================================================
Verifikační Test :: Ověří že Browser Library funguje          | PASS |
------------------------------------------------------------------------------
Test Install                                                   | PASS |
1 test, 1 passed, 0 failed
==============================================================================
```

✅ **Pokud vidíš "PASS" - instalace je úspěšná!**

---

## 5. Troubleshooting

### Problém: "python is not recognized" (Windows)

**Řešení:**
1. Python není v PATH
2. Reinstaluj Python a zaškrtni **"Add Python to PATH"**
3. Nebo manuálně přidej do PATH:
   - Stiskni Win+R, napiš `sysdm.cpl`
   - Advanced → Environment Variables
   - V "System variables" najdi `Path`
   - Přidej: `C:\Users\TVOJE_JMENO\AppData\Local\Programs\Python\Python312`

### Problém: "rfbrowser: command not found"

**Řešení:**
```bash
# Zkus plnou cestu:
python -m Browser.entry init

# Nebo reinstaluj:
pip uninstall robotframework-browser
pip install robotframework-browser
```

### Problém: "Permission denied" (macOS/Linux)

**Řešení:**
```bash
# Použij --user flag
pip3 install --user robotframework-browser

# Nebo sudo (ne doporučeno)
sudo pip3 install robotframework-browser
```

### Problém: Browser Library funguje, ale testy failují

**Možné příčiny:**
1. **Firewall:** Blokuje Playwright download
   - Vypni firewall dočasně během `rfbrowser init`

2. **Antivirus:** Blokuje browser spuštění
   - Přidej exception pro Python a Playwright

3. **Staré verze:**
   ```bash
   pip install --upgrade robotframework-browser
   rfbrowser init
   ```

### Problém: Pomalá instalace browsers

**Řešení:**
- Normální, může trvat 2-10 minut
- Závisí na rychlosti internetu
- Neklikej "Cancel", počkej do konce

### Problém: "ModuleNotFoundError: No module named 'Browser'"

**Řešení:**
```bash
# Verifikuj instalaci:
pip show robotframework-browser

# Pokud není nainstalováno:
pip install robotframework-browser
```

---

## 📦 requirements.txt (Pro sdílení)

Vytvoř `requirements.txt` v projektu:

```txt
robotframework==7.0
robotframework-browser==18.3.0
```

**Instalace z requirements.txt:**
```bash
pip install -r requirements.txt
rfbrowser init
```

---

## 🔄 Update na Novou Verzi

```bash
# Update Browser Library
pip install --upgrade robotframework-browser

# Re-init browsers (pokud je nová Playwright verze)
rfbrowser init
```

---

## 🌐 Další Resources

### Oficiální Dokumentace
- [Robot Framework Installation](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst)
- [Browser Library Installation](https://marketsquare.github.io/robotframework-browser/Browser.html#installation)

### Video Tutoriály
- [Video #1: První automatizovaný test] https://www.youtube.com/watch?v=Ohm8ULxYkJU&list=PLW5vnFw56fckGidTf3P9SMka6iLjST-8C

### Community Help
- [Robot Framework Slack](https://robotframework-slack-invite.herokuapp.com/)
- [Stack Overflow - robot-framework tag](https://stackoverflow.com/questions/tagged/robot-framework)

---

## ✅ Checklist

Před začátkem testování zkontroluj:

- [ ] Python 3.8+ nainstalován
- [ ] `python --version` funguje v terminálu
- [ ] VS Code nainstalován
- [ ] Robot Framework extension nainstalován
- [ ] `pip install robotframework-browser` úspěšný
- [ ] `rfbrowser init` dokončen (3 browsers staženy)
- [ ] Verifikační test prošel (PASS)
- [ ] `log.html` se vytváří po spuštění testu

---

**🎉 Gratulujeme! Jsi ready na první test!**

**📺 Pokračuj na:** [Video #1 - První automatizovaný test]

---

*Máš problém s instalací? Napiš do komentářů pod [Video #1] https://www.youtube.com/watch?v=Ohm8ULxYkJU&list=PLW5vnFw56fckGidTf3P9SMka6iLjST-8C!*
