# Welcome to Vigilans Nexum Wiki

**Vigilans Nexum** is a tactical, turn-based RPG inspired by Fire Emblem, with a deep narrative focus on trust, bonds, and the invisible connections between people on the battlefield.

This repository is the complete Game Design Document (GDD) for the project. It is split by how the documents behave over time:

| Folder | Contents | Character |
|--------|----------|-----------|
| **[design/](design/)** | Pillars, mechanics, catalog, balancing, progression, levels | Normative spec. English. Changes rarely, changes deliberately. |
| **[story/](story/)** | Chapters, characters, locations, lore, style guide | Content. German prose. Grows continuously. |
| **[notes/](notes/)** | Narrative analysis and audits | Dated snapshots. Not normative – may age out. |

---

## 📖 Documentation Structure

### Core Documents
- **[Overview](design/README.md)** – Vision, team, target audience
- **[Design Pillars](design/Design-Pillars.md)** – Core design philosophy & principles
- **[Game Mechanics](design/mechanics/README.md)** – Combat, movement, progression systems
- **[Game Catalog](design/catalog/README.md)** – Weapons, spells, classes, abilities

### Content Indices
- **[Story](story/README.md)** – All 64 chapters across 8 parts
- **[Characters](story/characters/README.md)** – Playable units, NPCs, antagonists
- **[Levels](design/levels/README.md)** – Level designs & objectives
- **[Locations](story/locations/README.md)** – World geography & key places
- **[Mythology](story/lore/Mythology.md)** – Religion, lore, world history
- **[Calendar](story/lore/Calendar.md)** – In-world month names

### Design Resources
- **[Balancing Guide](design/Balancing-Guide.md)** – Numerical design principles
- **[Progression System](design/Progression-System.md)** – Level curve & class advancement
- **[Writing Style Guide](story/Writing-Style-Guide.md)** – Narrative consistency guidelines
- **[Personality Types](story/Personality-Types.md)** – MBTI reference for character design

### Narrative Analysis (not normative – dated snapshots)
- **[Narrative Spine](notes/Narrative-Spine.md)** – Core thematic question & how it resolves
- **[Character Arcs](notes/Character-Arcs.md)** – Wound, lie and test moment per core cast member
- **[Craft Techniques](notes/Craft-Techniques.md)** – Concrete writing techniques with textual evidence
- **[Pacing Audit](notes/Pacing-Audit.md)** – Padding review of all written chapters

---

## 🚀 Quick Start for Designers

**Writing a story chapter?** → [Story](story/README.md) | [Chapter Template](story/chapters/_TEMPLATE.md)  
**Designing a level?** → [Levels](design/levels/README.md) | [Level Template](design/levels/_TEMPLATE.md)  
**Creating a character?** → [Characters](story/characters/README.md) | [Character Template](story/characters/_TEMPLATE.md)  
**Balancing weapons?** → [Weapons](design/catalog/Weapons.md) | [Balancing Guide](design/Balancing-Guide.md)  
**Adding locations?** → [Locations](story/locations/README.md) | [Location Template](story/locations/_TEMPLATE.md)  
**Documenting a mechanic?** → [Game Mechanics](design/mechanics/README.md) | [Mechanic Template](design/mechanics/_TEMPLATE.md)

### 📋 Available Templates

Templates live as `_TEMPLATE.md` inside the folder they belong to – copy the file next to its siblings and rename it.

| Template | Purpose | When to use? |
|----------|---------|--------------|
| [characters/_TEMPLATE.md](story/characters/_TEMPLATE.md) | New playable or story characters | When adding a new unit |
| [levels/_TEMPLATE.md](design/levels/_TEMPLATE.md) | Level design documents | For each new chapter/level |
| [chapters/_TEMPLATE.md](story/chapters/_TEMPLATE.md) | Story chapters (German) | When continuing the story |
| [locations/_TEMPLATE.md](story/locations/_TEMPLATE.md) | Places in Tridera | New cities, countries, dungeons |
| [mechanics/_TEMPLATE.md](design/mechanics/_TEMPLATE.md) | Game mechanic specifications | New rules & systems |

*No template exists yet for catalog entries (weapons, spells, classes) – follow the structure of [catalog/Weapons.md](design/catalog/Weapons.md).*

### 🛠️ How to Use Templates

1. **Copy template** – Open the desired template file and copy all content
2. **Create new file** – Create a new `.md` file in the appropriate folder:
   - **Characters:** `story/characters/playable/[Name].md` or `story/characters/story/[Name].md`
   - **Levels:** `design/levels/Level-[XX]-[Name].md`
   - **Chapters:** `story/chapters/Part-0X-[Part-Name]/Chapter-[XX]-[Name].md`
   - **Locations:** `story/locations/[Type]/[Name].md` (e.g. `cities/`, `countries/`)
3. **Fill in** – Replace all placeholders `[...]` with real values
4. **Add cross-references** – Link related content in the "Related Content" section

### 📐 Important Rules

**Consistency:**
- **File names:** Use Kebab-Case (`Character-Name.md`, not `character name.md`)
- **Numbering:** Chapters/Levels: `01`, `02`, ... `64` (with leading zeros)
- **Language:** Story chapters in **German**, GDD files in **English**

**Required fields:**
- Characters: Name, MBTI, Base Stats, Growth Rates
- Levels: Objectives, Enemy Composition, Victory/Defeat Conditions
- Chapters: Minimum 2 scenes + Level box + END OF CHAPTER

**Balancing:** All numbers, ranges and formulas live in the [Balancing Guide](design/Balancing-Guide.md) – it is the single source of truth. Never copy values into other documents; link to it instead.

### ✅ Checklist Before Commit

- [ ] Template completely filled (no `[placeholders]` remaining)
- [ ] Cross-references to other documents added
- [ ] Stats/values according to [Balancing Guide](design/Balancing-Guide.md)
- [ ] Spelling/grammar checked
- [ ] File name follows naming convention
- [ ] File saved in correct folder

---

## 🎮 Game Overview

**Structure:** 8 Parts × 8 Chapters = 64 Total Chapters (Part 05 and Part 06 are parallel strands – the player chooses the order)  
**Genre:** Tactical RPG, Turn-based, Tile-based Combat  
**Core Mechanic:** The Nexus – swap positions with allies using Dardan's "Exchange" ability  
**Inspiration:** Fire Emblem franchise (FE3H, FE Engage, FE Echoes)

**Combat Systems:**
- Close Combat Triangle: Sword > Axe/Knife, Lance > Sword/Chain, etc.
- Weapon Triangle: Close Combat > Bow > Artillery > Close Combat
- Magic Triangle: Natura > Lux > Umbra > Natura

---

## 📝 Recent Updates

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

---

> **Vigilans Nexum**  
> [Twitch @DonColon](https://www.twitch.tv/doncolon) | [Youtube @DonColon](https://www.youtube.com/channel/UCoOaD0du25LCn8NOBgV7rCw) | [Instagram @DonColon](https://www.instagram.com/doncolon/) | [TikTok @DonColon](https://www.tiktok.com/@donsemicolon) | [Twitter @DonColon](https://twitter.com/DonSemiColon)
