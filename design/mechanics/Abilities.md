# Abilities

> **Verwandte Dateien:** [Combat Arts](Combat-Arts.md) · [Magic System](Magic-System.md) · [Unit Classes](../catalog/Unit-Classes.md)

---

## Übersicht

Abilities sind passive Kampffähigkeiten mit Fokus auf die **Enemy Phase**. Sie triggern automatisch basierend auf Formeln — ohne MP-Kosten — und geben jedem Charakter eine passive Kampfidentität.

|           | Abilities                                          |
| ------ | -------------------------- |
| Phase     | Enemy Phase                                        |
| Auslösung | Automatisch, zufallsbasiert oder situationsbasiert |
| Ressource | Keine MP-Kosten                                    |
| Fokus     | Reaktiv — offensiv und defensiv                    |

---

## Voraussetzungen

Abilities haben keine universellen Voraussetzungen — jede Einheit kann Abilities ausrüsten, sofern sie diese erlernt hat und ausreichend Capacity besitzt. Einzelne Abilities können jedoch klassengebundene oder charakterspezifische Lernbedingungen haben.

| Bedingung | Regel |
| ------ | ----- |
| Erlernen | Ability muss zuerst erworben werden (Klasse, Scroll, Quest) |
| Ausrüsten | Verfügbare Capacity der aktuellen Klasse muss ausreichen |
| Klassengebundene Abilities | Nur in der entsprechenden Klasse lernbar |

---

## Kernregeln

### Ability-Kategorien

| Kategorie    | Beispiele                                                    |
| ------ | ------------------------------ |
| **Defensiv** | Schaden reduzieren, Ausweichen, Schild aktivieren, Status abwehren |
| **Offensiv** | Automatischer Gegenangriff, Konter mit Element, Vergeltungsschaden |
| **Hybrid**   | Schaden absorbieren und in Gegenangriff umwandeln, Ausweichen + sofortiger Konter |

---

### Trigger-Typen

| Trigger-Typ           | Beschreibung                                                 | Skaliert mit                |
| ------------ | ------------------------------ | --------------- |
| **Luck-basiert**      | Basischance + (Luck / 2)%                                    | Luck-Stat                   |
| **Skill-basiert**     | Hohe Chance unter bestimmten Bedingungen (z.B. bei kritischen Treffern) | Skill-Stat                  |
| **Situationsbasiert** | Triggert bei festen Bedingungen (z.B. HP ≤ 50%)              | Fix — kein Stat             |
| **Kombiniert**        | Prozentige Chance + situative Bedingung                      | Luck oder Skill + Situation |

Luck und Skill sind damit über Abilities hinaus relevant — sie beeinflussen direkt wie verlässlich ein Charakter in der Enemy Phase reagiert.

---

## Balancing-Richtlinien

### Capacity-System

Charaktere können viele Abilities **lernen**, aber nur so viele **ausrüsten** wie ihre aktuelle Capacity erlaubt.

#### Capacity-Wachstum

| Klassenstufe       | Capacity |
| --------- | ----- |
| Base Class         | 3        |
| Intermediate Class | 5        |
| Advanced Class     | 7        |
| Master Class       | 9        |
| Unique Class       | 11       |

#### Ability-Kosten

| Ability-Stärke                | Capacity-Kosten |
| ----------------- | --------- |
| Schwache / passive Ability    | 1               |
| Mittlere Ability              | 2               |
| Starke / seltene Ability      | 3               |
| Unique / Charakter-spezifisch | 4               |

---

## Erwerb / Zugang

| Quelle          | Beschreibung                                     | Verfügbarkeit                        |
| --------- | ------------------------ | ------------------ |
| Klassenaufstieg | Klassenspezifische Abilities automatisch erlernt | Nur in entsprechender Klasse lernbar |
| Level-Up        | Kleinere Abilities gelegentlich                  | Klassenabhängig                      |
| Scrolls         | Allgemeine Abilities (z.B. Adept, Vantage)       | Jede Klasse, jeder Charakter         |
| Quests / Story  | Einzigartige Abilities                           | Exklusiv — sonst nicht lernbar       |

### Scroll-Abilities vs. Klassen-Abilities

| Pool                  | Erwerb                                      | Verfügbarkeit                        |
| ------------ | ---------------------- | ------------------ |
| **Klassen-Abilities** | Klassenaufstieg / Level-Up                  | Nur in entsprechender Klasse lernbar |
| **Scroll-Abilities**  | Scrolls (seltene Items / Quest-Belohnungen) | Jede Klasse, jeder Charakter         |

Scrolls sind **rare Ressourcen** — der Spieler muss bewusst entscheiden welcher Charakter einen Scroll bekommt.

---

## Strategische Tiefe

Alle erlernten Abilities — klassen- und scrollbasiert — bleiben **permanent** erhalten, auch nach einer Beförderung in die nächste Klassenstufe. Das Capacity-Limit bestimmt nur was gleichzeitig ausgerüstet werden kann.

Ein Charakter der lange in einer Klasse bleibt bevor er aufsteigt hat am Ende mehr Abilities zur Auswahl als einer der schnell durchrusht. Zwei Charaktere mit demselben Klassenpfad spielen sich anders wenn ihre Scroll-Abilities verschieden sind.

---

## Katalog

Dieses Dokument beschreibt, **was** Fähigkeiten sind und nach welchen Regeln sie funktionieren. **Welche** es gibt, steht im Katalog – nach Personal, Class, Mastery, General und Canto gegliedert:

**Alle Einträge:** [Abilities](../catalog/Abilities.md)

Auf dieselbe Liste verweisen der Charakterbogen (*Abilities* und *Personal Ability*) und die Klassen in [Unit Classes](../catalog/Unit-Classes.md). Eine Fähigkeit, die nur hier stünde, existiert für keinen von beiden.

---

**Version:** 1.0
**Erstellt:** 2026-06-09
**Zuletzt aktualisiert:** 2026-06-09
**Querverweise:** [Combat Arts](Combat-Arts.md) · [Magic System](Magic-System.md) · [Unit Classes](../catalog/Unit-Classes.md)