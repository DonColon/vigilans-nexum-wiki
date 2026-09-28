<!--
================================================================================
  VIGILANS NEXUM – MECHANIC TEMPLATE
================================================================================
  How to use this template:
  1. Copy this file and name it after the mechanic (e.g. "Stealth.md")
  2. Replace every placeholder in [SQUARE BRACKETS] or {{BRACES}} with real content
  3. Required sections (<!-- Required -->) must be filled in
  4. Optional sections (<!-- Optional -->) may be deleted if they do not
     apply to the mechanic
  5. Do NOT keep the comments in the finished file –
     delete every HTML comment before committing
  6. Language: English (prose and section names)
================================================================================
-->

# [Mechanic Name] <!-- Required -->

<!-- Required: one or two sentences directly under the heading that say what this
     document is and what it holds – the rules here, the values in its own
     Balancing section, the entries in the catalog. A document that opens with a
     table is read wrongly. -->

*[What this document covers, and where its values and entries live.]*

<!-- Required: cross-references to related mechanic files and catalog entries -->
> **Related files:** [File A](../path/File-A.md) · [File B](../path/File-B.md)

---

## Overview <!-- Required -->

<!-- Required: 2–4 sentences that explain the mechanic and its role in the game.
     What is it? When does it come into play? What sets it apart from similar mechanics?
     Close with the purpose in one sentence: which decision does the player make
     that he could not make without this system? -->

*[Short description of the mechanic and its function in combat.]*

<!-- Optional: summary table of the mechanic's key parameters.
     Suits mechanics with clearly defined parameters (phase, resource, etc.) -->

|              | [Mechanic Name]          |
| ------------ | ------------------------ |
| Phase        | *[Player / Enemy Phase]* |
| Trigger      | *[How it becomes active]* |
| Resource     | *[MP / none / etc.]*     |
| Core feature | *[Defining trait]*       |

---

## Prerequisites <!-- Required -->

<!-- Required: which conditions must be met for the mechanic to apply?
     If there are none, write: "No special prerequisites." -->

| Condition | Rule |
| --------- | ---- |
| *[e.g. unit type]* | *[Rule]* |
| *[e.g. position / formation]* | *[Rule]* |

---

## Cost <!-- Required -->

<!-- Required: what does the player pay to use it?
     A resource (MP, durability), an action, a position, a risk –
     or a combination. A system without a cost is not a decision
     but a reward with rules around it.
     Second required statement: is the cost visible BEFORE use?
     If not, the system violates Pillar 5 – the player should be able to plan,
     not only understand after the mistake.
     Concrete numbers belong in this mechanic's ## Balancing section
     (cross-system ones in the Balancing Guide) and are linked here. -->

| What | Value |
| ---- | ----- |
| Resource | *[MP / durability / none]* |
| Action | *[uses the turn? / free action]* |
| Further cost | *[position, risk, what is given up]* |
| Visible before use | *[how the player sees the cost]* |

---

## Core Rules <!-- Required -->

<!-- Required: the central rules of the mechanic, as precisely as possible.
     Tables, lists and formulas are all welcome.
     This section is the heart of the document.
     A number that changes only the strength of the system, not the system,
     is a tuning value: it belongs in ## Balancing and is linked from here. -->

*[Description of the core rules, formulas and sequences.]*

---

## Acquisition / Access <!-- Required -->

<!-- Required: how does the player / a unit get access to this mechanic?
     If the mechanic is universal (applies to every unit), say so explicitly. -->

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| *[Promotion / item / story / universal]* | *[Description]* | *[Availability]* |

---

## Strategic Depth <!-- Required -->

<!-- Required: which tactical decisions does this mechanic open up for the player?
     At least 3–5 sentences or bullet points. Examples are welcome. -->

*[Description of the tactical options and the strategic value.]*

---

## Design Pillars <!-- Required -->

<!-- Required: why does this system belong in the game?
     Answer all five questions from design/Design-Pillars.md in full,
     do not tick them off. A "no" is a valid answer if it is argued –
     more than two mean redesign, not patching.
     Without this section, someone asks in six months
     why the system exists and finds no answer. -->

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | |
| **Depth** | Easy to learn, hard to master? | |
| **Weight** | Do the decisions have long-term consequences? | |
| **Integration** | Does the mechanic tell a story? | |
| **Fairness** | Is the challenge respectful of the player's time? | |

**Anti-pillar check:** {{ANTI-PILLAR}}
<!-- No forced grinding, no power without a price, nothing that works only
     with over-trained units, nothing generic and interchangeable. -->

---

## Introduction <!-- Required -->

<!-- Required: where in the campaign does the player learn this system?
     Vigilans Nexum introduces mechanics through situations, not tutorials.
     A map on which the new ability is the obvious way out
     teaches it better than a text box.
     Must agree with the "New Mechanics" column in design/levels/README.md.
     There is no cap on new mechanics per level –
     but the map must carry each new one (levelcraft). -->

**First chapter:** {{CHAPTER}}

**How it is introduced:** {{IN-WORLD-INTRODUCTION}}
<!-- The situation that teaches it – not the text that explains it. -->

**What the player must already know:** {{PRIOR-KNOWLEDGE}}

---

## Catalog <!-- Required -->

<!-- Required: ONE LINK, no table.
     The entries of this system – abilities, combat arts, tomes, weapons –
     live exclusively in design/catalog/. This document describes
     WHAT they are; the catalog lists WHICH ones exist.
     The character sheet (Personal Abilities) and the class in
     Unit-Classes.md point to the same catalog entry.
     A table of entries here creates a second truth.
     If the mechanic has no entries: delete the section. -->

All entries: [{{CATALOG-NAME}}](../catalog/{{CATALOG-FILE}}.md)

---

## Balancing <!-- Optional -->

<!-- Optional: this is where the values of THIS mechanic live – every tuning value
     that belongs to it alone, with its derivation and the note proposal / decided.
     After them: what each value tunes, and which numbers are rules rather than
     tuning values.
     Values that span several systems (combat formulas, stat and growth frameworks,
     tier modifiers, XP, economy, difficulty, the passive bonus budget)
     live in the Balancing Guide and are only linked here.
     Every number exists exactly once. -->

### Values

| Parameter | Value |
| --------- | ----- |
| *[e.g. base damage]* | *[Value]* |
| *[e.g. scaling]* | *[Formula]* |

### What each value tunes

| Parameter | What it tunes |
| --------- | ------------- |
| *[Parameter]* | *[Effect]* |

---

## Interaction with Other Mechanics <!-- Optional -->

<!-- Optional: how does this mechanic behave in combination with other systems?
     Synergies, known combinations, or restrictions. -->

| Mechanic | Interaction |
| -------- | ----------- |
| *[Other mechanic]* | *[Description of the interaction]* |

---

## UI & Display <!-- Optional -->

<!-- Optional: how is the mechanic communicated to the player in the game?
     Symbols, colours, menu positions, HUD elements. -->

*[Description of the UI presentation.]*

---

## Character Assignments <!-- Optional -->

<!-- Optional: if the mechanic has character-specific variants,
     an overview table here. -->

| Character | [Parameter] | Type |
| --------- | ----------- | ---- |
| *[Name]* | *[Value]* | *[Category]* |

---

## Open Decisions <!-- Optional -->

<!-- Optional: everything the specification could not settle. Each item is written
     into the rules above in its cautious (conservative) form, so the document is
     playable as it stands, and listed here with the alternative. Decisions already
     made by Dardan are named as such and not listed as open.
     Delete the section if nothing is open. -->

1. **[Question].** Conservative: [the form written above]. The alternative: [...].

---

<!-- Required: footer with metadata and cross-references -->

**Version:** 1.0
**Created:** [DATE]
**Last updated:** [DATE]
**Cross-references:** [File A](../path/File-A.md) · [File B](../path/File-B.md)
