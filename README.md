# Welcome to Vigilans Nexum Wiki

**Vigilans Nexum** is a tactical, turn-based RPG inspired by Fire Emblem, with a deep narrative focus on trust, bonds, and the invisible connections between people on the battlefield.

This wiki serves as the complete Game Design Document (GDD) for the project.

---

## 📖 Documentation Structure

### Core Documents
- **[Overview](wiki/Overview.md)** – Vision, team, target audience
- **[Design Pillars](wiki/Design-Pillars.md)** – Core design philosophy & principles
- **[Game Mechanics](wiki/Game-Mechanics.md)** – Combat, movement, progression systems
- **[Game Setting](wiki/Game-Setting.md)** – World, story, characters, mythology
- **[Game Catalog](wiki/Game-Catalog.md)** – Weapons, spells, classes, abilities

### Content Indices
- **[Story](wiki/Story.md)** – All 32 chapters across 4 parts
- **[Characters](wiki/Characters.md)** – Playable units, NPCs, antagonists
- **[Levels](wiki/Levels.md)** – Level designs & objectives
- **[Locations](wiki/Locations.md)** – World geography & key places
- **[Mythology](wiki/Mythology.md)** – Religion, lore, world history

### Design Resources
- **[Balancing Guide](wiki/Balancing-Guide.md)** – Numerical design principles
- **[Progression System](wiki/Progression-System.md)** – Level curve & class advancement
- **[Writing Style Guide](wiki/Writing-Style-Guide.md)** – Narrative consistency guidelines
- **[Templates](wiki/templates/)** – Standardized templates for new content

---

## 🚀 Quick Start for Designers

**Writing a story chapter?** → [Story](wiki/Story.md) | [Chapter Template](wiki/templates/CHAPTER-TEMPLATE.md)  
**Designing a level?** → [Levels](wiki/Levels.md) | [Level Template](wiki/templates/LEVEL-TEMPLATE.md)  
**Creating a character?** → [Characters](wiki/Characters.md) | [Character Template](wiki/templates/CHARACTER-TEMPLATE.md)  
**Balancing weapons?** → [Weapons](wiki/catalog/Weapons.md) | [Balancing Guide](wiki/Balancing-Guide.md)  
**Adding locations?** → [Locations](wiki/Locations.md) | [Location Template](wiki/templates/LOCATION-TEMPLATE.md)

### 📋 Available Templates

| Template | Purpose | When to use? |
|----------|---------|--------------|
| [CHARACTER-TEMPLATE.md](wiki/templates/CHARACTER-TEMPLATE.md) | New playable characters | When adding a new unit |
| [LEVEL-TEMPLATE.md](wiki/templates/LEVEL-TEMPLATE.md) | Level design documents | For each new chapter/level |
| [CHAPTER-TEMPLATE.md](wiki/templates/CHAPTER-TEMPLATE.md) | Story chapters (German) | When continuing the story |
| [LOCATION-TEMPLATE.md](wiki/templates/LOCATION-TEMPLATE.md) | Places in Tridera | New cities, countries, dungeons |
| [WEAPON-TEMPLATE.md](wiki/templates/WEAPON-TEMPLATE.md) | Weapons in catalog | Balancing new weapons |

### 🛠️ How to Use Templates

1. **Copy template** – Open the desired template file and copy all content
2. **Create new file** – Create a new `.md` file in the appropriate folder:
   - **Characters:** `wiki/characters/playable/[Name].md` or `wiki/characters/story/[Name].md`
   - **Levels:** `wiki/levels/Level-[XX]-[Name].md`
   - **Chapters:** `wiki/chapters/Part-0X-[Part-Name]/Chapter-[XX]-[Name].md`
   - **Locations:** `wiki/locations/[Type]/[Name].md` (e.g. `cities/`, `countries/`)
3. **Fill in** – Replace all placeholders `[...]` with real values
4. **Add cross-references** – Link related content in the "Related Content" section

### 📐 Important Rules

**Consistency:**
- **File names:** Use Kebab-Case (`Character-Name.md`, not `character name.md`)
- **Numbering:** Chapters/Levels: `01`, `02`, ... `32` (with leading zeros)
- **Language:** Story chapters in **German**, GDD files in **English**

**Required fields:**
- Characters: Name, MBTI, Base Stats, Growth Rates
- Levels: Objectives, Enemy Composition, Victory/Defeat Conditions
- Chapters: Minimum 2 scenes + Level box + END OF CHAPTER

**Balancing:** Always consult the [Balancing Guide](wiki/Balancing-Guide.md):
- **Weapons:** Follow tier progressions (Iron → Steel → Silver)
- **Characters:** Growth Rates should total 300-420%
- **Levels:** Enemy Level = Player Level +2 (Normal Mode)

### ✅ Checklist Before Commit

- [ ] Template completely filled (no `[placeholders]` remaining)
- [ ] Cross-references to other documents added
- [ ] Stats/values according to [Balancing Guide](wiki/Balancing-Guide.md)
- [ ] Spelling/grammar checked
- [ ] File name follows naming convention
- [ ] File saved in correct folder

---

## 🎮 Game Overview

**Structure:** 4 Parts × 8 Chapters = 32 Total Chapters  
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
