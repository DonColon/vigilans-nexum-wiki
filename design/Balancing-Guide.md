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

### Class Type Templates

**Physical Attacker:** High Str/Spd, Low Mag/Res  
**Magic User:** High Mag/Res, Low Str/Def  
**Tank:** High HP/Def, Low Spd  
**Speedy:** High Spd/Dex, Low HP/Def  
**Balanced:** Medium across the board

---

## 🎲 Damage Calculation Formula

```
Attack = (Weapon Might) + (Str or Mag) + (Triangle Bonus) + (Support Bonus)
Defense = (Enemy Def or Res) + (Terrain Bonus)

Damage = Attack - Defense
Minimum Damage = 0
```

### Attack Speed (AS) Calculation

```
AS = Speed - (Weapon Weight - Str/5)

If Attacker AS ≥ Enemy AS + 4:
  → Double Attack (2× damage)
```

### Hit Rate Calculation

```
Hit = (Weapon Hit) + (Dex × 2) + (Luck ÷ 2) + (Support Bonus) + (Triangle Bonus)
Avoid = (Speed × 2) + (Luck) + (Terrain Bonus)

True Hit% = Hit - Avoid
Display Hit% = True Hit% (capped at 0-100%)
```

**Note:** Consider implementing Fire Emblem's "True Hit" system (2RN) where displayed hit rates are more reliable.

### Critical Hit Calculation

```
Crit = (Weapon Crit) + (Dex ÷ 2)
Dodge = (Luck)

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

**Version:** 2.1  
**Last Updated:** 2026-09-18
