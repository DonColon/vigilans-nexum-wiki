# Biorhythmus

> **Verwandte Dateien:** [Game Mechanics](README.md) · Difficulty Modes *(not documented yet)*

---

## Übersicht

Das Biorhythmus-System verleiht jeder Unit einen mathematischen Rhythmus, der bestimmt auf welchen Runden sie besonders stark oder schwach ist. Es belohnt strategisches Bewusstsein für die Rundenzahl und gibt jedem Charakter eine einzigartige taktische Identität.

|              | Biorhythmus                                           |
| ------ | ----------------------------- |
| Phase        | Player Phase & Enemy Phase                            |
| Auslösung    | Automatisch, basierend auf der aktuellen Rundenzahl   |
| Ressource    | Keine — passiver Zustand                              |
| Besonderheit | Jede Unit hat einen eigenen, unveränderlichen Typ     |

---

## Voraussetzungen

Der Biorhythmus ist ein universelles System — er gilt für alle Einheiten ohne Ausnahme. Keine besonderen Bedingungen müssen erfüllt werden.

| Bedingung | Regel |
| ------ | ----- |
| Geltungsbereich | Alle Einheiten (Spieler und Gegner) |
| Aktivierung | Passiv — immer aktiv, kein Eingreifen nötig |
| Anpassung | Nicht veränderbar — der Typ ist fest zugewiesen |

---

## Kernregeln

### Grundprinzip

Jede Unit hat einen fest zugewiesenen **Biorhythmus-Typ**. Dieser Typ definiert eine mathematische Zahlenfolge. Wenn die aktuelle Rundenzahl Teil dieser Folge ist, befindet sich die Unit in **Resonanz**. Wenn die Runde zu einer *anderen* Zahlenfolge gehört, befindet sie sich in **Dissonanz**. Alle anderen Runden sind **Neutral**.

```
Aktuelle Runde → Typ prüfen → Resonanz / Neutral / Dissonanz
```

---

### Zustände & Effekte

| Zustand       | Bedingung                                         | Effekt                   |
| ------- | ------------------------- | ------------ |
| **Resonanz**  | Runde gehört zur eigenen Zahlenfolge              | Siehe Typ-Stärke         |
| **Neutral**   | Keine Übereinstimmung                             | Keine Änderung           |
| **Dissonanz** | Runde gehört zu einer *anderen* definierten Folge | Siehe Schwierigkeitsgrad |

### Resonanz-Stärken nach Seltenheit

#### Standard & Selten

| Stärke                 | Bedingung                                          | Effekt                     |
| ------------- | -------------------------- | -------------- |
| **Standard – Einfach** | Standard-Typ, Runde trifft genau einen Typ         | +10% Hit/Avoid, +1 Schaden |
| **Standard – Doppel**  | Standard-Typ, Runde trifft zwei Typen gleichzeitig | +15% Hit/Avoid, +2 Schaden |
| **Selten – Einfach**   | Seltener Typ, Runde trifft genau einen Typ         | +15% Hit/Avoid, +2 Schaden |
| **Selten – Doppel**    | Seltener Typ, Runde trifft zwei Typen gleichzeitig | +20% Hit/Avoid, +3 Schaden |

#### Einzigartige Typen

| Name          | Resonanz-Effekt                                    | Besonderheit                                                 |
| ------- | -------------------------- | ------------------------------ |
| **Crescendo** | +20% Hit/Avoid, +3 Schaden                         | –                                                            |
| **Mersenne**  | +20% Hit/Avoid, +3 Schaden                         | –                                                            |
| **Perfectus** | +25% Hit/Avoid, +4 Schaden, +5% Crit               | Stärkster regulärer Resonanz-Effekt im Spiel                 |
| **Nexus**     | Kopiert den Effekt des verbündeten Typs + +5% Crit | Je seltener der Verbündete, desto stärker der kopierte Effekt |
| **Chaos**     | +20% Hit/Avoid, +3 Schaden                         | Dissonanz-Runden sind verstärkt: −15% Hit/Avoid, −2 Schaden  |

> **Nexus-Synergie:** Wenn Leona (Perfectus) auf Runde 6 oder 28 in Resonanz ist, kopiert Dardan ihren Effekt (+25% Hit/Avoid, +4 Schaden, +5% Crit) und erhält zusätzlich +5% Crit. Das ist der stärkste mögliche Nexus-Zustand.

### Dissonanz nach Schwierigkeitsgrad

| Schwierigkeitsgrad | Standard-Dissonanz         | Chaos-Dissonanz            |
| --------- | -------------- | -------------- |
| **Casual**         | Kein Effekt                | Kein Effekt                |
| **Normal**         | −5% Hit/Avoid              | −15% Hit/Avoid, −2 Schaden |
| **Hard**           | −10% Hit/Avoid             | −15% Hit/Avoid, −2 Schaden |
| **Maddening**      | −10% Hit/Avoid, −1 Schaden | −15% Hit/Avoid, −2 Schaden |

> **Chaos-Sonderregel:** Hasans Dissonanz-Strafe ist auf allen Schwierigkeitsgraden (außer Casual) konstant stärker als die normale Dissonanz – als Ausgleich für seinen potenziell starken Resonanz-Effekt.

---

## Balancing-Richtlinien

### Biorhythmus-Typen

### Standard-Typen

Die meisten Units haben einen Standard-Typ. Diese Typen sind regelmäßig und leicht vorhersehbar.

| Name        | Typ             | Resonanz-Runden      |
| -------- | --------- | ----------- |
| **Geminus** | Geradzahlig     | 2, 4, 6, 8, 10, 12…  |
| **Solus**   | Ungeradzahlig   | 1, 3, 5, 7, 9, 11…   |
| **Trinus**  | Durch 3 teilbar | 3, 6, 9, 12, 15, 18… |
| **Quintus** | Durch 5 teilbar | 5, 10, 15, 20, 25…   |

### Seltene Typen

Seltene Typen folgen unregelmäßigen mathematischen Folgen. Sie erfordern mehr Aufmerksamkeit, bieten aber ungewöhnlichere Resonanz-Fenster.

| Name           | Typ            | Resonanz-Runden                 |
| -------- | -------- | ---------------- |
| **Natura**     | Fibonacci      | 1, 2, 3, 5, 8, 13, 21…          |
| **Primus**     | Primzahlen     | 2, 3, 5, 7, 11, 13, 17, 19, 23… |
| **Quadratus**  | Quadratzahlen  | 1, 4, 9, 16, 25…                |
| **Triangulus** | Dreieckszahlen | 1, 3, 6, 10, 15, 21, 28…        |
| **Duplex**     | Potenzen von 2 | 1, 2, 4, 8, 16, 32…             |

### Einzigartige Typen

Einzigartige Typen sind reserviert für Hauptcharaktere und folgen besonderen Regeln.

| Name          | Typ                    | Resonanz-Runden                                 | Resonanz-Effekt                      | Charakter |
| ------- | ------------- | -------------------------- | ------------------ | ------ |
| **Nexus**     | Verbund                | Wenn ein beliebiger Verbündeter in Resonanz ist | Kopiert den Effekt + +5% Crit        | Dardan    |
| **Chaos**     | Zufall                 | Zufällig pro Battle bestimmt                    | +20% Hit/Avoid, +3 Schaden           | Hasan     |
| **Crescendo** | Factorial (n!)         | 1, 2, 6, 24                                     | +20% Hit/Avoid, +3 Schaden           | Tifa      |
| **Mersenne**  | Mersenne-Zahlen (2ⁿ−1) | 3, 7, 15, 31                                    | +20% Hit/Avoid, +3 Schaden           | Claude    |
| **Perfectus** | Perfekte Zahlen        | 6, 28                                           | +25% Hit/Avoid, +4 Schaden, +5% Crit | Leona     |

---

### Überschneidungs-Runden

Manche Runden gehören gleichzeitig zu mehreren Typen. Units deren Typ auf eine solche Runde passt erhalten **Doppel-Resonanz**.

| Runde | Überschneidende Typen                     | Doppel-Resonanz für                    |
| ----- | ----------------------- | -------------------- |
| 1     | Solus + Natura + Quadratus + Triangulus   | Solus, Natura, Quadratus, Triangulus   |
| 2     | Geminus + Natura + Primus                 | Geminus, Natura, Primus                |
| 3     | Solus + Natura + Triangulus + Trinus      | Solus, Natura, Triangulus, Trinus      |
| 5     | Solus + Natura + Primus + Quintus         | Solus, Natura, Primus, Quintus         |
| 6     | Geminus + Triangulus + Trinus + Perfectus | Geminus, Triangulus, Trinus, Perfectus |
| 8     | Geminus + Natura + Duplex                 | Geminus, Natura, Duplex                |
| 13    | Solus + Natura + Primus                   | Solus, Natura, Primus                  |
| 28    | Geminus + Triangulus + Perfectus          | Geminus, Triangulus, Perfectus         |

---

## Erwerb / Zugang

Der Biorhythmus-Typ ist jedem Charakter fest zugewiesen und kann nicht erlernt, verändert oder getauscht werden. Der Typ ist Teil der Charakteridentität.

| Quelle | Beschreibung | Verfügbarkeit |
| --- | ------ | ------- |
| Charakterdesign | Fest zugewiesen, nicht veränderbar | Alle Einheiten |
| Nexus (Dardan) | Kopiert den aktiven Typ eines beliebigen Verbündeten | Nur Dardan |

---

## Strategische Tiefe

Der Biorhythmus ist ein **Planungswerkzeug**. Vor einem riskanten Kampf lohnt es sich zu prüfen:

- Ist meine Unit in Resonanz oder Dissonanz?
- Welche Units sind in dieser Runde besonders stark?
- Welche Units sollte ich in dieser Runde schonen?

**Beispiel:** Runde 7 ist eine Primzahl (Primus) und ungerade (Solus). Für Vector (Primus) und Lina (Solus) ist es eine starke Runde. Für Fabius (Quintus) hingegen beginnt die Dissonanz – er sollte in dieser Runde nicht unnötig Risiken eingehen.

---

## Charakter-Zuweisungen

| Charakter | Biorhythmus | Typ         |
| ------ | -------- | -------- |
| Dardan    | Nexus       | Einzigartig |
| Hasan     | Chaos       | Einzigartig |
| Tifa      | Crescendo   | Einzigartig |
| Claude    | Mersenne    | Einzigartig |
| Leona     | Perfectus   | Einzigartig |
| Lina      | Solus       | Standard    |
| Maksimo   | Natura      | Selten      |
| Ivan      | Geminus     | Standard    |
| Marven    | Trinus      | Standard    |
| Mikael    | Quadratus   | Selten      |
| Fabius    | Quintus     | Standard    |
| Asta      | Duplex      | Selten      |
| Vector    | Primus      | Selten      |
| Shira     | Triangulus  | Selten      |

---

## UI & Anzeige

Der aktuelle Biorhythmus-Zustand einer Unit wird im Kampfmenü angezeigt:

- **Symbol** des Typs neben dem Unit-Portrait
- **Farbindikator:** Gold (Resonanz), Grau (Neutral), Rot (Dissonanz)
- **Rundenanzeige** zeigt an welche Runden als nächstes Resonanz-Runden sind

---

**Version:** 1.1
**Erstellt:** 2026-06-08
**Zuletzt aktualisiert:** 2026-06-09
**Querverweise:** [Game Mechanics](README.md) · Difficulty Modes *(not documented yet)*