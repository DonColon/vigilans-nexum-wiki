# Game Mechanics

This section of the document covers the game rules that will define the gameplay. The mechanics are divided into core mechanics that specify the level gameplay (movement, battle, commands) and secondary mechanics that specify the menu gameplay (inventory management, ability management).

Each documented mechanic follows [mechanics/_TEMPLATE.md](_TEMPLATE.md). Numbers and formulas are **not** repeated here – they live in the [Balancing Guide](../Balancing-Guide.md).

---

## Documented Mechanics

| Mechanic | What it covers |
|----------|----------------|
| **[Magic System](Magic-System.md)** | Natura magic (7 elements), Lux & Umbra, elemental weaknesses, reactions, terrain effects |
| **[Combat Arts](Combat-Arts.md)** | Special weapon techniques, MP costs, acquisition, interaction with other systems |
| **[Abilities](Abilities.md)** | Passive/active ability slots, capacity, requirements, acquisition |
| **[Chain Attack](Chain-Attack.md)** | Follow-up attacks by adjacent allies |
| **[Biorhythm](Biorythm.md)** | Per-character performance cycle, UI display, character assignments |

Item, spell, class and ability **lists** are in the [Game Catalog](../catalog/README.md); this page describes the rules behind them.

---

## Backlog – Not Yet Documented

These systems exist in the design intent but have no specification file yet. Write one with [mechanics/_TEMPLATE.md](_TEMPLATE.md) before implementing.

### Core

| Mechanic | Scope | Priority |
|----------|-------|----------|
| Combat Fundamentals | Attack calculation, damage, hit rate (formulas already in Balancing Guide) | High |
| Weapon Triangles | Close Combat, Weapon and Magic triangle | High |
| Movement | Tile-based movement, terrain effects, movement types | High |
| The Nexus / Exchange | Dardan's signature ability – swap positions with allies | High |
| Class System | Citizen → Base → Intermediate → Advanced → Master → Unique | High |
| Experience & Leveling | XP gain, level caps, stat growth | High |
| Victory & Defeat Conditions | Win/loss scenarios, secondary objectives | Medium |
| Permadeath & Retreat | Classic vs. Casual mode | Medium |
| Difficulty Modes | Easy, Normal, Hard, Maddening | Medium |
| Critical Hits | Crit rate, bonus damage | Medium |
| Status Effects | Poison, sleep, stun, buffs/debuffs | Medium |

### Secondary

| Mechanic | Scope | Priority |
|----------|-------|----------|
| Inventory | Item capacity, convoy, trading between units | Medium |
| Durability | Weapon uses, repair | Medium |
| Gold & Economy | Earning gold, shops, item costs | Medium |
| Support System | Building bonds, support conversations, stat bonuses | High |
| Ability Management | Learning, equipping, upgrading abilities | Low |
| Skill Inheritance | Which abilities a unit keeps when promoting up its branch (promotion is one-way – there is no reclassing) | Low |
| Base Management | Between-chapter activities, character conversations | Medium |
| Unit Deployment | Selecting units for missions, restrictions | Medium |
| Bonus Objectives | Optional goals, rewards, recruitment conditions | Low |

### Undecided – Design Question Still Open

| Mechanic | Open question |
|----------|---------------|
| Trust & Bonds | Separate system, or already covered by Support System + Nexus? |
| The Vigilant Knights | Faction/reputation mechanic, or purely narrative? |
| Divine Pulse | Turn rewind – include at all? Currently referenced in the Balancing Guide's difficulty table |
| Gambits & Battalions | Group tactics – include at all? |

---

## Related

- **[Balancing Guide](../Balancing-Guide.md)** – all numbers, ranges and formulas
- **[Progression System](../Progression-System.md)** – when each system unlocks across the campaign
- **[Design Pillars](../Design-Pillars.md)** – the five questions every mechanic must answer
