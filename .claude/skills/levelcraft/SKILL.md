---
name: 'levelcraft'
description: "Binding rules for Vigilans Nexum level design — the design documents in design/levels/, their derivation from the chapter, map and objective design, enemy composition, boss units, reinforcements, rewards and difficulty variants. Load before creating or revising any file in design/levels/, before designing a map or enemy roster for a chapter, and before answering questions about how a battle plays. Covers the derivation order, objective variety across a part, the deployment and enemy-level bands, the mandatory agreement between the chapter's level box and the design document, and the known drift in the existing levels. The level box inside the chapter text belongs to Lorekeeper."
---

Dieser Skill trägt das **Level-Design** von Vigilans Nexum: die Dokumente in `design/levels/`, aus denen ein Kapitel eine spielbare Karte wird.

Ein Level ist die Stelle, an der Story und Systeme dasselbe sagen müssen. Das Kapitel behauptet, dass eine Brücke gehalten wird – das Level entscheidet, ob das eine Entscheidung ist oder eine Formalie. Ein Level, das seine Szene nur bebildert, ist ein verschenktes Kapitel.

---

## Zwei Dateien, zwei Besitzer

Jedes Level existiert an zwei Orten. Das ist kein Versehen, sondern die Arbeitsteilung:

| | Wo | Wer | Was |
|---|---|---|---|
| **Level-Kasten** | im Kapiteltext | Lorekeeper | Sieg, Niederlage, Sekundärziel, Mechaniken, Aufstellung – die Kurzfassung, die der Leser sieht |
| **Level-Design** | `design/levels/Level-XX-*.md` | Rulewright | Karte, Gelände, Feindkomposition, Boss, Verstärkungen, Belohnungen, Schwierigkeitsvarianten |

**Der Kasten ist die Zusammenfassung, das Dokument die Ausführung.** Beide müssen dasselbe sagen. Wo sie das nicht tun, gewinnt der Kapiteltext – er ist geschrieben, gelesen und in der Story verankert; das Design-Dokument entsteht danach.

Zwei Richtungen, je nachdem wo das Kapitel steht:

- **Kapitel existiert bereits** (die Regel, für 09–48): Das Design-Dokument wird **aus** dem Kasten abgeleitet. Alles, was der Kasten sagt, ist gesetzt. Alles, was er offenlässt, wird hier zum ersten Mal entschieden.
- **Kapitel ist noch nicht geschrieben** (49–56): Missionsziel und Mechanik entscheidet Dardan im Briefing. Der Kasten entsteht mit dem Kapitel, das Dokument danach.

**Der Kasten wird hier nie bearbeitet.** Widerspricht er dem, was das Level braucht, ist das eine Meldung an Dardan – kein Edit in `story/`.

---

## Bevor eine Zeile geschrieben wird

Kein Level wird aus dem Gedächtnis gebaut. Vorher gelesen:

| Was | Wo |
|---|---|
| Der Kasten – Ziel, Mechanik, Aufstellung, was in der Szene passiert | die Kapiteldatei in `story/chapters/` |
| Empfohlenes Spielerlevel und Feindlevel für diesen Part | `design/Progression-System.md`, *Level Curve per Part* |
| Deployment-Limit für diese Kapitelspanne | `design/Progression-System.md`, *Deployment Limits by Chapter* |
| Wo dieses Kapitel auf der Schwierigkeitskurve liegt (Spike oder nicht) | `design/Progression-System.md`, *Difficulty Curve* |
| Feindstärke, Boss-Faktor, Modus-Skalierung, Gold pro Kapitel | `design/Balancing-Guide.md` |
| Welche Klassen es gibt und welche Waffen sie führen | `design/catalog/Unit-Classes.md` |
| Welche Mechanik hier eingeführt wird und was sie tut | `design/mechanics/` |
| Welche Einheiten der Spieler zu diesem Zeitpunkt überhaupt hat | `design/Progression-System.md`, *Recruitment Timeline* |
| Wie der Ort aussieht | `story/locations/` |
| Was die Nachbarlevel tun | `design/levels/README.md` |

Fehlt etwas – eine Klasse, eine Mechanik, ein Ort: **Lücke melden, nicht füllen.** Ein Feindtyp, den es nur in einem Level-Dokument gibt, existiert nicht.

---

## Die Ableitung, in dieser Reihenfolge

Wer bei der Karte anfängt, baut ein Schlachtfeld und sucht sich danach ein Ziel dazu. Das ist die Reihenfolge, in der Level entstehen, die nur schön aussehen.

**1 – Was die Szene verlangt.** Ein Satz: Was steht in diesem Kampf auf dem Spiel, und was soll der Spieler dabei fühlen? Verteidigung eines Ortes, den man verlieren kann. Ein Durchbruch unter Zeitdruck. Ein Duell, das niemand gewinnt. Dieser Satz steuert alles Folgende – ohne ihn wird jede spätere Entscheidung beliebig.

**2 – Missionsziel und Niederlagebedingung.** Aus dem Kasten, wenn er existiert. Das Ziel muss zu Schritt 1 passen: Wer eine Belagerung erzählt, gibt kein *Rout Enemy*. Die Niederlagebedingung nennt immer die Lord-Einheit des Strangs – Dardan in Part 05, Hasan in Part 06 – plus das, was die Szene sonst noch verlieren kann.

**3 – Die tragende Mechanik.** Höchstens **eine neue** pro Level. Sie muss im Kasten stehen und in `design/mechanics/` dokumentiert sein. Ist sie es nicht, wird sie dort zuerst angelegt. Die Karte wird um diese Mechanik gebaut, nicht umgekehrt – ein Level, dessen neue Mechanik man ignorieren kann, hat sie nicht eingeführt.

**4 – Die Karte.** Größe aus dem Deployment-Limit ableiten, nicht schätzen: mehr Einheiten brauchen mehr Fläche, sonst blockieren sie sich. Jede Karte braucht mindestens eine Stelle, an der Position eine Entscheidung ist – ein Engpass, eine Brücke, eine Anhöhe, ein zweiter Zugang, den man aufgeben kann. Eine offene Ebene ist keine taktische Karte, sondern ein Rechenblatt.

Geländetypen bekommen ihre Werte aus dem Balancing-Guide. Was das Gelände erzählt, kommt aus `story/locations/` – die Karte ist derselbe Ort wie im Kapitel.

**5 – Feindkomposition.** Feindlevel aus dem Band des Parts, nicht aus dem Bauch. Die Mischung folgt der Karte: Wer eine Brücke verteidigt, stellt keine reine Kavallerie dagegen. Jede Feindklasse existiert im Katalog, jede Feind-KI ist benannt (aggressiv, defensiv, unterstützend, bewacht Boss) – ein Gegner ohne KI-Angabe ist nicht implementierbar.

Die Feindzahl folgt dem Deployment-Limit und der Kartengröße. Mehr Gegner sind nicht schwerer, nur länger.

**6 – Der Boss.** Werte aus dem Balancing-Guide abgeleitet, nicht erfunden. Der Boss braucht eine Fähigkeit, die den Kampf verändert, und einen Grund, warum man ihn nicht einfach umstellt. Seine Dialoge – vor dem Kampf, bei Niederlage, optional gegen eine bestimmte Figur – stehen im Level-Dokument und sind der einzige Ort, an dem hier Prosa entsteht. Sie folgen `storycraft` und der Stimme aus dem Charakterbogen.

**7 – Verstärkungen und Ereignisse.** Nur mit Auslöser, Spawnpunkt und KI. Verstärkungen, die aus dem Nichts hinter dem Spieler erscheinen, verletzen Pillar 5 – der Spieler muss vorher planen können. Ankündigen: durch eine sichtbare Tür, ein Tor, einen Weg, den man kommen sieht.

**8 – Belohnungen.** Gold aus der Spanne des Parts. Truhen, Dörfer und Sekundärziele bekommen konkrete Gegenstände aus `design/catalog/`. Ein Sekundärziel ohne Belohnung ist keine Entscheidung, und eine Belohnung ohne Risiko ist keine.

**9 – Schwierigkeitsvarianten.** Aus der Modus-Tabelle im Balancing-Guide abgeleitet. Was sich auf Schwer und Wahnsinn *zusätzlich* ändert – ein neuer Feindtyp, eine frühere Verstärkungswelle – wird benannt, nicht nur prozentual skaliert.

---

## Das Template

`design/levels/_TEMPLATE.md` ist die Form. **Pflichtabschnitte werden ausgefüllt, optionale entweder ausgefüllt oder gelöscht** – ein `{{PLATZHALTER}}` bleibt nie stehen, und ein leerer Abschnitt bleibt nie leer.

Die acht bestehenden Dateien `Level-01` bis `Level-08` folgen einer älteren, kürzeren Gliederung. Sie werden beim Ausfüllen **ersetzt**, nicht ergänzt.

Sprache: Überschriften und Beschreibungen Deutsch, Tabellenköpfe Englisch – wie im Template angegeben und im übrigen Wiki üblich. Innerhalb einer Datei durchhalten.

---

## Kontrollen über das einzelne Level hinaus

Ein Level wird nie allein beurteilt. Vier Prüfungen gegen seine Nachbarn:

**Kasten und Dokument sagen dasselbe.** Die wichtigste Kontrolle dieses Skills. Sieg, Niederlage, Sekundärziel, Mechanik und Aufstellung stehen an zwei Orten – nach jeder Änderung am Dokument gegen den Kapiteltext prüfen. Weicht der Kasten ab, wird er gemeldet, nicht angepasst.

**Zielvarianz über den Part.** Vor dem Festlegen des Ziels die Nachbarlevel in `design/levels/README.md` ansehen. Dreimal *Rout Enemy* hintereinander ist kein Part, sondern dasselbe Level dreimal. Ein Part von acht Kapiteln trägt mindestens vier verschiedene Zielarten.

**Die Parallelstränge müssen sich entsprechen.** Part 05 und Part 06 teilen ein Feindlevelband und müssen dieselben Bedingungen bieten: gleiches Deployment-Limit, vergleichbare Kartengröße, vergleichbare Feindzahl. Ein Level in einem Strang stellt immer die Frage nach seinem Gegenstück – gleichwertig in der Härte, ausdrücklich **nicht** in der Form. Part 05 erzählt Sünden, Part 06 Tugenden; die Ziele dürfen und sollen sich unterscheiden.

**Der Spieler hat, was das Level verlangt.** Gegen die Rekrutierungstabelle prüfen: Ein Level, das Flugeinheiten oder einen Heiler voraussetzt, muss von einer Einheit lösbar sein, die der Spieler zu diesem Zeitpunkt besitzt. Pflichteinheiten müssen zu dieser Zeit im richtigen Strang stehen – wer bei Dardan ist, ist nicht bei Hasan.

---

## Die Pillars am Level geprüft

Jedes Level läuft durch `design/Design-Pillars.md`. Vier Fragen, die hier konkret werden:

- **Bonds:** Belohnt die Karte Einheiten, die zusammenstehen? Gibt es eine Stelle, an der der Nexus die richtige Antwort ist?
- **Depth:** Gibt es mehr als einen Weg durch diese Karte?
- **Weight:** Kann der Spieler hier etwas verlieren, das nicht wiederkommt?
- **Fairness:** Kann er vorher planen? Nach einer Niederlage sehen, warum? Es gibt keine Überraschung, die man nur beim zweiten Versuch überlebt – das ist die Grenze zwischen schwer und unfair, und sie ist eine Anti-Pillar.

Und die Anti-Pillar, die Level am häufigsten verletzen: **kein Grinding-Zwang.** Ein Level, das nur mit übertrainierten Einheiten lösbar ist, ist falsch balanciert, nicht anspruchsvoll.

---

## Bekannte Fallen

**Der Kasten wird stillschweigend uminterpretiert.** Der häufigste Weg, wie Dokument und Kapitel auseinanderlaufen: Das Sekundärziel im Kasten heißt „Schütze alle Zivilisten", im Dokument steht „die meisten". Wörtlich übernehmen oder melden.

**Feindzahl statt Feinddesign.** Schwierigkeit entsteht durch Position, KI und Zusammensetzung, nicht durch Menge. Doppelt so viele Gegner heißt doppelt so lange, nicht doppelt so schwer.

**Verstärkungen als Strafe.** Eine Welle im Rücken des Spielers, die er nicht kommen sehen konnte, ist der klassische Fairness-Bruch. Auslöser und Spawnpunkt müssen im Voraus lesbar sein.

**Die Karte ignoriert den Ort.** Das Kapitel spielt in einer bestimmten Stadt, in einer bestimmten Jahreszeit, nach einem bestimmten Ereignis. Eine generische Karte macht den Schauplatz austauschbar – und Anti-Pillar 5 heißt „Generic High Fantasy".

**Zahlen wandern in den Kapiteltext.** Feindlevel, Rundenzahlen, Boss-Werte und Klassennamen leben im Level-Dokument und im Kasten. Nie im Mund einer Figur.

**Deployment-Limits auseinandergelaufen.** Die parallelen Stränge tragen derzeit unterschiedliche Aufstellungsgrößen. Vor dem Setzen eines Deployment-Werts das Limit im Progression-System nachschlagen und den Gegenstrang prüfen.

Wo der Bestand heute konkret abweicht – mit Kapitel, Befund und Schwere – steht in `notes/Level-Design-Drift.md`. Dieser Skill nennt die Fallen, jene Datei die Fundstellen.

---

## Nach dem Ausfüllen

- Status in `design/levels/README.md` aktualisieren – ohne Indexeintrag existiert die Datei nicht
- Neue Klasse, Waffe, Fähigkeit oder Gegenstand → Eintrag im passenden `design/catalog/`-Dokument
- Neue Mechanik → eigenes Dokument in `design/mechanics/` nach dessen Template, plus Zeile im dortigen README
- Ort verlinkt, Kapitel verlinkt, Vorgänger- und Nachfolgelevel verlinkt
- Weicht der Kapitel-Kasten ab: melden, nicht ändern
- `CHANGELOG.md` unter `[Unreleased]`: die Entscheidung, nicht die Datei – Missionsziel und tragende Mechanik, bei Änderungen an Bestehendem das Warum

## Vor dem Abschluss

- Missionsziel, Niederlagebedingung, Sekundärziel und Mechanik stimmen wörtlich mit dem Kapitel-Kasten überein?
- Feindlevel aus dem Band des Parts, nicht geschätzt?
- Deployment-Limit aus dem Progression-System – und im Gegenstrang derselbe Wert?
- Höchstens eine neue Mechanik, und trägt die Karte sie wirklich?
- Mindestens eine Geländestelle, an der Position eine Entscheidung ist?
- Jede Feindklasse und jeder Gegenstand im Katalog vorhanden?
- Jeder Gegner mit KI-Verhalten, jede Verstärkung mit Auslöser und Spawnpunkt?
- Boss mit Werten, einer kampfverändernden Fähigkeit und Dialogen?
- Alle Pflichteinheiten zu diesem Zeitpunkt rekrutiert und im richtigen Strang?
- Sekundärziel mit konkreter Belohnung aus dem Katalog?
- Schwierigkeitsvarianten benannt, nicht nur prozentual?
- Zielart weicht von den direkten Nachbarlevels ab?
- Alle Template-Kommentare und Platzhalter gelöscht, Version und Datum gesetzt?

---

Level-Design gehört zu Rulewright. Der Kasten im Kapiteltext gehört Lorekeeper und folgt `story/Writing-Style-Guide.md`; Boss-Dialoge folgen `storycraft`. Dieser Skill trägt die Regeln, `design/Balancing-Guide.md` trägt die Zahlen, `notes/Level-Design-Drift.md` trägt den Stand des Bestands.
