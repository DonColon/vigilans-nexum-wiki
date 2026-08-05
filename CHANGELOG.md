# Changelog

All notable changes to the Vigilans Nexum GDD will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Added

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
