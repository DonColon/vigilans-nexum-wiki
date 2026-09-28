# Balancing Guide

The cross-system numbers of Vigilans Nexum: the combat formulas, the passive bonus budget, the stat, growth and max-stat frameworks, class tier modifiers, weapon balancing, XP and the level curve, economy and difficulty scaling.

**Every number exists in exactly one place.** A number that spans systems lives here. A number that belongs to one mechanic lives in that mechanic's own `## Balancing` section, next to its rule (decided by Dardan, 2026-09-28). Never copy a value into a second document; link to where it lives.

**Mechanic-specific values live in each spec's `## Balancing` section:**

- [Abilities → Balancing](mechanics/Abilities.md#balancing) – Capacity per tier, Capacity cost, trigger chances (the Luck formula; base chances not yet set)
- [Affinity → Balancing](mechanics/Affinity.md#balancing) – rank thresholds, points per source, bonus range, combat bonus by rank, element mixes, starting ranks
- [Beast Summon → Balancing](mechanics/Beast-Summon.md#balancing) – Beast Call cost, beast factors, natural weapon, beast movement
- [Biorhythm → Balancing](mechanics/Biorythm.md#balancing) – Resonance by tier, Unique values, Dissonance by difficulty
- [Chain Attack → Balancing](mechanics/Chain-Attack.md#balancing) – shield phases per boss, shield bar and reduction per source (not yet set)
- [Combat Arts → Balancing](mechanics/Combat-Arts.md#balancing) – a non-mage's MP gain per ordinary attack
- [Growth Modifiers → Balancing](mechanics/Growth-Modifiers.md#balancing) – class growth modifiers, Aptitude
- [Magic System → Balancing](mechanics/Magic-System.md#balancing) – mages' MP regeneration, reaction damage bonus, reaction effect values, terrain and field values, terrain duration bands, spell MP cost bands, magic effect values (rank bonus, healing, shields, buffs, debuffs, poison, regeneration, drain), Natura profile compensation
- [The Nexus → Balancing](mechanics/Nexus.md#balancing) – Exchange, Nexus Mastery, Lifeline, Heartpulse, Wavelength, Bloodoath, Dawnbreak, Earthbound

---

## 🎯 Core Balancing Philosophy

**Fire Emblem Principle:** *Choices should be meaningful, not obvious.*

- Every weapon/class/skill should have a **niche** where it excels
- No "strictly better" options – only situational advantages
- Early-game tools should remain viable with upgrades
- Player skill > optimal builds

---

## ⚔️ Weapon Balancing

### Base Stats Framework

| Stat | Description | Typical Range |
|------|-------------|---------------|
| **Might** | Base damage added to attack | 1-20 (Close), 3-15 (Ranged), 5-18 (Magic) |
| **Hit** | Base accuracy percentage | 70-95% (balanced), 60-70% (high-risk), 95-100% (low-damage) |
| **Critical** | Base critical hit chance | 0-10% (most weapons), 15-30% (killer weapons) |
| **Range** | Attack distance | 1 (melee), 1-2 (reach/thrown/magic), 2-3 (bows), 2-4 (longbows), 3-10 (artillery), 4-12 (siege) |
| **Weight** | Affects Attack Speed (AS) | 0-5 (light), 6-12 (medium), 13-20 (heavy) |
| **Uses** | Durability before breaking | 12-18 (bronze), 20-30 (iron), 30-40 (steel), 45-60 (silver), ∞ (legendary) |
| **Cost** | Purchase price in gold | **Base cost = 10 × the type's Iron Might**, multiplied by the tier/rank factor below |

### Weapon Triangle Bonuses

```
Advantage: +15 Hit, +1 Damage
Disadvantage: -15 Hit, -1 Damage
```

### Weapon Tier Progression

| Tier | Might Multiplier | Hit Modifier | Weight Modifier | Uses | Cost Multiplier | Example |
|------|------------------|--------------|-----------------|------|-----------------|---------|
| **Bronze** *(Proposal)* | 0.6× | +5 Hit, **Critical 0** | -1 | 15 | 0.4× | Bronze Sword: 3 Might, 95 Hit, 0 Crit, 20 Gold |
| **Iron** | 1.0× | Base | Base | 25 | 1.0× | Iron Sword: 5 Might, 90 Hit, 50 Gold |
| **Steel** | 1.5× | -5 Hit | +2 | 35 | 3.0× | Steel Sword: 8 Might, 85 Hit, 150 Gold |
| **Silver** | 2.0× | -10 Hit | +3 | 50 | 10.0× | Silver Sword: 10 Might, 80 Hit, 500 Gold |
| **Legendary** | 2.5×+ | +5 Hit | – | ∞ | Priceless | Hero's Blade: 13 Might, 95 Hit |

Might is multiplied off the type's Iron line and rounded to the nearest whole number (.5 rounds up). The catalog entries derived from this table are in [Weapons](catalog/Weapons.md) and [Magic Tomes](catalog/Magic-Tomes.md).

**Why Bronze** *(Proposal)*: Iron is the first tier a class-locked unit buys, but the eight Vigilant Knights hold rank F in the Citizen class and fight for six chapters before any of them picks a base class. Bronze is the weapon rank F can hold – in every weapon type, the tomes and the staff included, handed out in three stages (Ch 01 / 04 / 05, see [Growth Modifiers](mechanics/Growth-Modifiers.md#core-rules)) so that every Knight has held every type before the class is chosen. It is worse in the stat that decides a kill (0.6× Might) and better in the stat that teaches the game (+5 Hit), so a first attack lands and still does not end a fight in one blow. **Critical is 0 on every Bronze weapon** – a player learning the combat maths should not have it overturned by a random triple-damage roll, in either direction. 15 Uses and 0.4× cost keep it disposable: Bronze is meant to be replaced around Ch 09, not maintained.

### Cost Multiplier by Weapon Rank

*Proposal.*

| Rank | F | E | D | C | B | A | S |
|------|---|---|---|---|---|---|---|
| **Cost ×** | 0.4 | 1.0 | 3.0 | 5.0 | 7.0 | 10.0 | 20.0 |

`Cost = base cost × rank multiplier`, base cost per the Base Stats Framework above. A **Staff** has no Might to derive from; its base cost is **60 Gold**, set so that the E-rank Heal staff lands between a Vulnerary and a seal.

**Why one scale for tiers and variants:** Bronze, Iron, Steel and Silver sit at ranks F, E, D and A, and their multipliers in the tier table are exactly the F, E, D and A entries here. The variants that fill ranks C and B – effective, killer, reach – therefore price themselves without a second rule, and every weapon in the catalog costs what its rank costs. Ranks C and B interpolate between Steel and Silver because that is where they sit in power.

### Special Weapon Types

**Killer Weapons:** -5 Might, +30 Critical  
**Brave Weapons:** Standard Might, -10 Hit, 2× attacks  
**Effective Weapons:** +9 Might vs. specific enemy types (cavalry, armor, fliers)  
**Magic Weapons:** Use Magic stat instead of Strength

#### Variant Rules

*Proposal – clarifications and one added type, needed to derive the catalog entries.*

| Variant | Built on | Modifiers |
|---------|----------|-----------|
| **Killer** | Silver line | -5 Might, **Critical 30** |
| **Brave** | Iron line (1.0× = "standard") | -10 Hit, +4 Weight, 2× attacks |
| **Effective** | Steel line | +9 Might vs. one Move Type, +2 Weight |
| **Reach** | Iron, Steel or Silver line | -3 Might, -10 Hit, range band extended by 1 (1 → 1–2, 2–3 → 2–4) |
| **Magic** | any line | Uses Mag instead of Str, and is answered by Res rather than Def, per the [damage formula](#-damage-calculation-formula) |
| **Crushing** | Silver line | Gives up a native 2× attack: Might ×2, +10 Hit (the Brave penalty refunded), +4 Weight, one strike |

**Uses:** 0.7× the Uses of the line the variant is built on, rounded to 5 – 20 (Iron), 25 (Steel), 35 (Silver). A specialised weapon wears out faster than the plain one.

**Why Killer is a fixed 30, not "+30":** the 30 replaces a type's native Critical instead of stacking with it, which matters only for the Knife (native 10). `Crit% = Weapon Crit + Dex÷2`, so a Lv 30 Assassin with Dex 25 already crits at 42% on a 30-base weapon. At 40 it crosses 50% and the weapon, not the player's positioning, decides the battle.

**Why Brave is built on the Iron line:** "standard Might" is the 1.0× line. Two Iron-strength hits beat one Silver hit against low Defense and lose to it against high Defense, because Defense is subtracted from each hit – that is the choice the variant exists to offer. The +4 Weight means a Brave user rarely doubles on top of it, so the effect never compounds with itself.

**Why Reach costs Might and Hit:** a 1–2 weapon is the only answer a melee unit has to a 2-range attacker. It must exist for every melee type that can carry it, and it must be the worse weapon in a straight fight, or nobody would ever equip the plain one.

**The Gauntlet carries Brave natively.** Every gauntlet strikes twice, so the whole type is priced as a Brave weapon: its listed Hit is already 10 below its accuracy class (a 95-Hit weapon shows 85) and its Might line is the lowest on the close-combat wheel. Gauntlets therefore have no Brave variant – the **Crushing** variant is the opposite trade, buying single-strike Might back for the fights where Defense is subtracted twice. The rule itself is in [Weapons → Gauntlets](catalog/Weapons.md#gauntlets).

### Weapon Rank Caps

*Proposal – all values in this table are first drafts for tuning.*

Ranks run F–S per weapon type; the rule (cap rises with tier, S only at Master, secondary types one step lower, F only in Citizen) is in the [Progression System → Weapon Rank](Progression-System.md#weapon-rank). This table holds the caps.

| Tier | Main type cap | Secondary type cap | Ranks opened by this tier |
|------|---------------|--------------------|---------------------------|
| **Citizen** | F | – (every type F; access staged Ch 01 / 04 / 05, see [Growth Modifiers](mechanics/Growth-Modifiers.md#core-rules)) | F |
| **Base** | D | – (no hybrid base class) | E, D |
| **Intermediate** | B | C | C, B |
| **Advanced** | A | B | A |
| **Master** | S | A | S |

**Derivation:** Seven ranks over five tiers. Citizen takes F alone, so six ranks remain for four promotions – two each for Base and Intermediate, where promotions come fast (Ch 06, Ch 12), one each for Advanced and Master, where a single rank has 16 and 11 chapters to be earned. The split is chosen so that the [weapon availability timeline](Progression-System.md#-weapon-progression-timeline) can line up with the tiers if weapon ranks are assigned later: Steel (Ch 9) reachable in Base, Silver (Ch 25) at Advanced (Ch 25), Legendary (Ch 41) at Master (Ch 41).

### Battle Staff Guard

*Proposal.*

```
Attacks against a unit with a Battle Staff equipped, from range 1: -10 Hit
Attacks from range 2+: no effect
```

**Why -10:** Below the triangle swing of 15, so Guard on its own never flips a triangle matchup – a Knife, which beats the Battle Staff, still attacks it at a net +5 Hit. The rule is in [Weapons → Battle Staves](catalog/Weapons.md#battle-staves).

---

## 📊 Unit Stat Balancing

### Base Stats at Level 1 (Citizen Class)

| Stat | Minimum | Average | Maximum | Notes |
|------|---------|---------|---------|-------|
| **HP** | 16 | 18 | 22 | Tanks: +4, Glass Cannons: -2 |
| **MP** | 6 | 10 | 16 | Fuel for Combat Arts and magic; casters start higher |
| **Strength** | 3 | 5 | 8 | Physical attackers |
| **Magic** | 0 | 3 | 7 | Mages start higher |
| **Dexterity** | 3 | 5 | 8 | Affects Hit & Avoid |
| **Speed** | 3 | 5 | 9 | Fast units: 7-9 |
| **Luck** | 2 | 4 | 6 | Minor stat |
| **Defense** | 2 | 4 | 7 | Armored units: +3 |
| **Resistance** | 0 | 2 | 5 | Mages: +3-5 |

### Growth Rates (% chance per level)

| Stat | Low | Medium | High | Elite |
|------|-----|--------|------|-------|
| **HP** | 30% | 50% | 70% | 90% |
| **MP** | 15% | 30% | 45% | 60% |
| **Str/Mag** | 20% | 40% | 60% | 80% |
| **Dex/Spd** | 25% | 45% | 65% | 85% |
| **Lck** | 20% | 35% | 50% | 65% |
| **Def/Res** | 15% | 30% | 50% | 70% |

**Total Growth Rate Budget per Unit:** 300-400% across the eight combat stats  
- Balanced units: ~350%  
- Min-maxed units: 280-320% (high in few stats, low in others)  
- Lord/Main characters: 380-420%

**MP is budgeted separately** and does not count toward the 300-400%. It is a resource stat, not a combat stat – a unit with high MP growth is not thereby weaker elsewhere. Casters and Combat-Art-heavy classes sit at 45-60%, pure physical units at 15-30%.

**The budget above is the *personal* growth only.** A unit's effective growth on any level-up is personal growth + the [class growth modifier](mechanics/Growth-Modifiers.md#class-growth-modifiers) of its current class (+ Aptitude for the Vigilant Knights) – the rule is in [Growth Modifiers](mechanics/Growth-Modifiers.md). Sheets budget the personal part; the rest comes from the class and is the same for every unit in it.

### Max Stats (Level 60, Master Class)

| Stat | Absolute Cap |
|------|--------------|
| HP | 90 |
| MP | 60 |
| Str/Mag | 50 |
| Dex/Spd/Lck | 50 |
| Def/Res | 50 |

**Why these numbers:** Over 59 level-ups a balanced unit (~44% average growth) gains ~26 points per stat, landing near 32 before class bonuses and ~37 after – enough headroom that caps stay meaningful. Elite growth rates (80-85%) reach the cap around Lv 50, i.e. in Part 08, where capping reads as a reward rather than wasted level-ups.

That paragraph reads personal growth alone. With the [class growth modifier](mechanics/Growth-Modifiers.md#class-growth-modifiers) and [Aptitude](mechanics/Growth-Modifiers.md#aptitude) on top, the reference case becomes the **line's main stat**: a Knight with *Medium* personal growth there reaches the cap around Lv 55, one with *High* growth around Lv 45 – the Part 07 reunion. Off-line stats behave as the paragraph above says. A sheet that puts *Elite* personal growth into its class's own main stat is therefore over-investing – the reachability check in `statcraft`, which now runs along the canon class path (see [Growth Modifiers](mechanics/Growth-Modifiers.md#interaction-with-other-mechanics)), is where that shows.

---

## 🏆 Class Balancing

### Class Tier Stat Modifiers

| Tier | HP | MP | Str/Mag | Spd | Def/Res | Movement |
|------|-----|-----|---------|-----|---------|----------|
| **Citizen** | +0 | +0 | +0 | +0 | +0 | 5 tiles |
| **Base** | +2 | +5 | +1 | +1 | +1 | 5-6 tiles |
| **Intermediate** | +4 | +10 | +2 | +2 | +2 | 6 tiles |
| **Advanced** | +6 | +15 | +3 | +3 | +3 | 6-7 tiles |
| **Master** | +10 | +20 | +5 | +4 | +4 | 7 tiles |

**Master is the terminal tier for every unit, Dardan and Hasan included.** A Lord Kit adds abilities on top of the Master class, never stats – see [catalog/Unit-Classes.md](catalog/Unit-Classes.md). The Lords' advantage is the kit, not a hidden stat lead.

> **Open – per tier or per class?** This table is per tier: every Base class grants the same +2 HP / +1 Str-Mag. The [class growth modifiers](mechanics/Growth-Modifiers.md#class-growth-modifiers) are per class line. Whether the *stat* modifiers should follow and become per class as well is not decided; until it is, the table above stands as written.

### Puppeteer Wires

*Not yet set.* The rules of the wire – hidden from the AI, visible to the player, one per Puppeteer at a time, spent when it fires – are on the *Tripwire* and *Pull the Strings* rows in [Abilities](catalog/Abilities.md#master). The one value that only changes the strength of the system is here.

| Parameter | Value |
|-----------|-------|
| Wires on the map at once with *Pull the Strings* | *not yet set* |

### Class Type Templates

**Physical Attacker:** High Str/Spd, Low Mag/Res  
**Magic User:** High Mag/Res, Low Str/Def  
**Tank:** High HP/Def, Low Spd  
**Speedy:** High Spd/Dex, Low HP/Def  
**Balanced:** Medium across the board

---

## 🎲 Damage Calculation Formula

```
Attack = (Weapon Might) + (Str or Mag) + (Triangle Bonus) + (Affinity Bonus) + (Biorhythm)
Defense = (Enemy Def or Res) + (Terrain Bonus) + (Affinity Bonus)

Damage = Attack - Defense
Minimum Damage = 0
```

**Affinity Bonus:** the Attack, Defense, Hit, Avoid, Critical or Dodge value the unit draws from its strongest affinity partner within the bonus range. The values are in [Affinity → Balancing](mechanics/Affinity.md#balancing) and the rule in [Affinity → Core Rules → 4](mechanics/Affinity.md#4--the-combat-bonus). It is zero when no ranked partner is in range.

**Biorhythm:** the Attack, Hit, Avoid or Critical change from the unit's biorhythm state this round: positive in Resonance, negative in Dissonance, zero when Neutral. The values are in [Biorhythm → Balancing](mechanics/Biorythm.md#balancing) and the rule in [Biorhythm → Core Rules → 7](mechanics/Biorythm.md#7--what-the-states-do). It is a separate term and stacks with the Affinity Bonus.

### Attack Speed (AS) Calculation

```
AS = Speed - (Weapon Weight - Str/5)

If Attacker AS ≥ Enemy AS + 4:
  → Double Attack (2× damage)
```

### Hit Rate Calculation

```
Hit = (Weapon Hit) + (Dex × 2) + (Luck ÷ 2) + (Affinity Bonus) + (Triangle Bonus) + (Biorhythm)
Avoid = (Speed × 2) + (Luck) + (Terrain Bonus) + (Affinity Bonus) + (Biorhythm)

True Hit% = Hit - Avoid
Display Hit% = True Hit% (capped at 0-100%)
```

**Note:** Consider implementing Fire Emblem's "True Hit" system (2RN) where displayed hit rates are more reliable.

### Critical Hit Calculation

```
Crit = (Weapon Crit) + (Dex ÷ 2) + (Affinity Bonus) + (Biorhythm)
Dodge = (Luck) + (Affinity Bonus)

Crit% = Crit - Dodge (minimum 0%)

Critical Damage = Damage × 3
```

### Passive Bonus Budget

*Proposal: every cap below is a first draft for tuning. That a budget exists, and that it lives here, is Dardan's decision (2026-09-28).*

A **passive system** is one that adds to a formula term without the unit spending an action on it in that combat. Three exist today, each entering the formulas above as its own term:

- the **weapon triangle** (*Triangle Bonus*);
- **Affinity** (*Affinity Bonus*, values in [Affinity → Balancing](mechanics/Affinity.md#balancing));
- **Biorhythm** (*Biorhythm*, values in [Biorhythm → Balancing](mechanics/Biorythm.md#balancing)).

**The rule.** On one side of one combat, the sum of all passive-system terms may not exceed the cap for that term. Every passive system is counted at the highest value it can reach at the same time as the others. A new passive system, or a retuning of an existing one, has to fit under these caps. Otherwise it comes with a deliberate change to this table, made here and nowhere else. That is what keeps any single system, and all of them together, from deciding a fight before the player has positioned anyone.

| Term | Worst case today | Cap (proposal) | Why this number |
|------|------------------|----------------|-----------------|
| **Attack** | +7 | **+8** | One passive system alone may add no more than a Master promotion's Str/Mag ([Class Tier Stat Modifiers](#class-tier-stat-modifiers)). Affinity's derivation sets that ceiling. On top of it, the triangle adds its damage step and Biorhythm its single Attack point. Together they are one promotion plus two points, reachable only by a same-element S pair on a Unique rhythm round with triangle advantage. The cap adds one point of buffer |
| **Hit** | +45 | **+50** | The worst case the Biorhythm stack check found: triangle advantage, a same-element S pair and the strongest rhythm together, plus five points of buffer. Displayed Hit is capped at 100 anyway, so the cap is about how quickly a Hit gap closes, not about exceeding 100 % |
| **Avoid** | +30 | **+35** | Affinity's and Biorhythm's Avoid at their highest, plus five points of buffer. The triangle gives no Avoid |
| **Critical** | +25 | **+29** | Below a Killer weapon's fixed Critical ([Variant Rules](#variant-rules)). A passive stack must never be worth more crit than the weapon built for crit. The buffer stops one point short of the Killer's 30 instead of taking the full five |
| **Defense** | +5 | **+6** | Affinity alone, which equals a Master promotion's Def/Res step plus one. Biorhythm adds no Defense. The cap adds one point of buffer |
| **Dodge** | +20 | **+25** | Affinity alone, plus five points of buffer. Biorhythm adds no Dodge |

**Derivation.** The worst cases are the stack check written for Biorhythm ([Biorhythm → Balancing → The stack with Affinity](mechanics/Biorythm.md#derivation-two-ceilings)): every passive system at the highest value it can reach at the same time as the others. Until 2026-09-29 the caps equalled those worst cases exactly, so there was no headroom and even the smallest new passive needed a change to this table.

**The buffer** *(proposal, 2026-09-29; that caps carry a buffer was decided by Dardan, the size is Rulewright's)*. Each cap sits **one grain** above today's worst case, where the grain is the smallest step the term already moves in:

- **+5 on the rate terms – Hit, Avoid, Dodge.** Five is the step every accuracy value in the game is built on: weapon tiers change Hit in fives, Bronze adds +5, the Natura profile compensation is +5, a triangle swing is three fives. A buffer of five holds exactly one such step.
- **+1 on the flat terms – Attack, Defense.** One point is the smallest whole step a flat term takes after rounding; Affinity's half-points are summed and rounded down before they count.
- **Critical is the exception:** +4, to +29. Five would reach the Killer weapon's 30 and break the rule the cap exists for.

**What the buffer is for, and what it is not.** It lets a **small** future passive – one step on one term, a situational +5 Hit or a +1 Attack – fit without touching this table. It is deliberately smaller than any existing system's own contribution: the smallest real source in the stack (a Standard single resonance, +3 Hit) already uses most of a rate buffer. **A big new passive still needs a deliberate change to this table**, made here and nowhere else. And the buffer is not a reserve for the bonuses listed below as *not counted yet*: several of them would exceed it on their own (the Crystal Field's +10 Defence, a flat *Hit Rate +10*), so counting them remains Dardan's decision, not something the buffer settles.

**Not counted yet – open:** several other bonuses would count under the rule's own definition, and whether they belong in the budget is Dardan's call:

- class abilities that add a flat value always (*Hit Rate +10*, *Avoid +10* and the like in [Abilities](catalog/Abilities.md));
- terrain;
- the [Battle Staff Guard](#battle-staff-guard);
- [Natura profile compensation](mechanics/Magic-System.md#natura-profile-compensation);
- staff buffs and debuffs (these cost an action when cast, but then last several rounds).

---

## 📈 Level Progression Curve

### Recommended Average Levels per Part

**Level cap:** 60, reached at the Dajjal (Ch 52). A unit plays **52 progression chapters** – Parts 01-04 (32) + one strand of Part 05/06 (8) + Part 07 (8) + Tower (4). The epilogue (Ch 53-56) grants no XP.

| Chapter Range | Part | Avg Player Level | Avg Enemy Level | Notes |
|---------------|------|------------------|-----------------|-------|
| 01-08 | Part 01 | 1 → 11 | 1 → 13 | Tutorial · **base class chosen end of Ch 06** |
| 09-16 | Part 02 | 11 → 20 | 13 → 22 | **Intermediate classes at Lv 15** |
| 17-24 | Part 03 | 20 → 29 | 22 → 31 | Intermediate phase |
| 25-32 | Part 04 | 29 → 37 | 31 → 39 | **Advanced classes at Lv 30** |
| 33-40 | Part 05 *or* 06 | 37 → 45 | 39 → 47 | Split roster – **both strands identical** |
| 41-48 | Part 07 | 45 → 54 | 47 → 56 | **Master at Lv 45** at the reunion; Lord Kit for Dardan and Hasan |
| 49-52 | Part 08 Tower | 54 → 60 | 56 → 62 | All enemies promoted, four bosses |
| 53-56 | Part 08 Epilogue | 60, static | – | No combat, no XP |

**Parallel strands:** Part 05 and Part 06 must share the same enemy level band. Both are exactly eight chapters long, so matching enemy levels is all that is needed to have both groups arrive in Part 07 at equal strength – no special XP rule required.

**Catch-up XP:** With 30+ units and 14-16 deployment slots, units below their group's average level gain bonus XP. The spread within a group is the real balancing problem, not the spread between the two strands.

### XP Gain Formula

```
Base XP = 10 (standard enemy kill)

Modifiers:
- Boss Kill: ×3 XP
- Level Difference: +1 XP per level below enemy, -1 per level above
- Class Tier Difference: +5 XP if enemy is promoted
- Staff heal: 10 XP per heal action (the rule is in the [Progression System → Weapon Rank](Progression-System.md#weapon-rank))
- Supporting: 5 XP per turn adjacent to fighting ally
```

---

## 💰 Economy Balancing

### Gold Income per Chapter

| Part | Gold per Chapter | Cumulative Total |
|------|------------------|------------------|
| Part 1 | 500-1,000 | ~6,000 |
| Part 2 | 1,000-2,000 | ~18,000 |
| Part 3 | 2,000-3,000 | ~36,000 |
| Part 4 | 3,000-5,000 | ~64,000 |

### Item Cost Guidelines

```
Consumables (Vulnerary, Antidote): 100-300 Gold
Iron Weapons: 400-600 Gold
Steel Weapons: 1,200-1,800 Gold
Silver Weapons: 4,000-6,000 Gold
Stat Boosters: 5,000-8,000 Gold
```

> **Open – these bands contradict the weapon cost formula by a factor of 10.** [Weapon Tier Progression](#weapon-tier-progression) prices an Iron Sword at 50 Gold, a Steel Sword at 150 and a Silver Sword at 500; the band above says 400-600 / 1,200-1,800 / 4,000-6,000. The [Weapons](catalog/Weapons.md) catalog is filled from the formula, because the formula is the one that derives per type and carries the tier multipliers. Which of the two the gold curve should be built around is a decision, not a rounding error – until it is made, the bands above apply to consumables and stat boosters only.

**Scarcity Principle:** Player should afford ~70% of what they want, forcing choices.

---

## 🎨 Difficulty Mode Scaling

| Mode | Enemy Stats | Enemy Numbers | Permadeath | Divine Pulse Uses |
|------|-------------|---------------|------------|-------------------|
| **Casual** | -10% | -20% | Off (Retreat) | Unlimited |
| **Normal** | Base | Base | Optional | 10 per battle |
| **Hard** | +15% | +30% | On | 5 per battle |
| **Maddening** | +30% | +50% | On | 3 per battle |

Biorhythm Dissonance also scales by mode. Its rows are in [Biorhythm → Dissonance by difficulty](mechanics/Biorythm.md#dissonance-by-difficulty) and are not repeated here.

---

## ✅ Balancing Checklist

When creating new content, verify:

- [ ] **Weapon:** Follows tier progression (Bronze → Iron → Steel → Silver) and is priced by its rank
- [ ] **Character:** Personal growth rates total 300-400% across the eight combat stats; MP budgeted separately; class modifiers and Aptitude come on top and are not on the sheet
- [ ] **Class:** Growth modifier follows its line's profile and tier magnitude; the Base main stat keeps the anti-trap guard
- [ ] **Class:** Stat bonuses align with class archetype
- [ ] **Level Design:** Enemy level = Player level +2 on Normal
- [ ] **Economy:** Player can afford 70% of available items
- [ ] **Unique Items:** Have clear niche, not "strictly better"
- [ ] **Boss Units:** 1.5× stats of regular enemies, unique skills
- [ ] **Parts 05/06:** Both strands use identical enemy level bands
- [ ] **Late joiners:** Base stats scaled to their joining level (see [Progression System](Progression-System.md))

---

**References:**  
- Fire Emblem: Three Houses stat curves  
- Fire Emblem: Engage weapon balancing  
- Advance Wars damage calculator logic  

**Version:** 3.1  
**Last Updated:** 2026-09-29. The Passive Bonus Budget caps now carry a buffer above today's worst case (proposal); the index lists the new Balancing sections of Combat Arts and Chain Attack. Earlier, 2026-09-28: Mechanic-specific values moved into each mechanic's own `## Balancing` section (Affinity, The Nexus, Biorhythm, Beast Summon, Growth Modifiers, Magic System). This guide keeps the cross-system numbers and the new Passive Bonus Budget.
