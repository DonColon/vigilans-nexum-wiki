---
name: 'mechanicraft'
description: "Binding rules for specifying game mechanics in Vigilans Nexum — the documents in design/mechanics/. Load before writing or revising any mechanic specification, before proposing a new system, before moving an item off the mechanics backlog, and before answering how a rule works. Covers the derivation order from purpose to in-world introduction, the design pillar run, the rule-versus-tuning-value boundary and where each number lives (the mechanic's own Balancing section, or the Balancing Guide for cross-system values), the interaction and trap-option checks, and the known drift in the existing mechanic files. Catalog entries belong to the catalog, unit numbers to `statcraft`, battles to `levelcraft`."
---

Dieser Skill trägt die **Systemspezifikation** von Vigilans Nexum: die Dokumente in `design/mechanics/`, aus denen ein Programmierer ein Spiel bauen könnte.

Eine Mechanik ist kein Feature, das man hinzufügt, weil andere Spiele es haben. Sie ist eine Behauptung darüber, welche Entscheidung der Spieler treffen soll und was ihn diese Entscheidung kostet. Ein System ohne Kosten ist eine Belohnung mit Regeln drumherum.

---

## Was hierher gehört – und was nicht

Vier Orte beschreiben dasselbe Spiel auf vier Ebenen. Die häufigste Fehlerquelle in diesem Projekt ist, im falschen davon zu schreiben:

| | Gehört hierher | Gehört woanders |
|---|---|---|
| `design/mechanics/` | **Die Regel.** Wie funktioniert das System? Und im Abschnitt `## Balancing`: **die Stellschrauben dieser einen Mechanik** | — |
| `design/Balancing-Guide.md` | — | **Die systemübergreifenden Zahlen.** Formeln, Stat- und Wachstumsrahmen, XP, Wirtschaft, Schwierigkeitsskalierung, das Budget aller passiven Boni |
| `design/catalog/` | — | **Die Einträge.** Waffen, Zauber, Klassen, Fähigkeiten, Items |
| `design/levels/` | — | **Der Einsatz.** Wo das System im Spiel vorkommt |

**Regel oder Stellschraube?** Die Frage, die jede Zahl entscheidet:

> Ändert sich das *System*, wenn ich diesen Wert ändere – oder nur seine *Stärke*?

„Resonanz tritt in Fibonacci-Runden ein" ist eine Regel: Streiche Fibonacci, und der Biorhythmus ist ein anderes System. Sie steht hier. „Resonanz gibt +15 % auf Treffer" ist eine Stellschraube: Mach 10 % daraus, und das System bleibt dasselbe. Sie steht im Abschnitt `## Balancing` derselben Datei – getrennt von den Kernregeln, damit man an ihr drehen kann, ohne eine Regel anzufassen.

**Wo die Zahl wohnt.** Gehört sie zu genau einer Mechanik, steht sie in deren `## Balancing`. Liest sie mehr als ein System – ein Formelterm, ein Cap, ein Budget, eine Schwierigkeitsstufe –, steht sie im `Balancing-Guide.md`. Jede Zahl existiert genau einmal; überall sonst steht ein Link. Entschieden von Dardan, 2026-09-28: eine Datei pro Mechanik, die Zahl neben ihrer Regel, statt zweier Dateien, die bei jeder Änderung auseinanderlaufen können.

**Keine Listen.** `mechanics/README.md` sagt es selbst: Listen von Fähigkeiten, Zaubern, Klassen und Items leben im Katalog, dieses Dokument beschreibt die Regeln dahinter. Wer hier eine Tabelle mit Einträgen anlegt, hat eine zweite Kopie erzeugt – und im Bestand sind beide vorhandenen Kopien bereits auseinandergelaufen (siehe `notes/Mechanics-Drift.md`).

---

## Bevor eine Zeile geschrieben wird

| Was | Wo |
|---|---|
| Die fünf Pillars und die Anti-Pillars | `design/Design-Pillars.md` |
| Was schon dokumentiert ist, und was im Backlog steht | `design/mechanics/README.md` |
| Die Form | `design/mechanics/_TEMPLATE.md` |
| Die Werte dieser Mechanik | ihr eigener Abschnitt `## Balancing` |
| Formeln, Caps, Budgets, Schwierigkeit – alles, was mehrere Systeme lesen | `design/Balancing-Guide.md` |
| Wann im Spielverlauf ein System freigeschaltet wird | `design/Progression-System.md` |
| Welche Einträge das System später führt | `design/catalog/` |
| In welchem Kapitel es zum ersten Mal vorkommt | `design/levels/README.md`, Spalte *New Mechanics* |
| Ob die Story es schon voraussetzt | `story/` – grep nach dem Namen der Mechanik |

Der letzte Punkt ist kein Nachgedanke. Mehrere Systeme werden in Kapiteln bereits als bekannt behandelt, bevor sie spezifiziert wurden. Was die Story schon behauptet, ist eine Anforderung – kein leeres Blatt.

---

## Die Ableitung, in dieser Reihenfolge

**1 – Der Zweck, in einem Satz.** Welche Entscheidung soll der Spieler treffen, die er ohne dieses System nicht treffen könnte? Lässt sich das nicht in einem Satz sagen, ist die Mechanik noch nicht gefunden – dann beschreibt man einen Effekt und sucht sich ein Problem dazu.

**2 – Der Pillar-Durchlauf.** Fünf Fragen aus `Design-Pillars.md`, und sie werden ausgeschrieben beantwortet, nicht abgehakt:

- **Bonds** – Verstärkt es die Verbindungen zwischen Einheiten?
- **Depth** – Einfach zu lernen, schwer zu meistern?
- **Weight** – Haben die Entscheidungen langfristige Folgen?
- **Integration** – Erzählt die Mechanik eine Geschichte?
- **Fairness** – Ist die Herausforderung respektvoll gegenüber der Zeit des Spielers?

Mehr als zwei Neins heißt Redesign, nicht Nachbessern. Dazu die Gegenprobe an den **Anti-Pillars**: kein Grinding-Zwang, keine Macht ohne Preis, nichts, was nur mit übertrainierten Einheiten funktioniert.

**3 – Die Kosten.** Was zahlt der Spieler – eine Ressource, eine Aktion, eine Position, ein Risiko? Ein System ohne Kosten ist keine Entscheidung. Und die Kosten müssen **vor** dem Einsatz sichtbar sein, sonst verletzt das System Pillar 5: Der Spieler soll planen können, nicht erst nach dem Fehler verstehen.

**4 – Die Interaktion.** Was überschneidet sich mit bestehenden Systemen, und was bricht daran? Zwei Fragen, die hier zu beantworten sind:

- Macht diese Mechanik eine bestehende überflüssig?
- Gibt es eine Kombination, die den Kampf trivial macht?

Wo eine Wahl entsteht, gilt **No Trap Options**: Jede Option braucht eine Situation, in der sie die richtige Antwort ist. Das wiegt schwerer, wenn die Wahl unumkehrbar ist – und in diesem Spiel sind Beförderungen permanent.

**5 – Der Erwerb.** Wie kommt eine Einheit an das System? Klassenaufstieg, Item, Story-Ereignis – oder universell für alle, dann wird das ausdrücklich hingeschrieben. Nichts ist einfach da.

**6 – Die Einführung in der Welt.** Das Feld, das am häufigsten fehlt: **In welchem Kapitel taucht das System zuerst auf, und wie lernt der Spieler es, ohne dass ein UI-Popup es erklärt?**

Vigilans Nexum führt Mechaniken über Situationen ein, nicht über Tutorials. Eine Karte, auf der die neue Fähigkeit der offensichtliche Ausweg ist, lehrt sie besser als ein Textkasten. Die Antwort gehört ins Dokument und muss mit `design/levels/README.md` übereinstimmen. Eine Obergrenze neuer Mechaniken pro Level gibt es nicht – aber die Karte muss jede neue tragen (`levelcraft`).

**7 – Die Darstellung.** Woran erkennt der Spieler, dass das System gerade wirkt? Kein Zustand darf unsichtbar sein, an dem eine Entscheidung hängt – das ist Pillar 5 in seiner konkretesten Form: *No Hidden Information.*

---

## Die Form

`design/mechanics/_TEMPLATE.md` ist verbindlich. Neun Pflichtabschnitte, danach die optionalen:

```
Overview · Prerequisites · Cost · Core Rules · Acquisition / Access
· Strategic Depth · Design Pillars · Introduction · Catalog
────────────────────────────────────────────────────────────────
Balancing · Interaction with Other Mechanics · UI & Display · Open Decisions
```

Die Reihenfolge ist Leselogik, nicht Denkreihenfolge: *was ist es → was kostet es → wie funktioniert es → wie kommt man dran → warum ist es gut → warum gehört es ins Spiel → wann taucht es auf.* Die Ableitung oben ist die Reihenfolge, in der man entscheidet; diese hier die, in der jemand liest.

Drei Abschnitte tragen Antworten, die es vorher nirgends gab: **Cost** (was der Spieler zahlt, und ob er es vor dem Einsatz sieht), **Design Pillars** (der Durchlauf, ausgeschrieben), **Introduction** (welches Kapitel, und wie ohne Popup). Seit 2026-09-29 haben alle Mechanikdateien sie.

Pflichtabschnitte werden ausgefüllt, optionale ausgefüllt oder gelöscht. Kein Platzhalter bleibt stehen.

**Pflichtabschnitte sind ein Minimum, keine Obergrenze.** Ein komplexes System darf eigene Abschnitte hinzufügen – `Magic-System.md` trägt *Elemental Weaknesses*, *Elemental Reactions* und *Terrain Effects*, und das ist richtig so. Was das Template vorgibt, ist der Sockel.

**Der Abschnitt `Catalog` ist genau ein Link.** Das Mechanikdokument beschreibt, *was* die Einträge sind; der Katalog listet, *welche* es gibt. Auf dieselbe Katalogdatei verweisen auch der Charakterbogen und die Klassen in `Unit-Classes.md` – der Katalog ist die Registry, an der alle drei hängen. Eine Tabelle mit Einträgen im Mechanikdokument erzeugt eine zweite Wahrheit, und beide Fälle, in denen das im Bestand passiert ist, waren nach Monaten auseinandergelaufen.

Sprache: Spec und Dokumentation Englisch nach der Invariante. Seit 2026-09-29 sind alle Mechanikdateien und das Template englisch. Eigennamen der Spielwelt (etwa die deutschen Reaktionsnamen im Magic System) bleiben, wie der Katalog sie führt.

---

## Bekannte Fallen

**Der Statbonus mit Namen.** Eine „Mechanik", die immer gilt und nichts kostet, ist keine – sie ist eine Zahlenänderung mit einer Überschrift. Dasselbe Prinzip, das `statcraft` für persönliche Fähigkeiten verlangt: Es braucht eine Bedingung, die der Spieler herstellen kann.

**Die Mechanik ohne Gegner.** Jedes System, das der Spieler nutzt, sollte auch gegen ihn eingesetzt werden können – oder es braucht eine ausgeschriebene Begründung, warum nicht. Systeme, die nur in eine Richtung wirken, sind Belohnungen, keine Regeln.

**Die Zahl, die sich einschleicht.** „Kostet 5 MP" in den Kernregeln ist eine Stellschraube am falschen Ort. Sie gehört in `## Balancing`, die Regel verlinkt dorthin. Eine Zahl, die mehrere Systeme lesen, gehört nicht in eine einzelne Mechanik, sondern in den Balancing-Guide.

**Die Liste, die sich einschleicht.** Siehe oben. Beide bestehenden Fälle sind bereits gedriftet.

**Charakterdaten im Systemdokument.** Eigenschaften benannter Einheiten gehören auf ihren Bogen, nicht in die Mechanik. Der Biorhythmus hat seine Figurentabelle deshalb an die Bögen abgegeben (2026-09-27).

**Die Story ist schon weiter.** Bevor ein System spezifiziert wird: `story/` danach durchsuchen. Was Kapitel bereits zeigen, bindet die Spezifikation.

**Das System, das nur auf dem Papier existiert.** Eine Mechanik ohne Kapitel, in dem sie eingeführt wird, und ohne Level, das sie trägt, ist ein Vorschlag. Als solcher gehört sie in den Backlog, nicht in ein Dokument, das aussieht wie eine Entscheidung.

Wo der Bestand heute konkret abweicht, steht in `notes/Mechanics-Drift.md`.

---

## Nach dem Schreiben

- Zeile in `design/mechanics/README.md` ergänzen – und den Eintrag **aus dem Backlog entfernen**. Ein System an beiden Orten ist ein System mit zwei Wahrheiten
- Die Werte der Mechanik in ihrem `## Balancing` anlegen; systemübergreifende Zahlen – Formelterme, Caps, das Budget passiver Boni – im `Balancing-Guide.md` nachziehen
- Einträge, die das System führt, im passenden `design/catalog/`-Dokument
- Trägt ein Level die Einführung → `design/levels/README.md`, Spalte *New Mechanics*
- Steht das System unter *Undecided* im Backlog, ist die Entscheidung Dardans – nicht die Nebenwirkung eines neuen Dokuments
- `CHANGELOG.md` unter `[Unreleased]`: die Entscheidung samt Warum, nicht der Dateiname

## Vor dem Abschluss

- Zweck in einem Satz, und nennt er eine Entscheidung statt eines Effekts?
- Alle fünf Pillars ausgeschrieben beantwortet, Anti-Pillars gegengeprüft?
- Kosten benannt – und vor dem Einsatz für den Spieler sichtbar?
- Interaktion mit bestehenden Systemen geprüft, keine triviale Kombination?
- Wo gewählt wird: hat jede Option ihre Situation?
- Erwerb geklärt, auch wenn die Antwort „universell" lautet?
- Einführungskapitel benannt, und funktioniert es ohne Tutorial-Popup?
- Jeder entscheidungsrelevante Zustand für den Spieler sichtbar?
- Jede Stellschraube in `## Balancing`, keine in den Kernregeln – und keine systemübergreifende Zahl, die eigentlich in den Guide gehört?
- Keine Katalogliste im Dokument?
- Backlog-Eintrag entfernt, README-Zeile ergänzt?

---

Systemspezifikation gehört zu Rulewright. Ihre Zahlen trägt der Abschnitt `## Balancing` der Mechanik, die systemübergreifenden `design/Balancing-Guide.md`, die Einträge der Katalog, die Werte einer Einheit `statcraft`, die Karte `levelcraft`. Dieser Skill trägt die Regeln, `notes/Mechanics-Drift.md` den Stand des Bestands.
