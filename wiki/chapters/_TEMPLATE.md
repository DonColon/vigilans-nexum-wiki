<!--
================================================================================
  VIGILANS NEXUM – KAPITEL-TEMPLATE
================================================================================
  Wie dieses Template benutzen:
  1. Kopiere diese Datei in den passenden Part-Ordner:
     wiki/chapters/Part-0X-Part-Name/
  2. Benenne die Datei: Chapter-XX-Titel.md  (z.B. "Chapter-01-Every-End.md")
  3. Ersetze alle Platzhalter im Format {{FELDNAME}} mit echten Inhalten
  4. Pflichtabschnitte (Pflicht) müssen ausgefüllt werden
  5. Optionale Abschnitte (Optional) können gelöscht werden
  6. Behalte die Kommentare NICHT in der fertigen Datei —
     lösche alle HTML-Kommentare vor dem Commit
  7. SPRACHE DER PROSA: DEUTSCH (Pflicht)
     Szenen-Überschriften, Dialoge und alle Erzähltexte auf Deutsch.
     Level-Boxen und Metadaten dürfen gemischt sein.
  8. Dialogformat: „Text in Anführungszeichen", sagte Charakter.
     (Deutsche Guillemets-Variante: „…" statt "…")
================================================================================
-->

# Kapitel {{KAPITEL-NUMMER}}: {{KAPITEL-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Kopfzeile mit Grunddaten -->
**Kapitel:** {{KAPITEL-NUMMER}}
**Titel:** {{KAPITEL-TITEL}}
**Part:** Part {{PART-NUMMER}}: {{PART-NAME}}

---

## {{SZENE-01-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Eröffnungsszene. 3–6 Absätze.
     Setzt den Schauplatz mit sensorischen Details: Was ist zu sehen, zu hören, zu fühlen?
     Führt Charakteraktionen und Dialoge ein.
     Dialoge im deutschen Guillemets-Format: „Text", sagte Charakter. -->

{{SZENE-01-PROSA}}

„{{DIALOG-ZEILE-1}}", sagte {{CHARAKTER-A}}.

{{CHARAKTER-B}} {{NONVERBALE-REAKTION}}.

„{{DIALOG-ZEILE-2}}", {{ANTWORT-CHARAKTER}}.

{{EMOTIONALER-BEAT}}

---

## {{SZENE-02-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Entwicklungsszene. Aufbau von Spannung oder Charakterbeziehungen.
     Natürlicher Übergang zwischen Szenen. -->

{{SZENE-02-PROSA}}

---

## {{SZENE-03-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Kampfvorbereitung und Level-Einbettung.
     Setzt die Einsätze und Ziele der Schlacht.
     Level-Box direkt nach dem dramatischen Höhepunkt der Vorbereitung einfügen. -->

{{SZENE-03-PROSA-VOR-LEVEL}}

> **Level {{LEVEL-NUMMER}} beginnt:**
>
> **Siegbedingungen:**
> - **Sieg:** {{SIEG-BEDINGUNG}} <!-- Pflicht: z.B. Alle Feinde besiegen / Boss besiegen / Thron einnehmen -->
> - **Niederlage:** {{NIEDERLAGE-BEDINGUNG}} <!-- Pflicht: z.B. Dardan fällt / NPC stirbt -->
> - **Nebenziel:** {{NEBENZIEL}} — Belohnung: {{NEBENZIEL-BELOHNUNG}} <!-- Optional -->
>
> **Mechaniken:** <!-- Optional: Neue Mechaniken oder Tutorialhinweise -->
> - {{MECHANIK-1}}
> - {{MECHANIK-2}}
>
> **Aufstellung:**
> - **Pflichteinheiten:** {{PFLICHTEINHEITEN}}
> - **Optional:** {{OPTIONALE-SLOTS}} Einheiten frei wählbar

<!-- Pflicht: Szene nach dem Kampf — unmittelbare Nachwirkung -->
{{SZENE-03-PROSA-NACH-LEVEL}}

---

## {{SZENE-04-TITEL}} <!-- Pflicht -->

<!-- Pflicht: Auflösung und Überleitung.
     Emotionale Beats des Kapitels abschließen.
     Charakterreflexionen oder Gespräche.
     Ende mit starkem emotionalen Moment oder Cliffhanger.
     Vorbereitung auf den Aufhänger des nächsten Kapitels. -->

{{SZENE-04-PROSA}}

---

## {{SZENE-05-TITEL}} <!-- Optional -->

<!-- Optional: Zusätzliche Szenen bei komplexen Kapiteln mit mehreren Kämpfen
     oder langen Zwischensequenzen. Beliebig viele weitere Szenen möglich.
     Nummerierung fortführen: SZENE-05, SZENE-06, usw. -->

{{SZENE-05-PROSA}}

---

**END OF CHAPTER {{KAPITEL-NUMMER}}**

---

## Verwandte Inhalte <!-- Pflicht -->

<!-- Pflicht: Links zu allen direkt verwandten Wiki-Seiten. -->

- **Level:** [Level-{{LEVEL-NUMMER}}-{{LEVEL-DATEI-TITEL}}.md](../../levels/Level-{{LEVEL-NUMMER}}-{{LEVEL-DATEI-TITEL}}.md)
- **Charaktere:** [{{CHARAKTER-1}}.md](../../characters/{{CHAR-PFAD-1}}.md), [{{CHARAKTER-2}}.md](../../characters/{{CHAR-PFAD-2}}.md)
- **Ort:** [{{LOCATION-NAME}}.md](../../locations/{{LOCATION-PFAD}}.md)
- **Vorheriges Kapitel:** [Chapter-{{VORHERIGES-NR}}.md](Chapter-{{VORHERIGES-NR}}-{{VORHERIGER-TITEL}}.md)
- **Nächstes Kapitel:** [Chapter-{{NAECHSTES-NR}}.md](Chapter-{{NAECHSTES-NR}}-{{NAECHSTER-TITEL}}.md)

---

## Autorennotizen <!-- Optional -->

<!-- Optional: Designnotizen für den Autor — werden nicht im fertigen Spiel sichtbar.
     Hier Konsistenzprüfungen, offene Fragen und Querverweise notieren. -->

**Wichtige Handlungspunkte:**
- {{HANDLUNGSPUNKT-1}}
- {{HANDLUNGSPUNKT-2}}

**Charakterentwicklung:**
- **{{CHARAKTER-NAME}}:** {{ENTWICKLUNG-BESCHREIBUNG}}

**Kontinuitätsnotizen:**
- Vorherige Kapitel prüfen auf: Zeitlinie, Verletzungen, Beziehungsstand
- In diesem Kapitel eingeführte Gegenstände/Waffen: {{ITEMS}}
- Erwähnte oder neue NPCs: {{NPCS}}

**Ton des Kapitels:** {{TON}} <!-- z.B. Hoffnung / Verzweiflung / Entschlossenheit / Trauer -->

---

**Version:** 1.0
**Erstellt:** {{DATUM-ERSTELLT}}
**Zuletzt aktualisiert:** {{DATUM-AKTUALISIERT}}
