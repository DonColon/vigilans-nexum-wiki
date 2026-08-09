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

## Empfohlene Reihenfolge

1. `Corvan-Gault.md` und `Maike-Collis.md` nach `statcraft` neu ableiten – sie sind die einzigen Bögen, die derzeit falsche Zahlen behaupten statt gar keine
2. Template-Frage entscheiden (Überschriftensprache)
3. Werte-Tabellen füllen, wenn eine Figur spielrelevant wird – nicht auf Vorrat

---

**Stand:** 2026-08-10 · Momentaufnahme, nicht normativ. `design/` und `story/` gewinnen bei Widerspruch. Die Regeln stehen in `charactercraft` und `statcraft`; diese Datei sagt nur, wo der Bestand heute davon abweicht.
