# Level Template

> **Instructions:** Copy this template when designing a new level. Fill in all sections. Delete this instruction block when done.

---

## Level Information

**Level Number:** [XX]

**Chapter:** [Chapter XX: Chapter Name]

**Part:** [Part 0X: Part Name]

**Level Name:** [Full Level Name]

**Type:** [Story/Side Mission/Paralogue/Gaiden]

**Difficulty:** ★★☆ [1-5 stars on Normal mode]

---

## Story Context

### Pre-Battle Summary

[2-3 paragraphs explaining:]
- What happened in the story leading to this battle
- Why the characters are fighting
- What are the stakes?

### Narrative Objectives

[What does this level accomplish story-wise?]
- Character development: [Who grows/changes?]
- Plot advancement: [What story beats occur?]
- World-building: [What do we learn about the world?]

---

## Map Layout

### Terrain Description

[Overall description of the battlefield:]
- Setting: [Forest, castle, desert, urban, ship, etc.]
- Size: [Small/Medium/Large - approximate tiles: e.g., 20×15]
- Key features: [Rivers, mountains, fortresses, destructible walls, etc.]

### Terrain Effects

| Terrain Type | Defense Bonus | Avoid Bonus | Movement Cost | Special Effects |
| ------------ | ------------- | ----------- | ------------- | --------------- |
| Plains | +0 | +0 | 1 | None |
| Forest | +1 | +20 | 2 | - |
| Mountain | +2 | +30 | 3 | - |
| [etc.] | [#] | [#] | [#] | [Effect] |

### Map Sketch

```
[ASCII map or description:]

N: Northern forest (enemy spawn)
S: Southern village (player start)
C: Central bridge (chokepoint)
F: Fort (provides defense bonus, heal 10% HP per turn)
T: Treasure chest (contains [Item])

   N N N N N
   . . F . .
   ~ ~ C ~ ~
   . . . . .
   S S S S S
```

**Note:** Create actual map art separately if needed.

---

## Objectives

### Victory Conditions

- **Primary:** [e.g., Rout all enemies / Defeat boss / Seize throne / Survive X turns]
- **Alternative:** [e.g., Defeat boss early ends battle]

### Defeat Conditions

- **Dardan or [Lord Unit] dies**
- [Other defeat conditions, e.g., NPC dies, timer runs out, enemy reaches exit]

### Secondary Objectives (Bonus)

- **Objective:** [e.g., Protect all villagers]
  - **Reward:** [e.g., Energy Drop + 500 Gold]
- **Objective:** [e.g., Find hidden treasure in 8 turns]
  - **Reward:** [e.g., Silver Sword]

---

## Unit Deployment

### Player Units

**Required Units:**
- [Character Name] (forced deployment)
- [Character Name] (forced deployment)

**Optional Units:** [X slots available]

**Recommended Level:** [XX-XX]

**Pre-Battle Preparations:**
- Can access convoy: [Yes/No]
- Can visit shop: [Yes/No]
- Can adjust equipment: [Yes/No]

---

## Enemy Forces

### Enemy Composition

| Unit Type | Class | Level | Weapon | Count | Position | AI Behavior |
| --------- | ----- | ----- | ------ | ----- | -------- | ----------- |
| Mook | Soldier | [#] | Iron Lance | [#] | Northern area | Aggressive |
| Archer | Archer | [#] | Iron Bow | [#] | Fort walls | Defensive |
| Mage | Mage | [#] | Fire | [#] | Central | Supports |
| Elite | Mercenary | [#] | Steel Sword | [#] | Boss room | Guards boss |

**Total Enemy Count:** [XX units]

### Boss Unit

**Name:** [Boss Name]

**Class:** [Class Name]

**Level:** [XX]

**Stats:**

| HP | Str | Mag | Dex | Spd | Lck | Def | Res |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [#] | [#] | [#] | [#] | [#] | [#] | [#] | [#] |

**Equipment:**
- [Weapon Name] (Might: [#], Hit: [#], Crit: [#])
- [Item Name]

**Skills/Abilities:**
- [Skill Name]: [Effect]
- [Skill Name]: [Effect]

**AI Pattern:**
[How does the boss behave? Stays put? Charges? Uses specific tactics?]

**Dialogue:**
- **Pre-Battle:** [What they say before combat]
- **In Combat (vs specific character):** [Special dialogue if fought by Dardan, etc.]
- **Defeat:** [Last words]

---

## Reinforcements

### Wave 1

**Trigger:** [Turn X / When condition met]

**Units:** [X Soldiers, Y Archers]

**Spawn Location:** [North edge]

**AI:** [Aggressive/Defensive]

### Wave 2

**Trigger:** [Boss HP < 50%]

**Units:** [X Pegasus Knights]

**Spawn Location:** [Sky - can land anywhere]

**AI:** [Target mages/healers]

---

## Special Events

### Turn-Based Events

- **Turn 3:** [Event description - e.g., Villager appears asking for help]
- **Turn 5:** [Reinforcements arrive]
- **Turn 8:** [Fog of War lifts]

### Conditional Events

- **If [Character] talks to [NPC]:** [Recruitment/Item reward]
- **If player reaches [Location]:** [Cutscene triggers]
- **If [Character] survives:** [Bonus conversation post-battle]

### Environmental Hazards

- **Fire Spread:** [Tiles burn each turn, dealing damage]
- **Ballista:** [Enemy ballista fires every 2 turns]
- **Falling Rocks:** [Random tiles get hit by debris]

---

## Items & Rewards

### Chests & Loot

| Item | Location | Key Required? |
| ---- | -------- | ------------- |
| [Steel Lance] | Northeast chest | Yes (Door Key) |
| [Elixir] | Hidden in forest (tile X,Y) | No |
| [Vulnerary ×3] | Dropped by boss | No |

### Village Rewards

| Village | Character Needed | Reward |
| ------- | ---------------- | ------ |
| Southwest village | Any unit | 500 Gold + Iron Bow |
| East village | Dardan or Hasan | Spirit Dust |

### Post-Battle Rewards

- **Gold:** [Amount]
- **Experience:** [All units gain bonus XP? Or just participants?]
- **Story Item:** [Key item obtained - e.g., "Royal Seal"]

---

## Mechanics Introduced

### New Tutorial Elements

- [Mechanic Name]: [Brief explanation]
  - **Example:** "Rescue: Strong units can carry weaker allies"
- [Mechanic Name]: [Brief explanation]

### Strategic Hints

- [Hint for players, e.g., "Use archers to thin out fliers before they reach you"]
- [Hint, e.g., "The boss has high defense - use magic or armor-effective weapons"]

---

## Difficulty Variations

### Easy Mode Changes

- Enemy count: [Reduced by X%]
- Enemy stats: [Reduced by 10%]
- Reinforcements: [Delayed by 2 turns]

### Hard Mode Changes

- Enemy count: [Increased by X%]
- Enemy stats: [Increased by 15%]
- Reinforcements: [Earlier by 1 turn]
- Boss skills: [Gains Vantage]

### Maddening Mode Changes

- Enemy count: [Increased by XX%]
- Enemy stats: [Increased by 30%]
- Boss skills: [Gains Vantage + Wrath]
- New enemy types: [Dark Mage reinforcements added]

---

## Strategy Guide (Designer Notes)

### Intended Player Approach

[How did you design players to tackle this level?]
- First phase: [e.g., Hold the bridge chokepoint]
- Second phase: [e.g., Flank with cavalry once reinforcements arrive]
- Final phase: [e.g., Surround boss with multiple units]

### Common Pitfalls

- [What mistakes might players make?]
  - Example: "Charging forward too fast triggers all reinforcements at once"
- [How to avoid them?]

### Speedrun/Optimal Strategy

[For players seeking efficiency:]
- Turn count goal: [X turns]
- Key moves: [Deploy fliers to rush boss, ignore mooks]

---

## Playtesting Notes

### Checkpoints

- [ ] Average completion time: [XX minutes]
- [ ] Difficulty feels appropriate for chapter position
- [ ] All objectives are clear to player
- [ ] Boss is challenging but fair
- [ ] Reinforcements don't feel cheap
- [ ] Secondary objectives are achievable
- [ ] No softlock scenarios exist

### Balance Adjustments

[Notes from playtesting:]
- [e.g., "Reduced boss HP from 45 to 40 after feedback"]
- [e.g., "Added extra Vulnerary in village to help with healing"]

---

## Related Content

- **Chapter:** [Chapter-XX-Name.md](../chapters/Part-0X/Chapter-XX-Name.md)
- **Characters:** [Character1.md](../characters/Character1.md), [Character2.md](../characters/Character2.md)
- **Location:** [Location.md](../locations/cities/Location.md)
- **Previous Level:** [Level-XX.md](Level-XX.md)
- **Next Level:** [Level-XX.md](Level-XX.md)

---

**Version:** 1.0  
**Created:** [Date]  
**Last Updated:** [Date]  
**Designer:** [Your Name]
