# 📝 Domácí Úkoly - Robot Framework CZ

Každé video má domácí úkol pro procvičení. Můžeš ho odevzdat jako **Pull Request** do tohoto repozitáře!

## 🎯 Aktivní Úkoly

### Video #1 - První automatizovaný test

**Úkol:** Změň username na `problem_user` a zjisti co se stane.

**Co odevzdat:**
1. Screenshot selhaného testu (log.html)
2. Krátký popis (2-3 věty) co jsi zjistil/a

**Deadline:** Žádný - kdykoliv!

---

## 📤 Jak Odevzdat Domácí Úkol

### Metoda 1: Pull Request (Doporučeno)

#### Krok 1: Fork repozitáře

1. Klikni na tlačítko **Fork** nahoře vpravo
2. Vytvoří se tvoje kopie repozitáře

#### Krok 2: Naklonuj tvůj fork

```bash
git clone https://github.com/Dusan-Cizmarik/robot-framework-cz.git
cd robot-framework-cz
```

#### Krok 3: Vytvoř složku pro svůj homework

```bash
# Formát: homework/submissions/video_X/tvoje_jmeno/
mkdir -p homework/submissions/video_1/jan_novak
cd homework/submissions/video_1/jan_novak
```

#### Krok 4: Přidej své soubory

**Struktura:**
```
homework/submissions/video_1/jan_novak/
├── README.md          # Tvoje zjištění (2-3 věty)
├── test_result.png    # Screenshot log.html
└── modified_test.robot (optional)
```

**Příklad README.md:**
```markdown
# Video #1 Homework - Jan Novák

## Zjištění

Když jsem změnil username na `problem_user`, test selhal na verifikaci obrázků.
V log.html jsem viděl, že obrázky produktů se nenačetly správně - všechny měly
stejný placeholder. Tohle je záměrná feature pro testování error handling!

## Screenshot

![Test Result](test_result.png)
```

#### Krok 5: Commit a push

```bash
git add .
git commit -m "Video #1 homework - Jan Novák"
git push origin main
```

#### Krok 6: Vytvoř Pull Request

1. Otevři tvůj fork na GitHubu
2. Klikni **Pull Request**
3. Napiš title: `Homework Video #1 - Tvoje Jméno`
4. Klikni **Create Pull Request**

#### Krok 7: Čekej na review

Dostaneš feedback nebo schválení do 1-3 dnů!

---

### Metoda 2: Komentář pod videem (Jednodušší)

Pokud ti Git připadá složitý, jednoduše napiš své zjištění **do komentáře pod videem**!

**Formát:**
```
HOMEWORK #1:

Změnil jsem username na problem_user a zjistil jsem, že...
[tvoje zjištění]
```

---

## 🏆 Leaderboard (Nejaktivnější Studenti)

_Leaderboard bude přidán po prvních submissions!_

| Jméno | Video #1 | Video #2 | Video #3 | Celkem |
|-------|----------|----------|----------|--------|
| TBA   | -        | -        | -        | 0      |

---

## 📋 Template Struktura

### Video #1 Homework Template

```
homework/submissions/video_1/tvoje_jmeno/
├── README.md
├── test_result.png
└── (optional) modified_test.robot
```

### Video #2+ Templates

_Budou přidány až vyjdou další videa!_

---

## ❓ FAQ

### Q: Můžu odevzdat i když to nemám 100% správně?
**A:** ANO! Domácí úkoly jsou pro učení, ne pro známkování. Odevzdej co máš a dostaneš feedback.

### Q: Můžu odevzdat víckrát?
**A:** ANO! Můžeš vytvořit nový Pull Request s opravou.

### Q: Musím použít anglické názvy?
**A:** NE! Názvy složek, soubory, README - klidně česky. Jen kód (keywords) preferuj anglicky (best practice).

### Q: Co když nevím jak na Git?
**A:** Použij **Metodu 2** (komentář) nebo se podívej na [GitHub Guide pro začátečníky](https://guides.github.com/activities/hello-world/).

---

## 🎖️ Odměny za Aktivitu

- **První 3 submitters každého videa:** Zmínka v příštím videu!
- **10+ úspěšných submissions:** Robot Framework sticker (TBA)
- **Všech 12 videí:** Certificate of Completion (TBA)

---

**📺 Zpět na:** [Hlavní README](../README.md) | **🎥 YouTube:** [@RobotFrameworkCZ](https://youtube.com/@RobotFrameworkCZ)

---

*Domácí úkoly jsou dobrovolné - ale pomáhají upevnit znalosti!*
