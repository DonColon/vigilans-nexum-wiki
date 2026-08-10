<!--
================================================================================
  VIGILANS NEXUM – CHARAKTER-TEMPLATE
================================================================================
  1. Kopieren nach:
       spielbar          → story/characters/playable/Vorname-Nachname.md
       nur Story         → story/characters/story/Vorname-Nachname.md
  2. Kein H1-Titel – die Datei heißt wie die Figur, der Name steht in
     Personal Information.
  3. Sprache: Abschnittsüberschriften und Gameplay-Inhalte Englisch,
     Prosa Deutsch. Innerhalb einer Tabelle nicht mischen.
  4. Alle HTML-Kommentare vor dem Commit löschen. Kein leerer Abschnitt
     bleibt stehen – ausfüllen oder entfernen.
  5. Die Regeln zu den Inhalten stehen in den Skills, nicht hier:
       charactercraft → Abschnitte 1–5, 13–16
       statcraft      → Abschnitte 6–12
     Dieses Template gibt nur die Struktur vor.
  6. Ohne Eintrag in story/characters/README.md existiert die Datei nicht.
================================================================================
-->

<!-- ══════════════ LOREKEEPER ══════════════ -->

## Personal Information

**Name:**

**Gender:**

**Age:** <!-- zum Spielstart, nicht zum Beitritt -->

**Height:** cm

**Birthday:** <!-- TT.MM.JJJJ -->

**In-game Birthday:** <!-- nach story/lore/Calendar.md -->

**Nationality:**

**Residence:**

---

## Appearance

<!-- Drei Absätze:
     1 – Körper, Gesicht, Haar, Augen, Narben
     2 – Kleidung, Rüstung, getragene Gegenstände
     3 – Wirkung auf andere, und wo dieser Eindruck täuscht
     Mindestens ein Detail muss Verhalten sein, nicht Material. -->

---

## Personality

<!-- Drei bis fünf Absätze. Ein Widerspruch, keine Tugendliste. -->

**Personality Type:** <!-- MBTI – siehe story/Personality-Types.md -->

**Speech Pattern:** <!-- Wie diese Figur einen Satz baut. Struktur, nicht Haltung.
                        Raster: story/Speech-Patterns.md -->

---

## Backstory

<!-- Drei bis fünf Absätze. Ein prägendes Ereignis, nicht vier. -->

---

## Recruitment

<!-- Prosa: Warum schließt sie sich an? Was gewinnt sie, was riskiert sie,
     was hätte sie stattdessen tun können? Nur bei rekrutierbaren Figuren. -->

<!-- ┈┈┈┈┈┈┈┈┈┈ ab hier Rulewright ┈┈┈┈┈┈┈┈┈┈ -->

**Joining Level:**

**Starting Class:**

**Starting Equipment:**

**Recruitment Condition:** <!-- automatisch / Gespräch mit … / Nebenziel -->

---

<!-- ══════════════ RULEWRIGHT ══════════════ -->

<!-- Es folgen zwei Varianten des Werteblocks. Die nicht zutreffende löschen.
     A – spielbare Einheit: Basiswerte, Wachstum, Maximalwerte
     B – benannte, nicht spielbare Einheit (Boss, NPC): eine Zeile je Auftritt
     Generische Gegner bekommen keinen Bogen; ihre Werte stehen im Level. -->

## Base Stats <!-- Variante A -->

| HP | MP | Str | Mag | Dex | Spd | Lck | Def | Res |
| -- | -- | --- | --- | --- | --- | --- | --- | --- |
|    |    |     |     |     |     |     |     |     |

---

## Growth Rates <!-- Variante A -->

| HP | MP | Str | Mag | Dex | Spd | Lck | Def | Res |
| -- | -- | --- | --- | --- | --- | --- | --- | --- |
|    |    |     |     |     |     |     |     |     |

**Total:** % <!-- über die acht Kampfwerte; MP zählt separat -->

**Archetype:** <!-- wofür der Spieler sie einsetzt, wogegen sie verliert -->

---

## Max Stats <!-- Variante A -->

| HP | MP | Str | Mag | Dex | Spd | Lck | Def | Res |
| -- | -- | --- | --- | --- | --- | --- | --- | --- |
|    |    |     |     |     |     |     |     |     |

---

## Stats by Appearance <!-- Variante B – Boss oder Story-NPC -->

<!-- Eine Zeile pro Auftritt. Keine Wachstumsraten – diese Einheit levelt nicht. -->

| Chapter | Level | HP | MP | Str | Mag | Dex | Spd | Lck | Def | Res |
| ------- | ----- | -- | -- | --- | --- | --- | --- | --- | --- | --- |
|         |       |    |    |     |     |     |     |     |     |     |

---

## Abilities

| Class | Level | Ability | Effect |
| ----- | ----- | ------- | ------ |
|       |       |         |        |

**Personal Ability:** <!-- genau eine, an eine herstellbare Bedingung geknüpft -->

---

## Combat Arts

| Class | Level | Combat Art | Cost | Effect |
| ----- | ----- | ---------- | ---- | ------ |
|       |       |            |      |        |

---

## Weapon Proficiencies

<!-- Nur Typen, die diese Figur wirklich führt. Ränge E–A.
     Physisch: Sword · Lance · Axe · Knife · Gauntlet · Chain · Battle Staff
               · Bow · Artillery
     Magisch:  Pyro · Aero · Electro · Hydro · Cryo · Geo · Dendro
               · Lux · Umbra   (elementgebunden über die Klasse) -->

| Weapon Type | Rank |
| ----------- | ---- |
|             |      |

**Weakness:** <!-- ausdrücklich benennen -->

---

<!-- ══════════════ LOREKEEPER ══════════════ -->

## Canon Class Path

<!-- Was die Figur in der Story wird. Dem Spieler wird das nie genannt –
     bei den Vigilant Knights ist seine Wahl frei.
     Beginnt dort, wo die Figur einsteigt: Citizen nur bei den Knights,
     spätere Zugänge starten in ihrem Beitritts-Tier.
     Klassennamen aus design/catalog/Unit-Classes.md, Tier in Klammern.
     Keine Stufenangaben – die Gates stehen im Progression-System. -->

```
… (Base) → … (Intermediate) → … (Advanced) → … (Master)
```

---

## Support Conversations

<!-- Zwei bis vier Partner. Reibung, nicht Sympathie.
     Nur erreichbare Partner – getrennte Stränge treffen sich erst ab Part 07. -->

**{{PARTNER}}** —

- **C:**
- **B:**
- **A:**

---

## Story Role

**Significance:** <!-- Hauptcharakter / Nebencharakter / rekrutierbarer NPC -->

<!-- Nur die Parts, in denen die Figur vorkommt. Übrige Zeilen löschen. -->

- **Part 0X:**

**Key Chapters:**

<!-- Ein Ereignis je Zeile. Der Testmoment der Figur gehört hierher und
     wird als solcher markiert. -->

- **Chapter XX:**

---

## Trivia

<!-- Nur, was sonst nirgends steht und eine Szene tragen könnte.
     Lieber löschen als füllen. -->

---

**Version:** 1.0
**Created:**
**Last Updated:**
