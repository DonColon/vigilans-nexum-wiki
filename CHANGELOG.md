# Changelog

All notable changes to the Vigilans Nexum GDD will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Added

**Tooling**
- `.claude/settings.json` – project settings, committed. An allowlist for read-only shell commands (ls, grep, wc, git status/log/diff/show …) removes the confirmation prompts for inspection work, and a `PreToolUse` hook on `git commit` runs the invariant checks
- `.claude/hooks/pre-commit-checks.sh` – **mechanical enforcement of the three countable invariants**, which until now depended on someone remembering them: a surviving `{{PLACEHOLDER}}` blocks the commit; a new file in a content folder with no README link warns; touching `design/` or `story/` without `CHANGELOG.md` warns. Skills judge, hooks count – a hook cannot tell whether a Speech Pattern is structure or attitude, but it never forgets to look. Two exemptions the placeholder check needs to be usable: `_TEMPLATE.md` files are skipped, since holding placeholders is what a template is for, and text inside backticks is stripped before scanning, because skills and this changelog talk *about* placeholders constantly
- `.githooks/pre-commit` – **the same checks on every commit, not only Claude's.** The Claude Code hook only fires on commits Claude makes; a placeholder check is most useful when *anyone* fills in a template, so the script runs in two modes (JSON for the agent, text plus exit 1 for git) and `core.hooksPath` points at a versioned directory. Enable after a fresh clone with `git config core.hooksPath .githooks`; bypass a single commit with `git commit --no-verify`
- **Every file states in its first lines what it is and what it governs.** Seven of nine catalog files opened straight into a table, which is how `Magic-Tomes.md` came to be read as a list of learnable spells instead of a weapon catalog. The lore files got the same treatment
- **An empty or half-filled table always means "not filled in yet", never "deliberately nothing".** Recorded as an invariant so no session reads a gap as a statement or fills it with invented values

**Calendar**
- **Imperial years convert to real years with a fixed offset of 660** – anchored on Imperial Year 1337 = 1997, chosen because 1337 is *leet* and 1997 is the author's birth year. Day and month are identical; only the year shifts. Game start is Imperial Year 1357, i.e. 2017, which makes a character's age derivable rather than free: `age = 1357 − imperial year of birth`. Written into `Calendar.md` with the conversion steps and into `charactercraft` as a check
- The twelve month names in `Calendar.md` are declared complete – there is no thirteenth month and no alternative naming
- **All character sheets brought in line with the calendar.** Applying the rule surfaced eleven sheets that broke it, in two systematic clusters rather than as isolated slips: three sheets (Aldric, Kassandra, Rohan) computed ages from a start year of 1347, two (Hasan, Asta) from 1358. Ages were kept and birth years moved, except for Asta, who is Shira's age. **Hasan is now born in 1337 like Dardan** – his backstory has the two of them "both six years old", which does not work with a year between them. Six invented month names replaced with the calendar months implied by each real-world date, and three sheets had the imperial year sitting in the real-world *Birthday* field

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

**Weapon, tome and class catalogs – structure pass**
- **Weapon ranks run F–S and the cap rises with class tier; S opens only at Master.** A hybrid class's secondary weapon types cap one step below its main type, so breadth costs depth and the single-type branch at the same fork is never strictly worse. Rank F exists only in the Citizen class – the eight Vigilant Knights are the only units that ever hold it. Every weapon and tome table gained a `Rank` column (empty); the caps per tier are a proposal table in the Balancing Guide
- **Staff is a weapon type, not an ability.** Healers wield a Mag-based, rank-gated staff with Uses like any other weapon; it stands outside both triangles. An Acolyte cannot attack until promotion at Lv 15 – that is by design. Healing with a staff grants XP (value: the existing heal entry in the XP formula)
- **Battle Staff carries Guard:** melee attacks (range 1) against the wielder suffer a Hit penalty, ranged attacks ignore it – a staff parries what it sees coming. Value proposed in the Balancing Guide, below the triangle swing so Guard never flips a matchup by itself
- **Artillery has a minimum range of 2 or more**, expressed only through the Range column; the same convention applies to siege tomes
- **`Move Type` column (Infantry, Cavalry, Flying, Armored) on every class table**, filled from the class names – it is the key that effective weapons and the still-unwritten Movement rules refer to
- **Elementalist rule:** the second Natura element must be one the first element loses to – the player closes his weakness instead of stacking advantages. The Arcanist's third element is free
- **Three Natura edges added – Geo > Pyro (earth and sand smother the fire), Cryo > Geo (frost wedging: ice in the cracks breaks the rock), Electro > Aero (the lightning rules the storm) – for twelve in total.** The Elementalist rule (second element = one the first loses to) is only a choice if an element has two weaknesses; with nine edges five of seven elements had one. Seven further candidates were rejected for lacking a physical reason a sceptical reader would accept (Aero > Pyro, Cryo > Aero, Electro > Cryo, Hydro > Geo, Dendro > Electro, Cryo > Electro, Aero > Cryo). **Electro and Cryo deliberately keep a single weakness** – their Elementalist's second element is forced (Geo, Pyro) and that is the price of their extra win. Resulting profiles, stated as design: Geo duelist (3/2), Pyro balanced (2/2), Electro and Cryo offensive (2/1), Aero/Hydro/Dendro support and control (1/2) whose value lies in reactions and utility. Tome tuning compensates the 1/2 profile – a proposal in the Balancing Guide. Every edge now carries a one-sentence physical reason in `Magic-Tomes.md`
- **Weapon Rank Progression** added to the mechanics backlog – how a rank rises (weapon XP through use, the Fire Emblem convention) is a decision not yet taken; the scale and the caps exist, the climb does not

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
- **Close Combat wheel extended from 10 to 14 edges** (Chain > Sword, Battle Staff > Lance, Knife > Axe, Gauntlet > Battle Staff) so that every one of the seven types beats exactly two and loses to exactly two – no type is a safe or a doomed pick. Each edge now carries a one-sentence physical reason next to the diagram
- **Magic Triangle: Umbra > Natura, Lux > Umbra, Lux and Natura neutral.** Lux is the counter to Umbra and would carry too many weaknesses if it also lost to all seven Natura elements. The contradictory sentence "Lux und Umbra sind gegenseitige Konter – das stärkere Element gewinnt" is gone from the Magic System
- **Unique is Master plus a Lord Kit, not a class tier.** Dardan and Hasan promote into any Master class like everyone else; the Lord Title (Aetherblade for Sword Saint, Ashborn for Shadow Monarch, …) is cosmetic and now a column in the Master table, and the kit's abilities are story-unlocked on top of the class. The 27 Unique rows in Special Classes collapse to two Lord Kit rows – Dardan's from the existing ability timeline, Hasan's explicitly *not yet defined*
- Citizen's weapon types are `Sword, Lance, Axe, Bow` instead of `All` – a Citizen never held a tome or a staff
- Intros of `Weapons.md`, `Magic-Tomes.md` and `Unit-Classes.md` rewritten in English per the language invariant, and updated for the new structure; `Magic-System.md` stays German and only changed where the triangle changed
- **Avatar is the one Lord Title with an effect on the class.** On Arcanist it replaces the three chosen Natura elements with the four fixed elements Pyro, Aero, Hydro, Geo – the Elementalist/Arcanist element rules do not apply to it. Reference: *Avatar – The Last Airbender* ("Der Herr der Elemente"): the one bender who commands all four classical elements, where everyone else is bound to one. All other Lord Titles stay cosmetic; the Arcanist's own weapon types are unchanged
- **The Lords have the same Master stats as everyone else – their advantage is the kit, not a hidden stat lead.** The Balancing Guide's class-tier table no longer carries a separate Unique row (see *Removed*); "Master/Unique" headings in the Balancing Guide read "Master"
- Old triangle statements cleaned up where the first pass had only found them: the root `README.md` now states Umbra > Natura, Lux > Umbra, Lux–Natura neutral; `catalog/Elemental-Reactions.md` lost its duplicate Natura diagram, Magic Triangle diagram and Schwächen-Tabelle (the latter said "Umbra besiegt Lux", contradicting the Magic System even before) and links to Magic Tomes instead; the mechanics backlog reads "Master (+ Lord Kit)"; the ability-capacity row "Unique Class" is renamed "Lord Kit" with its pre-existing value untouched; `statcraft` speaks of Lord Titles and the F–S scale; the character template's physical weapon list includes Staff
- **"Magic Spell Availability" → "Magic Tome Availability"** in the Progression System. The old table used E–A ranks with A as the ultimate and named spells (Fire, Thunder, Meteor …) that exist nowhere in the tome model. Rows are now the F–S ranks, cells the class tier that first holds the rank (derived from the caps), the chapter that tier opens, and the tome tier available – marked as a proposal because the rank-to-tier mapping is a first draft

### Removed
- **Reclassing.** Promotions are permanent – a unit moves up its branch and never sideways or back. Seals are promotion items, not reclassing items
- **Stat requirements for promotion.** Level and a seal are the only gates, so no unit can be locked out of its branch by unlucky growth rolls
- `Game-Setting.md` – a pass-through page whose five links were already in the README
- **`Magic Staff` as a class ability** – replaced by `Staff` in the *Weapon Types* of every healer class and removed from `catalog/Abilities.md`. An ability that only says "may use one weapon type" is a weapon type
- The `*Only for Dardan/Hasan` footnote and the `, Name*` suffixes in the Advanced table's *Promotes to* column – superseded by the *Lord Title* column
- **The Unique tier row (+12 HP / +25 MP / +6 Str-Mag / +5 Spd / +5 Def-Res) and its justification** from the Balancing Guide's class-tier modifiers. Unique is Master plus a Lord Kit, and a kit adds abilities, not stats – a stat lead for the Lords would be a power fantasy without a price

### Fixed
- **75 broken internal links reduced to 0.** The largest cluster was Game Mechanics, where all 24 subsystem links pointed at files that did not exist, while four of the five mechanics files that do exist were not linked at all
- README template links pointed to a `templates/` folder that never existed; templates live as `_TEMPLATE.md` inside each content folder
- Chapter 16 filename typo: `Chapter-16-Farwell-In-Fire.md` → `Chapter-16-Farewell-In-Fire.md`
- Broken character link `Edric Thalven.md` (space instead of hyphen)
- Relative paths in `Caeron.md`, `Valdris.md`, `Eravan.md` pointing one level too high
- Alex and Raphael assigned to Part 03 consistently; the character index and the progression document disagreed
- Artillerist's *Promotes to* said `Cannoneer, Bombardier` while the class graph says `Gunner, Bombardier` – table corrected to the graph
- `knive` → `knife` in the Close Combat diagram
- Magic System's acquisition table pointed at "Spells (Katalog)", a document that no longer exists – now links to Magic Tomes

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
