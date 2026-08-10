<!--
================================================================================
  VIGILANS NEXUM – LEVEL-TEMPLATE
================================================================================
  Wie dieses Template benutzen:
  1. Kopiere diese Datei direkt in: design/levels/
  2. Benenne die Datei: Level-XX-Titel.md  (z.B. "Level-01-Every-End.md")
  3. Ersetze alle Platzhalter im Format {{FELDNAME}} mit echten Inhalten
  4. Pflichtabschnitte (Pflicht) müssen ausgefüllt werden
  5. Optionale Abschnitte (Optional) können gelöscht werden,
     wenn sie für das Level nicht zutreffen
  6. Behalte die Kommentare NICHT in der fertigen Datei —
     lösche alle HTML-Kommentare vor dem Commit
  7. Sprache: Deutsch (Überschriften und Beschreibungen);
     Tabellen-Header wie im restlichen Wiki auf Englisch
================================================================================
-->

# Level {{LEVEL-NUMMER}}: {{LEVEL-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Querverweise zu verwandten Dateien -->
> **Verwandte Dateien:** [Kapitel {{KAPITEL-NUMMER}}](../chapters/{{PART-ORDNER}}/{{KAPITEL-DATEI}}.md) · [{{LOCATION-NAME}}](../locations/{{LOCATION-PFAD}}.md)

---

## Levelinformationen <!-- Pflicht -->

<!-- Pflicht: Kerndaten des Levels. -->

**Levelnummer:** {{LEVEL-NUMMER}}

**Kapitel:** Kapitel {{KAPITEL-NUMMER}}: {{KAPITEL-TITEL}}

**Part:** Part {{PART-NUMMER}}: {{PART-NAME}}

**Levelname:** {{LEVEL-TITEL}}

**Typ:** {{TYP}} <!-- Story / Nebenmission / Paralogue / Gaiden -->

**Schwierigkeit (Normal):** {{SCHWIERIGKEIT}} <!-- ★☆☆☆☆ bis ★★★★★ -->

---

## Story-Kontext <!-- Pflicht -->

### Vor-Kampf-Zusammenfassung

<!-- Pflicht: 2–3 Absätze.
     Was geschah in der Geschichte vor dieser Schlacht?
     Warum kämpfen die Charaktere? Was steht auf dem Spiel? -->

{{VORGESCHICHTE}}

### Narrative Ziele

<!-- Pflicht: Was erreicht dieses Level in der Geschichte? -->

- **Charakterentwicklung:** {{CHAR-ENTWICKLUNG}}
- **Handlungsfortschritt:** {{PLOT-FORTSCHRITT}}
- **Weltenbau:** {{WELTENBAU}}

---

## Karte <!-- Pflicht -->

### Geländebeschreibung

<!-- Pflicht: Überblick über das Schlachtfeld. -->

- **Schauplatz:** {{SCHAUPLATZ}} <!-- z.B. Wald, Burg, Wüste, Stadt, Hafen -->
- **Größe:** {{GROESSE}} <!-- z.B. Klein / Mittel / Groß — ca. XX×XX Felder -->
- **Besonderheiten:** {{BESONDERHEITEN}} <!-- Flüsse, Berge, Festungen, zerstörbare Wände usw. -->

### Geländeeffekte

<!-- Pflicht: Tabelle der relevanten Geländetypen mit Effekten. -->

| Geländetyp | Verteidigungs-Bonus | Ausweich-Bonus | Bewegungskosten | Sondereffekt |
| ---------- | ------------------- | -------------- | --------------- | ------------ |
| Ebene      | +0                  | +0             | 1               | —            |
| Wald       | +1                  | +20            | 2               | —            |
| Gebirge    | +2                  | +30            | 3               | —            |
| {{TERRAIN}} | {{DEF-BONUS}}      | {{AVO-BONUS}}  | {{BEWEGUNG}}    | {{EFFEKT}}   |

### Kartenskizze <!-- Optional -->

<!-- Optional: ASCII-Darstellung oder textuelle Beschreibung der Kartenstruktur.
     Legende: N = Nord-Startzone, S = Süd-Startzone, C = Engpass, F = Festung,
     T = Schatztruhe, B = Boss-Position, P = Spieler-Startzone -->

```
{{KARTENSKIZZE}}
```

---

## Ziele <!-- Pflicht -->

### Siegbedingungen

<!-- Pflicht: Klare Sieg- und Niederlagebedingungen. -->

- **Primär:** {{SIEG-PRIMAER}} <!-- z.B. Alle Feinde besiegen / Boss besiegen / Thron einnehmen / X Runden überleben -->
- **Alternativ:** {{SIEG-ALTERNATIV}} <!-- Optional: z.B. Boss früh besiegen beendet den Kampf -->

### Niederlagebedingungen

<!-- Pflicht -->

- Dardan oder {{LORD-EINHEIT}} fällt
- {{WEITERE-NIEDERLAGEBEDINGUNG}} <!-- Optional: z.B. NPC stirbt / Timer abläuft / Feind erreicht Zielfeld -->

### Nebenziele (Bonus) <!-- Optional -->

<!-- Optional: Sekundäre Ziele mit konkreten Belohnungen. -->

- **Ziel:** {{NEBENZIEL-1}}
  - **Belohnung:** {{BELOHNUNG-1}}
- **Ziel:** {{NEBENZIEL-2}}
  - **Belohnung:** {{BELOHNUNG-2}}

---

## Einheitenaufstellung <!-- Pflicht -->

### Spielereinheiten

<!-- Pflicht: Welche Einheiten müssen / können eingesetzt werden? -->

**Pflichteinheiten:**
- {{PFLICHT-EINHEIT-1}} (Pflichtaufstellung)
- {{PFLICHT-EINHEIT-2}} (Pflichtaufstellung)

**Optionale Einheiten:** {{OPTIONALE-SLOTS}} freie Slots

**Empfohlenes Level:** {{EMPFOHLENES-LEVEL}}

**Vorbereitungen vor dem Kampf:**
- Konvoi zugänglich: {{KONVOI}} <!-- Ja / Nein -->
- Shop zugänglich: {{SHOP}} <!-- Ja / Nein -->
- Ausrüstung anpassen: {{AUSRUESTUNG}} <!-- Ja / Nein -->

---

## Feindliche Kräfte <!-- Pflicht -->

### Feindkomposition

<!-- Pflicht: Alle Feindeinheiten mit Verhalten.
     KI-Verhalten: Aggressiv / Defensiv / Unterstützend / Bewacht Boss -->

<!-- Generische Gegner haben keinen Charakterbogen. Ihre Werte gelten nur für
     diesen Kampf und stehen deshalb vollständig hier – keine Wachstumsraten.
     Mehrere Exemplare desselben Typs teilen sich eine Zeile. -->

| Klasse | Level | HP | MP | Str | Mag | Dex | Spd | Lck | Def | Res | Waffe | Anzahl | Position | KI |
| ------ | ----- | -- | -- | --- | --- | --- | --- | --- | --- | --- | ----- | ------ | -------- | -- |
| {{KLASSE}} | {{LEVEL}} | | | | | | | | | | {{WAFFE}} | {{ANZAHL}} | {{POSITION}} | {{KI}} |

**Gesamte Feindanzahl:** {{FEIND-GESAMT}} Einheiten

### Boss-Einheit <!-- Pflicht -->

<!-- Pflicht: Die kampfabhängigen Daten der Boss-Einheit.
     Die WERTE stehen NICHT hier, sondern auf dem Charakterbogen des Bosses,
     unter "Stats by Appearance" mit einer Zeile für dieses Kapitel.
     Hier wird verlinkt. Fehlt der Bogen oder die Zeile: melden, nicht erfinden. -->

**Name:** [{{BOSS-NAME}}](../../story/characters/story/{{BOSS-DATEI}}.md)

**Klasse:** {{BOSS-KLASSE}}

**Level:** {{BOSS-LEVEL}} <!-- muss mit der Zeile auf dem Bogen übereinstimmen -->

**Ausrüstung:**
- {{BOSS-WAFFE}} (Might: {{MT}}, Hit: {{HIT}}, Krit: {{CRIT}})
- {{BOSS-ITEM}}

**Fähigkeiten/Fertigkeiten:**
- {{BOSS-FAEHIGKEIT-1}}: {{BOSS-EFFEKT-1}}
- {{BOSS-FAEHIGKEIT-2}}: {{BOSS-EFFEKT-2}}

**KI-Muster:** {{BOSS-KI}}

**Dialoge:**
- **Vor dem Kampf:** „{{BOSS-DIALOG-VOR}}"
- **Im Kampf (gegen {{SPEZ-CHARAKTER}}):** „{{BOSS-DIALOG-SPEZ}}" <!-- Optional -->
- **Niederlage:** „{{BOSS-DIALOG-NIEDERLAGE}}"

---

## Verstärkungen <!-- Optional -->

<!-- Optional: Nur ausfüllen, wenn Verstärkungswellen existieren. -->

### Welle 1

**Auslöser:** {{AUSLOESER-1}} <!-- z.B. Runde X / Bedingung erfüllt -->

**Einheiten:** {{VERSTAERKUNG-1}}

**Spawnpunkt:** {{SPAWN-1}}

**KI:** {{KI-1}}

### Welle 2 <!-- Optional, bei weiteren Wellen fortführen -->

**Auslöser:** {{AUSLOESER-2}}

**Einheiten:** {{VERSTAERKUNG-2}}

**Spawnpunkt:** {{SPAWN-2}}

**KI:** {{KI-2}}

---

## Besondere Ereignisse <!-- Optional -->

<!-- Optional: Zeitgesteuerte oder bedingte Ereignisse auf der Karte. -->

### Rundenbasierte Ereignisse

- **Runde {{RUNDE}}:** {{EREIGNIS}}
- **Runde {{RUNDE}}:** {{EREIGNIS}}

### Bedingte Ereignisse

- **Wenn {{CHARAKTER}} mit {{NPC}} spricht:** {{EREIGNIS}} <!-- z.B. Rekrutierung / Item-Belohnung -->
- **Wenn Spieler {{ORT}} erreicht:** {{EREIGNIS}}
- **Wenn {{CHARAKTER}} überlebt:** {{EREIGNIS}}

### Umgebungsgefahren <!-- Optional -->

- **{{GEFAHR}}:** {{GEFAHREN-BESCHREIBUNG}}

---

## Gegenstände & Belohnungen <!-- Pflicht -->

### Truhen & Beute <!-- Optional -->

<!-- Optional: Truhen und versteckte Gegenstände auf der Karte. -->

| Gegenstand | Position | Schlüssel erforderlich? |
| ---------- | -------- | ----------------------- |
| {{ITEM}} | {{POSITION}} | {{SCHLUESSEL}} |

### Dorf-Belohnungen <!-- Optional -->

<!-- Optional: Besuchbare Dörfer mit Belohnungen. -->

| Dorf | Benötigter Charakter | Belohnung |
| ---- | -------------------- | --------- |
| {{DORF}} | {{CHARAKTER}} | {{BELOHNUNG}} |

### Nach-Kampf-Belohnungen <!-- Pflicht -->

- **Gold:** {{GOLD-BELOHNUNG}}
- **Erfahrung:** {{EP-BELOHNUNG}}
- **Story-Gegenstand:** {{STORY-ITEM}} <!-- Schlüsselgegenstand, falls vorhanden -->

---

## Eingeführte Mechaniken <!-- Optional -->

<!-- Optional: Neue Spielmechaniken oder Tutorialelemente, die in diesem Level erstmals erklärt werden. -->

### Neue Tutorial-Elemente

- **{{MECHANIK-NAME}}:** {{MECHANIK-ERKLAERUNG}}

### Strategische Hinweise

- {{HINWEIS-1}}
- {{HINWEIS-2}}

---

## Schwierigkeitsvarianten <!-- Optional -->

<!-- Optional: Anpassungen für die verschiedenen Schwierigkeitsgrade. -->

### Einfach

- Feindanzahl: {{EINFACH-FEINDE}}
- Feindeigenschaften: {{EINFACH-STATS}}
- Verstärkungen: {{EINFACH-VERSTAERKUNG}}

### Schwer

- Feindanzahl: {{SCHWER-FEINDE}}
- Feindeigenschaften: {{SCHWER-STATS}}
- Verstärkungen: {{SCHWER-VERSTAERKUNG}}
- Boss-Extras: {{SCHWER-BOSS}}

### Wahnsinn

- Feindanzahl: {{WAHNSINN-FEINDE}}
- Feindeigenschaften: {{WAHNSINN-STATS}}
- Boss-Extras: {{WAHNSINN-BOSS}}
- Neue Feindtypen: {{WAHNSINN-NEU}}

---

## Designer-Notizen <!-- Optional -->

<!-- Optional: Angedachte Spielstrategie und Balancing-Gedanken. -->

### Beabsichtigter Lösungsansatz

- Phase 1: {{PHASE-1}}
- Phase 2: {{PHASE-2}}
- Endphase: {{ENDPHASE}}

### Typische Fehler

- {{FEHLER-1}}
- {{FEHLER-2}}

### Speedrun / Optimalstrategie <!-- Optional -->

- Rundenziel: {{RUNDENZIEL}} Runden
- Schlüsselzüge: {{SCHLUESSEL-ZUEGE}}

---

## Playtesting-Checkliste <!-- Optional -->

<!-- Optional: Qualitätssicherung vor dem Commit. -->

- [ ] Durchschnittliche Spielzeit: ca. {{SPIELZEIT}} Minuten
- [ ] Schwierigkeit angemessen für Kapitelposition
- [ ] Alle Ziele sind für den Spieler klar erkennbar
- [ ] Boss ist herausfordernd, aber fair
- [ ] Verstärkungen fühlen sich nicht unfair an
- [ ] Nebenziele sind erreichbar
- [ ] Keine Softlock-Szenarien vorhanden

---

## Verwandte Inhalte <!-- Pflicht -->

<!-- Pflicht: Links zu allen direkt verwandten Wiki-Seiten. -->

- **Kapitel:** [Chapter-{{KAPITEL-NUMMER}}-{{KAPITEL-DATEI-TITEL}}.md](../chapters/{{PART-ORDNER}}/Chapter-{{KAPITEL-NUMMER}}-{{KAPITEL-DATEI-TITEL}}.md)
- **Charaktere:** [{{CHARAKTER-1}}.md](../characters/{{CHAR-PFAD-1}}.md), [{{CHARAKTER-2}}.md](../characters/{{CHAR-PFAD-2}}.md)
- **Ort:** [{{LOCATION-NAME}}.md](../locations/{{LOCATION-PFAD}}.md)
- **Vorheriges Level:** [Level-{{VORHERIGES-NR}}.md](Level-{{VORHERIGES-NR}}-{{VORHERIGER-TITEL}}.md)
- **Nächstes Level:** [Level-{{NAECHSTES-NR}}.md](Level-{{NAECHSTES-NR}}-{{NAECHSTER-TITEL}}.md)

---

**Version:** 1.0
**Erstellt:** {{DATUM-ERSTELLT}}
**Zuletzt aktualisiert:** {{DATUM-AKTUALISIERT}}
**Designer:** {{DESIGNER}}
