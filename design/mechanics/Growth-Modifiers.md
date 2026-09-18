# Growth Modifiers

How a unit's growth rates are composed – personal growth plus a class growth modifier, plus Aptitude for the eight Vigilant Knights – and, because the two are inseparable, how the Citizen class reaches every weapon type before the class choice is made. This document holds the rules; every value lives in the [Balancing Guide](../Balancing-Guide.md#class-growth-modifiers).

> **Related files:** [Balancing Guide → Class Growth Modifiers](../Balancing-Guide.md#class-growth-modifiers) · [Progression System](../Progression-System.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Abilities](../catalog/Abilities.md) · [Magic System](Magic-System.md) · [Weapons](../catalog/Weapons.md) · [Magic Tomes](../catalog/Magic-Tomes.md)

---

## Overview

Every level-up rolls each stat against a growth rate. In Vigilans Nexum that rate is not a fixed property of the unit: it is the unit's **personal growth** plus the **growth modifier of the class it is currently in**, plus a flat **Aptitude** bonus for the eight units that started as Citizens. The class modifier scales with tier, so the four irreversible class choices of the campaign are felt on every one of the 59 level-ups that follow – not only as a one-time stat bonus at the promotion screen.

The purpose in one sentence: **the player can send any Knight down any class line without walking into a trap, and the line he chooses shapes who that Knight becomes.**

|              | Growth Modifiers |
| ------------ | ---------------- |
| Phase        | Level-up (outside combat) |
| Trigger      | Automatic on every level-up |
| Resource     | None – the cost is the class choice itself |
| Core feature | Effective growth = personal + class modifier (+ Aptitude); modifier rises with tier; Citizen has none |

---

## Prerequisites

| Condition | Rule |
| --------- | ---- |
| Unit type | Every playable unit. Named non-playable units and generic enemies do not level and therefore have no growth at all – see the three kinds of unit in the character sheet rules |
| Class | The modifier applied is that of the class the unit is in **at the moment of the level-up**. A unit that promotes and levels in the same chapter uses the new class's modifier from the first level-up after the promotion |
| Aptitude | Applies only to units that hold the Citizen class ability *Aptitude* – the eight Vigilant Knights – and follows the ability rules like every other passive (see *Cost*) |

---

## Cost

| What | Value |
| ---- | ----- |
| Resource | None |
| Action | None – growth is rolled on level-up, not chosen |
| Further cost | **The class choice.** Promotions are permanent ([Progression System → Class Change Rules](../Progression-System.md#class-change-rules)); choosing a line means accepting its growth profile for every level-up spent in it. A line puts its points where the class wants them – the price is the stats it leaves alone. **Aptitude** is a Capacity-2 passive in [Abilities](../catalog/Abilities.md#citizen); like every ability it works only while equipped, so a Knight in a Base class (Capacity 3) who keeps it has one slot left for Adaptability, Discipline *or* the class ability |
| Visible before use | The promotion preview shows every branch's growth modifier next to its stat modifier **before** the player commits – the "Consequence for the UI" rule in the [Progression System](../Progression-System.md#class-change-rules). A modifier the player cannot read before an irreversible choice would be punishment, not challenge |

---

## Core Rules

### 1 – Effective growth

```
Effective growth (per stat) = Personal growth
                            + Class growth modifier of the current class
                            + Aptitude                      (Vigilant Knights only)
Floor: 0 %
```

- **Personal growth** is set on the character sheet and never changes.
- **Class growth modifier** is a per-stat value carried by every class. It is added while the unit is in that class and replaced – not stacked – when the unit promotes. The values, grouped by class line and tier, are in the [Balancing Guide → Class Growth Modifiers](../Balancing-Guide.md#class-growth-modifiers).
- **Aptitude** is a flat bonus to every growth rate, identical for all stats, held by the Citizen class and kept through every promotion. Its size is in the [Balancing Guide → Aptitude](../Balancing-Guide.md#aptitude).
- **Str and Mag stay two separate growths.** There is no merged attack stat: Mag drives MP income for every unit, mage or not, per the [Magic System](Magic-System.md#duales-mp-system), so a physical unit's Mag growth is never dead weight.
- **MP** is modified like any other stat but stays outside the combat growth budget, as the [Balancing Guide](../Balancing-Guide.md#growth-rates--chance-per-level) already rules.

### 2 – Tier scaling

The modifier grows with the tier of the class: **Base < Intermediate < Advanced < Master**. The Citizen class carries a modifier of 0 in every stat – a Citizen is nobody yet, and the eight level-ups before Ch 06 are rolled on personal growth and Aptitude alone. The exact step per tier is a tuning value and lives with the table in the Balancing Guide.

### 3 – The anti-trap guard

**No Base class modifier may leave a Knight's main attack stat below the *Medium* band** of the growth table – Mag for the mage lines, Str for the physical lines – even for a Knight whose personal growth in that stat sits at the *Low* band. This is a rule the table must satisfy, not a number: it is what makes the "no branch may be a trap" consequence in the [Progression System](../Progression-System.md#class-change-rules) true for the Ch 06 choice. The arithmetic is shown once, next to the table, in the [Balancing Guide](../Balancing-Guide.md#class-growth-modifiers).

### 4 – Citizen weapon access

The Citizen class holds **rank F in every weapon type** – it remains the only class in which rank F exists, and nothing else about rank F changes. Access is **staged in the world**, not granted at once:

| From | Types | In-world source |
| ---- | ----- | --------------- |
| Ch 01 | Sword, Lance, Axe, Bow, Staff | What the militia has |
| Ch 04 | Knife, Gauntlet, Battle Staff, Chain, Artillery | The weapon delivery – the crates unloaded and defended at the harbour in [Ch 04](../../story/chapters/Part-01-Path-Of-Liberation/Chapter-04-Ripping-Of-Pirates.md) |
| Ch 05 | Pyro, Aero, Electro, Hydro, Cryo, Geo, Dendro, Lux, Umbra | One tome per element, found by the Vigilant Knights in Ch 05 – the scene itself is Lorekeeper's |

The F-rank entries a Citizen can hold – Bronze weapons, the Bronze-tier tomes and the F-rank staff – are in the catalog (see *Catalog*). Rank caps per tier are in the [Balancing Guide → Weapon Rank Caps](../Balancing-Guide.md#weapon-rank-caps).

### 5 – A Citizen's MP mode follows the equipped weapon

The [Magic System](Magic-System.md#duales-mp-system) runs two MP regimes, keyed to whether a unit is a mage. A Citizen is neither, so the regime is read off the weapon in hand:

| Equipped | MP regime |
| -------- | --------- |
| Tome | **Mage rules**: every attack costs the tome's MP, MP regenerates passively each round, and the attack applies the tome's element |
| Physical weapon | **Non-mage rules**: attacks cost Uses, MP is built by attacking and spent on Combat Arts |
| Staff | **Non-mage rules** for MP; healing follows the staff rules in [Weapons → Staves](../catalog/Weapons.md#staves) and grants XP per the [Progression System](../Progression-System.md#weapon-rank) |

The interaction with *Adaptability* – the free once-per-turn swap – is worked through under *Interaction with Other Mechanics*.

---

## Acquisition / Access

| Source | Description | Availability |
| ------ | ----------- | ------------ |
| Universal | Every playable unit's growth is composed this way from its first level-up | All playable units, from Ch 01 |
| Class | The class growth modifier comes with the class and leaves with it | Every class except Citizen (modifier 0) |
| Citizen class ability | *Aptitude* – the flat bonus – is a Citizen class ability and is therefore held only by units that ever were Citizens | The eight Vigilant Knights |

---

## Strategic Depth

- **The Ch 06 choice is a choice about 51 level-ups, not about one stat bonus.** A Swordsman and a Pyromancer with the same personal growths become different units by Part 04, and the player can see that in the preview before he commits.
- **Personal profile plus class profile is a two-axis decision.** A Knight with a Speed-heavy personal profile in a line that also pushes Speed becomes a specialist; the same Knight in a line that pushes Defense becomes a rounded unit. Neither is wrong – one wins duels, the other holds a corridor – and the roster needs both.
- **The anti-trap guard removes the fear, not the consequence.** A physical-profile Knight *can* be sent down a mage line and will be a competent mage; he will not be the best mage in the army. That is a consequence the player chose with open eyes, which is exactly what Pillar 3 asks for.
- **Late joiners and Knights are measured on different axes.** A Part 07 recruit arrives with high base stats and 18 level-ups; a Knight arrives with Aptitude and 59. The class modifier is the same for both, so the difference between them is entirely the difference the Progression System intends: starting capital against compound interest.
- **Lingering in a class is a real option.** Because the modifier scales with tier, promoting on the day the gate opens is always better for growth – but the mastery ability of the lower class is only learned by staying. The player trades level-ups at a lower modifier for an ability he keeps forever.

---

## Design Pillars

| Pillar | Question | Answer |
| ------ | -------- | ------ |
| **Bonds** | Does it strengthen the connections between units? | Indirectly. Aptitude is the mechanical form of "the Bellum orphans overtake the veterans" – eight units who started together end together at the top of the roster, and the player watches it happen on their sheets. The class modifiers themselves are neutral to bonds; this pillar is carried by what the system says, not by how it works. |
| **Depth** | Easy to learn, hard to master? | Yes. "Your growth is you plus your class" is one sentence. Mastering it means reading a Knight's personal profile against eleven class lines and four tiers, and deciding whether to specialise or round out – a decision that changes for every one of the eight. |
| **Weight** | Do the decisions have long-term consequences? | Yes – this is the pillar the system exists for. Promotion is permanent; the modifier turns each promotion from a one-time bonus into a slope the unit climbs for the rest of the game. |
| **Integration** | Does the mechanic tell a story? | Yes. A Citizen has no modifier because a Citizen is nobody yet; the militia hands out spears and bows in Ch 01, the crates in Ch 04 bring the tools of a trade, the tomes in Ch 05 bring magic into a world that had none for these eight. By Ch 06 every Knight has held everything and chooses who to become. |
| **Fairness** | Is the challenge respectful of the player's time? | Yes, on two conditions the system builds in: the modifier is shown before the irreversible choice, and no Base line can leave a Knight's main stat below Medium. Without either, the Ch 06 choice would be a trap sprung six chapters after it was set. |

**Anti-pillar check:** No grinding – levels are capped by chapter count and the modifier changes nothing about how many level-ups exist. No power without price – Aptitude costs Capacity for the whole campaign and the class modifier costs the class choice. Nothing that works only with over-trained units – the guard is stated for the *Low* personal band, i.e. for the weakest case. Nothing generic – the modifier table is the class tree's identity in numbers.

---

## Introduction

**First chapter:** Ch 06 for the growth model – the class choice at the chapter's end is the first time the player sees a class growth modifier, in the preview of the branch he is about to commit to. The weapon access that leads up to it is staged over Ch 01, Ch 04 and Ch 05 (see *Core Rules → 4*).

**How it is introduced:** Not by a popup. From Ch 01 the Knights level on personal growth and Aptitude alone, and the player sees numbers that are already good. In Ch 04 the crates arrive and every Knight can suddenly hold a knife, a gauntlet, a chain, a cannon; in Ch 05 the tomes are found and every Knight can cast. By the end of Ch 06 the player has *used* every type on every Knight, and the class preview shows what each line would do to the growths he has been watching for six chapters. The choice explains itself because the player has the data.

**What the player must already know:** Level-ups and stat growth (Ch 01 onward), the weapon triangle (Ch 02), magic and elements (Ch 05). All of them are in place before the choice, which is why the [Progression System](../Progression-System.md#part-01-path-of-liberation-chapters-1-8) puts the choice at the end of Ch 06.

The level index's *New Mechanics* column is unchanged: Ch 04 already carries the weapon delivery as its story beat and Ch 05 already carries the Magic System, which the tomes are the vehicle for. Growth modifiers are part of the Class System entry at Ch 06, not a separate mechanic a map must carry.

---

## Catalog

All entries: [Unit Classes](../catalog/Unit-Classes.md) (which class sits on which line), [Weapons](../catalog/Weapons.md) and [Magic Tomes](../catalog/Magic-Tomes.md) (the F-rank entries a Citizen can hold), [Abilities](../catalog/Abilities.md#citizen) (Aptitude, Adaptability).

---

## Balancing Guidelines

Every value lives in the Balancing Guide, in three places:

| Parameter | Where |
| --------- | ----- |
| Class growth modifier per line and tier, the tier step, the anti-trap arithmetic | [Class Growth Modifiers](../Balancing-Guide.md#class-growth-modifiers) |
| Aptitude, and its effect on the Knights' effective growth budget | [Aptitude](../Balancing-Guide.md#aptitude) |
| Growth bands, the personal budget, MP as a separate budget, caps | [Growth Rates](../Balancing-Guide.md#growth-rates--chance-per-level), [Max Stats](../Balancing-Guide.md#max-stats-level-60-master-class) |

---

## Interaction with Other Mechanics

| Mechanic | Interaction |
| -------- | ----------- |
| **Adaptability × MP mode** (*Proposal*) | Adaptability lets a Citizen change its equipped weapon once per turn without spending its action, so a Citizen can start its turn holding a tome, take the passive regeneration, swap to a Bronze weapon and attack to build MP – both incomes in one round. **Proposed: acceptable as-is, no guard.** The swap is once per turn, so the double income is available at most every second round; at Citizen-level Mag the two incomes together are the smallest values on both regeneration tables; and the Citizen class has no Combat Arts to spend the surplus on before Ch 06. Guarding a gain that small would cost more in rule complexity than it saves (Pillar 2). **Fallback guard, if a Citizen ever gains a Combat Art or playtesting shows hoarding:** *a unit that swaps between a tome and a non-tome weapon during its turn receives no MP income of either kind until its next turn* – one sentence, one icon on the unit. The decision is Dardan's; nothing here changes until it is made. |
| **Hybrid classes** (Cleric, Priest, Valkyrie, Bishop, Martial Monk, Martial Saint, Divine Monk, Tenebrae, Shadow Monarch, Luminary, Radiant Monarch, …) | Both the Str and the Mag modifier of the class apply. No special rule is needed because Str and Mag are separate growths; a hybrid's line profile simply carries both. |
| **MP growth budget** | The MP modifier is added like any other, but MP stays outside the 300–400 % combat budget, per the existing rule in the [Balancing Guide](../Balancing-Guide.md#growth-rates--chance-per-level). |
| **Class tier stat modifiers** | Independent. The stat modifier is a one-time bonus on promotion; the growth modifier is a rate applied on each level-up. Both are shown in the promotion preview. Whether the *stat* modifier table should also become per-class is **open** – see the note under [Class Tier Stat Modifiers](../Balancing-Guide.md#class-tier-stat-modifiers). |
| **Reachability check** (`statcraft`) | The expected-value formula behind a sheet's Max Stats must now sum the growth *segment by segment along the canon class path*: for each class on the path, (personal + that class's modifier + Aptitude) × the level-ups spent in it, plus the tier stat modifiers. **A sheet's Max Stats are canon-path values.** The skill file is not edited here; this paragraph is the specification it will be updated from. |
| **Caps** | With class modifier and Aptitude stacked on personal growth, a *Medium* personal growth in a line's main stat reaches the cap near the end of the campaign and a *High* one in Part 07 – the cap reference case in the [Balancing Guide](../Balancing-Guide.md#max-stats-level-60-master-class) is written for that. A sheet that puts *Elite* personal growth into the class's own main stat is over-investing; the reachability check catches it. |
| **Enemies** | The system is player-side only, with a written reason: enemies do not level. Generic enemies carry the stats of one battle, named non-playables carry stats per appearance. Both are set against the enemy level band directly, so no modifier is ever applied to them. |
| **Weapon Rank Progression** (backlog) | Unaffected. Discipline doubles a Citizen's weapon experience; the staged access means a Citizen has more types to spread it across, which is what makes Adaptability and Discipline matter as a pair. |

---

## UI & Display

- The **promotion preview** lists, for every branch, the stat modifier and the growth modifier side by side, and shows the resulting effective growth for the unit being promoted.
- The **unit's stat screen** shows effective growth per stat with its composition (personal / class / Aptitude) on inspection, so a player can see where a number comes from.
- A **Citizen's current MP regime** is shown next to its MP bar – tome or physical – because a decision (whether the next attack costs MP) hangs on it. No hidden state.

---

**Version:** 1.0
**Created:** 2026-09-18
**Last updated:** 2026-09-18
**Cross-references:** [Balancing Guide](../Balancing-Guide.md) · [Progression System](../Progression-System.md) · [Unit Classes](../catalog/Unit-Classes.md) · [Magic System](Magic-System.md) · [Abilities](../catalog/Abilities.md)
