# Balancing Guide

Numerical design principles and formulas for maintaining game balance across all 64 chapters of Vigilans Nexum.

This document is the **single source of truth for numbers**. Never copy values into other documents – link here instead.

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

### Magic Effect Values

*Proposal – every value here is a first draft for tuning.*

Everything a staff or a tome does **other than damage** takes its value from this section: healing, shields, buffs, debuffs, poison, regeneration and drain. Damage itself follows the [damage formula](#-damage-calculation-formula); the entries that carry these effects are listed in [Weapons → Staves](catalog/Weapons.md#staves) and [Magic Tomes](catalog/Magic-Tomes.md), and the rules behind them belong to [Magic System](mechanics/Magic-System.md) and the still-unwritten *Status Effects* mechanic.

#### Rank Bonus

The scale all rank-gated effects read from. A weapon's rank, not its tier, sets the size of its effect.

| Rank | F | E | D | C | B | A | S |
|------|---|---|---|---|---|---|---|
| **Rank Bonus** | +3 | +6 | +9 | +12 | +15 | +18 | +21 |

Rank F is one step of the same +3 progression below E. It is held only in the Citizen class, with the F-rank staff from Ch 01 and the F-rank tomes from Ch 05 – a Citizen with a staff heals `Mag + 3`, which at a Citizen's Mag is a scratch closed, not a wound.

#### 1 – Healing

```
Heal (single target, adjacent)        = Mag + Rank Bonus
Heal (ranged or multi-target)         = Mag + (Rank Bonus ÷ 2, rounded down)
```

Healing cannot exceed the target's missing HP; overheal is lost.

**Why rank and not the individual staff:** a staff has no Might, so the Rank column is the only thing that separates an Acolyte's Heal from an Arch Bishop's. Making the rank carry the number means every promotion a healer takes is visible the next time it heals, without a second table of per-entry values.

**Why +3 per rank:** the scale is set so that one heal stays worth roughly half a unit's maximum HP for the whole campaign. A Lv 15 Cleric (Mag ≈ 12) restores 21 with a D staff against ≈ 26 max HP; a Lv 45 Bishop (Mag ≈ 25) restores 43 with an A staff against ≈ 50. That ratio is the balance point: one heal undoes one bad exchange, never two. A flat number would make healers irrelevant by Part 04; scaling on Mag alone would make them irrelevant in Part 01, when Mag is 3.

**Why ranged and multi-target heal for half the bonus:** the healer's real cost is standing next to the wounded unit, inside the enemy's reach. A staff that removes that cost pays for it in restored HP.

#### 2 – Shields

```
Shield (tome or staff)   = (Mag + Rank Bonus) ÷ 2, rounded down
Shield (magic reaction)  = Mag of the unit that completed the reaction
Duration                 = 2 rounds, or until the shield is depleted
```

A shield absorbs incoming damage before Defense or Resistance is applied and does not stack – a second shield replaces the first.

**Why half a heal:** prevented damage is worth more than restored damage, because it can stop a blow that would have killed. Pricing the shield at half the heal of the same rank keeps the two tools trading evenly. The reaction shield reads off Mag alone because a magic reaction has no rank – its cost is the two-element setup, paid in actions rather than in weapon rank.

#### 3 – Buffs

```
Buff     = +2 to one stat (rank C and below) · +4 (rank B and above)
Stats    = Str, Mag, Def
Duration = 3 rounds
```

**Why at most +4:** one point below the +5 Str/Mag a Master class grants. A buff may be strong; it may never be worth more than the last promotion of the game. Three rounds is long enough to build an assault around and short enough that it has to be recast, which keeps the caster spending actions rather than front-loading a battle.

#### 4 – Debuffs

```
Debuff   = -2 to one stat (rank C and below) · -4 (rank B and above)
Stats    = Def, Res
Duration = 3 rounds
```

Symmetric to buffs on purpose: the enemy uses the same tools, and a player who sees -4 Def on a unit can read exactly what it costs him.

#### 5 – Poison

```
Poison tick  = 10% of the target's maximum HP per round, minimum 3
Duration     = 3 rounds
Floor        = cannot reduce a unit below 1 HP
```

**Why a percentage:** a flat tick either does nothing at Lv 60 or kills at Lv 5. **Why the 1 HP floor:** under permadeath, a unit lost to a tick that happened on the enemy phase, three turns after the decision that caused it, is a death the player could not see coming – Pillar 5 forbids it. Poison softens; the killing blow stays an attack.

#### 6 – Regeneration

```
Regeneration tick = +5 HP per round
Field duration    = 3 rounds
```

Applies while the unit stands in the effect. The Dendro flower field in [Magic System](mechanics/Magic-System.md) links to this value rather than repeating it.

#### 7 – Drain

```
Drain share = 50% of the damage actually dealt, returned to the caster as HP
Cap         = the caster's missing HP
```

**Why half:** a full return makes an Umbra caster unkillable in an even trade – it wins every attrition fight it survives the first round of. At half, drain only wins the attrition fight the caster was already winning on damage, and it stays a reason to pick Umbra without being a reason to pick nothing else.

### Natura Profile Compensation

*Proposal.*

```
Aero, Hydro and Dendro tomes (1 win / 2 losses): +5 Hit over the tier baseline
Pyro, Electro, Cryo, Geo tomes: tier baseline
```

**Why +5 Hit:** The Natura cycle is deliberately asymmetric (see [Magic Tomes](catalog/Magic-Tomes.md#element-profiles)); Aero, Hydro and Dendro meet one more disadvantaged matchup (-15 Hit, -1 Damage) than they win. A flat +5 Hit on every tome recovers a third of that on every attack without turning a support element into a better duelist – the point of the compensation is that none of the three is a trap pick at the Base fork, not that the matchup table stops mattering.

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

**The budget above is the *personal* growth only.** A unit's effective growth on any level-up is personal growth + the [class growth modifier](#class-growth-modifiers) of its current class (+ Aptitude for the Vigilant Knights) – the rule is in [Growth Modifiers](mechanics/Growth-Modifiers.md). Sheets budget the personal part; the rest comes from the class and is the same for every unit in it.

### Aptitude

*Proposal.*

```
Aptitude = +10 % to every growth rate, including MP
```

Held by the Citizen class ability of that name ([Abilities](catalog/Abilities.md#citizen)) and kept for the whole campaign, so only the eight Vigilant Knights ever have it.

**Effect on the Knights' budget:** the eight combat stats gain 8 × 10 = **+80 %**, so a Knight's effective personal budget reads **380–480 %** (a Lord's 460–500 %), MP separate. Over 59 level-ups that is ≈ 0.10 × 59 ≈ **6 points per stat** – about what one Master promotion grants in Str/Mag, or a little more than it grants in Spd and Def/Res. That is the intended size of "the Bellum orphans overtake the veterans": a Knight ends the campaign roughly one promotion ahead of a same-class veteran who joined in Part 02, visibly and not overwhelmingly.

**Why 10 and not the Fire Emblem 20:** *Awakening* and *Three Houses* set Aptitude at +20 %, but there it is the only bonus on top of personal growth, and it lands on lower caps with reclassing to spend the surplus. Here it stacks on a class growth modifier that already lifts the class's main stat, under a hard cap of 50 with no reclassing. At +20 % a Knight with *High* personal growth in his line's main stat would cap that stat around Lv 40 – in Part 05/06, where a capped stat reads as wasted level-ups rather than as the Part 08 reward the *Max Stats* note aims for. At +10 % the same Knight caps around the Part 07 reunion (Lv 45), and a *Medium* one around Lv 55.

### Max Stats (Level 60, Master Class)

| Stat | Absolute Cap |
|------|--------------|
| HP | 90 |
| MP | 60 |
| Str/Mag | 50 |
| Dex/Spd/Lck | 50 |
| Def/Res | 50 |

**Why these numbers:** Over 59 level-ups a balanced unit (~44% average growth) gains ~26 points per stat, landing near 32 before class bonuses and ~37 after – enough headroom that caps stay meaningful. Elite growth rates (80-85%) reach the cap around Lv 50, i.e. in Part 08, where capping reads as a reward rather than wasted level-ups.

That paragraph reads personal growth alone. With the [class growth modifier](#class-growth-modifiers) and [Aptitude](#aptitude) on top, the reference case becomes the **line's main stat**: a Knight with *Medium* personal growth there reaches the cap around Lv 55, one with *High* growth around Lv 45 – the Part 07 reunion. Off-line stats behave as the paragraph above says. A sheet that puts *Elite* personal growth into its class's own main stat is therefore over-investing – the reachability check in `statcraft`, which now runs along the canon class path (see [Growth Modifiers](mechanics/Growth-Modifiers.md#interaction-with-other-mechanics)), is where that shows.

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

> **Open – per tier or per class?** This table is per tier: every Base class grants the same +2 HP / +1 Str-Mag. The [class growth modifiers](#class-growth-modifiers) below are per class line. Whether the *stat* modifiers should follow and become per class as well is not decided; until it is, the table above stands as written.

### Class Growth Modifiers

*Proposal – every value here is a first draft for tuning.*

The rule is in [Growth Modifiers](mechanics/Growth-Modifiers.md): on every level-up a unit rolls its personal growth **plus the modifier of the class it is in**, plus Aptitude if it has it. This section holds the modifiers. A class line has a **main attack stat** and **two support stats**; every other stat carries 0. Modifiers are never negative – a penalty on an off-stat would recreate the trap the system exists to remove (Mag feeds MP income for every unit, Spd decides doubling), so a line's profile is expressed by where it puts its points, not by where it takes them away.

#### Magnitude by tier

**Tier scaling rule:** every entry of a line's profile rises by **+5 per tier** above Base, the grain of the growth table. Citizen is 0 in every stat.

| Tier | Main stat | Each support stat | Sum |
|------|-----------|-------------------|-----|
| **Citizen** | 0 | 0 | 0 |
| **Base** | +20 | +10 | +40 |
| **Intermediate** | +25 | +15 | +55 |
| **Advanced** | +30 | +20 | +70 |
| **Master** | +35 | +25 | +85 |

**Derivation of the Base main stat – the anti-trap guard, once:** the [Growth Rates](#growth-rates--chance-per-level) table puts Str/Mag at *Low* 20 % and *Medium* 40 %. The guard demands that a Knight with *Low* personal growth in a line's main stat still reaches *Medium* in that line's Base class: `20 % (Low) + Base main modifier ≥ 40 % (Medium)`, so the Base main modifier is **at least +20**. It is set at exactly +20 so that the guard holds with nothing to spare – a stronger modifier would lift every Knight's main stat toward the cap too early (see the note under [Max Stats](#max-stats-level-60-master-class)). Supports are half the main; +5 per tier is the smallest step the growth table uses.

**Why the modifier scales with tier at all:** a flat modifier would make the Ch 06 choice the only one that mattered for growth. Rising with tier, each of the three later promotions is worth more to *take* than the one before – and each is a fork, so the choice of branch stays live to the end of the game.

#### Profiles by class line

The line is read from the [class tree](catalog/Unit-Classes.md); the tier from the class. A branch override replaces the line's supports from the tier where that branch begins and stays for the rest of the path.

| Line | Classes on the line | Main | Supports | Why |
|------|---------------------|------|----------|-----|
| **Sword** | Swordsman → Myrmidon, Sword Cavalier → Sword Master, Duelist, Griffon Knight\*, Sword Paladin → Sword Saint, Blade Dancer, Griffon Lord\*, Astra Knight | Str | Spd, Dex | The light, accurate type wins by doubling and hitting, not by Might |
| **Lance** | Lancer → Soldier, Lance Cavalier → Halberdier, Armored Knight\*, Pegasus Knight\*, Lance Paladin → Sentinel, Armored General\*, Pegasus Lord\*, Aegis Knight | Str | Def, Dex | The line that holds the front: balanced, accurate, durable |
| **Axe** | Axe Fighter → Warrior, Axe Cavalier → Berserker, Gladiator, Wyvern Knight\*, Axe Paladin → Warmonger, Spartan, Wyvern Lord\*, Colossus Knight | Str | HP, Def | The heavy type; it takes the hit it could not dodge |
| **Bow** | Archer → Sniper, Bow Cavalier → Marksman, Ranger, Kinshi Knight\*, Bow Paladin → Deadeye, Hunterblade, Kinshi Lord\*, Pavise Warden | Str | Dex, Spd | Never reached, always landing |
| **Knife** | Thief → Rogue, Trickster → Assassin, Saboteur → Nightveil, Puppeteer | Str | Spd, Lck | Damage by volume and crit; Lck is the Thief's trade |
| **Gauntlet** | Martial Artist → Brawler, Martial Monk\* → Bruiser, Martial Saint\* → Enforcer, Divine Monk\* | Str | Spd, HP | Two strikes a turn on a unit that has to stand in reach |
| **Artillery** | Artillerist → Gunner, Bombardier → Cannoneer, Grenadier → Warfire Vanguard, Siege Breaker | Str | Dex, Def | Blind up close, so it must hit from afar and survive being reached |
| **Chain** | Tamer → Dompteur, Harpooner → Bestiarius, Retiarius → Behemoth, Leviathan | Str | Dex, Spd | A thrown weapon whose Hit line sits below every close-combat type but the Axe and whose Weight sits above the Sword's: Dex to land it at range 2, Spd to keep doubling under the chain's weight, Str for the heavy hit and for the Strength gate on Ensnare and Hurl. Both branches share the profile – the Harpooner's Lance reads Str too |
| **Staff (healer)** | Acolyte → Cleric\*, Priest → Valkyrie\*, Bishop → Celestial Valkyrie\*, Arch Bishop | Mag | Res, Def | A healer's cost is standing next to the wounded, inside the enemy's reach |
| **Natura mage** | the nine mancers → the nine Sages → Elementalist → Arcanist | Mag | MP, Res | The tome is fired every round; MP is the running cost |
| **Lux** | Luxmancer → Lux Sage → Luminary → Radiant Monarch | Mag | Res, HP | The support caster that ends up carrying a Staff and standing in the line |
| **Umbra** | Umbramancer → Umbra Sage → Tenebrae → Shadow Monarch | Mag | Str, HP | Drain is sustain; the Sword arrives at Advanced and the Str is already there. Also the mage line for a Knight with a physical profile |

**Branch overrides** – the classes marked \* above. They keep their line's main stat and swap the supports:

| Branch | From | Replaces the line's supports with | Why |
|--------|------|-----------------------------------|-----|
| **Flying** – Griffon Knight, Pegasus Knight, Wyvern Knight, Kinshi Knight and their Lords | Advanced | Spd, Res | Fast, resistant to magic, and the type every bow is effective against – it must not also be slow |
| **Armored** – Armored Knight, Armored General | Advanced | Def, HP | The wall. It gives up the Lance line's Dex for the second defensive stat |
| **Cleric** – Cleric → Valkyrie → Celestial Valkyrie | Intermediate | Str, Res | The healer who also swings a Sword; Str is the hybrid's second attack stat |
| **Martial Monk** – Martial Monk → Martial Saint → Divine Monk | Intermediate | Mag, Spd | Ki Gauntlet and Staff both read Mag; the monk keeps the gauntlet's speed |

Cavalry branches (the four Cavaliers and their Paladins) keep their line's profile – Canto is what they add, not a different body. Physical hybrids (Duelist, Ranger, Gladiator, Trickster, Brawler, Harpooner and their promotions) keep the line's profile too: both their weapon types read Str.

**Worked example – Sword line, effective growth in Str for a Knight with *Medium* personal Str (40 %) and Aptitude:** Citizen 40 + 0 + 10 = 50 % · Swordsman 40 + 20 + 10 = 70 % · Myrmidon 75 % · Sword Master 80 % · Sword Saint 85 %. The same Knight with *Low* personal Str (20 %): 30 / 50 / 55 / 60 / 65 % – a competent swordsman, not the best one, which is the guard doing exactly what it is for.

### Beast Summon

*Not yet set – every value in this table is open.* The rules are in [Beast Summon](mechanics/Beast-Summon.md); this table holds the tuning values that document links to. The design intent the values must express is written next to the derivation rule there: the beast is a body – HP and Str at or above the summoner's, Def near it, Spd and Dex below, Res and Lck well below.

| Parameter | Value |
|-----------|-------|
| Beast Call – MP cost per summon | *not yet set* |
| Beast factor – HP (× summoner's max HP) | *not yet set* |
| Beast factor – Str | *not yet set* |
| Beast factor – Spd | *not yet set* |
| Beast factor – Dex | *not yet set* |
| Beast factor – Lck | *not yet set* |
| Beast factor – Def | *not yet set* |
| Beast factor – Res | *not yet set* |
| Natural weapon – Might | *not yet set* |
| Natural weapon – Hit | *not yet set* |
| Beast Movement | *not yet set* |

Fixed by rule, not tuned here: three summons per Bestiarius per map, order reach range 1–2, Mag and MP none, natural weapon Range 1 / Critical 0 / no Uses. Wild-beast stats for Ch 22 and Ch 23 belong in those level documents, like every generic enemy's.

### Puppeteer Wires

*Not yet set.* The rules of the wire – hidden from the AI, visible to the player, one per Puppeteer at a time, spent when it fires – are on the *Tripwire* and *Pull the Strings* rows in [Abilities](catalog/Abilities.md#master). The one value that only changes the strength of the system is here.

| Parameter | Value |
|-----------|-------|
| Wires on the map at once with *Pull the Strings* | *not yet set* |

### Affinity

*Proposal – every value in this section is a first draft for tuning unless marked decided.* The rules are in [Affinity](mechanics/Affinity.md); this section holds the tuning values that document links to. The reference shape is Xenoblade Chronicles 1's affinity scale – 0 / 1000 / 2000 / 3000 / 5000 with +10 per chain attack, +20 per help and +300 per Heart-to-Heart – rescaled to a tactics game in which a pair has a handful of shared actions per map instead of hundreds per hour. The magnitude is ours; the shape (widening gaps, S far above A) is XC1's.

Fixed by rule, not tuned here: five ranks D–S; points never fall; **one rank-up per unit per chapter**, chosen by the player; only the strongest partner in range counts; each element carries two of six bonus types and a pair sums both; three Heart-to-Hearts per pair; map talks once per pair per chapter; no points for proximity; enemies and beasts have none.

#### Rank thresholds

| Rank | Points needed | Gap from previous | Colour |
|------|---------------|-------------------|--------|
| *(no rank)* | 0–19 | – | – |
| **D** | 20 | 20 | Yellow |
| **C** | 120 | 100 | Green |
| **B** | 300 | 180 | Blue |
| **A** | 600 | 300 | Lavender |
| **S** | 1,000 | 400 | Pink – the cap; points stop counting here |

**Derivation:** D costs one deed (one shared kill, one heal), so a single act of trust opens the band – which is what a Part 04 recruit needs before Dardan can exchange with it. Each later gap is roughly 1.5× the one before, so that a pair which only occasionally acts together stalls at B or A, while a pair the player builds deliberately – two or three deeds a map, a talk every few chapters, three Heart-to-Hearts – clears the S threshold with points to spare and is paced by the throttle, not by the numbers. Three Heart-to-Hearts contribute 300 of the 1,000, so conversations carry a third of a bond and deeds the rest; XC1's +300 per conversation against a 5,000 cap would have let the conversations carry most of it. The thresholds are also tuned to what Dardan decided about S: reachable in Part 07–08 for pairs the player invested in, so the S rows of the Nexus tables are live in the Tower, and landing in the epilogue for the rest ([Affinity → Core Rules → 3](mechanics/Affinity.md#3--rising-the-throttle)).

#### Points per source

| Source | Points | To whom |
|--------|--------|---------|
| Chain Attack | **30** | Each of the three pairs among the attackers |
| Shared kill | **20** | Each damager with the killer |
| Help – heal | **20** | Healer ↔ healed, per unit healed |
| Help – cure | **20** | Curer ↔ cured |
| Help – out of danger | **20** | Mover ↔ moved |
| Nexus – Exchange | **20** | Dardan ↔ the swapped ally |
| Nexus – Lifeline | **30** | Dardan ↔ the linked ally, once per round in which a share was carried |
| Nexus – Heartpulse | **10** | Dardan ↔ each unit the pulse healed |
| Map talk | **40** | The two talkers, once per pair per chapter |
| Heart-to-Heart | **100** | The two, on viewing |

**Why these weights:** a deed in battle is worth 20 – the unit of the scale, so that five deeds make a C and fifteen make a B on top of it. A chain attack is worth more because it is rare (Special enemies only, after a shield break) and costs three units their action; Lifeline more because Dardan paid in HP; Heartpulse less per unit because it touches the whole roster at once and would otherwise let Dardan out-bond everyone with one action per chapter. A map talk is two deeds for one action on a map where the action had a use – and it is capped at one per pair per chapter by rule. A Heart-to-Heart is five deeds: the biggest single step, but a pair's three together are less than a third of S.

#### Bonus range

| Parameter | Value |
|-----------|-------|
| Bonus range (tiles between the two units for the combat bonus to apply) | **3** *(decided by Dardan)* |

#### Combat bonus by rank

The value each bonus type takes, **per element that carries it**. A pair sums both units' mixes ([Element mixes](#element-mixes)); a same-element pair therefore doubles its two types. Fractions are summed first and rounded down at the end.

| Rank | Attack / Defense (per element carrying it) | Hit / Avoid / Critical / Dodge (per element carrying it) |
|------|--------------------------------------------|----------------------------------------------------------|
| **D** | +0.5 | +2 |
| **C** | +1 | +4 |
| **B** | +1.5 | +6 |
| **A** | +2 | +8 |
| **S** | +2.5 | +10 |

**Worked examples:** Pyro (Attack, Critical) with Aero (Hit, Avoid) at B → Attack +1, Critical +6, Hit +6, Avoid +6. Pyro with Pyro at S → Attack +5, Critical +20. Geo (Defense, Dodge) with Hydro (Defense, Avoid) at A → Defense +4, Dodge +8, Avoid +8.

**Derivation:** the ceiling is the same-element S pair – +5 to Attack or Defense, which equals the Str/Mag a Master promotion grants and must not exceed it, or the bond would outweigh the last promotion of the game; +20 to a rate stat, which is the size of a Killer weapon's Critical (30) minus a margin, on a pair that had to share one element and reach S. FE7 reaches Attack +3 / Critical +15 at its A cap with three steps; five ranks here need a finer step, hence the halves. A cross-element pair – the common case, with nine elements – spreads the same budget over four types, none of them above +10 at S. Dodge exists so that a defensive pair can answer a Killer weapon without the game needing crit immunity anywhere else.

#### Element mixes

Each element carries two of the six bonus types; every type is carried by exactly three elements, so no type is rare and no element is a trap. The mixes are read from the elements' roles in the [Magic System](mechanics/Magic-System.md#die-9-elemente) and the [tome profiles](catalog/Magic-Tomes.md#element-profiles).

| Element | Carries | Why |
|---------|---------|-----|
| **Pyro** | Attack, Critical | Fire hits harder and burns through |
| **Cryo** | Critical, Dodge | Ice is the still moment – the shattering blow, the guard that does not flinch |
| **Hydro** | Defense, Avoid | Water yields and flows around the blow |
| **Electro** | Hit, Critical | Lightning lands where it aims and strikes hard |
| **Aero** | Hit, Avoid | Wind is accurate and never where the blow falls |
| **Geo** | Defense, Dodge | Stone is the wall |
| **Dendro** | Attack, Defense | Growth – roots hold, thorns bite |
| **Lux** | Hit, Dodge | Light sees clearly and cannot be surprised |
| **Umbra** | Attack, Avoid | Shadow strikes from where it is not seen |

The affinity is a trait of the person and says nothing about the magic the unit wields ([Affinity → Core Rules → 7](mechanics/Affinity.md#7--elemental-affinity-and-who-has-none)). Which unit carries which element is set on its character sheet by Lorekeeper and is not assigned in this document.

#### Starting ranks

Every pair not listed starts at *no rank*. A starting rank sets the pair's points to that rank's threshold exactly.

| Pair | Starting rank | Status |
|------|---------------|--------|
| Each of the eight Vigilant Knights ↔ Dardan | **C** | *decided by Dardan* – the orphanage and Ch 01–05, priced in |
| Elena ↔ Dardan (from Ch 08, kept until she joins in Ch 25) | **B** | *decided by Dardan* – "wie eine Mutter"; makes the Ch 08 hostage reachable by Exchange |
| The eight Vigilant Knights among each other (every pair) | **C** | *decided by Dardan* – raised together, for the same reason as the Dardan rows |

### The Nexus

*Proposal – every value in this section is a first draft for tuning unless marked otherwise, and several are still not set.* The rules are in [The Nexus](mechanics/Nexus.md); this section holds the tuning values that document links to. Three of the tables read the **affinity rank** between Dardan and a unit, on the scale of [Affinity](mechanics/Affinity.md) above. Two requirements decided by Dardan and honoured by the [starting ranks](#starting-ranks): **the eight Vigilant Knights start at C with Dardan**, and **Elena holds B with Dardan in Ch 08** – the Ch 08 tutorial depends on it.

#### Exchange

| Parameter | Value |
|-----------|-------|
| Exchange cooldown (turns, global, flat) | *not yet set* |

| Affinity rank | Exchange range (tiles, through everything) |
|---------------|--------------------------------------------|
| *(no rank)* | *not reachable – rule* |
| **D** | 2 |
| **C** | 3 |
| **B** | 4 |
| **A** | 5 |
| **S** | 6 |

**Design intent the values must express:** the cooldown is the *cadence* of the signature move, not a stock – on a map of ordinary length Dardan should swap several times, never every turn, and *Nexus Mastery* removes the cooldown in Part 08, so the number must be large enough that its removal is felt in the Tower. The range table opens at a distance that makes the Ch 08 hostage reachable and grows with rank to a distance no positional command in the catalog reaches (Ensnare, Hurl, Mystic Pull all stop at range 2), so that at high rank the Exchange is the only thing on the roster that crosses a room.

**Derivation of the range rows:** D equals the reach of the catalog's positional commands (2) – the first deed buys a swap that is already unique for going through walls, nothing more. Each rank adds one tile, so the table is learnable without looking it up. B = 4 is the Ch 08 row: Level 08 must place the hostage Elena within four tiles of a tile Dardan can reach, and the cultists between them do not matter. S = 6 is the width of an ordinary room, and with Nexus Mastery becomes 8 in the Tower.

#### Nexus Mastery

Unlocked in Part 08 (trigger open – see [The Nexus → Open decisions](mechanics/Nexus.md#open-decisions)). Removing every Nexus cooldown is a rule and stays in the mechanic document; the value here is the range growth.

| Parameter | Value |
|-----------|-------|
| Nexus Mastery range bonus (added to the Exchange range and the Lifeline range at every affinity rank) | **+2** |

**Design intent:** with cooldowns gone, range is the only thing left that the bond still gates, so the bonus should be small enough that rank still orders the roster – the Knight Dardan grew up with must still reach further than the Part 07 recruit – and large enough that the Tower's larger maps (16 deployed, [Deployment Limits](Progression-System.md#deployment-limits-by-chapter)) are crossed at high rank. **Why +2:** a Part 07 recruit at D reaches 4 – a corridor; a Knight at S reaches 8 – a Tower map's half-width. The order of the roster is untouched and the top row crosses the room the Dajjal stands in.

#### Lifeline

| Parameter | Value |
|-----------|-------|
| Lifeline share (fraction of each attack's damage to the linked ally, carried by Dardan) | *not yet set* |

| Affinity rank | Lifeline range (tiles, through everything) |
|---------------|--------------------------------------------|
| *(no rank)* | *not reachable – rule* |
| **D** | 2 |
| **C** | 3 |
| **B** | 4 |
| **A** | 5 |
| **S** | 6 |

**Design intent:** the share must be large enough that a linked front-liner survives one hit it would not have survived alone, and large enough that three enemy attacks on that front-liner in one Enemy Phase put Dardan in real danger – Lifeline is only a decision because it can kill him. There is no floor and no separate difficulty scaling here; if a mode ever changes the share, the column goes in the [difficulty table](#-difficulty-mode-scaling). **Why the range equals the Exchange range:** the band reaches as far as the bond, whatever runs along it – one table to learn, and a player who knows whom Dardan can swap with knows whom he can link. The line is checked only when placed and holds at any distance afterwards (rule, [The Nexus → 3](mechanics/Nexus.md#3--lifeline)).

#### Heartpulse

Once per chapter is a rule and stays in the mechanic document. The value here is only how much each unit recovers.

| Affinity rank | Heartpulse heal (per unit, by that unit's rank with Dardan) |
|---------------|-------------------------------------------------------------|
| *(no rank)* | **0** – not reached (rule, [Affinity → Core Rules → 8](mechanics/Affinity.md#8--what-nexus-reads)) |
| **D** | 10 % of the unit's maximum HP |
| **C** | 15 % |
| **B** | 20 % |
| **A** | 30 % |
| **S** | 40 % |
| Dardan himself | 10 % – the D row: the pulse goes outward |

Rounded down, minimum 1 HP where the row is above zero; overheal is lost.

**Why a percentage of maximum HP:** Heartpulse is usable from Ch 21 to Ch 52 and cannot read Mag (Dardan's sword line does not grow it – the same reason the kit has no MP cost); a flat heal would be a full heal in Part 03 and a scratch in Part 08, and the poison tick above already uses the percentage form for the same reason. **Why the S row is 40 %:** it stays **below a single-target staff heal of the same chapter** (`Mag + Rank Bonus`, [Healing](#1--healing)) on any one unit – at Lv 26 a staff heal restores roughly two thirds of a unit's HP, at Lv 60 roughly three quarters – and it sits at the level of *Fortify* (a multi-target heal for half the amount). Heartpulse is wide, a staff is deep, and the once-per-chapter limit only keeps healers in the game if the pulse does not out-heal them per target. **Why Dardan takes the D row:** the band carries strength outward; the unit at its centre is the last one it heals.

#### Wavelength

The rules are in [Nexus → Core Rules → 8](mechanics/Nexus.md#8--wavelength). Two levers, **both still open** – neither can be derived from an existing table, and neither is invented here.

| Parameter | Value |
|-----------|-------|
| Wavelength cooldown (turns, global, flat) | *not yet set* |

| Affinity rank | Wavelength attacks (how long the borrowed element lasts) |
|---------------|-----------------------------------------------------------|
| *(no rank)* | *not reachable – rule: no rank, no loan* |
| **D** | *not yet set* |
| **C** | *not yet set* |
| **B** | *not yet set* |
| **A** | *not yet set* |
| **S** | *not yet set* |

**The one rule the row must obey:** the number **rises monotonically with the rank** – that is fixed in the mechanic and is not a tuning decision. Everything else is open.

**Design intent the values will have to express**, written so that the row can be filled later without re-deriving it: the cooldown is the *cadence of the setter* – Dardan should be able to change the element he carries several times on a map of ordinary length, but not every turn, or the choice of donor stops being a choice. The attack count decides whether a loan survives an Enemy Phase: at the low ranks it should be spent on the Player Phase Dardan set it on, at the high ranks it should still be on his blade when the enemy comes to him – that is what makes the rank worth having, and it is the same shape as the Exchange range table (a small number that grows one step at a time and is learnable without looking it up).

**Range:** Wavelength reads the band's rank-range and, in the conservative reading, **shares the Exchange and Lifeline table above** rather than owning a third one ([Nexus → Open decisions → 28](mechanics/Nexus.md#open-decisions)). No separate range row is created here; if Dardan wants one, it belongs beside the other two.

#### Earthbound

| Parameter | Value |
|-----------|-------|
| Earthbound range | **1–2** *(proposal)* |
| Earthbound duration (rounds; set on round R, expires at the start of round R + N) | *not yet set* |
| Earthbound cooldown (turns, global, flat) | *not yet set* |

**Why 1–2:** the seal is a full action on the Lord, so it should not cost him his position on top – range 1 alone would mean walking Dardan into the press to seal the healer behind it. Range 2 matches the reach of every other targeted command in the catalog (Disarray, Ensnare, Mystic Pull) and keeps him out of the front line's counter. Longer would make it artillery. **Duration and cooldown:** the duration is the window in which the Dajjal is vulnerable (Level 52) and, on every map from Ch 44, the number of Enemy Phases a healer stays silent. Design intent proposed: **cooldown at or above the duration**, so at most one enemy is sealed at a time and the seal is a choice of target rather than a rolling blanket – Dardan's to confirm (see the mechanic's *Open decisions*).

**Soulcairn has no values of its own, by decision** – it reads the [rank thresholds](#rank-thresholds), the [combat bonus by rank](#combat-bonus-by-rank), the [element mixes](#element-mixes) and the [bonus range](#bonus-range) of the Affinity section above, unchanged. Tuning those tunes it with them; there is no separate lever and no table for it here ([Nexus → Core Rules → 7](mechanics/Nexus.md#7--soulcairn)).

Fixed by rule, not tuned here: Wavelength is a command on a cooldown and not a use per chapter, borrows the element only, fixes it at the moment of the command, applies without a Combat Art (the Magic System's one exception) and never triggers a reaction, and its attack count rises monotonically with the rank; no rank scaling and no hit roll on Earthbound; the cooldowns do not scale with rank; one Lifeline at a time; Lifeline shares attack damage and moves status effects whole onto Dardan; Nexus Mastery removes every cooldown; Nexus abilities take no Capacity; a unit with no affinity rank is reached by no Nexus ability. Everything about the Dajjal's chain – how many units, how much healing, how often reinforcements come – belongs to the Level 52 document.

### Class Type Templates

**Physical Attacker:** High Str/Spd, Low Mag/Res  
**Magic User:** High Mag/Res, Low Str/Def  
**Tank:** High HP/Def, Low Spd  
**Speedy:** High Spd/Dex, Low HP/Def  
**Balanced:** Medium across the board

---

## 🎲 Damage Calculation Formula

```
Attack = (Weapon Might) + (Str or Mag) + (Triangle Bonus) + (Affinity Bonus)
Defense = (Enemy Def or Res) + (Terrain Bonus) + (Affinity Bonus)

Damage = Attack - Defense
Minimum Damage = 0
```

**Affinity Bonus:** the Attack, Defense, Hit, Avoid, Critical or Dodge value the unit draws from its strongest affinity partner within the bonus range – see [Affinity](#affinity) for the values and [Affinity → Core Rules → 4](mechanics/Affinity.md#4--the-combat-bonus) for the rule. Zero when no ranked partner is in range.

### Attack Speed (AS) Calculation

```
AS = Speed - (Weapon Weight - Str/5)

If Attacker AS ≥ Enemy AS + 4:
  → Double Attack (2× damage)
```

### Hit Rate Calculation

```
Hit = (Weapon Hit) + (Dex × 2) + (Luck ÷ 2) + (Affinity Bonus) + (Triangle Bonus)
Avoid = (Speed × 2) + (Luck) + (Terrain Bonus) + (Affinity Bonus)

True Hit% = Hit - Avoid
Display Hit% = True Hit% (capped at 0-100%)
```

**Note:** Consider implementing Fire Emblem's "True Hit" system (2RN) where displayed hit rates are more reliable.

### Critical Hit Calculation

```
Crit = (Weapon Crit) + (Dex ÷ 2) + (Affinity Bonus)
Dodge = (Luck) + (Affinity Bonus)

Crit% = Crit - Dodge (minimum 0%)

Critical Damage = Damage × 3
```

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

**Version:** 2.3  
**Last Updated:** 2026-09-20
