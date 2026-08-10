# Character Sheet Drift

Bestandsaufnahme der Charakterbögen in `story/characters/`, durchgeführt am 2026-08-10. Auslöser: Die Skills `charactercraft` und `statcraft` trugen ihre Belege als eingebaute Zählungen („26 der 28 Bögen", „alle 39 Bögen"). Zahlen in einem verbindlichen Regeldokument veralten und werden dann als Regel gelesen – also stehen sie ab jetzt hier.

Diese Datei ist die **Beweisseite** zu den beiden Skills. Die Skills tragen die Regeln, diese Datei trägt den Stand.

---

## Gesamtbild

39 Bögen: 28 spielbar unter `playable/`, 11 reine Story-Figuren unter `story/`.

Die Story-Hälfte ist über den Bestand hinweg belastbar. Der offene Rückstand liegt fast vollständig in der Gameplay-Hälfte: **26 der 28 spielbaren Bögen haben leere Werte-Tabellen.** Das ist der Normalzustand des Rückstands, nicht der Normalzustand eines Bogens – wird einer davon gefüllt, gilt die Ableitung aus `statcraft` vollständig.

Die zwei gefüllten Bögen sind zugleich die zwei mit den meisten Regelverstößen. Sie entstanden vor `statcraft` und sind kein Vorbild.

---

## Befunde in der Gameplay-Hälfte

| Bogen | Befund | Schwere | Belegte Stelle |
|---|---|---|---|
| `playable/Corvan-Gault.md` | Klassen *Warlord* und *Ironclad* existieren nicht in `design/catalog/Unit-Classes.md` | Hoch | Klassenpfad |
| `playable/Corvan-Gault.md` | Beansprucht eine Unique-Klasse – die sind Dardan und Hasan vorbehalten | Hoch | Klassenpfad |
| `playable/Corvan-Gault.md` | Wachstumssumme unter Budget, begründet mit „kompensiert durch rohe Stärke und Defense" – Basiswerte kompensieren kein Wachstumsbudget | Mittel | Wachstumsraten |
| `playable/Maike-Collis.md` | Klassen *Mage*, *Dark Mage*, *Dunkelmagierin*, *Dark Scholar*, *Hexenmutter* existieren nicht; der Umbra-Ast heißt Umbramancer → Umbra Sage → Tenebrae → Shadow Monarch | Hoch | Klassenpfad |
| `playable/Maike-Collis.md` | Beansprucht eine Unique-Klasse | Hoch | Klassenpfad |
| `playable/Maike-Collis.md` | Waffentyp *Dark Tome* steht in keinem Katalogdokument | Mittel | Waffenfertigkeiten |
| beide | Maximalwerte über dem absoluten Cap ihrer Spalte | Hoch | Maximalwerte |
| beide | „Max Level 45" als Bezugspunkt – 45 ist das Promotions-Gate, der Level-Cap steht im Balancing-Guide und liegt höher | Mittel | Maximalwerte |

---

## Befunde in der Story-Hälfte

| Befund | Umfang | Schwere |
|---|---|---|
| Abschnittsüberschriften Englisch, Prosa Deutsch | gesamter Bestand – das ist die **gelebte Konvention** | — |
| `story/characters/_TEMPLATE.md` verwendet deutsche Überschriften und weicht damit vom Bestand ab | Template | Mittel |
| Sprachmischung in Tabellenköpfen: „Effekt"/„Effect", „Kosten"/„Cost" wechseln innerhalb desselben Bogens | mehrere Bögen | Niedrig |

Die Template-Divergenz ist die einzige mit Entscheidungsbedarf: entweder das Template an den Bestand angleichen oder den Bestand umstellen. Beides ist eine Entscheidung von Dardan, keine Nebenwirkung des nächsten neuen Bogens. Bis dahin folgen neue Bögen dem Bestand.

---

## Befunde bei den Zeitangaben

Geprüft am 2026-08-10, nachdem die Umrechnung in [Calendar.md](../story/lore/Calendar.md) festgeschrieben wurde: Realjahr = Imperialjahr + 660, Alter = 1357 − Imperialjahr.

**Die Differenz von 660 hält über den gesamten Bestand** – bis auf drei Bögen, bei denen im Feld *Birthday* das Imperialjahr steht statt des Realjahres:

| Bogen | Birthday steht | müsste heißen | Schwere |
|---|---|---|---|
| `playable/Claude-Luenava.md` | 11.08.**1335** | 11.08.**1995** | Mittel |
| `playable/Kassandra-Aetos.md` | 21.06.**1319** | 21.06.**1979** | Mittel |
| `playable/Rohan-Ashveil.md` | 14.10.**1319** | 14.10.**1979** | Mittel |

**Fünf Bögen haben ein Alter, das nicht zum Geburtsjahr passt – und sie irren nicht zufällig.**

Rechnet man für jeden Bogen `Imperialjahr + Alter`, ergibt sich das Startjahr, von dem er ausgeht. Über alle 26 Bögen mit beiden Angaben:

| Impliziertes Startjahr | Anzahl | Bögen |
|---|---|---|
| **1357** ✓ | 21 | der gesamte übrige Bestand |
| **1347** | 3 | `Aldric-Halvorn`, `Kassandra-Aetos`, `Rohan-Ashveil` |
| **1358** | 2 | `Hasan-Eyletmez`, `Asta-Concordia` |

Das sind keine fünf Einzelfehler, sondern **zwei Gruppen mit je einer gemeinsamen falschen Annahme**. Die Zahl 1347 kommt sonst nirgends im Repository vor – vermutlich wurden diese drei Bögen unter einem früheren Startjahr geschrieben und beim Umstellen auf 1357 nicht nachgezogen.

**Am 2026-08-10 von Dardan entschieden und umgesetzt.** In beiden Gruppen galt: Das **Alter** ist die Wahrheit, das Geburtsjahr wurde nachgezogen – außer bei Hasan, wo umgekehrt entschieden wurde.

| Bogen | Entscheidung | Geburtsjahr | Alter |
|---|---|---|---|
| `Aldric-Halvorn.md` | Alter 30 stimmt | 1317 → **1327** (real 1977 → **1987**) | 30 |
| `Kassandra-Aetos.md` | Alter 28 stimmt | 1319 → **1329** (real **1989**) | 28 |
| `Rohan-Ashveil.md` | Alter 28 stimmt | 1319 → **1329** (real **1989**) | 28 |
| `Asta-Concordia.md` | so alt wie Shira (18) | 1339 unverändert | 19 → **18** |
| `Hasan-Eyletmez.md` | 20, gleich alt wie Dardan | 1338 → **1337** (real 1998 → **1997**) | 20 |

**Zu Hasan:** Zunächst war entschieden, ihn auf 19 zu setzen. Dagegen stand seine Backstory – „Dardan war sein bester Freund seit dem Tag an dem sie **beide sechs Jahre alt** waren" –, die bei einem Jahr Abstand nicht aufgeht. Also wurde umgekehrt entschieden: Das Alter 20 bleibt, das Geburtsjahr wandert auf 1337. Hasan und Dardan sind damit im selben Jahr geboren, und die Zeile stimmt ohne Eingriff in die Prosa.

### Mechanische Korrekturen, gleichzeitig erledigt

| Bogen | Was |
|---|---|
| `Claude-Luenava.md` | Realjahr 1335 → **1995** (Imperialjahr stand im Realfeld) |
| `Rijona-Alior.md` | *Ashfall* → **Mistfallen** (17.09.) |
| `Maluna-Eloise.md` | *Bloomtide* → **Mirthan** (20.05.) |
| `Corvan-Gault.md` | *Springtide* → **Aeloria** (13.04.) |
| `Maike-Collis.md` | *Summerpeak* → **Skyblaze** (25.07.) |
| `Aldric-Halvorn.md` | *Harvestfall* → **Hallowtide** (04.10.) |

### Stand nach der Korrektur

Alle drei Kalenderregeln halten über den gesamten Bestand:

- Realjahr − Imperialjahr = 660 → **keine Abweichung**
- Imperialjahr + Alter = 1357 → **keine Abweichung** (26 Bögen mit beiden Angaben)
- Jeder Monatsname steht im Kalender → **keine Abweichung**

**Korrektur zu einer früheren Fassung dieses Berichts:** Dort stand, die beiden +1-Fälle könnten dadurch erklärt sein, dass der Geburtstag im Startjahr noch bevorsteht. Das ist falsch – ein noch nicht erreichter Geburtstag macht eine Figur *jünger*, nie älter. Ein zu hohes Alter lässt sich so nicht erklären. Bei Hasan und Asta ist entweder das Alter oder das Geburtsjahr falsch.

Das Spielstartdatum innerhalb des Jahres bleibt trotzdem offen und sollte festgelegt werden – es entscheidet bei jeder Figur, ob sie am Starttag schon Geburtstag hatte.

**Fünf Monatsnamen existieren im Kalender nicht:**

| Monat | Vorkommen | steht im Kalender |
|---|---|---|
| Harvestfall | `Aldric-Halvorn.md` | nein – Monat 10 heißt *Hallowtide* |
| Ashfall | 1× | nein |
| Bloomtide | 1× | nein |
| Springtide | 1× | nein |
| Summerpeak | 1× | nein |

Dieselbe Falle wie bei den erfundenen Klassennamen: Der Name klingt plausibel, steht aber in keiner Quelle. Der Kalender sagt jetzt ausdrücklich, dass die zwölf Namen vollständig sind.

---

## Empfohlene Reihenfolge

1. **Spielstartdatum festlegen** – Tag und Monat im Imperialjahr 1357. Die Bögen rechnen derzeit alle mit `Alter = 1357 − Geburtsjahr`, also so, als hätte jede Figur ihren Geburtstag am Starttag schon gehabt. Solange kein Datum feststeht, ist das eine stillschweigende Annahme
2. `Corvan-Gault.md` und `Maike-Collis.md` nach `statcraft` neu ableiten – sie sind die einzigen Bögen, die derzeit falsche Zahlen behaupten statt gar keine
3. Template-Frage entscheiden, falls noch offen
4. Werte-Tabellen füllen, wenn eine Figur spielrelevant wird – nicht auf Vorrat

~~Zeitangaben korrigieren~~ – am 2026-08-10 vollständig erledigt, siehe oben.

---

**Stand:** 2026-08-10 · Momentaufnahme, nicht normativ. `design/` und `story/` gewinnen bei Widerspruch. Die Regeln stehen in `charactercraft` und `statcraft`; diese Datei sagt nur, wo der Bestand heute davon abweicht.
