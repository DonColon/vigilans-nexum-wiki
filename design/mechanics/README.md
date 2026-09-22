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
| **[Growth Modifiers](Growth-Modifiers.md)** | Effective growth = personal + class growth modifier (+ Aptitude for the Vigilant Knights), tier scaling, the anti-trap guard, the Citizen's staged weapon access (Ch 01 / 04 / 05) and its MP regime by equipped weapon |
| **[Beast Summon](Beast-Summon.md)** | The Bestiarius' *Beast Call*: the Solmare beast as an Other-faction unit, its stat derivation from the summoner, the three-per-map budget, the order set and the Chain-reach leash, what the beast is excluded from (XP, objectives, staves, Exchange, chain attack), and the wild beasts of Ch 22/23 as the same unit |
| **[The Nexus](Nexus.md)** | Dardan's Lord-Kit system: *Exchange* (position swap through everything, range by affinity rank, flat global cooldown, Ch 08), *Lifeline* (a share of an ally's wounds carried by Dardan, no floor, chapter open), *Heartpulse* (map-wide heal by each unit's rank, once per chapter, Ch 21), *Earthbound* (seals one enemy's access to the band – abilities, arts, magic, auras – for N rounds, Ch 44; cuts the Dajjal's chain in Ch 52), *Soulcairn* (passive, Classic only, no chapter gate: the fallen units' frozen affinity points with Dardan sum into one partner on his chart whose rank is read off the ordinary thresholds, granting the ordinary combat bonus only when no living ranked partner is within bonus range – it fills the gap and never stacks), *Wavelength* (command on a cooldown, chapter open: Dardan borrows a living ally's elemental affinity for a number of attacks set by their rank – the [Magic System](Magic-System.md)'s one exception to "non-mages apply only through Combat Arts", and he applies without ever triggering a reaction), the golden/black band state set per chapter, and the exclusion of summoned beasts. Reads the affinity rank of [Affinity](Affinity.md) |
| **[Affinity](Affinity.md)** | The bond system: one affinity value per pair of playable units, earned only by acting together (chain attacks, shared kills, healing, curing, rescuing, Dardan's Nexus abilities, map talks, Heart-to-Hearts) and never by proximity; five ranks D–S with XC1's colours; one rank-up per unit per chapter, chosen by the player (the Path of Radiance throttle); a combat bonus whose kind comes from the pair's two elemental affinities and whose size from the rank, from the strongest partner within range only; three Heart-to-Hearts per pair at pair-specific ranks, viewed between chapters; the Affinity Chart with story characters by subtitle and without rank; Skill Links rejected. The Nexus reads its rank; Base Management inherits its between-chapter selection |

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
| Class System | Citizen → Base → Intermediate → Advanced → Master (+ Lord Kit) | High |
| Experience & Leveling | XP gain, level caps (stat growth composition is now in [Growth Modifiers](Growth-Modifiers.md); the level-up roll itself and the XP formula's rules are still open) | High |
| Weapon Rank Progression | How a rank rises (weapon XP through use); the F–S scale and the caps per tier are already in the [Progression System](../Progression-System.md#weapon-rank) and the [Balancing Guide](../Balancing-Guide.md#weapon-rank-caps) | Medium |
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
| Ability Management | Learning, equipping, upgrading abilities | Low |
| Skill Inheritance | Which abilities a unit keeps when promoting up its branch (promotion is one-way – there is no reclassing) | Low |
| Base Management | Between-chapter activities at a place in the world. **First requirement, set by [Affinity](Affinity.md#6--heart-to-hearts):** a between-chapter selection in which rank-ups are confirmed and the available Heart-to-Hearts are listed and viewed – after the chapter, before the next deployment. Everything else Base Management does is its own | Medium |
| Unit Deployment | Selecting units for missions, restrictions | Medium |
| Bonus Objectives | Optional goals, rewards, recruitment conditions | Low |

### Undecided – Design Question Still Open

| Mechanic | Open question |
|----------|---------------|
| The Vigilant Knights | Faction/reputation mechanic, or purely narrative? |
| Divine Pulse | Turn rewind – include at all? Currently referenced in the Balancing Guide's difficulty table |
| Gambits & Battalions | Group tactics – include at all? |

---

## Related

- **[Balancing Guide](../Balancing-Guide.md)** – all numbers, ranges and formulas
- **[Progression System](../Progression-System.md)** – when each system unlocks across the campaign
- **[Design Pillars](../Design-Pillars.md)** – the five questions every mechanic must answer
