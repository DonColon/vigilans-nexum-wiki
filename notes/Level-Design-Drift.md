# Level Design Drift

Bestandsaufnahme der Level-Dokumentation, durchgeführt am 2026-08-10 als Grundlage für den `levelcraft`-Skill. Geprüft: alle 48 Level-Kästen in `story/chapters/`, die acht Stub-Dateien in `design/levels/`, das Level-Template und der Abgleich gegen `design/Progression-System.md`.

Diese Datei ist die **Beweisseite** zu `levelcraft`. Der Skill trägt die Regeln, diese Datei sagt, wo der Bestand heute davon abweicht.

---

## Gesamtbild

Ein Level existiert in diesem Projekt an zwei Orten: als **Kasten im Kapiteltext** (Kurzfassung, Lorekeeper) und als **Design-Dokument in `design/levels/`** (Ausführung, Rulewright). Der Kasten ist 48 Mal vorhanden. Das Design-Dokument existiert kein einziges Mal ausgefüllt.

Das ist der eigentliche Befund: Die Spielseite von Vigilans Nexum ist über 48 Kapitel hinweg in Kurzform beschrieben und nirgends ausdesignt. Karten, Feindkomposition, Boss-Werte, Verstärkungswellen und Belohnungen existieren bisher nur als Absicht.

---

## Befund 1 – Deployment-Ungleichgewicht zwischen den Parallelsträngen

**Schwere: Hoch.** Das ist der teuerste Fund, weil er die einzige Balancing-Zusage verletzt, die das Progression-System für die geteilten Stränge macht.

`Progression-System.md` (Deployment Limits) setzt für Kapitel 33–40 ein Limit von **8–10 Einheiten** und verlangt für Part 05 und 06 ausdrücklich deckungsgleiche Bedingungen.

| Kapitel | Strang | Pflicht | Optional | Gesamt |
|---|---|---|---|---|
| 34A | Part 05 | 2 | 6 | **8** |
| 35A | Part 05 | 3 | 5 | **8** |
| 36A | Part 05 | 2 | 6 | **8** |
| 37A | Part 05 | 3 | 5 | **8** |
| 38A | Part 05 | 2 | 6 | **8** |
| 39A | Part 05 | 4 | 5 | **9** |
| 34B | Part 06 | 2 | 9 | **11** |
| 35B | Part 06 | 2 | 9 | **11** |
| 36B | Part 06 | 2 | 9 | **11** |
| 37B | Part 06 | 2 | 9 | **11** |
| 38B | Part 06 | 2 | 9 | **11** |
| 39B | Part 06 | 2 | 9 | **11** |
| 40B | Part 06 | Hasan solo gegen Kresnik | – | Sonderfall (Duell) |

Dardans Strang liegt konstant am **unteren Rand** des Bandes, Hasans Strang konstant **einen über dem oberen Rand**. Über sechs Kapitel hinweg spielt ein Strang mit drei Einheiten mehr als der andere – bei identischen Feindleveln.

Das trifft nicht nur die Schwierigkeit. Beide Stränge rekrutieren vier neue Einheiten; wer pro Karte drei Slots mehr hat, levelt einen breiteren Kader hoch und kommt in Part 07 mit mehr einsatzfähigen Einheiten an. Genau das sollte das gemeinsame Levelband verhindern.

**Zu entscheiden:** ein gemeinsamer Wert für beide Stränge. Ob 8, 10 oder ein anderer, ist eine Design-Entscheidung – dass er in beiden Strängen derselbe ist, nicht.

---

## Befund 2 – Der Style Guide beschreibt den Kasten falsch

**Schwere: Mittel.**

`story/Writing-Style-Guide.md` (Abschnitt *Level Box Format*) zeigt den Kasten mit englischem Kopf und englischen Labeln:

```
> **Level XX begins:**
> **Objectives:** / **Mechanics:** / **Deployment:**
```

Im Bestand: **48 von 48** Kästen schreiben `**Level XX beginnt:**`. Kein einziger schreibt „begins". Der Style Guide beschreibt an dieser Stelle etwas, das es nicht gibt – und er ist die Datei, die Lorekeeper als Formvorgabe liest.

---

## Befund 3 – Label-Drift innerhalb der Kästen

**Schwere: Niedrig, aber flächig.**

| Zeile | Variante A | Variante B |
|---|---|---|
| Ziel | `**Ziel:**` (9) | `**Objectives:**` (6) |
| Mechanik | `**Mechanik:**` (13) | `**Mechaniken:**` (7) |
| Aufstellung | `**Aufstellung:**` (8) | `**Deployment:**` (6) |

Kein Label hat eine Mehrheit, die als Konvention durchgeht. Die Wahl ist zu treffen, nicht abzuleiten – die Invariante „Kapitelprosa Deutsch" spricht für die deutschen Label, der übrige Wiki-Bestand für die englischen.

**Außerdem:** Nur 13 der 48 Kästen nennen überhaupt eine Aufstellung, und alle 13 liegen in Part 05/06. Für Kapitel 09–32 und 41–48 ist nicht dokumentiert, mit wie vielen Einheiten der Spieler antritt.

---

## Befund 4 – Die Stub-Dateien folgen nicht dem Template

**Schwere: Mittel.**

`design/levels/Level-01` bis `Level-08` sind je 21 Zeilen und tragen die Gliederung *Layout · Objectives · Units allowed · Items · Walktrough*. `design/levels/_TEMPLATE.md` hat rund 40 Felder in einer völlig anderen Struktur (Levelinformationen · Story-Kontext · Karte · Ziele · Einheitenaufstellung · Feindliche Kräfte · Verstärkungen · Besondere Ereignisse · Gegenstände · Eingeführte Mechaniken · Schwierigkeitsvarianten · Designer-Notizen · Playtesting).

Die Stubs stammen aus der Zeit vor dem Template. Sie werden beim Ausfüllen ersetzt, nicht erweitert – „Walktrough" ist zusätzlich ein Tippfehler, der nirgends erhalten bleiben sollte.

Nebenbefund: Der Template-Kopf verweist auf einen Pfad `wiki/levels/`, den es nicht gibt.

---

## Befund 5 – Zielvarianz in Part 01

**Schwere: Niedrig.**

Laut `design/levels/README.md` sind die Missionsziele der ersten acht Level: Rout Enemy, Rout Enemy, Hold Territory, Defeat Boss, Rout Enemy, Defend NPC, Survive + Objective, Defeat Boss. Dreimal *Rout Enemy* im Tutorial-Part, davon zweimal direkt hintereinander (01/02).

Für ein Tutorial ist Wiederholung verteidigbar – die Karte soll die neue Mechanik tragen, nicht das Ziel. Es ist trotzdem die Stelle, an der ein Spieler zuerst entscheidet, ob das Spiel Abwechslung bietet. Beim Ausfüllen von Level 01–08 mitentscheiden, nicht übernehmen.

---

## Empfohlene Reihenfolge

1. **Deployment-Wert für Part 05/06 entscheiden** und in beiden Strängen angleichen – Befund 1 ist der einzige mit Balancing-Wirkung
2. **Label-Konvention für den Kasten entscheiden**, `Writing-Style-Guide.md` an den Bestand angleichen (Befund 2 und 3)
3. Level 01–08 nach `_TEMPLATE.md` ausfüllen, Stub-Inhalt ersetzen
4. Deployment-Angaben für die Kapitel ohne Aufstellungszeile nachziehen, wenn deren Level-Dokumente entstehen

---

**Stand:** 2026-08-10 · Momentaufnahme, nicht normativ. `design/` und `story/` gewinnen bei Widerspruch. Die Regeln stehen in `levelcraft`; diese Datei sagt nur, wo der Bestand heute davon abweicht.
