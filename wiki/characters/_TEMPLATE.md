<!--
================================================================================
  VIGILANS NEXUM – CHARAKTER-TEMPLATE
================================================================================
  Wie dieses Template benutzen:
  1. Kopiere diese Datei in den passenden Unterordner:
     - Spielbare Charaktere → wiki/characters/playable/
     - Story-NPCs          → wiki/characters/story/
  2. Benenne die Datei nach Schema: Vorname-Nachname.md  (z.B. "Dardan-Niveli.md")
  3. Ersetze alle Platzhalter im Format {{FELDNAME}} mit echten Inhalten
  4. Pflichtabschnitte (Pflicht) müssen ausgefüllt werden
  5. Optionale Abschnitte (Optional) können gelöscht werden,
     wenn sie für den Charakter nicht zutreffen
  6. Behalte die Kommentare NICHT in der fertigen Datei —
     lösche alle HTML-Kommentare vor dem Commit
  7. Sprache: Deutsch (Prosa und Beschreibungen); Tabellen-Header auf Englisch
     wie im restlichen Wiki etabliert
================================================================================
-->

# {{CHARAKTER-NAME}} <!-- Pflicht -->

<!-- Pflicht: Querverweise zu verwandten Dateien -->
> **Verwandte Dateien:** [{{KAPITEL-ERSTAUFTRITT}}](../chapters/{{PART-ORDNER}}/{{KAPITEL-DATEI}}.md) · [{{HEIMATORT}}](../locations/{{LOCATION-PFAD}}.md)

---

## Persönliche Informationen <!-- Pflicht -->

<!-- Pflicht: Kerndaten der Person. Alle Felder ausfüllen. -->

**Name:** {{CHARAKTER-NAME}}

**Geschlecht:** {{GESCHLECHT}} <!-- z.B. Männlich / Weiblich -->

**Alter:** {{ALTER}} <!-- Alter in Jahren zum Zeitpunkt des Spielstarts -->

**Größe:** {{GROESSE}} cm

**Geburtstag:** {{GEBURTSTAG-REALWELT}} <!-- Format: TT.MM.JJJJ -->

**Ingame-Geburtstag:** {{GEBURTSTAG-TAG}}. {{GEBURTSTAG-MONAT}}, Imperialjahr {{GEBURTSTAG-JAHR}}

**Nationalität:** {{NATIONALITAET}} <!-- z.B. Königreich Adolla / Allianz Thysia / Vaestrall-Imperium -->

**Wohnort:** {{WOHNORT}}

---

## Erscheinungsbild <!-- Pflicht -->

<!-- Pflicht: 3 Absätze.
     Absatz 1: Körperbau, Teint, Gesichtszüge, Haar, Augen, besondere Merkmale.
     Absatz 2: Kleidung, Rüstung, Zubehör, getragene Waffen.
     Absatz 3: Gesamteindruck — wie wirkt der Charakter auf andere? -->

{{ERSCHEINUNGSBILD-ABSATZ-1}}

{{ERSCHEINUNGSBILD-ABSATZ-2}}

{{ERSCHEINUNGSBILD-ABSATZ-3}}

---

## Persönlichkeit <!-- Pflicht -->

<!-- Pflicht: 3–5 Absätze.
     Abdecken: Kernzüge, Motivation, Umgang mit anderen, Ängste/Schwächen,
     wie die Herkunft den Charakter prägte, Rolle in der Geschichte. -->

{{PERSOENLICHKEIT}}

**Persönlichkeitstyp:** {{MBTI}} <!-- z.B. INFP, ESTP — siehe Personality-Types-Reference.md -->

---

## Hintergrundgeschichte <!-- Pflicht -->

<!-- Pflicht: 3–5 Absätze.
     Abdecken: Familienhintergrund, Kindheit und prägende Erlebnisse,
     wie der Charakter an den aktuellen Punkt gelangt ist,
     Schlüsselerlebnisse, Verbindung zur Haupthandlung (falls vorhanden). -->

{{HINTERGRUNDGESCHICHTE}}

---

## Rekrutierung <!-- Pflicht -->

<!-- Pflicht: Wie/wann schließt sich der Charakter der Gruppe an? -->

**Startklasse:** {{STARTKLASSE}}

- Erster Auftritt: Part {{PART-NUMMER}}, Kapitel {{KAPITEL-NUMMER}}
- Rekrutierungsbedingung: {{REKRUTIERUNG}} <!-- z.B. Automatisch / Gespräch mit [Name] / Nebenziel abschließen -->
- Startausrüstung: {{STARTAUSRUESTUNG}}

---

## Basiswerte <!-- Pflicht -->

<!-- Pflicht: Werte zum Zeitpunkt der Rekrutierung auf dem Startniveau.
     Orientierung am Balancing-Guide für den jeweiligen Archetypen. -->

| HP  | MP  | Strength | Magic | Dexterity | Speed | Luck | Defense | Resistance |
| --- | --- | -------- | ----- | --------- | ----- | ---- | ------- | ---------- |
| {{HP}} | {{MP}} | {{STR}} | {{MAG}} | {{DEX}} | {{SPD}} | {{LCK}} | {{DEF}} | {{RES}} |

---

## Wachstumsraten <!-- Pflicht -->

<!-- Pflicht: Summe sollte zwischen 300 % und 420 % liegen.
     Archetyp-Richtwerte: Angreifer ~350 %, Tank ~300 %, Magier ~370 % usw. -->

| HP  | MP  | Strength | Magic | Dexterity | Speed | Luck | Defense | Resistance |
| --- | --- | -------- | ----- | --------- | ----- | ---- | ------- | ---------- |
| {{HP%}} | {{MP%}} | {{STR%}} | {{MAG%}} | {{DEX%}} | {{SPD%}} | {{LCK%}} | {{DEF%}} | {{RES%}} |

**Gesamtwachstum:** {{GESAMTWACHSTUM}} % <!-- Summe aller obigen Werte -->

**Archetyp:** {{ARCHETYP}} <!-- z.B. Ausgewogen / Physischer Angreifer / Magier / Tank / Speedster -->

---

## Maximalwerte <!-- Pflicht -->

<!-- Pflicht: Maximale Werte auf Stufe 45 (Master-/Unique-Klasse). -->

| HP  | MP  | Strength | Magic | Dexterity | Speed | Luck | Defense | Resistance |
| --- | --- | -------- | ----- | --------- | ----- | ---- | ------- | ---------- |
| {{HP-MAX}} | {{MP-MAX}} | {{STR-MAX}} | {{MAG-MAX}} | {{DEX-MAX}} | {{SPD-MAX}} | {{LCK-MAX}} | {{DEF-MAX}} | {{RES-MAX}} |

---

## Fähigkeiten <!-- Pflicht -->

<!-- Pflicht: Alle passiven Fähigkeiten, die durch Klassen freigeschaltet werden.
     "Persönliche Fähigkeit" ist die charakterspezifische Dauerpassive. -->

| Klasse | Stufe | Fähigkeit | Effekt |
| ------ | ----- | --------- | ------ |
| {{KLASSE}} | {{STUFE}} | {{FAEHIGKEIT}} | {{EFFEKT}} |

**Persönliche Fähigkeit:** {{PERS-FAEHIGKEIT}} — {{PERS-FAEHIGKEIT-EFFEKT}}

---

## Kampfkünste <!-- Pflicht -->

<!-- Pflicht: Aktive Kampffertigkeiten mit Kosten und Effekt.
     Kosten: entweder Haltbarkeit (Waffe) oder MP. -->

| Klasse | Stufe | Kampfkunst | Kosten | Effekt |
| ------ | ----- | ---------- | ------ | ------ |
| {{KLASSE}} | {{STUFE}} | {{KUNST-NAME}} | {{KOSTEN}} | {{KUNST-EFFEKT}} |

---

## Zaubersprüche <!-- Optional -->

<!-- Optional: Nur ausfüllen, wenn der Charakter Magie einsetzen kann.
     Element: Natura / Lux / Umbra -->

| Klasse | Stufe | Zauber | Element | Effekt |
| ------ | ----- | ------ | ------- | ------ |
| {{KLASSE}} | {{STUFE}} | {{ZAUBER-NAME}} | {{ELEMENT}} | {{ZAUBER-EFFEKT}} |

---

## Waffenfertigkeiten <!-- Pflicht -->

<!-- Pflicht: Startrang und Affinität für jeden relevanten Waffentyp.
     Rang: E / D / C / B / A  |  Affinität: Niedrig / Mittel / Hoch
     Waffentypen ohne Relevanz für den Charakter können weggelassen werden. -->

| Waffentyp | Startrang | Affinität |
| --------- | --------- | --------- |
| Schwert   | {{RANG}}  | {{AFF}}   |
| Lanze     | {{RANG}}  | {{AFF}}   |
| Axt       | {{RANG}}  | {{AFF}}   |
| Bogen     | {{RANG}}  | {{AFF}}   |
| Gauntlet  | {{RANG}}  | {{AFF}}   |
| Magie     | {{RANG}}  | {{AFF}}   |

**Bevorzugte Waffe:** {{BEVORZUGTE-WAFFE}}

**Schwächen:** {{WAFFENSCHWAECHEN}}

---

## Empfohlener Klassenpfad <!-- Pflicht -->

<!-- Pflicht: Klassenprogression von Citizen bis zur höchsten Klasse.
     Unique-Klasse ist optional und nur bei Hauptcharakteren relevant. -->

```
Citizen (Stufe 1)
    ↓
{{BASISKLASSE}} (Stufe 5)
    ↓
{{MITTELSTUFE-KLASSE}} (Stufe 10)
    ↓
{{FORTGESCHRITTENE-KLASSE}} (Stufe 20)
    ↓
{{MEISTER-KLASSE}} (Stufe 30)
    ↓
{{UNIQUE-KLASSE}} (Stufe 35)  ← Optional, nur für Hauptcharaktere
```

---

## Unterstützungsgespräche <!-- Optional -->

<!-- Optional: Unterstützungspartner und Gesprächsinhalte.
     S-Support nur für romantische Endgame-Paarungen. -->

### Mögliche Unterstützungspartner

- **{{PARTNER-NAME}}** — {{BEZIEHUNGSTYP}} <!-- z.B. Freund, Rivale, Romantisch, Mentor -->
- **{{PARTNER-NAME}}** — {{BEZIEHUNGSTYP}}

### Wichtige Unterstützungsmomente

- **C-Support mit {{NAME}}:** {{THEMA-C}}
- **B-Support mit {{NAME}}:** {{THEMA-B}}
- **A-Support mit {{NAME}}:** {{THEMA-A}}
- **S-Support mit {{NAME}}:** {{THEMA-S}} <!-- Optional: nur romantische Hauptpaarungen -->

---

## Story-Rolle <!-- Pflicht -->

<!-- Pflicht: Bedeutung und Entwicklung des Charakters im Spielverlauf. -->

**Bedeutung:** {{BEDEUTUNG}} <!-- z.B. Hauptcharakter / Nebencharakter / Rekrutierbarer NPC -->

**Charakterbogen:**

- **Part 1:** {{BOGEN-PART-1}}
- **Part 2:** {{BOGEN-PART-2}}
- **Part 3:** {{BOGEN-PART-3}}
- **Part 4:** {{BOGEN-PART-4}}

**Schlüsselkapitel:**

- Kapitel {{KAPITEL-NR}}: {{EREIGNIS}}
- Kapitel {{KAPITEL-NR}}: {{EREIGNIS}}

---

## Trivia <!-- Optional -->

<!-- Optional: Interessante Fakten, Inspirationsquellen, Entwicklungsnotizen. -->

- {{TRIVIA-1}}
- {{TRIVIA-2}}

---

## Verwandte Inhalte <!-- Pflicht -->

<!-- Pflicht: Links zu allen direkt verwandten Wiki-Seiten. -->

- **Kapitel:** {{KAPITEL-LINKS}}
- **Levels:** {{LEVEL-LINKS}}
- **Orte:** {{ORTS-LINKS}}
- **Andere Charaktere:** {{CHARAKTER-LINKS}}

---

**Version:** 1.0
**Erstellt:** {{DATUM-ERSTELLT}}
**Zuletzt aktualisiert:** {{DATUM-AKTUALISIERT}}
