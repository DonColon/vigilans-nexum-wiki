<!--
================================================================================
  VIGILANS NEXUM – LOCATIONS-TEMPLATE
================================================================================
  Wie dieses Template benutzen:
  1. Kopiere diese Datei in den passenden Unterordner:
     - Kontinente / Regionen → wiki/locations/
     - Länder               → wiki/locations/countries/
     - Städte               → wiki/locations/cities/
     - Dörfer               → wiki/locations/villages/
     - Festungen            → wiki/locations/fortresses/
  2. Benenne die Datei nach dem Ortsnamen (z.B. "Bellum.md")
  3. Ersetze alle Platzhalter im Format {{FELDNAME}} mit echten Inhalten
  4. Pflichtabschnitte (Pflicht) müssen ausgefüllt werden
  5. Optionale Abschnitte (Optional) können gelöscht werden,
     wenn sie für den Ort nicht zutreffen
  6. Behalte die Kommentare NICHT in der fertigen Datei —
     lösche alle HTML-Kommentare vor dem Commit
  7. Sprache: Deutsch
================================================================================
-->

# {{ORTSNAME}} <!-- Pflicht -->

<!-- Pflicht: Querverweise zu verwandten Dateien -->
> **Verwandte Dateien:** [{{ELTERNORT}}](../{{ELTERNORT-PFAD}}.md) · [{{KAPITEL-ERSTAUFTRITT}}](../chapters/{{PART-ORDNER}}/{{KAPITEL-DATEI}}.md)

---

## Grundinformationen <!-- Pflicht -->

<!-- Pflicht: Kerndaten des Ortes. -->

**Name:** {{ORTSNAME}}

**Typ:** {{TYP}} <!-- Kontinent / Land / Stadt / Dorf / Wahrzeichen / Festung -->

**Region:** {{REGION}} <!-- In welchem Land / auf welchem Kontinent liegt der Ort? -->

**Bevölkerung:** {{BEVOELKERUNG}} <!-- Anzahl oder Schätzung: Klein / Mittel / Groß -->

**Regierungsform:** {{REGIERUNGSFORM}} <!-- Optional: Monarchie / Rat / Militär / usw. -->

**Hauptsprache:** {{HAUPTSPRACHE}} <!-- z.B. Common / regionaler Dialekt -->

**Religion:** {{RELIGION}} <!-- z.B. Aurelys / gemischt / andere -->

---

## Geographie <!-- Pflicht -->

### Lage & Klima

<!-- Pflicht: Grundlegende geographische Daten. -->

**Koordinaten:** {{KOORDINATEN}} <!-- Relative Lage, z.B. "Nordküste von Tridera" -->

**Klima:** {{KLIMA}} <!-- Gemäßigt / Tropisch / Arid / Kalt / usw. -->

**Gelände:** {{GELÄNDE}} <!-- Gebirge / Ebene / Wald / Wüste / Küste / Urban -->

**Natürliche Ressourcen:** {{RESSOURCEN}}

### Bezirke & Wahrzeichen <!-- Pflicht -->

<!-- Pflicht: Die wichtigsten Teilbereiche oder Sehenswürdigkeiten des Ortes. -->

- **{{BEZIRK-1}}:** {{BEZIRK-1-BESCHREIBUNG}}
- **{{BEZIRK-2}}:** {{BEZIRK-2-BESCHREIBUNG}}
- **{{BEZIRK-3}}:** {{BEZIRK-3-BESCHREIBUNG}}

---

## Beschreibung <!-- Pflicht -->

### Visueller Überblick

<!-- Pflicht: 2–3 Absätze.
     Architekturstil, markante Gebäude, Atmosphäre, erster Eindruck für Besucher. -->

{{VISUELLER-UEBERBLICK}}

### Kulturelle Eigenheiten <!-- Optional -->

<!-- Optional: Was macht diesen Ort einzigartig?
     Bräuche, Kleidung, Küche, Feste, wichtige Daten. -->

{{KULTURELLE-EIGENHEITEN}}

---

## Geschichte <!-- Pflicht -->

### Gründung

<!-- Pflicht: Wann und wie wurde der Ort gegründet? Wer gründete ihn und warum? -->

{{GRUENDUNG}}

### Wichtige historische Ereignisse <!-- Pflicht -->

<!-- Pflicht: Mindestens 2–3 Einträge. Format: Imperialjahr — Ereignis. -->

- **Imperialjahr {{JAHR}}:** {{EREIGNIS}}
- **Imperialjahr {{JAHR}}:** {{EREIGNIS}}
- **Imperialjahr {{JAHR}}:** {{EREIGNIS}}

### Aktuelle Ära (Imperialjahr 1357) <!-- Pflicht -->

<!-- Pflicht: Aktueller Zustand des Ortes.
     Wie hat der Krieg den Ort beeinflusst?
     Welche Rolle spielt er in der Geschichte? -->

{{AKTUELLE-AERA}}

---

## Politik & Macht <!-- Pflicht -->

### Führung

<!-- Pflicht: Wer regiert diesen Ort? -->

**Aktueller Herrscher:** {{HERRSCHER}} <!-- Name und Titel -->

**Regierungsform:** {{REGIERUNGSFORM-DETAIL}}

**Schlüsselfiguren:**
- **{{FIGUR-1}}:** {{FIGUR-1-ROLLE}}
- **{{FIGUR-2}}:** {{FIGUR-2-ROLLE}}

### Fraktionen & Einfluss <!-- Pflicht -->

<!-- Pflicht: Aktive politische Kräfte am Ort, inklusive Kult von Varnel falls relevant. -->

- **{{FRAKTION-1}}:** {{FRAKTION-1-EINFLUSS}}
- **{{FRAKTION-2}}:** {{FRAKTION-2-EINFLUSS}}
- **Kult von Varnel:** {{KULT-PRAESENZ}} <!-- Präsenz / Einfluss / verborgen / nicht vorhanden -->

### Beziehungen zu anderen Nationen <!-- Pflicht -->

<!-- Pflicht: Diplomatischer Status gegenüber den vier Hauptmächten. -->

- **Königreich Adolla:** {{REL-ADOLLA}} <!-- Verbündet / Neutral / Feindlich -->
- **Allianz Thysia:** {{REL-THYSIA}}
- **Vaestrall-Imperium:** {{REL-VAESTRALL}}
- **Bellum:** {{REL-BELLUM}}

---

## Wirtschaft & Handel <!-- Optional -->

<!-- Optional: Wirtschaftliche Daten, wenn spielrelevant. -->

**Hauptindustrien:** {{INDUSTRIEN}}

**Exporte:** {{EXPORTE}}

**Importe:** {{IMPORTE}}

**Wohlstandsniveau:** {{WOHLSTAND}} <!-- Arm / Bescheiden / Wohlhabend / Opulent -->

---

## Militär & Verteidigung <!-- Optional -->

<!-- Optional: Militärische Daten, wenn spielrelevant. -->

**Verteidigungsanlagen:**
- Mauern: {{MAUERN}} <!-- Ja / Nein — Zustand -->
- Garnison: {{GARNISON}}
- Strategische Bedeutung: {{STRATEGISCHE-BEDEUTUNG}} <!-- Hoch / Mittel / Gering -->

**Streitkräfte:**
- **Stehendes Heer:** {{HEER}}
- **Besondere Einheiten:** {{SPEZIAL-EINHEITEN}}
- **Befehlshaber:** {{BEFEHLSHABER}}

---

## Story-Relevanz <!-- Pflicht -->

### Rolle in Vigilans Nexum

<!-- Pflicht: Welche Parts/Kapitel spielen an diesem Ort? Was passiert dort? -->

**Parts/Kapitel:**
- Part {{PART}}, Kapitel {{KAPITEL}}: {{WAS-PASSIERT}}
- Part {{PART}}, Kapitel {{KAPITEL}}: {{WAS-PASSIERT}}

**Wichtige Story-Ereignisse:**
- {{STORY-EREIGNIS-1}}
- {{STORY-EREIGNIS-2}}

### Wichtige NPCs

<!-- Pflicht: Charaktere, die mit diesem Ort verbunden sind. -->

- **{{NPC-1}}:** {{NPC-1-ROLLE}}
- **{{NPC-2}}:** {{NPC-2-ROLLE}}

### Level/Kämpfe <!-- Pflicht -->

<!-- Pflicht: An diesem Ort stattfindende Kämpfe. -->

- **Level {{LEVEL-NR}}:** {{KAMPF-BESCHREIBUNG}}

---

## Sehenswürdigkeiten <!-- Pflicht -->

<!-- Pflicht: Die wichtigsten interaktiven oder narrativen Orte.
     Mindestens 2 Einträge. -->

**{{SEHENSWUERDIGKEIT-1}}:**
- **Beschreibung:** {{SW-1-BESCHREIBUNG}}
- **Bedeutung:** {{SW-1-BEDEUTUNG}}
- **Zugang:** {{SW-1-ZUGANG}} <!-- Öffentlich / Eingeschränkt / Story-gesperrt -->

**{{SEHENSWUERDIGKEIT-2}}:**
- **Beschreibung:** {{SW-2-BESCHREIBUNG}}
- **Bedeutung:** {{SW-2-BEDEUTUNG}}
- **Zugang:** {{SW-2-ZUGANG}}

### Läden & Dienste <!-- Optional -->

<!-- Optional: Ingame-Läden, die der Spieler besuchen kann. -->

**Waffenschmiede:**
- Verfügbare Waffen: {{WAFFEN-ANGEBOT}}
- Verfügbare Gegenstände: {{ITEMS-ANGEBOT}}

**Magierladen:** <!-- Optional -->
- Verfügbare Zauber: {{ZAUBER-ANGEBOT}}

**Gasthaus/Kaserne:** <!-- Optional -->
- Dienste: {{GASTHAUS-DIENSTE}}

---

## Bewohner <!-- Optional -->

<!-- Optional: Demographische Daten und bemerkenswerte Einwohner. -->

### Bevölkerungsstruktur

**Spezies/Völker:** {{VOELKER}}

**Gesellschaftliche Schichten:**
- **Adel:** {{ADEL-ANTEIL}}
- **Händler/Handwerker:** {{HAENDLER-ANTEIL}}
- **Bürger:** {{BUERGER-ANTEIL}}
- **Fremde:** {{FREMDE-ANTEIL}} <!-- Flüchtlinge, Reisende usw. -->

### Bemerkenswerte Einwohner

- **{{EINWOHNER-1}}:** {{EINWOHNER-1-BESCHREIBUNG}}
- **{{EINWOHNER-2}}:** {{EINWOHNER-2-BESCHREIBUNG}}

---

## Religion & Kultur <!-- Optional -->

<!-- Optional: Religiöse und kulturelle Besonderheiten. -->

**Dominante Religion:** {{RELIGION-DETAIL}}

**Religiöse Stätten:**
- **{{TEMPEL-NAME}}:** {{TEMPEL-BESCHREIBUNG}}

**Kleruseinfluss:** {{KLERUS-EINFLUSS}}

**Kulturelle Praktiken:** {{KULTURELLE-PRAKTIKEN}}

---

## Trivia & Design-Notizen <!-- Optional -->

<!-- Optional: Inspiration, Easter Eggs, Entwicklungsnotizen, Atmosphäre/Musik. -->

- {{TRIVIA-1}}
- {{TRIVIA-2}}

---

## Verwandte Inhalte <!-- Pflicht -->

<!-- Pflicht: Links zu allen direkt verwandten Wiki-Seiten. -->

- **Elternort:** [{{ELTERNORT}}.md](../{{ELTERNORT-PFAD}}.md)
- **Kapitel:** [Chapter-{{KAPITEL-NR}}.md](../chapters/{{PART-ORDNER}}/Chapter-{{KAPITEL-NR}}-{{KAPITEL-TITEL}}.md)
- **Charaktere:** [{{CHARAKTER}}.md](../characters/{{CHAR-PFAD}}.md)
- **Level:** [Level-{{LEVEL-NR}}.md](../levels/Level-{{LEVEL-NR}}-{{LEVEL-TITEL}}.md)

---

**Version:** 1.0
**Erstellt:** {{DATUM-ERSTELLT}}
**Zuletzt aktualisiert:** {{DATUM-AKTUALISIERT}}
