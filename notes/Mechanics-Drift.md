# Mechanics Drift

Bestandsaufnahme von `design/mechanics/`, durchgeführt am 2026-08-10 als Grundlage für den `mechanicraft`-Skill. Geprüft: die fünf dokumentierten Mechaniken, das Mechanik-Template, der Backlog und der Abgleich gegen `design/catalog/`.

Diese Datei ist die **Beweisseite** zu `mechanicraft`. Der Skill trägt die Regeln, diese Datei sagt, wo der Bestand heute davon abweicht.

---

## Gesamtbild

Fünf Mechaniken sind dokumentiert – Magic System, Combat Arts, Abilities, Chain Attack, Biorhythm. Alle fünf folgen dem Template exakt, in der richtigen Abschnittsreihenfolge. **Das Mechanik-Template ist das einzige im Projekt, dem der Bestand tatsächlich folgt**, und das sollte man beim Aufräumen nicht kaputtmachen.

Der Rückstand liegt woanders: **25 Systeme stehen im Backlog**, sieben davon mit Priorität *High*.

---

## Befund 1 – Die Signature-Mechanik hat keine Spezifikation

**Schwere: Hoch.**

| System | Priorität | Status |
|---|---|---|
| **The Nexus / Exchange** | High | nicht dokumentiert |
| Combat Fundamentals | High | nicht dokumentiert |
| Weapon Triangles | High | nicht dokumentiert |
| Movement | High | nicht dokumentiert |
| Class System | High | nicht dokumentiert |
| Experience & Leveling | High | nicht dokumentiert |
| Support System | High | nicht dokumentiert |

Der Nexus ist die Fähigkeit, nach der das Spiel benannt ist. `Design-Pillars.md` führt ihn als erste Gameplay-Expression von Pillar 1, `storycraft` nennt ihn „das Thema in spielbarer Form", Level 07 ist nach ihm benannt, und `design/levels/README.md` führt ihn als die Mechanik, die Kapitel 07 einführt. Eine Regelbeschreibung existiert nicht.

Das ist auch ein Problem für die anderen Skills: `levelcraft` verlangt, dass die tragende Mechanik eines Levels in `design/mechanics/` dokumentiert ist, und `statcraft` verweist dorthin für das, was hinter einer Fähigkeit steht. Beide zeigen für die meistgenutzten Systeme ins Leere.

Ebenso auffällig: **Weapon Triangles** ist undokumentiert, obwohl `catalog/Weapons.md` bereits zwei Dreiecke als Mermaid-Graphen führt und `Magic-Tomes.md` ein drittes. Die Regeln existieren als Bild, nicht als Text.

---

## Befund 2 – `Listen & Katalog` dupliziert den Katalog

**Schwere: Hoch.** Beide Fundstellen sind bereits auseinandergelaufen.

Der optionale Abschnitt *Listen & Katalog* im Mechanik-Template lädt dazu ein, Einträge in der Mechanikdatei zu führen. Zwei Dateien haben das getan – und `design/mechanics/README.md` sagt selbst das Gegenteil: „Item, spell, class and ability **lists** are in the Game Catalog; this page describes the rules behind them."

| Mechanikdatei | Katalogdatei | Abweichung |
|---|---|---|
| `mechanics/Abilities.md` § Listen & Katalog | `catalog/Abilities.md` | Inhaltlich: *Adept* und *Vantage* stehen nur in der Mechanikdatei |
| `mechanics/Combat-Arts.md` § Listen & Katalog | `catalog/Combat-Arts.md` | Strukturell: die Mechanikversion hat eine Spalte **Element**, die Katalogversion nicht |

Beide Dateipaare tragen dieselben Abschnittsnamen und dieselben Tabellen. Es sind zwei Kopien derselben Liste, und nach wenigen Monaten stimmen sie in Inhalt bzw. Schema nicht mehr überein – genau der Verlauf, den die Invariante verhindern soll.

**Erledigt am 2026-08-10.** *Listen & Katalog* ist im Template durch den Pflichtabschnitt *Katalog* ersetzt – ein Link statt einer Tabelle. Beide Duplikate sind aufgelöst, und der Inhalt, den nur die Mechanikdatei hatte, wurde vorher in den Katalog übernommen: *Adept* und *Vantage* nach `catalog/Abilities.md`, die Spalte **Element** nach `catalog/Combat-Arts.md`. Ohne diesen Schritt hätte das Auflösen des Duplikats Information gelöscht.

---

## Befund 3 – Charakterdaten in einer Mechanikdatei

**Schwere: Mittel, Entscheidung nötig.**

`mechanics/Biorythm.md` führt unter *Charakter-Zuweisungen* eine Tabelle mit **14 Figuren** und ihrem Biorhythmus-Typ (Dardan → Nexus, Hasan → Chaos, Tifa → Crescendo …).

Das ist Figurendaten in einem Systemdokument. Bisher ist es kein Duplikat, sondern das einzige Zuhause dieser Information – der Charakterbogen hat kein Feld dafür. Damit steht eine Eigenschaft von 14 Figuren an einem Ort, an dem beim Bogenschreiben niemand nachschlägt.

Zwei Wege, beide legitim:

- **Feld auf den Bogen** (`Biorhythm:` im Werteblock), die Mechanikdatei behält nur die Typdefinitionen – konsistent mit „Werte einer benannten Einheit stehen auf ihrem Bogen"
- **Bleibt wo es ist**, und `statcraft` verweist beim Ausfüllen darauf

Solange nichts entschieden ist, gilt: nicht doppeln.

---

## Befund 4 – Regel oder Stellschraube?

**Schwere: Niedrig, aber begriffsklärend.**

Der Abschnitt *Balancing-Richtlinien* im Template sieht aus wie eine Einladung, Zahlen zu duplizieren. `Biorythm.md` nutzt ihn für die Definition der Biorhythmus-Typen – Geminus = geradzahlige Runden, Natura = Fibonacci, Primus = Primzahlen.

Das ist **kein** Invariantenbruch: Diese Angaben *sind* die Mechanik. „Fibonacci" ist eine Regel, keine Stellschraube. Der Unterschied, den `mechanicraft` benennen muss:

- **Regel** – ohne sie funktioniert das System nicht. Gehört ins Mechanikdokument.
- **Stellschraube** – daran wird beim Balancing gedreht, ohne dass sich das System ändert. Gehört in den Balancing-Guide.

Beispiel: *„Resonanz tritt in Fibonacci-Runden ein"* ist eine Regel. *„Resonanz gibt +15 % auf Treffer"* ist eine Stellschraube.

---

## Befund 6 – Die fünf bestehenden Dateien haben drei Pflichtabschnitte nicht

**Schwere: Mittel.** Entstanden am 2026-08-10 durch die Template-Erweiterung.

Das Template hat drei neue Pflichtabschnitte bekommen – *Kosten*, *Design Pillars*, *Einführung* –, weil `mechanicraft` Antworten verlangt, für die es vorher keinen Ort gab. Die fünf bestehenden Dateien stammen aus der Zeit davor:

| Datei | Kosten | Design Pillars | Einführung |
|---|---|---|---|
| `Magic-System.md` | fehlt | fehlt | fehlt |
| `Combat-Arts.md` | fehlt | fehlt | fehlt |
| `Abilities.md` | fehlt | fehlt | fehlt |
| `Chain-Attack.md` | fehlt | fehlt | fehlt |
| `Biorythm.md` | fehlt | fehlt | fehlt |

Das ist **kein Grund für einen Nachzieh-Durchgang auf Vorrat.** Zwei der drei Abschnitte lassen sich nicht nachträglich erfinden: Der Pillar-Durchlauf ist eine Bewertung, und das Einführungskapitel ist eine Entscheidung. Beides gehört Dardan.

Der Weg: Wird eine der fünf Dateien ohnehin angefasst, werden die drei Abschnitte dabei ergänzt. Für Kosten steht die Antwort meist schon im Text (MP-Kosten bei Combat Arts und Magic System) und muss nur an den richtigen Ort.

---

## Befund 5 – Gewachsene Abschnitte

**Schwere: keine, zur Kenntnis.**

`Magic-System.md` trägt drei Abschnitte, die das Template nicht kennt: *Elementare Schwächen*, *Elementarreaktionen*, *Geländeeffekte*. Das ist gesunder Wildwuchs – die Mechanik ist komplex genug, dass sie eigene Kapitel braucht.

Der Skill sollte das ausdrücklich erlauben, statt es zu unterbinden: Pflichtabschnitte sind ein Minimum, keine Obergrenze.

---

## Offene Punkte – zu erledigen von Dardan

Stand 2026-08-10. Die Skills und Agents sind vollständig und untereinander konsistent; was hier steht, sind die inhaltlichen Lücken im Bestand, die eine Entscheidung oder Autorenarbeit brauchen und deshalb nicht nebenbei von einer Sitzung erledigt werden.

### Entscheidungen

| # | Was | Warum es eine Entscheidung ist | Befund |
|---|---|---|---|
| E1 | **Biorhythmus-Zuweisung:** Feld auf dem Charakterbogen, oder bleibt die Tabelle in `Biorythm.md`? | Betrifft 14 Figuren und die Frage, ob eine Eigenschaft einer benannten Einheit auf ihrem Bogen steht | 3 |
| E2 | **Einführungskapitel** je Mechanik – in welchem Kapitel taucht das System zuerst auf? | Eine Autorenentscheidung, keine Ableitung. Muss zur Spalte *New Mechanics* in `design/levels/README.md` passen | 6 |
| E3 | **Undecided-Backlog:** Trust & Bonds, Vigilant Knights, Divine Pulse, Gambits & Battalions | Vier Systeme, bei denen offen ist, ob es sie überhaupt geben soll. Divine Pulse steht bereits in der Difficulty-Tabelle des Balancing-Guide, obwohl die Entscheidung aussteht | `mechanics/README.md` |

### Schreibarbeit

| # | Was | Umfang | Befund |
|---|---|---|---|
| S1 | **The Nexus / Exchange spezifizieren** | Ein Dokument. Höchste Priorität – Story, Levels und Pillars setzen es als bekannt voraus | 1 |
| S2 | Die übrigen sechs *High*-Systeme | Sechs Dokumente. Bei **Combat Fundamentals** stehen die Formeln schon im Balancing-Guide, bei **Weapon Triangles** existieren die drei Räder als Mermaid-Graphen in `Weapons.md` und `Magic-Tomes.md` – beide sind eher Übertragung als Neuentwurf | 1 |
| S3 | *Kosten*, *Design Pillars*, *Einführung* in den fünf bestehenden Dateien nachtragen | Beim nächsten Anfassen, nicht auf Vorrat. *Kosten* ist meist schon im Text vorhanden und muss nur an den richtigen Ort | 6 |
| S4 | Pillar-Durchlauf für die fünf bestehenden Mechaniken | Eine Bewertung, die nur der Autor treffen kann | 6 |

### Erledigt

- ~~*Listen & Katalog* aus dem Template entfernen, die zwei Duplikate auflösen~~ – am 2026-08-10 erledigt, Inhalt vorher in die Kataloge migriert (Befund 2)

---

Die offenen Punkte der anderen Bereiche stehen in ihren eigenen Berichten: [Character-Sheet-Drift.md](Character-Sheet-Drift.md) für die Charakterbögen, [Level-Design-Drift.md](Level-Design-Drift.md) für die Level – dort ist das Deployment-Ungleichgewicht zwischen Part 05 und Part 06 der Punkt mit der größten Balancing-Wirkung.

---

**Stand:** 2026-08-10 · Momentaufnahme, nicht normativ. `design/` und `story/` gewinnen bei Widerspruch. Die Regeln stehen in `mechanicraft`; diese Datei sagt nur, wo der Bestand heute davon abweicht.
