# Changelog

All notable changes to the Vigilans Nexum GDD will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Added

**Working rules**
- Character sheets are now governed by two skills instead of none: `charactercraft` for the narrative half (person, appearance, personality, backstory, recruitment framing, supports, story role) and `statcraft` for the stat block (joining level, base stats, growth rates, max stats, class path, abilities, weapon proficiencies)
- **A character sheet has two owners.** Lorekeeper writes the prose half, Rulewright derives the numbers – neither touches the other's sections. Splitting the sheet keeps stat blocks out of narrative rewrites and keeps invented classes out of the catalog
- `statcraft` defines the derivation order for a unit – joining level → class path → archetype → base stats → growth budget → max stats – and a reachability check (`base + growth × remaining level-ups + class modifiers`), so a max stat can no longer be a number no unit can reach
- Arbiter and Rulewright can load skills (`Skill` added to their toolsets); Arbiter is instructed to treat them as a floor, not as the full scope of a review
- **The two halves of a character sheet have a fixed order: narrative first, numbers second.** A unit's personal ability is the mechanical translation of what the prose half says about the person, so deriving stats first means guessing the character. Recorded in the routing table, `charactercraft` and `statcraft`
- `mechanicraft` skill – binding rules for specifying systems in `design/mechanics/`: purpose in one sentence, the five-pillar run written out rather than ticked off, cost, interaction, acquisition, and the field that is missing most often – **which chapter introduces the system, and how the player learns it without a tutorial popup**
- **The line that decides where a number lives: does changing it change the *system* or only its *strength*?** "Resonance occurs on Fibonacci rounds" is a rule and stays in the mechanic document; "resonance grants +15 % hit" is a tuning value and belongs in the Balancing Guide
- **Three new mandatory sections in the mechanics template: `Kosten`, `Design Pillars`, `Einführung`.** The template described what a system does and never why it exists or what it costs. Cost was buried in *Kernregeln*, the pillar run lived only in the author's head, and the introduction chapter existed solely as a column in the levels index pointing one way. The five existing mechanic files predate them and are filled in when next touched – a pillar run is a judgement and an introduction chapter is a decision, so neither can be back-filled mechanically
- **The catalog is the registry; three places link to it.** A mechanic document says *what* its entries are, the catalog lists *which* exist, and the character sheet and `Unit-Classes.md` reference the same list. The mechanics template's `Listen & Katalog` section is replaced by a mandatory `Katalog` section holding exactly one link – it was the cause of both known duplicates. Resolving them migrated the content that existed only in the mechanic file first: *Adept* and *Vantage* into `catalog/Abilities.md`, the **Element** column into `catalog/Combat-Arts.md`
- `notes/Mechanics-Drift.md` – dated inventory of `design/mechanics/`. Open findings: **The Nexus, the ability the game is named after, has no specification**, along with six further High-priority systems; `mechanics/Abilities.md` and `mechanics/Combat-Arts.md` each duplicate their catalog counterpart and have already drifted apart (one by content, one by schema); `Biorythm.md` holds biorhythm types for 14 characters in a systems document while no sheet has a field for it
- `levelcraft` skill – binding rules for level design in `design/levels/`: derivation order (what the scene demands → objective → carrying mechanic → map → enemy roster → boss → reinforcements → rewards → difficulty variants), the deployment and enemy-level bands, and the pillar check applied to a battle
- **A level has two owners, like a character sheet.** The short level box lives in the chapter text and belongs to Lorekeeper; the design document in `design/levels/` belongs to Rulewright. Both describe the same battle, so `levelcraft` makes their agreement a mandatory check – and where they disagree, the chapter wins, because it is written, read and anchored in the story
- **At most one new mechanic per level, and the map must carry it.** A level whose new mechanic can be ignored has not introduced it
- `notes/Level-Design-Drift.md` – dated inventory of the level documentation. Open findings, not yet decided: Part 05 deploys 8 units per chapter while Part 06 deploys 11, against a documented limit of 8-10 for the same chapter range and two strands the spec requires to be equivalent; the level box format in `Writing-Style-Guide.md` describes an English header that none of the 48 existing boxes use
- `notes/Character-Sheet-Drift.md` – dated inventory of where existing sheets deviate from the two skills, with file, finding and severity. The skills previously carried these counts inline; a binding rules document that states "26 of 28 sheets are empty" becomes wrong the moment someone fills one, and is then read as a rule

**Character sheet template**
- `story/characters/_TEMPLATE.md` rewritten to define **structure only**. It previously carried design decisions as mandatory fields and most of them were stale: a class path with the discarded tier levels (Citizen 1 → Base 5 → … → Unique 35), "max stats at level 45", a growth budget of 300-420 % measured over nine columns including MP, archetype target percentages in the comments, an *Affinity* column that exists nowhere in `design/`, and *Magic* as a weapon type. Numbers belong to the Balancing Guide and rules to the skills; the template now holds neither
- **Every named character gets a stat block**, replacing "unplayable means no stats" – most story characters are bosses, and a boss without stats cannot be built. Three kinds of unit: playable units get the full derivation (base, growth, max); named non-playable units get *Stats by Appearance*, one row per chapter they appear in and no growth curve, because a boss never levels; generic enemies get no sheet at all and are described entirely in the level document with the stats of that one battle
- **Stats for a named unit live on its sheet, never also in the level document.** The level template's boss stat table is replaced by a link plus the battle-local data (equipment, AI pattern, position, dialogue)
- Dropped from the sheet: the H1 title (the filename and *Personal Information* already carry the name; no existing sheet had one), the *Verwandte Dateien* line and the *Related Content* list, which collected the same links twice

**Repository structure**
- Split the documentation by lifecycle into three top-level folders: `design/` (normative spec, English), `story/` (narrative content, German), `notes/` (dated analysis, not normative)
- Folder index pages as `README.md`, so GitHub renders each folder's index as its front page

**Progression design**
- Level curve across all 8 parts, 1 → 60, cap reached at the Dajjal (Ch 52)
- Promotion gates: base class at end of Ch 06 (story event), Intermediate Lv 15, Advanced Lv 30, Master/Unique Lv 45
- Recruitment level per part – only the eight Vigilant Knights start at Level 1 in the Citizen class
- Epilogue definition: Ch 53-56 grant no XP; support ranks max out there instead
- Catch-up XP rule for units below their group's average level
- Rule that Part 05 and Part 06 must share identical enemy level bands, which makes the split roster self-balancing
- **MP** documented as a stat in the Balancing Guide (base values, growth rates, cap), budgeted separately from the eight combat stats
- Backlog table in Game Mechanics listing undocumented systems by priority, replacing links to files that were never written

### Changed
- Campaign length corrected to **8 parts / 64 chapters** across README, Levels, Progression System and Balancing Guide – these still described a 32-chapter game
- Level cap raised from 45 to **60**; stat caps raised from 40 to **50**, HP from 80 to **90**
- Unique classes are an alternative to Master at the same tier, not a sixth tier above it – aligned with `catalog/Unit-Classes.md`. Four promotions per unit, not five
- Levels index rebuilt for 8 parts, with `A`/`B` suffixes distinguishing the parallel Part 05 and Part 06 strands that share chapter numbers 33-40
- Part 08 roadmap in `Narrative-Spine.md` corrected: four tower battles on Ch 49-52 (Mordain/Leander/Cassius, Gentian/Kresnik, the seven sisters, the Dajjal), epilogue from Ch 53. The previous table placed the Dajjal at Ch 55, inside the epilogue
- Balancing Guide declared the single source of truth for numbers; duplicated growth-rate values removed from the README
- Terminology in `Combat-Arts.md` and `Abilities.md` changed from "Klassenwechsel" to "Beförderung"
- `catalog/Magic-Spells.md` → **`catalog/Magic-Tomes.md`**. The file is a weapon catalog, not a list of learned spells: every entry carries Might, Hit, Critical, Range, Weight and MP Cost, and magic works Radiant-Dawn style – a Pyromancer equips Pyro tomes and nothing else. The old name invited reading it as an ability list, which it never was
- **A character sheet has no Spells section.** A mage learns nothing the sheet would need to record: the class fixes the element, the element sits in the weapon ranks, the tomes live in the catalog. A spell is a weapon, not a character trait
- **"Recommended Class Path" → "Canon Class Path", and it changes owner.** The path is not gameplay advice derived from growth rates; it records what the character *becomes in the story* and is never shown to the player. Lorekeeper sets it, Rulewright only validates that the path exists in the class tree. For the Vigilant Knights – who start as Citizen – the player's choice at Ch 06 is genuinely free; canon is documentation, not a constraint
- **Language rule sharpened: gameplay English, story German.** Section headings and stat tables are English (matching all existing sheets), narrative prose is German. This settles the "Effekt"/"Effect" and "Kosten"/"Cost" drift in stat tables – they are gameplay, so English
- **`Speech Pattern` becomes a field on every character sheet**, next to `Personality Type`. Deliberately has no closed value list the way MBTI does – two characters sharing an entry would sound alike, which is what the tag test exists to catch
- `story/Speech-Patterns.md` – the reference behind that field, as a sibling to `Personality-Types.md` so anyone working on the project can look it up without loading a skill. Six dimensions (sentence structure, connectives, mood, handling of questions, what is absent, register) plus the structure-over-attitude test: "first person plural where others say *du*" can be written from, "warm but not weak" cannot. It carries the method, never the per-character list – that lives on the sheets
- Per-character voice notes removed from `Writing-Style-Guide.md` and replaced by a pointer to the sheets. They covered 4 of 39 characters and mixed attitude with structure; keeping voice in two places guarantees the two answers drift
- Second and third magic elements (Elementalist, Arcanist) are documented in `statcraft` as an irreversible fork with the same no-trap-option requirement as a class branch – Pyro+Cryo plays differently from Pyro+Aero
- **Skills state rules, `notes/` states the current state.** Concrete file-by-file findings moved out of `charactercraft` and `statcraft` into `notes/Character-Sheet-Drift.md`; the skills keep the traps in general form. A rule that names a specific sheet stops being true when that sheet is fixed
- `storycraft` no longer opens with "unless the user asks for a different style" – a leftover from the output-style format that contradicted Lorekeeper's instruction to treat the skill as binding. Only Dardan can deviate
- The dialogue protocol in `CLAUDE.md` (asking, confirming, waiting for the signal) is now explicitly scoped to the session talking to Dardan. Subagents load the same file and were reading "ich frage" as an instruction to themselves, although they cannot ask anyone

### Removed
- **Reclassing.** Promotions are permanent – a unit moves up its branch and never sideways or back. Seals are promotion items, not reclassing items
- **Stat requirements for promotion.** Level and a seal are the only gates, so no unit can be locked out of its branch by unlucky growth rolls
- `Game-Setting.md` – a pass-through page whose five links were already in the README

### Fixed
- **75 broken internal links reduced to 0.** The largest cluster was Game Mechanics, where all 24 subsystem links pointed at files that did not exist, while four of the five mechanics files that do exist were not linked at all
- README template links pointed to a `templates/` folder that never existed; templates live as `_TEMPLATE.md` inside each content folder
- Chapter 16 filename typo: `Chapter-16-Farwell-In-Fire.md` → `Chapter-16-Farewell-In-Fire.md`
- Broken character link `Edric Thalven.md` (space instead of hyphen)
- Relative paths in `Caeron.md`, `Valdris.md`, `Eravan.md` pointing one level too high
- Alex and Raphael assigned to Part 03 consistently; the character index and the progression document disagreed

---

## [0.1.0] - Initial Structure

### Added
- Part 01: Path of Liberation (Chapters 1-8)
- Part 02: A King's Promise (Chapters 9-16)
- Part 03: The Champion's Road (Chapters 17-24, partial)
- Part 04: The Name You Were Given (Chapters 25-32, partial)
- Core character sheets
- Level designs for Part 01
- Weapon triangle system
- Magic system overview
- Basic world mythology and locations
