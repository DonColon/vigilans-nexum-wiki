---
name: 'statcraft'
description: "Binding rules for the gameplay half of a Vigilans Nexum character sheet — joining level and tier, base stats, growth rates, max stats, abilities, combat arts, spells, weapon proficiencies and the recommended class path. Load before filling or revising any stat block in story/characters/, before inventing a class, ability or combat art for a unit, and before answering questions about how strong a unit is. Covers the derivation order, the budget and cap discipline, the reachability check, and the known drift in existing sheets. The narrative half belongs to `charactercraft`."
---

Dieser Skill trägt die **Gameplay-Hälfte** eines Charakterbogens. Persönliche Daten, Aussehen, Persönlichkeit und Story-Rolle gehören zu `charactercraft`.

Eine Einheit ist eine Behauptung über das Spiel: Sie ist irgendwo stark, irgendwo schwach, und der Spieler entscheidet, ob sie ins Team kommt. Ein Bogen mit ausgewogenen Zahlen in allen neun Spalten beschreibt keine Einheit, sondern eine leere Stelle im Roster.

---

## Das Grundgesetz

**Alle Regelzahlen leben in `design/Balancing-Guide.md`.** Formeln, Budgets, Caps, Klassenmodifikatoren, Level-Bänder – nichts davon wird in einen Charakterbogen, in diesen Skill oder in `notes/` kopiert. Verlinkt wird, nicht dupliziert.

Der Charakterbogen ist die **einzige** Stelle, an der die *eigenen* Zahlen einer Einheit stehen: ihre Basiswerte, ihre Wachstumsraten, ihre Maximalwerte, ihre Fähigkeiten. Diese Zahlen sind abgeleitet, nicht gewürfelt – jede muss sich aus dem Balancing-Guide und dem Progression-System begründen lassen.

Vor jedem Zahlenblock gelesen:

| Was | Wo |
|---|---|
| Basiswert-Rahmen, Wachstums-Budget, Caps, Klassen-Tier-Modifikatoren | `design/Balancing-Guide.md` |
| Beitrittslevel und Tier nach Part, Meilenstein-Statwerte, Promotion-Gates | `design/Progression-System.md` |
| Existierende Klassen, ihre Waffentypen und Verzweigungen | `design/catalog/Unit-Classes.md` |
| Existierende Fähigkeiten, Kampfkünste, Zauber, Waffen | `design/catalog/` |
| Was die Mechanik hinter einer Fähigkeit tut | `design/mechanics/` |
| Wofür das Ganze gebaut wird | `design/Design-Pillars.md` |

---

## Die Ableitung, in dieser Reihenfolge

Reihenfolge ist nicht Geschmack. Wer bei den Basiswerten anfängt, muss dreimal zurück.

**1 – Beitrittslevel und Tier.** Aus der Rekrutierungstabelle in `Progression-System.md`. Der Part bestimmt das Level, das Level bestimmt das Klassen-Tier. Eine Figur, die in Part 06 beitritt, startet nicht als Base-Klasse.

**2 – Klassenpfad.** Aus `catalog/Unit-Classes.md`, ausschließlich mit dort existierenden Klassennamen. Der Pfad folgt den Verzweigungen des Baums – jede Klasse muss aus ihrer Vorgängerin tatsächlich hervorgehen können. Unique-Klassen sind Dardan und Hasan vorbehalten. Braucht die Figur eine Klasse, die es nicht gibt, wird sie **zuerst im Katalog angelegt** – ein Klassenname, der nur auf einem Charakterbogen steht, existiert nicht.

**3 – Archetyp.** Ein Satz, der sagt, wofür der Spieler diese Einheit einsetzt und wogegen sie verliert. Physischer Angreifer, Magier, Tank, Speedster, ausgewogen – oder eine begründete Mischung. Dieser Satz steuert Schritt 4 und 5; ohne ihn werden beide beliebig.

**4 – Basiswerte.** Ausgangspunkt ist die Meilenstein-Tabelle in `Progression-System.md` beim Beitrittslevel, also das, was eine mitgewachsene Einheit dort hätte. Darauf die Archetyp-Spreizung: was der Archetyp verspricht, geht nach oben, das Gegenstück nach unten, die Summe bleibt in der Nähe des Durchschnitts. Die Klassen-Tier-Modifikatoren aus dem Balancing-Guide kommen obendrauf – sie sind Teil der Klasse, nicht der Person.

**Spätzugänge brauchen hohe Basiswerte.** Ihnen bleiben deutlich weniger Level-Ups als den Vigilant Knights. Ein Part-07-Rekrut, der auf Wachstum gebaut ist, kommt nie an. Das Gefälle ist beabsichtigt: Startkapital gegen Zinseszins.

**5 – Wachstumsraten.** Das Budget über die acht Kampfwerte steht im Balancing-Guide, gestaffelt nach Rolle (ausgewogen / min-maxed / Lord). **MP wird separat budgetiert** und zählt nicht gegen dieses Budget – hohe MP macht eine Einheit nicht schwächer, sie macht sie zum Ressourcenverbraucher.

Innerhalb des Budgets gilt: Profil vor Gleichverteilung. Zwei bis drei Werte deutlich über dem Mittel, zwei bis drei deutlich darunter. Eine Einheit ohne Schwäche ist eine Einheit ohne Entscheidung, und Entscheidungen sind der Punkt (Design Pillar 3).

**6 – Maximalwerte.** Bezugspunkt ist der **Level-Cap** aus dem Balancing-Guide, nicht Stufe 45. *(Das Template nennt an dieser Stelle noch Stufe 45 – eine veraltete Angabe aus der Zeit vor dem aktuellen Level-Band.)* Kein Wert überschreitet den absoluten Cap seiner Spalte.

Und dann die **Erreichbarkeitsprobe**, die in diesem Projekt am häufigsten übersprungen wird:

```
erwarteter Wert = Basiswert
                + Wachstumsrate × (Level-Cap − Beitrittslevel)
                + Summe der Klassen-Tier-Modifikatoren auf dem Pfad
```

Der eingetragene Maximalwert ist der kleinere Wert aus *erwartet* und *Cap*. Steht dort etwas Höheres, ist es eine Zahl, die keine Einheit je erreichen kann – der Bogen verspricht dem Spieler dann etwas, das das System nicht liefert.

**7 – Fähigkeiten, Kampfkünste, Zauber.** Jeder Eintrag stammt aus `design/catalog/` oder wird dort angelegt. Pro Zeile: Klasse, Stufe, Name, Effekt – und bei Kampfkünsten und Zaubern die Kosten (Haltbarkeit oder MP). Der Effekt ist in einem Satz und in Spielbegriffen formuliert, so dass er implementierbar ist; „stärkt Verbündete" ist kein Effekt.

**Genau eine persönliche Fähigkeit pro Einheit.** Sie ist die mechanische Übersetzung dessen, was `charactercraft` über die Figur sagt – Design Pillar 4, Story und Gameplay sind dasselbe. Sie darf keine Klassenfähigkeit duplizieren und ist an eine Bedingung geknüpft, die der Spieler herstellen kann: eine Position, ein Zustand, ein Verzicht. Eine Passive, die immer gilt, ist ein Statbonus mit Namen.

**8 – Waffenfertigkeiten.** Nur Waffentypen, die es gibt (`catalog/Weapons.md`, `catalog/Magic-Spells.md`, Spalte *Weapon Types* in `Unit-Classes.md`). Ränge E–A. Die Typen müssen zu den Klassen des Pfads passen – eine Klasse, die keine Bögen führt, gibt keinem Bogenrang einen Ort. Eine Schwäche wird ausdrücklich benannt.

---

## Kontrollen über den Bogen hinaus

**Die Parallelstränge müssen sich entsprechen.** Part 05 und Part 06 rekrutieren gleich viele Einheiten in derselben Level-Bandbreite. Eine neue Einheit in einem Strang stellt die Frage, ob der andere ein Gegenstück hat – deckungsgleich in der Stärke, nicht in der Rolle.

**Rollenüberschneidung prüfen.** Bevor eine Einheit gebaut wird: Wer im Roster macht bereits dasselbe? Bei über 30 Einheiten und begrenzten Deployment-Slots konkurriert jede neue mit einer bestehenden. Der Unterschied muss taktisch sein, nicht nur biographisch.

**Keine Falle im Klassenbaum.** Beförderungen sind permanent. Jede Verzweigung, die dieser Bogen empfiehlt, muss eine Situation haben, in der sie die richtige Antwort ist. Ein Pfad, der bei jedem Fork die schwächere Option nimmt, ist kein Vorschlag, sondern eine Sackgasse.

**Keine Zahlen in die Kapitelprosa.** Werte, Stufen, Rundenzahlen und Klassennamen erscheinen im Bogen und im Level-Dokument, nie im Mund einer Figur.

---

## Bekannte Fallen

Die meisten spielbaren Bögen haben **leere** Werte-Tabellen. Das ist der offene Rückstand des Projekts, nicht der Normalzustand. Wird einer gefüllt, gilt die Ableitung oben vollständig – nicht „schnell plausible Zahlen eintragen". Und ein gefüllter Bogen ist kein Vorbild, nur weil er gefüllt ist: die wenigen bestehenden entstanden vor diesem Skill.

**Erfundene Klassen.** Der häufigste und teuerste Fehler. Ein Klassenname, der plausibel klingt, ist damit nicht im Katalog – *Warlord*, *Dark Mage*, *Hexenmutter* sind alle schon so entstanden. Jede Klasse im Pfad in `Unit-Classes.md` nachschlagen, keine ausgenommen. Und eine Unique-Klasse behauptet nur, wer Dardan oder Hasan ist.

**Erfundene Waffentypen.** Dieselbe Falle eine Ebene tiefer. Der Waffentyp steht in `catalog/Weapons.md`, `catalog/Magic-Spells.md` oder in der Spalte *Weapon Types* von `Unit-Classes.md` – oder er existiert nicht.

**Caps überschritten.** Maximalwerte werden geschätzt statt gerechnet. Die Erreichbarkeitsprobe oben ist genau dagegen da.

**Falscher Bezugslevel.** Stufe 45 ist das Promotions-Gate, nicht das Ende. Der Level-Cap steht im Balancing-Guide und liegt höher. Wo ein Bogen oder das Template „Max Level 45" sagt, ist das eine Altlast.

**Budget unterschritten ohne Ausgleich.** Ein niedriges Wachstum lässt sich nicht mit hohen Basiswerten begründen – die wirken zu Beginn, das Budget wirkt über 20 bis 50 Level-Ups. Wer unter dem Budget bleibt, begründet das über einen Cap-Vorteil oder eine starke Passive, nicht über den Startwert.

**Sprachmischung in den Tabellenköpfen.** „Kosten"/„Cost", „Effekt"/„Effect" wechseln innerhalb desselben Bogens. Innerhalb einer Datei durchhalten.

Welche Bögen heute konkret betroffen sind, steht in `notes/Character-Sheet-Drift.md` – dort mit Datei, Befund und Schwere. Diese Liste hier nennt die Fallen; jene Datei nennt die Fundstellen.

---

## Nach dem Ausfüllen

- Rekrutierungstabelle in `design/Progression-System.md` um die Einheit ergänzen (Beitrittslevel, Tier)
- Neue Klasse, Fähigkeit, Kampfkunst, Zauber oder Waffe → Eintrag im passenden `design/catalog/`-Dokument, sonst existiert sie nicht
- Persönliche Fähigkeit → Zeile in `catalog/Abilities.md`, Abschnitt *Personal Abilities*
- Trägt die Rekrutierung ein Level → `design/levels/` gegenprüfen
- `CHANGELOG.md` unter `[Unreleased]`: die Entscheidung, nicht die Datei – Archetyp und Nische, bei Änderungen an bestehenden Werten das Warum

## Vor dem Abschluss

- Beitrittslevel und Tier aus dem Progression-System, nicht geschätzt?
- Jede Klasse im Pfad existiert im Katalog und geht aus ihrer Vorgängerin hervor?
- Unique-Klasse nur bei Dardan oder Hasan?
- Basiswerte aus dem Meilenstein beim Beitrittslevel abgeleitet, Klassenmodifikator eingerechnet?
- Wachstumssumme im Budget, MP separat, Profil statt Gleichverteilung?
- Erreichbarkeitsprobe gerechnet – kein Maximalwert über Cap oder über dem, was erreichbar ist?
- Jede Fähigkeit, Kampfkunst und Waffenart im Katalog vorhanden?
- Genau eine persönliche Fähigkeit, an eine herstellbare Bedingung geknüpft?
- Eine benannte Schwäche – und eine Rolle, die keine bestehende Einheit schon besser ausfüllt?
- Bei Part 05/06: hat der andere Strang ein gleichwertiges Gegenstück?

---

Systemarbeit gehört zu Rulewright. Die Story-Hälfte desselben Bogens trägt `charactercraft` und wird **zuerst** geschrieben – die persönliche Fähigkeit übersetzt, was dort über die Figur steht, und kann ohne sie nicht abgeleitet werden.

Dieser Skill trägt die Regeln, `design/` trägt die Zahlen, `notes/Character-Sheet-Drift.md` trägt den aktuellen Stand des Bestands.
