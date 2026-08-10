<!--
================================================================================
  VIGILANS NEXUM – MECHANIC-TEMPLATE
================================================================================
  Wie dieses Template benutzen:
  1. Kopiere diese Datei und benenne sie nach der Mechanik (z.B. "Stealth.md")
  2. Ersetze alle Platzhalter in [ECKIGEN KLAMMERN] mit echten Inhalten
  3. Pflichtabschnitte (<!-- Pflicht -->) müssen ausgefüllt werden
  4. Optionale Abschnitte (<!-- Optional -->) können gelöscht werden,
     wenn sie für die Mechanik nicht relevant sind
  5. Behalte die Kommentare NICHT in der fertigen Datei —
     lösche alle HTML-Kommentare vor dem Commit
  6. Sprache: Deutsch (Prosa und Abschnittsnamen)
================================================================================
-->

# [Mechanic-Name] <!-- Pflicht -->

<!-- Pflicht: Querverweise zu verwandten Mechanic-Dateien und Katalog-Einträgen -->
> **Verwandte Dateien:** [Datei A](../pfad/Datei-A.md) · [Datei B](../pfad/Datei-B.md)

---

## Übersicht <!-- Pflicht -->

<!-- Pflicht: 2–4 Sätze, die die Mechanik und ihre Rolle im Spielsystem erklären.
     Was ist sie? Wann kommt sie zum Einsatz? Was unterscheidet sie von ähnlichen Mechaniken? -->

*[Kurze Beschreibung der Mechanik und ihrer Funktion im Kampfsystem.]*

<!-- Optional: Übersichtstafel mit den wichtigsten Kennzahlen der Mechanik.
     Passend für Mechaniken mit klar definierten Parametern (Phase, Ressource, usw.) -->

|              | [Mechanic-Name]        |
| ------------ | ---------------------- |
| Phase        | *[Player/Enemy Phase]* |
| Auslösung    | *[Wie wird sie aktiv]* |
| Ressource    | *[MP / Keine / usw.]*  |
| Besonderheit | *[Kernmerkmal]*        |

---

## Voraussetzungen <!-- Pflicht -->

<!-- Pflicht: Welche Bedingungen müssen erfüllt sein, damit die Mechanik angewendet werden kann?
     Falls keine Voraussetzungen existieren, schreibe: "Keine besonderen Voraussetzungen." -->

| Bedingung | Regel |
| --------- | ----- |
| *[z.B. Einheitentyp]* | *[Regel]* |
| *[z.B. Position / Formation]* | *[Regel]* |

---

## Kosten <!-- Pflicht -->

<!-- Pflicht: Was zahlt der Spieler für den Einsatz?
     Eine Ressource (MP, Haltbarkeit), eine Aktion, eine Position, ein Risiko –
     oder eine Kombination. Ein System ohne Kosten ist keine Entscheidung,
     sondern eine Belohnung mit Regeln drumherum.
     Zweite Pflichtangabe: Sind die Kosten VOR dem Einsatz sichtbar?
     Wenn nein, verletzt das System Pillar 5 – der Spieler soll planen können,
     nicht erst nach dem Fehler verstehen.
     Konkrete Zahlen gehören in den Balancing-Guide und werden hier verlinkt. -->

| Was | Wert |
| --- | ---- |
| Ressource | *[MP / Haltbarkeit / keine]* |
| Aktion | *[verbraucht den Zug? / freie Aktion]* |
| Weitere Kosten | *[Position, Risiko, Verzicht]* |
| Vor Einsatz sichtbar | *[wie der Spieler die Kosten erkennt]* |

---

## Kernregeln <!-- Pflicht -->

<!-- Pflicht: Die zentralen Regeln der Mechanik, so präzise wie möglich.
     Tabellen, Aufzählungen und Formeln sind alle willkommen.
     Dieser Abschnitt ist das Herzstück des Dokuments. -->

*[Beschreibung der Kernregeln, Formeln und Abläufe.]*

---

## Erwerb / Zugang <!-- Pflicht -->

<!-- Pflicht: Wie kommt der Spieler / eine Einheit an diese Mechanik?
     Falls die Mechanik universal ist (gilt für alle Einheiten), schreibe das explizit. -->

| Quelle | Beschreibung | Verfügbarkeit |
| ------ | ------------ | ------------- |
| *[Klassenaufstieg / Item / Story / universal]* | *[Beschreibung]* | *[Verfügbarkeit]* |

---

## Strategische Tiefe <!-- Pflicht -->

<!-- Pflicht: Welche taktischen Entscheidungen eröffnet diese Mechanik dem Spieler?
     Mindestens 3–5 Sätze oder Aufzählungspunkte. Darf auch Beispiele enthalten. -->

*[Beschreibung der taktischen Möglichkeiten und des strategischen Wertes.]*

---

## Design Pillars <!-- Pflicht -->

<!-- Pflicht: Warum gehört dieses System ins Spiel?
     Alle fünf Fragen aus design/Design-Pillars.md ausgeschrieben beantworten,
     nicht abhaken. Ein "Nein" ist eine gültige Antwort, wenn sie begründet ist –
     mehr als zwei bedeuten Redesign, nicht Nachbessern.
     Ohne diesen Abschnitt fragt in einem halben Jahr jemand,
     warum es das System gibt, und findet keine Antwort. -->

| Pillar | Frage | Antwort |
| ------ | ----- | ------- |
| **Bonds** | Verstärkt es die Verbindungen zwischen Einheiten? | |
| **Depth** | Einfach zu lernen, schwer zu meistern? | |
| **Weight** | Haben die Entscheidungen langfristige Folgen? | |
| **Integration** | Erzählt die Mechanik eine Geschichte? | |
| **Fairness** | Ist die Herausforderung respektvoll gegenüber der Zeit des Spielers? | |

**Anti-Pillar-Gegenprobe:** {{ANTI-PILLAR}}
<!-- Kein Grinding-Zwang, keine Macht ohne Preis, nichts, das nur mit
     übertrainierten Einheiten funktioniert, nichts generisch Austauschbares. -->

---

## Einführung <!-- Pflicht -->

<!-- Pflicht: Wo im Spielverlauf lernt der Spieler dieses System?
     Vigilans Nexum führt Mechaniken über Situationen ein, nicht über Tutorials.
     Eine Karte, auf der die neue Fähigkeit der offensichtliche Ausweg ist,
     lehrt sie besser als ein Textkasten.
     Muss mit der Spalte "New Mechanics" in design/levels/README.md
     übereinstimmen – und pro Level wird höchstens eine Mechanik eingeführt. -->

**Erstes Kapitel:** {{KAPITEL}}

**Wie es eingeführt wird:** {{IN-WORLD-EINFUEHRUNG}}
<!-- Die Situation, die es lehrt – nicht der Text, der es erklärt. -->

**Was der Spieler vorher können muss:** {{VORWISSEN}}

---

## Katalog <!-- Pflicht -->

<!-- Pflicht: EIN LINK, keine Tabelle.
     Die Einträge dieses Systems – Fähigkeiten, Kampfkünste, Zauber, Waffen –
     leben ausschließlich in design/catalog/. Dieses Dokument beschreibt,
     WAS sie sind; der Katalog listet, WELCHE es gibt.
     Auf denselben Katalogeintrag verweisen auch der Charakterbogen
     (Personal Abilities) und die Klasse in Unit-Classes.md.
     Eine Tabelle mit Einträgen an dieser Stelle erzeugt eine zweite Wahrheit.
     Führt die Mechanik keine Einträge: Abschnitt löschen. -->

Alle Einträge: [{{KATALOG-NAME}}](../catalog/{{KATALOG-DATEI}}.md)

---

## Balancing-Richtlinien <!-- Optional -->

<!-- Optional: Numerische Richtwerte, Skalierungsformeln, oder Designgrenzen.
     Wichtig bei Mechaniken mit konkreten Zahlenwerten (Schaden, Prozentwerte, usw.) -->

| Parameter | Wert / Formel |
| --------- | ------------- |
| *[z.B. Basisschaden]* | *[Wert]* |
| *[z.B. Skalierung]* | *[Formel]* |

---

## Interaktion mit anderen Mechaniken <!-- Optional -->

<!-- Optional: Wie verhält sich diese Mechanik in Kombination mit anderen Systemen?
     Synergie-Hinweise, bekannte Kombinationen, oder Einschränkungen. -->

| Mechanik | Interaktion |
| -------- | ----------- |
| *[Andere Mechanik]* | *[Beschreibung der Interaktion]* |

---

## UI & Anzeige <!-- Optional -->

<!-- Optional: Wie wird die Mechanik im Spiel dem Spieler kommuniziert?
     Symbole, Farben, Menüpositionen, HUD-Elemente. -->

*[Beschreibung der UI-Darstellung.]*

---

## Charakter-Zuweisungen <!-- Optional -->

<!-- Optional: Falls die Mechanik charakterspezifische Varianten hat,
     hier eine Übersichtstabelle. -->

| Charakter | [Parameter] | Typ |
| --------- | ----------- | --- |
| *[Name]* | *[Wert]* | *[Kategorie]* |

---

<!-- Pflicht: Footer mit Metadaten und Querverweisen -->
---

**Version:** 1.0
**Erstellt:** [DATUM]
**Zuletzt aktualisiert:** [DATUM]
**Querverweise:** [Datei A](../pfad/Datei-A.md) · [Datei B](../pfad/Datei-B.md)
