---
name: 'charactercraft'
description: "Binding rules for the narrative half of a Vigilans Nexum character sheet — personal data, appearance, personality, backstory, recruitment framing, supports, story role. Load before creating or revising any file in story/characters/, and before answering questions about who a character is. Covers section order and form, the wound/lie/test-moment method, idiolect, the wiki-first verification pass, and the known drift in existing sheets. The gameplay half (stats, growth rates, classes, abilities) belongs to `statcraft`."
---

Dieser Skill trägt die **Story-Hälfte** eines Charakterbogens: wer die Figur ist, wie sie aussieht, woher sie kommt, was sie in der Geschichte tut. Für Basiswerte, Wachstumsraten, Klassenpfad und Fähigkeiten gilt `statcraft`. Für den Ton von Kapitelprosa gilt `storycraft` – ein Bogen ist kein Kapitel, aber er wird in derselben Stimme geschrieben.

Ein Charakterbogen ist kein Steckbrief zum Abhaken. Er ist die Quelle, aus der später jede Szene mit dieser Figur gespeist wird. Was hier ungenau steht, wird in zwanzig Kapiteln ungenau nachgeschlagen.

---

## Bevor eine Zeile geschrieben wird

Der Bogen behauptet nichts, was nicht geprüft ist. **Wiki-first, ausnahmslos.** Vor dem Schreiben nachschlagen:

| Was | Wo |
|---|---|
| Orte, Herkunft, Wohnort | `story/locations/` – Ort nicht vorhanden heißt: Ort existiert nicht |
| Familie, Verwandte, Mentoren | die Bögen dieser Figuren in `story/characters/` |
| Erstauftritt und alles, was die Figur dort tut | die Kapiteldatei in `story/chapters/` |
| Ingame-Geburtstag, Monatsnamen, Imperialjahr | `story/lore/Calendar.md` |
| Kult, Götter, Nexus | `story/lore/Mythology.md` |
| Strangzugehörigkeit (Part 05 = Dardan/Adolla, Part 06 = Hasan/Vaestrall) | `story/README.md` |
| MBTI-Typen | `story/Personality-Types.md` |

Wenn etwas fehlt: **Lücke melden, nicht füllen.** Ein erfundener Heimatort steht danach für immer im Wiki und wird von der nächsten Sitzung als Wahrheit gelesen.

Erscheint die Figur bereits in geschriebenen Kapiteln, wird der Bogen **aus dem Kapiteltext abgeleitet**, nicht neben ihn gestellt. Der Text gewinnt.

---

## Wo die Datei liegt

- Spielbar → `story/characters/playable/Vorname-Nachname.md`
- Nur Story → `story/characters/story/Vorname-Nachname.md`
- Vorlage → `story/characters/_TEMPLATE.md`
- Ohne Eintrag in `story/characters/README.md` – im richtigen Part – existiert die Datei nicht

Spielbare Figuren bekommen den vollen Bogen inklusive Gameplay-Abschnitten. Story-Figuren bekommen vier Abschnitte: Personal Information, Appearance, Personality, Backstory, dazu **Role in Story** statt Story Role. Keine Werte, keine Klassen, kein Klassenpfad – wer nicht spielbar ist, hat keine Statistik.

---

## Form

**Abschnittsüberschriften Englisch, Prosa Deutsch.** So macht es der gesamte Bestand. Das Template ist mit deutschen Überschriften abgelegt und weicht damit ab – das ist eine bekannte Divergenz, kein Freibrief: neue Bögen folgen dem Bestand, und eine Umstellung des Bestands ist eine Entscheidung von Dardan, keine Nebenwirkung eines neuen Bogens.

Feste Reihenfolge, spielbare Figur:

```
Personal Information · Appearance · Personality · Backstory · Recruitment
[Gameplay-Block → statcraft]
Weapon Proficiencies · Recommended Class Path   [→ statcraft]
Support Conversations · Story Role · Trivia · Related Content
```

Am Dateiende `**Version:**`, `**Created:**`, `**Last Updated:**`. HTML-Kommentare aus dem Template werden vor dem Speichern gelöscht.

---

## Die Abschnitte

### Personal Information

Name, Geschlecht, Alter, Größe in cm, Geburtstag (Realwelt, TT.MM.JJJJ), Ingame-Geburtstag nach dem Kalender, Nationalität, Wohnort. Alter gilt zum Spielstart – nicht zum Zeitpunkt des Beitritts, sonst driften Figuren gegeneinander.

### Appearance – drei Absätze, drei Aufgaben

1. **Körper und Gesicht.** Statur, Teint, Gesichtszüge, Haar, Augen, Narben. Was ein Zeichner bräuchte.
2. **Was sie trägt.** Kleidung, Rüstung, Waffe, ein getragenes Objekt. Kleidung erzählt Herkunft und Beruf mit – Bellumer Straßenkind und vaestrallische Offizierin tragen nicht denselben Stoff.
3. **Wirkung.** Wie liest jemand diese Figur, der sie zum ersten Mal sieht – und wo täuscht dieser Eindruck?

Der Fehler, der hier lauert, ist die **Kostümliste**: fünf Sätze Kleidungsinventar ohne eine einzige Geste. Mindestens ein Detail muss Verhalten sein, nicht Material – wie sie steht, was ihre Hände tun, was sie an sich nicht verbirgt und nicht zeigt.

### Personality – drei bis fünf Absätze

Kernzüge, Motivation, Umgang mit anderen, Angst und Schwäche, wie die Herkunft das geformt hat. Danach eine Zeile `**Personality Type:**` mit dem MBTI-Kürzel.

Drei Anforderungen:

- **Der Kern zuerst.** Ein Absatz, der die Figur in einem Satz greifbar macht, danach die Verzweigungen. Nicht eine Aufzählung von Adjektiven.
- **Widerspruch statt Tugendkatalog.** Jede Figur trägt eine Eigenschaft, die ihr im Weg steht, und zwar dieselbe, die sie stark macht.
- **Die Lüge zeigt sich im Verhalten**, nicht in einer Diagnose. Nicht „sie hat Angst vor Nähe", sondern was sie tut, wenn jemand nah kommt.

Der MBTI-Typ ist Ergebnis, nicht Vorgabe: erst die Persönlichkeit schreiben, dann den Typ zuordnen, der zu dem passt, was dasteht.

### Backstory – drei bis fünf Absätze

Familie, Kindheit, prägende Erlebnisse, der Weg bis zum Erstauftritt, die Verbindung zur Haupthandlung.

Die Vorgeschichte hat **ein** prägendes Ereignis, nicht vier. Was danach kommt, ist Folge davon. Verzweigt eine Backstory in mehrere unabhängige Tragödien, trägt keine davon Gewicht.

Vorsicht bei Herkunftsgeheimnissen: In diesem Projekt hängen bereits mehrere Figuren an „unbekannte Herkunft" als Aufhänger. Eine weitere macht den Twist zur Masche. Wenn ein Geheimnis, dann eines, das anders gebaut ist – oder eines, das bewusst nie aufgelöst wird.

### Recruitment – der Story-Teil

Hier steht **warum** sich die Figur anschließt: die Szene, die Bedingung, wer sie überzeugt. Das Beitrittslevel, die Startklasse und die Startausrüstung gehören derselben Tabelle an, werden aber nach `statcraft` abgeleitet – Prosa hier, Zahlen dort.

Der Beitrittsgrund ist eine Entscheidung der Figur, kein Zufall. „Trifft die Gruppe unterwegs und schließt sich an" ist kein Grund. Was gewinnt sie, was riskiert sie, und was hätte sie stattdessen tun können?

### Support Conversations

Zwei bis vier Partner, jeweils mit einem Halbsatz, worin die Reibung besteht. Regeln:

- Partner müssen **existieren** und **erreichbar** sein. Eine Part-05-Figur hat keine Supports mit Part-06-Figuren, solange die Stränge getrennt laufen – erst ab Part 07 sind alle wieder am selben Ort.
- Reibung, nicht Sympathie. Zwei Figuren, die sich einig sind, haben kein Gespräch.
- **Keine zwei Spiegel.** Trägt der Partner dieselbe Wunde, trösten sich beide mit ihrem eigenen Schmerz und beide Bögen verlieren. Das gilt besonders gegenüber Dardan und Hasan.
- S-Support nur bei romantischen Endgame-Paarungen, und nur wenn Dardan sie bestätigt hat.

C bis A skizzieren eine Bewegung: C stellt die Frage, B legt etwas offen, A verändert etwas. Ein Satz pro Rang genügt.

### Story Role

Bedeutung (Hauptcharakter / Nebencharakter / rekrutierbarer NPC) und der Bogen pro Part – aber nur für die Parts, in denen die Figur überhaupt vorkommt. Eine Figur, die in Part 06 beitritt, hat keinen Part-01-Bogen; die Zeile wird gelöscht, nicht mit „nicht anwesend" gefüllt.

Dazu die Schlüsselkapitel mit je einem Ereignis. Das ist der Abschnitt, den spätere Sitzungen zuerst lesen – er muss allein stehen können.

### Trivia

Nur, was den Bogen sonst nirgends berührt und trotzdem eine Szene tragen könnte: eine Gewohnheit, ein Gegenstand, ein Datum, das sie nicht mehr feiert. Drei starke Punkte schlagen sechs beliebige. Lieber leer lassen und den Abschnitt löschen.

### Related Content

Kapitel, Levels, Orte, andere Figuren – als Links, keine Namensliste ohne Pfad.

---

## Handwerk

**Wunde, Lüge, Testmoment.** Jede spielbare Figur hat ein prägendes Ereignis, einen falschen Glaubenssatz daraus und eine Stelle in der Story, wo dieser Satz unter Druck gerät. Wunde und Lüge stehen in Backstory und Personality; der Testmoment gehört zu den Schlüsselkapiteln. Fehlt der Testmoment, ist die Figur beschrieben, aber nicht geschrieben.

**Idiolekt festhalten, nicht nur Haltung.** Der Bogen sagt, *wie* die Figur Sätze baut, nicht nur wie sie drauf ist – kurze Hauptsätze ohne Konjunktionen; Konjunktiv und Einschübe; jemand, der Fragen mit Fragen beantwortet. Das ist die Zeile, die Lorekeeper in Kapitel 44 braucht. Eine Figur, deren Bogen keinen Satzbau nennt, klingt später wie alle anderen.

**Das Bild vor dem Gefühlswort.** Auch im Bogen. Was tut die Hand, was tut der Blick – die Emotion entsteht beim Leser.

**Keine Zahlen in der Story-Hälfte.** Kein Schadenswert, kein Wachstumsprozentsatz, keine Kapitelrundenzahl. Werte leben in `design/Balancing-Guide.md` und im Gameplay-Block des Bogens.

**Kein Bruch der vierten Wand.** Der Bogen darf Spielbegriffe verwenden – er ist Dokumentation. Die Figur darf nicht wissen, dass sie eine Einheit ist.

---

## Bekannte Fallen

**Sprachmischung.** Überschrift Englisch, Prosa Deutsch – aber innerhalb einer Tabelle nicht halb und halb. „Effekt"/„Effect" und „Kosten"/„Cost" wechseln im Bestand mehrfach innerhalb derselben Datei. Innerhalb eines Bogens durchhalten.

**Falscher Strang.** Wer bei Dardan ist, ist nicht bei Hasan. Das betrifft Supports, Schlüsselkapitel und Story Role gleichermaßen und ist der Fehler, der in diesem Projekt am häufigsten passiert.

**Falsches Geschlecht.** Vor dem Schreiben im Kapiteltext prüfen, nicht aus dem Namen schließen.

**Verfrühte Enthüllung im Bogen.** Der Bogen darf wissen, was die Story weiß. Er darf nicht implizieren, dass die *Gruppe* es zu diesem Zeitpunkt schon weiß – sonst wandert das Wissen beim nächsten Nachschlagen in eine zu frühe Szene. Enthüllungen mit Kapitelnummer versehen.

**Der Bogen erfindet Kapitelinhalt.** Steht in Story Role ein Ereignis, das in keinem geschriebenen Kapitel vorkommt, ist es ein Vorschlag – dann gehört es als solcher markiert und Dardan bestätigt es, bevor es als Fakt im Wiki steht.

**Beziehungen nur in eine Richtung.** Wird auf dem neuen Bogen eine Verbindung behauptet, muss sie auf dem Bogen der Gegenseite genauso stehen. Sonst hat die eine Figur einen Mentor, den der Mentor nicht kennt.

---

## Nach dem Anlegen

- Eintrag in `story/characters/README.md`, im Part des Beitritts, in der richtigen Gruppe (Playable / Story)
- Ist die Figur spielbar: Rekrutierungszeile in `design/Progression-System.md` – Beitrittslevel und Tier – über `statcraft`
- Bögen der genannten Familienmitglieder, Mentoren und Support-Partner gegenprüfen und dort ergänzen
- Ort in `story/locations/` verlinkt vorhanden?
- `CHANGELOG.md` unter `[Unreleased] → Added`: die Figur und ihre Rolle, nicht der Dateiname

## Vor dem Abschluss

- Jede Behauptung über Ort, Familie, Kapitel und Strang belegt?
- Appearance: drei Absätze, mindestens ein Detail, das Verhalten ist?
- Personality: ein Widerspruch, nicht nur eine Tugendliste? MBTI passt zum Geschriebenen?
- Backstory: ein prägendes Ereignis, nicht vier?
- Idiolekt benannt – wüsste jemand, wie diese Figur einen Satz baut?
- Testmoment vorhanden und einem Kapitel zugeordnet?
- Supports: existieren, erreichbar, kein Doppelspiegel?
- Story Role: nur die Parts, in denen die Figur vorkommt?
- Alle Template-Kommentare gelöscht, Version und Datum gesetzt?
- Index-Eintrag geschrieben?

---

Die Gameplay-Hälfte desselben Bogens gehört zu `statcraft`, der Ton der Kapitelprosa zu `storycraft`. Geschrieben wird der Bogen von Lorekeeper; die Zahlen darin setzt Rulewright – und zwar **danach**: die persönliche Fähigkeit einer Einheit übersetzt, was hier über die Figur steht.

Wo der Bestand heute von diesen Regeln abweicht, steht in `notes/Character-Sheet-Drift.md`. Dieser Skill trägt die Regeln, jene Datei den Stand.
